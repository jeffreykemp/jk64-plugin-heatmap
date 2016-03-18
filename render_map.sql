PROCEDURE set_map_extents
    (p_lat     IN NUMBER
    ,p_lng     IN NUMBER
    ,p_lat_min IN OUT NUMBER
    ,p_lat_max IN OUT NUMBER
    ,p_lng_min IN OUT NUMBER
    ,p_lng_max IN OUT NUMBER
    ) IS
BEGIN
    p_lat_min := LEAST   (NVL(p_lat_min, p_lat), p_lat);
    p_lat_max := GREATEST(NVL(p_lat_max, p_lat), p_lat);
    p_lng_min := LEAST   (NVL(p_lng_min, p_lng), p_lng);
    p_lng_max := GREATEST(NVL(p_lng_max, p_lng), p_lng);
END set_map_extents;

FUNCTION latlng2ch (lat IN NUMBER, lng IN NUMBER) RETURN VARCHAR2 IS
BEGIN
  RETURN '"lat":'
      || TO_CHAR(lat, 'fm990.0999999999999999')
      || ',"lng":'
      || TO_CHAR(lng, 'fm990.0999999999999999');
END latlng2ch;

FUNCTION get_data
    (p_region  IN APEX_PLUGIN.t_region
    ,p_lat_min IN OUT NUMBER
    ,p_lat_max IN OUT NUMBER
    ,p_lng_min IN OUT NUMBER
    ,p_lng_max IN OUT NUMBER
    ) RETURN APEX_APPLICATION_GLOBAL.VC_ARR2 IS

    l_data   APEX_APPLICATION_GLOBAL.VC_ARR2;
    l_lat    NUMBER;
    l_lng    NUMBER;
    l_count  NUMBER;
    
    l_column_value_list  APEX_PLUGIN_UTIL.t_column_value_list;

BEGIN

    l_column_value_list := APEX_PLUGIN_UTIL.get_data
        (p_sql_statement  => p_region.source
        ,p_min_columns    => 3
        ,p_max_columns    => 3
        ,p_component_name => p_region.name
        ,p_max_rows       => p_region.fetched_rows);
  
    FOR i IN 1..l_column_value_list(1).count LOOP
  
        l_lat   := TO_NUMBER(l_column_value_list(1)(i));
        l_lng   := TO_NUMBER(l_column_value_list(2)(i));
        l_count := TO_NUMBER(l_column_value_list(3)(i));
        
        -- minimise size of data to be sent
        l_data(NVL(l_data.LAST,0)+1) :=
             '{"a":' || TO_CHAR(l_lat, 'fm990.0999999999999999')
          || ',"b":' || TO_CHAR(l_lng, 'fm990.0999999999999999')
          || ',"c":'  || TO_CHAR(l_count, 'fm9999990')
          || '}';
    
        set_map_extents
          (p_lat     => l_lat
          ,p_lng     => l_lng
          ,p_lat_min => p_lat_min
          ,p_lat_max => p_lat_max
          ,p_lng_min => p_lng_min
          ,p_lng_max => p_lng_max
          );
      
    END LOOP;

    RETURN l_data;
END get_data;

PROCEDURE htp_arr (arr IN APEX_APPLICATION_GLOBAL.VC_ARR2) IS
BEGIN
    FOR i IN 1..arr.COUNT LOOP
        -- use prn to avoid loading a whole lot of unnecessary \n characters
        sys.htp.prn(CASE WHEN i > 1 THEN ',' END || arr(i));
    END LOOP;
END htp_arr;

FUNCTION render_map
    (p_region IN APEX_PLUGIN.t_region
    ,p_plugin IN APEX_PLUGIN.t_plugin
    ,p_is_printer_friendly IN BOOLEAN
    ) RETURN APEX_PLUGIN.t_region_render_result IS

    SUBTYPE plugin_attr is VARCHAR2(32767);
    
    l_result       APEX_PLUGIN.t_region_render_result;

    l_region       VARCHAR2(100);
    l_script       VARCHAR2(32767);
    l_data         APEX_APPLICATION_GLOBAL.VC_ARR2;
    l_lat_min      NUMBER;
    l_lat_max      NUMBER;
    l_lng_min      NUMBER;
    l_lng_max      NUMBER;

    -- Plugin attributes (application level)
    l_api_key       plugin_attr := p_plugin.attribute_01;

    -- Component attributes
    l_map_height    plugin_attr := p_region.attribute_01;
    l_sign_in       plugin_attr := p_region.attribute_02;
    l_dissipating   plugin_attr := p_region.attribute_03;
    l_opacity       plugin_attr := p_region.attribute_04;
    l_radius        plugin_attr := p_region.attribute_05;
    l_mapstyle      plugin_attr := p_region.attribute_06;
    
    FUNCTION js_params RETURN VARCHAR2 IS
        buf VARCHAR2(1000);
    BEGIN
    
        IF l_api_key IS NOT NULL THEN
            buf := 'key=' || l_api_key;
            IF l_sign_in = 'Y' THEN
                buf := buf || '&'||'signed_in=true';
            END IF;
        END IF;
      
        -- load library required for heatmap feature
        buf := buf || CASE WHEN buf IS NOT NULL THEN '&' END
          || 'libraries=visualization';
    
        RETURN '?' || buf;
    END js_params;
    
BEGIN
    -- debug information will be included
    IF APEX_APPLICATION.g_debug then
        APEX_PLUGIN_UTIL.debug_region
          (p_plugin => p_plugin
          ,p_region => p_region
          ,p_is_printer_friendly => p_is_printer_friendly);
    END IF;

    APEX_JAVASCRIPT.add_library
      (p_name           => 'js' || js_params
      ,p_directory      => 'https://maps.googleapis.com/maps/api/'
      ,p_skip_extension => true);

    APEX_JAVASCRIPT.add_library
      (p_name           => 'jk64plugin'
      ,p_directory      => p_plugin.file_prefix);

    l_region := CASE
                WHEN p_region.static_id IS NOT NULL
                THEN p_region.static_id
                ELSE 'R'||p_region.id
                END;

    IF p_region.source IS NOT NULL THEN

      l_data := get_data
        (p_region  => p_region
        ,p_lat_min => l_lat_min
        ,p_lat_max => l_lat_max
        ,p_lng_min => l_lng_min
        ,p_lng_max => l_lng_max
        );
        
    END IF;

    -- show entire map if no points to show
    IF l_data.COUNT = 0 THEN
      l_lat_min := -90;
      l_lat_max := 90;
      l_lng_min := -180;
      l_lng_max := 180;
    END IF;
    
    l_script := '<script>
var opt_#REGION# = {
   container:      "map_#REGION#_container"
  ,regionId:       "#REGION#"
  ,ajaxIdentifier: "'||APEX_PLUGIN.get_ajax_identifier||'"
  ,southwest:      {'||latlng2ch(l_lat_min,l_lng_min)||'}
  ,northeast:      {'||latlng2ch(l_lat_max,l_lng_max)||'}
  ,dissipating:    '||CASE WHEN l_dissipating = 'Y' THEN 'true' ELSE 'false' END||'
  ,opacity:        '||l_opacity||'
  ,radius:         '||l_radius||'
  ,mapstyle:       '||l_mapstyle||'
};
function r_#REGION#(f){/in/.test(document.readyState)?setTimeout("r_#REGION#("+f+")",9):f()}
r_#REGION#(function(){
  opt_#REGION#.mapdata = [';
    sys.htp.p(REPLACE(l_script,'#REGION#',l_region));
    htp_arr(l_data);
    l_script := '];
  jk64plugin_initMap(opt_#REGION#);
  apex.jQuery("##REGION#").bind("apexrefresh", function(){jk64plugin_refreshMap(opt_#REGION#);});
});
</script>';
    sys.htp.p(REPLACE(l_script,'#REGION#',l_region));
    sys.htp.p('<div id="map_'||l_region||'_container" style="min-height:'||l_map_height||'px"></div>');
  
    RETURN l_result;
END render_map;

FUNCTION ajax
    (p_region IN APEX_PLUGIN.t_region
    ,p_plugin IN APEX_PLUGIN.t_plugin
    ) RETURN APEX_PLUGIN.t_region_ajax_result IS

    l_result       APEX_PLUGIN.t_region_ajax_result;

    l_data         APEX_APPLICATION_GLOBAL.VC_ARR2;
    l_lat_min      NUMBER;
    l_lat_max      NUMBER;
    l_lng_min      NUMBER;
    l_lng_max      NUMBER;
	
BEGIN
    -- debug information will be included
    IF APEX_APPLICATION.g_debug then
        APEX_PLUGIN_UTIL.debug_region
          (p_plugin => p_plugin
          ,p_region => p_region);
    END IF;
    APEX_DEBUG.message('ajax');

    IF p_region.source IS NOT NULL THEN

      l_data := get_data
        (p_region  => p_region
        ,p_lat_min => l_lat_min
        ,p_lat_max => l_lat_max
        ,p_lng_min => l_lng_min
        ,p_lng_max => l_lng_max
        );
        
    END IF;

    -- show entire map if no points to show
    IF l_data.COUNT = 0 THEN
      l_lat_min := -90;
      l_lat_max := 90;
      l_lng_min := -180;
      l_lng_max := 180;
    END IF;

    sys.owa_util.mime_header('text/plain', false);
    sys.htp.p('Cache-Control: no-cache');
    sys.htp.p('Pragma: no-cache');
    sys.owa_util.http_header_close;
    
    APEX_DEBUG.message('l_lat_min='||l_lat_min||' data='||l_data.COUNT, p_force => TRUE);
    
    sys.htp.p('{"southwest":{'
      || latlng2ch(l_lat_min,l_lng_min)
      || '},"northeast":{'
      || latlng2ch(l_lat_max,l_lng_max)
      || '},"mapdata":[');
    htp_arr(l_data);
    sys.htp.p(']}');
    
    APEX_DEBUG.message('ajax finished');
    RETURN l_result;
EXCEPTION
    WHEN OTHERS THEN
        APEX_DEBUG.error(SQLERRM);
        sys.htp.p('{"error":"'||sqlerrm||'"}');
END ajax;