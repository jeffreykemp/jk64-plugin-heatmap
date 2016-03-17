set define off verify off feedback off
whenever sqlerror exit sql.sqlcode rollback
--------------------------------------------------------------------------------
--
-- ORACLE Application Express (APEX) export file
--
-- You should run the script connected to SQL*Plus as the Oracle user
-- APEX_050000 or as the owner (parsing schema) of the application.
--
-- NOTE: Calls to apex_application_install override the defaults below.
--
--------------------------------------------------------------------------------
begin
wwv_flow_api.import_begin (
 p_version_yyyy_mm_dd=>'2013.01.01'
,p_release=>'5.0.2.00.07'
,p_default_workspace_id=>20749515040658038
,p_default_application_id=>573
,p_default_owner=>'SAMPLE'
);
end;
/
prompt --application/ui_types
begin
null;
end;
/
prompt --application/shared_components/plugins/region_type/com_jk64_heatmap
begin
wwv_flow_api.create_plugin(
 p_id=>wwv_flow_api.id(75424330494277385)
,p_plugin_type=>'REGION TYPE'
,p_name=>'COM.JK64.HEATMAP'
,p_display_name=>'jk64HeatMap'
,p_supported_ui_types=>'DESKTOP:JQM_SMARTPHONE'
,p_plsql_code=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'PROCEDURE set_map_extents',
'    (p_lat     IN NUMBER',
'    ,p_lng     IN NUMBER',
'    ,p_lat_min IN OUT NUMBER',
'    ,p_lat_max IN OUT NUMBER',
'    ,p_lng_min IN OUT NUMBER',
'    ,p_lng_max IN OUT NUMBER',
'    ) IS',
'BEGIN',
'    p_lat_min := LEAST   (NVL(p_lat_min, p_lat), p_lat);',
'    p_lat_max := GREATEST(NVL(p_lat_max, p_lat), p_lat);',
'    p_lng_min := LEAST   (NVL(p_lng_min, p_lng), p_lng);',
'    p_lng_max := GREATEST(NVL(p_lng_max, p_lng), p_lng);',
'END set_map_extents;',
'',
'FUNCTION latlng2ch (lat IN NUMBER, lng IN NUMBER) RETURN VARCHAR2 IS',
'BEGIN',
'  RETURN ''"lat":''',
'      || TO_CHAR(lat, ''fm990.0999999999999999'')',
'      || '',"lng":''',
'      || TO_CHAR(lng, ''fm990.0999999999999999'');',
'END latlng2ch;',
'',
'FUNCTION get_data',
'    (p_region  IN APEX_PLUGIN.t_region',
'    ,p_lat_min IN OUT NUMBER',
'    ,p_lat_max IN OUT NUMBER',
'    ,p_lng_min IN OUT NUMBER',
'    ,p_lng_max IN OUT NUMBER',
'    ) RETURN VARCHAR2 IS',
'',
'    l_data   VARCHAR2(32767);',
'    l_lat    NUMBER;',
'    l_lng    NUMBER;',
'    l_count  NUMBER;',
'    ',
'    l_column_value_list  APEX_PLUGIN_UTIL.t_column_value_list;',
'',
'BEGIN',
'',
'    l_column_value_list := APEX_PLUGIN_UTIL.get_data',
'        (p_sql_statement  => p_region.source',
'        ,p_min_columns    => 3',
'        ,p_max_columns    => 3',
'        ,p_component_name => p_region.name',
'        ,p_max_rows       => 1000);',
'  ',
'    FOR i IN 1..l_column_value_list(1).count LOOP',
'  ',
'        IF l_data IS NOT NULL THEN',
'            l_data := l_data || '','';',
'        END IF;',
'        ',
'        l_lat   := TO_NUMBER(l_column_value_list(1)(i));',
'        l_lng   := TO_NUMBER(l_column_value_list(2)(i));',
'        l_count := TO_NUMBER(l_column_value_list(3)(i));',
'        ',
'        l_data := l_data',
'          || ''{a:'' || TO_CHAR(l_lat, ''fm990.0999999999999999'')',
'          || '',b:'' || TO_CHAR(l_lng, ''fm990.0999999999999999'')',
'          || '',c:''  || TO_CHAR(l_count, ''fm9999990'')',
'          || ''}'';',
'    ',
'        set_map_extents',
'          (p_lat     => l_lat',
'          ,p_lng     => l_lng',
'          ,p_lat_min => p_lat_min',
'          ,p_lat_max => p_lat_max',
'          ,p_lng_min => p_lng_min',
'          ,p_lng_max => p_lng_max',
'          );',
'      ',
'    END LOOP;',
'',
'    RETURN l_data;',
'END get_data;',
'',
'FUNCTION render_map',
'    (p_region IN APEX_PLUGIN.t_region',
'    ,p_plugin IN APEX_PLUGIN.t_plugin',
'    ,p_is_printer_friendly IN BOOLEAN',
'    ) RETURN APEX_PLUGIN.t_region_render_result IS',
'',
'    SUBTYPE plugin_attr is VARCHAR2(32767);',
'    ',
'    l_result       APEX_PLUGIN.t_region_render_result;',
'',
'	l_region       varchar2(100);',
'    l_script       varchar2(32767);',
'    l_html         VARCHAR2(32767);',
'    l_data         VARCHAR2(32767);',
'    l_lat_min      NUMBER;',
'    l_lat_max      NUMBER;',
'    l_lng_min      NUMBER;',
'    l_lng_max      NUMBER;',
'',
'    l_js_params    varchar2(1000);',
'',
'    -- Plugin attributes (application level)',
'    l_api_key       plugin_attr := p_plugin.attribute_01;',
'',
'    -- Component attributes',
'    l_map_height    plugin_attr := p_region.attribute_01;',
'    l_sign_in       plugin_attr := p_region.attribute_02;',
'    l_dissipating   plugin_attr := p_region.attribute_03;',
'    l_opacity       plugin_attr := p_region.attribute_04;',
'    l_radius        plugin_attr := p_region.attribute_05;',
'	l_mapstyle      plugin_attr := p_region.attribute_06;',
'    ',
'BEGIN',
'    -- debug information will be included',
'    IF APEX_APPLICATION.g_debug then',
'        APEX_PLUGIN_UTIL.debug_region',
'          (p_plugin => p_plugin',
'          ,p_region => p_region',
'          ,p_is_printer_friendly => p_is_printer_friendly);',
'    END IF;',
'',
'    IF l_api_key IS NOT NULL THEN',
'        l_js_params := ''key='' || l_api_key;',
'        IF l_sign_in = ''Y'' THEN',
'            l_js_params := l_js_params || ''&''||''signed_in=true'';',
'        END IF;',
'    END IF;',
'	',
'	IF l_js_params IS NOT NULL THEN',
'		l_js_params := l_js_params || ''&'';',
'	END IF;',
'	',
'	l_js_params := l_js_params || ''libraries=visualization'';',
'',
'    APEX_JAVASCRIPT.add_library',
'      (p_name           => ''js?'' || l_js_params',
'      ,p_directory      => ''https://maps.googleapis.com/maps/api/''',
'      ,p_skip_extension => true);',
'',
'    APEX_JAVASCRIPT.add_library',
'      (p_name           => ''jk64plugin''',
'      ,p_directory      => p_plugin.file_prefix);',
'',
'    l_region := CASE',
'                WHEN p_region.static_id IS NOT NULL',
'                THEN p_region.static_id',
'                ELSE ''R''||p_region.id',
'                END;',
'',
'    IF p_region.source IS NOT NULL THEN',
'',
'      l_data := get_data',
'        (p_region  => p_region',
'        ,p_lat_min => l_lat_min',
'        ,p_lat_max => l_lat_max',
'        ,p_lng_min => l_lng_min',
'        ,p_lng_max => l_lng_max',
'        );',
'        ',
'    END IF;',
'',
'    -- show entire map if no points to show',
'    IF l_data IS NULL THEN',
'      l_lat_min := -90;',
'      l_lat_max := 90;',
'      l_lng_min := -180;',
'      l_lng_max := 180;',
'    END IF;',
'    ',
'    l_script := ''<script>',
'var opt_#REGION# = {',
'   container:      "map_#REGION#_container"',
'  ,regionId:       "#REGION#"',
'  ,ajaxIdentifier: "''||APEX_PLUGIN.get_ajax_identifier||''"',
'  ,southwest:      {''||latlng2ch(l_lat_min,l_lng_min)||''}',
'  ,northeast:      {''||latlng2ch(l_lat_max,l_lng_max)||''}',
'  ,dissipating:    ''||CASE WHEN l_dissipating = ''Y'' THEN ''true'' ELSE ''false'' END||''',
'  ,opacity:        ''||l_opacity||''',
'  ,radius:         ''||l_radius||''',
'  ,mapstyle:       ''||l_mapstyle||''',
'};',
'function r_#REGION#(f){/in/.test(document.readyState)?setTimeout("r_#REGION#("+f+")",9):f()}',
'r_#REGION#(function(){',
'  opt_#REGION#.mapdata = ['';',
'	sys.htp.p(REPLACE(l_script,''#REGION#'',l_region));',
'	sys.htp.p(l_data);',
'	l_script := ''];',
'  jk64plugin_initMap(opt_#REGION#);',
'  apex.jQuery("#"+opt_#REGION#.regionId).bind("apexrefresh", function(){jk64plugin_refreshMap(opt_#REGION#);});',
'});',
'</script>'';',
'	sys.htp.p(REPLACE(l_script,''#REGION#'',l_region));',
'    sys.htp.p(''<div id="map_''||l_region||''_container" style="min-height:''||l_map_height||''px"></div>'');',
'  ',
'    RETURN l_result;',
'END render_map;',
'',
'FUNCTION ajax',
'    (p_region IN APEX_PLUGIN.t_region',
'    ,p_plugin IN APEX_PLUGIN.t_plugin',
'    ) RETURN APEX_PLUGIN.t_region_ajax_result IS',
'',
'    l_result APEX_PLUGIN.t_region_ajax_result;',
'',
'    l_data         VARCHAR2(32767);',
'    l_lat_min      NUMBER;',
'    l_lat_max      NUMBER;',
'    l_lng_min      NUMBER;',
'    l_lng_max      NUMBER;',
'	',
'BEGIN',
'    -- debug information will be included',
'    IF APEX_APPLICATION.g_debug then',
'        APEX_PLUGIN_UTIL.debug_region',
'          (p_plugin => p_plugin',
'          ,p_region => p_region);',
'    END IF;',
'',
'    IF p_region.source IS NOT NULL THEN',
'',
'      l_data := get_data',
'        (p_region  => p_region',
'        ,p_lat_min => l_lat_min',
'        ,p_lat_max => l_lat_max',
'        ,p_lng_min => l_lng_min',
'        ,p_lng_max => l_lng_max',
'        );',
'        ',
'    END IF;',
'',
'    -- show entire map if no points to show',
'    IF l_data IS NULL THEN',
'      l_lat_min := -90;',
'      l_lat_max := 90;',
'      l_lng_min := -180;',
'      l_lng_max := 180;',
'    END IF;',
'',
'    sys.owa_util.mime_header(''text/plain'', false);',
'    sys.htp.p(''Cache-Control: no-cache'');',
'    sys.htp.p(''Pragma: no-cache'');',
'    sys.owa_util.http_header_close;',
'    ',
'    sys.htp.p(''{"southwest":{''',
'      || latlng2ch(l_lat_min,l_lng_min)',
'      || ''},"northeast":{''',
'      || latlng2ch(l_lat_max,l_lng_max)',
'      || ''},"mapdata":['');',
'	sys.htp.p(l_data);',
'    sys.htp.p('']}'');',
'',
'    RETURN l_result;',
'END ajax;'))
,p_render_function=>'render_map'
,p_ajax_function=>'ajax'
,p_standard_attributes=>'SOURCE_SQL:SOURCE_REQUIRED'
,p_sql_min_column_count=>3
,p_sql_max_column_count=>3
,p_sql_examples=>'SELECT lat, lng, count_data FROM mytable;'
,p_substitute_attributes=>true
,p_subscribe_plugin_settings=>true
,p_version_identifier=>'0.1'
,p_files_version=>15
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(75425828282303507)
,p_plugin_id=>wwv_flow_api.id(75424330494277385)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>1
,p_display_sequence=>10
,p_prompt=>'Map Height'
,p_attribute_type=>'INTEGER'
,p_is_required=>true
,p_default_value=>'400'
,p_display_length=>5
,p_max_length=>22
,p_unit=>'pixels'
,p_is_translatable=>false
,p_help_text=>'Map Height in pixels'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(75428215337369553)
,p_plugin_id=>wwv_flow_api.id(75424330494277385)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>2
,p_display_sequence=>20
,p_prompt=>'Google Sign-in'
,p_attribute_type=>'CHECKBOX'
,p_is_required=>false
,p_default_value=>'N'
,p_is_translatable=>false
,p_help_text=>'Set to Yes to sign-in user to Google (only applicable if Google API Key is provided)'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(75430645845490273)
,p_plugin_id=>wwv_flow_api.id(75424330494277385)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>3
,p_display_sequence=>30
,p_prompt=>'Dissipating'
,p_attribute_type=>'CHECKBOX'
,p_is_required=>false
,p_default_value=>'N'
,p_is_translatable=>false
,p_help_text=>'Specifies whether heatmaps dissipate on zoom. Yes means the radius of influence of a data point is specified by the radius option only. When dissipating is disabled, the radius option is interpreted as a radius at zoom level 0.'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(75431241023493970)
,p_plugin_id=>wwv_flow_api.id(75424330494277385)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>4
,p_display_sequence=>40
,p_prompt=>'Opacity'
,p_attribute_type=>'NUMBER'
,p_is_required=>true
,p_default_value=>'0.6'
,p_display_length=>5
,p_is_translatable=>false
,p_help_text=>'The opacity of the heatmap, expressed as a number between 0 and 1.'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(75431885387496396)
,p_plugin_id=>wwv_flow_api.id(75424330494277385)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>5
,p_display_sequence=>50
,p_prompt=>'Radius'
,p_attribute_type=>'NUMBER'
,p_is_required=>true
,p_default_value=>'5'
,p_display_length=>5
,p_unit=>'pixels'
,p_is_translatable=>false
,p_help_text=>'The radius of influence for each data point, in pixels.'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(75435911245701082)
,p_plugin_id=>wwv_flow_api.id(75424330494277385)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>6
,p_display_sequence=>60
,p_prompt=>'Map Style'
,p_attribute_type=>'TEXTAREA'
,p_is_required=>false
,p_is_translatable=>false
,p_examples=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'Here is an example, a light greyscale style map:',
'<pre>',
'[{"featureType":"water","elementType":"geometry","stylers":[{"color":"#e9e9e9"},{"lightness":17}]},{"featureType":"landscape","elementType":"geometry","stylers":[{"color":"#f5f5f5"},{"lightness":20}]},{"featureType":"road.highway","elementType":"geom'
||'etry.fill","stylers":[{"color":"#ffffff"},{"lightness":17}]},{"featureType":"road.highway","elementType":"geometry.stroke","stylers":[{"color":"#ffffff"},{"lightness":29},{"weight":0.2}]},{"featureType":"road.arterial","elementType":"geometry","style'
||'rs":[{"color":"#ffffff"},{"lightness":18}]},{"featureType":"road.local","elementType":"geometry","stylers":[{"color":"#ffffff"},{"lightness":16}]},{"featureType":"poi","elementType":"geometry","stylers":[{"color":"#f5f5f5"},{"lightness":21}]},{"featu'
||'reType":"poi.park","elementType":"geometry","stylers":[{"color":"#dedede"},{"lightness":21}]},{"elementType":"labels.text.stroke","stylers":[{"visibility":"on"},{"color":"#ffffff"},{"lightness":16}]},{"elementType":"labels.text.fill","stylers":[{"sat'
||'uration":36},{"color":"#333333"},{"lightness":40}]},{"elementType":"labels.icon","stylers":[{"visibility":"off"}]},{"featureType":"transit","elementType":"geometry","stylers":[{"color":"#f2f2f2"},{"lightness":19}]},{"featureType":"administrative","el'
||'ementType":"geometry.fill","stylers":[{"color":"#fefefe"},{"lightness":20}]},{"featureType":"administrative","elementType":"geometry.stroke","stylers":[{"color":"#fefefe"},{"lightness":17},{"weight":1.2}]}]',
'</pre>'))
,p_help_text=>'Easiest way is to copy one from a site like https://snazzymaps.com/'
);
wwv_flow_api.create_plugin_event(
 p_id=>wwv_flow_api.id(75425074822286522)
,p_plugin_id=>wwv_flow_api.id(75424330494277385)
,p_name=>'maploaded'
,p_display_name=>'mapLoaded'
);
end;
/
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '66756E6374696F6E206A6B3634706C7567696E5F686561746D6170286F707429207B0D0A09617065782E6465627567286F70742E726567696F6E49642B2220686561746D617022293B0D0A0976617220707473203D205B5D3B0D0A092F2F20657870616E';
wwv_flow_api.g_varchar2_table(2) := '6420746865206D6170206461746120696E746F20616E206172726179206F6620706F696E74730D0A09666F7220287661722069203D20303B2069203C206F70742E6D6170646174612E6C656E6774683B20692B2B29207B0D0A09097074732E7075736828';
wwv_flow_api.g_varchar2_table(3) := '7B0D0A0909096C6F636174696F6E3A6E657720676F6F676C652E6D6170732E4C61744C6E67286F70742E6D6170646174615B695D2E612C206F70742E6D6170646174615B695D2E62292C0D0A0909097765696768743A6F70742E6D6170646174615B695D';
wwv_flow_api.g_varchar2_table(4) := '2E630D0A09097D293B0D0A2F2F0909696620286F70742E6D6170646174615B695D2E63203E203029207B0D0A2F2F090909666F722028766172206A203D20303B206A203C206F70742E6D6170646174615B695D2E633B206A2B2B29207B0D0A2F2F090909';
wwv_flow_api.g_varchar2_table(5) := '097074732E70757368286E657720676F6F676C652E6D6170732E4C61744C6E67286F70742E6D6170646174615B695D2E612C206F70742E6D6170646174615B695D2E6229293B0D0A2F2F0909097D0909090D0A2F2F09097D0D0A097D0D0A096F70742E68';
wwv_flow_api.g_varchar2_table(6) := '6561746D6170203D206E657720676F6F676C652E6D6170732E76697375616C697A6174696F6E2E486561746D61704C61796572287B0D0A0909646174613A207074732C0D0A09096D61703A206F70742E6D61702C0D0A09096469737369706174696E673A';
wwv_flow_api.g_varchar2_table(7) := '206F70742E6469737369706174696E672C0D0A09096F7061636974793A206F70742E6F7061636974792C0D0A09097261646975733A206F70742E7261646975730D0A097D293B0D0A7D0D0A66756E6374696F6E206A6B3634706C7567696E5F696E69744D';
wwv_flow_api.g_varchar2_table(8) := '6170286F707429207B0D0A09617065782E6465627567286F70742E726567696F6E49642B2220696E69744D617022293B0D0A09766172206D794F7074696F6E73203D207B0D0A09097A6F6F6D3A20322C0D0A20202020202020206D61705479706549643A';
wwv_flow_api.g_varchar2_table(9) := '20676F6F676C652E6D6170732E4D61705479706549642E524F41444D41500D0A097D3B0D0A096F70742E6D6170203D206E657720676F6F676C652E6D6170732E4D617028646F63756D656E742E676574456C656D656E7442794964286F70742E636F6E74';
wwv_flow_api.g_varchar2_table(10) := '61696E6572292C6D794F7074696F6E73293B0D0A09696620286F70742E6D61707374796C6529207B0D0A09096F70742E6D61702E7365744F7074696F6E73287B7374796C65733A206F70742E6D61707374796C657D293B0D0A097D0D0A096F70742E6D61';
wwv_flow_api.g_varchar2_table(11) := '702E666974426F756E6473286E657720676F6F676C652E6D6170732E4C61744C6E67426F756E6473286F70742E736F757468776573742C6F70742E6E6F7274686561737429293B0D0A096A6B3634706C7567696E5F686561746D6170286F7074293B0D0A';
wwv_flow_api.g_varchar2_table(12) := '09617065782E6465627567286F70742E726567696F6E49642B2220696E69744D61702066696E697368656422293B0D0A09617065782E6A5175657279282223222B6F70742E726567696F6E4964292E7472696767657228226D61706C6F61646564222C20';
wwv_flow_api.g_varchar2_table(13) := '7B6D61703A6F70742E6D61707D293B0D0A7D0D0A66756E6374696F6E206A6B3634706C7567696E5F726566726573684D6170286F707429207B0D0A2020617065782E6465627567286F70742E726567696F6E49642B2220726566726573684D617022293B';
wwv_flow_api.g_varchar2_table(14) := '0D0A2020617065782E6A5175657279282223222B6F70742E726567696F6E4964292E747269676765722822617065786265666F72657265667265736822293B0D0A2020617065782E7365727665722E706C7567696E0D0A20202020286F70742E616A6178';
wwv_flow_api.g_varchar2_table(15) := '4964656E7469666965720D0A202020202C7B2064617461547970653A20226A736F6E220D0A2020202020202C737563636573733A2066756E6374696F6E282070446174612029207B0D0A20202020202020202020617065782E6465627567286F70742E72';
wwv_flow_api.g_varchar2_table(16) := '6567696F6E49642B2220737563636573732070446174613D222B70446174612E736F757468776573742E6C61742B222C222B70446174612E736F757468776573742E6C6E672B2220222B70446174612E6E6F727468656173742E6C61742B222C222B7044';
wwv_flow_api.g_varchar2_table(17) := '6174612E6E6F727468656173742E6C6E67293B0D0A202020202020202020206F70742E6D61702E666974426F756E6473280D0A2020202020202020202020207B736F7574683A70446174612E736F757468776573742E6C61740D0A202020202020202020';
wwv_flow_api.g_varchar2_table(18) := '2020202C776573743A2070446174612E736F757468776573742E6C6E670D0A2020202020202020202020202C6E6F7274683A70446174612E6E6F727468656173742E6C61740D0A2020202020202020202020202C656173743A2070446174612E6E6F7274';
wwv_flow_api.g_varchar2_table(19) := '68656173742E6C6E677D293B0D0A20202020202020202020617065782E6465627567286F70742E726567696F6E49642B222072656D6F766520686561746D617022293B0D0A090920206F70742E686561746D61702E64656C6574653B0D0A202020202020';
wwv_flow_api.g_varchar2_table(20) := '20202020617065782E6465627567286F70742E726567696F6E49642B222070446174612E6D6170646174612E6C656E6774683D222B70446174612E6D6170646174612E6C656E677468293B0D0A202020202020202020206F70742E6D617064617461203D';
wwv_flow_api.g_varchar2_table(21) := '2070446174612E6D6170646174613B0D0A202020202020202020206A6B3634706C7567696E5F686561746D6170286F7074293B0D0A20202020202020202020617065782E6A5175657279282223222B6F70742E726567696F6E4964292E74726967676572';
wwv_flow_api.g_varchar2_table(22) := '28226170657861667465727265667265736822293B0D0A202020202020207D0D0A20202020207D20293B0D0A2020617065782E6465627567286F70742E726567696F6E49642B2220726566726573684D61702066696E697368656422293B0D0A7D0D0A';
null;
end;
/
begin
wwv_flow_api.create_plugin_file(
 p_id=>wwv_flow_api.id(75433746373548685)
,p_plugin_id=>wwv_flow_api.id(75424330494277385)
,p_file_name=>'jk64plugin.js'
,p_mime_type=>'application/javascript'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
end;
/
begin
wwv_flow_api.import_end(p_auto_install_sup_obj => nvl(wwv_flow_application_install.get_auto_install_sup_obj, false), p_is_component_import => true);
commit;
end;
/
set verify on feedback on define on
prompt  ...done
