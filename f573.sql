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
prompt --application/set_environment
 
prompt APPLICATION 573 - GeoHeatmap Plugin Demo
--
-- Application Export:
--   Application:     573
--   Name:            GeoHeatmap Plugin Demo
--   Date and Time:   17:08 Saturday March 19, 2016
--   Exported By:     JEFF
--   Flashback:       0
--   Export Type:     Application Export
--   Version:         5.0.2.00.07
--   Instance ID:     61916131238277
--

-- Application Statistics:
--   Pages:                      2
--     Items:                    2
--     Processes:                4
--     Regions:                  3
--     Buttons:                  2
--     Dynamic Actions:          1
--   Shared Components:
--     Logic:
--     Navigation:
--       Lists:                  2
--       Breadcrumbs:            1
--         Entries:              1
--     Security:
--       Authentication:         1
--     User Interface:
--       Themes:                 1
--       Templates:
--         Page:                 9
--         Region:              13
--         Label:                5
--         List:                11
--         Popup LOV:            1
--         Calendar:             1
--         Breadcrumb:           1
--         Button:               3
--         Report:               9
--       Plug-ins:               1
--     Globalization:
--     Reports:
--   Supporting Objects:  Included
--     Install scripts:          1

prompt --application/delete_application
begin
wwv_flow_api.remove_flow(wwv_flow.g_flow_id);
end;
/
prompt --application/ui_types
begin
null;
end;
/
prompt --application/create_application
begin
wwv_flow_api.create_flow(
 p_id=>wwv_flow.g_flow_id
,p_display_id=>nvl(wwv_flow_application_install.get_application_id,573)
,p_owner=>nvl(wwv_flow_application_install.get_schema,'SAMPLE')
,p_name=>nvl(wwv_flow_application_install.get_application_name,'GeoHeatmap Plugin Demo')
,p_alias=>nvl(wwv_flow_application_install.get_application_alias,'JK64_GEOHEATMAP')
,p_page_view_logging=>'YES'
,p_page_protection_enabled_y_n=>'Y'
,p_checksum_salt=>'5A04DB6367FFFB57AECB7768C23C2C7176E8FDDDA0D48509516516B9CE5BAFD2'
,p_bookmark_checksum_function=>'SH1'
,p_compatibility_mode=>'5.0'
,p_flow_language=>'en'
,p_flow_language_derived_from=>'0'
,p_date_format=>'DD-MON-YYYY'
,p_date_time_format=>'DD-MON-YYYY HH:MIPM'
,p_timestamp_format=>'DD-MON-YYYY HH24.MI.SSXFF'
,p_timestamp_tz_format=>'DD-MON-YYYY HH24.MI.SSXFF TZR'
,p_flow_image_prefix => nvl(wwv_flow_application_install.get_image_prefix,'')
,p_authentication=>'PLUGIN'
,p_authentication_id=>wwv_flow_api.id(75421946745240701)
,p_application_tab_set=>0
,p_logo_image=>'TEXT:Heatmap Plugin Demo'
,p_proxy_server=> nvl(wwv_flow_application_install.get_proxy,'')
,p_flow_version=>'release 0.1'
,p_flow_status=>'AVAILABLE_W_EDIT_LINK'
,p_flow_unavailable_text=>'This application is currently unavailable at this time.'
,p_exact_substitutions_only=>'Y'
,p_browser_cache=>'N'
,p_browser_frame=>'D'
,p_rejoin_existing_sessions=>'N'
,p_csv_encoding=>'Y'
,p_substitution_string_01=>'REPOSITORY'
,p_substitution_value_01=>'https://github.com/jeffreykemp/jk64-plugin-heatmap'
,p_last_updated_by=>'JEFF'
,p_last_upd_yyyymmddhh24miss=>'20160319170745'
,p_file_prefix => nvl(wwv_flow_application_install.get_static_app_file_prefix,'')
,p_ui_type_name => null
);
end;
/
prompt --application/shared_components/navigation/lists
begin
wwv_flow_api.create_list(
 p_id=>wwv_flow_api.id(75379363059240615)
,p_name=>'Desktop Navigation Menu'
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(75423167828240713)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Home'
,p_list_item_link_target=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.:'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'1'
);
wwv_flow_api.create_list(
 p_id=>wwv_flow_api.id(75421662034240698)
,p_name=>'Desktop Navigation Bar'
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(75421871469240700)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Log Out'
,p_list_item_link_target=>'&LOGOUT_URL.'
,p_list_item_current_for_pages=>'&LOGOUT_URL.'
);
end;
/
prompt --application/shared_components/files
begin
null;
end;
/
prompt --application/plugin_settings
begin
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(75379008977240614)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_CSS_CALENDAR'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(75379155222240615)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_YES_NO'
,p_attribute_01=>'Y'
,p_attribute_03=>'N'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(75379280138240615)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_DISPLAY_SELECTOR'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(75441259883877766)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'PLUGIN_COM.JK64.HEATMAP'
);
end;
/
prompt --application/shared_components/security/authorizations
begin
null;
end;
/
prompt --application/shared_components/navigation/navigation_bar
begin
null;
end;
/
prompt --application/shared_components/logic/application_processes
begin
null;
end;
/
prompt --application/shared_components/logic/application_items
begin
null;
end;
/
prompt --application/shared_components/logic/application_computations
begin
null;
end;
/
prompt --application/shared_components/navigation/tabs/standard
begin
null;
end;
/
prompt --application/shared_components/navigation/tabs/parent
begin
null;
end;
/
prompt --application/shared_components/user_interface/lovs
begin
null;
end;
/
prompt --application/shared_components/navigation/trees
begin
null;
end;
/
prompt --application/pages/page_groups
begin
null;
end;
/
prompt --application/comments
begin
null;
end;
/
prompt --application/shared_components/navigation/breadcrumbs/breadcrumb
begin
wwv_flow_api.create_menu(
 p_id=>wwv_flow_api.id(75423065102240711)
,p_name=>' Breadcrumb'
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(75423429637240714)
,p_parent_id=>0
,p_short_name=>'Home'
,p_link=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.'
,p_page_id=>1
);
end;
/
prompt --application/shared_components/user_interface/templates/page
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(75379474197240616)
,p_theme_id=>42
,p_name=>'Left Side Column'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.leftSideCol();'
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'',
'<!--[if lt IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8 lt-ie7" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8]><html class="no-js lt-ie10 lt-ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9]><html class="no-js lt-ie10" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if gt IE 9]><!--> <html class="no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'  <meta charset="utf-8">  ',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>',
'</head>',
'<body class="t-PageBody t-PageBody--showLeft t-PageBody--hideActions no-anim #PAGE_CSS_CLASSES#" #ONLOAD# id="t_PageBody">',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" id="t_Button_navControl" type="button"><span class="t-Icon fa-bars" aria-hidden="true"></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'    </div>',
'    <div class="t-Header-navBar">',
'      #NAVIGATION_BAR#',
'    </div>',
'  </div>',
'  <div class="t-Header-nav">',
'    #TOP_GLOBAL_NAVIGATION_LIST#',
'    #REGION_POSITION_06#',
'  </div>',
'</header>'))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'#SIDE_GLOBAL_NAVIGATION_LIST#',
'  <div class="t-Body-main">',
'    <div class="t-Body-title" id="t_Body_title">',
'      #REGION_POSITION_01#',
'    </div>',
'    <div class="t-Body-side" id="t_Body_side">',
'      #REGION_POSITION_02#',
'    </div>',
'    <div class="t-Body-content" id="t_Body_content">',
'      #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'      <div class="t-Body-contentInner">',
'        #BODY#',
'      </div>',
'        <footer class="t-Footer">',
'          #APP_VERSION#',
'          #CUSTOMIZE#',
'          #SCREEN_READER_TOGGLE#',
'          #REGION_POSITION_05#',
'        </footer>',
'    </div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs">',
'  #REGION_POSITION_04#',
'</div>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'        <span class="t-Icon a-Icon icon-user"></span>',
'        <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#">',
'      <span class="t-Icon #IMAGE#"></span>',
'      <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>17
,p_error_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>3
,p_grid_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2525196570560608698
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(75379586722240619)
,p_page_template_id=>wwv_flow_api.id(75379474197240616)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(75379611231240619)
,p_page_template_id=>wwv_flow_api.id(75379474197240616)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(75379746140240619)
,p_page_template_id=>wwv_flow_api.id(75379474197240616)
,p_name=>'Left Column'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>false
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>4
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(75379895414240619)
,p_page_template_id=>wwv_flow_api.id(75379474197240616)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(75379983223240619)
,p_page_template_id=>wwv_flow_api.id(75379474197240616)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(75380039769240619)
,p_page_template_id=>wwv_flow_api.id(75379474197240616)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(75380142893240619)
,p_page_template_id=>wwv_flow_api.id(75379474197240616)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(75380232211240619)
,p_page_template_id=>wwv_flow_api.id(75379474197240616)
,p_name=>'Before Navigation Bar'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(75380372790240624)
,p_theme_id=>42
,p_name=>'Left and Right Side Columns'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.bothSideCols();'
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'',
'<!--[if lt IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8 lt-ie7" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8]><html class="no-js lt-ie10 lt-ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9]><html class="no-js lt-ie10" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if gt IE 9]><!--> <html class="no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'  <meta charset="utf-8">  ',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>',
'</head>',
'<body class="t-PageBody t-PageBody--showLeft no-anim #PAGE_CSS_CLASSES#" #ONLOAD# id="t_PageBody">',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" id="t_Button_navControl" type="button"><span class="t-Icon fa-bars" aria-hidden="true"></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'    </div>',
'    <div class="t-Header-navBar">',
'      #NAVIGATION_BAR#',
'    </div>',
'  </div>',
'  <div class="t-Header-nav">',
'    #TOP_GLOBAL_NAVIGATION_LIST#',
'    #REGION_POSITION_06#',
'  </div>',
'</header>'))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'#SIDE_GLOBAL_NAVIGATION_LIST#',
'  <div class="t-Body-main">',
'    <div class="t-Body-title" id="t_Body_title">',
'      #REGION_POSITION_01#',
'    </div>',
'    <div class="t-Body-side" id="t_Body_side">',
'      #REGION_POSITION_02#',
'    </div>',
'    <div class="t-Body-content" id="t_Body_content">',
'      #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'      <div class="t-Body-contentInner">',
'        #BODY#',
'      </div>',
'      <footer class="t-Footer">',
'        #APP_VERSION#',
'        #CUSTOMIZE#',
'        #SCREEN_READER_TOGGLE#',
'        #REGION_POSITION_05#',
'      </footer>',
'    </div>',
'  </div>',
'  <div class="t-Body-actions" id="t_Body_actions">',
'    <button class="t-Button t-Button--icon t-Button--header t-Button--headerRight" id="t_Button_rightControlButton" type="button"><span class="t-Icon fa-bars" aria-hidden="true"></span></button>',
'    <div class="t-Body-actionsContent">',
'    #REGION_POSITION_03#',
'    </div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs">',
'  #REGION_POSITION_04#',
'</div>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'        <span class="t-Icon a-Icon icon-user"></span>',
'        <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#">',
'      <span class="t-Icon #IMAGE#"></span>',
'      <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_sidebar_def_reg_pos=>'REGION_POSITION_03'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>17
,p_error_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>false
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>3
,p_grid_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2525203692562657055
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(75380484015240624)
,p_page_template_id=>wwv_flow_api.id(75380372790240624)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>6
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(75380591342240625)
,p_page_template_id=>wwv_flow_api.id(75380372790240624)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(75380625098240625)
,p_page_template_id=>wwv_flow_api.id(75380372790240624)
,p_name=>'Left Column'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>false
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>3
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(75380737555240625)
,p_page_template_id=>wwv_flow_api.id(75380372790240624)
,p_name=>'Right Column'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>3
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(75380897166240625)
,p_page_template_id=>wwv_flow_api.id(75380372790240624)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(75380912296240625)
,p_page_template_id=>wwv_flow_api.id(75380372790240624)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>6
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(75381006059240625)
,p_page_template_id=>wwv_flow_api.id(75380372790240624)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(75381109027240625)
,p_page_template_id=>wwv_flow_api.id(75380372790240624)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(75381226764240625)
,p_page_template_id=>wwv_flow_api.id(75380372790240624)
,p_name=>'Before Navigation Bar'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(75381394481240625)
,p_theme_id=>42
,p_name=>'Login'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.appLogin();'
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!doctype html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'',
'<!--[if lt IE 7]><html class="html-login no-js lt-ie10 lt-ie9 lt-ie8 lt-ie7" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7]><html class="html-login no-js lt-ie10 lt-ie9 lt-ie8" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8]><html class="html-login no-js lt-ie10 lt-ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9]><html class="html-login no-js lt-ie10" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if gt IE 9]><!--> <html class="html-login no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'  <meta charset="utf-8">  ',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>',
'</head>',
'<body class="t-PageBody--login no-anim #PAGE_CSS_CLASSES#" #ONLOAD#>',
'#FORM_OPEN#'))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'  #REGION_POSITION_01#',
'  #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'  <div class="t-Body-wrap">',
'    <div class="t-Body-col t-Body-col--main">',
'      <div class="t-Login-container">',
'      #BODY#',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>6
,p_error_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>3
,p_grid_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2099711150063350616
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(75381403785240625)
,p_page_template_id=>wwv_flow_api.id(75381394481240625)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(75381580311240625)
,p_page_template_id=>wwv_flow_api.id(75381394481240625)
,p_name=>'Body Header'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(75381610910240625)
,p_theme_id=>42
,p_name=>'Master Detail'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.masterDetail();'
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'',
'<!--[if lt IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8 lt-ie7" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8]><html class="no-js lt-ie10 lt-ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9]><html class="no-js lt-ie10" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if gt IE 9]><!--> <html class="no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'  <meta charset="utf-8">  ',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>',
'</head>',
'<body class="t-PageBody t-PageBody--masterDetail t-PageBody--hideLeft no-anim #PAGE_CSS_CLASSES#" #ONLOAD# id="t_PageBody">',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" id="t_Button_navControl" type="button"><span class="t-Icon fa-bars" aria-hidden="true"></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'    </div>',
'    <div class="t-Header-navBar">',
'      #NAVIGATION_BAR#',
'    </div>',
'  </div>',
'  <div class="t-Header-nav">',
'    #TOP_GLOBAL_NAVIGATION_LIST#',
'    #REGION_POSITION_06#',
'  </div>',
'</header>'))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'#SIDE_GLOBAL_NAVIGATION_LIST#',
'  <div class="t-Body-main">',
'    <div class="t-Body-title" id="t_Body_title">',
'      #REGION_POSITION_01#',
'    </div>',
'    <div class="t-Body-content" id="t_Body_content">',
'      #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'      <div class="t-Body-info" id="t_Body_info">',
'        #REGION_POSITION_02#',
'      </div>',
'      <div class="t-Body-contentInner">',
'        #BODY#',
'      </div>',
'      <footer class="t-Footer">',
'        #APP_VERSION#',
'        #CUSTOMIZE#',
'        #SCREEN_READER_TOGGLE#',
'        #REGION_POSITION_05#',
'      </footer>',
'    </div>',
'  </div>',
'  <div class="t-Body-actions" id="t_Body_actions">',
'    <button class="t-Button t-Button--icon t-Button--header t-Button--headerRight" id="t_Button_rightControlButton" type="button"><span class="t-Icon fa-bars" aria-hidden="true"></span></button>',
'    <div class="t-Body-actionsContent">',
'    #REGION_POSITION_03#',
'    </div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs">',
'  #REGION_POSITION_04#',
'</div>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'        <span class="t-Icon a-Icon icon-user"></span>',
'        <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#">',
'      <span class="t-Icon #IMAGE#"></span>',
'      <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_sidebar_def_reg_pos=>'REGION_POSITION_03'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>17
,p_error_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>3
,p_grid_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>1996914646461572319
,p_translate_this_template=>'N'
);
end;
/
begin
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(75381768955240625)
,p_page_template_id=>wwv_flow_api.id(75381610910240625)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(75381897396240625)
,p_page_template_id=>wwv_flow_api.id(75381610910240625)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(75381921271240625)
,p_page_template_id=>wwv_flow_api.id(75381610910240625)
,p_name=>'Master Detail'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(75382058715240625)
,p_page_template_id=>wwv_flow_api.id(75381610910240625)
,p_name=>'Right Side Column'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>4
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(75382119066240625)
,p_page_template_id=>wwv_flow_api.id(75381610910240625)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(75382253980240625)
,p_page_template_id=>wwv_flow_api.id(75381610910240625)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(75382336340240625)
,p_page_template_id=>wwv_flow_api.id(75381610910240625)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(75382458804240625)
,p_page_template_id=>wwv_flow_api.id(75381610910240625)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(75382546141240625)
,p_page_template_id=>wwv_flow_api.id(75381610910240625)
,p_name=>'Before Navigation Bar'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(75382699598240625)
,p_theme_id=>42
,p_name=>'Minimal (No Navigation)'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.noSideCol();'
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'',
'<!--[if lt IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8 lt-ie7" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8]><html class="no-js lt-ie10 lt-ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9]><html class="no-js lt-ie10" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if gt IE 9]><!--> <html class="no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'  <meta charset="utf-8">  ',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#  ',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>',
'</head>',
'<body class="t-PageBody t-PageBody--hideLeft t-PageBody--hideActions no-anim #PAGE_CSS_CLASSES# t-PageBody--noNav" #ONLOAD# id="t_PageBody">',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" id="t_Button_navControl" type="button"><span class="t-Icon fa-bars" aria-hidden="true"></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'    </div>',
'    <div class="t-Header-navBar">',
'      #NAVIGATION_BAR#',
'    </div>',
'  </div>',
'</header>',
'    '))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'  <div class="t-Body-main">',
'      <div class="t-Body-title" id="t_Body_title">',
'        #REGION_POSITION_01#',
'      </div>',
'      <div class="t-Body-content" id="t_Body_content">',
'        #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'        <div class="t-Body-contentInner">',
'          #BODY#',
'        </div>',
'        <footer class="t-Footer">',
'          #APP_VERSION#',
'          #CUSTOMIZE#',
'          #SCREEN_READER_TOGGLE#',
'          #REGION_POSITION_05#',
'        </footer>',
'      </div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs">',
'  #REGION_POSITION_04#',
'</div>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>',
''))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar t-NavigationBar--classic" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'        <span class="t-Icon a-Icon icon-user"></span>',
'        <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header" href="#LINK#">',
'      <span class="t-Icon #IMAGE#"></span>',
'      <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>4
,p_error_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>3
,p_grid_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2977628563533209425
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(75382786997240625)
,p_page_template_id=>wwv_flow_api.id(75382699598240625)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(75382831836240625)
,p_page_template_id=>wwv_flow_api.id(75382699598240625)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(75382903636240625)
,p_page_template_id=>wwv_flow_api.id(75382699598240625)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(75383025478240625)
,p_page_template_id=>wwv_flow_api.id(75382699598240625)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(75383121824240625)
,p_page_template_id=>wwv_flow_api.id(75382699598240625)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(75383282007240625)
,p_page_template_id=>wwv_flow_api.id(75382699598240625)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(75383378604240625)
,p_page_template_id=>wwv_flow_api.id(75382699598240625)
,p_name=>'Before Navigation Bar'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(75383415763240625)
,p_theme_id=>42
,p_name=>'Modal Dialog'
,p_is_popup=>true
,p_javascript_code_onload=>'apex.theme42.initializePage.modalDialog();'
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'',
'<!--[if lt IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8 lt-ie7" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8]><html class="no-js lt-ie10 lt-ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9]><html class="no-js lt-ie10" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if gt IE 9]><!--> <html class="no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'  <meta charset="utf-8">  ',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>',
'</head>',
'<body class="t-Dialog-page #DIALOG_CSS_CLASSES# #PAGE_CSS_CLASSES#" #ONLOAD#>',
'#FORM_OPEN#'))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Dialog" role="dialog" aria-label="#TITLE#">',
'  <div class="t-Dialog-wrapper">',
'    <div class="t-Dialog-header">',
'      #REGION_POSITION_01#',
'    </div>',
'    <div class="t-Dialog-body">',
'      #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'      #BODY#',
'    </div>',
'    <div class="t-Dialog-footer">',
'      #REGION_POSITION_03#',
'    </div>',
'  </div>',
'</div>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>3
,p_error_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>3
,p_grid_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_height=>'500'
,p_dialog_width=>'720'
,p_dialog_max_width=>'960'
,p_dialog_css_classes=>'t-Dialog--standard'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2098960803539086924
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(75383559755240625)
,p_page_template_id=>wwv_flow_api.id(75383415763240625)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(75383653492240625)
,p_page_template_id=>wwv_flow_api.id(75383415763240625)
,p_name=>'Dialog Header'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(75383796539240626)
,p_page_template_id=>wwv_flow_api.id(75383415763240625)
,p_name=>'Dialog Footer'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(75383809478240626)
,p_theme_id=>42
,p_name=>'Right Side Column'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.rightSideCol();'
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'',
'<!--[if lt IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8 lt-ie7" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8]><html class="no-js lt-ie10 lt-ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9]><html class="no-js lt-ie10" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if gt IE 9]><!--> <html class="no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'  <meta charset="utf-8">  ',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>',
'</head>',
'<body class="t-PageBody t-PageBody--hideLeft no-anim #PAGE_CSS_CLASSES#" #ONLOAD# id="t_PageBody">',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" id="t_Button_navControl" type="button"><span class="t-Icon fa-bars" aria-hidden="true"></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'    </div>',
'    <div class="t-Header-navBar">',
'      #NAVIGATION_BAR#',
'    </div>',
'  </div>',
'  <div class="t-Header-nav">',
'    #TOP_GLOBAL_NAVIGATION_LIST#',
'    #REGION_POSITION_06#',
'  </div>',
'</header>'))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'#SIDE_GLOBAL_NAVIGATION_LIST#',
'  <div class="t-Body-main">',
'    <div class="t-Body-title" id="t_Body_title">',
'      #REGION_POSITION_01#',
'    </div>',
'    <div class="t-Body-content" id="t_Body_content">',
'      #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'      <div class="t-Body-contentInner">',
'        #BODY#',
'      </div>',
'      <footer class="t-Footer">',
'        #APP_VERSION#',
'        #CUSTOMIZE#',
'        #SCREEN_READER_TOGGLE#',
'        #REGION_POSITION_05#',
'      </footer>',
'    </div>',
'  </div>',
'  <div class="t-Body-actions" id="t_Body_actions">',
'    <button class="t-Button t-Button--icon t-Button--header t-Button--headerRight" id="t_Button_rightControlButton" type="button"><span class="t-Icon fa-bars" aria-hidden="true"></span></button>',
'    <div class="t-Body-actionsContent">',
'    #REGION_POSITION_03#',
'    </div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs">',
'  #REGION_POSITION_04#',
'</div>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'        <span class="t-Icon a-Icon icon-user"></span>',
'        <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#">',
'      <span class="t-Icon #IMAGE#"></span>',
'      <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_sidebar_def_reg_pos=>'REGION_POSITION_03'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>17
,p_error_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>false
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>3
,p_grid_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2525200116240651575
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(75383990279240626)
,p_page_template_id=>wwv_flow_api.id(75383809478240626)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(75384020649240626)
,p_page_template_id=>wwv_flow_api.id(75383809478240626)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(75384140038240626)
,p_page_template_id=>wwv_flow_api.id(75383809478240626)
,p_name=>'Right Column'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>4
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(75384252673240626)
,p_page_template_id=>wwv_flow_api.id(75383809478240626)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(75384306457240626)
,p_page_template_id=>wwv_flow_api.id(75383809478240626)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(75384431632240626)
,p_page_template_id=>wwv_flow_api.id(75383809478240626)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(75384534257240626)
,p_page_template_id=>wwv_flow_api.id(75383809478240626)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(75384630443240626)
,p_page_template_id=>wwv_flow_api.id(75383809478240626)
,p_name=>'Before Navigation Bar'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(75384751178240626)
,p_theme_id=>42
,p_name=>'Standard'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.noSideCol();'
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'',
'<!--[if lt IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8 lt-ie7" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8]><html class="no-js lt-ie10 lt-ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9]><html class="no-js lt-ie10" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if gt IE 9]><!--> <html class="no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'  <meta charset="utf-8">  ',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#  ',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>',
'</head>',
'<body class="t-PageBody t-PageBody--hideLeft t-PageBody--hideActions no-anim #PAGE_CSS_CLASSES#" #ONLOAD# id="t_PageBody">',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" id="t_Button_navControl" type="button"><span class="t-Icon fa-bars" aria-hidden="true"></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'    </div>',
'    <div class="t-Header-navBar">',
'      #NAVIGATION_BAR#',
'    </div>',
'  </div>',
'  <div class="t-Header-nav">',
'    #TOP_GLOBAL_NAVIGATION_LIST#',
'    #REGION_POSITION_06#',
'  </div>',
'</header>',
'    '))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'  #SIDE_GLOBAL_NAVIGATION_LIST#',
'  <div class="t-Body-main">',
'      <div class="t-Body-title" id="t_Body_title">',
'        #REGION_POSITION_01#',
'      </div>',
'      <div class="t-Body-content" id="t_Body_content">',
'        #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'        <div class="t-Body-contentInner">',
'          #BODY#',
'        </div>',
'        <footer class="t-Footer">',
'          #APP_VERSION#',
'          #CUSTOMIZE#',
'          #SCREEN_READER_TOGGLE#',
'          #REGION_POSITION_05#',
'        </footer>',
'      </div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs">',
'  #REGION_POSITION_04#',
'</div>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>',
''))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar t-NavigationBar--classic" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'        <span class="t-Icon a-Icon icon-user"></span>',
'        <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header" href="#LINK#">',
'      <span class="t-Icon #IMAGE#"></span>',
'      <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>1
,p_error_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>3
,p_grid_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>4070909157481059304
,p_translate_this_template=>'N'
);
end;
/
begin
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(75384826645240626)
,p_page_template_id=>wwv_flow_api.id(75384751178240626)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(75384990183240626)
,p_page_template_id=>wwv_flow_api.id(75384751178240626)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(75385051093240626)
,p_page_template_id=>wwv_flow_api.id(75384751178240626)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(75385194004240626)
,p_page_template_id=>wwv_flow_api.id(75384751178240626)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(75385248877240626)
,p_page_template_id=>wwv_flow_api.id(75384751178240626)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(75385301232240626)
,p_page_template_id=>wwv_flow_api.id(75384751178240626)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(75385455106240626)
,p_page_template_id=>wwv_flow_api.id(75384751178240626)
,p_name=>'Before Navigation Bar'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>false
,p_glv_new_row=>false
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(75385550757240626)
,p_theme_id=>42
,p_name=>'Wizard Modal Dialog'
,p_is_popup=>true
,p_javascript_code_onload=>'apex.theme42.initializePage.wizardModal();'
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'',
'<!--[if lt IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8 lt-ie7" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8]><html class="no-js lt-ie10 lt-ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9]><html class="no-js lt-ie10" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if gt IE 9]><!--> <html class="no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'  <meta charset="utf-8">  ',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>',
'</head>',
'<body class="t-Dialog-page #DIALOG_CSS_CLASSES# #PAGE_CSS_CLASSES#" #ONLOAD#>',
'#FORM_OPEN#'))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Dialog" role="dialog" aria-label="#TITLE#">',
'  <div class="t-Wizard t-Wizard--modal">',
'    <div class=" t-Wizard-steps">',
'      #REGION_POSITION_01#',
'    </div>',
'    <div class="t-Wizard-body">',
'      #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'      #BODY#',
'    </div>',
'    <div class="t-Wizard-footer">',
'      #REGION_POSITION_03#',
'    </div>',
'  </div>',
'</div>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_theme_class_id=>3
,p_error_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>3
,p_grid_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_height=>'480'
,p_dialog_width=>'720'
,p_dialog_max_width=>'960'
,p_dialog_css_classes=>'t-Dialog--wizard'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2120348229686426515
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(75385638416240627)
,p_page_template_id=>wwv_flow_api.id(75385550757240626)
,p_name=>'Wizard Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(75385763994240627)
,p_page_template_id=>wwv_flow_api.id(75385550757240626)
,p_name=>'Wizard Progress Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(75385830617240627)
,p_page_template_id=>wwv_flow_api.id(75385550757240626)
,p_name=>'Wizard Buttons'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/button
begin
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(75416458285240673)
,p_template_name=>'Icon'
,p_template=>'<button class="t-Button t-Button--noLabel t-Button--icon #BUTTON_CSS_CLASSES#" #BUTTON_ATTRIBUTES# onclick="#JAVASCRIPT#" type="button" id="#BUTTON_ID#" title="#LABEL#" aria-label="#LABEL#"><span class="t-Icon #ICON_CSS_CLASSES#" aria-hidden="true"><'
||'/span></button>'
,p_hot_template=>'<button class="t-Button t-Button--noLabel t-Button--icon #BUTTON_CSS_CLASSES# t-Button--hot" #BUTTON_ATTRIBUTES# onclick="#JAVASCRIPT#" type="button" id="#BUTTON_ID#" title="#LABEL#" aria-label="#LABEL#"><span class="t-Icon #ICON_CSS_CLASSES#" aria-h'
||'idden="true"></span></button>'
,p_reference_id=>2347660919680321258
,p_translate_this_template=>'N'
,p_theme_class_id=>5
,p_theme_id=>42
);
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(75416532850240681)
,p_template_name=>'Text'
,p_template=>'<button onclick="#JAVASCRIPT#" class="t-Button #BUTTON_CSS_CLASSES#" type="button" #BUTTON_ATTRIBUTES# id="#BUTTON_ID#"><span class="t-Button-label">#LABEL#</span></button>'
,p_hot_template=>'<button onclick="#JAVASCRIPT#" class="t-Button t-Button--hot #BUTTON_CSS_CLASSES#" type="button" #BUTTON_ATTRIBUTES# id="#BUTTON_ID#"><span class="t-Button-label">#LABEL#</span></button>'
,p_reference_id=>4070916158035059322
,p_translate_this_template=>'N'
,p_theme_class_id=>1
,p_theme_id=>42
);
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(75416692676240682)
,p_template_name=>'Text with Icon'
,p_template=>'<button class="t-Button t-Button--icon #BUTTON_CSS_CLASSES#" #BUTTON_ATTRIBUTES# onclick="#JAVASCRIPT#" type="button" id="#BUTTON_ID#"><span class="t-Icon t-Icon--left #ICON_CSS_CLASSES#" aria-hidden="true"></span><span class="t-Button-label">#LABEL#'
||'</span><span class="t-Icon t-Icon--right #ICON_CSS_CLASSES#" aria-hidden="true"></span></button>'
,p_hot_template=>'<button class="t-Button t-Button--icon #BUTTON_CSS_CLASSES# t-Button--hot" #BUTTON_ATTRIBUTES# onclick="#JAVASCRIPT#" type="button" id="#BUTTON_ID#"><span class="t-Icon t-Icon--left #ICON_CSS_CLASSES#" aria-hidden="true"></span><span class="t-Button-'
||'label">#LABEL#</span><span class="t-Icon t-Icon--right #ICON_CSS_CLASSES#" aria-hidden="true"></span></button>'
,p_reference_id=>2081382742158699622
,p_translate_this_template=>'N'
,p_theme_class_id=>4
,p_preset_template_options=>'t-Button--iconRight'
,p_theme_id=>42
);
end;
/
prompt --application/shared_components/user_interface/templates/region
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(75385961384240627)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Alert #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# role="group" aria-labelledby="#REGION_STATIC_ID#_heading">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon #ICON_CSS_CLASSES#"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-header">',
'        <h2 class="t-Alert-title" id="#REGION_STATIC_ID#_heading">#TITLE#</h2>',
'      </div>',
'      <div class="t-Alert-body">',
'        #BODY#',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">#PREVIOUS##CLOSE##CREATE##NEXT#</div>',
'  </div>',
'</div>'))
,p_page_plug_template_name=>'Alert'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>42
,p_theme_class_id=>21
,p_preset_template_options=>'t-Alert--horizontal:t-Alert--defaultIcons:t-Alert--warning'
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2039236646100190748
,p_translate_this_template=>'N'
,p_template_comment=>'Red Theme'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(75386046630240633)
,p_plug_template_id=>wwv_flow_api.id(75385961384240627)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(75387412883240636)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# class="#REGION_CSS_CLASSES#"> ',
'#PREVIOUS##BODY##SUB_REGIONS##NEXT#',
'</div>'))
,p_page_plug_template_name=>'Blank with Attributes'
,p_theme_id=>42
,p_theme_class_id=>7
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>4499993862448380551
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(75387532005240636)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-ButtonRegion t-Form--floatLeft #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# role="group" aria-labelledby="#REGION_STATIC_ID#_heading">',
'  <div class="t-ButtonRegion-wrap">',
'    <div class="t-ButtonRegion-col t-ButtonRegion-col--left"><div class="t-ButtonRegion-buttons">#PREVIOUS##DELETE##CLOSE#</div></div>',
'    <div class="t-ButtonRegion-col t-ButtonRegion-col--content">',
'      <h2 class="t-ButtonRegion-title" id="#REGION_STATIC_ID#_heading">#TITLE#</h2>',
'      #BODY#',
'      <div class="t-ButtonRegion-buttons">#CHANGE#</div>',
'    </div>',
'    <div class="t-ButtonRegion-col t-ButtonRegion-col--right"><div class="t-ButtonRegion-buttons">#EDIT##CREATE##NEXT#</div></div>',
'  </div>',
'</div>'))
,p_page_plug_template_name=>'Buttons Container'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>42
,p_theme_class_id=>17
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2124982336649579661
,p_translate_this_template=>'N'
,p_template_comment=>'Red Theme'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(75387673527240636)
,p_plug_template_id=>wwv_flow_api.id(75387532005240636)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(75387710964240636)
,p_plug_template_id=>wwv_flow_api.id(75387532005240636)
,p_name=>'Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(75388473025240638)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Region t-Region--carousel #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# role="group" aria-labelledby="#REGION_STATIC_ID#_heading">',
' <div class="t-Region-header">',
'  <div class="t-Region-headerItems t-Region-headerItems--title">',
'    <h2 class="t-Region-title" id="#REGION_STATIC_ID#_heading">#TITLE#</h2>',
'  </div>',
'  <div class="t-Region-headerItems t-Region-headerItems--buttons">#COPY##EDIT#<span class="js-maximizeButtonContainer"></span></div>',
' </div>',
' <div class="t-Region-bodyWrap">',
'   <div class="t-Region-buttons t-Region-buttons--top">',
'    <div class="t-Region-buttons-left">#PREVIOUS#</div>',
'    <div class="t-Region-buttons-right">#NEXT#</div>',
'   </div>',
'   <div class="t-Region-body">',
'     #BODY#',
'   <div class="t-Region-carouselRegions">',
'     #SUB_REGIONS#',
'   </div>',
'   </div>',
'   <div class="t-Region-buttons t-Region-buttons--bottom">',
'    <div class="t-Region-buttons-left">#CLOSE##HELP#</div>',
'    <div class="t-Region-buttons-right">#DELETE##CHANGE##CREATE#</div>',
'   </div>',
' </div>',
'</div>'))
,p_sub_plug_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div data-label="#SUB_REGION_TITLE#" id="SR_#SUB_REGION_ID#">',
'  #SUB_REGION#',
'</div>'))
,p_page_plug_template_name=>'Carousel Container'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>42
,p_theme_class_id=>5
,p_default_template_options=>'t-Region--showCarouselControls'
,p_preset_template_options=>'t-Region--hiddenOverflow'
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2865840475322558786
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(75388530963240638)
,p_plug_template_id=>wwv_flow_api.id(75388473025240638)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(75388630027240638)
,p_plug_template_id=>wwv_flow_api.id(75388473025240638)
,p_name=>'Slides'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(75391869888240643)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Region t-Region--hideShow #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
' <div class="t-Region-header">',
'  <div class="t-Region-headerItems  t-Region-headerItems--controls">',
'    <button class="t-Button t-Button--icon t-Button--hideShow" type="button"></button>',
'  </div>',
'  <div class="t-Region-headerItems t-Region-headerItems--title">',
'    <h2 class="t-Region-title">#TITLE#</h2>',
'  </div>',
'  <div class="t-Region-headerItems t-Region-headerItems--buttons">#EDIT#</div>',
' </div>',
' <div class="t-Region-bodyWrap">',
'   <div class="t-Region-buttons t-Region-buttons--top">',
'    <div class="t-Region-buttons-left">#CLOSE#</div>',
'    <div class="t-Region-buttons-right">#CREATE#</div>',
'   </div>',
'   <div class="t-Region-body">',
'     #COPY#',
'     #BODY#',
'     #SUB_REGIONS#',
'     #CHANGE#',
'   </div>',
'   <div class="t-Region-buttons t-Region-buttons--bottom">',
'    <div class="t-Region-buttons-left">#PREVIOUS#</div>',
'    <div class="t-Region-buttons-right">#NEXT#</div>',
'   </div>',
' </div>',
'</div>'))
,p_page_plug_template_name=>'Collapsible'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>42
,p_theme_class_id=>1
,p_preset_template_options=>'is-expanded:t-Region--scrollBody'
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2662888092628347716
,p_translate_this_template=>'N'
,p_template_comment=>'Red Theme'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(75391965829240643)
,p_plug_template_id=>wwv_flow_api.id(75391869888240643)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(75392004453240643)
,p_plug_template_id=>wwv_flow_api.id(75391869888240643)
,p_name=>'Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(75393991197240644)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-HeroRegion #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="t-HeroRegion-wrap">',
'    <div class="t-HeroRegion-col t-HeroRegion-col--left"><span class="t-HeroRegion-icon t-Icon #ICON_CSS_CLASSES#"></span></div>',
'    <div class="t-HeroRegion-col t-HeroRegion-col--content">',
'      <h2 class="t-HeroRegion-title">#TITLE#</h2>',
'      #BODY#',
'    </div>',
'    <div class="t-HeroRegion-col t-HeroRegion-col--right"><div class="t-HeroRegion-form">#SUB_REGIONS#</div><div class="t-HeroRegion-buttons">#NEXT#</div></div>',
'  </div>',
'</div>'))
,p_page_plug_template_name=>'Hero'
,p_theme_id=>42
,p_theme_class_id=>22
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2672571031438297268
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(75394015491240644)
,p_plug_template_id=>wwv_flow_api.id(75393991197240644)
,p_name=>'Region Body'
,p_placeholder=>'#BODY#'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(75394183138240644)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#_parent">',
'<div id="#REGION_STATIC_ID#"  class="t-DialogRegion #REGION_CSS_CLASSES# js-regionDialog" #REGION_ATTRIBUTES# style="display:none" title="#TITLE#">',
'  <div class="t-DialogRegion-body js-regionDialog-body">',
'#BODY#',
'  </div>',
'  <div class="t-DialogRegion-buttons js-regionDialog-buttons">',
'     <div class="t-ButtonRegion t-ButtonRegion--dialogRegion">',
'       <div class="t-ButtonRegion-wrap">',
'         <div class="t-ButtonRegion-col t-ButtonRegion-col--left"><div class="t-ButtonRegion-buttons">#PREVIOUS##DELETE##CLOSE#</div></div>',
'         <div class="t-ButtonRegion-col t-ButtonRegion-col--right"><div class="t-ButtonRegion-buttons">#EDIT##CREATE##NEXT#</div></div>',
'       </div>',
'     </div>',
'  </div>',
'</div>',
'</div>'))
,p_page_plug_template_name=>'Inline Dialog'
,p_theme_id=>42
,p_theme_class_id=>24
,p_default_template_options=>'js-modal:js-draggable:js-resizable'
,p_preset_template_options=>'js-dialog-size600x400'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2671226943886536762
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(75394287706240644)
,p_plug_template_id=>wwv_flow_api.id(75394183138240644)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(75395053270240645)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# class="t-IRR-region #REGION_CSS_CLASSES#" role="group" aria-labelledby="#REGION_STATIC_ID#_heading">',
'  <h2 class="u-VisuallyHidden" id="#REGION_STATIC_ID#_heading">#TITLE#</h2>',
'#PREVIOUS##BODY##SUB_REGIONS##NEXT#',
'</div>'))
,p_page_plug_template_name=>'Interactive Report'
,p_theme_id=>42
,p_theme_class_id=>9
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2099079838218790610
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(75395367297240645)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Login-region t-Form--stretchInputs t-Form--labelsAbove #REGION_CSS_CLASSES#" id="#REGION_ID#" #REGION_ATTRIBUTES# role="group" aria-labelledby="#REGION_STATIC_ID#_heading">',
'  <div class="t-Login-header">',
'    <span class="t-Login-logo #ICON_CSS_CLASSES#"></span>',
'    <h1 class="t-Login-title" id="#REGION_STATIC_ID#_heading">#TITLE#</h1>',
'  </div>',
'  <div class="t-Login-body">',
'    #BODY#',
'  </div>',
'  <div class="t-Login-buttons">',
'    #NEXT#',
'  </div>',
'  <div class="t-Login-links">',
'    #EDIT##CREATE#',
'  </div>',
'  #SUB_REGIONS#',
'</div>'))
,p_page_plug_template_name=>'Login'
,p_theme_id=>42
,p_theme_class_id=>23
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2672711194551076376
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(75395434682240645)
,p_plug_template_id=>wwv_flow_api.id(75395367297240645)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(75395504608240645)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Region #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# role="group" aria-labelledby="#REGION_STATIC_ID#_heading">',
' <div class="t-Region-header">',
'  <div class="t-Region-headerItems t-Region-headerItems--title">',
'    <h2 class="t-Region-title" id="#REGION_STATIC_ID#_heading">#TITLE#</h2>',
'  </div>',
'  <div class="t-Region-headerItems t-Region-headerItems--buttons">#COPY##EDIT#<span class="js-maximizeButtonContainer"></span></div>',
' </div>',
' <div class="t-Region-bodyWrap">',
'   <div class="t-Region-buttons t-Region-buttons--top">',
'    <div class="t-Region-buttons-left">#PREVIOUS#</div>',
'    <div class="t-Region-buttons-right">#NEXT#</div>',
'   </div>',
'   <div class="t-Region-body">',
'     #BODY#',
'     #SUB_REGIONS#',
'   </div>',
'   <div class="t-Region-buttons t-Region-buttons--bottom">',
'    <div class="t-Region-buttons-left">#CLOSE##HELP#</div>',
'    <div class="t-Region-buttons-right">#DELETE##CHANGE##CREATE#</div>',
'   </div>',
' </div>',
'</div>',
''))
,p_page_plug_template_name=>'Standard'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>42
,p_theme_class_id=>8
,p_preset_template_options=>'t-Region--scrollBody'
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>4070912133526059312
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(75395678808240645)
,p_plug_template_id=>wwv_flow_api.id(75395504608240645)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(75395778936240645)
,p_plug_template_id=>wwv_flow_api.id(75395504608240645)
,p_name=>'Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(75397628365240646)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-TabsRegion #REGION_CSS_CLASSES#" #REGION_ATTRIBUTES# id="#REGION_STATIC_ID#">',
'  #BODY#',
'  <div class="t-TabsRegion-items">',
'    #SUB_REGIONS#',
'  </div>',
'</div>'))
,p_sub_plug_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div data-label="#SUB_REGION_TITLE#" id="SR_#SUB_REGION_ID#">',
'  #SUB_REGION#',
'</div>'))
,p_page_plug_template_name=>'Tabs Container'
,p_theme_id=>42
,p_theme_class_id=>5
,p_preset_template_options=>'t-TabsRegion-mod--simple'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>3221725015618492759
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(75397791897240646)
,p_plug_template_id=>wwv_flow_api.id(75397628365240646)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(75397822810240646)
,p_plug_template_id=>wwv_flow_api.id(75397628365240646)
,p_name=>'Tabs'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(75398856625240647)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# class="t-BreadcrumbRegion #REGION_CSS_CLASSES#"> ',
'  <div class="t-BreadcrumbRegion-body">',
'    <div class="t-BreadcrumbRegion-breadcrumb">',
'      #BODY#',
'    </div>',
'    <div class="t-BreadcrumbRegion-title">',
'      <h1 class="t-BreadcrumbRegion-titleText">#TITLE#</h1>',
'    </div>',
'  </div>',
'  <div class="t-BreadcrumbRegion-buttons">#PREVIOUS##CLOSE##DELETE##HELP##CHANGE##EDIT##COPY##CREATE##NEXT#</div>',
'</div>'))
,p_page_plug_template_name=>'Title Bar'
,p_theme_id=>42
,p_theme_class_id=>6
,p_default_template_options=>'t-BreadcrumbRegion--showBreadcrumb'
,p_preset_template_options=>'t-BreadcrumbRegion--useBreadcrumbTitle'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2530016523834132090
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(75399317850240647)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Wizard #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="t-Wizard-header">',
'    <h1 class="t-Wizard-title">#TITLE#</h1>',
'    <div class="u-Table t-Wizard-controls">',
'      <div class="u-Table-fit t-Wizard-buttons">#PREVIOUS##CLOSE#</div>',
'      <div class="u-Table-fill t-Wizard-steps">',
'        #BODY#',
'      </div>',
'      <div class="u-Table-fit t-Wizard-buttons">#NEXT#</div>',
'    </div>',
'  </div>',
'  <div class="t-Wizard-body">',
'    #SUB_REGIONS#',
'  </div>',
'</div>'))
,p_page_plug_template_name=>'Wizard Container'
,p_theme_id=>42
,p_theme_class_id=>8
,p_preset_template_options=>'t-Wizard--hideStepsXSmall'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2117602213152591491
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(75399467829240647)
,p_plug_template_id=>wwv_flow_api.id(75399317850240647)
,p_name=>'Wizard Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/list
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(75407792759240662)
,p_list_template_current=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-BadgeList-item #A02#">',
'  <span class="t-BadgeList-label">#TEXT#</span>',
'  <span class="t-BadgeList-value"><a href="#LINK#" #A03#>#A01#</a></span>',
'</li>',
''))
,p_list_template_noncurrent=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-BadgeList-item #A02#">',
'  <span class="t-BadgeList-label">#TEXT#</span>',
'  <span class="t-BadgeList-value"><a href="#LINK#" #A03#>#A01#</a></span>',
'</li>',
''))
,p_list_template_name=>'Badge List'
,p_theme_id=>42
,p_theme_class_id=>3
,p_default_template_options=>'t-BadgeList--responsive'
,p_preset_template_options=>'t-BadgeList--large:t-BadgeList--fixed'
,p_list_template_before_rows=>'<ul class="t-BadgeList t-BadgeList--circular #COMPONENT_CSS_CLASSES#">'
,p_list_template_after_rows=>'</ul>'
,p_a01_label=>'Value'
,p_a02_label=>'List item CSS Classes'
,p_a03_label=>'Link Attributes'
,p_reference_id=>2062482847268086664
,p_list_template_comment=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'A01: Large Number',
'A02: List Item Classes',
'A03: Link Attributes'))
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(75409413387240666)
,p_list_template_current=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-Cards-item #A04#">',
'  <div class="t-Card">',
'    <a href="#LINK#" class="t-Card-wrap">',
'      <div class="t-Card-icon"><span class="t-Icon #ICON_CSS_CLASSES#"><span class="t-Card-initials" role="presentation">#A03#</span></span></div>',
'      <div class="t-Card-titleWrap"><h3 class="t-Card-title">#TEXT#</h3></div>',
'      <div class="t-Card-body">',
'        <div class="t-Card-desc">#A01#</div>',
'        <div class="t-Card-info">#A02#</div>',
'      </div>',
'    </a>',
'  </div>',
'</li>'))
,p_list_template_noncurrent=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-Cards-item #A04#">',
'  <div class="t-Card">',
'    <a href="#LINK#" class="t-Card-wrap">',
'      <div class="t-Card-icon"><span class="t-Icon #ICON_CSS_CLASSES#"><span class="t-Card-initials" role="presentation">#A03#</span></span></div>',
'      <div class="t-Card-titleWrap"><h3 class="t-Card-title">#TEXT#</h3></div>',
'      <div class="t-Card-body">',
'        <div class="t-Card-desc">#A01#</div>',
'        <div class="t-Card-info">#A02#</div>',
'      </div>',
'    </a>',
'  </div>',
'</li>'))
,p_list_template_name=>'Cards'
,p_theme_id=>42
,p_theme_class_id=>4
,p_preset_template_options=>'t-Cards--3cols:t-Cards--featured'
,p_list_template_before_rows=>'<ul class="t-Cards #COMPONENT_CSS_CLASSES#">'
,p_list_template_after_rows=>'</ul>'
,p_a01_label=>'Description'
,p_a02_label=>'Secondary Information'
,p_a03_label=>'Initials'
,p_a04_label=>'List Item CSS Classes'
,p_reference_id=>2885322685880632508
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(75411574985240668)
,p_list_template_current=>'<li class="t-LinksList-item is-current #A03#"><a href="#LINK#" class="t-LinksList-link" #A02#><span class="t-LinksList-icon"><span class="t-Icon #ICON_CSS_CLASSES#"></span></span><span class="t-LinksList-label">#TEXT#</span><span class="t-LinksList-b'
||'adge">#A01#</span></a></li>'
,p_list_template_noncurrent=>'<li class="t-LinksList-item #A03#"><a href="#LINK#" class="t-LinksList-link" #A02#><span class="t-LinksList-icon"><span class="t-Icon #ICON_CSS_CLASSES#"></span></span><span class="t-LinksList-label">#TEXT#</span><span class="t-LinksList-badge">#A01#'
||'</span></a></li>'
,p_list_template_name=>'Links List'
,p_theme_id=>42
,p_theme_class_id=>18
,p_list_template_before_rows=>'<ul class="t-LinksList #COMPONENT_CSS_CLASSES#" id="#LIST_ID#">'
,p_list_template_after_rows=>'</ul>'
,p_before_sub_list=>'<ul class="t-LinksList-list">'
,p_after_sub_list=>'</ul>'
,p_sub_list_item_current=>'<li class="t-LinksList-item is-current #A03#"><a href="#LINK#" class="t-LinksList-link" #A02#><span class="t-LinksList-icon"><span class="t-Icon #ICON_CSS_CLASSES#"></span></span><span class="t-LinksList-label">#TEXT#</span><span class="t-LinksList-b'
||'adge">#A01#</span></a></li>'
,p_sub_list_item_noncurrent=>'<li class="t-LinksList-item#A03#"><a href="#LINK#" class="t-LinksList-link" #A02#><span class="t-LinksList-icon"><span class="t-Icon #ICON_CSS_CLASSES#"></span></span><span class="t-LinksList-label">#TEXT#</span><span class="t-LinksList-badge">#A01#<'
||'/span></a></li>'
,p_item_templ_curr_w_child=>'<li class="t-LinksList-item is-current is-expanded #A03#"><a href="#LINK#" class="t-LinksList-link" #A02#><span class="t-LinksList-icon"><span class="t-Icon #ICON_CSS_CLASSES#"></span></span><span class="t-LinksList-label">#TEXT#</span><span class="t'
||'-LinksList-badge">#A01#</span></a>#SUB_LISTS#</li>'
,p_item_templ_noncurr_w_child=>'<li class="t-LinksList-item #A03#"><a href="#LINK#" class="t-LinksList-link" #A02#><span class="t-LinksList-icon"><span class="t-Icon #ICON_CSS_CLASSES#"></span></span><span class="t-LinksList-label">#TEXT#</span><span class="t-LinksList-badge">#A01#'
||'</span></a></li>'
,p_a01_label=>'Badge Value'
,p_a02_label=>'Link Attributes'
,p_a03_label=>'List Item CSS Classes'
,p_reference_id=>4070914341144059318
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(75412398146240668)
,p_list_template_current=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-MediaList-item is-active #A04#">',
'    <a href="#LINK#" class="t-MediaList-itemWrap" #A03#>',
'        <div class="t-MediaList-iconWrap">',
'            <span class="t-MediaList-icon"><span class="t-Icon #ICON_CSS_CLASSES#" #IMAGE_ATTR#></span></span>',
'        </div>',
'        <div class="t-MediaList-body">',
'            <h3 class="t-MediaList-title">#TEXT#</h3>',
'            <p class="t-MediaList-desc">#A01#</p>',
'        </div>',
'        <div class="t-MediaList-badgeWrap">',
'            <span class="t-MediaList-badge">#A02#</span>',
'        </div>',
'    </a>',
'</li>'))
,p_list_template_noncurrent=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-MediaList-item  #A04#">',
'    <a href="#LINK#" class="t-MediaList-itemWrap" #A03#>',
'        <div class="t-MediaList-iconWrap">',
'            <span class="t-MediaList-icon"><span class="t-Icon #ICON_CSS_CLASSES#" #IMAGE_ATTR#></span></span>',
'        </div>',
'        <div class="t-MediaList-body">',
'            <h3 class="t-MediaList-title">#TEXT#</h3>',
'            <p class="t-MediaList-desc">#A01#</p>',
'        </div>',
'        <div class="t-MediaList-badgeWrap">',
'            <span class="t-MediaList-badge">#A02#</span>',
'        </div>',
'    </a>',
'</li>'))
,p_list_template_name=>'Media List'
,p_theme_id=>42
,p_theme_class_id=>5
,p_default_template_options=>'t-MediaList--showDesc:t-MediaList--showIcons'
,p_list_template_before_rows=>'<ul class="t-MediaList #COMPONENT_CSS_CLASSES#">'
,p_list_template_after_rows=>'</ul>'
,p_a01_label=>'Description'
,p_a02_label=>'Badge Value'
,p_a03_label=>'Link Attributes'
,p_a04_label=>'List Item CSS Classes'
,p_reference_id=>2066548068783481421
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(75413209292240669)
,p_list_template_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_list_template_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_list_template_name=>'Menu Bar'
,p_javascript_code_onload=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'var e = apex.jQuery("##PARENT_STATIC_ID#_menubar", apex.gPageContext$);',
'if (e.hasClass("js-addActions")) {',
'  if ( apex.actions ) {',
'    apex.actions.addFromMarkup( e );',
'  } else {',
'    apex.debug.warn("Include actions.js to support menu shortcuts");',
'  }',
'}',
'e.menu({',
'  behaveLikeTabs: e.hasClass("js-tabLike"),',
'  menubarShowSubMenuIcon: e.hasClass("js-showSubMenuIcons") || null,',
'  iconType: ''fa'',',
'  slide: e.hasClass("js-slide"),',
'  menubar: true,',
'  menubarOverflow: true',
'});'))
,p_theme_id=>42
,p_theme_class_id=>20
,p_default_template_options=>'js-showSubMenuIcons'
,p_list_template_before_rows=>'<div class="t-MenuBar #COMPONENT_CSS_CLASSES#" id="#PARENT_STATIC_ID#_menubar"><ul style="display:none">'
,p_list_template_after_rows=>'</ul></div>'
,p_before_sub_list=>'<ul>'
,p_after_sub_list=>'</ul></li>'
,p_sub_list_item_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_sub_list_item_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_item_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_item_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_reference_id=>2008709236185638887
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(75413766348240669)
,p_list_template_current=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>',
''))
,p_list_template_noncurrent=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>',
''))
,p_list_template_name=>'Menu Popup'
,p_javascript_code_onload=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'var e = apex.jQuery("##PARENT_STATIC_ID#_menu", apex.gPageContext$);',
'if (e.hasClass("js-addActions")) {',
'  if ( apex.actions ) {',
'    apex.actions.addFromMarkup( e );',
'  } else {',
'    apex.debug.warn("Include actions.js to support menu shortcuts");',
'  }',
'}',
'e.menu({ slide: e.hasClass("js-slide")});',
''))
,p_theme_id=>42
,p_theme_class_id=>20
,p_list_template_before_rows=>'<div id="#PARENT_STATIC_ID#_menu" class="#COMPONENT_CSS_CLASSES#" style="display:none;"><ul>'
,p_list_template_after_rows=>'</ul></div>'
,p_before_sub_list=>'<ul>'
,p_after_sub_list=>'</ul></li>'
,p_sub_list_item_current=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_sub_list_item_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_item_templ_curr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_item_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_curr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_a01_label=>'Data ID'
,p_a02_label=>'Disabled (True/False)'
,p_a03_label=>'Hidden (True/False)'
,p_a04_label=>'Title Attribute'
,p_a05_label=>'Shortcut'
,p_reference_id=>3492264004432431646
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(75413883218240669)
,p_list_template_current=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item is-active #A02#">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#" role="button">',
'      <span class="t-Icon #ICON_CSS_CLASSES#"></span><span class="t-Button-label">#TEXT_ESC_SC#</span><span class="t-Button-badge">#A01#</span>',
'  </a>',
'</li>'))
,p_list_template_noncurrent=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item #A02#">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#" role="button">',
'    <span class="t-Icon #ICON_CSS_CLASSES#"></span><span class="t-Button-label">#TEXT_ESC_SC#</span><span class="t-Button-badge">#A01#</span>',
'  </a>',
'</li>'))
,p_list_template_name=>'Navigation Bar'
,p_theme_id=>42
,p_theme_class_id=>20
,p_list_template_before_rows=>'<ul class="t-NavigationBar #COMPONENT_CSS_CLASSES#" id="#LIST_ID#">'
,p_list_template_after_rows=>'</ul>'
,p_before_sub_list=>'<div class="t-NavigationBar-menu" style="display: none" id="menu_#PARENT_LIST_ITEM_ID#"><ul>'
,p_after_sub_list=>'</ul></div></li>'
,p_sub_list_item_current=>'<li data-current="true" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#">#TEXT_ESC_SC#</a></li>'
,p_sub_list_item_noncurrent=>'<li data-current="false" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#">#TEXT_ESC_SC#</a></li>'
,p_item_templ_curr_w_child=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item is-active #A02#">',
'  <button class="t-Button t-Button--icon t-Button t-Button--header t-Button--navBar js-menuButton" type="button" id="#LIST_ITEM_ID#" data-menu="menu_#LIST_ITEM_ID#">',
'      <span class="t-Icon #ICON_CSS_CLASSES#"></span><span class="t-Button-label">#TEXT_ESC_SC#</span><span class="t-Button-badge">#A01#</span><span class="a-Icon icon-down-arrow"></span>',
'  </button>'))
,p_item_templ_noncurr_w_child=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item #A02#">',
'  <button class="t-Button t-Button--icon t-Button t-Button--header t-Button--navBar js-menuButton" type="button" id="#LIST_ITEM_ID#" data-menu="menu_#LIST_ITEM_ID#">',
'      <span class="t-Icon #ICON_CSS_CLASSES#"></span><span class="t-Button-label">#TEXT_ESC_SC#</span><span class="t-Button-badge">#A01#</span><span class="a-Icon icon-down-arrow"></span>',
'  </button>'))
,p_sub_templ_curr_w_child=>'<li data-current="true" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#">#TEXT_ESC_SC#</a></li>'
,p_sub_templ_noncurr_w_child=>'<li data-current="false" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#">#TEXT_ESC_SC#</a></li>'
,p_a01_label=>'Badge Value'
,p_a02_label=>'List  Item CSS Classes'
,p_reference_id=>2846096252961119197
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(75413949609240669)
,p_list_template_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_list_template_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_list_template_name=>'Side Navigation Menu'
,p_javascript_file_urls=>'#IMAGE_PREFIX#libraries/apex/#MIN_DIRECTORY#widget.treeView#MIN#.js?v=#APEX_VERSION#'
,p_javascript_code_onload=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'$(''body'').addClass(''t-PageBody--leftNav'');',
''))
,p_theme_id=>42
,p_theme_class_id=>19
,p_list_template_before_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-nav" id="t_Body_nav" role="navigation" aria-label="&APP_TITLE!ATTR.">',
'<div class="t-TreeNav #COMPONENT_CSS_CLASSES#" id="t_TreeNav" data-id="#PARENT_STATIC_ID#_tree" aria-label="&APP_TITLE!ATTR."><ul style="display:none">'))
,p_list_template_after_rows=>'</ul></div></div>'
,p_before_sub_list=>'<ul>'
,p_after_sub_list=>'</ul></li>'
,p_sub_list_item_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_sub_list_item_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_item_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_item_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_a01_label=>'ID Attribute'
,p_a02_label=>'Disabled True/False'
,p_a04_label=>'Title'
,p_reference_id=>2466292414354694776
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(75414017490240670)
,p_list_template_current=>'<li class="t-Tabs-item is-active"><a href="#LINK#" class="t-Tabs-link"><span class="t-Icon #ICON_CSS_CLASSES#"></span><span class="t-Tabs-label">#TEXT#</span></a></li>'
,p_list_template_noncurrent=>'<li class="t-Tabs-item"><a href="#LINK#" class="t-Tabs-link"><span class="t-Icon #ICON_CSS_CLASSES#"></span><span class="t-Tabs-label">#TEXT#</span></a></li>'
,p_list_template_name=>'Tabs'
,p_theme_id=>42
,p_theme_class_id=>7
,p_list_template_before_rows=>'<ul class="t-Tabs #COMPONENT_CSS_CLASSES#">'
,p_list_template_after_rows=>'</ul>'
,p_reference_id=>3288206686691809997
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(75414919455240670)
,p_list_template_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_list_template_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_list_template_name=>'Top Navigation Menu'
,p_javascript_code_onload=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'var e = apex.jQuery("##PARENT_STATIC_ID#_menubar", apex.gPageContext$);',
'if (e.hasClass("js-addActions")) {',
'  if ( apex.actions ) {',
'    apex.actions.addFromMarkup( e );',
'  } else {',
'    apex.debug.warn("Include actions.js to support menu shortcuts");',
'  }',
'}',
'e.menu({',
'  behaveLikeTabs: e.hasClass("js-tabLike"),',
'  menubarShowSubMenuIcon: e.hasClass("js-showSubMenuIcons") || null,',
'  slide: e.hasClass("js-slide"),',
'  menubar: true,',
'  menubarOverflow: true',
'});'))
,p_theme_id=>42
,p_theme_class_id=>20
,p_default_template_options=>'js-tabLike'
,p_list_template_before_rows=>'<div class="t-Header-nav-list #COMPONENT_CSS_CLASSES#" id="#PARENT_STATIC_ID#_menubar"><ul style="display:none">'
,p_list_template_after_rows=>'</ul></div>'
,p_before_sub_list=>'<ul>'
,p_after_sub_list=>'</ul></li>'
,p_sub_list_item_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_sub_list_item_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_item_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_item_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_a01_label=>'ID Attribute'
,p_a02_label=>'Disabled True / False'
,p_a03_label=>'Hide'
,p_a04_label=>'Title Attribute'
,p_a05_label=>'Shortcut Key'
,p_reference_id=>2525307901300239072
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(75415451841240671)
,p_list_template_current=>'<li class="t-WizardSteps-step is-active" id="#LIST_ITEM_ID#"><div class="t-WizardSteps-wrap"><span class="t-WizardSteps-marker"></span><span class="t-WizardSteps-label">#TEXT# <span class="t-WizardSteps-labelState"></span></span></div></li>'
,p_list_template_noncurrent=>'<li class="t-WizardSteps-step" id="#LIST_ITEM_ID#"><div class="t-WizardSteps-wrap"><span class="t-WizardSteps-marker"><span class="t-Icon a-Icon icon-check"></span></span><span class="t-WizardSteps-label">#TEXT# <span class="t-WizardSteps-labelState"'
||'></span></span></div></li>'
,p_list_template_name=>'Wizard Progress'
,p_javascript_code_onload=>'apex.theme.initWizardProgressBar();'
,p_theme_id=>42
,p_theme_class_id=>17
,p_preset_template_options=>'t-WizardSteps--displayLabels'
,p_list_template_before_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<h2 class="u-VisuallyHidden">#CURRENT_PROGRESS#</h2>',
'<ul class="t-WizardSteps #COMPONENT_CSS_CLASSES#" id="#LIST_ID#">'))
,p_list_template_after_rows=>'</ul>'
,p_reference_id=>2008702338707394488
);
end;
/
prompt --application/shared_components/user_interface/templates/report
begin
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(75399905772240652)
,p_row_template_name=>'Alerts'
,p_row_template1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--horizontal t-Alert--colorBG t-Alert--defaultIcons t-Alert--#ALERT_TYPE#" role="alert">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-header">',
'        <h2 class="t-Alert-title">#ALERT_TITLE#</h2>',
'      </div>',
'      <div class="t-Alert-body">',
'        #ALERT_DESC#',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      #ALERT_ACTION#',
'    </div>',
'  </div>',
'</div>'))
,p_row_template_before_rows=>'<div class="t-Alerts">'
,p_row_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</div>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>14
,p_reference_id=>2881456138952347027
,p_translate_this_template=>'N'
);
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(75400099607240653)
,p_row_template_name=>'Badge List'
,p_row_template1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-BadgeList-item">',
'  <span class="t-BadgeList-label">#COLUMN_HEADER#</span>',
'  <span class="t-BadgeList-value">#COLUMN_VALUE#</span>',
'</li>'))
,p_row_template_before_rows=>'<ul class="t-BadgeList t-BadgeList--circular #COMPONENT_CSS_CLASSES#">'
,p_row_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</ul>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'GENERIC_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>6
,p_default_template_options=>'t-BadgeList--responsive'
,p_preset_template_options=>'t-BadgeList--large:t-BadgeList--fixed'
,p_reference_id=>2103197159775914759
,p_translate_this_template=>'N'
);
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(75401775815240655)
,p_row_template_name=>'Cards'
,p_row_template1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-Cards-item #CARD_MODIFIERS#">',
'  <div class="t-Card">',
'    <a href="#CARD_LINK#" class="t-Card-wrap">',
'      <div class="t-Card-icon"><span class="t-Icon #CARD_ICON#"><span class="t-Card-initials" role="presentation">#CARD_INITIALS#</span></span></div>',
'      <div class="t-Card-titleWrap"><h3 class="t-Card-title">#CARD_TITLE#</h3></div>',
'      <div class="t-Card-body">',
'        <div class="t-Card-desc">#CARD_TEXT#</div>',
'        <div class="t-Card-info">#CARD_SUBTEXT#</div>',
'      </div>',
'    </a>',
'  </div>',
'</li>'))
,p_row_template_before_rows=>'<ul class="t-Cards #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# id="#REGION_STATIC_ID#_cards">'
,p_row_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</ul>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'NOT_CONDITIONAL'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>7
,p_preset_template_options=>'t-Cards--3cols:t-Cards--featured'
,p_reference_id=>2973535649510699732
,p_translate_this_template=>'N'
);
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(75403808213240656)
,p_row_template_name=>'Comments'
,p_row_template1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-Comments-item #COMMENT_MODIFIERS#">',
'    <div class="t-Comments-icon a-MediaBlock-graphic">',
'        <div class="t-Comments-userIcon #ICON_MODIFIER#" aria-hidden="true">#USER_ICON#</div>',
'    </div>',
'    <div class="t-Comments-body a-MediaBlock-content">',
'        <div class="t-Comments-info">',
'            #USER_NAME# &middot; <span class="t-Comments-date">#COMMENT_DATE#</span> <span class="t-Comments-actions">#ACTIONS#</span>',
'        </div>',
'        <div class="t-Comments-comment">',
'            #COMMENT_TEXT##ATTRIBUTE_1##ATTRIBUTE_2##ATTRIBUTE_3##ATTRIBUTE_4#',
'        </div>',
'    </div>',
'</li>'))
,p_row_template_before_rows=>'<ul class="t-Comments #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# id="#REGION_STATIC_ID#_report">'
,p_row_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</ul>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'NOT_CONDITIONAL'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>',
''))
,p_previous_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>7
,p_preset_template_options=>'t-Comments--chat'
,p_reference_id=>2611722012730764232
,p_translate_this_template=>'N'
);
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(75404217571240656)
,p_row_template_name=>'Search Results'
,p_row_template1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'  <li class="t-SearchResults-item">',
'    <h3 class="t-SearchResults-title"><a href="#SEARCH_LINK#">#SEARCH_TITLE#</a></h3>',
'    <div class="t-SearchResults-info">',
'      <p class="t-SearchResults-desc">#SEARCH_DESC#</p>',
'      <span class="t-SearchResults-misc">#LABEL_01#: #VALUE_01#</span>',
'    </div>',
'  </li>'))
,p_row_template_condition1=>':LABEL_02 is null'
,p_row_template2=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'  <li class="t-SearchResults-item">',
'    <h3 class="t-SearchResults-title"><a href="#SEARCH_LINK#">#SEARCH_TITLE#</a></h3>',
'    <div class="t-SearchResults-info">',
'      <p class="t-SearchResults-desc">#SEARCH_DESC#</p>',
'      <span class="t-SearchResults-misc">#LABEL_01#: #VALUE_01#</span>',
'      <span class="t-SearchResults-misc">#LABEL_02#: #VALUE_02#</span>',
'    </div>',
'  </li>'))
,p_row_template_condition2=>':LABEL_03 is null'
,p_row_template3=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'  <li class="t-SearchResults-item">',
'    <h3 class="t-SearchResults-title"><a href="#SEARCH_LINK#">#SEARCH_TITLE#</a></h3>',
'    <div class="t-SearchResults-info">',
'      <p class="t-SearchResults-desc">#SEARCH_DESC#</p>',
'      <span class="t-SearchResults-misc">#LABEL_01#: #VALUE_01#</span>',
'      <span class="t-SearchResults-misc">#LABEL_02#: #VALUE_02#</span>',
'      <span class="t-SearchResults-misc">#LABEL_03#: #VALUE_03#</span>',
'    </div>',
'  </li>'))
,p_row_template_condition3=>':LABEL_04 is null'
,p_row_template4=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'  <li class="t-SearchResults-item">',
'    <h3 class="t-SearchResults-title"><a href="#SEARCH_LINK#">#SEARCH_TITLE#</a></h3>',
'    <div class="t-SearchResults-info">',
'      <p class="t-SearchResults-desc">#SEARCH_DESC#</p>',
'      <span class="t-SearchResults-misc">#LABEL_01#: #VALUE_01#</span>',
'      <span class="t-SearchResults-misc">#LABEL_02#: #VALUE_02#</span>',
'      <span class="t-SearchResults-misc">#LABEL_03#: #VALUE_03#</span>',
'      <span class="t-SearchResults-misc">#LABEL_04#: #VALUE_04#</span>',
'    </div>',
'  </li>'))
,p_row_template_before_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-SearchResults #COMPONENT_CSS_CLASSES#">',
'<ul class="t-SearchResults-list">'))
,p_row_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</ul>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>',
'</div>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'NOT_CONDITIONAL'
,p_row_template_display_cond2=>'NOT_CONDITIONAL'
,p_row_template_display_cond3=>'NOT_CONDITIONAL'
,p_row_template_display_cond4=>'NOT_CONDITIONAL'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>1
,p_reference_id=>4070913431524059316
,p_translate_this_template=>'N'
,p_row_template_comment=>' (SELECT link_text, link_target, detail1, detail2, last_modified)'
);
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(75404382326240657)
,p_row_template_name=>'Standard'
,p_row_template1=>'<td class="t-Report-cell" #ALIGNMENT# headers="#COLUMN_HEADER_NAME#">#COLUMN_VALUE#</td>'
,p_row_template_before_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Report #COMPONENT_CSS_CLASSES#" id="report_#REGION_STATIC_ID#" #REPORT_ATTRIBUTES#>',
'  <div class="t-Report-wrap">',
'    <table class="t-Report-pagination" role="presentation">#TOP_PAGINATION#</table>',
'    <div class="t-Report-tableWrap">',
'    <table class="t-Report-report" summary="#REGION_TITLE#">'))
,p_row_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'      </tbody>',
'    </table>',
'    </div>',
'    <div class="t-Report-links">#EXTERNAL_LINK##CSV_LINK#</div>',
'    <table class="t-Report-pagination t-Report-pagination--bottom" role="presentation">#PAGINATION#</table>',
'  </div>',
'</div>'))
,p_row_template_type=>'GENERIC_COLUMNS'
,p_before_column_heading=>'<thead>'
,p_column_heading_template=>'<th class="t-Report-colHead" #ALIGNMENT# id="#COLUMN_HEADER_NAME#" #COLUMN_WIDTH#>#COLUMN_HEADER#</th>'
,p_after_column_heading=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</thead>',
'<tbody>'))
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>4
,p_preset_template_options=>'t-Report--altRowsDefault:t-Report--rowHighlight'
,p_reference_id=>2537207537838287671
,p_translate_this_template=>'N'
);
begin
wwv_flow_api.create_row_template_patch(
 p_id=>wwv_flow_api.id(75404382326240657)
,p_row_template_before_first=>'<tr>'
,p_row_template_after_last=>'</tr>'
);
exception when others then null;
end;
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(75405663490240657)
,p_row_template_name=>'Timeline'
,p_row_template1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-Timeline-item #EVENT_MODIFIERS#" #EVENT_ATTRIBUTES#>',
'  <div class="t-Timeline-wrap">',
'    <div class="t-Timeline-user">',
'      <div class="t-Timeline-avatar #USER_COLOR#">',
'        #USER_AVATAR#',
'      </div>',
'      <div class="t-Timeline-userinfo">',
'        <span class="t-Timeline-username">#USER_NAME#</span>',
'        <span class="t-Timeline-date">#EVENT_DATE#</span>',
'      </div>',
'    </div>',
'    <div class="t-Timeline-content">',
'      <div class="t-Timeline-typeWrap">',
'        <div class="t-Timeline-type #EVENT_STATUS#">',
'          <span class="t-Icon #EVENT_ICON#"></span>',
'          <span class="t-Timeline-typename">#EVENT_TYPE#</span>',
'        </div>',
'      </div>',
'      <div class="t-Timeline-body">',
'        <h3 class="t-Timeline-title">#EVENT_TITLE#</h3>',
'        <p class="t-Timeline-desc">#EVENT_DESC#</p>',
'      </div>',
'    </div>',
'  </div>',
'</li>'))
,p_row_template_condition1=>':EVENT_LINK is null'
,p_row_template2=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-Timeline-item #EVENT_MODIFIERS#" #EVENT_ATTRIBUTES#>',
'  <a href="#EVENT_LINK#" class="t-Timeline-wrap">',
'    <div class="t-Timeline-user">',
'      <div class="t-Timeline-avatar #USER_COLOR#">',
'        #USER_AVATAR#',
'      </div>',
'      <div class="t-Timeline-userinfo">',
'        <span class="t-Timeline-username">#USER_NAME#</span>',
'        <span class="t-Timeline-date">#EVENT_DATE#</span>',
'      </div>',
'    </div>',
'    <div class="t-Timeline-content">',
'      <div class="t-Timeline-typeWrap">',
'        <div class="t-Timeline-type #EVENT_STATUS#">',
'          <span class="t-Icon #EVENT_ICON#"></span>',
'          <span class="t-Timeline-typename">#EVENT_TYPE#</span>',
'        </div>',
'      </div>',
'      <div class="t-Timeline-body">',
'        <h3 class="t-Timeline-title">#EVENT_TITLE#</h3>',
'        <p class="t-Timeline-desc">#EVENT_DESC#</p>',
'      </div>',
'    </div>',
'  </a>',
'</li>'))
,p_row_template_before_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<ul class="t-Timeline #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# id="#REGION_STATIC_ID#_timeline">',
''))
,p_row_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</ul>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'NOT_CONDITIONAL'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'NOT_CONDITIONAL'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>7
,p_reference_id=>1513373588340069864
,p_translate_this_template=>'N'
);
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(75405827605240658)
,p_row_template_name=>'Value Attribute Pairs - Column'
,p_row_template1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<dt class="t-AVPList-label">',
'  #COLUMN_HEADER#',
'</dt>',
'<dd class="t-AVPList-value">',
'  #COLUMN_VALUE#',
'</dd>'))
,p_row_template_before_rows=>'<dl class="t-AVPList #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES#>'
,p_row_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</dl>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'GENERIC_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>6
,p_preset_template_options=>'t-AVPList--leftAligned'
,p_reference_id=>2099068636272681754
,p_translate_this_template=>'N'
);
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(75406824624240659)
,p_row_template_name=>'Value Attribute Pairs - Row'
,p_row_template1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<dt class="t-AVPList-label">',
'  #1#',
'</dt>',
'<dd class="t-AVPList-value">',
'  #2#',
'</dd>'))
,p_row_template_before_rows=>'<dl class="t-AVPList #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# id="report_#REGION_STATIC_ID#">'
,p_row_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</dl>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>7
,p_preset_template_options=>'t-AVPList--leftAligned'
,p_reference_id=>2099068321678681753
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/label
begin
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(75415983829240671)
,p_template_name=>'Hidden'
,p_template_body1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer t-Form-labelContainer--hiddenLabel col col-#LABEL_COLUMN_SPAN_NUMBER#">',
'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label u-VisuallyHidden">'))
,p_template_body2=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</label>',
'</div>'))
,p_before_item=>'<div class="t-Form-fieldContainer t-Form-fieldContainer--hiddenLabel rel-col #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_before_element=>'<div class="t-Form-inputContainer col col-#ITEM_COLUMN_SPAN_NUMBER#">'
,p_after_element=>'#HELP_TEMPLATE##ERROR_TEMPLATE#</div>'
,p_help_link=>'<button class="t-Button t-Button--noUI t-Button--helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden'
||'="true"></span></button>'
,p_error_template=>'<span class="t-Form-error">#ERROR_MESSAGE#</span>'
,p_theme_id=>42
,p_theme_class_id=>13
,p_reference_id=>2039339104148359505
,p_translate_this_template=>'N'
);
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(75416048727240673)
,p_template_name=>'Optional'
,p_template_body1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer col col-#LABEL_COLUMN_SPAN_NUMBER#">',
'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label">'))
,p_template_body2=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</label>',
'</div>',
''))
,p_before_item=>'<div class="t-Form-fieldContainer rel-col #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_before_element=>'<div class="t-Form-inputContainer col col-#ITEM_COLUMN_SPAN_NUMBER#">'
,p_after_element=>'#HELP_TEMPLATE##ERROR_TEMPLATE#</div>'
,p_help_link=>'<button class="t-Button t-Button--noUI t-Button--helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden'
||'="true"></span></button>'
,p_error_template=>'<span class="t-Form-error">#ERROR_MESSAGE#</span>'
,p_theme_id=>42
,p_theme_class_id=>3
,p_reference_id=>2317154212072806530
,p_translate_this_template=>'N'
);
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(75416103881240673)
,p_template_name=>'Optional - Above'
,p_template_body1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer">',
'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label">'))
,p_template_body2=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</label>#HELP_TEMPLATE#',
'</div>'))
,p_before_item=>'<div class="t-Form-fieldContainer t-Form-fieldContainer--stacked #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_before_element=>'<div class="t-Form-inputContainer">'
,p_after_element=>'#ERROR_TEMPLATE#</div>'
,p_help_link=>'<button class="t-Button t-Button--noUI t-Button--helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden'
||'="true"></span></button>'
,p_error_template=>'<span class="t-Form-error">#ERROR_MESSAGE#</span>'
,p_theme_id=>42
,p_theme_class_id=>3
,p_reference_id=>3030114864004968404
,p_translate_this_template=>'N'
);
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(75416221923240673)
,p_template_name=>'Required'
,p_template_body1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer col col-#LABEL_COLUMN_SPAN_NUMBER#">',
'  <label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label">'))
,p_template_body2=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
' <span class="u-VisuallyHidden">(#VALUE_REQUIRED#)</span></label><span class="t-Form-required"><span class="a-Icon icon-asterisk"></span></span>',
'</div>'))
,p_before_item=>'<div class="t-Form-fieldContainer rel-col #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_before_element=>'<div class="t-Form-inputContainer col col-#ITEM_COLUMN_SPAN_NUMBER#">'
,p_after_element=>'#HELP_TEMPLATE##ERROR_TEMPLATE#</div>'
,p_help_link=>'<button class="t-Button t-Button--noUI t-Button--helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden'
||'="true"></span></button>'
,p_error_template=>'<span class="t-Form-error">#ERROR_MESSAGE#</span>'
,p_theme_id=>42
,p_theme_class_id=>4
,p_reference_id=>2525313812251712801
,p_translate_this_template=>'N'
);
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(75416337774240673)
,p_template_name=>'Required - Above'
,p_template_body1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer">',
'  <label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label">'))
,p_template_body2=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
' <span class="u-VisuallyHidden">(#VALUE_REQUIRED#)</span></label><span class="t-Form-required"><span class="a-Icon icon-asterisk"></span></span> #HELP_TEMPLATE#',
'</div>'))
,p_before_item=>'<div class="t-Form-fieldContainer t-Form-fieldContainer--stacked #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_before_element=>'<div class="t-Form-inputContainer">'
,p_after_element=>'#ERROR_TEMPLATE#</div>'
,p_help_link=>'<button class="t-Button t-Button--noUI t-Button--helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden'
||'="true"></span></button>'
,p_error_template=>'<span class="t-Form-error">#ERROR_MESSAGE#</span>'
,p_theme_id=>42
,p_theme_class_id=>4
,p_reference_id=>3030115129444970113
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/breadcrumb
begin
wwv_flow_api.create_menu_template(
 p_id=>wwv_flow_api.id(75417060731240682)
,p_name=>'Breadcrumb'
,p_before_first=>'<ul class="t-Breadcrumb #COMPONENT_CSS_CLASSES#">'
,p_current_page_option=>'<li class="t-Breadcrumb-item is-active"><span class="t-Breadcrumb-label">#NAME#</span></li>'
,p_non_current_page_option=>'<li class="t-Breadcrumb-item"><a href="#LINK#" class="t-Breadcrumb-label">#NAME#</a></li>'
,p_after_last=>'</ul>'
,p_max_levels=>6
,p_start_with_node=>'PARENT_TO_LEAF'
,p_theme_id=>42
,p_theme_class_id=>1
,p_reference_id=>4070916542570059325
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/popuplov
begin
wwv_flow_api.create_popup_lov_template(
 p_id=>wwv_flow_api.id(75417249641240685)
,p_page_name=>'winlov'
,p_page_title=>'Search Dialog'
,p_page_html_head=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html lang="&BROWSER_LANGUAGE.">',
'<head>',
'<title>#TITLE#</title>',
'#APEX_CSS#',
'#THEME_CSS#',
'#THEME_STYLE_CSS#',
'#FAVICONS#',
'#APEX_JAVASCRIPT#',
'#THEME_JAVASCRIPT#',
'<meta name="viewport" content="width=device-width,initial-scale=1.0" />',
'</head>'))
,p_page_body_attr=>'onload="first_field()" class="t-Page t-Page--popupLOV"'
,p_before_field_text=>'<div class="t-PopupLOV-actions t-Form--large">'
,p_filter_width=>'20'
,p_filter_max_width=>'100'
,p_filter_text_attr=>'class="t-Form-field t-Form-searchField"'
,p_find_button_text=>'Search'
,p_find_button_attr=>'class="t-Button t-Button--hot t-Button--padLeft"'
,p_close_button_text=>'Close'
,p_close_button_attr=>'class="t-Button u-pullRight"'
,p_next_button_text=>'Next &gt;'
,p_next_button_attr=>'class="t-Button t-PopupLOV-button"'
,p_prev_button_text=>'&lt; Previous'
,p_prev_button_attr=>'class="t-Button t-PopupLOV-button"'
,p_after_field_text=>'</div>'
,p_scrollbars=>'1'
,p_resizable=>'1'
,p_width=>'380'
,p_height=>'380'
,p_result_row_x_of_y=>'<div class="t-PopupLOV-pagination">Row(s) #FIRST_ROW# - #LAST_ROW#</div>'
,p_result_rows_per_pg=>100
,p_before_result_set=>'<div class="t-PopupLOV-links">'
,p_theme_id=>42
,p_theme_class_id=>1
,p_reference_id=>2885398517835871876
,p_translate_this_template=>'N'
,p_after_result_set=>'</div>'
);
end;
/
prompt --application/shared_components/user_interface/templates/calendar
begin
wwv_flow_api.create_calendar_template(
 p_id=>wwv_flow_api.id(75417125218240684)
,p_cal_template_name=>'Calendar'
,p_day_of_week_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<th id="#DY#" scope="col" class="t-ClassicCalendar-dayColumn">',
'  <span class="visible-md visible-lg">#IDAY#</span>',
'  <span class="hidden-md hidden-lg">#IDY#</span>',
'</th>'))
,p_month_title_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-ClassicCalendar">',
'<h1 class="t-ClassicCalendar-title">#IMONTH# #YYYY#</h1>'))
,p_month_open_format=>'<table class="t-ClassicCalendar-calendar" cellpadding="0" cellspacing="0" border="0" summary="#IMONTH# #YYYY#">'
,p_month_close_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</table>',
'</div>',
''))
,p_day_title_format=>'<span class="t-ClassicCalendar-date">#DD#</span>'
,p_day_open_format=>'<td class="t-ClassicCalendar-day" headers="#DY#">#TITLE_FORMAT#<div class="t-ClassicCalendar-dayEvents">#DATA#</div>'
,p_day_close_format=>'</td>'
,p_today_open_format=>'<td class="t-ClassicCalendar-day is-today" headers="#DY#">#TITLE_FORMAT#<div class="t-ClassicCalendar-dayEvents">#DATA#</div>'
,p_weekend_title_format=>'<span class="t-ClassicCalendar-date">#DD#</span>'
,p_weekend_open_format=>'<td class="t-ClassicCalendar-day is-weekend" headers="#DY#">#TITLE_FORMAT#<div class="t-ClassicCalendar-dayEvents">#DATA#</div>'
,p_weekend_close_format=>'</td>'
,p_nonday_title_format=>'<span class="t-ClassicCalendar-date">#DD#</span>'
,p_nonday_open_format=>'<td class="t-ClassicCalendar-day is-inactive" headers="#DY#">'
,p_nonday_close_format=>'</td>'
,p_week_open_format=>'<tr>'
,p_week_close_format=>'</tr> '
,p_daily_title_format=>'<table cellspacing="0" cellpadding="0" border="0" summary="" class="t1DayCalendarHolder"> <tr> <td class="t1MonthTitle">#IMONTH# #DD#, #YYYY#</td> </tr> <tr> <td>'
,p_daily_open_format=>'<tr>'
,p_daily_close_format=>'</tr>'
,p_weekly_title_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-ClassicCalendar t-ClassicCalendar--weekly">',
'<h1 class="t-ClassicCalendar-title">#WTITLE#</h1>'))
,p_weekly_day_of_week_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<th scope="col" class="t-ClassicCalendar-dayColumn" id="#DY#">',
'  <span class="visible-md visible-lg">#DD# #IDAY#</span>',
'  <span class="hidden-md hidden-lg">#DD# #IDY#</span>',
'</th>'))
,p_weekly_month_open_format=>'<table border="0" cellpadding="0" cellspacing="0" summary="#CALENDAR_TITLE# #START_DL# - #END_DL#" class="t-ClassicCalendar-calendar">'
,p_weekly_month_close_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</table>',
'</div>'))
,p_weekly_day_open_format=>'<td class="t-ClassicCalendar-day" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_weekly_day_close_format=>'</div></td>'
,p_weekly_today_open_format=>'<td class="t-ClassicCalendar-day is-today" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_weekly_weekend_open_format=>'<td class="t-ClassicCalendar-day is-weekend" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_weekly_weekend_close_format=>'</div></td>'
,p_weekly_time_open_format=>'<th scope="row" class="t-ClassicCalendar-day t-ClassicCalendar-timeCol">'
,p_weekly_time_close_format=>'</th>'
,p_weekly_time_title_format=>'#TIME#'
,p_weekly_hour_open_format=>'<tr>'
,p_weekly_hour_close_format=>'</tr>'
,p_daily_day_of_week_format=>'<th scope="col" id="#DY#" class="t-ClassicCalendar-dayColumn">#IDAY#</th>'
,p_daily_month_title_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-ClassicCalendar t-ClassicCalendar--daily">',
'<h1 class="t-ClassicCalendar-title">#IMONTH# #DD#, #YYYY#</h1>'))
,p_daily_month_open_format=>'<table border="0" cellpadding="0" cellspacing="0" summary="#CALENDAR_TITLE# #START_DL#" class="t-ClassicCalendar-calendar">'
,p_daily_month_close_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</table>',
'</div>'))
,p_daily_day_open_format=>'<td class="t-ClassicCalendar-day" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_daily_day_close_format=>'</div></td>'
,p_daily_today_open_format=>'<td class="t-ClassicCalendar-day is-today" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_daily_time_open_format=>'<th scope="row" class="t-ClassicCalendar-day t-ClassicCalendar-timeCol" id="#TIME#">'
,p_daily_time_close_format=>'</th>'
,p_daily_time_title_format=>'#TIME#'
,p_daily_hour_open_format=>'<tr>'
,p_daily_hour_close_format=>'</tr>'
,p_cust_month_title_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="uCal">',
'<h1 class="uMonth">#IMONTH# <span>#YYYY#</span></h1>'))
,p_cust_day_of_week_format=>'<th scope="col" class="uCalDayCol" id="#DY#">#IDAY#</th>'
,p_cust_month_open_format=>'<table class="uCal" cellpadding="0" cellspacing="0" border="0" summary="#IMONTH# #YYYY#">'
,p_cust_month_close_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</table>',
'<div class="uCalFooter"></div>',
'</div>',
''))
,p_cust_week_open_format=>'<tr>'
,p_cust_week_close_format=>'</tr> '
,p_cust_day_title_format=>'<span class="uDayTitle">#DD#</span>'
,p_cust_day_open_format=>'<td class="uDay" headers="#DY#"><div class="uDayData">'
,p_cust_day_close_format=>'</td>'
,p_cust_today_open_format=>'<td class="uDay today" headers="#DY#">'
,p_cust_nonday_title_format=>'<span class="uDayTitle">#DD#</span>'
,p_cust_nonday_open_format=>'<td class="uDay nonday" headers="#DY#">'
,p_cust_nonday_close_format=>'</td>'
,p_cust_weekend_title_format=>'<span class="uDayTitle weekendday">#DD#</span>'
,p_cust_weekend_open_format=>'<td class="uDay" headers="#DY#">'
,p_cust_weekend_close_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="uDayData">#DATA#</span>',
'</td>'))
,p_cust_hour_open_format=>'<tr>'
,p_cust_hour_close_format=>'</tr>'
,p_cust_time_title_format=>'#TIME#'
,p_cust_time_open_format=>'<th scope="row" class="uCalHour" id="#TIME#">'
,p_cust_time_close_format=>'</th>'
,p_cust_wk_month_title_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="uCal uCalWeekly">',
'<h1 class="uMonth">#WTITLE#</h1>'))
,p_cust_wk_day_of_week_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<th scope="col" class="uCalDayCol" id="#DY#">',
'  <span class="visible-desktop">#DD# #IDAY#</span>',
'  <span class="hidden-desktop">#DD# <em>#IDY#</em></span>',
'</th>'))
,p_cust_wk_month_open_format=>'<table border="0" cellpadding="0" cellspacing="0" summary="#CALENDAR_TITLE# #START_DL# - #END_DL#" class="uCal">'
,p_cust_wk_month_close_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</table>',
'<div class="uCalFooter"></div>',
'</div>'))
,p_cust_wk_week_open_format=>'<tr>'
,p_cust_wk_week_close_format=>'</tr> '
,p_cust_wk_day_title_format=>'<span class="uDayTitle">#DD#</span>'
,p_cust_wk_day_open_format=>'<td class="uDay" headers="#DY#"><div class="uDayData">'
,p_cust_wk_day_close_format=>'</div></td>'
,p_cust_wk_today_open_format=>'<td class="uDay today" headers="#DY#"><div class="uDayData">'
,p_cust_wk_weekend_open_format=>'<td class="uDay weekend" headers="#DY#"><div class="uDayData">'
,p_cust_wk_weekend_close_format=>'</div></td>'
,p_agenda_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-ClassicCalendar t-ClassicCalendar--list">',
'  <div class="t-ClassicCalendar-title">#IMONTH# #YYYY#</div>',
'  <ul class="t-ClassicCalendar-list">',
'    #DAYS#',
'  </ul>',
'</div>'))
,p_agenda_past_day_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'  <li class="t-ClassicCalendar-listTitle is-past">',
'    <span class="t-ClassicCalendar-listDayTitle">#IDAY#</span><span class="t-ClassicCalendar-listDayDate">#IMONTH# #DD#</span>',
'  </li>'))
,p_agenda_today_day_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'  <li class="t-ClassicCalendar-listTitle is-today">',
'    <span class="t-ClassicCalendar-listDayTitle">#IDAY#</span><span class="t-ClassicCalendar-listDayDate">#IMONTH# #DD#</span>',
'  </li>'))
,p_agenda_future_day_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'  <li class="t-ClassicCalendar-listTitle is-future">',
'    <span class="t-ClassicCalendar-listDayTitle">#IDAY#</span><span class="t-ClassicCalendar-listDayDate">#IMONTH# #DD#</span>',
'  </li>'))
,p_agenda_past_entry_format=>'  <li class="t-ClassicCalendar-listEvent is-past">#DATA#</li>'
,p_agenda_today_entry_format=>'  <li class="t-ClassicCalendar-listEvent is-today">#DATA#</li>'
,p_agenda_future_entry_format=>'  <li class="t-ClassicCalendar-listEvent is-future">#DATA#</li>'
,p_month_data_format=>'#DAYS#'
,p_month_data_entry_format=>'<span class="t-ClassicCalendar-event">#DATA#</span>'
,p_theme_id=>42
,p_theme_class_id=>1
,p_reference_id=>4070916747979059326
);
end;
/
prompt --application/shared_components/user_interface/themes
begin
wwv_flow_api.create_theme(
 p_id=>wwv_flow_api.id(75417608358240692)
,p_theme_id=>42
,p_theme_name=>'Universal Theme'
,p_ui_type_name=>'DESKTOP'
,p_navigation_type=>'L'
,p_nav_bar_type=>'LIST'
,p_reference_id=>4070917134413059350
,p_is_locked=>false
,p_default_page_template=>wwv_flow_api.id(75384751178240626)
,p_default_dialog_template=>wwv_flow_api.id(75383415763240625)
,p_error_template=>wwv_flow_api.id(75381394481240625)
,p_printer_friendly_template=>wwv_flow_api.id(75384751178240626)
,p_breadcrumb_display_point=>'REGION_POSITION_01'
,p_sidebar_display_point=>'REGION_POSITION_02'
,p_login_template=>wwv_flow_api.id(75381394481240625)
,p_default_button_template=>wwv_flow_api.id(75416532850240681)
,p_default_region_template=>wwv_flow_api.id(75395504608240645)
,p_default_chart_template=>wwv_flow_api.id(75395504608240645)
,p_default_form_template=>wwv_flow_api.id(75395504608240645)
,p_default_reportr_template=>wwv_flow_api.id(75395504608240645)
,p_default_tabform_template=>wwv_flow_api.id(75395504608240645)
,p_default_wizard_template=>wwv_flow_api.id(75395504608240645)
,p_default_menur_template=>wwv_flow_api.id(75398856625240647)
,p_default_listr_template=>wwv_flow_api.id(75395504608240645)
,p_default_irr_template=>wwv_flow_api.id(75395053270240645)
,p_default_report_template=>wwv_flow_api.id(75404382326240657)
,p_default_label_template=>wwv_flow_api.id(75416048727240673)
,p_default_menu_template=>wwv_flow_api.id(75417060731240682)
,p_default_calendar_template=>wwv_flow_api.id(75417125218240684)
,p_default_list_template=>wwv_flow_api.id(75411574985240668)
,p_default_nav_list_template=>wwv_flow_api.id(75414919455240670)
,p_default_top_nav_list_temp=>wwv_flow_api.id(75414919455240670)
,p_default_side_nav_list_temp=>wwv_flow_api.id(75413949609240669)
,p_default_nav_list_position=>'SIDE'
,p_default_dialogbtnr_template=>wwv_flow_api.id(75387532005240636)
,p_default_dialogr_template=>wwv_flow_api.id(75387412883240636)
,p_default_option_label=>wwv_flow_api.id(75416048727240673)
,p_default_required_label=>wwv_flow_api.id(75416221923240673)
,p_default_page_transition=>'NONE'
,p_default_popup_transition=>'NONE'
,p_default_navbar_list_template=>wwv_flow_api.id(75413883218240669)
,p_file_prefix => nvl(wwv_flow_application_install.get_static_theme_file_prefix(42),'#IMAGE_PREFIX#themes/theme_42/1.0/')
,p_files_version=>62
,p_icon_library=>'FONTAWESOME'
,p_javascript_file_urls=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#IMAGE_PREFIX#libraries/apex/#MIN_DIRECTORY#widget.regionDisplaySelector#MIN#.js?v=#APEX_VERSION#',
'#IMAGE_PREFIX#libraries/apex/#MIN_DIRECTORY#widget.stickyWidget#MIN#.js?v=#APEX_VERSION#',
'#IMAGE_PREFIX#libraries/apex/#MIN_DIRECTORY#widget.stickyTableHeader#MIN#.js?v=#APEX_VERSION#',
'#IMAGE_PREFIX#libraries/apex/#MIN_DIRECTORY#tooltipManager#MIN#.js?v=#APEX_VERSION#',
'#IMAGE_PREFIX#libraries/hammer/2.0.3/hammer#MIN#.js?v=#APEX_VERSION#',
'#THEME_IMAGES#js/modernizr-custom#MIN#.js?v=#APEX_VERSION#',
'#IMAGE_PREFIX#plugins/com.oracle.apex.carousel/1.0/com.oracle.apex.carousel#MIN#.js?v=#APEX_VERSION#',
'#THEME_IMAGES#js/theme42#MIN#.js?v=#APEX_VERSION#'))
,p_css_file_urls=>'#THEME_IMAGES#css/Core#MIN#.css?v=#APEX_VERSION#'
);
end;
/
prompt --application/shared_components/user_interface/theme_style
begin
wwv_flow_api.create_theme_style(
 p_id=>wwv_flow_api.id(75417397932240687)
,p_theme_id=>42
,p_name=>'Vista'
,p_css_file_urls=>'#THEME_IMAGES#css/Vista#MIN#.css?v=#APEX_VERSION#'
,p_is_current=>false
,p_theme_roller_read_only=>true
,p_reference_id=>4007676303523989775
);
wwv_flow_api.create_theme_style(
 p_id=>wwv_flow_api.id(75417424086240687)
,p_theme_id=>42
,p_name=>'Vita'
,p_is_current=>true
,p_theme_roller_input_file_urls=>'#THEME_IMAGES#less/theme/Vita.less'
,p_theme_roller_output_file_url=>'#THEME_IMAGES#css/Vita#MIN#.css?v=#APEX_VERSION#'
,p_theme_roller_read_only=>true
,p_reference_id=>2719875314571594493
);
wwv_flow_api.create_theme_style(
 p_id=>wwv_flow_api.id(75417538554240687)
,p_theme_id=>42
,p_name=>'Vita - Slate'
,p_is_current=>false
,p_theme_roller_input_file_urls=>'#THEME_IMAGES#less/theme/Vita-Slate.less'
,p_theme_roller_config=>'{"customCSS":"","vars":{"@g_Accent-BG":"#505f6d","@g_Accent-OG":"#ececec","@g_Body-Title-BG":"#dee1e4","@l_Link-Base":"#337ac0","@g_Body-BG":"#f5f5f5"}}'
,p_theme_roller_output_file_url=>'#THEME_IMAGES#css/Vita-Slate#MIN#.css?v=#APEX_VERSION#'
,p_theme_roller_read_only=>true
,p_reference_id=>3291983347983194966
);
end;
/
prompt --application/shared_components/user_interface/theme_files
begin
null;
end;
/
prompt --application/shared_components/user_interface/theme_display_points
begin
null;
end;
/
prompt --application/shared_components/user_interface/template_opt_groups
begin
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(75386297315240635)
,p_theme_id=>42
,p_name=>'ALERT_TYPE'
,p_display_name=>'Alert Type'
,p_display_sequence=>3
,p_template_types=>'REGION'
,p_help_text=>'Sets the type of alert which can be used to determine the icon, icon color, and the background color.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(75386487826240635)
,p_theme_id=>42
,p_name=>'ALERT_ICONS'
,p_display_name=>'Alert Icons'
,p_display_sequence=>2
,p_template_types=>'REGION'
,p_help_text=>'Sets how icons are handled for the Alert Region.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(75386641555240635)
,p_theme_id=>42
,p_name=>'ALERT_DISPLAY'
,p_display_name=>'Alert Display'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Sets the layout of the Alert Region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(75387842635240636)
,p_theme_id=>42
,p_name=>'STYLE'
,p_display_name=>'Style'
,p_display_sequence=>40
,p_template_types=>'REGION'
,p_help_text=>'Determines how the region is styled. Use the "Remove Borders" template option to remove the region''s borders and shadows.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(75388056771240637)
,p_theme_id=>42
,p_name=>'BODY_PADDING'
,p_display_name=>'Body Padding'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Sets the Region Body padding for the region.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(75388795463240638)
,p_theme_id=>42
,p_name=>'TIMER'
,p_display_name=>'Timer'
,p_display_sequence=>2
,p_template_types=>'REGION'
,p_help_text=>'Sets the timer for when to automatically navigate to the next region within the Carousel Region.'
,p_null_text=>'No Timer'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(75389180846240638)
,p_theme_id=>42
,p_name=>'BODY_HEIGHT'
,p_display_name=>'Body Height'
,p_display_sequence=>10
,p_template_types=>'REGION'
,p_help_text=>'Sets the Region Body height. You can also specify a custom height by modifying the Region''s CSS Classes and using the height helper classes "i-hXXX" where XXX is any increment of 10 from 100 to 800.'
,p_null_text=>'Auto - Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(75389776222240639)
,p_theme_id=>42
,p_name=>'ACCENT'
,p_display_name=>'Accent'
,p_display_sequence=>30
,p_template_types=>'REGION'
,p_help_text=>'Set the Region''s accent. This accent corresponds to a Theme-Rollable color and sets the background of the Region''s Header.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(75390333966240639)
,p_theme_id=>42
,p_name=>'HEADER'
,p_display_name=>'Header'
,p_display_sequence=>20
,p_template_types=>'REGION'
,p_help_text=>'Determines the display of the Region Header which also contains the Region Title.'
,p_null_text=>'Visible - Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(75390576622240639)
,p_theme_id=>42
,p_name=>'BODY_OVERFLOW'
,p_display_name=>'Body Overflow'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Determines the scroll behavior when the region contents are larger than their container.'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(75391432389240643)
,p_theme_id=>42
,p_name=>'ANIMATION'
,p_display_name=>'Animation'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Sets the animation when navigating within the Carousel Region.'
,p_null_text=>'Fade'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(75393031697240644)
,p_theme_id=>42
,p_name=>'DEFAULT_STATE'
,p_display_name=>'Default State'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Sets the default state of the region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(75394485844240645)
,p_theme_id=>42
,p_name=>'DIALOG_SIZE'
,p_display_name=>'Dialog Size'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(75397982360240646)
,p_theme_id=>42
,p_name=>'LAYOUT'
,p_display_name=>'Layout'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(75398117269240646)
,p_theme_id=>42
,p_name=>'TAB_STYLE'
,p_display_name=>'Tab Style'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(75398536966240647)
,p_theme_id=>42
,p_name=>'TABS_SIZE'
,p_display_name=>'Tabs Size'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(75398920079240647)
,p_theme_id=>42
,p_name=>'REGION_TITLE'
,p_display_name=>'Region Title'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Sets the source of the Title Bar region''s title.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(75399503745240650)
,p_theme_id=>42
,p_name=>'HIDE_STEPS_FOR'
,p_display_name=>'Hide Steps For'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(75400168866240654)
,p_theme_id=>42
,p_name=>'BADGE_SIZE'
,p_display_name=>'Badge Size'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(75400331282240654)
,p_theme_id=>42
,p_name=>'LAYOUT'
,p_display_name=>'Layout'
,p_display_sequence=>30
,p_template_types=>'REPORT'
,p_help_text=>'Determines the layout of Cards in the report.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(75401948473240655)
,p_theme_id=>42
,p_name=>'BODY_TEXT'
,p_display_name=>'Body Text'
,p_display_sequence=>40
,p_template_types=>'REPORT'
,p_help_text=>'Determines the amount of text to display for the Card body.'
,p_null_text=>'Auto'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(75402678500240655)
,p_theme_id=>42
,p_name=>'STYLE'
,p_display_name=>'Style'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_help_text=>'Controls the style and design of the cards in the report.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(75402954048240655)
,p_theme_id=>42
,p_name=>'ICONS'
,p_display_name=>'Icons'
,p_display_sequence=>20
,p_template_types=>'REPORT'
,p_help_text=>'Controls how to handle icons in the report.'
,p_null_text=>'No Icons'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(75403638156240656)
,p_theme_id=>42
,p_name=>'COLOR_ACCENTS'
,p_display_name=>'Color Accents'
,p_display_sequence=>50
,p_template_types=>'REPORT'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(75403950048240656)
,p_theme_id=>42
,p_name=>'COMMENTS_STYLE'
,p_display_name=>'Comments Style'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_help_text=>'Determines the style in which comments are displayed.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(75404432573240657)
,p_theme_id=>42
,p_name=>'ALTERNATING_ROWS'
,p_display_name=>'Alternating Rows'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_help_text=>'Shades alternate rows in the report with slightly different background colors.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(75404754915240657)
,p_theme_id=>42
,p_name=>'ROW_HIGHLIGHTING'
,p_display_name=>'Row Highlighting'
,p_display_sequence=>20
,p_template_types=>'REPORT'
,p_help_text=>'Determines whether you want the row to be highlighted on hover.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(75404945681240657)
,p_theme_id=>42
,p_name=>'REPORT_BORDER'
,p_display_name=>'Report Border'
,p_display_sequence=>30
,p_template_types=>'REPORT'
,p_help_text=>'Controls the display of the Report''s borders.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(75405974338240658)
,p_theme_id=>42
,p_name=>'LABEL_WIDTH'
,p_display_name=>'Label Width'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(75407806473240665)
,p_theme_id=>42
,p_name=>'LAYOUT'
,p_display_name=>'Layout'
,p_display_sequence=>30
,p_template_types=>'LIST'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(75408681238240665)
,p_theme_id=>42
,p_name=>'BADGE_SIZE'
,p_display_name=>'Badge Size'
,p_display_sequence=>70
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(75409654377240667)
,p_theme_id=>42
,p_name=>'BODY_TEXT'
,p_display_name=>'Body Text'
,p_display_sequence=>40
,p_template_types=>'LIST'
,p_null_text=>'Auto'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(75410309243240667)
,p_theme_id=>42
,p_name=>'STYLE'
,p_display_name=>'Style'
,p_display_sequence=>10
,p_template_types=>'LIST'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(75410635275240667)
,p_theme_id=>42
,p_name=>'ICONS'
,p_display_name=>'Icons'
,p_display_sequence=>20
,p_template_types=>'LIST'
,p_null_text=>'No Icons'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(75411358450240668)
,p_theme_id=>42
,p_name=>'COLOR_ACCENTS'
,p_display_name=>'Color Accents'
,p_display_sequence=>50
,p_template_types=>'LIST'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(75412036479240668)
,p_theme_id=>42
,p_name=>'DISPLAY_ICONS'
,p_display_name=>'Display Icons'
,p_display_sequence=>30
,p_template_types=>'LIST'
,p_null_text=>'No Icons'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(75414452631240670)
,p_theme_id=>42
,p_name=>'SIZE'
,p_display_name=>'Size'
,p_display_sequence=>1
,p_template_types=>'LIST'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(75415508177240671)
,p_theme_id=>42
,p_name=>'LABEL_DISPLAY'
,p_display_name=>'Label Display'
,p_display_sequence=>50
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(75416735114240682)
,p_theme_id=>42
,p_name=>'ICON_POSITION'
,p_display_name=>'Icon Position'
,p_display_sequence=>50
,p_template_types=>'BUTTON'
,p_help_text=>'Sets the position of the icon relative to the label.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(75417718695240695)
,p_theme_id=>42
,p_name=>'TYPE'
,p_display_name=>'Type'
,p_display_sequence=>20
,p_template_types=>'BUTTON'
,p_null_text=>'Normal'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(75417981939240695)
,p_theme_id=>42
,p_name=>'SPACING_LEFT'
,p_display_name=>'Spacing Left'
,p_display_sequence=>70
,p_template_types=>'BUTTON'
,p_help_text=>'Controls the spacing to the left of the button.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(75418113580240695)
,p_theme_id=>42
,p_name=>'SPACING_RIGHT'
,p_display_name=>'Spacing Right'
,p_display_sequence=>80
,p_template_types=>'BUTTON'
,p_help_text=>'Controls the spacing to the right of the button.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(75418300190240695)
,p_theme_id=>42
,p_name=>'SIZE'
,p_display_name=>'Size'
,p_display_sequence=>10
,p_template_types=>'BUTTON'
,p_help_text=>'Sets the size of the button.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(75418528364240695)
,p_theme_id=>42
,p_name=>'STYLE'
,p_display_name=>'Style'
,p_display_sequence=>30
,p_template_types=>'BUTTON'
,p_help_text=>'Sets the style of the button. Use the "Simple" option for secondary actions or sets of buttons. Use the "Remove UI Decoration" option to make the button appear as text.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(75418917558240695)
,p_theme_id=>42
,p_name=>'BUTTON_SET'
,p_display_name=>'Button Set'
,p_display_sequence=>40
,p_template_types=>'BUTTON'
,p_help_text=>'Enables you to group many buttons together into a pill. You can use this option to specify where the button is within this set. Set the option to Default if this button is not part of a button set.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(75419672748240696)
,p_theme_id=>42
,p_name=>'WIDTH'
,p_display_name=>'Width'
,p_display_sequence=>60
,p_template_types=>'BUTTON'
,p_help_text=>'Sets the width of the button.'
,p_null_text=>'Auto - Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(75420009154240696)
,p_theme_id=>42
,p_name=>'LABEL_POSITION'
,p_display_name=>'Label Position'
,p_display_sequence=>140
,p_template_types=>'REGION'
,p_help_text=>'Sets the position of the label relative to the form item.'
,p_null_text=>'Inline - Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(75420203057240696)
,p_theme_id=>42
,p_name=>'ITEM_SIZE'
,p_display_name=>'Item Size'
,p_display_sequence=>110
,p_template_types=>'REGION'
,p_help_text=>'Sets the size of the form items within this region.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(75420418195240696)
,p_theme_id=>42
,p_name=>'LABEL_ALIGNMENT'
,p_display_name=>'Label Alignment'
,p_display_sequence=>130
,p_template_types=>'REGION'
,p_help_text=>'Set the label text alignment for items within this region.'
,p_null_text=>'Right'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(75420653645240696)
,p_theme_id=>42
,p_name=>'ITEM_PADDING'
,p_display_name=>'Item Padding'
,p_display_sequence=>100
,p_template_types=>'REGION'
,p_help_text=>'Sets the padding around items within this region.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(75420995048240697)
,p_theme_id=>42
,p_name=>'ITEM_WIDTH'
,p_display_name=>'Item Width'
,p_display_sequence=>120
,p_template_types=>'REGION'
,p_help_text=>'Sets the width of the form items within this region.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(75421270286240697)
,p_theme_id=>42
,p_name=>'SIZE'
,p_display_name=>'Size'
,p_display_sequence=>10
,p_template_types=>'FIELD'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
end;
/
prompt --application/shared_components/user_interface/template_options
begin
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(75386172566240633)
,p_theme_id=>42
,p_name=>'COLOREDBACKGROUND'
,p_display_name=>'Highlight Background'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(75385961384240627)
,p_css_classes=>'t-Alert--colorBG'
,p_template_types=>'REGION'
,p_help_text=>'Set alert background color to that of the alert type (warning, success, etc.)'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(75386376888240635)
,p_theme_id=>42
,p_name=>'DANGER'
,p_display_name=>'Danger'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(75385961384240627)
,p_css_classes=>'t-Alert--danger'
,p_group_id=>wwv_flow_api.id(75386297315240635)
,p_template_types=>'REGION'
,p_help_text=>'Show an error or danger alert.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(75386570489240635)
,p_theme_id=>42
,p_name=>'HIDE_ICONS'
,p_display_name=>'Hide Icons'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(75385961384240627)
,p_css_classes=>'t-Alert--noIcon'
,p_group_id=>wwv_flow_api.id(75386487826240635)
,p_template_types=>'REGION'
,p_help_text=>'Hides alert icons'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(75386700657240635)
,p_theme_id=>42
,p_name=>'HORIZONTAL'
,p_display_name=>'Horizontal'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(75385961384240627)
,p_css_classes=>'t-Alert--horizontal'
,p_group_id=>wwv_flow_api.id(75386641555240635)
,p_template_types=>'REGION'
,p_help_text=>'Show horizontal alert with buttons to the right.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(75386885003240635)
,p_theme_id=>42
,p_name=>'INFORMATION'
,p_display_name=>'Information'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(75385961384240627)
,p_css_classes=>'t-Alert--info'
,p_group_id=>wwv_flow_api.id(75386297315240635)
,p_template_types=>'REGION'
,p_help_text=>'Show informational alert.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(75386994926240635)
,p_theme_id=>42
,p_name=>'SHOW_CUSTOM_ICONS'
,p_display_name=>'Show Custom Icons'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(75385961384240627)
,p_css_classes=>'t-Alert--customIcons'
,p_group_id=>wwv_flow_api.id(75386487826240635)
,p_template_types=>'REGION'
,p_help_text=>'Set custom icons by modifying the Alert Region''s Icon CSS Classes property.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(75387082245240635)
,p_theme_id=>42
,p_name=>'SUCCESS'
,p_display_name=>'Success'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(75385961384240627)
,p_css_classes=>'t-Alert--success'
,p_group_id=>wwv_flow_api.id(75386297315240635)
,p_template_types=>'REGION'
,p_help_text=>'Show success alert.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(75387126326240635)
,p_theme_id=>42
,p_name=>'USEDEFAULTICONS'
,p_display_name=>'Show Default Icons'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(75385961384240627)
,p_css_classes=>'t-Alert--defaultIcons'
,p_group_id=>wwv_flow_api.id(75386487826240635)
,p_template_types=>'REGION'
,p_help_text=>'Uses default icons for alert types.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(75387285237240635)
,p_theme_id=>42
,p_name=>'WARNING'
,p_display_name=>'Warning'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(75385961384240627)
,p_css_classes=>'t-Alert--warning'
,p_group_id=>wwv_flow_api.id(75386297315240635)
,p_template_types=>'REGION'
,p_help_text=>'Show a warning alert.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(75387370681240635)
,p_theme_id=>42
,p_name=>'WIZARD'
,p_display_name=>'Wizard'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(75385961384240627)
,p_css_classes=>'t-Alert--wizard'
,p_group_id=>wwv_flow_api.id(75386641555240635)
,p_template_types=>'REGION'
,p_help_text=>'Show the alert in a wizard style region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(75387907879240636)
,p_theme_id=>42
,p_name=>'BORDERLESS'
,p_display_name=>'Borderless'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(75387532005240636)
,p_css_classes=>'t-ButtonRegion--noBorder'
,p_group_id=>wwv_flow_api.id(75387842635240636)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(75388163200240637)
,p_theme_id=>42
,p_name=>'NOPADDING'
,p_display_name=>'No Padding'
,p_display_sequence=>3
,p_region_template_id=>wwv_flow_api.id(75387532005240636)
,p_css_classes=>'t-ButtonRegion--noPadding'
,p_group_id=>wwv_flow_api.id(75388056771240637)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(75388208703240637)
,p_theme_id=>42
,p_name=>'REMOVEUIDECORATION'
,p_display_name=>'Remove UI Decoration'
,p_display_sequence=>4
,p_region_template_id=>wwv_flow_api.id(75387532005240636)
,p_css_classes=>'t-ButtonRegion--noUI'
,p_group_id=>wwv_flow_api.id(75387842635240636)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(75388372765240638)
,p_theme_id=>42
,p_name=>'SLIMPADDING'
,p_display_name=>'Slim Padding'
,p_display_sequence=>5
,p_region_template_id=>wwv_flow_api.id(75387532005240636)
,p_css_classes=>'t-ButtonRegion--slimPadding'
,p_group_id=>wwv_flow_api.id(75388056771240637)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(75388886295240638)
,p_theme_id=>42
,p_name=>'10_SECONDS'
,p_display_name=>'10 Seconds'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(75388473025240638)
,p_css_classes=>'js-cycle10s'
,p_group_id=>wwv_flow_api.id(75388795463240638)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(75388902278240638)
,p_theme_id=>42
,p_name=>'15_SECONDS'
,p_display_name=>'15 Seconds'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(75388473025240638)
,p_css_classes=>'js-cycle15s'
,p_group_id=>wwv_flow_api.id(75388795463240638)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(75389055852240638)
,p_theme_id=>42
,p_name=>'20_SECONDS'
,p_display_name=>'20 Seconds'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(75388473025240638)
,p_css_classes=>'js-cycle20s'
,p_group_id=>wwv_flow_api.id(75388795463240638)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(75389275387240638)
,p_theme_id=>42
,p_name=>'240PX'
,p_display_name=>'240px'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(75388473025240638)
,p_css_classes=>'i-h240'
,p_group_id=>wwv_flow_api.id(75389180846240638)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 240px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(75389350649240639)
,p_theme_id=>42
,p_name=>'320PX'
,p_display_name=>'320px'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(75388473025240638)
,p_css_classes=>'i-h320'
,p_group_id=>wwv_flow_api.id(75389180846240638)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 320px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(75389497114240639)
,p_theme_id=>42
,p_name=>'480PX'
,p_display_name=>'480px'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(75388473025240638)
,p_css_classes=>'i-h480'
,p_group_id=>wwv_flow_api.id(75389180846240638)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(75389531866240639)
,p_theme_id=>42
,p_name=>'5_SECONDS'
,p_display_name=>'5 Seconds'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(75388473025240638)
,p_css_classes=>'js-cycle5s'
,p_group_id=>wwv_flow_api.id(75388795463240638)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(75389626854240639)
,p_theme_id=>42
,p_name=>'640PX'
,p_display_name=>'640px'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(75388473025240638)
,p_css_classes=>'i-h640'
,p_group_id=>wwv_flow_api.id(75389180846240638)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(75389897858240639)
,p_theme_id=>42
,p_name=>'ACCENT_1'
,p_display_name=>'Accent 1'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(75388473025240638)
,p_css_classes=>'t-Region--accent1'
,p_group_id=>wwv_flow_api.id(75389776222240639)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(75389960784240639)
,p_theme_id=>42
,p_name=>'ACCENT_2'
,p_display_name=>'Accent 2'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(75388473025240638)
,p_css_classes=>'t-Region--accent2'
,p_group_id=>wwv_flow_api.id(75389776222240639)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(75390072533240639)
,p_theme_id=>42
,p_name=>'ACCENT_3'
,p_display_name=>'Accent 3'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(75388473025240638)
,p_css_classes=>'t-Region--accent3'
,p_group_id=>wwv_flow_api.id(75389776222240639)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(75390124329240639)
,p_theme_id=>42
,p_name=>'ACCENT_4'
,p_display_name=>'Accent 4'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(75388473025240638)
,p_css_classes=>'t-Region--accent4'
,p_group_id=>wwv_flow_api.id(75389776222240639)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(75390242413240639)
,p_theme_id=>42
,p_name=>'ACCENT_5'
,p_display_name=>'Accent 5'
,p_display_sequence=>50
,p_region_template_id=>wwv_flow_api.id(75388473025240638)
,p_css_classes=>'t-Region--accent5'
,p_group_id=>wwv_flow_api.id(75389776222240639)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(75390430517240639)
,p_theme_id=>42
,p_name=>'HIDDENHEADERNOAT'
,p_display_name=>'Hidden'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(75388473025240638)
,p_css_classes=>'t-Region--removeHeader'
,p_group_id=>wwv_flow_api.id(75390333966240639)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(75390605168240639)
,p_theme_id=>42
,p_name=>'HIDEOVERFLOW'
,p_display_name=>'Hide'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(75388473025240638)
,p_css_classes=>'t-Region--hiddenOverflow'
,p_group_id=>wwv_flow_api.id(75390576622240639)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(75390743789240639)
,p_theme_id=>42
,p_name=>'HIDEREGIONHEADER'
,p_display_name=>'Hidden but accessible'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(75388473025240638)
,p_css_classes=>'t-Region--hideHeader'
,p_group_id=>wwv_flow_api.id(75390333966240639)
,p_template_types=>'REGION'
,p_help_text=>'This option will hide the region header.  Note that the region title will still be audible for Screen Readers. Buttons placed in the region header will be hidden and inaccessible.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(75390800816240639)
,p_theme_id=>42
,p_name=>'NOBODYPADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(75388473025240638)
,p_css_classes=>'t-Region--noPadding'
,p_template_types=>'REGION'
,p_help_text=>'Removes padding from region body.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(75390989245240643)
,p_theme_id=>42
,p_name=>'NOBORDER'
,p_display_name=>'Remove Borders'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(75388473025240638)
,p_css_classes=>'t-Region--noBorder'
,p_group_id=>wwv_flow_api.id(75387842635240636)
,p_template_types=>'REGION'
,p_help_text=>'Removes borders from the region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(75391081271240643)
,p_theme_id=>42
,p_name=>'REMEMBER_CAROUSEL_SLIDE'
,p_display_name=>'Remember Carousel Slide'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(75388473025240638)
,p_css_classes=>'js-useLocalStorage'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(75391174788240643)
,p_theme_id=>42
,p_name=>'SCROLLBODY'
,p_display_name=>'Scroll'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(75388473025240638)
,p_css_classes=>'t-Region--scrollBody'
,p_group_id=>wwv_flow_api.id(75390576622240639)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(75391269640240643)
,p_theme_id=>42
,p_name=>'SHOW_MAXIMIZE_BUTTON'
,p_display_name=>'Show Maximize Button'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(75388473025240638)
,p_css_classes=>'js-showMaximizeButton'
,p_template_types=>'REGION'
,p_help_text=>'Displays a button in the Region Header to maximize the region. Clicking this button will toggle the maximize state and stretch the region to fill the screen.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(75391393620240643)
,p_theme_id=>42
,p_name=>'SHOW_NEXT_AND_PREVIOUS_BUTTONS'
,p_display_name=>'Show Next and Previous Buttons'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(75388473025240638)
,p_css_classes=>'t-Region--showCarouselControls'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(75391563886240643)
,p_theme_id=>42
,p_name=>'SLIDE'
,p_display_name=>'Slide'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(75388473025240638)
,p_css_classes=>'t-Region--carouselSlide'
,p_group_id=>wwv_flow_api.id(75391432389240643)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(75391607883240643)
,p_theme_id=>42
,p_name=>'SPIN'
,p_display_name=>'Spin'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(75388473025240638)
,p_css_classes=>'t-Region--carouselSpin'
,p_group_id=>wwv_flow_api.id(75391432389240643)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(75391723485240643)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stack Region'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(75388473025240638)
,p_css_classes=>'t-Region--stacked'
,p_group_id=>wwv_flow_api.id(75387842635240636)
,p_template_types=>'REGION'
,p_help_text=>'Removes side borders and shadows, and can be useful for accordions and regions that need to be grouped together vertically.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(75392160849240643)
,p_theme_id=>42
,p_name=>'240PX'
,p_display_name=>'240px'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(75391869888240643)
,p_css_classes=>'i-h240'
,p_group_id=>wwv_flow_api.id(75389180846240638)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 240px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(75392279838240643)
,p_theme_id=>42
,p_name=>'320PX'
,p_display_name=>'320px'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(75391869888240643)
,p_css_classes=>'i-h320'
,p_group_id=>wwv_flow_api.id(75389180846240638)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 320px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(75392352396240643)
,p_theme_id=>42
,p_name=>'480PX'
,p_display_name=>'480px'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(75391869888240643)
,p_css_classes=>'i-h480'
,p_group_id=>wwv_flow_api.id(75389180846240638)
,p_template_types=>'REGION'
,p_help_text=>'Sets body height to 480px.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(75392482803240643)
,p_theme_id=>42
,p_name=>'640PX'
,p_display_name=>'640px'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(75391869888240643)
,p_css_classes=>'i-h640'
,p_group_id=>wwv_flow_api.id(75389180846240638)
,p_template_types=>'REGION'
,p_help_text=>'Sets body height to 640px.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(75392556526240643)
,p_theme_id=>42
,p_name=>'ACCENT_1'
,p_display_name=>'Accent 1'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(75391869888240643)
,p_css_classes=>'t-Region--accent1'
,p_group_id=>wwv_flow_api.id(75389776222240639)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(75392687671240643)
,p_theme_id=>42
,p_name=>'ACCENT_2'
,p_display_name=>'Accent 2'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(75391869888240643)
,p_css_classes=>'t-Region--accent2'
,p_group_id=>wwv_flow_api.id(75389776222240639)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(75392748904240643)
,p_theme_id=>42
,p_name=>'ACCENT_3'
,p_display_name=>'Accent 3'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(75391869888240643)
,p_css_classes=>'t-Region--accent3'
,p_group_id=>wwv_flow_api.id(75389776222240639)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(75392816287240643)
,p_theme_id=>42
,p_name=>'ACCENT_4'
,p_display_name=>'Accent 4'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(75391869888240643)
,p_css_classes=>'t-Region--accent4'
,p_group_id=>wwv_flow_api.id(75389776222240639)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(75392931147240643)
,p_theme_id=>42
,p_name=>'ACCENT_5'
,p_display_name=>'Accent 5'
,p_display_sequence=>50
,p_region_template_id=>wwv_flow_api.id(75391869888240643)
,p_css_classes=>'t-Region--accent5'
,p_group_id=>wwv_flow_api.id(75389776222240639)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(75393116369240644)
,p_theme_id=>42
,p_name=>'COLLAPSED'
,p_display_name=>'Collapsed'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(75391869888240643)
,p_css_classes=>'is-collapsed'
,p_group_id=>wwv_flow_api.id(75393031697240644)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(75393200634240644)
,p_theme_id=>42
,p_name=>'EXPANDED'
,p_display_name=>'Expanded'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(75391869888240643)
,p_css_classes=>'is-expanded'
,p_group_id=>wwv_flow_api.id(75393031697240644)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(75393377014240644)
,p_theme_id=>42
,p_name=>'HIDEOVERFLOW'
,p_display_name=>'Hide'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(75391869888240643)
,p_css_classes=>'t-Region--hiddenOverflow'
,p_group_id=>wwv_flow_api.id(75390576622240639)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(75393468476240644)
,p_theme_id=>42
,p_name=>'NOBODYPADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(75391869888240643)
,p_css_classes=>'t-Region--noPadding'
,p_template_types=>'REGION'
,p_help_text=>'Removes padding from region body.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(75393502119240644)
,p_theme_id=>42
,p_name=>'NOBORDER'
,p_display_name=>'Remove Borders'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(75391869888240643)
,p_css_classes=>'t-Region--noBorder'
,p_group_id=>wwv_flow_api.id(75387842635240636)
,p_template_types=>'REGION'
,p_help_text=>'Removes borders from the region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(75393614533240644)
,p_theme_id=>42
,p_name=>'REMOVE_UI_DECORATION'
,p_display_name=>'Remove UI Decoration'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(75391869888240643)
,p_css_classes=>'t-Region--noUI'
,p_group_id=>wwv_flow_api.id(75387842635240636)
,p_template_types=>'REGION'
,p_help_text=>'Removes UI decoration (borders, backgrounds, shadows, etc) from the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(75393755877240644)
,p_theme_id=>42
,p_name=>'SCROLLBODY'
,p_display_name=>'Scroll - Default'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(75391869888240643)
,p_css_classes=>'t-Region--scrollBody'
,p_group_id=>wwv_flow_api.id(75390576622240639)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(75393853790240644)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stack Region'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(75391869888240643)
,p_css_classes=>'t-Region--stacked'
,p_group_id=>wwv_flow_api.id(75387842635240636)
,p_template_types=>'REGION'
,p_help_text=>'Removes side borders and shadows, and can be useful for accordions and regions that need to be grouped together vertically.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(75394357043240644)
,p_theme_id=>42
,p_name=>'DRAGGABLE'
,p_display_name=>'Draggable'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(75394183138240644)
,p_css_classes=>'js-draggable'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(75394514182240645)
,p_theme_id=>42
,p_name=>'LARGE_720X480'
,p_display_name=>'Large (720x480)'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(75394183138240644)
,p_css_classes=>'js-dialog-size720x480'
,p_group_id=>wwv_flow_api.id(75394485844240645)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(75394678572240645)
,p_theme_id=>42
,p_name=>'MEDIUM_600X400'
,p_display_name=>'Medium (600x400)'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(75394183138240644)
,p_css_classes=>'js-dialog-size600x400'
,p_group_id=>wwv_flow_api.id(75394485844240645)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(75394788542240645)
,p_theme_id=>42
,p_name=>'MODAL'
,p_display_name=>'Modal'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(75394183138240644)
,p_css_classes=>'js-modal'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(75394800023240645)
,p_theme_id=>42
,p_name=>'RESIZABLE'
,p_display_name=>'Resizable'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(75394183138240644)
,p_css_classes=>'js-resizable'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(75394983856240645)
,p_theme_id=>42
,p_name=>'SMALL_480X320'
,p_display_name=>'Small (480x320)'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(75394183138240644)
,p_css_classes=>'js-dialog-size480x320'
,p_group_id=>wwv_flow_api.id(75394485844240645)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(75395141442240645)
,p_theme_id=>42
,p_name=>'REMOVEBORDERS'
,p_display_name=>'Remove Borders'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(75395053270240645)
,p_css_classes=>'t-IRR-region--noBorders'
,p_template_types=>'REGION'
,p_help_text=>'Removes borders around the Interactive Report'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(75395273112240645)
,p_theme_id=>42
,p_name=>'SHOW_MAXIMIZE_BUTTON'
,p_display_name=>'Show Maximize Button'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(75395053270240645)
,p_css_classes=>'js-showMaximizeButton'
,p_template_types=>'REGION'
,p_help_text=>'Displays a button in the Interactive Reports toolbar to maximize the report. Clicking this button will toggle the maximize state and stretch the report to fill the screen.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(75395825777240645)
,p_theme_id=>42
,p_name=>'240PX'
,p_display_name=>'240px'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(75395504608240645)
,p_css_classes=>'i-h240'
,p_group_id=>wwv_flow_api.id(75389180846240638)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 240px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(75395996568240645)
,p_theme_id=>42
,p_name=>'320PX'
,p_display_name=>'320px'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(75395504608240645)
,p_css_classes=>'i-h320'
,p_group_id=>wwv_flow_api.id(75389180846240638)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 320px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(75396052271240645)
,p_theme_id=>42
,p_name=>'480PX'
,p_display_name=>'480px'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(75395504608240645)
,p_css_classes=>'i-h480'
,p_group_id=>wwv_flow_api.id(75389180846240638)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(75396124636240645)
,p_theme_id=>42
,p_name=>'640PX'
,p_display_name=>'640px'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(75395504608240645)
,p_css_classes=>'i-h640'
,p_group_id=>wwv_flow_api.id(75389180846240638)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(75396229750240645)
,p_theme_id=>42
,p_name=>'ACCENT_1'
,p_display_name=>'Accent 1'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(75395504608240645)
,p_css_classes=>'t-Region--accent1'
,p_group_id=>wwv_flow_api.id(75389776222240639)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(75396350218240645)
,p_theme_id=>42
,p_name=>'ACCENT_2'
,p_display_name=>'Accent 2'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(75395504608240645)
,p_css_classes=>'t-Region--accent2'
,p_group_id=>wwv_flow_api.id(75389776222240639)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(75396460002240645)
,p_theme_id=>42
,p_name=>'ACCENT_3'
,p_display_name=>'Accent 3'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(75395504608240645)
,p_css_classes=>'t-Region--accent3'
,p_group_id=>wwv_flow_api.id(75389776222240639)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(75396514798240645)
,p_theme_id=>42
,p_name=>'ACCENT_4'
,p_display_name=>'Accent 4'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(75395504608240645)
,p_css_classes=>'t-Region--accent4'
,p_group_id=>wwv_flow_api.id(75389776222240639)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(75396665403240646)
,p_theme_id=>42
,p_name=>'ACCENT_5'
,p_display_name=>'Accent 5'
,p_display_sequence=>50
,p_region_template_id=>wwv_flow_api.id(75395504608240645)
,p_css_classes=>'t-Region--accent5'
,p_group_id=>wwv_flow_api.id(75389776222240639)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(75396746226240646)
,p_theme_id=>42
,p_name=>'HIDDENHEADERNOAT'
,p_display_name=>'Hidden'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(75395504608240645)
,p_css_classes=>'t-Region--removeHeader'
,p_group_id=>wwv_flow_api.id(75390333966240639)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(75396828386240646)
,p_theme_id=>42
,p_name=>'HIDEOVERFLOW'
,p_display_name=>'Hide'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(75395504608240645)
,p_css_classes=>'t-Region--hiddenOverflow'
,p_group_id=>wwv_flow_api.id(75390576622240639)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(75396972710240646)
,p_theme_id=>42
,p_name=>'HIDEREGIONHEADER'
,p_display_name=>'Hidden but accessible'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(75395504608240645)
,p_css_classes=>'t-Region--hideHeader'
,p_group_id=>wwv_flow_api.id(75390333966240639)
,p_template_types=>'REGION'
,p_help_text=>'This option will hide the region header.  Note that the region title will still be audible for Screen Readers. Buttons placed in the region header will be hidden and inaccessible.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(75397088687240646)
,p_theme_id=>42
,p_name=>'NOBODYPADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(75395504608240645)
,p_css_classes=>'t-Region--noPadding'
,p_template_types=>'REGION'
,p_help_text=>'Removes padding from region body.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(75397154467240646)
,p_theme_id=>42
,p_name=>'NOBORDER'
,p_display_name=>'Remove Borders'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(75395504608240645)
,p_css_classes=>'t-Region--noBorder'
,p_group_id=>wwv_flow_api.id(75387842635240636)
,p_template_types=>'REGION'
,p_help_text=>'Removes borders from the region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(75397283315240646)
,p_theme_id=>42
,p_name=>'REMOVE_UI_DECORATION'
,p_display_name=>'Remove UI Decoration'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(75395504608240645)
,p_css_classes=>'t-Region--noUI'
,p_group_id=>wwv_flow_api.id(75387842635240636)
,p_template_types=>'REGION'
,p_help_text=>'Removes UI decoration (borders, backgrounds, shadows, etc) from the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(75397304698240646)
,p_theme_id=>42
,p_name=>'SCROLLBODY'
,p_display_name=>'Scroll - Default'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(75395504608240645)
,p_css_classes=>'t-Region--scrollBody'
,p_group_id=>wwv_flow_api.id(75390576622240639)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(75397410250240646)
,p_theme_id=>42
,p_name=>'SHOW_MAXIMIZE_BUTTON'
,p_display_name=>'Show Maximize Button'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(75395504608240645)
,p_css_classes=>'js-showMaximizeButton'
,p_template_types=>'REGION'
,p_help_text=>'Displays a button in the Region Header to maximize the region. Clicking this button will toggle the maximize state and stretch the region to fill the screen.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(75397579147240646)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stack Region'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(75395504608240645)
,p_css_classes=>'t-Region--stacked'
,p_group_id=>wwv_flow_api.id(75387842635240636)
,p_template_types=>'REGION'
,p_help_text=>'Removes side borders and shadows, and can be useful for accordions and regions that need to be grouped together vertically.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(75398004273240646)
,p_theme_id=>42
,p_name=>'FILL_TAB_LABELS'
,p_display_name=>'Fill Tab Labels'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(75397628365240646)
,p_css_classes=>'t-TabsRegion-mod--fillLabels'
,p_group_id=>wwv_flow_api.id(75397982360240646)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(75398260272240647)
,p_theme_id=>42
,p_name=>'PILL'
,p_display_name=>'Pill'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(75397628365240646)
,p_css_classes=>'t-TabsRegion-mod--pill'
,p_group_id=>wwv_flow_api.id(75398117269240646)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(75398333359240647)
,p_theme_id=>42
,p_name=>'REMEMBER_ACTIVE_TAB'
,p_display_name=>'Remember Active Tab'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(75397628365240646)
,p_css_classes=>'js-useLocalStorage'
,p_template_types=>'REGION'
);
end;
/
begin
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(75398470463240647)
,p_theme_id=>42
,p_name=>'SIMPLE'
,p_display_name=>'Simple'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(75397628365240646)
,p_css_classes=>'t-TabsRegion-mod--simple'
,p_group_id=>wwv_flow_api.id(75398117269240646)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(75398665253240647)
,p_theme_id=>42
,p_name=>'TABSLARGE'
,p_display_name=>'Large'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(75397628365240646)
,p_css_classes=>'t-TabsRegion-mod--large'
,p_group_id=>wwv_flow_api.id(75398536966240647)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(75398775210240647)
,p_theme_id=>42
,p_name=>'TABS_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(75397628365240646)
,p_css_classes=>'t-TabsRegion-mod--small'
,p_group_id=>wwv_flow_api.id(75398536966240647)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(75399099322240647)
,p_theme_id=>42
,p_name=>'GET_TITLE_FROM_BREADCRUMB'
,p_display_name=>'Use Current Breadcrumb Entry'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(75398856625240647)
,p_css_classes=>'t-BreadcrumbRegion--useBreadcrumbTitle'
,p_group_id=>wwv_flow_api.id(75398920079240647)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(75399116871240647)
,p_theme_id=>42
,p_name=>'HIDE_BREADCRUMB'
,p_display_name=>'Show Breadcrumbs'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(75398856625240647)
,p_css_classes=>'t-BreadcrumbRegion--showBreadcrumb'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(75399254025240647)
,p_theme_id=>42
,p_name=>'REGION_HEADER_VISIBLE'
,p_display_name=>'Use Region Title'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(75398856625240647)
,p_css_classes=>'t-BreadcrumbRegion--useRegionTitle'
,p_group_id=>wwv_flow_api.id(75398920079240647)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(75399658152240650)
,p_theme_id=>42
,p_name=>'HIDESMALLSCREENS'
,p_display_name=>'Small Screens (Tablet)'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(75399317850240647)
,p_css_classes=>'t-Wizard--hideStepsSmall'
,p_group_id=>wwv_flow_api.id(75399503745240650)
,p_template_types=>'REGION'
,p_help_text=>'Hides the wizard progress steps for screens that are smaller than 768px wide.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(75399798208240650)
,p_theme_id=>42
,p_name=>'HIDEXSMALLSCREENS'
,p_display_name=>'X Small Screens (Mobile)'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(75399317850240647)
,p_css_classes=>'t-Wizard--hideStepsXSmall'
,p_group_id=>wwv_flow_api.id(75399503745240650)
,p_template_types=>'REGION'
,p_help_text=>'Hides the wizard progress steps for screens that are smaller than 768px wide.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(75399828048240650)
,p_theme_id=>42
,p_name=>'SHOW_TITLE'
,p_display_name=>'Show Title'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(75399317850240647)
,p_css_classes=>'t-Wizard--showTitle'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(75400230275240654)
,p_theme_id=>42
,p_name=>'128PX'
,p_display_name=>'128px'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(75400099607240653)
,p_css_classes=>'t-BadgeList--xxlarge'
,p_group_id=>wwv_flow_api.id(75400168866240654)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(75400466064240654)
,p_theme_id=>42
,p_name=>'2COLUMNGRID'
,p_display_name=>'2 Column Grid'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(75400099607240653)
,p_css_classes=>'t-BadgeList--cols'
,p_group_id=>wwv_flow_api.id(75400331282240654)
,p_template_types=>'REPORT'
,p_help_text=>'Arrange badges in a two column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(75400554352240654)
,p_theme_id=>42
,p_name=>'32PX'
,p_display_name=>'32px'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(75400099607240653)
,p_css_classes=>'t-BadgeList--small'
,p_group_id=>wwv_flow_api.id(75400168866240654)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(75400675660240654)
,p_theme_id=>42
,p_name=>'3COLUMNGRID'
,p_display_name=>'3 Column Grid'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(75400099607240653)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--3cols'
,p_group_id=>wwv_flow_api.id(75400331282240654)
,p_template_types=>'REPORT'
,p_help_text=>'Arrange badges in a 3 column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(75400709404240654)
,p_theme_id=>42
,p_name=>'48PX'
,p_display_name=>'48px'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(75400099607240653)
,p_css_classes=>'t-BadgeList--medium'
,p_group_id=>wwv_flow_api.id(75400168866240654)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(75400826481240654)
,p_theme_id=>42
,p_name=>'4COLUMNGRID'
,p_display_name=>'4 Column Grid'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(75400099607240653)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--4cols'
,p_group_id=>wwv_flow_api.id(75400331282240654)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(75400983796240654)
,p_theme_id=>42
,p_name=>'5COLUMNGRID'
,p_display_name=>'5 Column Grid'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(75400099607240653)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--5cols'
,p_group_id=>wwv_flow_api.id(75400331282240654)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(75401036091240654)
,p_theme_id=>42
,p_name=>'64PX'
,p_display_name=>'64px'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(75400099607240653)
,p_css_classes=>'t-BadgeList--large'
,p_group_id=>wwv_flow_api.id(75400168866240654)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(75401107336240654)
,p_theme_id=>42
,p_name=>'96PX'
,p_display_name=>'96px'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(75400099607240653)
,p_css_classes=>'t-BadgeList--xlarge'
,p_group_id=>wwv_flow_api.id(75400168866240654)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(75401285740240655)
,p_theme_id=>42
,p_name=>'FIXED'
,p_display_name=>'Span Horizontally'
,p_display_sequence=>60
,p_report_template_id=>wwv_flow_api.id(75400099607240653)
,p_css_classes=>'t-BadgeList--fixed'
,p_group_id=>wwv_flow_api.id(75400331282240654)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(75401397871240655)
,p_theme_id=>42
,p_name=>'FLEXIBLEBOX'
,p_display_name=>'Flexible Box'
,p_display_sequence=>80
,p_report_template_id=>wwv_flow_api.id(75400099607240653)
,p_css_classes=>'t-BadgeList--flex'
,p_group_id=>wwv_flow_api.id(75400331282240654)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(75401411491240655)
,p_theme_id=>42
,p_name=>'FLOATITEMS'
,p_display_name=>'Float Items'
,p_display_sequence=>70
,p_report_template_id=>wwv_flow_api.id(75400099607240653)
,p_css_classes=>'t-BadgeList--float'
,p_group_id=>wwv_flow_api.id(75400331282240654)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(75401500973240655)
,p_theme_id=>42
,p_name=>'RESPONSIVE'
,p_display_name=>'Responsive'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(75400099607240653)
,p_css_classes=>'t-BadgeList--responsive'
,p_template_types=>'REPORT'
,p_help_text=>'Automatically resize badges to smaller sizes as screen becomes smaller.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(75401651965240655)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stacked'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(75400099607240653)
,p_css_classes=>'t-BadgeList--stacked'
,p_group_id=>wwv_flow_api.id(75400331282240654)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(75401871231240655)
,p_theme_id=>42
,p_name=>'2_COLUMNS'
,p_display_name=>'2 Columns'
,p_display_sequence=>15
,p_report_template_id=>wwv_flow_api.id(75401775815240655)
,p_css_classes=>'t-Cards--cols'
,p_group_id=>wwv_flow_api.id(75400331282240654)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(75402094245240655)
,p_theme_id=>42
,p_name=>'2_LINES'
,p_display_name=>'2 Lines'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(75401775815240655)
,p_css_classes=>'t-Cards--desc-2ln'
,p_group_id=>wwv_flow_api.id(75401948473240655)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(75402122885240655)
,p_theme_id=>42
,p_name=>'3_COLUMNS'
,p_display_name=>'3 Columns'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(75401775815240655)
,p_css_classes=>'t-Cards--3cols'
,p_group_id=>wwv_flow_api.id(75400331282240654)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(75402297238240655)
,p_theme_id=>42
,p_name=>'3_LINES'
,p_display_name=>'3 Lines'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(75401775815240655)
,p_css_classes=>'t-Cards--desc-3ln'
,p_group_id=>wwv_flow_api.id(75401948473240655)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(75402333665240655)
,p_theme_id=>42
,p_name=>'4_COLUMNS'
,p_display_name=>'4 Columns'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(75401775815240655)
,p_css_classes=>'t-Cards--4cols'
,p_group_id=>wwv_flow_api.id(75400331282240654)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(75402452965240655)
,p_theme_id=>42
,p_name=>'4_LINES'
,p_display_name=>'4 Lines'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(75401775815240655)
,p_css_classes=>'t-Cards--desc-4ln'
,p_group_id=>wwv_flow_api.id(75401948473240655)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(75402553962240655)
,p_theme_id=>42
,p_name=>'5_COLUMNS'
,p_display_name=>'5 Columns'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(75401775815240655)
,p_css_classes=>'t-Cards--5cols'
,p_group_id=>wwv_flow_api.id(75400331282240654)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(75402742067240655)
,p_theme_id=>42
,p_name=>'BASIC'
,p_display_name=>'Basic'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(75401775815240655)
,p_css_classes=>'t-Cards--basic'
,p_group_id=>wwv_flow_api.id(75402678500240655)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(75402883601240655)
,p_theme_id=>42
,p_name=>'COMPACT'
,p_display_name=>'Compact'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(75401775815240655)
,p_css_classes=>'t-Cards--compact'
,p_group_id=>wwv_flow_api.id(75402678500240655)
,p_template_types=>'REPORT'
,p_help_text=>'Use this option when you want to show smaller cards.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(75403010908240655)
,p_theme_id=>42
,p_name=>'DISPLAY_ICONS'
,p_display_name=>'Display Icons'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(75401775815240655)
,p_css_classes=>'t-Cards--displayIcons'
,p_group_id=>wwv_flow_api.id(75402954048240655)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(75403190428240655)
,p_theme_id=>42
,p_name=>'DISPLAY_INITIALS'
,p_display_name=>'Display Initials'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(75401775815240655)
,p_css_classes=>'t-Cards--displayInitials'
,p_group_id=>wwv_flow_api.id(75402954048240655)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(75403218336240656)
,p_theme_id=>42
,p_name=>'FEATURED'
,p_display_name=>'Featured'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(75401775815240655)
,p_css_classes=>'t-Cards--featured'
,p_group_id=>wwv_flow_api.id(75402678500240655)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(75403347546240656)
,p_theme_id=>42
,p_name=>'FLOAT'
,p_display_name=>'Float'
,p_display_sequence=>60
,p_report_template_id=>wwv_flow_api.id(75401775815240655)
,p_css_classes=>'t-Cards--float'
,p_group_id=>wwv_flow_api.id(75400331282240654)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(75403407267240656)
,p_theme_id=>42
,p_name=>'HIDDEN_BODY_TEXT'
,p_display_name=>'Hidden'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(75401775815240655)
,p_css_classes=>'t-Cards--hideBody'
,p_group_id=>wwv_flow_api.id(75401948473240655)
,p_template_types=>'REPORT'
,p_help_text=>'This option hides the card body which contains description and subtext.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(75403559287240656)
,p_theme_id=>42
,p_name=>'SPAN_HORIZONTALLY'
,p_display_name=>'Span Horizontally'
,p_display_sequence=>70
,p_report_template_id=>wwv_flow_api.id(75401775815240655)
,p_css_classes=>'t-Cards--spanHorizontally'
,p_group_id=>wwv_flow_api.id(75400331282240654)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(75403759556240656)
,p_theme_id=>42
,p_name=>'USE_THEME_COLORS'
,p_display_name=>'Use Theme Colors'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(75401775815240655)
,p_css_classes=>'t-Cards--colorize'
,p_group_id=>wwv_flow_api.id(75403638156240656)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(75404083134240656)
,p_theme_id=>42
,p_name=>'BASIC'
,p_display_name=>'Basic'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(75403808213240656)
,p_css_classes=>'t-Comments--basic'
,p_group_id=>wwv_flow_api.id(75403950048240656)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(75404180525240656)
,p_theme_id=>42
,p_name=>'SPEECH_BUBBLES'
,p_display_name=>'Speech Bubbles'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(75403808213240656)
,p_css_classes=>'t-Comments--chat'
,p_group_id=>wwv_flow_api.id(75403950048240656)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(75404506465240657)
,p_theme_id=>42
,p_name=>'ALTROWCOLORSDISABLE'
,p_display_name=>'Disable'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(75404382326240657)
,p_css_classes=>'t-Report--staticRowColors'
,p_group_id=>wwv_flow_api.id(75404432573240657)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(75404676444240657)
,p_theme_id=>42
,p_name=>'ALTROWCOLORSENABLE'
,p_display_name=>'Enable'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(75404382326240657)
,p_css_classes=>'t-Report--altRowsDefault'
,p_group_id=>wwv_flow_api.id(75404432573240657)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(75404873897240657)
,p_theme_id=>42
,p_name=>'ENABLE'
,p_display_name=>'Enable'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(75404382326240657)
,p_css_classes=>'t-Report--rowHighlight'
,p_group_id=>wwv_flow_api.id(75404754915240657)
,p_template_types=>'REPORT'
,p_help_text=>'Enable row highlighting on mouse over'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(75405095829240657)
,p_theme_id=>42
,p_name=>'HORIZONTALBORDERS'
,p_display_name=>'Horizontal Only'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(75404382326240657)
,p_css_classes=>'t-Report--horizontalBorders'
,p_group_id=>wwv_flow_api.id(75404945681240657)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(75405183965240657)
,p_theme_id=>42
,p_name=>'REMOVEALLBORDERS'
,p_display_name=>'No Borders'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(75404382326240657)
,p_css_classes=>'t-Report--noBorders'
,p_group_id=>wwv_flow_api.id(75404945681240657)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(75405292053240657)
,p_theme_id=>42
,p_name=>'REMOVEOUTERBORDERS'
,p_display_name=>'No Outer Borders'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(75404382326240657)
,p_css_classes=>'t-Report--inline'
,p_group_id=>wwv_flow_api.id(75404945681240657)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(75405313070240657)
,p_theme_id=>42
,p_name=>'ROWHIGHLIGHTDISABLE'
,p_display_name=>'Disable'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(75404382326240657)
,p_css_classes=>'t-Report--rowHighlightOff'
,p_group_id=>wwv_flow_api.id(75404754915240657)
,p_template_types=>'REPORT'
,p_help_text=>'Disable row highlighting on mouse over'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(75405406004240657)
,p_theme_id=>42
,p_name=>'STRETCHREPORT'
,p_display_name=>'Stretch Report'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(75404382326240657)
,p_css_classes=>'t-Report--stretch'
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(75405554196240657)
,p_theme_id=>42
,p_name=>'VERTICALBORDERS'
,p_display_name=>'Vertical Only'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(75404382326240657)
,p_css_classes=>'t-Report--verticalBorders'
,p_group_id=>wwv_flow_api.id(75404945681240657)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(75405777665240658)
,p_theme_id=>42
,p_name=>'COMPACT'
,p_display_name=>'Compact'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_api.id(75405663490240657)
,p_css_classes=>'t-Timeline--compact'
,p_group_id=>wwv_flow_api.id(75402678500240655)
,p_template_types=>'REPORT'
,p_help_text=>'Displays a compact video of timeline with smaller font-sizes and fewer columns.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(75406045262240658)
,p_theme_id=>42
,p_name=>'FIXED_LARGE'
,p_display_name=>'Fixed - Large'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(75405827605240658)
,p_css_classes=>'t-AVPList--fixedLabelLarge'
,p_group_id=>wwv_flow_api.id(75405974338240658)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(75406189138240658)
,p_theme_id=>42
,p_name=>'FIXED_MEDIUM'
,p_display_name=>'Fixed - Medium'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(75405827605240658)
,p_css_classes=>'t-AVPList--fixedLabelMedium'
,p_group_id=>wwv_flow_api.id(75405974338240658)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(75406214881240658)
,p_theme_id=>42
,p_name=>'FIXED_SMALL'
,p_display_name=>'Fixed - Small'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(75405827605240658)
,p_css_classes=>'t-AVPList--fixedLabelSmall'
,p_group_id=>wwv_flow_api.id(75405974338240658)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(75406303168240658)
,p_theme_id=>42
,p_name=>'LEFT_ALIGNED_DETAILS'
,p_display_name=>'Left Aligned Details'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(75405827605240658)
,p_css_classes=>'t-AVPList--leftAligned'
,p_group_id=>wwv_flow_api.id(75400331282240654)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(75406477861240658)
,p_theme_id=>42
,p_name=>'RIGHT_ALIGNED_DETAILS'
,p_display_name=>'Right Aligned Details'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(75405827605240658)
,p_css_classes=>'t-AVPList--rightAligned'
,p_group_id=>wwv_flow_api.id(75400331282240654)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(75406531223240658)
,p_theme_id=>42
,p_name=>'VARIABLE_LARGE'
,p_display_name=>'Variable - Large'
,p_display_sequence=>60
,p_report_template_id=>wwv_flow_api.id(75405827605240658)
,p_css_classes=>'t-AVPList--variableLabelLarge'
,p_group_id=>wwv_flow_api.id(75405974338240658)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(75406654532240658)
,p_theme_id=>42
,p_name=>'VARIABLE_MEDIUM'
,p_display_name=>'Variable - Medium'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(75405827605240658)
,p_css_classes=>'t-AVPList--variableLabelMedium'
,p_group_id=>wwv_flow_api.id(75405974338240658)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(75406730720240659)
,p_theme_id=>42
,p_name=>'VARIABLE_SMALL'
,p_display_name=>'Variable - Small'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(75405827605240658)
,p_css_classes=>'t-AVPList--variableLabelSmall'
,p_group_id=>wwv_flow_api.id(75405974338240658)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(75406951493240659)
,p_theme_id=>42
,p_name=>'FIXED_LARGE'
,p_display_name=>'Fixed - Large'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(75406824624240659)
,p_css_classes=>'t-AVPList--fixedLabelLarge'
,p_group_id=>wwv_flow_api.id(75405974338240658)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(75407080032240659)
,p_theme_id=>42
,p_name=>'FIXED_MEDIUM'
,p_display_name=>'Fixed - Medium'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(75406824624240659)
,p_css_classes=>'t-AVPList--fixedLabelMedium'
,p_group_id=>wwv_flow_api.id(75405974338240658)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(75407107149240659)
,p_theme_id=>42
,p_name=>'FIXED_SMALL'
,p_display_name=>'Fixed - Small'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(75406824624240659)
,p_css_classes=>'t-AVPList--fixedLabelSmall'
,p_group_id=>wwv_flow_api.id(75405974338240658)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(75407223736240659)
,p_theme_id=>42
,p_name=>'LEFT_ALIGNED_DETAILS'
,p_display_name=>'Left Aligned Details'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(75406824624240659)
,p_css_classes=>'t-AVPList--leftAligned'
,p_group_id=>wwv_flow_api.id(75400331282240654)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(75407389995240661)
,p_theme_id=>42
,p_name=>'RIGHT_ALIGNED_DETAILS'
,p_display_name=>'Right Aligned Details'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(75406824624240659)
,p_css_classes=>'t-AVPList--rightAligned'
,p_group_id=>wwv_flow_api.id(75400331282240654)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(75407445972240661)
,p_theme_id=>42
,p_name=>'VARIABLE_LARGE'
,p_display_name=>'Variable - Large'
,p_display_sequence=>60
,p_report_template_id=>wwv_flow_api.id(75406824624240659)
,p_css_classes=>'t-AVPList--variableLabelLarge'
,p_group_id=>wwv_flow_api.id(75405974338240658)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(75407596712240661)
,p_theme_id=>42
,p_name=>'VARIABLE_MEDIUM'
,p_display_name=>'Variable - Medium'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(75406824624240659)
,p_css_classes=>'t-AVPList--variableLabelMedium'
,p_group_id=>wwv_flow_api.id(75405974338240658)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(75407626004240661)
,p_theme_id=>42
,p_name=>'VARIABLE_SMALL'
,p_display_name=>'Variable - Small'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(75406824624240659)
,p_css_classes=>'t-AVPList--variableLabelSmall'
,p_group_id=>wwv_flow_api.id(75405974338240658)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(75407911896240665)
,p_theme_id=>42
,p_name=>'2COLUMNGRID'
,p_display_name=>'2 Column Grid'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(75407792759240662)
,p_css_classes=>'t-BadgeList--cols'
,p_group_id=>wwv_flow_api.id(75407806473240665)
,p_template_types=>'LIST'
,p_help_text=>'Arrange badges in a two column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(75408054137240665)
,p_theme_id=>42
,p_name=>'3COLUMNGRID'
,p_display_name=>'3 Column Grid'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(75407792759240662)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--3cols'
,p_group_id=>wwv_flow_api.id(75407806473240665)
,p_template_types=>'LIST'
,p_help_text=>'Arrange badges in a 3 column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(75408101246240665)
,p_theme_id=>42
,p_name=>'4COLUMNGRID'
,p_display_name=>'4 Column Grid'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(75407792759240662)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--4cols'
,p_group_id=>wwv_flow_api.id(75407806473240665)
,p_template_types=>'LIST'
,p_help_text=>'Arrange badges in 4 column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(75408293530240665)
,p_theme_id=>42
,p_name=>'5COLUMNGRID'
,p_display_name=>'5 Column Grid'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(75407792759240662)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--5cols'
,p_group_id=>wwv_flow_api.id(75407806473240665)
,p_template_types=>'LIST'
,p_help_text=>'Arrange badges in a 5 column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(75408330083240665)
,p_theme_id=>42
,p_name=>'FIXED'
,p_display_name=>'Span Horizontally'
,p_display_sequence=>60
,p_list_template_id=>wwv_flow_api.id(75407792759240662)
,p_css_classes=>'t-BadgeList--fixed'
,p_group_id=>wwv_flow_api.id(75407806473240665)
,p_template_types=>'LIST'
,p_help_text=>'Span badges horizontally'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(75408414670240665)
,p_theme_id=>42
,p_name=>'FLEXIBLEBOX'
,p_display_name=>'Flexible Box'
,p_display_sequence=>80
,p_list_template_id=>wwv_flow_api.id(75407792759240662)
,p_css_classes=>'t-BadgeList--flex'
,p_group_id=>wwv_flow_api.id(75407806473240665)
,p_template_types=>'LIST'
,p_help_text=>'Use flexbox to arrange items'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(75408527861240665)
,p_theme_id=>42
,p_name=>'FLOATITEMS'
,p_display_name=>'Float Items'
,p_display_sequence=>70
,p_list_template_id=>wwv_flow_api.id(75407792759240662)
,p_css_classes=>'t-BadgeList--float'
,p_group_id=>wwv_flow_api.id(75407806473240665)
,p_template_types=>'LIST'
,p_help_text=>'Float badges to left'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(75408739513240665)
,p_theme_id=>42
,p_name=>'LARGE'
,p_display_name=>'64px'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(75407792759240662)
,p_css_classes=>'t-BadgeList--large'
,p_group_id=>wwv_flow_api.id(75408681238240665)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(75408818944240665)
,p_theme_id=>42
,p_name=>'MEDIUM'
,p_display_name=>'48px'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(75407792759240662)
,p_css_classes=>'t-BadgeList--medium'
,p_group_id=>wwv_flow_api.id(75408681238240665)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(75408949933240666)
,p_theme_id=>42
,p_name=>'RESPONSIVE'
,p_display_name=>'Responsive'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(75407792759240662)
,p_css_classes=>'t-BadgeList--responsive'
,p_template_types=>'LIST'
,p_help_text=>'Automatically resize badges to smaller sizes as screen becomes smaller.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(75409014303240666)
,p_theme_id=>42
,p_name=>'SMALL'
,p_display_name=>'32px'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(75407792759240662)
,p_css_classes=>'t-BadgeList--small'
,p_group_id=>wwv_flow_api.id(75408681238240665)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(75409113528240666)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stacked'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(75407792759240662)
,p_css_classes=>'t-BadgeList--stacked'
,p_group_id=>wwv_flow_api.id(75407806473240665)
,p_template_types=>'LIST'
,p_help_text=>'Stack badges on top of each other'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(75409215361240666)
,p_theme_id=>42
,p_name=>'XLARGE'
,p_display_name=>'96px'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(75407792759240662)
,p_css_classes=>'.t-BadgeList--xlarge'
,p_group_id=>wwv_flow_api.id(75408681238240665)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(75409307379240666)
,p_theme_id=>42
,p_name=>'XXLARGE'
,p_display_name=>'128px'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(75407792759240662)
,p_css_classes=>'t-BadgeList--xxlarge'
,p_group_id=>wwv_flow_api.id(75408681238240665)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(75409532346240666)
,p_theme_id=>42
,p_name=>'2_COLUMNS'
,p_display_name=>'2 Columns'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(75409413387240666)
,p_css_classes=>'t-Cards--cols'
,p_group_id=>wwv_flow_api.id(75407806473240665)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(75409701642240667)
,p_theme_id=>42
,p_name=>'2_LINES'
,p_display_name=>'2 Lines'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(75409413387240666)
,p_css_classes=>'t-Cards--desc-2ln'
,p_group_id=>wwv_flow_api.id(75409654377240667)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(75409805291240667)
,p_theme_id=>42
,p_name=>'3_COLUMNS'
,p_display_name=>'3 Columns'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(75409413387240666)
,p_css_classes=>'t-Cards--3cols'
,p_group_id=>wwv_flow_api.id(75407806473240665)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(75409936071240667)
,p_theme_id=>42
,p_name=>'3_LINES'
,p_display_name=>'3 Lines'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(75409413387240666)
,p_css_classes=>'t-Cards--desc-3ln'
,p_group_id=>wwv_flow_api.id(75409654377240667)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(75410036057240667)
,p_theme_id=>42
,p_name=>'4_COLUMNS'
,p_display_name=>'4 Columns'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(75409413387240666)
,p_css_classes=>'t-Cards--4cols'
,p_group_id=>wwv_flow_api.id(75407806473240665)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(75410135130240667)
,p_theme_id=>42
,p_name=>'4_LINES'
,p_display_name=>'4 Lines'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(75409413387240666)
,p_css_classes=>'t-Cards--desc-4ln'
,p_group_id=>wwv_flow_api.id(75409654377240667)
,p_template_types=>'LIST'
);
end;
/
begin
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(75410210718240667)
,p_theme_id=>42
,p_name=>'5_COLUMNS'
,p_display_name=>'5 Columns'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(75409413387240666)
,p_css_classes=>'t-Cards--5cols'
,p_group_id=>wwv_flow_api.id(75407806473240665)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(75410428102240667)
,p_theme_id=>42
,p_name=>'BASIC'
,p_display_name=>'Basic'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(75409413387240666)
,p_css_classes=>'t-Cards--basic'
,p_group_id=>wwv_flow_api.id(75410309243240667)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(75410595986240667)
,p_theme_id=>42
,p_name=>'COMPACT'
,p_display_name=>'Compact'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(75409413387240666)
,p_css_classes=>'t-Cards--compact'
,p_group_id=>wwv_flow_api.id(75410309243240667)
,p_template_types=>'LIST'
,p_help_text=>'Use this option when you want to show smaller cards.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(75410786017240667)
,p_theme_id=>42
,p_name=>'DISPLAY_ICONS'
,p_display_name=>'Display Icons'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(75409413387240666)
,p_css_classes=>'t-Cards--displayIcons'
,p_group_id=>wwv_flow_api.id(75410635275240667)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(75410884359240667)
,p_theme_id=>42
,p_name=>'DISPLAY_INITIALS'
,p_display_name=>'Display Initials'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(75409413387240666)
,p_css_classes=>'t-Cards--displayInitials'
,p_group_id=>wwv_flow_api.id(75410635275240667)
,p_template_types=>'LIST'
,p_help_text=>'Initials come from List Attribute 3'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(75410933155240667)
,p_theme_id=>42
,p_name=>'FEATURED'
,p_display_name=>'Featured'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(75409413387240666)
,p_css_classes=>'t-Cards--featured'
,p_group_id=>wwv_flow_api.id(75410309243240667)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(75411060540240667)
,p_theme_id=>42
,p_name=>'FLOAT'
,p_display_name=>'Float'
,p_display_sequence=>60
,p_list_template_id=>wwv_flow_api.id(75409413387240666)
,p_css_classes=>'t-Cards--float'
,p_group_id=>wwv_flow_api.id(75407806473240665)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(75411127651240667)
,p_theme_id=>42
,p_name=>'HIDDEN_BODY_TEXT'
,p_display_name=>'Hidden'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(75409413387240666)
,p_css_classes=>'t-Cards--hideBody'
,p_group_id=>wwv_flow_api.id(75409654377240667)
,p_template_types=>'LIST'
,p_help_text=>'This option hides the card body which contains description and subtext.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(75411294321240668)
,p_theme_id=>42
,p_name=>'SPAN_HORIZONTALLY'
,p_display_name=>'Span Horizontally'
,p_display_sequence=>70
,p_list_template_id=>wwv_flow_api.id(75409413387240666)
,p_css_classes=>'t-Cards--spanHorizontally'
,p_group_id=>wwv_flow_api.id(75407806473240665)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(75411494946240668)
,p_theme_id=>42
,p_name=>'USE_THEME_COLORS'
,p_display_name=>'Use Theme Colors'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(75409413387240666)
,p_css_classes=>'t-Cards--colorize'
,p_group_id=>wwv_flow_api.id(75411358450240668)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(75411651513240668)
,p_theme_id=>42
,p_name=>'ACTIONS'
,p_display_name=>'Actions'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(75411574985240668)
,p_css_classes=>'t-LinksList--actions'
,p_group_id=>wwv_flow_api.id(75410309243240667)
,p_template_types=>'LIST'
,p_help_text=>'Render as actions to be placed on the right side column.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(75411748493240668)
,p_theme_id=>42
,p_name=>'DISABLETEXTWRAPPING'
,p_display_name=>'Disable Text Wrapping'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(75411574985240668)
,p_css_classes=>'t-LinksList--nowrap'
,p_template_types=>'LIST'
,p_help_text=>'Do not allow link text to wrap to new lines. Truncate with ellipsis.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(75411815898240668)
,p_theme_id=>42
,p_name=>'SHOWBADGES'
,p_display_name=>'Show Badges'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(75411574985240668)
,p_css_classes=>'t-LinksList--showBadge'
,p_template_types=>'LIST'
,p_help_text=>'Show badge to right of link (requires Attribute 1 to be populated)'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(75411917517240668)
,p_theme_id=>42
,p_name=>'SHOWGOTOARROW'
,p_display_name=>'Show Right Arrow'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(75411574985240668)
,p_css_classes=>'t-LinksList--showArrow'
,p_template_types=>'LIST'
,p_help_text=>'Show arrow to the right of link'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(75412120683240668)
,p_theme_id=>42
,p_name=>'SHOWICONS'
,p_display_name=>'For All Items'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(75411574985240668)
,p_css_classes=>'t-LinksList--showIcons'
,p_group_id=>wwv_flow_api.id(75412036479240668)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(75412247801240668)
,p_theme_id=>42
,p_name=>'SHOWTOPICONS'
,p_display_name=>'For Top Level Items Only'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(75411574985240668)
,p_css_classes=>'t-LinksList--showTopIcons'
,p_group_id=>wwv_flow_api.id(75412036479240668)
,p_template_types=>'LIST'
,p_help_text=>'This will show icons for top level items of the list only. It will not show icons for sub lists.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(75412484157240669)
,p_theme_id=>42
,p_name=>'2COLUMNGRID'
,p_display_name=>'2 Column Grid'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(75412398146240668)
,p_css_classes=>'t-MediaList--cols t-MediaList--2cols'
,p_group_id=>wwv_flow_api.id(75407806473240665)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(75412518356240669)
,p_theme_id=>42
,p_name=>'3COLUMNGRID'
,p_display_name=>'3 Column Grid'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(75412398146240668)
,p_css_classes=>'t-MediaList--cols t-MediaList--3cols'
,p_group_id=>wwv_flow_api.id(75407806473240665)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(75412625657240669)
,p_theme_id=>42
,p_name=>'4COLUMNGRID'
,p_display_name=>'4 Column Grid'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(75412398146240668)
,p_css_classes=>'t-MediaList--cols t-MediaList--4cols'
,p_group_id=>wwv_flow_api.id(75407806473240665)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(75412768494240669)
,p_theme_id=>42
,p_name=>'5COLUMNGRID'
,p_display_name=>'5 Column Grid'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(75412398146240668)
,p_css_classes=>'t-MediaList--cols t-MediaList--5cols'
,p_group_id=>wwv_flow_api.id(75407806473240665)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(75412819925240669)
,p_theme_id=>42
,p_name=>'SHOW_BADGES'
,p_display_name=>'Show Badges'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(75412398146240668)
,p_css_classes=>'t-MediaList--showBadges'
,p_template_types=>'LIST'
,p_help_text=>'Show a badge (Attribute 2) to the right of the list item.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(75412935589240669)
,p_theme_id=>42
,p_name=>'SHOW_DESCRIPTION'
,p_display_name=>'Show Description'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(75412398146240668)
,p_css_classes=>'t-MediaList--showDesc'
,p_template_types=>'LIST'
,p_help_text=>'Shows the description (Attribute 1) for each list item.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(75413068395240669)
,p_theme_id=>42
,p_name=>'SHOW_ICONS'
,p_display_name=>'Show Icons'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(75412398146240668)
,p_css_classes=>'t-MediaList--showIcons'
,p_template_types=>'LIST'
,p_help_text=>'Shows an icon for each list item.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(75413188105240669)
,p_theme_id=>42
,p_name=>'SPANHORIZONTAL'
,p_display_name=>'Span Horizontal'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(75412398146240668)
,p_css_classes=>'t-MediaList--horizontal'
,p_group_id=>wwv_flow_api.id(75407806473240665)
,p_template_types=>'LIST'
,p_help_text=>'Show all list items in one horizontal row.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(75413301801240669)
,p_theme_id=>42
,p_name=>'ADD_ACTIONS'
,p_display_name=>'Add Actions'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(75413209292240669)
,p_css_classes=>'js-addActions'
,p_template_types=>'LIST'
,p_help_text=>'Use this option to add shortcuts for menu items. Note that actions.js must be included on your page to support this functionality.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(75413414125240669)
,p_theme_id=>42
,p_name=>'BEHAVE_LIKE_TABS'
,p_display_name=>'Behave Like Tabs'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(75413209292240669)
,p_css_classes=>'js-tabLike'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(75413533725240669)
,p_theme_id=>42
,p_name=>'ENABLE_SLIDE_ANIMATION'
,p_display_name=>'Enable Slide Animation'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(75413209292240669)
,p_css_classes=>'js-slide'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(75413606379240669)
,p_theme_id=>42
,p_name=>'SHOW_SUB_MENU_ICONS'
,p_display_name=>'Show Sub Menu Icons'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(75413209292240669)
,p_css_classes=>'js-showSubMenuIcons'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(75414109351240670)
,p_theme_id=>42
,p_name=>'ABOVE_LABEL'
,p_display_name=>'Above Label'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(75414017490240670)
,p_css_classes=>'t-Tabs--iconsAbove'
,p_group_id=>wwv_flow_api.id(75410635275240667)
,p_template_types=>'LIST'
,p_help_text=>'Places icons above tab label.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(75414213088240670)
,p_theme_id=>42
,p_name=>'FILL_LABELS'
,p_display_name=>'Fill Labels'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(75414017490240670)
,p_css_classes=>'t-Tabs--fillLabels'
,p_group_id=>wwv_flow_api.id(75407806473240665)
,p_template_types=>'LIST'
,p_help_text=>'Stretch tabs to fill to the width of the tabs container.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(75414383740240670)
,p_theme_id=>42
,p_name=>'INLINE_WITH_LABEL'
,p_display_name=>'Inline with Label'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(75414017490240670)
,p_css_classes=>'t-Tabs--inlineIcons'
,p_group_id=>wwv_flow_api.id(75410635275240667)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(75414540285240670)
,p_theme_id=>42
,p_name=>'LARGE'
,p_display_name=>'Large'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(75414017490240670)
,p_css_classes=>'t-Tabs--large'
,p_group_id=>wwv_flow_api.id(75414452631240670)
,p_template_types=>'LIST'
,p_help_text=>'Increases font size and white space around tab items.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(75414685989240670)
,p_theme_id=>42
,p_name=>'PILL'
,p_display_name=>'Pill'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(75414017490240670)
,p_css_classes=>'t-Tabs--pill'
,p_group_id=>wwv_flow_api.id(75410309243240667)
,p_template_types=>'LIST'
,p_help_text=>'Displays tabs in a pill container.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(75414731928240670)
,p_theme_id=>42
,p_name=>'SIMPLE'
,p_display_name=>'Simple'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(75414017490240670)
,p_css_classes=>'t-Tabs--simple'
,p_group_id=>wwv_flow_api.id(75410309243240667)
,p_template_types=>'LIST'
,p_help_text=>'A very simplistic tab UI.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(75414824866240670)
,p_theme_id=>42
,p_name=>'SMALL'
,p_display_name=>'Small'
,p_display_sequence=>5
,p_list_template_id=>wwv_flow_api.id(75414017490240670)
,p_css_classes=>'t-Tabs--small'
,p_group_id=>wwv_flow_api.id(75414452631240670)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(75415094548240671)
,p_theme_id=>42
,p_name=>'ADD_ACTIONS'
,p_display_name=>'Add Actions'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(75414919455240670)
,p_css_classes=>'js-addActions'
,p_template_types=>'LIST'
,p_help_text=>'Use this option to add shortcuts for menu items. Note that actions.js must be included on your page to support this functionality.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(75415196084240671)
,p_theme_id=>42
,p_name=>'BEHAVE_LIKE_TABS'
,p_display_name=>'Behave Like Tabs'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(75414919455240670)
,p_css_classes=>'js-tabLike'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(75415275628240671)
,p_theme_id=>42
,p_name=>'ENABLE_SLIDE_ANIMATION'
,p_display_name=>'Enable Slide Animation'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(75414919455240670)
,p_css_classes=>'js-slide'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(75415304905240671)
,p_theme_id=>42
,p_name=>'SHOW_SUB_MENU_ICONS'
,p_display_name=>'Show Sub Menu Icons'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(75414919455240670)
,p_css_classes=>'js-showSubMenuIcons'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(75415610654240671)
,p_theme_id=>42
,p_name=>'ALLSTEPS'
,p_display_name=>'All Steps'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(75415451841240671)
,p_css_classes=>'t-WizardSteps--displayLabels'
,p_group_id=>wwv_flow_api.id(75415508177240671)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(75415760263240671)
,p_theme_id=>42
,p_name=>'CURRENTSTEPONLY'
,p_display_name=>'Current Step Only'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(75415451841240671)
,p_css_classes=>'t-WizardSteps--displayCurrentLabelOnly'
,p_group_id=>wwv_flow_api.id(75415508177240671)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(75415864547240671)
,p_theme_id=>42
,p_name=>'HIDELABELS'
,p_display_name=>'Hide Labels'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(75415451841240671)
,p_css_classes=>'t-WizardSteps--hideLabels'
,p_group_id=>wwv_flow_api.id(75415508177240671)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(75416898053240682)
,p_theme_id=>42
,p_name=>'LEFTICON'
,p_display_name=>'Left'
,p_display_sequence=>10
,p_button_template_id=>wwv_flow_api.id(75416692676240682)
,p_css_classes=>'t-Button--iconLeft'
,p_group_id=>wwv_flow_api.id(75416735114240682)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(75416903388240682)
,p_theme_id=>42
,p_name=>'RIGHTICON'
,p_display_name=>'Right'
,p_display_sequence=>20
,p_button_template_id=>wwv_flow_api.id(75416692676240682)
,p_css_classes=>'t-Button--iconRight'
,p_group_id=>wwv_flow_api.id(75416735114240682)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(75417888178240695)
,p_theme_id=>42
,p_name=>'DANGER'
,p_display_name=>'Danger'
,p_display_sequence=>30
,p_css_classes=>'t-Button--danger'
,p_group_id=>wwv_flow_api.id(75417718695240695)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(75418016070240695)
,p_theme_id=>42
,p_name=>'LARGELEFTMARGIN'
,p_display_name=>'Large Left Margin'
,p_display_sequence=>20
,p_css_classes=>'t-Button--gapLeft'
,p_group_id=>wwv_flow_api.id(75417981939240695)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(75418248512240695)
,p_theme_id=>42
,p_name=>'LARGERIGHTMARGIN'
,p_display_name=>'Large Right Margin'
,p_display_sequence=>20
,p_css_classes=>'t-Button--gapRight'
,p_group_id=>wwv_flow_api.id(75418113580240695)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(75418420155240695)
,p_theme_id=>42
,p_name=>'LARGE'
,p_display_name=>'Large'
,p_display_sequence=>20
,p_css_classes=>'t-Button--large'
,p_group_id=>wwv_flow_api.id(75418300190240695)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(75418626459240695)
,p_theme_id=>42
,p_name=>'NOUI'
,p_display_name=>'Remove UI Decoration'
,p_display_sequence=>20
,p_css_classes=>'t-Button--noUI'
,p_group_id=>wwv_flow_api.id(75418528364240695)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(75418739873240695)
,p_theme_id=>42
,p_name=>'SMALLLEFTMARGIN'
,p_display_name=>'Small Left Margin'
,p_display_sequence=>10
,p_css_classes=>'t-Button--padLeft'
,p_group_id=>wwv_flow_api.id(75417981939240695)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(75418834684240695)
,p_theme_id=>42
,p_name=>'SMALLRIGHTMARGIN'
,p_display_name=>'Small Right Margin'
,p_display_sequence=>10
,p_css_classes=>'t-Button--padRight'
,p_group_id=>wwv_flow_api.id(75418113580240695)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(75419060586240695)
,p_theme_id=>42
,p_name=>'PILL'
,p_display_name=>'Inner Button'
,p_display_sequence=>20
,p_css_classes=>'t-Button--pill'
,p_group_id=>wwv_flow_api.id(75418917558240695)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(75419170487240695)
,p_theme_id=>42
,p_name=>'PILLEND'
,p_display_name=>'Last Button'
,p_display_sequence=>30
,p_css_classes=>'t-Button--pillEnd'
,p_group_id=>wwv_flow_api.id(75418917558240695)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(75419213635240696)
,p_theme_id=>42
,p_name=>'PILLSTART'
,p_display_name=>'First Button'
,p_display_sequence=>10
,p_css_classes=>'t-Button--pillStart'
,p_group_id=>wwv_flow_api.id(75418917558240695)
,p_template_types=>'BUTTON'
,p_help_text=>'Use this for the start of a pill button.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(75419308754240696)
,p_theme_id=>42
,p_name=>'PRIMARY'
,p_display_name=>'Primary'
,p_display_sequence=>10
,p_css_classes=>'t-Button--primary'
,p_group_id=>wwv_flow_api.id(75417718695240695)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(75419411986240696)
,p_theme_id=>42
,p_name=>'SIMPLE'
,p_display_name=>'Simple'
,p_display_sequence=>10
,p_css_classes=>'t-Button--simple'
,p_group_id=>wwv_flow_api.id(75418528364240695)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(75419533395240696)
,p_theme_id=>42
,p_name=>'SMALL'
,p_display_name=>'Small'
,p_display_sequence=>10
,p_css_classes=>'t-Button--small'
,p_group_id=>wwv_flow_api.id(75418300190240695)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(75419793134240696)
,p_theme_id=>42
,p_name=>'STRETCH'
,p_display_name=>'Stretch'
,p_display_sequence=>10
,p_css_classes=>'t-Button--stretch'
,p_group_id=>wwv_flow_api.id(75419672748240696)
,p_template_types=>'BUTTON'
,p_help_text=>'Stretches button to fill container'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(75419847939240696)
,p_theme_id=>42
,p_name=>'SUCCESS'
,p_display_name=>'Success'
,p_display_sequence=>40
,p_css_classes=>'t-Button--success'
,p_group_id=>wwv_flow_api.id(75417718695240695)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(75419992007240696)
,p_theme_id=>42
,p_name=>'WARNING'
,p_display_name=>'Warning'
,p_display_sequence=>20
,p_css_classes=>'t-Button--warning'
,p_group_id=>wwv_flow_api.id(75417718695240695)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(75420104405240696)
,p_theme_id=>42
,p_name=>'SHOWFORMLABELSABOVE'
,p_display_name=>'Show Form Labels Above'
,p_display_sequence=>10
,p_css_classes=>'t-Form--labelsAbove'
,p_group_id=>wwv_flow_api.id(75420009154240696)
,p_template_types=>'REGION'
,p_help_text=>'Show form labels above input fields.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(75420331442240696)
,p_theme_id=>42
,p_name=>'FORMSIZELARGE'
,p_display_name=>'Large'
,p_display_sequence=>10
,p_css_classes=>'t-Form--large'
,p_group_id=>wwv_flow_api.id(75420203057240696)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(75420545929240696)
,p_theme_id=>42
,p_name=>'FORMLEFTLABELS'
,p_display_name=>'Left'
,p_display_sequence=>20
,p_css_classes=>'t-Form--leftLabels'
,p_group_id=>wwv_flow_api.id(75420418195240696)
,p_template_types=>'REGION'
,p_help_text=>'Align form labels to left.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(75420768429240697)
,p_theme_id=>42
,p_name=>'FORMREMOVEPADDING'
,p_display_name=>'Remove Padding'
,p_display_sequence=>20
,p_css_classes=>'t-Form--noPadding'
,p_group_id=>wwv_flow_api.id(75420653645240696)
,p_template_types=>'REGION'
,p_help_text=>'Removes padding between items.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(75420829216240697)
,p_theme_id=>42
,p_name=>'FORMSLIMPADDING'
,p_display_name=>'Slim Padding'
,p_display_sequence=>10
,p_css_classes=>'t-Form--slimPadding'
,p_group_id=>wwv_flow_api.id(75420653645240696)
,p_template_types=>'REGION'
,p_help_text=>'Reduces form item padding to 4px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(75421090828240697)
,p_theme_id=>42
,p_name=>'STRETCH_FORM_FIELDS'
,p_display_name=>'Stretch Form Fields'
,p_display_sequence=>10
,p_css_classes=>'t-Form--stretchInputs'
,p_group_id=>wwv_flow_api.id(75420995048240697)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(75421174336240697)
,p_theme_id=>42
,p_name=>'FORMSIZEXLARGE'
,p_display_name=>'X Large'
,p_display_sequence=>20
,p_css_classes=>'t-Form--xlarge'
,p_group_id=>wwv_flow_api.id(75420203057240696)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(75421335071240697)
,p_theme_id=>42
,p_name=>'LARGE_FIELD'
,p_display_name=>'Large'
,p_display_sequence=>10
,p_css_classes=>'t-Form-fieldContainer--large'
,p_group_id=>wwv_flow_api.id(75421270286240697)
,p_template_types=>'FIELD'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(75421495625240697)
,p_theme_id=>42
,p_name=>'STRETCH_FORM_ITEM'
,p_display_name=>'Stretch Form Item'
,p_display_sequence=>10
,p_css_classes=>'t-Form-fieldContainer--stretchInputs'
,p_template_types=>'FIELD'
,p_help_text=>'Stretches the form item to fill its container.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(75421583778240697)
,p_theme_id=>42
,p_name=>'X_LARGE_SIZE'
,p_display_name=>'X Large'
,p_display_sequence=>20
,p_css_classes=>'t-Form-fieldContainer--xlarge'
,p_group_id=>wwv_flow_api.id(75421270286240697)
,p_template_types=>'FIELD'
);
end;
/
prompt --application/shared_components/logic/build_options
begin
null;
end;
/
prompt --application/shared_components/globalization/language
begin
null;
end;
/
prompt --application/shared_components/globalization/translations
begin
null;
end;
/
prompt --application/shared_components/globalization/messages
begin
null;
end;
/
prompt --application/shared_components/globalization/dyntranslations
begin
null;
end;
/
prompt --application/shared_components/user_interface/shortcuts
begin
null;
end;
/
prompt --application/shared_components/security/authentications
begin
wwv_flow_api.create_authentication(
 p_id=>wwv_flow_api.id(75421946745240701)
,p_name=>'Application Express Authentication'
,p_scheme_type=>'NATIVE_APEX_ACCOUNTS'
,p_invalid_session_type=>'LOGIN'
,p_use_secure_cookie_yn=>'N'
,p_ras_mode=>0
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
,p_display_name=>'GeoHeatMap'
,p_supported_ui_types=>'DESKTOP:JQM_SMARTPHONE'
,p_image_prefix => nvl(wwv_flow_application_install.get_static_plugin_file_prefix('REGION TYPE','COM.JK64.HEATMAP'),'')
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
'    ) RETURN APEX_APPLICATION_GLOBAL.VC_ARR2 IS',
'',
'    l_data   APEX_APPLICATION_GLOBAL.VC_ARR2;',
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
'        ,p_max_rows       => p_region.fetched_rows);',
'  ',
'    FOR i IN 1..l_column_value_list(1).count LOOP',
'  ',
'        l_lat   := TO_NUMBER(l_column_value_list(1)(i));',
'        l_lng   := TO_NUMBER(l_column_value_list(2)(i));',
'        l_count := TO_NUMBER(l_column_value_list(3)(i));',
'        ',
'        -- minimise size of data to be sent',
'        l_data(NVL(l_data.LAST,0)+1) :=',
'             ''{"a":'' || TO_CHAR(l_lat, ''fm990.0999999999999999'')',
'          || '',"b":'' || TO_CHAR(l_lng, ''fm990.0999999999999999'')',
'          || '',"c":''  || TO_CHAR(l_count, ''fm9999990'')',
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
'PROCEDURE htp_arr (arr IN APEX_APPLICATION_GLOBAL.VC_ARR2) IS',
'BEGIN',
'    FOR i IN 1..arr.COUNT LOOP',
'        -- use prn to avoid loading a whole lot of unnecessary \n characters',
'        sys.htp.prn(CASE WHEN i > 1 THEN '','' END || arr(i));',
'    END LOOP;',
'END htp_arr;',
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
'    l_region       VARCHAR2(100);',
'    l_script       VARCHAR2(32767);',
'    l_data         APEX_APPLICATION_GLOBAL.VC_ARR2;',
'    l_lat_min      NUMBER;',
'    l_lat_max      NUMBER;',
'    l_lng_min      NUMBER;',
'    l_lng_max      NUMBER;',
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
'    l_mapstyle      plugin_attr := p_region.attribute_06;',
'    ',
'    FUNCTION js_params RETURN VARCHAR2 IS',
'        buf VARCHAR2(1000);',
'    BEGIN',
'    ',
'        IF l_api_key IS NOT NULL THEN',
'            buf := ''key='' || l_api_key;',
'            IF l_sign_in = ''Y'' THEN',
'                buf := buf || ''&''||''signed_in=true'';',
'            END IF;',
'        END IF;',
'      ',
'        -- load library required for heatmap feature',
'        buf := buf || CASE WHEN buf IS NOT NULL THEN ''&'' END',
'          || ''libraries=visualization'';',
'    ',
'        RETURN ''?'' || buf;',
'    END js_params;',
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
'    APEX_JAVASCRIPT.add_library',
'      (p_name           => ''js'' || js_params',
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
'    IF l_data.COUNT = 0 THEN',
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
'    sys.htp.p(REPLACE(l_script,''#REGION#'',l_region));',
'    htp_arr(l_data);',
'    l_script := ''];',
'  jk64plugin_initMap(opt_#REGION#);',
'  apex.jQuery("##REGION#").bind("apexrefresh", function(){jk64plugin_refreshMap(opt_#REGION#);});',
'});',
'</script>'';',
'    sys.htp.p(REPLACE(l_script,''#REGION#'',l_region));',
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
'    l_result       APEX_PLUGIN.t_region_ajax_result;',
'',
'    l_data         APEX_APPLICATION_GLOBAL.VC_ARR2;',
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
'    APEX_DEBUG.message(''ajax'');',
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
'    IF l_data.COUNT = 0 THEN',
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
'    APEX_DEBUG.message(''l_lat_min=''||l_lat_min||'' data=''||l_data.COUNT);',
'    ',
'    sys.htp.p(''{"southwest":{''',
'      || latlng2ch(l_lat_min,l_lng_min)',
'      || ''},"northeast":{''',
'      || latlng2ch(l_lat_max,l_lng_max)',
'      || ''},"mapdata":['');',
'    htp_arr(l_data);',
'    sys.htp.p('']}'');',
'    ',
'    APEX_DEBUG.message(''ajax finished'');',
'    RETURN l_result;',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_DEBUG.error(SQLERRM);',
'        sys.htp.p(''{"error":"''||sqlerrm||''"}'');',
'END ajax;'))
,p_render_function=>'render_map'
,p_ajax_function=>'ajax'
,p_standard_attributes=>'SOURCE_SQL:SOURCE_REQUIRED:AJAX_ITEMS_TO_SUBMIT:FETCHED_ROWS'
,p_sql_min_column_count=>3
,p_sql_max_column_count=>3
,p_sql_examples=>'SELECT lat, lng, weight FROM mytable;'
,p_substitute_attributes=>true
,p_subscribe_plugin_settings=>true
,p_help_text=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'This plugin takes a SQL query with nothing but a whole lot of lat,lng pairs, along with a weighting value, and plots them on a Google Map using the "Heatmap" visualisation. If you don''t have any weighting data, just set that third column to 1 for eac'
||'h record and it''ll work fine; however if you have a lot of data points, see if you can reduce the volume of data by grouping them by lat,lng and use count(*) for the weight. You might want to reduce the precision for the latitude and longitude values'
||' somewhat so that they are more likely to get grouped together.',
'<p>',
'<strong>Don''t forget to set the <em>Number of Rows</em> attribute on your region to the maximum rows you expect to get from the query, e.g. 1000 or more.</strong>',
'<p>',
'Play with the dissipating and radius plugin attributes until you''re happy with the result.',
'<p>',
'If you want, you can change the default map style, e.g. to show the map in greyscale (which helps to make the heatmap easier to see) - see help under the <strong>Map Style</strong> attribute for more details.'))
,p_version_identifier=>'0.1'
,p_about_url=>'https://github.com/jeffreykemp/jk64-plugin-heatmap'
,p_files_version=>23
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(75440994636877765)
,p_plugin_id=>wwv_flow_api.id(75424330494277385)
,p_attribute_scope=>'APPLICATION'
,p_attribute_sequence=>1
,p_display_sequence=>10
,p_prompt=>'Google API Key'
,p_attribute_type=>'TEXT'
,p_is_required=>false
,p_is_translatable=>false
,p_help_text=>'Optional. If you don''t set this, you may get a "Google Maps API warning: NoApiKeys" warning in the console log. You can add this later if required. Refer: https://developers.google.com/maps/documentation/javascript/get-api-key#get-an-api-key'
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
wwv_flow_api.g_varchar2_table(1) := '66756E6374696F6E206A6B3634706C7567696E5F686561746D6170286F707429207B0D0A09617065782E6465627567286F70742E726567696F6E49642B2220686561746D617022293B0D0A0976617220707473203D205B5D3B0D0A09666F722028766172';
wwv_flow_api.g_varchar2_table(2) := '2069203D20303B2069203C206F70742E6D6170646174612E6C656E6774683B20692B2B29207B0D0A09097074732E70757368287B0D0A0909096C6F636174696F6E3A6E657720676F6F676C652E6D6170732E4C61744C6E67286F70742E6D617064617461';
wwv_flow_api.g_varchar2_table(3) := '5B695D2E612C206F70742E6D6170646174615B695D2E62292C0D0A0909097765696768743A6F70742E6D6170646174615B695D2E630D0A09097D293B0D0A097D0D0A096F70742E686561746D6170203D206E657720676F6F676C652E6D6170732E766973';
wwv_flow_api.g_varchar2_table(4) := '75616C697A6174696F6E2E486561746D61704C61796572287B0D0A0909646174613A207074732C0D0A09096D61703A206F70742E6D61702C0D0A09096469737369706174696E673A206F70742E6469737369706174696E672C0D0A09096F706163697479';
wwv_flow_api.g_varchar2_table(5) := '3A206F70742E6F7061636974792C0D0A09097261646975733A206F70742E7261646975730D0A097D293B0D0A7D0D0A66756E6374696F6E206A6B3634706C7567696E5F696E69744D6170286F707429207B0D0A09617065782E6465627567286F70742E72';
wwv_flow_api.g_varchar2_table(6) := '6567696F6E49642B2220696E69744D617022293B0D0A09766172206D794F7074696F6E73203D207B0D0A09097A6F6F6D3A20322C0D0A20202020202020206D61705479706549643A20676F6F676C652E6D6170732E4D61705479706549642E524F41444D';
wwv_flow_api.g_varchar2_table(7) := '41500D0A097D3B0D0A096F70742E6D6170203D206E657720676F6F676C652E6D6170732E4D617028646F63756D656E742E676574456C656D656E7442794964286F70742E636F6E7461696E6572292C6D794F7074696F6E73293B0D0A09696620286F7074';
wwv_flow_api.g_varchar2_table(8) := '2E6D61707374796C6529207B0D0A09096F70742E6D61702E7365744F7074696F6E73287B7374796C65733A206F70742E6D61707374796C657D293B0D0A097D0D0A096F70742E6D61702E666974426F756E6473286E657720676F6F676C652E6D6170732E';
wwv_flow_api.g_varchar2_table(9) := '4C61744C6E67426F756E6473286F70742E736F757468776573742C6F70742E6E6F7274686561737429293B0D0A096A6B3634706C7567696E5F686561746D6170286F7074293B0D0A09617065782E6465627567286F70742E726567696F6E49642B222069';
wwv_flow_api.g_varchar2_table(10) := '6E69744D61702066696E697368656422293B0D0A09617065782E6A5175657279282223222B6F70742E726567696F6E4964292E7472696767657228226D61706C6F61646564222C207B6D61703A6F70742E6D61707D293B0D0A7D0D0A66756E6374696F6E';
wwv_flow_api.g_varchar2_table(11) := '206A6B3634706C7567696E5F726566726573684D6170286F707429207B0D0A2020617065782E6465627567286F70742E726567696F6E49642B2220726566726573684D617022293B0D0A2020617065782E6A5175657279282223222B6F70742E72656769';
wwv_flow_api.g_varchar2_table(12) := '6F6E4964292E747269676765722822617065786265666F72657265667265736822293B0D0A2020617065782E7365727665722E706C7567696E0D0A20202020286F70742E616A61784964656E7469666965720D0A202020202C7B20706167654974656D73';
wwv_flow_api.g_varchar2_table(13) := '3A206F70742E616A61784974656D73207D0D0A202020202C7B2064617461547970653A20226A736F6E220D0A2020202020202C737563636573733A2066756E6374696F6E282070446174612029207B0D0A09092020617065782E6465627567286F70742E';
wwv_flow_api.g_varchar2_table(14) := '726567696F6E49642B22207375636365737322293B0D0A20202020202020202020617065782E6465627567286F70742E726567696F6E49642B222070446174612E736F757468776573743D222B70446174612E736F757468776573742E6C61742B222C22';
wwv_flow_api.g_varchar2_table(15) := '2B70446174612E736F757468776573742E6C6E672B222070446174612E6E6F727468656173743D222B70446174612E6E6F727468656173742E6C61742B222C222B70446174612E6E6F727468656173742E6C6E67293B0D0A202020202020202020206F70';
wwv_flow_api.g_varchar2_table(16) := '742E6D61702E666974426F756E6473280D0A2020202020202020202020207B736F7574683A70446174612E736F757468776573742E6C61740D0A2020202020202020202020202C776573743A2070446174612E736F757468776573742E6C6E670D0A2020';
wwv_flow_api.g_varchar2_table(17) := '202020202020202020202C6E6F7274683A70446174612E6E6F727468656173742E6C61740D0A2020202020202020202020202C656173743A2070446174612E6E6F727468656173742E6C6E677D293B0D0A20202020202020202020617065782E64656275';
wwv_flow_api.g_varchar2_table(18) := '67286F70742E726567696F6E49642B222072656D6F766520686561746D617022293B0D0A090920206F70742E686561746D61702E64656C6574653B0D0A20202020202020202020617065782E6465627567286F70742E726567696F6E49642B2220704461';
wwv_flow_api.g_varchar2_table(19) := '74612E6D6170646174612E6C656E6774683D222B70446174612E6D6170646174612E6C656E677468293B0D0A202020202020202020206F70742E6D617064617461203D2070446174612E6D6170646174613B0D0A202020202020202020206A6B3634706C';
wwv_flow_api.g_varchar2_table(20) := '7567696E5F686561746D6170286F7074293B0D0A20202020202020202020617065782E6A5175657279282223222B6F70742E726567696F6E4964292E7472696767657228226170657861667465727265667265736822293B0D0A202020202020207D0D0A';
wwv_flow_api.g_varchar2_table(21) := '20202020207D20293B0D0A2020617065782E6465627567286F70742E726567696F6E49642B2220726566726573684D61702066696E697368656422293B0D0A7D0D0A';
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
prompt --application/user_interfaces
begin
wwv_flow_api.create_user_interface(
 p_id=>wwv_flow_api.id(75421779607240699)
,p_ui_type_name=>'DESKTOP'
,p_display_name=>'Desktop'
,p_display_seq=>10
,p_use_auto_detect=>false
,p_is_default=>true
,p_theme_id=>42
,p_home_url=>'f?p=&APP_ID.:1:&SESSION.'
,p_login_url=>'f?p=&APP_ID.:LOGIN_DESKTOP:&SESSION.'
,p_navigation_list_id=>wwv_flow_api.id(75379363059240615)
,p_navigation_list_position=>'SIDE'
,p_navigation_list_template_id=>wwv_flow_api.id(75413949609240669)
,p_nav_list_template_options=>'#DEFAULT#'
,p_nav_bar_type=>'LIST'
,p_nav_bar_list_id=>wwv_flow_api.id(75421662034240698)
,p_nav_bar_list_template_id=>wwv_flow_api.id(75413883218240669)
,p_nav_bar_template_options=>'#DEFAULT#'
);
end;
/
prompt --application/user_interfaces/combined_files
begin
null;
end;
/
prompt --application/pages/page_00001
begin
wwv_flow_api.create_page(
 p_id=>1
,p_user_interface_id=>wwv_flow_api.id(75421779607240699)
,p_name=>'Home'
,p_page_mode=>'NORMAL'
,p_step_title=>'Home'
,p_step_sub_title=>'Home'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_page_template_options=>'#DEFAULT#'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_help_text=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'Query used is:',
'',
'<pre>select lat, lng, mag from earthquakes;</pre>',
'',
'Map style taken from <a href="https://snazzymaps.com/style/4183/mostly-grayscale">https://snazzymaps.com/style/4183/mostly-grayscale</a>.',
'',
'<p>',
'',
'For info and downloads refer to: <a href="&REPOSITORY.">&REPOSITORY.</a>'))
,p_last_updated_by=>'JEFF'
,p_last_upd_yyyymmddhh24miss=>'20160319170143'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(70255491314092623)
,p_plug_name=>'GeoHeatmap Plugin'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(75395504608240645)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>'select lat, lng, mag from earthquakes;'
,p_plug_source_type=>'PLUGIN_COM.JK64.HEATMAP'
,p_plug_query_num_rows=>10000
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'400'
,p_attribute_02=>'Y'
,p_attribute_03=>'Y'
,p_attribute_04=>'0.6'
,p_attribute_05=>'30'
,p_attribute_06=>'[{"featureType":"administrative","elementType":"all","stylers":[{"visibility":"on"},{"lightness":33}]},{"featureType":"administrative","elementType":"labels","stylers":[{"saturation":"-100"}]},{"featureType":"administrative","elementType":"labels.tex'
||'t","stylers":[{"gamma":"0.75"}]},{"featureType":"administrative.neighborhood","elementType":"labels.text.fill","stylers":[{"lightness":"-37"}]},{"featureType":"landscape","elementType":"geometry","stylers":[{"color":"#f9f9f9"}]},{"featureType":"lands'
||'cape.man_made","elementType":"geometry","stylers":[{"saturation":"-100"},{"lightness":"40"},{"visibility":"off"}]},{"featureType":"landscape.natural","elementType":"labels.text.fill","stylers":[{"saturation":"-100"},{"lightness":"-37"}]},{"featureTyp'
||'e":"landscape.natural","elementType":"labels.text.stroke","stylers":[{"saturation":"-100"},{"lightness":"100"},{"weight":"2"}]},{"featureType":"landscape.natural","elementType":"labels.icon","stylers":[{"saturation":"-100"}]},{"featureType":"poi","el'
||'ementType":"geometry","stylers":[{"saturation":"-100"},{"lightness":"80"}]},{"featureType":"poi","elementType":"labels","stylers":[{"saturation":"-100"},{"lightness":"0"}]},{"featureType":"poi.attraction","elementType":"geometry","stylers":[{"lightne'
||'ss":"-4"},{"saturation":"-100"}]},{"featureType":"poi.park","elementType":"geometry","stylers":[{"color":"#c5dac6"},{"visibility":"on"},{"saturation":"-95"},{"lightness":"62"}]},{"featureType":"poi.park","elementType":"labels","stylers":[{"visibility'
||'":"on"},{"lightness":20}]},{"featureType":"road","elementType":"all","stylers":[{"lightness":20}]},{"featureType":"road","elementType":"labels","stylers":[{"saturation":"-100"},{"gamma":"1.00"}]},{"featureType":"road","elementType":"labels.text","sty'
||'lers":[{"gamma":"0.50"}]},{"featureType":"road","elementType":"labels.icon","stylers":[{"saturation":"-100"},{"gamma":"0.50"}]},{"featureType":"road.highway","elementType":"geometry","stylers":[{"color":"#c5c6c6"},{"saturation":"-100"}]},{"featureTyp'
||'e":"road.highway","elementType":"geometry.stroke","stylers":[{"lightness":"-13"}]},{"featureType":"road.highway","elementType":"labels.icon","stylers":[{"lightness":"0"},{"gamma":"1.09"}]},{"featureType":"road.arterial","elementType":"geometry","styl'
||'ers":[{"color":"#e4d7c6"},{"saturation":"-100"},{"lightness":"47"}]},{"featureType":"road.arterial","elementType":"geometry.stroke","stylers":[{"lightness":"-12"}]},{"featureType":"road.arterial","elementType":"labels.icon","stylers":[{"saturation":"'
||'-100"}]},{"featureType":"road.local","elementType":"geometry","stylers":[{"color":"#fbfaf7"},{"lightness":"77"}]},{"featureType":"road.local","elementType":"geometry.fill","stylers":[{"lightness":"-5"},{"saturation":"-100"}]},{"featureType":"road.loc'
||'al","elementType":"geometry.stroke","stylers":[{"saturation":"-100"},{"lightness":"-15"}]},{"featureType":"transit.station.airport","elementType":"geometry","stylers":[{"lightness":"47"},{"saturation":"-100"}]},{"featureType":"water","elementType":"a'
||'ll","stylers":[{"visibility":"on"},{"color":"#acbcc9"}]},{"featureType":"water","elementType":"geometry","stylers":[{"saturation":"53"}]},{"featureType":"water","elementType":"labels.text.fill","stylers":[{"lightness":"-42"},{"saturation":"17"}]},{"f'
||'eatureType":"water","elementType":"labels.text.stroke","stylers":[{"lightness":"61"}]}]'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(70256064867092629)
,p_plug_name=>'Notes'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(75395504608240645)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source_type=>'NATIVE_HELP_TEXT'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(70255775833092626)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(70255491314092623)
,p_button_name=>'REFRESH'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--noUI'
,p_button_template_id=>wwv_flow_api.id(75416458285240673)
,p_button_image_alt=>'Refresh'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_button_execute_validations=>'N'
,p_icon_css_classes=>'fa-refresh'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(70255816372092627)
,p_name=>'click'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(70255775833092626)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(70255980122092628)
,p_event_id=>wwv_flow_api.id(70255816372092627)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(70255491314092623)
);
end;
/
prompt --application/pages/page_00101
begin
wwv_flow_api.create_page(
 p_id=>101
,p_user_interface_id=>wwv_flow_api.id(75421779607240699)
,p_name=>'Login Page'
,p_alias=>'LOGIN_DESKTOP'
,p_page_mode=>'NORMAL'
,p_step_title=>'Heatmap Plugin Demo - Log In'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>wwv_flow_api.id(75381394481240625)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'Y'
,p_cache_mode=>'NOCACHE'
,p_last_updated_by=>'JEFF'
,p_last_upd_yyyymmddhh24miss=>'20160317212818'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(75422254833240705)
,p_plug_name=>'Heatmap Plugin Demo'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(75395504608240645)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_source=>'Login as demo / demo'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(75422508693240707)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(75422254833240705)
,p_button_name=>'LOGIN'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(75416532850240681)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Log In'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_alignment=>'LEFT'
,p_grid_new_grid=>false
,p_grid_new_row=>'Y'
,p_grid_new_column=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(75422319042240707)
,p_name=>'P101_USERNAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(75422254833240705)
,p_prompt=>'Username'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>40
,p_cMaxlength=>100
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(75416048727240673)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(75422467583240707)
,p_name=>'P101_PASSWORD'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(75422254833240705)
,p_prompt=>'Password'
,p_display_as=>'NATIVE_PASSWORD'
,p_cSize=>40
,p_cMaxlength=>100
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(75416048727240673)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(75422701465240711)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Set Username Cookie'
,p_process_sql_clob=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'apex_authentication.send_login_username_cookie (',
'    p_username => lower(:P101_USERNAME) );'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(75422608417240711)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Login'
,p_process_sql_clob=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'apex_authentication.login(',
'    p_username => :P101_USERNAME,',
'    p_password => :P101_PASSWORD );'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(75422925303240711)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'Clear Page(s) Cache'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(75422848054240711)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get Username Cookie'
,p_process_sql_clob=>':P101_USERNAME := apex_authentication.get_login_username_cookie;'
);
end;
/
prompt --application/deployment/definition
begin
wwv_flow_api.create_install(
 p_id=>wwv_flow_api.id(75476712171952531)
,p_deinstall_script_clob=>'drop table earthquakes;'
,p_required_free_kb=>100
,p_required_sys_privs=>'CREATE TABLE'
,p_required_names_available=>'EARTHQUAKES'
);
end;
/
prompt --application/deployment/install
begin
wwv_flow_api.create_install_script(
 p_id=>wwv_flow_api.id(75477078542955772)
,p_install_id=>wwv_flow_api.id(75476712171952531)
,p_name=>'earthquake-data.sql'
,p_sequence=>10
,p_script_type=>'INSTALL'
,p_script_clob=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'--------------------------------------------------------',
'--  File created - Saturday-March-19-2016   ',
'--------------------------------------------------------',
'--------------------------------------------------------',
'--  DDL for Table EARTHQUAKES',
'--------------------------------------------------------',
'',
'  CREATE TABLE "EARTHQUAKES" ',
'   (	"LAT" NUMBER, ',
'	"LNG" NUMBER, ',
'	"MAG" NUMBER',
'   ) ;',
'REM INSERTING into EARTHQUAKES',
'SET DEFINE OFF;',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.5556667,-116.539,0.15);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (34.032,-117.5196667,0.86);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.5228,-148.9646,1.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.5403333,-116.6871667,0.13);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.9065,-115.7945,0.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (61.8656,-147.7232,1.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.1662,-99.1597,2.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (60.2244,-148.1824,1.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (34.4916,46.8808,4.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.8419,-148.9656,1.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.0677,-118.7098,0.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.7981,-116.1845,-0.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.7505,-116.2458,-0.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.741,-116.2816,-0.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (51.0895,-174.2613,4.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (39.351,-119.97,0);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (41.8705,-119.6411,0.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.9195,-97.8114,2.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.1841667,-115.603,1.52);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (61.5017,-150.002,2.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (51.7678,-173.625,4.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.7219,-116.3125,-0.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.45,-118.3966,-0.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.4491667,-116.7223333,0.72);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.7175,-116.3216,0.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (60.0643,-152.1097,1.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (51.3832,-174.1391,4.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (60.5764,-143.2731,1.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (51.1191,-173.9733,4.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.6212,-116.0463,0.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.9334,-97.8142,2.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (51.5125,-174.2341,6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (61.2922,-146.6615,1.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (26.9583,126.8319,4.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (51.3796,-174.2654,5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.2462,-118.3391,0.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.6528333,-116.731,0.37);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (39.3528,-119.9708,-0.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (39.3538,-119.9842,1.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.1886667,-120.1753333,1.96);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.8985,70.9119,4.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (39.3601,-119.9745,0.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (39.3487,-119.9541,0.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.149,-117.9386667,0.62);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (18.114,-67.0037,1.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.1488333,-117.9365,0.77);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (34.3593333,-116.4616667,1.58);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (47.723,-120.1855,1.98);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8968333,-123.274,1.33);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.6254,-116.0475,-0.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (19.0326,-64.2324,3.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (34.0005,-116.7028333,1.29);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (46.1938333,-122.1905,0.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (32.6626667,-118.105,2.97);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.6198,-116.045,0.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.6183,-116.0486,0.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (28.9015,143.0875,5.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (39.3665,-122.8491667,1.93);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (-10.1886,160.9229,5.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.6152,-116.0462,1.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (19.2278333,-155.2651667,1.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (61.155,-150.1308,1.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.8849,-152.3733,1.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (61.6327,-150.9324,2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (51.4927,-173.52,3.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.7484,-116.2738,0.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.2296667,-118.3286667,1.41);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (34.1681667,-117.2566667,1.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.868,-116.7946667,0.83);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8175,-122.8196667,0.47);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (39.9027,-120.1941,0.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (32.8436667,-116.2688333,1.84);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (61.4607,-150.2943,1.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (62.5152,-151.6307,1.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (-12.4869,166.5309,5.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.2993333,-116.7546667,0.67);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (62.4749,-149.6711,1.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.452,-98.77,1.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5568333,-118.8616667,0.23);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.9396,-153.4533,2.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (64.1715,-145.4306,1.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (51.5589,-173.5284,4.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (18.6268,-63.731,3.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.0987,-116.2265,0);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (32.5975,-115.7185,2.16);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (40.4988333,-123.9386667,1.95);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (-56.3566,-27.2826,5.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (39.3405,-123.2256667,1.73);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (34.1096667,-117.4738333,1.27);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.2818333,-115.7036667,1.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.79,-116.1711667,0.73);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.5994,-150.5163,1.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (39.3413333,-123.2268333,1.74);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (35.9508333,-117.6643333,0.48);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.0936,-117.8931,1.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (42.8353333,-78.2403333,1.72);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.6463333,-118.9121667,0.36);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.6376667,-118.9283333,0.33);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (51.6237,-173.6057,5.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.2602,-117.5041,0.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (51.4712,-174.3164,2.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (51.2802,-173.8761,3.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (61.8182,-149.0931,0.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.31,-151.7883,1.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.5565,-121.1513333,1.75);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.4362,-98.7835,1.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.4341,-98.7895,2.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (34.0401667,-117.5813333,0.84);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (64.6971,-149.2514,0.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.5271,-118.3594,0);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.5455,-122.2686667,1.12);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.2605,-117.5786,0.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (34.0186667,-116.7001667,0.72);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.322,-122.1468333,1.27);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (51.5417,-173.4723,3.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (60.3568,-147.6611,1.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.5221,-118.3658,-0.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (34.2641667,-117.0288333,1.45);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (39.0227,-118.1554,0.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (46.1983333,-122.1691667,0.11);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5703333,-118.8616667,0.65);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.1911,-118.5144,-0.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (60.2858,-152.151,1.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.1581,-118.5094,0);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (39.3496,-119.9668,0.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (39.3589,-119.981,0.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (39.333,-119.9197,0.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (39.3433,-119.9229,-0.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (39.6245,-119.8232,0.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (61.7978,-150.422,1.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (26.5184,126.765,4.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.7568333,-122.7233333,1.26);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (19.426,-155.616,3.17);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (40.4686667,-121.5441667,0.72);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.7583333,-122.724,1.36);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (39.3553,-119.983,0.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (64.9561,-147.4433,1.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (47.2945,-122.2895,1.65);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (34.1686667,-117.2545,1.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.2223,-99.2081,3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (39.3609,-119.9799,0.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (39.3503,-119.9753,0.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (39.352,-119.9818,1.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (39.353,-119.9792,1.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (61.9309,-150.8735,2.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (49.6789,-129.8176,5.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (39.3525,-119.982,2.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (39.358,-119.9802,1.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.6582,-153.253,2.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.084,-117.8918333,0.86);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (39.3598,-119.9807,0.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.7968333,-122.7625,2.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (60.9582,-147.935,1.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (32.5405,-117.0381667,1.89);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (61.7032,-147.2618,1.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5448333,-118.8741667,-0.08);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.2241667,-122.3243333,1.51);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (32.8443333,-116.2655,1.31);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8196667,-122.7788333,0.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.4728333,-116.6008333,1.25);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.3457,-116.4912,1.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.8526667,-117.4916667,1.34);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (39.3592,-119.9796,1.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (39.353,-119.9746,0.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (48.5451667,-121.595,0.96);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (19.3043333,-155.3581667,1.14);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (35.5069,-96.9814,2.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.7616667,-122.5613333,1.14);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (60.3117,-140.2813,1.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5758333,-118.6878333,1.19);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (47.5265,-122.341,1.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.586,-116.8126667,0.35);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.7387,-153.1678,3.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (34.0525,-117.3553333,0.98);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (67.873,-149.1311,2.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.1816667,-117.1705,0.97);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (39.3601,-119.9803,0.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (34.9881667,-118.2001667,1.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (39.7846,-120.7068,0.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (35.0518333,-118.3528333,1.04);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5688333,-118.8563333,0.18);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.3228333,-122.1016667,1.32);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.8908333,-121.622,1.68);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.1355,-115.5975,1.56);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8163333,-122.8075,1.04);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (39.7683,-120.7094,0.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.2613,-99.1336,2.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.5875,-116.806,0.36);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8173333,-122.8206667,1.03);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5791667,-118.8685,0.07);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (39.8435,-123.568,1.08);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (19.5101662,-155.9941711,1.75);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.6244,-116.0456,0.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (61.4743,-146.9579,1.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (19.2738333,-155.2006667,1.76);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.7555,-122.74,0.61);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.6231,-116.047,-0.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5693333,-118.8578333,1.16);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.566,-118.8546667,0.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.2096667,-120.16,1.91);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (62.8245,-149.5875,3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.967,72.4553,5.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.1932,-99.1831,2.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (64.8782,-147.4728,0.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8456667,-122.824,1.76);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.87,-117.5035,1.27);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (46.285,-123.5131667,1.27);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.3335,-118.56,0.96);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (43.3983333,-123.1493333,1.56);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (9.4103,-84.5984,3.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (35.4395,-118.3473333,1.28);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (24.3279,125.2302,4.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.488,-116.4356667,0.58);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8143333,-122.8148333,1.71);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (35.44,-118.3501667,2.62);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (35.4373333,-118.3491667,1.99);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.7234,-117.2055,-0.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (45.992,-112.4606667,1.55);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (19.1321667,-155.554,1.83);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (35.9513333,-117.6625,1.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (39.4356,142.2475,4.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (35.4386667,-118.351,1.16);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.766,-152.916,1.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (17.9521,-67.1094,1.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (60.1468,-153.0213,3.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (44.5991667,-114.112,1.94);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.943,-151.5989,1.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.1687,-115.3211,0.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.3246667,-122.1008333,1.81);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (19.1305,-66.848,2.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (35.4386667,-118.351,1.63);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (35.9518333,-117.6646667,1.47);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.4558,-151.3347,1.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (34.648,-117.2715,1.05);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.2105,-115.5786667,1.44);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (35.951,-117.666,0.63);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.4016,-116.862,0.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (35.0545,-118.3493333,1.28);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (39.6999,-120.151,0.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (44.6653333,-109.998,1.91);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.44,-98.7794,1.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8045,-122.8126667,1.52);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (29.6388,102.0728,4.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (34.6393333,-117.2976667,1.27);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.4761667,-116.4925,0.66);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (40.4585,-121.5178333,0.18);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (34.0272,78.1066,4.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.6741667,-121.3066667,1.85);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (41.4695,-112.3451667,0.72);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (46.1916667,-122.1945,0.53);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (64.4785,-149.4355,1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.7366,-116.2863,-0.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.9548333,-121.5728333,2.21);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.3132,-119.2524,1.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.6436667,-119.0305,-0.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.4749,-98.7316,1.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (34.0971667,-116.3815,1.75);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (64.9743,-147.3326,1.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (51.1422,-173.4944,4.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.4371,-98.7861,1.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.5242,-98.5907,2.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.7295,-116.3015,-0.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.8251,-98.297,2.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8065,-122.8186667,0.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (62.1398,-151.2684,1.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (15.0973,120.0171,4.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (49.0723333,-122.2456667,1.02);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (60.1337,-141.399,1.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.6258333,-116.6763333,0.79);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.4442,-147.4532,1.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.5883,-118.3746,0.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.4356,-98.7915,1.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (48.1143333,-115.1096667,0.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (19.4271667,-155.6073333,3.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.4548,-98.7717,1.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8151667,-122.8171667,0.14);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (60.8233,-151.6046,1.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (44.79,-111.5278333,1.16);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (19.216,-155.5403333,1.37);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (60.8571,-152.0497,2.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.0693,-115.1094,1.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (35.4403333,-118.347,1.28);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (34.8455,-118.7745,1.34);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (40.2252,-119.7075,0.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.242,-118.6343,1.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.1775,-115.6038333,1.73);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.4557,-98.7729,2.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.999,-116.3703333,1.13);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.8603333,-117.526,0.97);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (40.2431,-119.7045,0.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.8586667,-117.5161667,0.78);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8256667,-122.7858333,0.14);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8273333,-122.8306667,0.37);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (35.9223333,-117.6723333,2.04);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.9425,-151.0724,1.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.4018,-116.8419,0.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.5536,-150.8075,1.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.5,-116.4895,0.79);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (61.08,-149.3168,1.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.4978333,-116.4913333,1.07);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (46.6358,147.3827,4.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.6593333,-121.662,1.34);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.7457,-153.1423,2.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (35.4815,-120.596,1.52);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.7513333,-121.5975,1.23);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (46.9261667,-114.4641667,1.61);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (62.4235,-152.0194,2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (35.0596667,-118.3545,1.85);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.1758333,-115.601,1.86);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.1755,-115.6036667,2.14);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.9888333,-117.1781667,1.37);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (2.2218,127.1602,4.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.0246,-117.8398,0.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.1051667,-120.1858333,1.39);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.556,-118.8108333,0.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.5546667,-121.1358333,1.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (39.7001,-120.1565,0.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (47.163,-121.954,1.15);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.973,-123.024,0.95);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (19.4146667,-155.6086667,0.63);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.3554,-117.719,0.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.3497,-117.0833,0.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.4558,-98.762,1.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (35.4383333,-118.348,2.42);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.4696667,-120.5615,2.02);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (34.3381667,-116.8815,1.08);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (61.7203,-148.5226,0.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (40.1393333,-121.1213333,1.93);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (60.03,-152.6587,1.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.4989,-151.2654,1.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.642,-116.708,1.07);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.1275,-115.6091667,1.42);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.7486,-152.7621,1.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (-6.1367,128.7449,4.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8348333,-122.7958333,0.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (58.3047,-150.8523,2.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (40.19,-121.5511667,1.57);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.2403,-143.9634,1.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (46.4023333,-122.7371667,0.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (35.952,-117.6633333,0.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (35.9518333,-117.6636667,1.63);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.5245,-116.736,1.77);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.0256,-151.6495,2.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (1.0093,97.4662,4.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (39.9398,-117.8667,1.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (39.5898,-120.6919,0.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.2087,-151.4213,1.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.4859,-98.7099,1.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.2952,-151.7351,1.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (-6.682,104.1799,5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (61.3875,-150.6801,1.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (46.8526667,-121.7526667,0.78);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.4446667,-116.5918333,0.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.839,-122.829,1.01);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (34.042,-116.6305,0.96);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (34.0375,-116.6281667,1.93);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.4943,-118.4194,-0.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.6413333,-118.9723333,0.33);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8093333,-122.8151667,0.29);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.6328333,-118.9706667,0.48);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (17.3733,-94.7967,4.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.4366,-98.7831,1.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.4395,-98.784,1.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (61.2998,-146.8422,1.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (62.8212,-148.8045,1.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (65.1891,-150.0638,1.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (43.7476667,-114.7233333,0.99);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.7196667,-116.7311667,0.39);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8106667,-122.8271667,0.25);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (61.242,-147.704,1.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (61.4462,-146.6329,1.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.663,-121.2836667,1.48);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (45.8946667,-112.0245,-0.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (39.6376667,-111.5735,1.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (39.5876667,-111.5423333,1.35);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.7523,-153.1126,2.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (32.975,-116.2705,1.68);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.5223,-148.9418,1.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.2545,-115.6531667,1.68);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.3506,-117.4069,0.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.7961667,-122.7321667,1.03);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (40.4995,-124.2488333,2.31);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.9595,-118.7115,1.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (60.8628,-151.0353,2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.2236667,-116.7326667,1.01);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (64.8036,-149.218,0.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (64.6462,-149.2329,1.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.5171,-98.596,1.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.505,-118.4014,0.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (64.3596,-149.3013,0.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8093333,-122.8283333,0.41);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.0873,-115.1396,0.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.8233,-152.919,2.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.81,-122.8286667,1.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (62.0636,-150.3997,1.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.4507,-98.7645,1.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.81,-122.8246667,1.59);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (39.3584,-119.9786,0.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.2058333,-116.7275,0.53);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (19.4015,-155.6261667,0.73);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (61.877,-150.5096,1.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.4595,-98.78,1.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8068333,-122.8238333,1.44);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.4928333,-116.4741667,0.84);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.4968333,-116.4825,0.29);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.81,-122.8261667,2.53);',
'Insert into EARTHQUAKES (L'))
);
wwv_flow_api.append_to_install_script(
 p_id=>wwv_flow_api.id(75477078542955772)
,p_script_clob=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'AT,LNG,MAG) values (34.0176667,-116.7043333,1.93);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.4099,-118.7486,0.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8101667,-122.8223333,2.76);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (40.1228,-121.0888,0.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8305,-122.8066667,0.34);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (40.4691667,-121.5183333,0.24);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.554,-118.857,0.72);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (64.6892,-149.3994,0.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5705,-118.8568333,0.89);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (60.9386,-151.4071,1.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (61.763,-151.9178,2.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5723333,-118.8603333,0.22);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (-4.8815,145.4828,4.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5703333,-118.8581667,1.83);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (34.382,-116.1443333,0.74);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (35.925,-117.6705,0.92);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (34.3066667,-116.8583333,0.61);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (61.353,-146.3515,1.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (44.4566667,-110.9215,0.61);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.8263,-98.2778,2.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (39.3579,-119.9777,0.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.3526,-117.0654,0.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.8284,-98.2843,3.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8218333,-122.8466667,0.14);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.9333,-152.9308,2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (64.7613,-148.9043,1.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.3594,-117.2962,0.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (53.5485,-167.3062,2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.7805,-122.7585,-0.12);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (35.5541,-116.6398,0.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (64.7252,-147.4858,0.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (42.1471667,-111.1813333,1.73);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.4848333,-116.4056667,0.57);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.791,-115.9277,-0.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8076667,-122.7703333,1.22);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8096667,-122.7698333,1.24);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (19.3778333,-155.2808333,1.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (19.3793333,-155.2806667,2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (61.0682,-149.3054,1.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (34.9265,-118.9873333,1.92);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (34.9213333,-118.9858333,1.16);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (54.9192,-159.9624,3.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (18.9179,-64.4038,3.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (18.593,-67.4735,2.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (65.6109,-149.9196,1.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (35.7533333,-120.3001667,0.78);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (61.425,-146.4584,1.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (34.0228333,-117.2411667,1.01);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (65.9268,-149.7691,1.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5998333,-119.0006667,-0.04);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.7841,-114.253,0.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (55.9598,110.0523,4.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (18.0445,-64.8095,3.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.576,-118.8548333,0.04);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5691667,-118.8623333,0.64);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5745,-118.8565,-0.02);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5691667,-118.8533333,0.15);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.9028,-150.2254,0.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.6386667,-118.9456667,0.57);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (35.3348333,-118.5546667,2.23);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.4499,-98.7727,2.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (35.3465,-118.5671667,2.55);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (35.3325,-118.5521667,3.11);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (35.3326667,-118.5535,1.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.2228333,-89.5113333,1.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.1952,-151.4458,1.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (35.443,-118.3506667,1.23);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (35.7721667,-117.673,0.88);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (62.2092,-149.3045,1.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (34.5135,-119.0988333,1.42);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.7515,-121.2886667,1.86);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (64.714,-147.5966,0.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8888333,-123.2963333,1.34);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (18.811,-65.0005,2.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (39.3469,-119.9545,0.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (51.506,-174.2775,2.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (19.0371667,-155.3716667,3.12);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.7975,-122.807,0.43);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8198333,-122.8146667,0.25);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (40.5403333,-121.7586667,0.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (19.3663333,-155.4458333,1.52);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (44.3103333,-122.3706667,1.66);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.5035,-151.2706,1.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.7608333,-122.6253333,1.07);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.3035,-151.4061,2.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.8123333,-116.167,0.97);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (66.7913,-162.9327,2.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (51.5373,-174.3088,2.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (34.0318333,-117.5201667,0.63);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (35.0055,-116.9536667,1.81);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (18.9955,-66.975,3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.4516,-98.772,2.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.1369,-152.3735,2.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.5409,-147.6683,1.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (19.2391663,-155.4356689,1.93);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (41.9522,-120.1733,1.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8005,-122.85,0.36);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (34.103,-116.9536667,0.94);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (-4.5642,153.052,5.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (18.5049,-66.345,2.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (-22.279,171.4232,5.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.4801,-151.2657,1.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8028333,-122.8511667,0.11);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.1043333,-117.961,0.87);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (64.9983,-147.3396,1.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (64.9776,-147.3374,1.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5868333,-118.9906667,0.06);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (41.8863,-119.6212,1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.0076667,-112.231,1.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (39.7957,-117.616,2.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (48.8693333,-122.203,1.09);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (46.193,-122.195,-0.39);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (34.0285,-116.8468333,1.11);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (46.1941667,-122.1945,0.04);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (39.403,-119.5605,0.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.5018,-151.2547,2.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (34.0993333,-116.955,1.08);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.6331667,-118.8778333,1.12);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.577,-118.8686667,0.62);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (40.0523,-119.6533,0.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (56.722,-154.1635,3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.7871667,-122.7423333,1.25);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.4643,-98.7492,1.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (64.6323,-150.3051,0.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.4394,-118.3897,0);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.2187,-151.3306,1.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.1696667,-112.815,1.31);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (51.9804,-174.4177,1.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (64.1968,-148.0878,1.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (39.3471,-119.9696,0.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (58.4811,-150.8014,1.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (61.3881,-151.4043,1.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.5354,-118.4591,1.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (34.06,-117.0898333,1.18);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (34.3451667,-116.8525,1.36);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (46.1511667,-122.166,0.75);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.416,-118.3382,0.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (34.5113333,-119.0916667,1.05);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (60.4053,-148.0056,1.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.0577,-114.9835,1.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (43.7185,-110.2036667,1.52);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.0561,-115.0375,1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.821,-122.7791667,0.23);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8203333,-122.8238333,1.43);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.2076,-152.4442,1.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (61.3818,-146.759,1.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (64.0962,-148.4795,1.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (64.5277,-149.3483,0.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.8913333,-116.2405,0.96);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.0703,-153.2193,1.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (60.1996,-151.2402,0.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (51.5075,-173.5952,2.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (-19.8458,-175.5558,4.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (60.9032,-150.5714,1.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.9943333,-97.8338333,2.06);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (18.7978,-64.4616,2.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.1378,-116.7477,-0.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (60.2062,-141.1469,1.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (46.197,-122.1863333,0.67);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.4605,-116.7415,0.39);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.4735,-112.302,0.66);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8056667,-122.7701667,1.45);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.6429,-149.9192,1.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (-56.0197,-27.1575,5.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.3834,-149.5686,1.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.2563333,-118.3936667,1.65);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (62.3004,-150.0173,1.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (39.7386667,-111.2153333,1.69);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.9425,-116.9895,1.15);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.2496667,-118.391,2.84);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (61.0559,-151.9402,1.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (35.5418333,-120.2598333,2.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (44.7275,-111.0316667,0.59);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.4005,-116.423,0.68);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.6666667,-118.8771667,0.18);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (65.0395,-148.7719,1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (39.4206,-120.5536,0.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5835,-118.8526667,-0.08);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.4691667,-112.3021667,1.02);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (64.0833,-148.4795,1.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5786667,-118.8558333,0);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.5314,-150.9643,1.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (39.4059,-120.5732,1.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8401667,-122.827,1.33);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (17.8036,-65.6039,2.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (35.3248333,-117.5301667,1.34);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (39.0015,-118.5355,1.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (61.8874,-149.2307,1.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.7025,-153.3412,1.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (39.9036,-120.4433,0.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (61.0946,-150.9976,1.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.6517,-97.2508,2.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (35.7309,-116.5127,0.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (51.5691,-173.6245,4.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (19.21,-155.2695,1.84);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (49.4946667,-116.858,2.03);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.6481,-97.2718,2.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.4076,-152.6592,2.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (61.9529,-147.3804,1.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (61.8796,-149.1352,0.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.6665,-116.7143333,0.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (46.5913333,-121.7668333,2.35);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (46.6,-121.758,2.15);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (39.4295,-119.7837,1.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.3248,-147.7133,1.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (62.9001,-152.7655,1.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.562,-121.072,2.46);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.6285,-152.242,2.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.4751,-118.5106,-0.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5663333,-118.8521667,0.21);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (35.2188,-3.6951,4.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.0659,-150.9298,1.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (41.04,141.9066,4.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (-5.2436,151.8892,4.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.9164,-97.9872,3.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.8327,-148.6981,1.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8146667,-122.8233333,0.55);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.8596,-98.1493,2.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.2881,-151.1199,1.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (-4.5988,133.9954,4.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.837,-122.83,-0.12);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8366667,-122.8285,2.02);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.7242,-116.2065,-0.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8206667,-122.8445,0.35);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (51.1878,-179.9196,3.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (47.9281667,-121.5743333,1.39);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (19.394,-155.7935,1.23);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.7433333,-122.695,0.79);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.7475,-122.6991667,1.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.5583,-119.5023,1.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.549,-147.6657,1.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.823,-122.824,0.34);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8255,-122.8251667,0.12);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (46.198,-122.1815,0.36);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8228333,-122.8241667,1.15);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8236667,-122.8246667,1.19);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8231667,-122.8246667,0.94);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (34.0153333,-116.7641667,0.75);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (58.884,-141.5828,2.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (46.1598333,-122.1965,0.33);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.5692,-147.7445,3.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.822,-122.7973333,1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.2827,-150.5399,1.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8215,-122.7978333,0.85);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (44.5515,-114.5081667,1.62);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (19.2145,-64.7949,3.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (39.5821,-119.7482,-0.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (-11.9041,118.3536,4.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8228333,-122.8415,0.34);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (4.6516,125.0784,5.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (64.9626,-148.3875,0.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (60.844,-149.8159,1.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (4.6628,125.0683,5.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.4381,-98.7822,1.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.4683,-98.7479,1.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (35.1321667,-118.247,1.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.5189,-98.6917,2.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.6375,-118.9388333,0.59);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.4484,-98.7691,1.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5683333,-118.8563333,0.86);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (46.9481667,-121.97,0.51);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (-9.075,-109.0229,4.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (62.4683,-149.2187,1.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.2402,-118.3171,0.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.2305,-151.0187,1.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (64.0384,-147.4433,1.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.3541,-117.7195,0.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5711667,-118.8585,1.22);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.4808333,-119.6498333,1.67);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.2235,-116.0811667,1.68);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.6311667,-116.681,0.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5686667,-118.8541667,0.22);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (39.7365,-111.2391667,1.42);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (62.0615,-149.0494,1.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5615,-118.8848333,0.21);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (-17.584,-178.8432,4.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (-58.8838,-23.5191,5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (-55.7087,146.7441,5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5723333,-118.8391667,-0.01);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (35.4406667,-118.3501667,1.37);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (18.002,-66.505,2.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.712,-119.5864,1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.1881667,-118.0931667,1.48);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (62.9131,-151.255,1.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.6045,-116.7415,0.37);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (62.1804,-148.2845,1.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.5536667,-89.8616667,2.23);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (39.67,-120.375,-0.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5688333,-118.8605,0.51);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.2931667,-118.5,1.08);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (39.3517,-119.978,0.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (64.7152,-147.6346,0.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (17.9272,-66.2652,2.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.7059,-119.5958,1.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (47.3075,-122.2561667,0.92);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.496,-118.4143,0.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.7297,-116.3072,-0.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (39.3529,-119.9814,0.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.4721667,-118.818,1.56);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (35.3893333,-118.2061667,0.83);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5763333,-118.8646667,0.07);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5716667,-118.8571667,1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (39.3463,-119.9656,0.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.577,-118.8665,0.17);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (47.2045,-121.8923333,1.02);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (19.405,-155.6353333,0.97);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.8242,-98.2728,3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.815,-122.8181667,1.43);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.6025,-112.8217,1.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (64.7911,-148.7517,1.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.5349,-118.4546,0.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (64.3558,-147.1708,1.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (19.4183333,-155.609,0.61);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (34.5361667,-118.9906667,2.43);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.4414,-147.7612,1.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.194,-118.088,1.22);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.7027,-153.1945,2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (19.0347,-66.72,2.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.5095,-118.5067,-0.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5168333,-118.4201667,0.81);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.6613333,-116.777,0.63);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.6581667,-116.7763333,0.57);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (34.156,-116.8136667,2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.7031,-119.5918,1.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (46.3371667,-122.3551667,0.47);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (64.593,-149.5026,0.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (-31.2371,-71.678,5.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.1905,-118.0891667,1.21);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (44.773,-111.1886667,-0.11);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (62.8242,-149.5063,1.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (61.0893,-146.5479,1.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (19.435,-155.611,0.64);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.1843333,-118.0841667,2.47);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (18.2821,-63.5923,2.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (61.7607,-148.1967,1.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (41.86,-119.5751,1.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.5285,-153.087,2.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (62.9177,-149.7958,1.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (64.8043,-147.8043,0.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (45.7951667,-122.45,1.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.819,-122.7996667,1.76);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.4333,-116.2554,0.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.0033333,-112.4245,1.31);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.5234,-147.2963,1.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.8928333,-116.239,0.72);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (39.321,-120.5679,0.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (39.6346667,-122.0248333,1.45);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.6365,-121.2465,1.28);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.599,-118.882,0.38);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.208,-118.0465,1.14);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.21,-118.0483333,1.41);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.7469,-153.0867,2.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.4309,-152.4142,1.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (47.8695,-113.551,0.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (19.1373,-66.4425,2.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (39.5376,143.2152,4.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (39.7871,-120.8679,0.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.176,-118.0786667,0.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.1911667,-118.0891667,1.21);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (32.9235,-116.2258333,1.07);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (43.7268333,-110.2663333,1.69);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.3366667,-118.5425,1.33);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (56.5276,-155.475,3.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.4157,-118.3416,0.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (41.87,-119.6286,0.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.1512,-98.0063,2.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (65.0932,-145.983,1.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (64.969,-147.3492,1.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (51.4761,-173.5634,4.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (0.0165,123.3719,4.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (40.2773333,-121.2326667,1.06);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.4799,-98.8066,1.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (34.6151667,-116.6143333,1.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.0576667,-114.988,1.44);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (61.5829,-141.0525,1.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5435,-112.308,1.72);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (39.639,-119.791,0);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (19.2047,-66.9373,3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (47.167,-121.8071667,1.86);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (48.0187,80.4233,4.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8356667,-122.7991667,0.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8353333,-122.7985,0.07);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.7554,-153.076,1.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.6353333,-118.9725,0.22);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (39.5804,-120.4108,0.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (32.5728333,-115.6866667,2.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (11.5194,141.7266,4.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (47.7473333,-113.703,0.73);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (46.4203333,-119.2686667,1.42);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (47.6696667,-120.1265,1.16);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (34.988,-118.1935,1.04);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (47.5063333,-120.2855,0.96);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.1721,-118.5372,0.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (60.5772,-151.7069,1.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (39.6143333,-121.565,2.62);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.797,-122.7655,1.15);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (11.5221,141.6809,5.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (41.8751,-119.681,1.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (46.3866667,-122.3301667,1.03);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (62.2088,-150.0881,1.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (40.7418333,-122.3115,1.46);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.591,-116.7555,0.73);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (62.8655,-150.9389,1.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (60.0216,-152.1311,1.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.8816667,-116.754,0.89);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (39.3583,-119.9777,1.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.1729,-144.2394,0.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5663333,-118.8548333,0.06);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (61.8422,-149.649,0.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (64.0934,-148.473,1.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (39.3519,-119.9854,0.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8338333,-122.8126667,0.25);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (61.0878,-148.2599,1.2);',
'Insert int'))
);
end;
/
begin
wwv_flow_api.append_to_install_script(
 p_id=>wwv_flow_api.id(75477078542955772)
,p_script_clob=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'o EARTHQUAKES (LAT,LNG,MAG) values (46.3156667,-111.6213333,1.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (53.2126,159.7195,4.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (27.7234,85.534,4.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (49.4653333,-120.5313333,1.84);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.7654,-153.0198,3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.641,-121.2595,1.57);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (11.8979,-87.5608,4.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (35.6763,-97.3822,2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (66.1695,-141.8764,2.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (32.6345,-115.7085,2.87);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.6408333,-116.7188333,0.71);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.6463333,-116.7158333,0.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.6493333,-116.717,0.59);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.1542,-150.7442,1.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.6458333,-116.721,0.68);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.6566667,-116.7248333,0.78);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (62.0927,-149.6828,2.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (41.8463,-119.6705,1.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (39.0661,-115.1964,1.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.2066667,-121.7418333,1.48);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.2201667,-118.4068333,1.75);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.6393333,-118.9756667,1.19);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (64.1281,-149.9043,2.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.815834,-122.8270035,0.34);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.809166,-122.8263321,0.95);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.585,-118.9965,0.53);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (35.8273,-116.2926,0.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.9505,-118.7077,1.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (64.9841,-147.4359,1.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (32.6903333,-115.7426667,1.96);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (45.9956667,-112.4578333,1.92);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.4321667,-121.0093333,1.62);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (61.452,-149.835,1.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (62.9675,-150.0275,2.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.2865,-151.0836,1.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.9321,-140.1101,1.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (64.0973,-148.4556,1.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (61.2744,-147.4633,1.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (64.0939,-148.4552,1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (34.0361667,-117.8941667,0.83);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (64.2465,-148.4684,2.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (64.0935,-148.4598,2.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (61.5182,-150.8353,1.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (18.4465,-66.4562,2.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.2752,-117.5089,0.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.6597,-116.6578,-0.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (34.015,-117.1593333,0.78);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.8626667,-117.1003333,1.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8251648,-122.8251648,0.43);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (60.7075,-149.6912,1.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.463,-98.7549,2.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (61.1634,-147.1962,1.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.4698,-98.7363,3.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (44.5113,-70.415,1.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8446667,-122.8311667,1.04);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (-32.6096,-71.6967,3.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (19.0722,147.4474,4.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.9975,-116.3723333,2.11);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.0811,-151.5473,1.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (-19.9543,-68.9137,3.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (34.2095,-117.5653333,2.62);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.1277,-118.1988,1.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (17.8967,-66.112,2.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (19.4205,-155.6095,0.71);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.0311667,-116.4298333,1.01);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.4731667,-116.4915,0.58);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.7871667,-122.7808333,1.59);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.4039,-147.1922,2.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.7688333,-121.4641667,2.35);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5738333,-118.873,0.53);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8163333,-122.7956667,0.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (64.9717,-147.3388,1.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.7909,-153.2561,2.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.4492,-115.9529,0);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.0396,-104.9762,2.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.2412,-151.67,1.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.4294,-118.2808,0.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8355,-122.801,0.69);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (61.5594,-146.2929,1.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (18.9731,-65.3545,3.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (19.4060001,-155.2788391,1.82);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (35.5536667,-118.3386667,1.21);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (18.523,-68.4535,4.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.8781,-115.9705,0.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.3845,-117.2632,0.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.818,-122.7781667,1.45);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8138351,-122.7910004,1.05);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (52.3019,178.7513,3.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.0275,-117.7761667,1.98);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (61.3,-147.6737,1.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.8804,-153.4801,2.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8380013,-122.7985001,0.86);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (65.3779,-144.7458,1.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8356667,-122.8006667,2.14);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8358333,-122.8,0.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (47.2223333,-120.6441667,0.79);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.1771,-96.9662,2.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.4985,-116.7866667,0.58);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.168,-117.3786,0.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.7921,-117.9068,1.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.79,-117.8927,1.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8251648,-122.8246689,1.17);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (12.2147,144.5168,4.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (44.5978333,-114.1133333,2.24);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (53.9636,158.6398,4.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.6646,-116.2716,-0.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (62.7152,-151.6649,1.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5295,-120.0113333,2.15);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.3663,-117.2748,1.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (46.1946667,-122.2126667,0.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (60.6058,-152.3724,1.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.2776667,-118.368,0.62);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.4061667,-121.8268333,1.21);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.283,-117.6616,1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.4494,-98.7645,2.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (34.0431667,-117.2776667,0.66);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.9986667,-116.3655,0.93);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8046667,-122.813,0.41);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8063333,-122.8105,0.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.9976667,-116.3728333,1.45);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.7109,-116.3139,-0.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (61.5559,-146.5254,1.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.827,-122.8098333,0.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8145,-122.808,0.38);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (62.3916,-146.284,1.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.0274,-149.6537,2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8176651,-122.8099976,0.67);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.4736667,-118.8146667,1.68);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.5805,-121.4173333,0.94);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (46.2801667,-122.1731667,0.02);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.4348,-118.3868,0.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.3503,58.408,4.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (2.2127,128.2951,4.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.800499,-122.8126678,0.55);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (62.6361,-149.2554,1.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5545,-118.8706667,0.78);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.8139,-148.5316,1.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (62.1739,-151.8238,1.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.214,-153.6218,2.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (-4.6017,125.61,4.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.2753,-116.0447,-0.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (-16.0276,-172.8265,5.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (34.3391667,-116.882,1.13);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (-20.9,-68.923,4.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.4368333,-117.0378333,0.87);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8358345,-122.7985001,0.99);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8243332,-122.856163,1.04);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (45.0396667,-111.8461667,0.93);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.4641667,-118.786,2.52);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (61.3897,-147.6107,1.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.5042,-151.8986,1.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (44.6166667,-114.4806667,1.42);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8171667,-122.8026667,0.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (65.9594,-150.6706,1.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (65.962,-150.6381,2.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.7876663,-122.7781677,0.98);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (34.1933333,-117.5113333,0.92);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8180008,-122.8001633,0.83);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (35.9235,-118.3058333,1.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8135,-122.8305,0.76);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (61.7354,-148.1727,2.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (-5.7664,107.2029,4.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (47.7,-122.6471667,1.69);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (-30.625,-71.723,4.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8250008,-122.8249969,1.13);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (60.7627,-140.3564,2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.4492,-98.7745,1.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.824,-122.8235,1.58);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.438,-98.786,1.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.3488333,-116.385,0.85);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (61.3113,-150.7519,1.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8116684,-122.8291702,0.88);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (35.5431667,-118.3253333,1.51);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.2782,-116.0273,-0.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (-19.8036,-174.9112,4.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8266667,-122.8066667,1.49);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8288345,-122.8044968,0.97);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.9947,-116.3496,-0.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (65.3745,-146.134,1.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (64.6846,-149.0406,0.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.0516,-117.5753,0.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (18.922,-66.0435,2.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.8156,-98.2791,2.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.5273333,-121.0931667,1.52);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.8094,-152.8997,2.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.2471667,-115.6481667,2.17);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.6231667,-118.8243333,1.66);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.8921667,-116.2405,1.35);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.3615,-97.7199,2.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.4881667,-116.413,0.58);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.9552,-116.2107,-0.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.0539,-118.8096,1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (60.3285,-141.2455,1.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.1456,-116.5934,-0.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (40.4631667,-124.4898333,3.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (32.0308333,-117.4228333,2.24);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (62.6959,-148.8064,1.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.3225,-116.3808333,0.62);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8195,-122.8278351,0.19);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.4476,-98.7749,1.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (60.3586,-152.1769,1.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (39.2329,-115.3783,1.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (39.4215,-110.3378333,0.52);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (61.0713,-152.2028,1.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8175011,-122.8168335,0.88);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (35.6781667,-121.1138333,0.82);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (60.3634,-147.8949,1.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (-56.4395,-27.0963,5.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8041649,-122.7363358,0.76);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.8291667,-121.4045,1.72);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (29.8487,128.9816,5.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (62.8721,-148.423,1.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (61.5258,-149.9632,1.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.4799,-98.746,1.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.239,-117.5374,0.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (61.046,-148.3448,1.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.7005,-149.714,1.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.45,-98.7748,1.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (34.33,-116.9255,2.82);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.4665,-118.8156667,2.01);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.443,-98.771,1.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (18.9979,-65.3539,3.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (61.375,-150.889,2.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (34.1,-116.6445,1.02);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (-23.1169,-66.8432,4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.0605,-116.444,1.22);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (-16.9297,-73.4759,4.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.3725,-118.2329,0.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8153343,-122.8079987,1.13);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (12.1523,-87.6382,4.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.4438,-98.7789,1.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (-26.032,-70.8692,4.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.6217,-118.7518,0.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.3157,-153.5661,2.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.0001,-113.9062,0.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (34.1171667,-117.322,0.91);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.797,-122.7905,1.48);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (44.644,-110.4575,1.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (44.6448333,-110.4523333,1.46);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.4664,-98.7459,1.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.0408,-151.0135,1.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.3715,-122.6135,2.34);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (45.376,-121.6856667,0.57);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5856667,-118.7888333,1.08);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (46.1275,-122.1635,0.29);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.5921667,-116.8013333,0.76);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.1925,-118.1787,0.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.4275,-118.6733333,0.94);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (18.884,-155.416,2.09);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.1354,-148.6749,1.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.9725,-117.5932,2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.9958333,-121.0985,1.08);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.416,-118.3485,0.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.5046,-118.4065,1.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (19.4305,-155.6338333,0.63);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8193333,-122.7648333,1.32);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (18.3178,-64.8014,3.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (65.3674,-144.7663,1.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (61.0829,-152.0967,2.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.4176,-118.3472,0.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (19.245,-155.524,1.47);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.4229,-118.3493,1.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (15.0862,145.6219,3.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.5381,-99.0358,2.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.8165,-116.9976667,1.13);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.4157,-116.1637,0.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.6441,-116.3375,-0.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (39.7617,-121.0036,1.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (39.4769,143.3253,4.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.2341,-117.6563,0.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.406,-151.3547,0.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (35.7568,-3.6129,5.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.8365,-118.1026,0.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (61.5773,-141.2334,1.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (60.1625,-152.1726,2.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (17.986,-66.4117,2.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.1697,-118.2152,1.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.9635,-117.5962,1.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (19.4148331,-155.2866669,2.59);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.4579,-117.0151,0.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.8233333,-117.6513333,1.06);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.8261667,-117.6428333,1.49);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (65.8903,-151.1907,1.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.4187,-118.3471,1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.4413,-98.7745,1.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (40.2546,-119.706,1.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.8108,-153.0467,2.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (18.8449,-67.389,2.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (61.6911,-149.5104,1.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.052,-97.9097,2.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (64.9943,-147.3347,1.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (60.639,-147.7527,1.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.3326,-147.5419,1.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (19.3321667,-155.4761667,1.89);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (35.789,-96.994,2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.7883333,-122.7378333,1.42);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.8015,-117.1286667,1.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (46.197,-122.1823333,0.45);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (34.1706667,-117.421,1.07);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (61.3876,-141.1558,1.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.7818333,-122.7271667,0.56);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (64.0871,-148.4168,1.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.4733,-98.7605,1.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.4466,-98.7748,1.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.813,-152.9126,2.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (46.2071667,-122.2138333,0.23);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.883,-152.9149,2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (19.406,-155.6363333,1.23);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.838,-122.84,1.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (65.0625,-148.7015,1.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.4459,-147.7581,1.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (46.7908333,-111.9935,1.33);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (46.9243333,-123.4583333,1.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.6466667,-113.0455,0.96);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.4855,-116.4963333,1.24);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.0027,-98.049,2.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (41.6811667,-112.805,0.97);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.733,-118.3175,2.33);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (41.6881667,-112.8238333,1.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (-52.64,18.8566,5.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (47.5355,-122.9913333,1.73);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (26.5636,128.9514,4.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (64.0662,-148.3692,1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.1255,-151.437,1.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (19.4081667,-155.612,0.62);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (45.0483333,-111.7925,1.11);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.0447,-151.404,2.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (64.6492,-146.9306,0);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (60.3953,-141.5767,1.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8203333,-122.826,1.06);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.4751,-98.8516,2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.2139,-118.4018,1.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (51.2672,-173.9429,2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (62.8315,-149.728,1.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.5848,-151.1197,0.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (51.3519,-174.0707,2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8263321,-122.8554993,1.05);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (46.5135,-119.646,0.66);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.1237,-151.4647,1.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (51.4061,-173.8172,2.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (34.6481667,-116.2915,1.68);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (51.4075,-174.0688,2.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (51.3203,-174.0764,2.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.3731,-118.23,1.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (61.7533,-150.735,1.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (51.4406,-173.9401,2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (51.2718,-173.6444,2.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.988,-141.6426,1.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (35.9715,-120.534,0.12);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (61.595,-146.5779,1.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.9831667,-116.7513333,0.97);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (51.3704,-173.8884,2.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (51.3477,-173.8687,2.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.4452,-98.7765,1.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.5376667,-116.8526667,0.87);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (60.5094,-147.7624,1.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (51.4479,-173.9628,3.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8338333,-122.7978333,1.18);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (51.4312,-173.9594,3.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.8367,-152.9069,2.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.4456,-98.7741,1.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (51.2175,-173.9817,2.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (41.8769,-119.6265,1.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8091667,-122.7395,0.75);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.8426667,-112.379,1.78);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (51.3431,-174.0755,2.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.57,-118.8541667,0.61);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.7407,-116.2825,0.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (51.4917,-173.9898,2.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.7271,-116.3042,0.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.7324,-116.2937,0.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (34.5161667,-119.0783333,2.82);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (51.3682,-174.1229,2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.2393,-151.5696,1.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (51.2339,-173.9039,2.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (51.3192,-173.813,3.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (45.9475,-111.322,1.55);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (51.2399,-174.0165,2.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.2023333,-116.1575,1.54);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.4669,-98.7438,1.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8230019,-122.7868347,0.76);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (51.4641,-174.0552,3.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.828,-122.8665,0.56);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (51.5614,-174.0269,6.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (49.8991667,-113.7585,1.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (51.941,-174.1337,4.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (34.0165,-116.4015,1.29);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8148346,-122.8188324,0.79);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (51.3405,-173.9851,2.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8396667,-122.8283333,0.54);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5706667,-118.8621667,0.51);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.8427,-139.7992,1.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.9204,-152.7774,1.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.8077,-153.0483,1.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (52.3979,-169.592,2.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.1286667,-116.0116667,1.26);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.4373,-116.934,0.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.7515,-122.712,1.37);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.7573333,-122.7115,1.81);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (35.9295,-117.9431667,0.42);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.999,-151.3998,1.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.4358,-116.9211,-0.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (67.7545,-158.1989,2.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (51.3754,-174.0408,2.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.4409,-116.9434,0.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.2605,-151.592,0.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.0564,-117.4827,0.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5715,-118.8493333,0.58);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (26.7815,89.1091,3.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.4468,-116.9282,0.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.4445,-98.7649,2.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (-30.2439,-71.7062,5.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.3661667,-118.5413333,1.73);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (45.8625,-111.296,0.57);',
'Insert i'))
);
wwv_flow_api.append_to_install_script(
 p_id=>wwv_flow_api.id(75477078542955772)
,p_script_clob=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'nto EARTHQUAKES (LAT,LNG,MAG) values (38.8141667,-122.8148333,1.36);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (18.2,-67.6737,3.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (62.1509,-152.0993,2.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8145,-122.8181667,0.24);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.5594,-150.788,1.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (1.0846,126.2722,5.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.3763,-117.276,0.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (61.8011,-147.5783,2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.4549,-98.7607,1.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.7223,-116.2628,0);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (64.8685,-149.3991,1.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.3744,-117.2762,0.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (18.4687,-68.4835,3.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (51.6239,-173.8284,4.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (62.4309,-150.8056,1.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.7439,-151.9797,3.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8256667,-122.826,0.61);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.3339,-117.282,0.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.7641667,-122.7278333,1.84);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8041649,-122.7708359,0.77);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8175,-122.8023333,0.23);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.4574,-118.4646,0.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.8671,-116.237,-1.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.8466,-148.4718,1.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.475,-116.4893333,0.36);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (60.8609,-148.3025,1.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (62.8638,-148.9393,1.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8368333,-122.811,1.64);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (44.3575,-113.9833333,1.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.4831,-118.3875,0.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (3.5334,-74.4542,4.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (60.043,-153.2917,2.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.2946667,-121.6765,1.23);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.4775,-116.4861667,0.57);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.34,-117.2826,0.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (34.8746667,-118.8058333,0.54);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (62.7695,-150.0209,1.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (57.0303,-149.9815,3.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5731667,-118.8668333,1.49);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (45.9305,-111.3001667,0.11);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (61.1076,-151.5399,3.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.799,-122.8118333,1.78);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.3476,-117.2821,0.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.3754,-117.2692,0.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.701,-116.2856,0);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (34.5191667,-119.076,2.16);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (19.4198333,-155.6118333,0.62);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.3783,-118.7126,0.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.6995,-116.2868,0);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.4253,-97.7128,2.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (39.2006,-115.3599,1.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.3468,-117.2846,0.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (39.236,-115.3752,0.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.9238333,-112.5265,2.39);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.9311667,-112.5105,2.07);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8213348,-122.807663,0.54);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (19.4076672,-155.2823334,1.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.7428,-118.7801,0.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.3293,-117.8062,0.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.3718,-118.2342,0.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (26.2344,92.2033,4.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.7588,-118.8055,0.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.4633,-154.2947,2.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (60.0704,-141.8478,1.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.3739,-118.2334,0.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8378334,-122.8026657,0.46);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.37,-118.234,0.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.029,-116.428,1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (19.3821667,-155.2443333,1.19);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (19.3821667,-155.2436667,0.79);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5183333,-118.7846667,1.07);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.7874985,-122.745163,0.87);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (18.4001,-67.3917,2.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.4748333,-116.487,0.61);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.1006667,-117.8481667,0.65);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (61.6179,-146.3313,1.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.0815,-117.8496667,0.94);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (64.6456,-148.6575,0.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8341667,-122.8006667,0.65);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5735,-116.348,0.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.5071,-118.5258,0.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.2753,-97.5202,2.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.6997,-116.2869,-0.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.8675,-117.7141667,1.33);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.809,-122.7905,0.71);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.3353333,-116.3538333,0.77);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8160019,-122.8061676,0.46);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (44.577,-114.294,1.77);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.1112,-97.8739,2.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (35.2891667,-91.3623333,2.11);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (45.9798333,-122.6106667,1.21);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (47.7338333,-114.8498333,0.33);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.955,-149.1296,2.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.1519,-116.5906,-0.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5728333,-118.8608333,0.14);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8105,-122.7923333,1.85);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (35.6106667,-117.459,1.59);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (18.0382,-68.7304,3.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8436661,-122.8294983,1.14);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.1096667,-117.581,1.63);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.2836,-97.5173,2.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.6527,-118.7887,0.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (60.4663,-143.0684,1.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (18.6483,-64.9394,2.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (14.4945,123.1124,4.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (61.624,-149.91,1.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (-23.9141,-179.9363,4.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (60.9003,-150.7415,1.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.2318333,-120.8075,1.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.008,-151.6511,1.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.0717,-152.9611,2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (18.0774,-68.297,3.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (60.2028,-141.5486,1.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.7944984,-122.7458344,0.42);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.2245,-150.6976,1.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.099,-117.8848,1.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (51.5496,-173.9207,5.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (61.5857,-146.5126,1.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.4533333,-116.5856667,0.84);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (39.2228333,-110.4613333,1.55);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (44.3386667,-110.5358333,0.94);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (51.2693,-174.0578,4.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.4901667,-116.4241667,0.98);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.5906,-97.7626,3.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.4829,-98.7635,1.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (61.589,-146.4257,1.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (44.6053333,-114.1231667,2.63);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (51.6732,-174.1524,5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (46.116,-111.6011667,-0.24);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (64.582,-147.0175,0.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (45.0001667,-121.027,0.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (60.2734,-152.4991,2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (51.4578,-174.0517,4.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8278351,-122.814003,0.88);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (43.7643333,-110.7425,0.71);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.7978325,-122.7705002,0.81);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (19.4218333,-155.6048333,0.57);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.3749,-118.2399,0.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (19.4291667,-155.6266667,2.63);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (39.8208,-120.7843,0.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (64.7564,-150.9321,1.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.824,-122.8028333,1.23);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.2344,-117.5347,0.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5786667,-118.8458333,0.07);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8303337,-122.8065033,0.96);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8306656,-122.8066635,0.98);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8293333,-122.807,2.32);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8285,-122.8056667,2.23);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (19.4291667,-155.6205,1.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (34.1228333,-116.9058333,1.42);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8300018,-122.8108368,0.88);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8296667,-122.8071667,1.13);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (64.9978,-147.3331,1.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (45.6266667,-122.8733333,1.54);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (19.4253333,-155.6095,1.13);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.7617,-153.1409,2.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.4952,-114.0666,0.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8083344,-122.7815018,0.55);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8323326,-122.8061676,0.84);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.4485,-116.7206667,0.81);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (35.9358333,-117.9568333,1.05);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (51.3866,-174.132,2.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (51.2925,-174.0141,3.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (51.3645,-174.0822,2.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (57.7782,-156.5276,3.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (51.367,-174.0619,2.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.8179,-139.4012,1.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8255005,-122.8424988,0.19);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (58.5279,-151.8934,1.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (34.0173333,-116.4013333,1.69);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.788,-122.7836667,0.34);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (64.8594,-149.005,1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (56.4185,-155.4615,2.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.372,-118.2364,0.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.6338333,-119.0326667,0.34);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (46.1961667,-122.187,0.62);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (35.3743333,-118.472,1.89);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (34.0185,-116.4021667,0.87);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.7921677,-122.7878342,0.28);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (51.3951,-173.8225,2.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (51.3686,-173.7896,3.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (60.3074,-152.2416,1.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.7883333,-122.7828333,2.85);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (51.3907,-173.9308,3.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8223333,-122.8438333,0.48);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.8012,-153.0173,1.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (44.7283333,-110.6478333,1.86);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.3736,-118.233,0.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (34.6495,-116.2946667,1.86);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (60.2631,-152.3156,4.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.5948,-147.3645,1.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (32.6993333,-115.7543333,1.68);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8213333,-122.8425,1.26);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.819,-122.8406667,1.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (51.3969,-173.9887,4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (35.9296667,-117.95,1.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (35.9286667,-117.9508333,1.08);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (35.9278333,-117.9493333,2.72);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (35.9296667,-117.949,2.77);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8086662,-122.8259964,1.15);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.8023,-153.0208,1.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.5567,-151.0458,0.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.7583351,-122.7235031,0.99);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.476,-118.8478333,0.89);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (65.4398,-148.0469,0.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (34.5193333,-119.092,1.85);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (62.2798,-148.6539,1.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.2662,-151.0725,1.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (64.833,-149.1365,0.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (45.8621667,-112.0305,-0.17);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.4751667,-118.8423333,0.74);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.7897,-153.074,2.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (40.0048333,-111.8501667,0.97);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (34.5285,-119.0898333,1.56);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (34.525,-119.1171667,1.89);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (40.4086667,-121.3111667,0.44);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (34.5255,-119.0906667,1.87);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (52.7566,-167.9522,2.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (60.7118,-152.01,2.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (62.3182,-148.3428,1.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (46.9386667,-112.4105,0.59);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.4653,-98.7412,1.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (52.2419,-174.3837,2.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (34.523,-119.083,1.71);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8248329,-122.793335,0.51);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.7826,-147.615,0.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.5916,-153.7014,1.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.1221,-151.5246,0.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.8975,-152.9805,1.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (34.5246667,-119.0806667,2.34);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (52.0307,-173.5464,2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (34.5216667,-119.0748333,4.13);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (47.7066667,-122.6126667,2.42);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (19.13,-155.3865,1.87);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.4693333,-116.416,0.92);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.622,-153.275,1.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (60.1846,-141.0292,1.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.3546667,-116.2603333,1.33);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.0648333,-115.5893333,1.59);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (44.6195,-113.47,0.64);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (61.0393,-150.3923,1.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (46.4415,-122.4543333,1.14);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (52.8302,-167.2876,2.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (64.8185,-147.311,0.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8173333,-122.7878333,0.25);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (61.2066,-141.9456,1.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.8891667,-116.236,0.78);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (19.4306667,-155.6078333,0.67);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (60.0285,-152.8916,2.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (19.333,-155.1176667,0.66);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (62.9742,-149.5684,3.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.2016667,-118.4163333,1.34);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8166656,-122.8193359,1.03);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.8856667,-116.23,0.59);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.8858333,-116.2326667,0.73);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (61.5108,-146.7345,1.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.8865,-116.2335,1.17);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.8848333,-116.2296667,0.76);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8106651,-122.822998,0.88);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (32.9816667,-116.2763333,1.52);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.8936667,-116.2363333,0.88);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (47.4331667,-115.8238333,1.27);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.889,-116.2333333,1.02);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (40.5356667,-111.6173333,0.46);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (64.5251,-148.7083,1.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.8913333,-116.2388333,1.39);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (35.8097,-96.9934,2.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.0808333,-117.6181667,0.95);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.082,-117.618,1.41);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (19.1451667,-155.469,1.77);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.587,-119.0001667,1.26);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.439,-98.7761,1.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.896,-116.237,1.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (39.2617,-115.3224,1.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (39.2447,-115.3489,1.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8118324,-122.8181686,1.17);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (18.805,-64.7768,3.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (18.8437,-64.969,2.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.2775,-116.7208333,1.16);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.5101,-118.5304,-0.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.888,-116.2345,0.98);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.8865,-116.2378333,1.85);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.8893333,-116.2335,0.87);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (19.408,-155.6141667,0.61);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (-22.4813,-179.6104,4.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (-7.7436,125.8964,4.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.8918333,-116.235,1.19);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.887,-116.2385,1.98);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (19.4965,-155.5645,1.02);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.481,-118.3885,0.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.7809982,-122.7210007,0.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (34.049,-117.2585,1.35);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (34.0408333,-117.4236667,0.98);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.2766667,-116.7216667,0.95);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.2766667,-116.7201667,0.85);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.4705,-116.4875,0.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.785,-122.7348333,0.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (19.189,-155.4035,1.59);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8279991,-122.8081665,0.88);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8447,-119.6471,1.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.0035,-117.9171667,0.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.6523,-119.7468,0.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.7651672,-122.7286682,0.99);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.4606667,-116.5611667,0.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.6625,-118.7916,0.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.783,-115.6513333,1.33);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.1756667,-116.0106667,0.82);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.5718333,-118.16,1.51);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.0093333,-117.7996667,0.66);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.2091667,-116.3823333,1.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.4708333,-116.4906667,0.51);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.8258333,-112.4073333,1.92);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.5018,-147.9748,1.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (35.9951,-96.8544,3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.9356667,-120.2498333,2.25);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.6001667,-119.0105,0.37);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.4823333,-118.8465,0.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.4746667,-118.844,1.08);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (-23.1323,-68.7234,4.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.5128333,-116.4516667,0.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.0181667,-117.775,0.37);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8403333,-122.827,0.46);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (39.6305,-119.8297,1.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (34.521,-119.075,3.31);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.5548,-116.402,0.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (51.5355,-177.3437,1.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.2551,-151.5586,1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.4716667,-116.4846667,0.72);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.2905,-151.0853,0.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.0061667,-117.7998333,0.65);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (40.1458,-121.0115,1.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.4154,-144.9896,0.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.2912,-151.0641,1.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (61.4789,-151.3516,1.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (61.0587,-146.5218,1.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.2325,-116.0926667,2.38);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (53.4527,-164.7358,2.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.8626667,-117.7265,1.09);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.1693333,-112.8275,1.62);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (20.4388333,-155.805,2.79);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (62.0214,-150.251,1.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.4225,-145.1015,1.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (19.7158333,-156.0256667,1.53);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.492,-116.446,0.79);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (45.8226667,-122.4855,1.86);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (60.7713,-137.6889,1.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (40.2886667,-124.4816667,2.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.765,-152.9835,2.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (-7.8731,125.7848,5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.3133,-151.3336,1.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (18.1737,120.277,5.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.4346667,-116.3118333,1.37);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8203316,-122.7854996,0.31);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.788,-122.7748333,1.34);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.0968,-150.8043,1.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (60.9196,-150.5787,1.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (-7.817,125.8231,4.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.5243333,-116.7338333,0.32);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (34.9572,111.2483,4.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8235,-122.7978333,1.68);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8230019,-122.7988358,1.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8235,-122.7965,2.03);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (65.1404,-150.1268,0.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.584,-118.9978333,1.61);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (60.7319,-137.5366,2.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8106651,-122.8231659,0.32);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (64.7053,-150.9549,1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (61.5427,-149.9561,2.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (51.3984,-174.1185,3.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (18.0007,-66.7713,1.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (18.447,-66.166,2.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8043327,-122.7723312,0.91);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.8319,-153.5176,2.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (64.9236,-149.1372,0.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.6803,-153.2164,2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.3792,-97.7193,3.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.8499,-152.9301,2.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (64.6809,-147.6008,0.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.2567,-118.0781,0);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.3993,-151.4979,1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (62.3021,-148.3493,3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8376656,-122.8255005,1.07);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (56.0745,-158.8693,3.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8388333,-122.8303333,1.44);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (32.1759,141.8829,4.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.8943333,-122.0753333,2.83);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.4929,-147.3317,0.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (64.9796,-147.352,1.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (18.6777,-66.7163,2.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.817,-122.8088333,0.38);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (41.8653,-119.5953,0.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.4761667,-116.4873333,0.61);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (19.3838333,-155.2496667,2.58);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (15.0186,-94.631,4.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.8873333,-116.2281667,1.04);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.1775,-112.8271667,1.27);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8284988,-122.80867,0.58);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8288345,-122.8083344,0.79);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (60.5706,-151.6384,2.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.5073,-98.6984,1.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5923333,-118.835,0.48);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (-15.1082,-172.7073,5.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8356667,-122.7939987,0.77);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8111649,-122.8236694,0.34);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8235016,-122.8296661,1.11);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8186684,-122.7633362,0.85);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8116684,-122.8236694,0.82);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.7910004,-122.7371674,1.04);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.6493,-119.7478,1.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values ('))
);
end;
/
begin
wwv_flow_api.append_to_install_script(
 p_id=>wwv_flow_api.id(75477078542955772)
,p_script_clob=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'61.5094,-146.6424,2.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8354988,-122.7726669,0.88);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (61.9669,-150.5403,1.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.751,-122.7331667,1.29);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (34.0181667,-116.4048333,1.86);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.469,-121.0491667,1.94);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.8838333,-116.2253333,0.88);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (32.7623333,-116.8983333,1.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (15.4411,-94.3343,4.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.888,-116.2361667,0.98);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (28.1551,129.6678,4.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (45.6948333,-111.5841667,0.24);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.5482,-113.5051,1.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8128333,-122.8225,0.43);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8203333,-122.8093333,0.26);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.0386667,-116.4133333,1.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (35.0576667,-118.3393333,1.17);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.8845,-116.2321667,0.97);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.4868333,-116.452,1.08);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.8865,-116.2326667,1.44);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (45.3683333,-112.583,0.22);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5656667,-118.865,0.53);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (65.0081,-147.3297,1.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.7478333,-121.4115,1.38);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.1765,-117.8693333,1.75);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5643333,-118.8695,0.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.3245,-122.1025,1.66);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (35.1488333,-118.3988333,1.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.3225,-116.2846667,0.92);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (40.2948333,-121.2645,2.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (39.4134,-120.2005,-0.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.8888333,-116.2345,1.01);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (39.7151667,-111.191,1.16);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (39.2252,-120.0877,-0.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (40.4838333,-124.3015,2.13);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (19.4286667,-155.6175,0.59);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.0285,-116.4275,1.44);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (41.8874,-119.6106,0.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8236667,-122.8431667,0.13);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.9131,-153.6666,2.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.253,-150.5699,3.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.2983,-119.2731,1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.435,-116.924,-0.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (34.1423333,-117.4273333,0.89);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.0155,-117.7761667,1.29);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (60.8873,-149.9396,1.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.7905006,-122.7798309,0.49);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.3685,-145.198,1.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.2852,-118.3465,0.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (65.8012,-150.8078,0.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (34.0895,-118.9123333,2.03);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.018,-117.7781667,1.22);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (35.6249,-3.6007,5.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (64.8713,-148.98,0.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (35.579,-3.5544,5.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (35.9271667,-117.9488333,1.29);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8093333,-122.8158333,0.28);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.3695,-118.2362,0.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (64.5837,-147.7542,0.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (51.4114,-174.0571,2.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (61.7325,-149.6554,1.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (18.0293,-67.086,1.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (51.426,-174.1596,2.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.7459,-115.9176,0.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5711667,-118.8501667,0.69);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (51.3428,-174.0181,2.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (51.3719,-173.9787,2.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (50.5992,-173.7761,4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (51.6657,-175.6233,1.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (61.1373,-148.8181,1.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.422,-116.3886667,2.04);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.4698,-98.7425,1.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.4787,70.1292,4.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.1653,-118.8388,0.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.2172,-117.5447,0.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (51.2302,-173.9796,2.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.2042,-136.7363,2.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (61.0469,-148.9512,1.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (65.3433,-144.3427,1.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.5113333,-116.4481667,0.78);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (51.3673,-173.9966,2.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (51.3888,-173.8826,5.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8341675,-122.7953339,0.89);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.3709,-118.3288,0.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (34.0196667,-116.4025,1.75);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (35.0558333,-119.1041667,2.24);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (39.6422,-120.0166,0.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (46.1963333,-122.183,0.58);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8345,-122.7986667,1.98);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (64.6612,-149.1277,0.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.3396667,-118.7653333,1.08);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (61.041,-152.3625,1.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (50.778,179.7363,2.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (35.3157,23.5123,4.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.1174,-116.7418,-0.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (51.3342,-173.8758,3.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (35.0493333,-119.1011667,2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (46.195,-122.2063333,0.75);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (34.0151667,-116.4001667,1.12);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.5423,-150.8063,0.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (34.5211667,-119.0865,2.14);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (34.5261667,-119.0935,1.85);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (66.0005,-151.0287,1.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.4385,-98.7755,1.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.3946667,-118.311,1.59);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (46.201,-122.177,0.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (64.8552,-149.4583,1.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (34.2115,-117.5531667,1.08);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.52,-118.7838333,0.26);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.4776667,-121.0566667,2.49);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.3857,-118.3092,1.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (51.4857,-174.0893,4.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (19.0095,-156.215,2.96);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (19.6981667,-156.0428333,1.95);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.802,-146.9988,0.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (54.1456,-164.1302,2.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (65.4185,-148.0351,0.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (34.5201667,-119.0801667,2.13);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.4478333,-116.5458333,0.61);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (60.1788,-140.9859,1.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (64.8416,-147.4939,0.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (60.4647,-147.8168,1.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (64.6308,-148.7534,0.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.472,-116.4853333,0.29);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.4711667,-116.4876667,0.63);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.0513,-151.5066,1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (32.9803333,-116.2721667,1.93);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5581667,-118.9238333,0.31);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.7536667,-122.6995,0.92);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.5093333,-116.4466667,0.25);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (39.6601,-120.9285,0.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.4705,-116.4926667,1.02);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.4711667,-116.4886667,0.54);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.5263,-98.6867,1.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (34.023,-117.6041667,0.77);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.4691667,-116.499,1.42);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (60.3281,-152.5824,1.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (39.629,-120.0048,0);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (62.2718,-150.2418,1.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8191667,-122.8048333,2.56);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.9553,-141.5253,1.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (64.7487,-151.2311,1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (64.7494,-151.3102,2.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (60.9226,-147.4242,1.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (34.1106667,-117.4921667,0.88);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8079987,-122.8144989,0.78);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.944,-116.8448333,0.48);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.6787,-153.3456,1.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (34.309,-117.0185,0.97);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8245,-122.8261667,1.08);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.9445,-153.6775,3.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.9708,-118.7054,0.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (60.2158,-152.8698,0.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (61.5706,-140.9968,1.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.0667,-148.3679,0.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.5058333,-116.457,2.13);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.8883333,-116.2333333,1.13);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.5075,-116.448,0.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5773333,-118.8656667,0.09);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.2326667,-116.0896667,1.34);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.9391667,-117.0568333,0.99);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (34.1233333,-118.4105,1.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.6301667,-118.87,0.57);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (39.0293,-115.4614,2.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (68.1419,-158.2101,3.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.149,-151.4548,0.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.191,-112.8423333,1.16);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.2518333,-112.7363333,1.34);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.8155,-118.2075,1.38);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (-18.8082,-69.6507,5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (19.4243333,-155.6083333,0.64);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.2541667,-112.7326667,1.61);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.778,-151.4454,1.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.5179,-97.7394,3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5353333,-118.8743333,0.18);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.8745,-116.8531667,0.79);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.113,-150.8255,1.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (34.0541667,-117.5031667,0.87);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (60.2734,-152.2946,1.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.557,-89.6031667,2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (34.58,-118.0411667,1.28);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (39.3248,-117.7585,0.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8256683,-122.8438339,1.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.4713333,-116.4976667,1.12);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.02,-117.7761667,0.34);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.8896667,-116.2335,0.72);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (60.0741,-151.663,1.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.4985,-116.7893333,0.37);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5728333,-118.8505,0.02);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (18.9197,-64.1696,3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.7794991,-122.7235031,0.88);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8351669,-122.7939987,0.79);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.7113333,-116.8341667,1.54);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.2362,-117.5065,0.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5555,-118.853,0.18);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.5549,-150.8028,0.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.1334,-97.2599,2.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (39.0333,-118.1488,0.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8223333,-122.781,0.27);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.0651,-151.4348,1.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (46.2581667,-122.0611667,0.97);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (60.0145,-151.8337,1.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (47.9881667,-115.1186667,-0.07);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (39.6318,-119.8314,0.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (19.4341667,-155.6263333,2.82);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.466,-116.4958333,1.22);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.1908333,-118.4098333,2.23);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.7351,-116.3369,-0.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (39.984,-120.4061,0);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.1047,-117.8898,0.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8415,-122.827,0.54);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (60.9004,-149.9895,1.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.477,-116.4046667,1.04);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.2761667,-116.7216667,1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.3711,-118.2319,0.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (35.9996667,-120.5603333,0.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.5341667,-116.6936667,-0.11);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8136673,-122.8290024,0.34);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (46.8636667,-121.7315,0.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.6595,-121.6755,1.51);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.0228333,-117.7773333,1.05);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.4691667,-118.844,0.72);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (34.4228333,-116.4881667,1.74);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (35.9028333,-120.7298333,1.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8133316,-122.8280029,0.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (61.7655,-149.59,1.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.4406,-98.7782,2.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (64.613,-149.1878,0.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (43.9476667,-110.9156667,0.96);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (-3.9364,152.2662,4.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (35.7334,-3.5836,5.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.7418333,-118.3181667,2.37);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (60.2896,-143.0526,1.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (18.3463,-65.629,3.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.2793333,-116.7156667,0.87);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (64.4264,-146.7077,0.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8175,-122.8178333,1.29);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (62.8659,-148.3788,2.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.2891667,-116.7053333,0.42);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (39.3991,-120.1756,0.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (47.5756667,-123.9753333,2.02);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5706667,-118.8523333,0.01);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.3191667,-122.088,1.27);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5778333,-118.857,-0.12);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (19.2206667,-155.5681667,1.43);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (61.7983,-152.2003,2.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (35.6976,-116.558,0.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (48.6186667,-114.561,1.42);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.1892,-118.5067,1.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.1862,-151.3462,1.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8421667,-122.876,0.96);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8053322,-122.8268356,0.56);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (61.2196,-149.9562,2.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8455,-122.8238333,1.02);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (19.3603333,-155.3241667,2.99);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.0453333,-114.9708333,1.41);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.437,-98.7822,1.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.4691667,-116.4873333,0.84);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.2776667,-116.7155,0.71);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (-10.2366,161.4572,4.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.6751667,-116.7116667,0.52);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.7996667,-122.6945,0.68);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.7881667,-122.7478333,1.56);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (64.7259,-145.6505,2.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.7953339,-122.7783356,0.51);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.6213333,-118.903,0.58);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (19.456,-155.6001667,0.52);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.9451667,-116.8495,0.69);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.4748333,-116.4976667,1.26);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (46.2645,-122.5906667,1.16);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.57,-118.858,1.92);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.731,-116.2939,-0.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.6375,-116.711,0.45);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (49.4198333,-120.5176667,1.92);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (64.9993,-147.339,1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.578,-121.1358333,1.56);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8048333,-122.7916667,0.94);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5708333,-118.857,1.17);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (-24.726,-70.8795,4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.284,-97.641,3.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.287,-97.6458,3.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (61.9914,-150.616,1.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.6046,-149.7298,1.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (65.9838,-148.2985,1.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (46.26,-122.592,1.41);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.5946667,-121.1931667,1.35);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (45.3283333,-112.6273333,1.98);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5731667,-118.8508333,0.26);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (46.7896667,-121.8688333,0.92);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (46.1151667,-123.1038333,1.42);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (-18.8174,-69.6966,4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (35.7077,-3.6625,4.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (67.4498,-171.12,3.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.1218,-150.6086,1.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (12.3203,144.224,4.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (-29.8625,-177.7386,4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.555,-118.8405,0.45);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (19.4566667,-155.6005,1.09);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (61.7387,-150.3551,1.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8368333,-122.8025,1.08);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (62.5233,-151.1426,1.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5686667,-118.8568333,0.73);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (64.6942,-149.2166,0.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (52.039,-169.187,2.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (48.3215,-122.0975,1.74);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (64.7323,-146.7978,0.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.0896,-151.4577,0.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.8216667,-117.4851667,1.67);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (60.8643,-149.1527,2.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.2206667,-116.7366667,0.65);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (61.5112,-148.2389,2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.2941,-119.2789,1.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (40.2565,-121.0761667,1.16);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.422,-121.003,1.66);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.226,-150.5756,1.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.4487,-98.7706,1.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5495,-118.8775,0.36);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.4715,-116.4871667,0.62);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.8418,-152.2584,2.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.1554,-153.0241,2.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.4379,-98.78,1.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (64.4882,-147.3775,0.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.0986,-150.921,1.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (57.4838,-154.8791,2.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (58.8565,-152.3381,2.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.8968333,-121.63,1.43);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (62.9888,-151.1271,1.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.836834,-122.8420029,1.03);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.8727,-149.1426,0.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.821,-122.8246667,1.89);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8066673,-122.7333298,0.41);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8240013,-122.8263321,1.19);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (35.0546667,-118.3481667,1.06);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (43.189,149.0318,5.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8035011,-122.8108368,1.19);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.7332,-116.2956,-0.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.7345,-116.2944,-0.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (34.1348333,-118.4146667,2.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (19.191,-155.5191667,1.67);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (62.1683,-148.9015,1.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (40.4923333,-123.202,2.93);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (64.7526,-151.2816,1.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.5708,-147.5062,1.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8033333,-122.8160019,0.76);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.6844,-149.2806,1.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.4306667,-121.0115,1.68);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (32.9801667,-116.2676667,1.36);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.6866667,-116.7566667,0.57);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.4366,-98.7753,1.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (60.1732,-140.9507,0.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.1976667,-119.0075,1.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (64.6314,-146.9501,0.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.2794,-151.1223,0.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (64.3836,-147.2865,0.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8129997,-122.8293304,1.03);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8186667,-122.8171667,1.54);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (58.6965,-153.244,1.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.4471,-98.7824,3.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.01,-120.5683333,0.51);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.9256,-140.1375,1.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.9556,-139.9956,1.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (60.4021,-147.7546,1.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.9761,-152.2583,2.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5708333,-118.8663333,0.06);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (64.8478,-149.4562,1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8195,-122.7883301,0.71);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.4479,-147.5673,0.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8176667,-122.8205,0.85);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (60.1019,-152.8722,1.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8153333,-122.8075,1.06);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.7311,-116.2985,-0.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (32.9828333,-116.4221667,1.51);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.7306,-116.2949,-0.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.8921667,-116.23,0.86);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.7804,-153.1185,1.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.4181,-153.1279,1.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.522,-118.8275,0.21);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.7183,-118.0048,0.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (19.408,-155.6373333,1.42);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8223333,-122.8025,1.47);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (62.4913,-150.6955,1.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.7551,-152.0588,1.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.5079,-98.6705,3.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (47.152,-114.6425,0.43);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (47.3625,-113.9015,-0.12);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (34.2985,-116.8683333,1.83);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.8913,-140.1387,1.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (61.8952,-149.5886,1.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.4168,-118.7365,0.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (64.5039,-149.4091,0.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.4504,-98.7711,1.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.0398,-118.885,1.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8040009,-122.8160019,0.69);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.9351667,-116.388,0.78);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (8.3399,-103.3409,4.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.4507,-98.7697,1.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.0261667,-117.7776667,0.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.077,-117.7588333,0.07);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.4183333,-116.6126667,1.19);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.0213333,-117.781,0.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8363342,-122.8008347,0.16);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.2708,-97.5215,3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (61.5691,-149.7277,2.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.8908333,-116.2341667,1.27);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (61.7581,-148.2316,1.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8083333,-122.8273333,0.68);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (61.4171,-154.1055,1.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (-29.3011,-179.0928,4.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.6046667,-118.7886667,0.46);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (40.2556667,-123.7971667,2.54);',
'Insert into EARTHQUAKE'))
);
wwv_flow_api.append_to_install_script(
 p_id=>wwv_flow_api.id(75477078542955772)
,p_script_clob=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'S (LAT,LNG,MAG) values (33.4971667,-116.5133333,0.14);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (32.699,-115.7561667,1.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.7525,-122.7185,1.06);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (62.6315,-149.5556,2.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.5938333,-116.8141667,0.26);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5745,-118.8523333,0.75);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (35.9846667,-120.538,0.05);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (61.5962,-151.7696,1.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.6686,-153.0752,1.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (64.55,-148.6628,0.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (30.4447,99.8969,4.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (49.3963333,-120.4916667,1.64);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.7953339,-122.748497,0.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (35.5356667,-120.827,1.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (60.13,-147.1422,1.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (60.3944,-152.0352,2.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (18.8915,-65.318,2.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.8598333,-117.517,1.11);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8126667,-122.7793333,1.12);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.076,-120.6351667,0.66);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (19.2661667,-155.1111667,1.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (18.8866,-65.2742,3.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (34.0525,-117.3556667,0.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8013344,-122.8085022,0.45);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (46.2015,-122.1705,0.81);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.2986,-117.6128,0.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.4172,-118.7315,1.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.3226,-151.7245,1.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8139992,-122.8243332,0.56);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (18.8885,-64.3855,2.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.4392,-98.7823,1.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.6403333,-116.7476667,1.22);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (60.0305,-151.0401,1.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (41.8628,-119.6361,1.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (41.8617,-119.6358,1.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.5348333,-116.6961667,0.37);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (61.8189,-148.5748,0.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8251648,-122.8259964,0.85);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.4996,-152.5117,1.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (62.0818,-145.1654,0.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8285,-122.8218333,1.92);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8286667,-122.8243333,1.27);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8273333,-122.825,2.12);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8279991,-122.8253326,1.19);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.4751667,-116.4856667,0.68);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (62.9325,-150.633,1.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (35.5422,-97.3016,2.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (60.6903,-146.7114,1.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (39.9392,-120.8118,0.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.466,-121.0438333,1.23);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (61.2554,-150.8791,1.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5805,-118.8641667,0.51);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (-34.7927,-71.9327,4.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (6.8343,-73.0335,5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.667,-121.2876667,2.36);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.4782,-98.7332,2.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8148346,-122.8216629,0.18);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8103333,-122.8255005,1.03);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5725,-118.8618333,0.19);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.4611667,-118.5608333,1.01);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (60.171,-151.1672,1.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.8953333,-116.2371667,1.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (60.541,-151.8759,1.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.9845,-117.2255,1.21);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (39.406,-120.2231,-0.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.4528,-98.7787,1.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.6766,-115.1066,1.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.9987,-140.1165,1.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (53.5442,-166.5243,1.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8243333,-122.7906667,0.39);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.2756,-97.5085,2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.038,-118.8218333,1.18);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.9765,-113.0086667,1.28);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (45.8785,-111.351,0.53);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.5869,-151.0128,0.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.4788333,-116.4953333,0.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.4474,-118.6112,0.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.5051667,-116.5448333,0.96);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.8519,-152.082,1.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (64.7137,-150.616,1.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.5965,-151.6133,1.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.3282,-114.6874,0.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.4356667,-118.61,0.51);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (60.0298,-153.6086,2.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.088,-117.9108333,1.26);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.272,-97.5183,3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (45.6633333,-122.7378333,2.07);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.4743333,-116.4875,0.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.7635,-117.7371667,1.47);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.4786667,-116.493,1.13);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.9519,-152.5533,1.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.7926674,-122.7288361,0.36);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (61.4206,-146.6289,1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.306,-122.0823333,1.23);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.4821,-96.9901,2.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (45.2426,-67.9909,1.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (64.7226,-150.6949,1.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (64.9803,-147.3501,1.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.7856,-153.1336,2.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.0333333,-120.6048333,1.97);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.6356667,-118.9241667,0.44);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (62.2608,-151.7567,1.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.6338333,-118.922,0.72);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8193321,-122.8190002,0.52);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (62.687,-137.0556,1.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (19.392,-155.2786667,2.13);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.7649994,-122.7418365,0.52);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5418333,-118.876,0.96);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8199997,-122.7819977,0.79);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.7625,-122.7371667,1.72);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (45.1093333,-74.0721667,0.46);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.7498333,-122.7223333,0.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (60.2525,-151.1354,1.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (51.4971,-178.1129,2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.7550011,-122.729332,0.91);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.57,-118.8566667,0.89);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8131676,-122.8183365,1.15);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.5755,-153.4385,1.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (60.2092,-141.0141,1.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (60.2222,-140.9722,1.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.2772,-151.4775,2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (65.2883,-149.0024,0.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.484,-116.4973333,0.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (18.8323,-67.1883,3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (62.6521,-149.9751,2.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.1598,-117.2355,0.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (32.9818333,-116.2745,1.63);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (45.345,-121.1385,1.99);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (40.163,-122.8001667,0.88);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5885,-118.8385,0.23);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (61.724,-149.6032,1.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.1102,-151.5332,0.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.4712,-151.0663,1.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (34.3718333,-116.1915,1.62);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (46.2641667,-122.5941667,1.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.8652,-140.1295,1.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.539,-121.9175,1.71);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.4768333,-116.487,0.55);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.1087,-151.5081,1.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (61.203,-149.7643,1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.414,-118.2606,0.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (64.0468,-146.4643,0.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.5707,-150.0643,2.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (-5.6255,110.1409,4.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8258324,-122.8440018,0.85);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.982,-116.8448333,1.41);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (48.139,-115.0486667,0.31);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (18.378,-64.7149,3.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5673333,-118.853,0.06);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.409,-118.2667,0.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (60.8172,-151.6207,1.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.7488,-151.0239,1.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (-5.5003,151.6656,4.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (-54.6249,-39.3315,4.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (-54.6333,-39.6703,5.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (-54.801,-39.3596,4.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.8175,-153.0519,1.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36,-117.9258333,0.33);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.0053333,-117.9153333,0.94);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (64.6824,-149.2998,1.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (54.0138,-163.0321,2.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (21.7411,143.0978,4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (61.2661,-152.2677,1.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (51.037,179.039,2.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8343315,-122.7975006,0.43);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (61.4591,-141.269,1.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (60.9726,-151.4626,1.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.2613,-97.3437,2.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.4706,-98.7537,1.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (45.3078333,-111.9476667,0.19);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (55.7849,-160.0647,1.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.4483,-98.7633,1.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.4756667,-116.4921667,0.55);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (19.2948333,-155.3833333,2.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (19.3768333,-155.2373333,0.45);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.8304,-152.6666,1.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (57.1179,-136.2059,2.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8148346,-122.8195038,1.07);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.4633,-98.7508,2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (-30.4676,-71.3993,4.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.4612,-98.7202,2.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.9991,-147.9166,2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (61.0837,-151.4597,1.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.1687,-152.6438,0.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.9865,-121.6608333,0.83);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.8668,-148.626,0.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (62.0171,-147.9174,1.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.5272,-147.1798,1.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.7866667,-122.9061667,0.62);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (52.1098,-173.3694,1.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.9604,-116.1149,-0.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (41.8717,-119.6629,1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (35.9815,-120.5418333,1.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (19.3993333,-155.6183333,0.67);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (41.8692,-119.661,1.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.0545,-120.2506667,1.32);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.052,-120.2496667,1.32);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8373333,-122.8296667,0.34);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.8697,-117.4063,0.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (11.659,144.6194,5.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8105,-122.8226667,1.52);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (39.8835,-119.4478,0.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5673333,-118.8535,0.07);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.57,-118.8555,0.06);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.1215,-149.5998,1.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (64.2533,-150.0105,0.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (65.1857,-152.735,0.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (19.1595,-155.4626667,1.75);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.1713333,-112.8236667,0.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.7145,-116.8183333,0.66);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.774,-153.1605,1.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (60.9094,-151.4774,1.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.2801667,-97.4926667,1.92);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (61.2198,-150.8901,1.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.7938333,-122.763,1.03);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (17.8145,-66.0341,2.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.3246,-152.237,1.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (62.4193,-147.7193,1.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8123333,-122.83,1.07);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (60.9272,-149.5031,1.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (19.3918333,-155.2805,2.12);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (51.2067,-178.5812,2.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (64.0979,-154.1319,1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.5243,-118.5151,-0.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.8898333,-116.2378333,1.29);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.7677,-119.652,1.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5781667,-118.8658333,0.08);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (65.1833,-149.4283,0.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (62.4749,-150.0831,1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.7982,-152.6403,1.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.2535,-116.2194,0);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5696667,-118.8545,0.02);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.2945,-116.2233333,0.86);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (39.4084,-120.2196,0.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.7607,-153.1412,1.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (39.835,-120.7747,1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (41.8633,-119.6316,1.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.033,-115.5873333,1.22);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (61.094,-148.2735,1.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (40.0583,-120.9032,0.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.8036,-153.2397,1.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (60.8365,-152.4628,1.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.247,-116.7543333,0.86);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.5718333,-116.6725,0.02);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8238335,-122.8239975,0.85);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8269997,-122.8225021,0.56);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.159,-118.2324,1.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (64.9161,-147.7403,0.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.9518,-148.8128,1.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.9091667,-118.3066667,1.49);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.4758333,-116.4861667,0.44);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.7165,-153.1504,1.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (60.6951,-146.7052,1.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (61.5658,-146.2762,1.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (41.9269,-119.6487,0.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8048333,-122.769,2.33);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8071667,-122.7996667,2.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (67.8266,-149.0379,1.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.0371,-150.514,1.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.654,-121.6696667,2.98);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (53.8203,-166.0291,2.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.5647,-153.53,2.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (60.1518,-151.2086,1.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.4925,-115.2296,1.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (60.6809,-152.1124,1.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (-57.4912,-66.4049,5.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.4387,-98.7772,2.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8116667,-122.8161667,1.61);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8139992,-122.8183365,1.18);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8235,-122.8226667,0.14);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (32.5478333,-116.1876667,1.43);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.2485,-150.1275,1.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8079987,-122.8239975,0.95);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (53.0262,-167.4249,2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.938,-148.7852,1.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (46.218,-122.109,1.63);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (60.6306,-147.635,1.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.475,-116.4895,0.48);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.64,-118.9286667,0.45);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.4756667,-116.4973333,1.21);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.2064,-116.8707,-0.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (62.5749,-151.3999,1.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.4771667,-116.501,0.76);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (62.0662,-145.2164,1.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (61.7902,-151.7459,1.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (-19.0215,169.2867,5.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.1974,-118.5081,0.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.4228333,-89.5168333,1.84);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (34.1588333,-117.7215,1.18);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (61.8973,-147.1386,1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.4481,-98.7696,1.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (32.1986667,-115.223,2.57);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (62.9083,-151.321,1.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (64.8564,-148.8529,0.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8093338,-122.8278351,0.56);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.4755,-116.4866667,0.75);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5661667,-118.8638333,0.49);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (64.9882,-147.3624,1.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.6841667,-116.7675,1.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5641667,-118.8533333,0.36);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.6863333,-116.7658333,1.04);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8058319,-122.8134995,0.63);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (40.5471667,-121.938,1.46);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.7861667,-122.8046667,0.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.8093,-149.3132,1.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (62.9256,-151.3322,1.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (35.0406667,-117.6776667,1.53);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (64.6151,-149.2371,0.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (19.1615,-155.4586667,1.73);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (60.0749,-152.5531,1.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.7985001,-122.7616653,0.82);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (34.8611,23.1724,4.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (61.8027,-149.8567,1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.8741667,-117.5088333,0.82);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.086,-117.6133333,2.17);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.2545,-112.7326667,1.46);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.5171,-151.0252,1.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (35.6823,-3.553,4.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5028333,-118.8431667,0.85);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (35.7546667,-84.0746667,1.82);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.4983333,-116.7901667,0.84);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.5644,-150.9674,0.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.827,-122.8315,0.68);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.0327,-116.3682,-0.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5623333,-118.8536667,0.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5666667,-118.8565,0.64);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.4347,-98.7853,2.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.482,-116.4971667,0.56);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8333321,-122.8095016,0.88);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8149986,-122.8296661,0.56);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (35.9338,-97.3543,3.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (19.395,-155.4555,1.43);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.9887,-151.3023,2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (19.1671667,-155.4613333,1.71);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.6781667,-121.3021667,1.58);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8076668,-122.7910004,1.15);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.2244,-118.3365,0.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.5028,-98.4855,2.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8238335,-122.8243332,1.04);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.8241667,-117.0073333,0.85);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.5666,-147.632,0.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.4735,-118.4483,0.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (65.2738,-149.3708,0.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (19.549,-92.1053,4.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.4773333,-116.493,0.87);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (4.8702,94.5563,4.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (41.8632,-119.6044,1.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.0943333,-117.9133333,1.24);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.7718,-153.0049,1.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (44.8341667,-111.894,0.76);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (60.2101,-146.9777,2.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (51.7537,-178.4822,1.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8391685,-122.8338318,0.32);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (62.619,-151.5615,2.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (40.8316667,-122.2013333,1.57);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.8245,-152.9908,1.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.6976,-116.3386,0.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8285,-122.8068333,1.28);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (51.0895,-174.8337,2.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (68.0975,-158.2154,4.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.0353333,-120.5965,1.26);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.829,-122.8086667,1.19);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.7165,-153.243,2.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (9.3073,127.0928,4.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.698,-116.7876667,0.79);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.7429,-153.0529,1.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8326683,-122.8069992,0.88);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8313333,-122.8081667,0.68);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8308333,-122.8088333,1.09);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (39.9322,-117.8926,1.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8233337,-122.8476639,0.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8305016,-122.8088303,0.69);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8318329,-122.8066635,1.16);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8289986,-122.8099976,0.56);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8303333,-122.8076667,2.58);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (45.3543333,-121.6846667,0.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (39.3759,-119.7467,0.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (61.3604,-147.149,1.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.821167,-122.8458328,0.19);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.5258333,-116.7323333,0.39);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8353333,-122.8008333,1.63);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (61.8444,-151.0854,1.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (60.2685,-140.6266,1.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (60.2558,-143.0266,1.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8235016,-122.7795029,0.75);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (64.7894,-147.7885,0.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (-15.1436,-173.4146,5.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (64.5337,-148.7003,1.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.821167,-122.8256683,0.43);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.475,-116.4855,0.53);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.491,-118.8528333,0.75);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (61.6888,-141.7592,0.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (18.9246667,-155.5441667,2.03);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (52.2858,-179.8773,3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (62.9834,-151.0548,1.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.8045,-153.092,1.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (39.1952,-114.9876,0.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.810833,-122.7884979,0.53);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (-8.5452,128.5971,4.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.279,-118.8158,0.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (53.7983,-164.1128,2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.517,-150.8773,1.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.4738333,-116.4993333,1.61);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.017,-118.4124,0.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.7965,-153.0428,1.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8171654,-122.8111649,0.79);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (61.7628,-151.7212,1.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.3845,-117.8673333,1.84);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.4532,-152.6608,2.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (40.352,-123.8,1.98);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (60.0283,-152.7553,1.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (61.7464,-'))
);
end;
/
begin
wwv_flow_api.append_to_install_script(
 p_id=>wwv_flow_api.id(75477078542955772)
,p_script_clob=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'154.2555,0.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (47.7468333,-113.7635,-0.57);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.4704,-98.7614,0.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (47.7463333,-113.7641667,-0.37);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (46.6281667,-118.8823333,1.41);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5711667,-118.8546667,0.14);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (-7.1958,125.1101,4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (61.735,-148.2008,0.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (39.3416,-119.9559,1.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (39.3397,-119.9598,1.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.8778,-140.1681,1.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.6812,-115.477,0.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (35.9813333,-120.5403333,0.15);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8286667,-122.8544998,0.44);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.8703333,-118.1026667,1.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5695,-118.861,0.66);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (39.158,-119.6354,-0.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8221667,-122.8471667,0.15);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8424988,-122.8763351,0.76);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.3431,-119.1613,1.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.853,-123.0118333,0.88);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5581667,-118.853,0.22);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5721667,-118.857,1.27);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8426667,-122.8298333,0.53);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8531667,-123.013,1.54);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8518333,-123.0121667,0.87);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5188333,-118.7836667,0.83);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5686667,-118.853,0.23);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.7612,-153.097,1.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.571,-118.8573333,1.24);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.57,-118.8586667,2.46);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.8786,-140.144,1.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (34.6378333,-116.655,1.77);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (44.2681667,-120.8943333,1.88);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (35.9823333,-120.5413333,0.28);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (35.9815,-120.5413333,0.32);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (35.6616667,-121.1053333,1.51);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (60.1919,-140.9194,1.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (45.235,-112.31,0.64);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.8506,-140.1094,1.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (61.7171,-150.5691,1.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8091667,-122.8295,0.19);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (60.7203,-152.1537,1.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (61.3445,-151.9085,2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (35.6234,-97.1241,2.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.3268333,-122.104,1.73);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.6825,-152.4109,1.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (58.3033,-152.8871,1.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (53.1964,-165.7297,1.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (34.1075,-117.8088333,0.82);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (18.881,-64.1826,3.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (52.5967,-170.0617,2.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (34.0618333,-117.2603333,1.15);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (64.632,-146.9163,0.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (19.3946667,-155.2793333,1.88);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (34.5751667,-85.2966667,2.24);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.6025,-116.8146667,0.72);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.8381,-116.0241,1.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.1313,-118.0843,0.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (64.9738,-147.4237,0.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.6276,-153.371,1.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (52.9344,-167.5614,1.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (61.1552,-150.1223,1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8065,-122.8258333,0.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (44.5835,-110.748,0.87);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (44.6385,-110.8755,-0.28);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.6955,-153.5833,1.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8321648,-122.8079987,0.67);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.6561667,-121.6723333,2.46);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.6054,-150.6388,1.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.3457,-119.1814,1.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (61.3969,-147.6416,0.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.8354,-152.9098,1.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.1704,-117.2434,0.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.2662,-150.4689,1.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (6.6617,125.6034,4.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8226662,-122.7628326,0.92);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8204994,-122.762001,0.73);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (35.053,-118.3488333,1.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.3643,-149.6734,1.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (53.2926,-164.2379,2.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (32.2503333,-116.5666667,1.84);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (56.4808,-157.9545,2.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (53.4518,-165.651,1.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (51.4982,-178.189,2.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.1556667,-112.8285,1.29);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.2799,71.62,4.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (-10.1098,161.3016,4.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (51.642,-175.7876,2.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.4796667,-116.4936667,0.65);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (60.9047,165.617,5.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (62.2905,-151.1836,1.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.7828331,-122.7549973,0.73);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (60.1117,-151.6446,1.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.6495,-151.1571,0.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (29.4551,142.8992,4.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.7283,-153.1584,2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (19.3813333,-155.2383333,2.15);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.7151,-115.8632,0.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.4106,-151.5236,0.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5533333,-118.845,0.56);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.7785,-122.7513333,0.78);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (61.6348,-146.4543,1.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.342,-122.5721667,2.54);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (61.5734,-149.9028,1.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.1753333,-116.5828333,0.92);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (11.1502,-86.8281,4.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (61.4621,-147.2483,1.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (51.1832,-176.3333,2.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (60.1716,-152.0471,1.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (47.019,-68.7786,1.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.334,-116.0364,0.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (61.5224,-149.9113,1.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8068352,-122.7945023,0.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.627,-118.8953333,0);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.4239,-115.5115,0.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.3336,-116.0423,0.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.3416,-116.0428,0.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.7013,-115.8806,0.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (56.5135,-151.7145,3.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8053322,-122.7935028,0.52);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.4906667,-118.868,0.65);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8068352,-122.7916641,1.09);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (64.9045,-147.678,0.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8055,-122.7898333,2.07);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.4771667,-116.4953333,0.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (61.1655,-151.9628,1.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.4781667,-116.4913333,0.83);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.583,-118.8608333,0.01);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8274994,-122.8056641,0.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5718333,-118.8548333,0.67);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.6281667,-118.8965,0.55);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.1835,-118.1236,1.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.4803333,-118.8668333,0.51);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (-18.1502,-178.3403,4.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (51.1958,-179.5981,2.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5075,-118.6381667,1.49);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.7911682,-122.7273331,0.96);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (52.9956,-169.2549,3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8321648,-122.8115005,0.43);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.7926674,-122.729332,0.36);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.9045,-82.445,2.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.5878333,-116.808,0.37);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.9347,-118.6751,1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.6268333,-118.8926667,-0.24);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.4738,-98.764,1.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (32.666,-115.9331667,1.67);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.7787,-152.9979,2.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8195,-122.7668304,0.85);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.5337,-152.5424,1.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.4384,-153.0603,0.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.7114,-115.8732,0.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.4172,-153.5644,1.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (62.0021,-149.8484,1.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (62.2637,-145.699,1.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8193333,-122.7621667,1.76);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.7871667,-122.7453333,2.07);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.695,-153.1584,1.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (32.8206667,-116.161,1.41);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (32.8218333,-116.1638333,2.13);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.428,-118.4513333,0.28);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8058319,-122.7931671,0.54);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (64.5823,-150.5526,2.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (51.182,-176.3676,2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8146667,-122.8190002,0.39);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (-32.9776,-177.898,4.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.4722,-118.4383,0.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.5915,-116.8173333,1.37);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.1952,-149.2416,1.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (64.6582,-153.3241,1.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (53.4813,-165.6935,2.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.829834,-122.8669968,0.91);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (64.2827,-152.4627,1.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.1146,-117.9248,0.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (61.3847,-139.2181,0.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.7183333,-116.8258333,0.76);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.4245,-118.4563333,0.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.7961655,-122.7593307,1.09);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8063333,-122.8106667,2.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.7125,-115.8729,0.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (61.5999,-150.3691,1.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8079987,-122.8136673,0.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8071667,-122.81,2.04);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (18.0669,-67.1695,2.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.4672,-98.7615,1.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (41.8723,-119.6468,1.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.7723351,-122.7559967,0.73);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (34.2301667,-117.4358333,1.77);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (19.2466667,-155.1158333,1.89);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.8866,-152.6325,1.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8434982,-122.8253326,1.08);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (60.6938,-152.9634,1.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (41.8709,-119.6445,1.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.59,-118.8406667,-0.04);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.4912,-98.7136,2.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.4758333,-116.4901667,0.92);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5793333,-118.8538333,-0.01);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.7546654,-122.7258301,0.64);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.7266,-115.7551,1.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8248329,-122.8454971,0.57);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.2824,-114.5402,1.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (60.8929,-150.5174,2.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.444,-98.7688,1.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (55.1386,-161.7823,2.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.2146667,-116.0763333,1.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.4725,-116.4866667,0.64);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (61.312,-139.9428,1.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.4768333,-116.4928333,0.92);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (61.5426,-146.3454,1.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.0842,-150.9567,1.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8163338,-122.793663,0.52);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (41.9148,-119.5963,0.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (35.845,-120.6765,0.54);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (41.9767,-120.1754,1.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (19.065,-68.0071,2.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (60.0434,-152.5052,1.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (46.1381667,-119.2418333,1.38);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (52.7341,-168.3146,2.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.4761667,-116.4926667,0.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.3043,-151.1183,0.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (65.1349,-143.4607,0.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (60.7049,-151.5386,1.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (11.5517,-87.3729,4.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.9584,-140.1527,1.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (61.6535,-151.6671,1.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.0038333,-117.892,0.87);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (53.4219,-165.6088,3.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.8336,-152.8742,1.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8409996,-122.8398361,0.18);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8418333,-122.8385,2.59);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.0396667,-117.8045,0.46);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (35.9893333,-120.5623333,0.34);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.0466667,-117.8043333,0.58);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (19.3893333,-155.2786667,1.21);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.8818333,-117.7501667,1.31);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (14.2011,146.975,4.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.3071,-150.4187,1.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (58.3481,-153.7149,2.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (62.6887,-151.8114,1.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (35.8468333,-120.6751667,1.02);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (41.8977,-119.6218,1.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (60.1887,-140.9656,1.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.7006667,-117.5226667,0.91);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.362,-117.1111,0.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (53.6876,-166.6326,1.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (39.9684,-120.7561,0.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8051667,-122.794,0.25);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (40.0262,-120.8342,0.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (41.923,-119.6016,2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (52.3342,-169.4119,2.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (19.5536667,-155.7375,1.22);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (-6.4083,129.8098,4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8413333,-122.875,0.71);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (56.35,-157.8468,2.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.6507,-118.8001,1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.3252,73.9797,4.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (35.6825,-121.1563333,1.32);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.2598,-117.516,0);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (61.7667,-150.1918,1.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.0428333,-116.4348333,0.89);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8089981,-122.8311691,1.05);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.4687,-98.7502,1.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.2913333,-97.5985,1.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.0116667,-117.812,0.73);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.619,-149.4779,1.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (20.98,95.0238,4.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.9808333,-121.4626667,2.94);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.4726667,-116.5011667,1.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (34.0366667,-116.3161667,1.72);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.7943333,-122.7535,1.61);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (61.4111,-150.9845,1.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.7931667,-122.7555,1.92);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (31.0281,141.0074,4.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.2931667,-97.5971667,1.94);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (55.8027,-158.3103,3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (19.0388333,-155.4241667,1.97);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.2695,-150.4633,1.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (64.9042,-148.9588,0.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.4687,-98.7489,1.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (-18.1714,-177.9422,4.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8251648,-122.7806702,0.47);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.469,-98.7517,1.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (61.9848,-144.1438,1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (39.3468,-119.9566,0.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (39.3515,-119.961,0.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (22.4664,102.1141,4.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (46.6046667,-119.837,0.72);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (54.4721,-160.7255,3.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (19.3555,-155.2783333,1.72);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (39.3322,-119.9662,0.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.5186,-118.5097,0.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.471,-98.748,3.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.1872,-145.1202,1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (61.5723,-151.9675,1.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (60.5265,-150.7055,1.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.497,-116.7881667,0.59);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (64.9838,-147.3567,1.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (39.3451,-119.9562,0.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (39.3403,-119.9541,0.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.9921667,-116.3028333,1.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.2965,-121.6788333,1.53);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (18.9654,-65.3906,2.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (35.1309,23.5019,3.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.9825,-121.4628333,1.72);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (60.6029,-151.5957,2.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.021,-117.7765,0.53);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.788,-122.8045,1.93);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (58.9183,-150.7436,1.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (47.4755,-120.7273333,1.13);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8118324,-122.8238297,0.69);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (60.9887,-147.2758,1.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.5938,-117.978,1.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (19.4873333,-155.6585,0.89);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.5125,-151.1919,0.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (46.6105,-119.8385,0.51);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (35.2705,-119.8511667,1.84);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.2481667,-112.736,1.06);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (61.307,-145.1116,0.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.962,-117.743,0.97);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.9673333,-117.7323333,2.22);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (34.6018333,-118.631,1.46);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8161667,-122.8075,0.51);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.822834,-122.7838364,0.78);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.786,-122.805,1.37);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (46.6166667,-119.8478333,0.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.7616653,-122.7331696,0.76);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (60.5952,-149.7614,1.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.2186,-145.8602,1.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (62.9192,-151.2766,1.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (54.603,-161.0012,2.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (60.1096,-147.8254,1.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8059998,-122.793335,0.81);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.827,-122.8275,0.13);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.2356667,-121.6185,1.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (56.4673,-156.4263,2.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (46.2165,-122.1721667,-0.56);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.926,-122.6776667,1.21);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.5676667,-116.7175,0.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.6487,-97.7338,2.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (62.0557,-150.2496,1.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.7949,-153.0564,1.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.7358,-152.6345,1.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (35.3016,23.9166,4.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (35.859,-120.6505,0.45);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.7592,-153.0832,1.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8383333,-122.8295,1.46);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.7571,-116.1922,-0.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (61.9453,-148.6999,1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.1741667,-118.0476667,0.91);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.6745,-118.8796667,-0.16);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.6809,-119.7828,1.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.6818,-153.2479,1.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.3658333,-119.0865,1.22);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.1528,-149.2887,2.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (35.6771,-97.3954,2.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (19.3883333,-155.2791667,1.11);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (60.9452,-151.9906,1.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.784,-122.7606667,1.33);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.9745,-152.2702,1.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.0335,-117.7768333,0.53);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (60.8211,-143.6501,1.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (40.2881667,-124.3313333,2.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (44.3813333,-110.5613333,0.64);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (44.3805,-110.5583333,0.93);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (34.3298333,-118.4585,1.46);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (22.7585,93.9433,4.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (-17.4112,-178.8799,4.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.7931,-153.1339,2.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.2195,-117.8299,0.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (53.6873,-166.9148,3.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (61.9093,-151.3112,1.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (2.4003,128.3608,5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (60.3465,-152.2447,1.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.0275,-116.4325,2.12);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.8473333,-113.9476667,1.67);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.4912,-151.2568,1.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (15.0127,145.6302,4.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (35.67,-97.3984,2.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (52.648,-169.3712,2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.3156,-145.3692,0.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.4599,-98.7528,2.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (19.345,-155.4948333,1.35);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (60.181,-141.0477,1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (35.8425,-120.6768333,0.96);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (19.1611,-64.3175,2.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.0275,-117.6093333,1.11);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.4988333,-116.494,0.66);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (61.1673,-149.8415,1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.2965,-150.4564,1.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (39.6997,-120.157,0.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.2041,-152.0481,1.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.2065,-152.1734,1.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8313332,-122.770668,0.54);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.9578333,-121.5913333,1.27);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (39.7775,-123.6023333,1.93);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (60.5823,-151.0527,1.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5996667,-118.7853333,0.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5705,-118.847,0.54);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.3136,-114.64,0.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (60.1457,-141.0874,0.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.0335,-120.5943333,1.43);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (52.1198,-170.7772,2.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (64.2787,-149.8628,0.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (60.5262,-150.7352,1.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5666,-117.7251,1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (60.1659,-141.0832,1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8106651,-122.7969971,0.87);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (61.3403,-146.7117,1.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8053333,-122.823,0.19);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.2733333,-120.216,1.81);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (39.7923333,-123.716,1.93);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.7394,-153.1506,1.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) value'))
);
wwv_flow_api.append_to_install_script(
 p_id=>wwv_flow_api.id(75477078542955772)
,p_script_clob=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
's (36.034,-117.796,1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (61.6494,-149.5564,1.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (60.1703,-141.0082,1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (60.1454,-141.109,0.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (60.172,-141.0653,3.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (39.4322,-119.7832,0.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.5645,-147.651,0.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (40.2154,142.3841,4.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (60.3477,-152.2518,1.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.9007,-140.2041,1.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (61.3841,-151.6263,1.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.9257,-140.0918,1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.9106,-140.1547,1.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.7925,-122.7983333,0.88);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.9382,-140.1919,1.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.9126,-140.0314,2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.8664,-140.1546,1.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (60.531,-147.6166,1.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.3657,-152.7497,2.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (62.1866,-150.4475,1.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (64.9275,-147.6075,0.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (41.9749,-120.173,1.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (53.416,-167.7341,1.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (34.4905,-116.5175,1.49);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (-26.9699,-70.9814,4.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5709,-117.7236,0.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (47.5078333,-114.937,0.31);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.9776667,-121.4575,0.87);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (60.0595,-151.5082,1.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.1951,-151.246,2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.48,-151.8227,1.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (60.4548,-151.5977,1.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (20.0073333,-156.088,1.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (46.6135,-119.8425,0.32);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (60.5641,-151.1667,1.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (60.351,-141.3926,0.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (32.979,-116.2733333,1.62);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (19.4106667,-155.2736667,1.62);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8413315,-122.8396683,1.15);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (19.0386667,-155.4258333,1.91);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8188324,-122.8088303,1.03);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.8712,-153.2722,1.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.5922,-152.3418,1.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.8075,-121.5255,1.52);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (34.4488333,-118.0308333,0.64);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8136673,-122.8103333,1.13);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.5509,-150.79,2.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8396683,-122.8040009,0.35);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8380013,-122.8046646,0.45);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.5822,-150.6869,0.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8368333,-122.807,1.32);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (62.8772,-150.0319,1.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.831665,-122.8105011,0.32);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (61.1298,-140.0317,1.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (34.1578333,-117.4688333,1.11);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (34.2138333,-117.4418333,0.75);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5671667,-118.469,1.83);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.8739,-118.0926,1.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.4134,-151.5231,1.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.051,-89.8156667,1.26);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5718333,-118.8583333,0.21);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (62.654,-137.1906,1.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8110008,-122.7438354,0.88);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36,-118.195,1.36);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.7325,-116.0533333,1.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (47.8921667,-113.7593333,-0.14);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.1581,-118.1551,1.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (39.7008,-120.1523,0.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.2747,-118.8321,1.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (46.8603333,-121.7506667,0.18);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.0771667,-91.3355,2.15);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.6,-118.784,0.45);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (39.3885,-119.7484,0.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5806667,-118.8646667,0.62);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (19.3665,-155.2955,1.28);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.8235,-152.9058,1.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8381667,-122.836,1.86);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.5193,-118.5124,0.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.3561667,-121.7166667,1.16);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (-6.3788,130.4624,4.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8354988,-122.7734985,1.19);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (60.1602,-152.4122,1.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (64.9874,-147.3562,1.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.4713333,-116.5213333,0.57);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (41.8352,-119.6546,1.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (34.8216667,-116.4068333,1.92);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.6345,-119.0405,0.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (68.8363,-144.931,2.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (56.1133,-159.0435,2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (58.9786,-136.6943,1.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.1681667,-112.8293333,1.59);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (44.544,-114.5151667,1.82);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8386667,-122.8261667,1.45);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8058319,-122.8161697,0.97);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.9713333,-118.4218333,1.29);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.0113333,-117.8115,0.81);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (19.5018333,-155.2026667,1.13);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (41.8429,-119.6658,0.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (-33.6951,-178.4301,4.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (17.7161,40.296,4.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (60.2755,-151.1836,1.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.2313,-118.0838,0.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (19.5036667,-155.1968333,3.45);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (49.436,-120.5185,2.07);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5718333,-118.855,0.84);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.7458333,-121.5955,1.34);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (60.2417,-153.0879,1.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (19.039,-155.4223333,1.95);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (47.5413333,-120.2836667,0.96);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (32.8183333,-115.5945,1.77);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (11.2249,-86.7917,4.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.62,-118.8703333,-0.18);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.4814,-116.1677,0.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.4621,-116.2431,0.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.4935,-116.155,0.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (19.424,-155.6075,0.71);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.4759,-116.1561,0.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (46.3261667,-122.6585,1.25);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.46,-120.4056667,2.12);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (61.8795,-152.1026,1.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (60.1726,-141.0917,1.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (60.1541,-141.1048,2.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (46.8506667,-121.7525,0.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.9046,-153.06,1.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (45.992,-112.4526667,2.27);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (44.6218333,-110.5356667,0.65);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.7685,-122.7116667,1.62);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5796667,-118.476,0.76);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (61.4549,-149.9585,1.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (17.8828,40.3718,4.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.568,-118.8616667,0.29);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (60.0245,-152.7805,2.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.0185,-120.5793333,0.49);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.4447,-98.7854,1.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (62.1007,-151.2039,1.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5621667,-118.8743333,0.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.0249,-117.5155,1.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (61.2211,-148.6992,1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (64.921,-140.5485,1.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (61.7189,-148.2495,2.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.7432,-151.9472,1.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (61.4422,-151.6682,2.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.9105,-152.8275,2.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (62.2988,-151.196,1.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8218346,-122.7695007,0.78);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.8872,-148.4581,1.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (19.1751667,-155.6536667,1.55);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.8616667,-117.7426667,1.14);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (35.8639,-97.215,2.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (61.4587,-150.7436,1.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (15.4834,-93.7167,5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5826667,-118.8625,0.31);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (43.7643333,-110.8688333,1.02);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.2568,-117.5184,1.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.7365,-153.134,2.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (47.4551667,-115.9985,1.42);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (43.5425,-121.7475,0.82);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (43.5578333,-121.7306667,0.81);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (60.9752,-152.7408,1.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.3233333,-120.9058333,1.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (51.2626,-178.2609,2.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (19.1133,-65.1794,2.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (60.3044,-152.4211,1.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.8634,-116.2063,-0.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (62.3774,-148.3297,0.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (18.2673,40.0033,4.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.6874,-149.8116,1.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (64.9867,-147.354,1.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.3141,-150.3381,1.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (43.7663333,-110.8161667,1.05);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5763333,-118.8715,0.29);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (34.8261667,-116.4078333,1.62);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (18.867,-67.4063,2.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (39.7947,-120.7322,0.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (62.2362,-151.048,1.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.523,-118.6241667,1.79);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.7907,-153.0371,1.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.2316667,-98.0105,2.26);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8291664,-122.8081665,1.13);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.767,-153.0836,1.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.840332,-122.8320007,1.11);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.2563333,-116.0836667,1.01);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.843,-122.8325,1.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (-32.9191,-178.2,5.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8268318,-122.8523331,0.99);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (49.6534,-129.3038,4.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (49.704,-129.1354,4.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5718333,-118.8568333,1.49);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (15.0037,122.4605,4.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (61.4143,-149.9268,1.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (58.4616,-151.8163,1.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.9551,-152.7179,1.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (46.8788333,-112.5376667,0.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.2447,-152.6709,1.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (54.8262,-161.7891,1.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (19.041,-67.8575,3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (51.7578,-172.8911,3.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (62.416,-148.1158,1.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (-20.7348,-69.7599,4.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (-20.3078,-173.2976,5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (60.5868,-149.0706,1.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (35.5463333,-120.854,1.42);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.9826667,-116.3878333,1.03);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.818,-122.8198333,1.64);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.692,-116.8333333,0.89);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8116684,-122.7856674,0.53);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.1933,-116.3675,-0.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.0545,-118.2912,1.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (18.8518,-67.2833,3.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.809166,-122.7904968,0.77);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8216667,-122.7953339,0.73);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (34.0825,-116.4028333,1.42);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (34.8263333,-116.4045,1.83);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (61.7872,-147.8155,1.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (35.638,-120.9248333,2.11);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8139992,-122.7998352,0.62);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.3526,-151.4937,1.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.6418,-153.1474,1.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (43.7616667,-110.8611667,0.83);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (46.6148333,-119.8446667,0.51);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.1465,-150.4049,1.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.1478,-145.8905,2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8214989,-122.8443298,0.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (55.1762,-161.8632,2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.7919998,-122.7786636,0.67);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.6023333,-116.8135,1.15);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.6897,-153.5093,2.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (62.4975,-152.9871,2.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (43.76,-110.882,2.07);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8126667,-122.8243333,1.37);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (19.0499992,-155.4383392,2.06);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.0143,-115.9897,0.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (-23.9571,179.7251,4.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (55.3985,163.2512,4.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.6657,-98.2407,2.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (47.7191667,-113.7311667,0.86);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (60.6528,-146.8383,1.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8063333,-122.8156667,0.19);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.5286,-147.3569,1.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8443336,-122.8326645,1.03);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (60.3434,-152.4705,1.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (34.6908333,-116.2458333,1.87);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (62.3461,-148.3868,1.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (60.3781,-152.2276,1.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (53.3938,-166.749,2.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.8537,-152.8821,1.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (19.4143333,-155.6315,1.26);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.2636,-151.0632,1.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.808,-122.8246667,0.18);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (64.8507,-147.339,0.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (62.3137,-149.9009,1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (34.8251667,-116.4073333,2.47);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8056679,-122.8125,0.88);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.6966,-151.7707,0.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.1348333,-121.5836667,1.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (-17.9791,-70.1967,4.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (19.0510006,-155.449173,2.05);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.7910004,-122.7429962,0.64);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.5853,-150.7589,0.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.6081667,-118.8028333,0.65);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.7808333,-121.9675,1.83);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.806,-122.7916667,1.11);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.9265,-117.9325,1.33);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.0256667,-116.4313333,1.39);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (60.3194,-153.0599,1.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (61.569,-141.2646,0.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.044,-118.5889,1.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.0225,-117.796,0.55);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (64.642,-149.0891,0.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.655,-148.7872,0.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (23.2016,123.3511,4.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (17.9815,-67.0775,1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.1373,-117.7865,1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (45.5095,-69.4173,1.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (19.141,-155.467,2.08);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.1822,-117.7551,0.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (60.2938,-152.4523,1.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (53.2282,-165.9982,1.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (46.2448333,-122.4333333,0.36);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (51.498,-177.6722,2.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8346672,-122.8085022,0.77);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (35.6865,-121.1555,1.21);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.2861667,-97.603,2.09);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (62.7576,-149.4525,0.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (19.0533333,-155.4351654,1.92);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (46.9415,-112.3918333,0.62);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.4916667,-118.8508333,1.72);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.1386667,-118.2635,2.16);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.4988333,-116.7943333,0.43);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.1428333,-118.2651667,1.93);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (52.2578,-169.287,2.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (47.5301667,-122.841,0.16);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (56.2868,-162.0165,4.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (-14.8822,-76.0177,4.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (54.4003,-163.1458,2.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.3329,-114.6331,1.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.6898,-98.2625,2.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (18.908,-67.3332,2.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (19.0446663,-155.44133,2.07);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (52.2845,-170.8074,3.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.4773,-148.1442,0.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (62.7426,-149.4756,1.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (16.9975,122.8575,4.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (61.7686,-148.2616,0.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (61.7346,-148.2808,0.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.3657,-97.0528,2.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (-17.3461,-69.9681,4.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.7631683,-122.7278366,0.81);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (64.8397,-150.5438,1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (62.8275,-149.6157,1.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (61.4102,-141.6931,0.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.7845,-153.0792,1.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.3198,-154.7716,2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (53.2916,-168.0143,3.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (-8.4832,128.5376,4.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.5287,-98.6908,1.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.0778,-149.8773,1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (62.0634,-149.2591,1.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8181667,-122.8191667,0.46);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (-17.8676,-178.0378,4.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (-5.5357,151.9025,4.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.6808333,-118.8698333,-0.04);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (-5.8548,152.5906,4.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.7832,-153.1598,1.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.4448333,-121.5581667,1.18);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8348333,-122.7956667,0.25);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.722,-153.1362,2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8163333,-122.8211667,1.73);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8160019,-122.8284988,0.69);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (-8.4943,147.7355,4.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.7073,141.7336,4.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.6476667,-121.2701667,1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (17.8327,-66.0525,2.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (61.9935,-151.0613,1.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.0481667,-121.4876667,0.61);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.826,-122.8438333,0.69);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.027,-116.4328333,2.56);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (61.3472,-151.7361,1.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.0333333,-116.4265,1.03);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (19.3375,-155.4415,2.03);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.4695,-118.8183333,0.79);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.8524,-117.4546,1.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.4812,-98.7333,1.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (34.3711667,-116.19,2.09);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.4004,-151.5642,1.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (66.8944,-147.375,1.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (66.0235,-141.3439,2.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (54.3378,-161.5295,2.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8458328,-122.8264999,0.84);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (32.6538333,-115.9361667,1.68);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.7673,-152.0544,1.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (18.5876,-66.6668,2.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8188333,-122.8073333,1.36);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (18.7653,-64.5299,2.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.0039,-150.3713,1.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5761667,-118.8696667,0.28);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (54.1565,-162.527,3.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8183327,-122.7791672,0.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (46.8505,-121.7518333,0.96);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (19.2848333,-155.3876667,0.84);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (19.2855,-155.3865,0.72);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (28.6123,142.9789,5.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8371658,-122.7828369,1.06);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8095016,-122.8133316,1.08);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.0763,-150.816,1.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (47.5366667,-122.857,2.58);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.1288333,-117.9268333,1.67);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.2716667,-120.3245,2.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.5574,-148.9155,0.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.0178333,-117.812,0.75);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (35.9956667,-120.5603333,-0.17);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (19.1956667,-155.4208333,1.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5785,-118.8538333,0.03);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8126678,-122.8073349,0.78);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (6.8582,-73.2006,4.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.0154,-150.4018,1.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (18.7029,-65.2496,3.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (62.3312,-149.0014,1.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (16.5239,39.8609,4.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (61.7089,-148.2571,1.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8398333,-122.8318333,1.19);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (52.4625,-166.7298,2.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.0489,-149.7527,1.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (-3.836,146.2085,4.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (18.6432,-65.521,2.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (35.9531667,-117.6626667,0.86);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (61.7761,-148.2227,1.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (64.864,-151.4746,1.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.4444,-98.7643,1.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (34.4166667,-118.6516667,0.83);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.9356,-151.9739,1.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (40.746,21.1908,4.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (61.6915,-141.7621,1.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (61.7495,-148.2258,1.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (18.1609,-67.4142,2.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.3866,-118.7535,1.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.4917,71.0962,4.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.819,-153.0003,1.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (-32.3914,-177.6794,4.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (61.6934,-147.7878,1.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (34.4118333,-118.6763333,1.15);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (-23.989,-66.6776,4.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.7486667,-111.502,1.12);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.6631,-153.3021,1.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (16.663,146.9968,4.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (64.8222,-146.8967,0.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (35.9946667,-120.8761667,0.76);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.1831,-152.4047,2.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (-7.6923,128.7025,4.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (34.8246667,-116.4071667,2.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.7581667,-122.7333333,1.47);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (19.0027,-64.8974,2.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (-1.3891,-80.328'))
);
end;
/
begin
wwv_flow_api.append_to_install_script(
 p_id=>wwv_flow_api.id(75477078542955772)
,p_script_clob=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'7,5.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (62.3683,-149.1447,2.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (52.1684,-171.0289,2.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (56.7237,-155.0809,2.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.811,-122.8241667,1.44);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (39.3621,-117.3643,1.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (20.2195,-155.5395,2.12);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8165016,-122.8290024,1.02);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (45.6308333,-122.618,1.51);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.4956,-148.6734,0.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (57.6792,-156.227,1.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.7961655,-122.7600021,0.77);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.7016667,-117.5111667,0.66);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (67.6588,-163.0577,3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (39.5878,-115.8029,2.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (62.0408,-151.4965,1.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.5136,-151.5149,1.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.278,-117.392,1.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.4453,-98.7724,1.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5728333,-118.8511667,0.03);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.2235,-116.7348333,1.18);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.7868347,-122.7736664,1.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (47.6575,-121.842,1.58);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.6326667,-118.8815,0.37);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8074989,-122.8266678,0.88);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8393326,-122.8381653,0.32);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (61.5196,-139.6997,1.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (40.509,-122.6776667,1.57);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (64.8454,-148.272,0.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8378334,-122.8395004,0.57);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (62.0611,-145.0819,1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.9358,-149.293,1.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (35.8188333,-119.4873333,1.64);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5745,-118.8548333,0.18);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (60.1857,-141.19,1.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.7923317,-122.7583313,0.78);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.7668,-153.0475,1.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (18.8251,-69.4868,4.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (35.821,-118.0188333,1.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8153333,-122.8035,0.17);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.1065,-151.4259,0.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (43.7633333,-110.8463333,1.03);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (35.8246667,-118.0191667,1.88);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.0485,-120.6305,0.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (52.9003,178.3587,3.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.9615,-116.8788333,0.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5715,-118.8568333,0.17);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.7863333,-122.7416667,1.21);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (51.6217,-174.8949,2.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.4715,-116.4971667,1.42);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.2888,-115.4092,0.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.5017,-147.591,1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.7653333,-122.5705,1.26);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (34.2128333,-117.4195,0.97);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.7843,-151.9592,1.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.0033,-150.4697,1.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.1053,-151.475,0.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (42.2084,139.5745,4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.7807,-153.23,2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.5584,-116.23,0.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (-32.6918,-178.3106,4.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (57.2106,-156.9614,2.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.1241,-151.4756,2.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.4473,-98.7693,1.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.4431,-98.7669,1.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.4471,-98.7681,1.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (62.451,-151.7098,1.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8168335,-122.8148346,0.88);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (46.946,-112.7776667,1.08);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (19.3331667,-155.175,1.35);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (62.759,-149.2584,1.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.7843333,-122.7326667,1.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (51.7387,-176.5538,1.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.9087,-153.0505,1.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (46.9228333,-112.4011667,0.83);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (46.5995,-111.9023333,1.59);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (52.1873,-175.0715,2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (46.9413333,-112.3965,0.91);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (52.0502,-175.9376,1.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (48.65,-120.3555,1.64);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.7999,-153.0769,1.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (62.1451,-152.1159,1.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (16.8051,146.2835,4.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8250008,-122.8433304,0.43);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (41.9853,-120.1704,1.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (65.7648,-151.3077,0.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (42.456,142.831,4.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.1251,-152.6938,0.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.1435,-144.7288,1.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (44.689,-110.1976667,1.04);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (-27.601,-177.2896,4.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.848,-122.7586667,1.48);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (62.9592,-151.3574,1.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.85,-122.7578333,0.81);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.6951667,-117.519,1.58);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (47.5428333,-122.4001667,1.29);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.2988,-151.2412,1.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.7921,-118.1291,0.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8079987,-122.8203354,1.02);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.6038,-151.4437,1.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (61.5541,-146.4299,1.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (46.8733333,-121.9525,0.88);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (46.607,-119.848,0.29);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.6936667,-117.5168333,1.74);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.2873,-116.3653,0.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (41.9316667,-112.6003333,1.42);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8111667,-122.7921667,1.08);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (41.9148333,-112.5741667,0.74);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.7806667,-121.9613333,1.13);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (62.214,-149.3994,1.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (51.3097,-177.851,1.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (67.3644,-147.692,1.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (62.5965,-151.1401,1.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (18.6951,-65.011,2.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.4816,-98.7522,1.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (60.5496,-152.2539,1.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8203333,-122.8401667,0.64);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.6296,-151.1531,0.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (61.1479,-146.5444,0.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (61.5569,-146.4473,1.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.138,-118.2671667,1.57);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (54.0797,-164.3299,2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.6919,-116.2071,-0.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.1384,-151.4631,1.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.8924,-152.7842,2.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.2293,-117.5398,0.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.7047,-153.1805,2.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (44.5888333,-114.3013333,1.45);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.9683333,-117.7351667,1.21);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (41.8648,-119.6365,2.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.5835,-97.7687,2.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (62.1383,-152.534,1.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.0536,-116.144,0.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8258324,-122.8328323,0.56);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (39.5913333,-111.5495,1.78);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.0664,-116.1578,0.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.2215,-150.7398,1.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.0504,-116.1393,0.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.638,-116.032,-0.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.1014,-151.4945,0.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8079987,-122.7710037,0.99);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (46.942,-112.7686667,1.14);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (67.6589,-162.2792,2.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.802166,-122.8125,0.55);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (67.6368,-162.8018,4.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (51.7226,-175.18,2.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (34.7028333,-116.2408333,1.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8330002,-122.7981644,0.79);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.4544,-98.7619,1.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.4597,-98.7685,1.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (-4.473,94.4073,4.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.7855,-122.7766667,0.96);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.638,-116.6915,0.71);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.6348333,-116.697,0.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.1343,-150.6685,1.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.0081667,-120.5711667,1.12);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.439,-98.7812,1.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (61.3184,-146.7628,1.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (62.9867,-148.2606,1.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.3835,-117.1984,0.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.0198,-151.5879,1.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (65.1855,-148.2012,0.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (60.2503,-152.6868,1.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8406677,-122.8290024,0.68);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.7683,-152.5808,3.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (35.8038333,-121.3158333,1.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.4333,-98.6932,1.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.507,-116.487,1.64);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (60.1011,-141.0374,1.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (34.3036667,-116.8621667,1.49);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.5111667,-116.4831667,0.91);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (61.8406,-148.6042,1.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.5289,-150.9362,2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (64.9493,-152.2512,1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (52.9351,-168.8345,2.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.4915,-98.711,1.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5895,-118.8841667,0.19);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (52.551,-169.562,2.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.6683333,-116.7721667,0.57);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.0645,-117.9626,0.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (61.5887,-143.9942,1.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5231667,-118.6238333,1.66);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.4477,-98.7625,1.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (41.6541,144.2292,5.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.7663333,-117.4521667,0.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (35.1195,-118.1855,1.18);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.034,-114.9815,1.16);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8305,-122.8043333,0.67);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8366667,-122.8261667,1.28);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.1761,-118.2409,0.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (60.2079,-144.5424,1.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.755,-153.1075,1.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (64.9619,-147.3637,1.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.0493333,-115.8791667,1.61);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (-38.7657,-71.6642,4.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8083344,-122.8136673,0.78);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (19.1996667,-155.5413333,1.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (61.0993,-149.4048,1.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.786335,-122.7738342,0.88);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (61.6275,-141.1574,0.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (49.3626667,-120.4813333,2.13);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (61.4268,-147.3547,2.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (35.5288,70.2435,4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (51.4838,-177.6017,1.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8125,-122.8116684,0.55);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.7841667,-122.7313333,0.54);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (39.6592,-120.2832,0.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.4258333,-121.7985,0.77);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.785,-122.7693333,1.71);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (61.9764,-147.9471,1.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.948,-148.5835,1.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.7796667,-121.9618333,1.48);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.9369,-148.5817,0.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8306667,-122.8106667,0.12);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.4884,-147.4948,1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.7126667,-117.3381667,1.39);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5316667,-118.922,1.91);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.6978333,-117.514,1.82);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (62.6396,-137.094,1.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (60.9053,-150.3109,1.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.6585,-116.7801667,0.54);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (34.6073333,-117.0906667,1.58);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (18.2255,-67.255,2.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (64.4823,-146.727,0.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (62.0413,-150.3734,1.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (-21.3444,-69.8403,3.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (53.4113,-167.6875,2.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (-4.1862,94.415,5.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (44.5871667,-114.0881667,1.66);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.8005,-153.0374,1.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (32.7733333,-116.8841667,1.45);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (46.8625,-121.8836667,1.12);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (41.9306667,-112.5945,1.21);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.0518333,-117.6716667,0.95);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.836834,-122.8326645,0.28);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5746667,-118.8521667,0.67);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (62.5247,-148.4432,1.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (51.5041,-178.2497,1.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.4746667,-116.4931667,0.61);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.8935,-121.6261667,1.54);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.9325,-146.6824,1.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (61.6067,-146.3663,1.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (60.4483,-151.9816,1.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (34.8346667,-116.409,1.26);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.1957,-150.6596,1.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (-20.6628,-71.0569,4.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.8071,-153.0352,1.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (-48.9962,106.3216,4.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.672,-116.7376667,1.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.1043,-151.4882,1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.1299,-150.9319,1.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (41.9739,-119.5646,1.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (62.8995,-150.6851,1.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.1052,-117.4253,1.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.7353,-153.1462,1.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (61.391,-150.4475,1.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.6233333,-121.2311667,2.16);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (15.0807,122.7133,4.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.3632,-117.0975,0.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (51.8393,-174.8885,1.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (61.1264,-152.2569,1.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.4285,-151.2042,0.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (-6.6532,102.4708,4.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (60.2418,-140.8173,1.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (43.7678333,-110.8596667,1.53);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (62.0726,-149.3346,1.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (43.7658333,-110.8641667,2.15);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (51.636,-174.9078,1.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (35.323,-118.552,1.43);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (35.3243333,-118.5521667,1.46);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.6255,-153.4078,3.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (64.8264,-148.7123,0.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.3687,-151.5056,0.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.598,-118.7803333,0.19);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.4893333,-116.393,0.92);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (62.4713,-149.5831,3.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.0874,-149.1304,1.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (-7.6302,128.6148,4.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (39.5682,-115.8862,1.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (64.6498,-149.4002,0.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.569,-118.866,0.17);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.8199,-153.4486,1.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.7325,-116.0496667,0.67);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.0098,-150.4293,1.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.2103333,-119.136,1.85);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.4861667,-89.566,2.07);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (61.7455,-149.2778,1.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (67.6571,-163.0026,2.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (60.2227,-150.5566,1.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (19.0778,-67.9531,3.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (-19.0334,-178.5961,4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (46.2198333,-122.159,0.93);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (34.7933333,-118.9176667,1.71);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (34.7898333,-118.9148333,1.56);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (35.2451667,-118.5228333,1.27);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (46.1683333,-122.2315,1.57);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.4816667,-116.4255,0.78);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8258324,-122.822998,0.92);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.825,-122.824,0.46);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.1685,-117.3597,0.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (-38.2012,176.6941,4.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.1641667,-119.9773333,1.84);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (60.2769,-138.6853,1.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.7916,-119.7,1.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.2286667,-112.324,0.91);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.6556,-118.7878,0.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8233333,-122.8251667,1.35);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8376667,-122.7666667,-0.33);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (21.6851,101.3736,4.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (39.7158,-120.1895,0);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (62.4053,-151.2725,1.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (64.5364,-149.2157,0.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (45.8683333,-112.0298333,0.05);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.8317,-152.9213,1.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (60.1578,-152.396,2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (46.9663333,-112.7645,1.43);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (62.3436,-148.0939,3.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (61.6032,-151.6086,1.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (39.7258333,-110.9163333,1.45);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (43.765,-110.8441667,1.48);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (65.0535,-150.5085,2.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (65.7466,-155.2681,1.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (51.8394,-175.0142,2.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (19.1636667,-155.4606667,2.05);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (47.8028333,-113.7351667,-0.47);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.1605,-117.3025,0.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (48.6951667,-120.3088333,1.86);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.812,-122.8261667,0.37);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5781667,-118.8565,-0.09);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (53.515,-167.7703,1.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (39.287,-118.909,1.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (60.9986,-150.1561,1.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.87,-117.8498333,1.18);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.3956,-149.3712,1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (19.3188333,-155.2203333,1.42);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.4731667,-116.4851667,0.55);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (60.6139,-151.9249,1.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.1094,-151.4998,0.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.734,-116.0528333,1.24);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.0038333,-117.8865,0.46);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.0031667,-117.8933333,0.19);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (35.9945,-117.9216667,0.57);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (61.8005,-144.8583,0.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5678333,-118.8556667,0.76);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.0056667,-117.8888333,1.65);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (-4.6574,94.5221,4.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8171667,-122.8051667,0.26);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5698333,-118.8526667,0.77);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (39.0956,-119.687,1.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.4395,-98.7834,2.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (62.798,-148.6195,0.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5815,-118.858,0.08);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5703333,-118.8503333,1.12);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (46.3511667,-122.3938333,1.82);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.3853333,-121.6048333,1.41);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (39.096,-119.688,0.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (39.093,-119.6871,0.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.9901667,-116.8088333,0.82);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.764,-151.3985,1.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5666667,-118.8516667,0.12);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (39.0964,-119.684,2.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.4675,-98.7995,2.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.4167,-151.359,0.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (4,126.0404,5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.4212,-116.9994,0.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.57,-118.8628333,0.15);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (35.0441667,-119.0185,1.92);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8246667,-122.824,1.08);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8240013,-122.8063354,0.46);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.67,-119.3985,1.13);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5715,-118.8545,0.19);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.574,-118.8521667,1.15);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (-22.1961,-179.3533,4.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (39.0938,-119.6877,1.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.6409,-153.4044,2.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (54.2265,-162.0781,2.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (19.4138333,-155.3153333,0.74);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.4953,-152.6208,1.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (61.2896,-151.0356,1.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (-7.3251,129.5739,4.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (61.592,-149.8055,1.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.2851,-151.6769,1.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (64.9102,-150.4249,0.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.471,-147.9387,0.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.575,-118.8616667,0.62);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.9965,-153.0364,1.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (19.419,-155.6315,2.11);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (34.2211667,-117.4675,1.09);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (34.1336667,-116.8488333,1.46);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (64.7878,-148.9033,0.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (62.3534,-148.6663,2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (60.3443,-152.6333,1.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.7392,-152.719,1.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (18.6991,-66.1962,2.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.8329,-152.3841,1.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (61.4892,-150.0067,1.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (41.8666,-119.6309,1.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (60.9537,-138.5237,1.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.8797,-116.734,-0.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (65.257,-157.7364,1.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (64.8191,-148.7343,0.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (61.1572,-152.4608,1.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (64.8155,-148.764,1.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (61.0821,-152.5205,1.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.751,-116.303,-0.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.1193,-144.3889,0.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8261667,-122.825,0.11);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.3786,-151.4961,0.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.0072,-116.4179,-1.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (62.322,-148.3542,1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (51.7903,-177.0657,1.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8213348,-122.7789993,0.88);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (55.0918,-161.5854,1.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.1558'))
);
wwv_flow_api.append_to_install_script(
 p_id=>wwv_flow_api.id(75477078542955772)
,p_script_clob=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
',-149.0166,0.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (64.6906,-149.6305,0);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (17.8603,-66.0682,2.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (46.6616667,-121.8631667,0.52);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (57.06,-157.1769,2.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.4625,-118.5993333,0.73);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (47.4683333,-115.783,1.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.3116,-114.6571,0.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8214989,-122.7646637,0.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (34.8268333,-116.4105,1.64);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8348351,-122.8293304,0.43);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (34.039,-117.2328333,0.88);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8366667,-122.8278333,1.52);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.6557,-118.7715,0.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5091667,-118.65,0.81);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8199997,-122.7633362,0.82);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (60.3109,-151.3942,1.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.6488333,-116.6983333,0.72);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (40.592,-123.204,1.92);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (35.6406667,-120.9336667,1.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.4419,-98.7735,1.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.4638,-98.7408,2.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (60.8191,-147.0144,1.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (64.7046,-148.9059,0.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (61.0737,-148.6188,1.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.4796667,-118.8331667,0.42);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.2758,-152.7335,0.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (62.0497,-149.0802,1.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8208333,-122.7783333,1.13);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.4453,-117.8592,1.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.251,-149.3015,1.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.419,-148.0147,0.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.2656667,-112.7271667,0.82);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (40.3055,-124.4188333,1.57);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.4722,-98.7637,1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.0405,-117.8061667,0.61);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.4704,-98.7623,1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8214989,-122.8011703,0.51);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.261,-112.7301667,0.86);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.3559,-150.1559,1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.2576667,-112.728,1.34);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.4342,-98.7791,2.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8208333,-122.806,1.08);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (46.6048333,-119.8473333,1.06);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.435,-98.7852,2.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (-4.9069,94.5925,4.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.7291,-153.0933,2.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5116667,-118.6471667,1.07);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.898,-151.7496,1.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (57.2136,-154.6759,1.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (53.5013,-165.5022,1.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (61.904,-149.331,0.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (64.6829,-149.7028,0.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.3871,-117.1143,0.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (64.6695,-149.7539,0.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.7604,-153.0663,1.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.5441,-147.6772,1.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (35.9381,-96.75,2.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (46.852,-121.754,-0.18);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8383331,-122.8150024,0.56);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.8816667,-116.8623333,0.73);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.7357,-116.2898,-0.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (44.6368333,-110.1715,1.28);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.3317,-116.2927,0.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8264999,-122.8351669,0.18);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.6875,-116.7235,0.18);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.2397,-117.5515,0);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8175011,-122.8235016,0.46);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8235016,-122.8550034,0.44);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (46.2031667,-122.1765,0.19);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.288,-121.665,1.03);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (62.5273,-150.4285,1.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.1199,-116.2687,-0.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.4482,-98.768,1.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.4449,-98.7697,1.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.716,-153.1625,1.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.9018333,-123.6023333,2.12);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.444,-98.7701,1.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.811,-122.829,1.07);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (46.464,-112.1381667,1.27);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (62.2203,-148.1786,1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.52,-118.7841667,0.86);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5201667,-118.7823333,0.83);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5083333,-118.789,0.42);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8098335,-122.7409973,1.05);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (-21.0199,-178.9302,5.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5186667,-118.7855,2.58);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (53.0699,-162.6607,2.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.4347,-98.7837,1.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (60.6767,-146.6985,1.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.5154,-150.7594,1.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8313332,-122.8759995,0.57);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (61.3548,-145.9067,2.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8138351,-122.8293304,0.89);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.519,-118.786,1.72);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (3.9866,126.746,4.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (60.1103,-148.4093,1.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5676667,-118.851,0.03);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (61.8127,-138.9682,1.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.5342,-153.5421,2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.338,-136.6283,1.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (52.8551,-162.2891,3.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8156662,-122.8243332,0.56);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (61.8954,-149.1997,1.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (64.0693,-150.2075,0.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.3391,-116.2986,0.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (62.6369,-137.1421,1.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (61.0665,-151.9361,1.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8056679,-122.7975006,0.83);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.8826,-139.5777,1.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (64.909,-147.538,1.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8003349,-122.7714996,0.56);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.800499,-122.7713318,0.91);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8236656,-122.8253326,0.84);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.578,-118.8511667,0.37);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.2087,-149.3613,1.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8256667,-122.8245,1.09);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (60.6211,-147.574,1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (60.5758,-147.5667,2.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (41.4985,-121.9026667,0.89);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8238335,-122.8243332,0.79);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8073333,-122.8145,1.85);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (46.3391667,-122.3703333,0.65);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (18.9822,-66.7338,2.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.2411,-150.7256,1.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8458328,-122.8253326,0.32);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.054,-114.9816667,1.42);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (60.4129,-147.4972,1.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.485,-150.0812,1.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (19.9115,-155.2881667,1.58);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (60.7779,-150.7275,1.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.5043333,-116.5061667,1.11);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (43.3758333,-111.1731667,1.45);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8356667,-122.8284988,0.85);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (52.7486,-168.8114,2.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (-31.8697,179.6346,4.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (18.7865,-64.6737,1.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (61.1425,-146.4306,0.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.204,-118.408,1.59);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.2859,-118.617,0.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.3343,-116.2906,0.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (-31.6626,179.7551,4.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (60.1095,-149.2383,1.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (19.3776667,-155.2325,1.21);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (19.3775,-155.231,1.05);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (-3.1724,148.812,4.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.3321,-116.2901,0.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (-2.3331,151.1829,4.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (40.3946667,-121.5533333,0.12);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.3279,-116.3079,1.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.519,-116.5055,0.44);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (61.3511,-150.1955,2.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (60.141,-152.5897,1.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (-3.1154,148.6708,4.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.3257,-116.2865,1.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (-3.1485,148.8522,4.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (10.8872,-62.3014,4.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.7146667,-116.9651667,1.06);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.3492,-116.2973,0.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (41.5041667,-121.8916667,1.06);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (-3.0984,148.8382,5.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (32.6001667,-116.987,1.43);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (52.959,-162.3228,3.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.0341,-150.9838,1.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (18.8649,-64.2608,2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.6381,-98.1437,3.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (-3.3311,148.826,5.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.7341667,-121.397,1.15);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (60.0234,-151.8293,1.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (14.1243,-92.5099,4.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.7278333,-121.3956667,1.99);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (-33.0062,-178.4751,4.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (57.9795,-156.0754,1.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.3231667,-122.1013333,1.32);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (16.7846,145.9351,4.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.3319,-116.3,0.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.2653,-150.4431,1.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (39.0839,-119.7169,0.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (62.2253,-150.6058,1.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.776,-122.7565,0.38);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8291664,-122.8310013,0.57);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (25.4813,124.8057,4.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.069,-120.25,1.43);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (-20.303,-68.952,4.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (53.387,-167.3827,1.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8328323,-122.7518311,0.97);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (64.9796,-147.3221,1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (39.092,-119.6867,2.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.831665,-122.8028336,0.69);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.0548333,-120.247,1.49);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.498,-116.7915,0.37);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8146667,-122.8283333,0.16);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (62.6544,-143.0732,0.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (35.569,-118.5461667,1.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (34.9943333,-118.1988333,1.67);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (64.9808,-149.6567,0.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (19.3253333,-155.1601667,1.51);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (67.686,-162.0891,2.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.812,-122.743,0.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (-56.4912,-26.9683,5.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (18.8645,-64.623,1.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (52.3079,-165.4813,2.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8380013,-122.8021698,0.43);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (-19.147,-69.2666,4.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.9196667,-121.956,1.16);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.6278333,-118.9686667,0.79);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.5998333,-116.8155,0.76);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (34.0021667,-117.2005,2.63);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.4395,-121.7911667,1.46);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.218,-97.3026,2.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5763333,-118.8465,0.16);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.7093333,-116.8135,0.84);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.6691667,-118.8608333,0.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (60.7037,-151.9846,1.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (65.1165,-148.6322,1.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (64.6667,-149.0002,0.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.4758333,-118.7823333,0.95);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (41.5341667,-112.3608333,1.16);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.474,-116.4901667,0.35);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (47.565,-113.9595,0);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (45.858,-111.501,0.66);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (31.746,131.4086,5.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.9553333,-118.688,2.09);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8261667,-122.8255,0.24);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (18.1947,-67.8872,3.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (53.2519,-168.4223,2.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (58.6087,-154.2055,1.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.3374,-119.1854,1.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.7585,-122.7331667,1.41);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.751,-122.7388333,0.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (60.1233,-151.1768,1.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (-14.671,-73.7273,4.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.5923333,-121.1301667,1.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.7057,-146.8842,0.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (64.4417,-149.6794,0.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (60.2936,-141.6643,1.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.7841682,-122.7333298,0.86);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (58.0377,-153.294,2.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.5265,-116.7328333,0.21);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (-4.5726,94.323,4.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (41.8696,-119.6415,0.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.7147,-153.1967,1.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (61.7497,-147.2816,0.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.0336667,-116.4251667,0.83);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.6563333,-118.8811667,-0.22);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.4551,-98.729,3.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (48.5796667,-121.4691667,1.93);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (52.2757,-179.6296,3.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.4423333,-118.6116667,0.87);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (61.586,-146.3401,1.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (39.4221,-119.924,0.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.800499,-122.770668,0.28);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.6638,-97.7348,2.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (64.9439,-150.1602,0.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (34.0695,-117.251,0.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.0001,-151.5503,0.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.7522,-116.1552,-0.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.5025,-147.5123,0.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.3608333,-120.4086667,1.91);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (61.8916,-151.5107,1.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.563,-118.8685,0.13);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (-30.4624,-176.4325,4.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8390007,-122.8050003,0.45);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (35.6806667,-120.9825,1.36);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8328333,-122.7933333,0.18);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8123322,-122.8141632,0.68);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (32.8871667,-116.2393333,1.26);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.7254,-153.1709,1.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5755,-118.8553333,0.17);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.2316667,-98.0105,2.09);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (61.324,-149.8901,2.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (61.3986,-152.4695,2.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (-33.5833,-178.8129,4.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (61.8886,-150.4669,2.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (-17.613,-178.288,4.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.9633333,-117.8836667,1.36);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.969,-117.8768333,2.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (46.509,-122.284,0.82);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.2889,-151.1097,0.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (39.807,-123.5683333,1.89);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (32.8823333,-116.2418333,2.04);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.227,-118.2556667,1.05);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (19.3273333,-155.214,1.77);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (35.5453333,-120.7943333,1.94);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.4323,-115.2595,1.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8243333,-122.8441667,-0.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.7938333,-122.7656667,0.31);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.8867,-153.3752,1.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (17.9881,-67.061,1.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (17.9424,-67.0746,1.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (61.8156,-151.4197,1.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (65.6198,-144.9116,1.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.0657,-118.7934,0.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (-31.0112,59.1301,5.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.0645,-118.7886,1.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (32.8825,-116.2375,1.31);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (60.151,-152.6569,2.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (19.0496,-66.5975,2.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8434982,-122.8271637,0.93);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (19.6427,-65.3014,3.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.239,-117.5358,0.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (19.1875,-155.4036667,1.64);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (-4.7429,94.2684,4.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (19.4048333,-155.6325,1.64);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (19.5466,-65.3438,3.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (62.0576,-151.1028,1.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (32.8821667,-116.2388333,1.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (32.8823333,-116.2456667,2.98);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.6012,-152.3614,1.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (64.5909,-151.3805,0.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (44.8541667,-111.5243333,1.04);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.8046,-152.9074,1.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (-4.5245,94.3553,5.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (-14.8215,167.3495,4.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.3645,-120.3966667,1.62);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.449,-98.7683,1.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.9593333,-117.9078333,1.38);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.0615,-150.9063,1.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (19.4736667,-154.9001667,1.33);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.3593333,-120.4031667,2.35);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (60.4954,-153.1253,1.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.4752,-98.7464,1.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.9796667,-123.2681667,1.76);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.6768,-152.1537,1.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.3638333,-120.3998333,2.14);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8145,-122.8278333,0.61);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.908,-116.8983333,0.79);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (51.5088,-175.3654,1.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.3628333,-120.408,2.61);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.2028,-8.168,4.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.5256,-151.1811,1.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (-4.6945,94.3243,4.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8144989,-122.8195038,0.79);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5666667,-118.8523333,0.36);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.4015,-119.3305,1.31);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.361,-120.407,2.28);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.014,-120.575,0.42);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.8303,-147.6146,1.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (60.2944,-153.0351,1.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8161659,-122.8184967,0.69);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (61.4379,-150.9865,1.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (34.6183333,-116.6411667,1.34);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (19.3764992,-155.553833,1.71);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (60.549,-149.7942,1.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (19.3921667,-155.2818333,1.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.9728333,-116.9198333,1.04);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (67.6635,-162.4627,2.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (34.6963333,-116.2503333,1.89);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.0941667,-120.6638333,1.09);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8409996,-122.8779984,0.59);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (54.3432,-161.0174,2.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.5846667,-117.2201667,1.03);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (57.5305,-156.9948,2.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (41.8535,-119.6246,3.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.3849,-150.2901,0.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (60.4079,-152.5279,1.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.141,-150.5115,1.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (60.9395,-146.3248,0.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (61.6034,-147.739,0.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.4423,-98.7721,1.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (60.2868,-140.3132,0.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (52.8051,-167.4081,1.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.5938,-153.5511,1.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8260002,-122.8339996,0.43);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.4701,-98.7495,1.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8071671,-122.793335,0.88);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (52.069,-173.4266,2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (61.359,-147.5665,1.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (60.4932,-149.3671,1.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.7988319,-122.73983,0.87);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (60.1457,-153.3568,1.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (52.867,-167.2832,1.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (58.3131,-154.7995,1.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.2779,-151.3989,0.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.8668,-153.5177,1.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (65.1549,-149.0692,0.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.772,-110.6451667,1.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (60.6314,-142.6891,1.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.7934,-152.7448,1.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (62.8764,-148.9736,1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (39.7277,-120.8952,0.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (53.3852,-165.8899,2.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8051682,-122.7419968,0.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.4135,-149.5984,0.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.4411,-98.78,2.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (19.364,-155.2955,0.77);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8041649,-122.7721634,1.08);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (-4.829,94.4102,5.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (34.6958333,-116.2451667,2.83);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.2636667,-112.7248333,1.19);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (-26.5692,178.5647,4.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (64.9767,-147.3619,1.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.0968,-150.7811,1.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.4694,-98.7356,1.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.7593,-152.9398,1.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.4877,-98.7232,1.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (51.4753,-179.1603,2.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (65.0833,-150.6757,1.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.4679,-98.7832,2.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.3401,-152.6462,2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.482,-98.7376,3.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8293333,-122.8056667,1.05);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (34.2561667,-117.4846667,0.35);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.738,-117.5205,0.83);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8305016,-122.8061676,1.01);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8296667,-122.8056667,1.09);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.3581,-147.5686,1.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8180008,-122.8123322,0.85);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (60.9206,-147.013,1.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.8084,-151.8684,1.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.6458333,-118.9453333,0.63);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.6485,-118.9443333,0.32);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (39.568,-111.1601667,1.23);',
'Insert into '))
);
end;
/
begin
wwv_flow_api.append_to_install_script(
 p_id=>wwv_flow_api.id(75477078542955772)
,p_script_clob=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'EARTHQUAKES (LAT,LNG,MAG) values (63.2888,-145.2617,0.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (61.5853,-151.5266,1.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (49.407,-120.487,2.14);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.5483,-150.7778,1.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (32.8705,-115.9921667,1.92);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (40.4618333,-126.4565,2.82);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (62.2451,-151.3887,1.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8318333,-122.8448333,-0.21);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.84,-122.8383333,1.69);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.0985,-150.651,1.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (60.1229,-152.8225,1.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.7712,-151.8882,1.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (32.8805,-116.2398333,1.47);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (54.1646,-163.8268,2.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (61.5192,-146.6041,1.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5653333,-118.8726667,0.09);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (64.6468,-147.2269,0.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (44.1043333,-123.0993333,1.43);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (64.5436,-147.842,1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (64.5424,-147.864,0.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (51.5742,-175.5512,1.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (39.6884,-119.2849,0.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (61.7111,-152.0367,1.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (62.2517,-149.7207,1.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (61.8663,-150.5546,1.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (52.984,-164.9772,2.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (34.3418333,-116.8841667,1.44);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (48.5461667,-123.592,0.13);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8251667,-122.785,1.17);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.814,-122.8211667,0.26);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8089981,-122.8278351,0.56);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.1526,-150.7545,1.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (34.7445,-116.4276667,1.74);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.775,-153.0248,1.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (-7.606,127.8502,4.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (-6.1801,150.0053,4.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.3653333,-120.4113333,2.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.0208333,-117.72,1.88);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (46.0135,-112.467,2.05);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.8289,-153.0467,1.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.1266667,-117.9301667,1.13);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.6645,-118.8755,-0.17);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (58.2683,-155.8713,2.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.7548,-116.1543,-0.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.0535,-116.413,0.96);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (46.3051667,-111.5995,1.31);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (61.1546,-151.8253,2.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (-4.4969,94.3193,4.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (4.4833,94.9942,4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (34.8238333,-116.4073333,2.63);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (60.4166,-143.6808,1.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (-4.8365,94.5895,4.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.7793333,-122.6961667,0.42);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (19.4143333,-155.6113333,1.01);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (61.9974,-141.2033,0.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.9895,-151.4027,1.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.4743333,-116.492,0.66);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5726667,-118.8688333,0.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.7616667,-122.7378333,1.13);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (64.7912,-144.5028,1.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.0205,-117.7776667,0.29);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (58.4465,-154.1133,1.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.7755013,-122.7181702,1.19);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.774,-122.7156667,1.85);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.9104,-141.6604,1.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.4678,-146.1072,0.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.8177,-153.4899,1.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (44.5486667,-114.514,2.46);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.2605,-151.1695,1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (64.932,-148.939,0.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (60.1684,-141.3451,1.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (46.7925,-121.9455,0.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.2607,-151.1283,2.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.2845,-151.1154,2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (64.9371,-148.9108,0.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (64.9418,-148.9806,2.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (35.5933,-3.5422,5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.5428,-115.5408,1.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (62.9258,-150.7467,1.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8308334,-122.7508316,0.53);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.2849,-150.4065,1.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (44.596,-122.7355,1.74);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.7971667,-122.7643333,1.46);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.5903,-150.9435,1.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.8053,-153.0405,1.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8084984,-122.8246689,1.04);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.8234,-153.0824,2.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.664,-116.7698333,0.62);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.5215,-116.7356667,0.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.6164,-153.4307,1.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5671667,-118.8573333,0.04);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5711667,-118.8518333,0.81);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (69.3303,-144.0921,2.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8128333,-122.8331667,0.49);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.9716667,-116.9155,0.79);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (40.1616,-121.0589,1.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (44.5616667,-114.4856667,1.37);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (-16.0928,-74.012,4.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (60.3447,-139.4422,1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (53.6859,-166.9828,1.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (52.7489,-168.8103,2.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5701667,-118.859,0.21);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (19.6623,-63.5685,3.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.9613333,-116.7071667,1.28);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (65.3535,-150.1172,0.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.0609,-118.7887,0.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.4776667,-116.4926667,0.27);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (34.8245,-116.405,1.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (61.4371,-140.2415,1.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.4936667,-116.9063333,0.79);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.6226667,-121.2313333,1.91);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.9926667,-116.9946667,1.67);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (61.5239,-149.8481,1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8168335,-122.8180008,1.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.1846,-117.358,0.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (19.3838333,-155.2796667,2.08);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (39.423,-119.9263,0.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (51.7156,-175.3673,3.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8256667,-122.8556667,0.37);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8148333,-122.81,1.31);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (35.9935,-117.6845,0.58);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (19.4166667,-155.3175,1.28);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8463326,-122.8290024,0.84);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (-9.7463,125.3111,5.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (-9.4991,125.1765,5.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.0396667,-117.7633333,2.56);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.2746667,-112.8618333,1.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (40.0955,-119.6921,0.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.9518333,-118.3938333,2.44);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (19.357,-155.336,1.56);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (55.3842,-151.8711,2.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (-7.4422,128.7202,4.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.1929,-151.3578,0.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.5015,-116.7866667,0.52);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8218346,-122.802002,1.12);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.379,-116.8711667,1.27);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.7798333,-121.9595,1.16);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (60.2171,-152.6764,1.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (54.2621,-163.8267,2.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.4988333,-116.7886667,0.91);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5768333,-118.8563333,1.51);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (18.7609,-67.2301,2.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.3228333,-122.1015,2.13);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5716667,-118.8518333,1.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (47.8181667,-114.2328333,1.15);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.6874,-149.3386,1.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (64.819,-149.1278,0.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.7555,-122.7178333,0.79);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8161667,-122.8145,0.17);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (19.2191658,-155.5435028,1.73);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (61.1346,-151.2654,1.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.2126667,-97.98,1.95);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (19.2861667,-155.2066667,1.49);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.6505,-153.3295,2.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (19.2933333,-155.2043333,1.89);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.55,-89.7228333,2.22);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (-33.302,-177.9941,4.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5688333,-118.4678333,1.47);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.5,-118.4092,0.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (60.5705,-145.2429,1.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.7556667,-121.5895,1.37);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (35.4941667,-119.3151667,2.07);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8081667,-122.8151667,1.87);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.1112,-144.2992,1.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (35.0555,-118.3505,1.32);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.7598333,-110.6521667,1.68);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (35.7968333,-121.3313333,2.85);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (31.6008333,-116.9528333,3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8231667,-122.8435,0.13);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (61.445,-152.3863,3.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (32.8923333,-115.5188333,1.58);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (32.8843333,-115.5216667,1.82);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (61.8394,-146.1145,1.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8233337,-122.8433304,0.57);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.7595,-110.6371667,3.77);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.2343,-150.5526,1.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (-4.7139,153.3096,4.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (18.1026,-68.7711,3.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (14.0946,-92.2672,4.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5683333,-118.8685,-0.18);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.2627,-151.3874,0.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.5879,-116.2528,0.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8190002,-122.8205032,0.43);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.5674,-150.7946,1.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.7623329,-122.7303314,0.96);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8223343,-122.8441696,0.43);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (35.844,-119.7955,1.65);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8180008,-122.8276672,0.93);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.2843,-151.3814,1.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.1512,-117.2505,0);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.457,-118.5998333,1.29);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (40.1829,-121.0146,1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.4041,-151.1651,1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8068333,-122.7871667,1.48);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (32.151,-115.2145,2.58);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (61.5075,-146.6372,1.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (19.2005,-155.4053333,2.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.4968333,-116.7903333,0.54);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.2402,-119.1579,1.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (61.3781,-141.036,1.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.6969,-153.0909,2.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.4941667,-116.7905,1.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (19.4438333,-154.8995,1.43);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (20.0988333,-155.2241667,1.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (35.997,-117.457,1.12);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.1948,-97.3349,2.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (65.2349,-152.1614,1.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (40.169,-119.7696,0.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.9942,-116.2176,0.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (65.1438,-149.0528,0.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5721667,-118.8545,0.48);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.0005,-118.1701,1.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (69.121,-144.7316,2.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.3611667,-120.3941667,1.55);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.7835,-151.6697,1.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.363,-120.4088333,2.48);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.9721667,-116.9168333,0.53);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8231667,-122.8261667,0.29);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.401,-151.7588,0.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.3626667,-120.4086667,2.55);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (-4.9082,94.275,7.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.3618333,-120.4015,2.17);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.9339,-151.8713,1.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (64.6318,-150.0398,0.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (19.1077,-66.6175,3.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8113327,-122.8274994,0.56);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (65.0512,-147.0699,0.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8278351,-122.8420029,0.89);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (64.6296,-146.2061,0.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (19.2216663,-155.5431671,1.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.9781667,-123.2628333,1.69);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (53.5087,-165.2309,2.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.8055,-153.0277,1.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.3226,-154.2675,1.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.7364,-116.2878,-0.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.9433,-152.6665,1.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.7861671,-122.7736664,0.56);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (61.1385,-152.2919,1.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (40.1158333,-121.0125,2.17);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.807,-122.815,0.19);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8216667,-122.8128333,0.33);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.7987,-153.0128,1.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (61.5674,-150.0528,1.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.9686667,-117.876,2.07);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (34.3073333,-116.9303333,0.92);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8076668,-122.8128357,0.85);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (19.3381,-64.7527,3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.2803333,-89.4853333,1.26);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.248,-116.3201667,1.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.7928,-153.0914,1.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (19.4323333,-155.622,1.37);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5746,-118.4448,1.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.7422,-116.2752,-0.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.3208333,-119.1783333,1.74);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (65.0473,-152.3541,0.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (19.3911667,-155.3308333,1.33);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (57.942,-154.6882,2.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8348333,-122.7983333,0.06);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.800499,-122.8003311,1.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.0283333,-117.7756667,0.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (39.5899,-120.7051,1.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8233333,-122.8268333,0.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.7336,-116.2965,0);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.8346,-152.9607,1.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (-18.6874,-70.7484,5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.663,-122.3656667,1.42);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.5514,-151.0557,0.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.7429,-153.1477,1.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (65.823,-151.7278,1.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.6055,-118.8588333,-0.21);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.575,-118.8571667,0.97);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.3401,-118.1873,0.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (60.6556,-152.5353,1.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (60.8783,-147.1319,1.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (51.4094,-168.6156,2.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8139992,-122.783165,0.47);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8131667,-122.783,0.27);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8994,-118.2309,0.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.3105,-151.3052,0.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.163,-118.2095,0.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (62.4514,-152.075,1.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (35.5665,-118.5358333,1.32);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (64.7759,-150.7769,0.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.4516,-98.7408,2.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (64.6856,-152.9163,0.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (51.2116,-178.1839,2.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (61.1523,-152.2695,2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.5079,-118.3978,0.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (61.0412,-152.4587,1.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.643,-118.8775,0.06);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.9884,-116.2706,-0.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.8585,-152.9164,2.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.4774,-118.3477,0.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (54.1284,-163.5457,2.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.9365,-122.1158333,1.05);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.4646,-98.7084,3.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.0348,-118.9819,1.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (64.6775,-147.6423,0.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.4738,-118.3794,0.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (19.2093334,-155.442337,2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.0388,-116.4376,-1.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8393326,-122.8284988,0.43);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (61.7947,-150.6761,1.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (29.7546,69.93,4.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (64.5063,-147.8407,0.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (61.4369,-140.7,3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (61.3749,-141.0504,2.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.5891,-116.251,1.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (-8.659,112.5384,5.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.6456,-97.7403,2.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.7197,-153.3072,1.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.5636667,-116.6541667,0.95);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (64.3843,-147.7381,0.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5755,-118.8625,-0.02);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.439,-121.782,0.76);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.9265,-118.6467,1.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (62.1841,-149.5672,1.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (64.7633,-149.134,0.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.9983333,-112.9141667,1.27);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.199,-119.4661667,2.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (60.4635,-151.4381,1.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.989,-112.9125,1.34);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (44.2513333,-114.5868333,1.52);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (60.5997,-142.7366,0.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.8287,-152.5295,1.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.657,-118.7838,0.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5691667,-118.8526667,0.93);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.6481,-116.3033,-0.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.243,-150.7581,1.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (35.9911667,-120.5526667,0.97);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (54.3913,-161.6465,3.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.5271,-152.9964,1.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.8806,-139.3362,1.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.578,-118.8588333,0.26);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (32.9026667,-115.5176667,1.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (18.8649,-66.9514,2.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.7481667,-111.49,1.41);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8221664,-122.8063354,0.55);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8243332,-122.8238297,1.08);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (62.849,-150.4767,1.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (19.0275,-67.0225,2.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (64.8886,-147.7154,0.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.5898333,-116.6045,0.51);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.0362,-116.4412,-0.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (67.5249,-166.5379,3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.0466,-150.6508,1.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8155,-122.82,1.24);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.644,-117.2325,0.64);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.0785,-117.6076667,1.66);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (57.2506,-154.0289,2.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.7831,-153.0944,2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.9708333,-117.1488333,0.78);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (53.658,-165.0844,2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (51.7149,-179.0889,2.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (51.6652,-177.5935,1.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (58.6676,-137.5259,2.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (62.4282,-150.9817,2.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (51.4813,-176.0541,2.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (66.0369,-150.0949,1.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (47.8628333,-122.1285,2.25);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.0756667,-116.5416667,1.55);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (45.22,-66.73,2.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (39.349,-122.8706667,1.78);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8236656,-122.8443298,0.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (51.4057,-179.3134,2.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5761667,-118.8585,1.06);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (56.5409,-156.4823,2.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.3756,-145.1171,1.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.5779,-116.2295,0.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.7795,-122.7555,0.01);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8113333,-122.8275,0.16);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8166656,-122.8311691,0.64);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8276672,-122.7994995,0.88);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.5817,-152.9894,1.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.988,-117.1411667,0.82);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (-8.923,108.1165,4.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (51.7416,178.6777,3.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (39.6074,-116.9651,1.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (39.8076667,-123.5681667,2.07);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (39.3803333,-122.8881667,1.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.7207,-153.0883,1.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (64.997,-147.3164,1.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8330002,-122.8018341,1.02);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.840332,-122.8266678,0.92);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (48.5898333,-121.44,1.75);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (48.5788333,-121.4766667,1.74);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.7041,-153.1367,2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (40.4653333,-121.5446667,0.19);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (62.6522,-137.2114,1.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (10.4123,125.9604,4.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.840168,-122.8404999,0.43);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (-20.9677,-173.6134,4.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (66.8981,-149.7704,1.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (34.4068,25.4201,4.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.9893,-148.7224,2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.4538,-98.7687,2.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8013333,-122.7848333,1.63);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.0553333,-114.9841667,1.58);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.259,-115.9953333,1.47);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8026667,-122.7856667,1.93);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8016667,-122.7855,1.15);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8083344,-122.7870026,1.15);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5753333,-118.863,0.62);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.1908,-153.6471,2.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (61.2547,-147.3843,1.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.838501,-122.8318329,0.84);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.0676,-116.3901,-0.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (61.759,-146.2047,1.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (58.6395,-142.7492,2.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (35.7199,-97.1683,3.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (40.4701667,-121.5495,-0.19);',
'Insert into EARTHQUAKES (LAT,LNG,MAG'))
);
wwv_flow_api.append_to_install_script(
 p_id=>wwv_flow_api.id(75477078542955772)
,p_script_clob=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
') values (-31.7957,-72.1661,4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (40.4625,-121.5531667,0.29);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (40.4716667,-121.5433333,-0.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (57.5788,-154.2183,2.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (65.0574,-146.7308,1.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8148346,-122.8193359,1.12);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (34.3263333,-116.9383333,1.72);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.5664,-151.041,1.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.8567,-148.6708,1.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.6598,-153.1408,1.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.5086,-118.3937,0.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5746667,-118.8561667,1.09);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (62.7218,-143.8484,1.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (44.728,-111.17,0.09);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.5126,-118.3932,0.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.38,-91.2768333,2.53);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (19.9381676,-155.8314972,1.89);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.0156667,-117.8046667,1.12);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.0135,-117.8038333,1.04);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.6265,-116.9461667,1.79);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (61.7301,-147.2202,1.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.899,-116.8645,0.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.7936667,-122.759,0.82);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5618333,-118.8478333,0.07);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5796667,-119.015,0.68);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (47.5243333,-121.9136667,1.56);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (46.127,-122.1648333,0.75);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.792,-122.7661667,1.23);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.4951667,-116.7888333,0.62);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5761667,-118.86,-0.11);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (60.2272,-151.1844,1.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5741667,-118.8568333,1.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5821667,-118.8563333,0.11);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (61.4034,-147.6047,1.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5748333,-118.8571667,1.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.296,-121.6738333,0.85);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.2943333,-121.6726667,0.82);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.5621,-151.0606,0.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.2715,-97.5099,2.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8255,-122.8033333,0.78);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (44.7406667,-110.8858333,1.04);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.7959,-147.6439,0.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5761667,-118.8496667,0.16);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (17.989,-66.7796,1.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (46.3501667,-119.5131667,0.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (18.1935,-67.1307,2.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (39.7193333,-110.7976667,1.83);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (35.9718333,-82.3236667,2.49);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.579,-118.865,0.25);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.7581673,-122.7348328,1.07);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (-15.0847,-76.3016,4.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.5991667,-121.2028333,1.17);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (34.0808333,-117.3138333,1.07);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (34.072,-117.3215,0.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5756667,-118.8551667,0.13);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8224983,-122.8119965,0.52);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5755,-118.8518333,0.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.0877,-151.4136,1.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.293,-97.5342,2.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (44.6031667,-114.1078333,1.68);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (12.5911,-88.4876,4.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.575,-118.8465,-0.05);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (60.6717,-146.717,1.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5788333,-118.8556667,-0.06);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.0582,-151.5121,1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5696667,-118.8521667,0.65);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (62.8702,-149.5513,1.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (61.7452,-149.9869,2.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (62.9022,-151.3482,2.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8413333,-122.83,1.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (44.5323333,-114.5216667,1.56);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8255005,-122.8460007,0.43);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8246667,-122.8238333,0.66);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8243333,-122.8231667,1.66);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8235016,-122.824501,0.82);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (53.9472,-163.3523,2.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (64.7075,-147.6278,0.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (40.4665,-121.5253333,-0.06);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8151667,-122.8276667,0.17);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.6058,-150.7662,1.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (64.7879,-148.6769,0.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8261681,-122.8515015,0.85);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (62.2257,-145.6878,1.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.0073333,-117.8038333,0.72);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.6956,-153.2716,1.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.3681667,-116.2876667,1.12);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (53.3679,-171.2933,3.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5738333,-118.8548333,1.16);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.1999,-150.7085,1.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (44.5545,-114.5326667,1.71);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.577,-118.8621667,0.37);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (-9.0005,127.1933,4.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (51.4334,-175.5046,2.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.4346,-154.0371,2.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (44.543,-114.5065,2.07);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8255005,-122.8416672,0.79);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (6.9983,126.7146,4.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (61.4695,-149.7654,2.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (35.9676667,-117.9041667,0.77);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (4.2421,124.7356,4.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (2.5059,127.0058,4.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (39.3897,-120.2072,-0.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (51.9832,-173.7776,2.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.7973,-152.9949,2.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.4403,-98.7834,2.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (-7.8195,118.9899,4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (61.4497,-150.326,1.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8144989,-122.81633,0.65);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8263321,-122.7959976,0.86);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (0.1755,121.8924,4.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (60.5378,-147.2549,1.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (60.0958,-151.2409,2.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (-28.5773,-179.08,4.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (19.4076667,-155.282,0.53);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.4014,-118.1124,1.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.9846667,-116.8425,0.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (35.7805,-120.3233333,0.77);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (34.373,-120.4598333,2.16);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.1873,-117.5718,0.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.2223333,-116.199,1.44);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8226667,-122.7991667,1.56);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8253333,-122.7948333,1.48);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (34.582,-115.4693333,2.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.8585,-152.9401,1.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (1.9776,126.66,4.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (19.3863333,-155.2786667,2.66);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.8665,-117.038,0.85);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8255005,-122.7983322,0.52);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8255005,-122.8003311,0.53);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (19.4068333,-155.2765,0.59);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.4418,-98.7719,2.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8255005,-122.7973328,0.89);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8258333,-122.7971667,1.04);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.58,-118.8578333,0.06);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.4489,-98.7647,1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.2831,-151.3813,1.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (18.798,-65.0221,2.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (20.0221667,-155.596,1.66);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.5107,-118.402,-0.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.236,-118.2034,0.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (48.668,-119.5895,1.26);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (62.9175,-151.1434,1.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (13.1232,-88.8203,5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (62.255,-145.6815,0.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5306667,-118.8666667,0.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (45.1035,-122.5186667,2.15);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (52.9164,-167.5107,2.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5713333,-118.8526667,1.31);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.5201,-146.6807,1.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (19.3243333,-155.1925,1.48);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (64.9912,-147.325,1.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5719,141.8681,4.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (60.079,-152.9137,1.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.7715,-122.7418333,1.32);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.0258,-137.1109,1.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (-16.5418,178.0144,4.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (-28.8266,-12.7068,4.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.8661,-152.7169,1.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (44.5566667,-114.5151667,2.22);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (18.1298,-67.4131,2.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (-16.8664,-173.4804,4.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.5083,-152.1773,1.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.7591667,-122.7355,1.08);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.76,-122.7368333,0.75);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.4388,-98.7814,1.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.2235,-97.585,2.02);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (46.6131667,-111.892,1.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.4815,-116.452,0.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (58.3316,-137.8397,1.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (46.3456667,-122.3848333,0.89);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.5875,-116.2569,0.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (-26.3907,179.0271,4.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.7986679,-122.8024979,0.87);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (52.5728,-166.8694,2.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.0361667,-117.7758333,0.26);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (49.4035,-120.5045,2.11);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5973333,-118.8726667,-0.01);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.5924,-116.2644,0.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5738333,-118.8555,0.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (60.3983,-150.7089,1.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.7649994,-122.7418365,0.93);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (41.8667,-119.63,1.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8235,-122.8426667,1.06);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.7571667,-122.7326667,0.72);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (35.5606667,-120.8308333,1.39);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.0611667,-117.8746667,2.01);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.7635,-122.7403333,2.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (-18.5124,-174.5991,5.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8001667,-122.7698333,0.66);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5745,-118.8495,0.93);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.770668,-122.7656631,0.76);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.3183,-114.634,1.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.8678333,-117.5153333,0.98);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (40.5185,-121.5086667,0.21);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (17.8509,146.2847,4.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.062,-117.8745,2.15);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (39.6407,-119.5513,0.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (23.8544,123.4507,4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.1557,-150.4687,1.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.662,-118.8808333,0.01);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (65.1998,-149.0137,0.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (51.6235,-173.8162,1.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.8413333,-117.4926667,1.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.3366667,-116.3458333,1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8021667,-122.7703333,0.65);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.0758,-149.3874,1.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (51.5636,-173.8409,2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (0.4328,122.5294,4.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (23.9254,123.4273,5.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.443,-98.7808,2.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (52.0229,-173.6147,2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.7359,-116.2915,-0.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.1208333,-97.4875,2.05);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5578333,-118.8506667,0);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.5694,-152.5415,1.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.511,-118.3964,0.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (64.1818,-150.012,0.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.4858,-117.9195,1.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.5078,-118.4047,1.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5369,77.8015,4.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (43.1599,80.3128,4.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.3887,78.0971,4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (61.2655,-146.9442,1.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.499,-122.3988333,0.97);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5381667,-118.8763333,0.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (64.8486,-148.7127,0.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.8461667,-117.4985,1.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (51.5276,-175.4674,2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8064995,-122.8221664,0.99);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (-5.8267,149.5974,4.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (19.5266667,-155.6016667,2.21);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (67.9637,-154.0381,2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.845665,-122.8284988,1.01);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.7945,-122.7646667,0.94);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (19.4043333,-155.2668333,0.83);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (0.4275,124.6856,4.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (19.3865,-155.2791667,0.51);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (-31.5105,-72.4272,4.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (18.3805,-67.5288,2.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.01,-117.8001667,0.65);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (51.7523,-177.933,2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (53.4813,-165.3406,2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (19.3846667,-155.2791667,1.27);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.7783333,-122.7235,1.44);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (62.3913,-151.2141,1.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (19.9298325,-155.6009979,2.15);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (51.368,-175.4933,1.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.841,-152.9577,1.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (51.533,-175.4916,1.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.4163,-116.8906,0.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.4626667,-121.0393333,1.27);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (47.6838333,-120.3163333,0.33);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8266678,-122.7955017,0.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (39.6742,-119.4051,2.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (61.3535,-140.9165,0.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (53.7121,-163.9538,2.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (47.6703333,-120.0885,1.12);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (-7.947,130.7199,4.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (18.4342,-66.1045,3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (60.9966,-146.3162,1.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (39.5288333,-111.1005,1.37);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (44.7333333,-111.1625,0.33);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (44.7613333,-111.1521667,0.28);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8075,-122.8296667,0.82);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (44.7695,-111.1613333,0);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.2205,-117.8144,1.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.239,-117.8096,0.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.0818,-149.6747,1.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (61.8286,-146.1251,1.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.0876,-149.0084,1.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (34.8655,-119.4478333,1.43);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.8335,-149.6077,1.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (14.6669,-93.1779,5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.2225,-97.5866667,2.08);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (51.4544,-178.0729,2.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (85.1104,11.067,4.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.1664,-149.7284,1.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.1078,-144.2112,0.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (-18.6471,169.2695,4.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (44.5615,-114.4988333,1.55);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (60.2751,-149.924,1.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (60.1653,-141.2217,1.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.7866667,-122.7311667,1.05);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (51.6149,-178.4592,2.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (46.3486667,-122.3716667,1.14);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (51.3284,-177.0017,2.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5773333,-118.8523333,0.16);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5716667,-118.849,0.03);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (61.9488,-148.8837,1.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (17.8078,-65.3219,2.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (61.712,-150.4973,1.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (39.1496,-119.715,0.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (61.2145,-147.0249,2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (51.4937,-177.8968,1.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (62.9964,-150.9267,1.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (44.4343333,-114.0993333,1.99);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.3253333,-118.3058333,1.07);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (18.8143,-66.963,2.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.9835,-115.3038,2.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.1806,-149.7565,1.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (61.3779,-141.0315,1.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.3103,-150.3862,1.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (54.797,-162.7468,2.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (-33.1796,-177.5878,5.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.6165,-118.8048333,0.56);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5738333,-118.8526667,-0.01);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.576,-118.8556667,0.75);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (-7.9431,-74.453,4.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (-0.0888,125.3315,4.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (19.0895,-66.6406,3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (35.6651667,-118.437,1.29);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (60.9018,-149.1051,1.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.4897,-118.4305,0.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.6871667,-116.7921667,0.73);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.8,-150.2953,1.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.7615,-116.9438333,0.92);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.1709,-150.5744,2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.5003,-98.764,1.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (60.9015,-147.02,1.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.8801,-116.161,-0.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (18.8327,-67.2754,2.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5738333,-118.8551667,0.42);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (44.5633333,-110.7556667,0.29);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (-47.5123,99.8286,4.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (58.611,-141.4237,2.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.4148,-152.9938,1.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.0236,68.7058,4.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (62.7335,-143.7724,1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.4758,-98.7408,1.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.4758,-98.7406,1.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (44.563,-114.5028333,1.37);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.4241,-151.2937,0.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (-54.208,-1.4345,4.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.2625,-111.5306667,1.23);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5615,-118.8441667,0.14);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (18.0114,-67.0743,1.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.4021667,-113.8351667,1.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (62.491,-149.3462,1.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (64.7194,-148.2366,0.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (56.482,-158.2764,2.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5758333,-118.8553333,-0.04);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.8863,-116.0069,-0.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8223343,-122.8424988,0.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (54.5941,-161.9938,2.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8199997,-122.7669983,0.87);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (18.0331,-66.3721,2.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (41.9816,-120.1764,1.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (48.7298333,-125.6346667,2.03);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (61.4457,-150.0902,1.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (41.8924,-119.5791,0.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5776667,-118.8513333,0.14);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.854,-122.0588333,0.75);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.2836,-117.8817,0.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (19.3955,-155.2386667,1.66);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.582,-118.8581667,-0.03);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.7483333,-121.4175,1.29);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (32.8585,-117.944,2.13);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (62.5582,-151.2347,1.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.4795,-116.5228333,0.44);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.1043333,-121.516,0.94);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.812,-122.8218333,1.47);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (35.7738333,-121.2288333,1.03);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8441667,-122.8268333,1.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.1508,-98.7294,2.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (62.1651,-151.4049,1.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.4368,-98.7771,2.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (41.9044,-119.6139,1.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (61.3988,-150.3172,1.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (35.6884,-97.4341,3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (35.7368333,-117.309,1.19);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (39.9506,-120.8383,0.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (18.892,-67.0903,3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (41.9063,-119.6012,0.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (51.6603,-176.8763,1.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.6325,-116.9323,0.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (46.1273333,-122.1645,0.44);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (46.1251667,-122.1635,0.43);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (41.8884,-119.6167,2.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8171654,-122.8075027,0.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (44.5488333,-114.5121667,1.96);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.777668,-122.7549973,0.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.624,-118.9651667,0.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (51.613,178.8704,2.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (64.4693,-134.4508,2.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (61.5583,-146.2738,1.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8128333,-122.8201667,1.08);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.3131667,-116.2833333,0.77);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.7566667,-122.6891667,0.67);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (44.687,-111.7665,1.01);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (60.6176,-143.1189,1.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.4008,-115.5805,0.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (19.0788,-64.8476,3.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.4292,-118.1843,0.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.3565,-121.7176667,1.68);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.3563333,-121.7146667,0.99);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.3595,-121.7175,0.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.3593333,-121.712,2.05);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.3591667,-121.716,0.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (35.6718,-97.4179,3.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.1315,-97.9838333,1.94);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (40.0829,-120.3999,0.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (64.495,-147.6648,1.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (41.9086,-119.6006,0.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (32.261,-115.3041667,2.18);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.582,-118.8398333,0.13);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (52.0213,-171.0059,3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (19.166,-64.8155,3.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (39.4864,-119.1832,1.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.4628,-116.5479,-0.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5596667,-118.869,0.13);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.6131667,-118.8666667,-0.19);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.8198333,-116.9846667,0'))
);
end;
/
begin
wwv_flow_api.append_to_install_script(
 p_id=>wwv_flow_api.id(75477078542955772)
,p_script_clob=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'.81);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (44.6923333,-111.8486667,0.97);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8246667,-122.8475,0.14);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (44.6938333,-111.8201667,1.26);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (54.6094,-161.4159,2.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.2903333,-121.6726667,1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (40.5416667,-111.6355,2.35);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (34.6866667,-116.242,2.77);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (60.9491,-150.9477,2.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (35.5398333,-119.3698333,2.25);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.7681667,-115.9388333,0.84);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.763,-115.9478333,1.77);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.4938,-98.7149,2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.4858,-98.7312,2.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.0133,-116.4903,-1.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (46.8938333,-112.5498333,2.57);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8376656,-122.8328323,0.68);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.6335,-119.0421667,0.17);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.2869,-151.402,2.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.838,-122.8311667,0.94);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8373333,-122.8311667,1.42);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.839,-122.8303333,1.85);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8026657,-122.7699966,0.98);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (61.4336,-150.0052,1.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (41.8659,-119.6427,0.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.6152,-151.534,1.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.0419,-116.296,0.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (53.8362,-166.5256,0.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8395004,-122.8300018,0.78);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.244,-116.0078,-0.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (47.7731667,-122.8885,1.93);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.0563,-117.457,0.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8128333,-122.783,0.29);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.0085,-116.499,-1.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.0477,-117.4543,0.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (39.2267,-120.085,-0.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.0425,-116.4439,-1.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.6548,-116.2711,0.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.0259,-116.4447,-0.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.6421,-153.5029,1.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.0238,-116.4422,0.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.7119,-153.2834,1.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.442,-116.4393333,0.92);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (18.8829,-64.4195,2.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.7605,-115.95,1.57);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.7671667,-115.9475,1.02);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.555,-150.926,1.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (61.4028,-146.781,1.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (64.3346,-149.1256,0.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (53.5793,-164.7982,2.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (39.6597,-120.2791,0.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (64.8298,-147.4645,0.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.0525,-120.2431667,1.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.06,-120.246,1.14);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.943,-121.5475,1.28);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (65.9059,-151.7276,0.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (60.7488,-151.8589,1.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.7369,-116.2965,0);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (18.1492,-67.5195,2.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.7363,-116.2896,0);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (39.5905,-120.0516,-0.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (39.5857,-120.0491,0.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (19.0795,-64.916,2.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (19.0776,-67.936,2.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8011667,-122.8285,0.27);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (44.6118333,-114.1391667,1.02);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.0053333,-117.9143333,0.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (35.9986667,-117.4431667,2.74);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (19.9601669,-155.3690033,2.02);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (14.5611,-90.6429,3.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.0086,-117.4996,0.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (61.8666,-149.9698,1.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (19.9768333,-155.3466667,1.94);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (18.756,-67.49,2.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8063316,-122.8178329,1.05);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (5.2818,125.3296,5.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.7199,-116.2233,-0.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (18.9071,-65.754,2.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (61.9577,-147.8255,1.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (61.5852,-146.7363,1.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (41.8596,-119.6462,0.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (22.739,-63.3288,4.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.6285,-118.9115,0.54);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (35.9988333,-117.4428333,2.32);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.7435,-116.8153333,0.69);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (40.0943333,-121.5786667,2.46);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (41.8831,-119.5902,0.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.7342,-116.2942,-0.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.0183333,-120.5818333,1.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.7336,-116.2999,-0.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.036,-116.4133333,1.24);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.7342,-116.2874,0);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8266678,-122.8511658,0.92);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (44.5421667,-114.5025,1.81);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.824501,-122.8436661,0.69);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (-31.712,-67.5532,5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (60.089,-153.2209,2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (39.8915,-116.0567,1.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (61.3725,-146.8096,1.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.5229,-118.5125,-0.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (64.1873,-148.989,0.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (57.9498,-156.0196,2.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.4488,-98.789,1.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8224983,-122.8420029,1.07);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8218346,-122.8423309,0.85);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.5447,-118.4877,0.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (18.759,-68.6516,3.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (19.4773,-65.4954,3.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (14.867,-93.7914,4.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (-34.701,-16.1144,4.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8346667,-122.8811667,0.06);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.7778333,-122.7301667,0.55);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (40.1651667,-122.84,1.52);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (44.6202,-114.136,3.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (46.3343333,-119.4253333,0.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (64.8504,-147.1646,0.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (54.0551,-163.3269,2.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (41.8472,-119.6408,1.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (-28.8908,-67.5705,4.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (41.8511,-119.6368,0.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.1869,-150.7422,1.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (44.5548,-114.514,3.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (64.6398,-149.1602,0.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.9574,143.8241,4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.6298333,-118.9695,0.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (18.5783,-64.658,2.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.9034,-117.4747,0.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (34.2165,-117.0801667,1.11);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.2035,-120.328,1.32);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (46.1408333,-111.4555,0.34);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8431664,-122.840332,0.71);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (60.675,-152.3754,1.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.758,-122.9148333,1.48);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (0.4053,126.1241,4.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (27.8322,85.7365,4.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8123333,-122.8136667,1.28);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.7917,-153.0831,2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5698333,-118.8501667,0.13);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (35.7311667,-121.125,0.73);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.4945,-116.7896667,0.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8078346,-122.8270035,0.52);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.4155,-115.6165,1.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.81,-122.8133333,0.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (34.6933333,-116.2456667,2.05);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.8747,-116.2086,-0.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.8795,-118.0977,1.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (35.7238,-116.158,0.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (53.2313,-166.479,2.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8093338,-122.8235016,0.88);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5706667,-118.851,1.34);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (41.9433,-119.6199,0.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.1024,-115.3043,0.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5771667,-118.832,0.47);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (18.7292,-69.4339,4.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5711667,-118.8545,0.08);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.7532,-118.9436,1.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (40.8991667,-123.355,2.19);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (64.7005,-149.7447,2.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.495,-116.8114,0.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8160019,-122.8143311,0.52);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (46.1973333,-122.2993333,0.07);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8358345,-122.7958298,0.49);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (39.1498,-119.7157,0.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8133316,-122.7841644,0.75);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.47,-118.8258333,1.24);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (34.183,-117.4038333,1.92);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (62.7668,-150.5101,3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (32.6628333,-115.941,1.43);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (64.8112,-147.0065,0.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (44.6091667,-110.2968333,1.16);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.037,-116.2138,-0.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (62.7951,-149.5381,2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (47.2321667,-113.3513333,0.36);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (62.2948,-150.0861,1.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8235016,-122.800499,0.66);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.4409,-98.7758,2.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (39.3597,-119.9426,0.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8230019,-122.8440018,0.43);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5693333,-118.8426667,2.29);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (46.9423333,-112.3966667,0.74);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8366661,-122.8261642,0.43);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5698333,-118.8406667,0.74);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.2831667,-116.2273333,1.16);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5711667,-118.8416667,1.02);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8218333,-122.7785,0.17);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (64.9367,-149.17,0.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (39.3543,-119.9379,0.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5748333,-118.8553333,0.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (39.241,-120.0939,0.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.7648333,-115.9478333,1.53);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.7668333,-115.9465,1.32);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8066673,-122.82267,0.44);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.7616667,-115.9465,1.65);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.7605,-115.9488333,1.67);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.1763,-150.5589,2.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (39.3807,-119.7673,1.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (41.8557,-119.6349,1.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.0347,-116.4397,-0.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.034,-116.4394,-0.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8064995,-122.8251648,1.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (19.4263333,-155.6216667,1.52);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.0431,-116.433,-0.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.0284,-117.4729,1.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (35.9314,-97.4224,2.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.3713,-117.0796,0.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.6343333,-118.8303333,0.29);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (46.3555,-122.2981667,0.29);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.8149,-153.1604,1.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5791667,-118.8451667,0);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (-30.4623,-72.063,5.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5773333,-118.8538333,0.72);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.4975,-113.909,1.37);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5913333,-118.8278333,2.51);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (62.9195,-151.3304,1.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (64.7472,-146.3701,0.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (18.6151,-65.0315,3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (18.6298,-65.0279,3.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (39.3306,-119.9063,0.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (19.3,-155.1928333,0.89);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8243332,-122.8461685,0.86);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8308333,-122.8553333,0.38);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (18.832,-64.6512,2.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.5956667,-116.718,0.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (35.9851667,-117.4501667,1.18);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (62.4096,-148.3763,1.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.595,-116.7188333,0.71);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5783333,-118.8611667,0.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (46.8688333,-121.9941667,0.74);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8156662,-122.8170013,0.92);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (39.5593,-115.739,3.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.7357,-116.2876,-0.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.814167,-122.819664,0.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.3844,-117.0918,0.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.6816667,-116.7558333,0.46);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (53.7001,-168.3005,2.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (18.921,-155.549,1.96);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (32.9905,-116.418,1.11);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (-4.4205,153.6209,4.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.734,-116.2886,0.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.6223333,-121.2318333,2.83);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (64.5968,-146.971,0.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.0251,-117.5129,0.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8128319,-122.8143311,1.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (6.762,-72.972,4.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8219986,-122.8270035,0.46);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (44.7306667,-111.1791667,0.53);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (44.7298333,-111.1733333,0.56);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.7328,-116.2989,-0.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (64.9553,-148.8372,0.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (44.544,-114.5058333,1.69);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.7318,-116.2936,0);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.736,-116.2889,0);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.5388333,-121.0955,2.24);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.7344,-116.2944,0.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.7388,-116.2878,0.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (61.8163,-148.4646,1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.2214,-136.7161,1.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (62.8753,-149.7402,1.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (35.5615,-120.8003333,0.89);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (19.3563333,-155.036,1.96);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (64.8479,-148.6566,0.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (47.6008333,-121.737,1.64);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8371658,-122.8293304,0.98);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.8421,-116.2497,0.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.835,-122.7941667,1.52);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.772,-122.6915,1.09);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.2173,-151.3678,0.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (60.328,-141.9058,1.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.7983322,-122.7389984,0.88);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (34.044,-116.8958333,0.91);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (60.3288,-141.8457,1.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (18.4883,-66.2969,3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.545,-121.1203333,0.94);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (60.3759,-152.5527,1.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (-15.6386,167.7685,5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8371658,-122.774498,1.02);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.8482,-151.3233,1.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.4558,-98.7726,1.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8178329,-122.7786636,1.03);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.0607,-117.588,0.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.6948333,-116.8023333,0.68);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5758333,-122.3686667,0.86);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (18.684,-67.276,2.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.0524,-138.0046,1.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (19.3731667,-155.2821667,2.11);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (60.2036,-151.0684,1.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.0505,-151.5034,1.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.7308,-153.1518,2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (46.226,-112.0775,0.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8355,-122.7921667,1.04);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.8062,-148.6054,1.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (61.8344,-148.5041,1.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (18.767,-65.5661,2.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (61.8406,-148.5454,1.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.357,-122.3943333,2.66);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (45.4601667,-111.8663333,-0.03);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.8808,-97.7929,2.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (60.4098,-152.3486,1.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.3604,-117.1857,1.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (44.6643333,-112.5348333,0.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.4649,-98.7513,1.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5701667,-118.8555,0.82);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.4633,-98.7531,1.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8176651,-122.7996674,0.55);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (64.9832,-148.8524,1.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.4748,-98.7354,1.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (64.8303,-149.2156,0.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (62.5597,-151.2976,2.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.7741667,-122.7125,0.59);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (39.3174,-119.9862,0.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (32.3058333,-115.3085,2.23);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5713333,-118.8561667,0.63);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.9013333,-116.8676667,0.87);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (39.1482,-119.7082,0.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (60.9374,-152.4139,1.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.4584,-98.7991,2.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.1963333,-120.7626667,2.81);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5363333,-118.8203333,0.49);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (39.2953,-119.125,1.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (19.4121667,-155.6336667,1.24);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8113333,-122.8245,0.63);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (39.3498333,-111.5438333,1.01);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.0291667,-116.551,2.07);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (-31.758,-69.439,4.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (19.3056667,-155.2116667,1.91);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (19.3048333,-155.2126667,1.27);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (52.6756,-164.2246,2.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (61.3328,-151.7143,1.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.5005,-116.5348333,0.78);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8031654,-122.8014984,0.18);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8496667,-122.7973333,1.01);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8503342,-122.7991638,0.57);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8523331,-122.7969971,0.59);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8475,-122.7955,2.09);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.5273333,-83.8283333,2.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (46.9335,-112.4051667,0.88);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (46.1878333,-122.1985,-0.07);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.6627,-118.7823,1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (62.9874,-151.5946,1.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5755,-118.853,0.31);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (39.2346,-120.0883,-0.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.375,-118.6106667,1.18);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.475,-98.7337,2.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (34.039,-117.2518333,0.78);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (41.8622,-119.6259,1.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (55.2105,-162.8865,2.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (34.001,-116.7588333,0.77);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5735,-118.8493333,0.13);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (41.8709,-119.6366,3.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (51.2214,-177.6948,3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5925,-118.8276667,0.04);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.7332,-153.2511,2.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (34.0181667,-117.221,0.75);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (19.4328333,-155.6206667,1.36);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (35.9986,-97.119,2.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.68,-116.7393333,0.72);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (51.5484,-177.6681,1.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.0379,-117.4613,0.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.6635,-118.7813,0.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.6047,-118.795,0.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (46.2061667,-122.2235,0.31);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.3008,-117.5789,1.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.0395,-117.7208333,0.91);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5703333,-118.8413333,0.85);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (34.6051667,-116.6311667,1.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.572,-118.8418333,0.71);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (35.3115,-118.5381667,1.07);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8260002,-122.8396683,0.57);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (60.1043,-152.655,1.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.6366667,-119.0383333,0.27);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (35.7366,-3.5222,4.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (62.488,-151.1636,1.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (61.7949,-149.4171,1.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5813333,-118.8538333,0.06);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (35.735,-3.5106,5.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (39.9335,-122.923,1.09);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.0375,-118.6008,0.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (41.8993,-119.5906,1.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (60.3814,-151.3304,1.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (19.3064,-64.8581,3.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (46.205,-122.1376667,0.83);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.0018,-152.2399,2.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (19.3946667,-155.2521667,0.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.7389,-116.2845,-0.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8129997,-122.8174973,0.55);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (-4.4733,133.8129,4.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.7355,-116.2915,-0.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (47.9316,156.2505,4.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.7258,-116.2997,1.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (47.654,-120.235,1.54);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (61.0141,-146.3355,1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (57.383,-155.0284,1.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (-32.7522,57.2215,4.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.4282,-97.7232,3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (51.9127,-176.7926,2.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.7175,-116.0873,-0.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (19.3185,-64.85,3.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.6455,-118.9355,0.45);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.4751667,-116.503,0.79);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.7378,-116.2893,0);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (-7.4667,128.4847,4.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.6661667,-116.7641667,2.13);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (60.2173,-152.1905,1.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (42.0546,-120.4454,-0.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (52.8185,-168.228,2.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (17.972,-68.725,3.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.7347,-116.2927,0);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.5228,-118.5199,0.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.7367,-116.2907,0);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.7301,-116.297,0.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.0307,-150.6423,2.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (32.5695,-115.6803333,1.39);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (19'))
);
wwv_flow_api.append_to_install_script(
 p_id=>wwv_flow_api.id(75477078542955772)
,p_script_clob=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'.3174,-64.7693,3.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.7299,-116.2996,0.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (3.0258,128.46,4.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (19.2702,-64.7857,3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (19.3026,-64.803,3.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (17.9221,-66.967,1.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.7354,-116.3042,0);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8105011,-122.8256683,1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (39.9478,-120.7103,0.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (64.6438,-149.3257,0.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.7902,-152.9647,3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.441,-122.4585,1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.4891667,-116.4686667,0.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.2924,-118.7786,0.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (47.3466667,-113.463,-0.11);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.6323333,-118.9,-0.19);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.5699,-118.2676,0.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8765,-123.2505,1.49);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (-62.2332,155.2191,5.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (64.6801,-149.4819,0.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (60.736,-151.6316,1.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (64.6369,-149.4912,0.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (35.407,-117.3872,1.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.6896667,-121.3198333,1.33);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (60.882,-149.1278,1.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (64.683,-149.427,0.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (32.96,-116.4205,1.07);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (61.8472,-149.6487,1.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8008347,-122.8125,0.76);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.1731,-151.304,1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (46.6176667,-119.8481667,0.56);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (65.0012,-147.2949,1.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (1.2943,126.8981,4.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.586,-118.8513333,0.06);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (40.4416667,-124.6321667,2.61);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (60.9873,-147.7693,1.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (-8.2311,120.6248,4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (0.3521,98.6182,4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (41.8773,-119.622,1.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (18.8283,-64.6695,3.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (49.0178333,-125.607,1.93);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (45.6305,-118.8786667,1.85);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (18.8581,-64.6822,2.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (34.6873333,-116.2458333,1.37);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (34.6896667,-116.2435,1.98);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.7006,-153.3239,1.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.0373,-118.6258,0.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (62.2079,-150.6774,1.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (49.43,-120.512,1.93);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (46.8495,-121.7603333,-0.18);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (62.1641,-150.4725,1.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (64.4414,-149.3268,0.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (18.0914,-67.071,2.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5728333,-118.8538333,0.74);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8138351,-122.8291702,1.01);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8203316,-122.7959976,0.69);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (-5.9055,150.5453,4.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (-9.0552,127.1953,4.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (-31.1462,-71.5434,4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (62.0281,-147.9346,1.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (35.2283333,-118.5876667,1.06);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (61.4833,-149.893,1.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (46.8495,-121.7595,0.51);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (35.4471667,-118.3506667,1.57);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (44.5458333,-114.5168333,1.79);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (34.0408333,-116.6956667,2.12);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.2931,-149.8756,1.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.831501,-122.8021698,0.71);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (64.9901,-150.8603,1.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (46.0155,-112.8841667,-0.44);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (64.9891,-147.3352,1.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.464,-118.6578333,0.95);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8188324,-122.7975006,0.71);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (42.3748333,-122.8181667,2.14);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (19.8741667,-155.1855,3.19);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (23.8555,102.5952,4.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (39.2411,-120.0264,0.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (60.7014,-148.9989,1.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (18.6531,145.5172,3.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.845665,-122.8284988,1.07);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8176651,-122.796669,0.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (46.8471667,-121.7506667,2.25);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (11.6284,-87.2231,4.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (66.0376,-148.5776,1.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (35.5365,-119.365,2.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (35.5375,-119.3686667,1.95);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.1126,-148.9032,1.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.6363333,-118.9238333,0.84);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.6395,-118.9238333,0.98);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (35.5356667,-119.3638333,2.62);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.2805,-153.8745,2.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (41.5423333,-112.1488333,0.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5731667,-118.8558333,1.54);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.4472,-98.7646,1.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.4468,-98.7671,1.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (35.8675,-117.7463333,0.61);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.6581,-118.7877,1.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (23.5921,144.306,5.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (46.3476667,-122.2356667,0.39);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.1621,-117.3768,0.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8176651,-122.7898331,0.45);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8126667,-122.7903333,2.04);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.4435,-98.7682,1.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.6611,-118.7823,1.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (47.2981667,-121.7581667,1.57);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (62.315,-142.4995,1.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (19.4458,-64.7283,2.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.1146667,-117.8371667,0.44);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (62.9855,-149.8639,1.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (46.8886667,-111.8761667,0.95);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (44.5623333,-114.499,1.73);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (61.3257,-145.9859,1.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.7898333,-122.8036667,0.32);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (35.6766,-97.4152,2.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8115,-122.8176667,1.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (58.9233,-151.2799,2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8128319,-122.8203354,0.64);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.4481,-98.7698,2.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.2871,-115.1489,1.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.7533,-152.5603,1.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.7446667,-122.6968333,1.84);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.7944984,-122.8068314,1.17);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.9137,-153.1827,1.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.7923333,-122.8056667,2.36);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.795,-122.7661667,0.23);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.4951667,-116.793,0.88);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.7571,-153.1269,2.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (47.8036667,-122.766,1.18);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.996,-112.255,2.16);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.569,-118.8516667,0.32);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.0026667,-112.2663333,2.57);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.7961655,-122.73983,1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (64.6827,-149.1855,0.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.7342,-116.2917,0);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.735,-116.2925,0);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.7308,-116.3031,-0.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.7337,-116.2957,-0.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.7341,-116.291,-0.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.7337,-116.2939,0.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.6644,-119.7349,1.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.665,-118.8608333,0.21);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.7309,-116.2981,0.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.733,-116.2918,-0.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.7325,-116.292,-0.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.7259,-116.319,0);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.5255,-118.526,-0.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (46.5805,-121.755,1.38);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (51.8513,-173.9598,1.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (50.0311,-178.2623,2.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (47.283,-122.3048333,1.23);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.4869,-146.6465,1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (-55.35,-27.2872,4.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (18.1741,-67.2833,2.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.665,-121.28,1.85);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.8301,-117.5074,1.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (41.8854,142.2685,4.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (-20.0945,-177.6613,4.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (66.2667,-175.8676,3.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (52.8071,-167.8014,1.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (61.5169,-150.66,2.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (53.1617,-161.8774,2.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.5192,-118.3871,1.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (-30.6422,-179.7948,4.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (34.249,-118.4293333,1.23);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8310013,-122.8011703,0.43);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (44.6168,-114.1212,3.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (64.7218,-149.6232,0.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (39.914,-120.7443,0.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (43.0965,141.7324,4.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.1038,-150.4909,2.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.0745,-120.631,0.34);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (62.9944,-150.3826,1.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8818333,-123.2545,1.53);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.6191667,-121.2206667,1.96);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (54.8368,-166.0322,2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (-8.7463,111.5091,5.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (61.5578,-147.8268,1.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.2741667,-118.3986667,0.98);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (45.0728333,-111.7355,1.31);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (34.025,-117.2333333,0.82);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (51.9851,-166.3373,2.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.0344,-118.2839,0.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.881,-123.2496667,1.26);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5926,-116.3658,0.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8795,-123.2503333,1.85);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.0406,-116.4329,-1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.8226,-153.0371,1.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.6077,-118.7768,0.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.0254,-116.4443,-0.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5738333,-118.8526667,0.23);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (-47.097,33.1259,5.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (35.6387,-97.2407,2.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (51.7537,-174.9865,1.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (61.5947,-151.5509,1.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8186667,-122.805,0.37);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (43.3935,-110.712,0.56);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (-22.2017,-175.9715,4.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (19.1901667,-155.4246667,1.53);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (-18.4779,-173.7781,4.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (19.1881,-64.4876,2.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.4469,-98.7669,2.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (-15.2686,166.14,4.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (40.5103333,-124.3028333,1.75);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.427,-113.1355,0.76);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.8725,-117.5073333,0.75);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (61.7858,-146.9818,1.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.565,-118.8617,1.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5736667,-118.8558333,1.29);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (60.7896,-152.3178,1.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.8182,-153.0401,1.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8816667,-123.2496667,1.42);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8224983,-122.8466644,0.33);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8161659,-122.8256683,0.92);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (35.5345,-119.3658333,1.84);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (35.5423333,-119.3728333,4.87);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.8296667,-117.1693333,0.93);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (-7.1842,107.5581,4.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8180008,-122.7975006,1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (61.5679,-149.8111,1.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8178329,-122.7971649,0.87);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8171667,-122.7968333,2.19);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (45.1855,-112.4351667,0.82);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8434982,-122.8420029,0.28);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8438339,-122.8434982,1.03);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (64.8071,-149.0476,0.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (53.4721,-165.5089,2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (61.5672,-146.536,1.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.6755,-97.7377,2.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.5051,-98.7347,2.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (34.6913333,-116.2441667,2.64);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (61.7237,-150.6314,2.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.7971649,-122.7641678,0.82);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.6615,-116.756,0.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (46.8481667,-121.755,0.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (46.8473333,-121.754,0.66);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.6681667,-116.7616667,0.83);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (60.3555,-152.811,1.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8635,-122.9528333,1.44);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5835,-118.8556667,-0.09);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.5544,-147.6449,0.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (61.793,-149.258,1.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (62.2911,-151.8361,1.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.7961,-97.9993,2.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (35.6643,-97.3896,2.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (58.4264,-154.212,2.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (-17.7352,-178.5123,4.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.821,-122.8,1.75);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (35.6731,-97.3845,2.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.4698,-98.7689,1.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (1.0244,127.4512,4.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.1547,-117.2593,1.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (61.5085,-147.1901,2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (1.0659,127.4308,5.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (35.6724,-97.3925,2.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.5169,-152.6835,2.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (-41.9151,174.2117,4.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (69.1257,-144.6245,2.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.7424,-153.4276,1.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.8639,152.052,4.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.4762,-98.725,1.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.5424,-147.1171,1.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8131676,-122.8288345,0.43);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (51.6458,-171.8867,3.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (19.4056664,-155.2758331,1.88);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (69.1522,-144.4675,4.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.9808333,-121.627,0.85);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8351667,-122.7915,1.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (39.2486667,-122.8071667,1.72);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.7216,-153.2805,1.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.7676667,-116.1196667,0.87);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.8299,-152.9117,1.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (51.2993,-178.765,2.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (32.4633333,-115.2258333,2.62);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.0345,-116.4366,-0.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.037,-116.4489,-0.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (40.1415,-123.8351667,1.84);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (42.4967,-71.4717,1.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.1156667,-117.6998333,0.53);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.8981,-153.176,2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (54.7257,-160.082,2.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.268,-150.5099,1.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (60.2017,-153.3997,2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.2858333,-120.01,2.09);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (60.3022,-153.0561,1.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (67.6765,-162.7552,2.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (64.648,-151.7055,1.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (50.7207,-174.1309,2.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.8358,-149.1472,1.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8216667,-122.8421631,1.02);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.4474,-98.7682,1.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.0686,-117.4311,0.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.5225,-116.4735,1.24);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.449,-98.7715,1.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5756667,-118.8545,0.52);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (35.7215,-97.1624,2.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8331667,-122.7978333,0.14);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (51.5996,-177.664,1.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.7325,-116.2937,0.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (64.992,-147.3145,1.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.5858,-116.5164,0.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (44.7645,-112.795,0.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (65.0812,-151.1786,0.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (52.2843,-174.4853,2.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (35.5673333,-119.3756667,2.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.7261,-116.3127,0);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.844,-122.827,0.12);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8061667,-122.7703333,1.41);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.184,-116.5895,-0.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5743333,-118.8613333,0.67);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (46.9391667,-112.4051667,1.97);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (52.953,-167.7865,1.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8213348,-122.8406677,0.18);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.3658,-117.0723,0.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (40.4776667,-121.4988333,0.05);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (40.484,-121.5143333,0.05);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.9894,-116.2836,-0.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (64.6943,-149.0779,0.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (19.3068,-64.8961,3.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (62.165,-148.6975,1.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (19.3332,-64.8267,3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (39.6376,-120.395,1.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (62.1123,-150.3223,2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5726667,-118.855,1.23);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (-8.9862,124.1401,5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8113333,-122.833,0.28);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8255,-122.8235,0.13);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.829,-122.8018333,0.16);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.6463333,-118.9385,0.41);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.1353333,-116.06,1.34);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (19.2525,-64.807,2.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.9305,-116.8048333,0.79);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5715,-118.8571667,1.92);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5681667,-118.8568333,1.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.5136,-118.3888,0.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.6381,-97.74,2.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (-51.7897,139.5956,6.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (44.8171667,-112.8426667,0.88);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.882,-123.251,2.12);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.0749,-153.0643,3.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.3226667,-122.1006667,1.27);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.5279,-98.9737,2.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.747,-122.7091667,0.66);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (61.5452,-146.2855,1.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (34.3008333,-116.8655,1.01);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (51.9725,-175.9542,1.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.5297,-98.9767,3.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.4991667,-118.8418333,0.85);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (46.1246667,-122.1673333,0.49);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (-21.1071,-178.4923,4.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.8333,-153.2376,2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (44.4738333,-111.0488333,0.07);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (44.6301667,-110.3465,1.48);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.4533,-98.7706,2.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.7795,-153.3996,2.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.566,-118.8541,1.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5715,-118.8546667,1.16);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (12.6929,-88.7316,4.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.4463,-98.773,1.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (19.4121667,-155.3181667,2.13);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (-19.7874,-177.4728,4.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8006667,-122.7705,1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.451,-98.7912,2.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (41.8391,-119.6331,1.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (62.99,-151.5528,2.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.3034,-134.4591,1.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (44.7595,-111.1571667,0.13);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.7292,-153.2357,1.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8398333,-122.8315,1.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (55.7293,-160.1918,2.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (17.9888,-66.2772,2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (34.0503333,-117.3635,1.22);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (61.8115,-150.083,1.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (-8.9833,127.4847,4.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.6105,-118.4589,0.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.604,-118.471,0.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (44.735,-122.2816667,1.08);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.456,-116.4768333,0.56);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (51.774,-176.0986,2.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.1702,-152.7541,1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.1694,-152.7291,0.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (64.9931,-148.8789,0.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (40.7446667,-122.33,1.54);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (51.9939,-173.9582,2.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (62.0621,-150.119,1.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (62.6365,-143.0938,1.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (46.7531667,-121.9365,0.87);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (62.5025,-149.1005,1.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (39.61,-121.566,1.96);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (51.5141,-176.7254,1.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (34.0543333,-117.3523333,1.14);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (64.9971,-148.9071,0.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (46.945,-112.3946667,1.62);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (35.6878,-97.4077,2.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8103333,-122.8118362,1.02);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (51.494,-177.6814,2.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (46.9236667,-112.3861667,1.88);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (46.9375,-112.389,1.66);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.8837,-139.2867,1.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (62.7719,-150.5197,1.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.4587,-148.9576,1.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (64.6751,-149.2908,0.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (61.0704,-150.7317,2.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.4711667,-118.6853333,0.75);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (-63.0433,145.002,5.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (54.3858,-165.4338,2.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.8616667,-117.8533333,1.05);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (65.9692,-150.539,1.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (61.1336,-147.3351,1.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.8228,-148.5866,1.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.4754,-98.7701,1.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (69.1726,-144.4077,2.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.7795,-153.0352,1.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.0551,-149.6404,1.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (51.469,-176.0557,1.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (51.6374,-179.638,2.6);'))
);
end;
/
begin
wwv_flow_api.append_to_install_script(
 p_id=>wwv_flow_api.id(75477078542955772)
,p_script_clob=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.4696667,-118.6878333,1.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.566,-118.8685,0.01);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (64.971,-148.8917,0.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.4688333,-118.689,1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (61.8711,-147.354,1.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (41.0091667,-74.3475,0.24);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.4287,-146.047,1.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.3308,-153.4911,0.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8418333,-122.8276667,1.48);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.2593,-151.6719,1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8103333,-122.7911682,1.15);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (39.4345,-123.1638333,1.64);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (64.9853,-147.3757,1.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.2085,-120.3198333,1.22);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.0523333,-116.4391667,1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (65.2457,-151.536,1.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.1297,-97.6575,2.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8411674,-122.828331,0.85);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (40.7283333,-121.4971667,0.89);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (39.2312,-120.4963,0.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (52.4227,-175.0233,3.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (-23.4599,179.8238,4.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (5.334,125.6094,4.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (60.7303,-146.7096,1.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8061667,-122.8145,0.22);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5671667,-118.8515,0.17);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.7557,-115.9099,-0.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (60.6138,-143.125,1.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (-7.1722,105.15,4.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.7109,-116.2192,0.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.7172,-116.2156,-0.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8108333,-122.824,0.23);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8123333,-122.8206667,0.27);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (18.927,-64.4227,2.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.4753,-98.7517,2.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (60.7215,-146.6825,1.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (39.1071,-118.063,0.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.2218,-153.6931,1.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (35.5426667,-120.8063333,0.57);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (39.6685,-120.9496667,1.78);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (62.1307,-148.0579,1.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (18.399,-64.74,2.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (45.9298333,-122.3905,0.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (53.1281,-167.1131,1.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (39.4196,-119.7837,0.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (39.4215,-119.78,0.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.464,-98.783,1.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.4619,-98.7495,2.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (60.911,-151.6358,1.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (39.5609,-115.7636,1.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (39.5963,-115.8739,2.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.4655,-98.7494,1.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.4831,-98.7714,2.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.0189,-149.3382,1.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.4736,-98.7528,3.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.4711,-98.748,3.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.802,-122.7718333,1.77);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8031654,-122.7713318,1.12);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8015,-122.7716667,1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.702,-117.4675,0.55);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (61.491,-150.1747,1.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.5548333,-121.0585,2.04);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.676,-122.376,1.47);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.6443333,-118.9371667,0.44);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (39.0633333,-123.1188333,1.51);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.6015,-116.8133333,0.52);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.5888,-118.0637,0.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (7.4958,-82.4955,4.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (18.839,-64.6697,2.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.7965,-153.0638,1.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (46.1838333,-122.1905,-0.38);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.4701,-98.7444,2.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8233337,-122.7798309,0.53);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (64.8627,-148.6977,0.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (19.0312,-66.341,2.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (-21.4311,-68.515,3.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (19.1644,-64.8414,3.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (34.0398333,-117.2431667,0.74);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (19.2215,-64.848,2.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (32.6951667,-115.7445,3.03);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (44.7031667,-110.989,0.91);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (19.3281,-64.7445,2.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.2173,-149.9476,1.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.0745,-121.4941667,1.05);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (-17.985,-178.4463,5.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8351669,-122.7734985,0.78);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.0928,-151.5107,0.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (51.5096,-175.9113,2.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (19.3756667,-155.0948333,2.26);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (-31.475,-71.7264,3.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (41.8912,-119.5992,1.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (51.6121,-174.8762,2.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (47.8311667,-114.3303333,-0.38);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.4923333,-121.8458333,0.85);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (47.7,-120.203,1.16);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.1017,-116.7589,-0.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.0001667,-112.2446667,1.49);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (34.6885,-116.239,1.94);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (48.1923333,-122.6566667,1.85);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (64.8062,-150.9818,0.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.495,-116.5308333,0.49);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (-10.0205,122.0279,4.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.2796,-117.7241,0.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.4377,-98.7788,2.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.9868333,-116.9843333,0.97);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8154984,-122.7928314,0.55);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.3973333,-118.3843333,0.88);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (34.178,-117.4026667,1.15);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (53.8059,-163.589,2.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (55.6742,-159.6732,2.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.2443,-116.0061,-1.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (19.2073333,-155.4596667,1.89);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (44.62,-110.2826667,1.02);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.3965,-153.0161,2.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8121681,-122.8261642,0.43);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.5386,-147.5805,1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.1045,-112.7896667,1.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8275,-122.8526667,0.34);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (61.3483,-150.2897,2.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.6581,-118.7949,1.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.881,-123.25,1.58);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.4465,-118.3941,0);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (19.4293333,-155.4793333,1.33);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (62.4385,-150.6223,1.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (60.629,-151.8497,2.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (-6.006,130.4296,4.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (-23.1048,-68.9617,5.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (46.0155,-111.3441667,0.48);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.4668333,-118.6901667,2.21);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.2788,-150.4256,1.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (64.8088,-148.942,0.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.4741667,-118.8205,0.74);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.7883333,-122.735,0.07);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (47.599,-121.7176667,1.63);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (35.6888,-97.4081,2.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (12.3491,-88.268,4.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (62.1448,-150.7826,1.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.1644,-118.2145,0);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.468,-118.6836667,0.93);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.0199,-151.6475,1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.4673333,-118.686,0.73);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.469,-118.6885,2.56);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.4666667,-118.6853333,0.81);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (60.2974,-151.8904,1.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.4691667,-118.6863333,2.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.4809,-98.7442,2.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (60.1371,-151.3368,1.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5738333,-118.8406667,0.41);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.4688333,-118.6863333,1.26);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5721667,-118.8311667,0.14);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (19.1592,-64.8273,3.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.4078,-118.1865,0.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8071667,-122.8248333,1.51);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (35.1366667,-118.6403333,2.16);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.4748333,-118.8236667,1.21);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.4735,-118.8248333,1.59);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5713333,-118.8405,0.99);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (-23.9883,-67.0269,4.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (34.6928333,-116.2486667,2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.4566,-148.9485,1.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.9658333,-121.6205,0.87);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.1587,-118.2142,0.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (19.3863333,-155.6148333,0.63);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (62.979,-149.972,1.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.8315,-152.9431,3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (18.3792,-64.108,2.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (48.2003333,-121.7683333,1.49);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (64.4139,-148.6134,0.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.2325,-118.4315,0.88);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (-20.9075,173.951,4.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (62.552,-150.8121,1.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (19.1774998,-155.4606628,1.84);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.7366667,-116.7105,0.55);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (44.548,-114.5115,2.24);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.0866667,-120.2018333,1.43);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (28.0107,84.7447,5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.7151667,-118.0261667,1.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.4883,141.8349,4.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (61.4353,-151.1913,1.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (44.544,-114.5133333,1.62);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.3046,-114.583,0.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.4485,-98.7691,2.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (34.3033333,-116.8951667,2.87);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.7603333,-116.1133333,0.86);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.5353333,-116.696,0.52);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8421667,-122.8395,0.47);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5738333,-118.8486667,0.01);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.4734,-98.7402,2.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.6366667,-119.0418333,0.25);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5813333,-118.853,0.01);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.148,78.139,4.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8284988,-122.7945023,1.02);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.3761667,-118.6133333,0.92);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.5008,-147.2146,1.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.9721667,-117.176,0.94);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5453333,-118.8768333,0.02);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (39.241,-120.0918,-0.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.1291667,-122.276,0.97);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.7890015,-122.7446671,0.89);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.7425,-153.1552,1.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (41.012,-74.3485,0.13);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (51.5935,-177.0598,2.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.0219,-116.4413,0.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (60.3452,-151.1011,1.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (46.7415,-113.1446667,1.16);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (34.3046667,-116.865,1.52);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (62.3186,-149.7634,1.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.1663,-118.2302,0.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8199997,-122.8181686,0.83);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.6388333,-118.8841667,-0.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.4801667,-116.493,0.39);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8246651,-122.8236694,0.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.6456667,-118.937,0.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.2126667,-118.4056667,0.91);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.5293,-98.9698,2.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (34.012,-118.4176667,1.19);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (61.9757,-152.0803,2.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.1207,-151.4842,0.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.7905,-122.772,0.29);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.7886667,-122.7773333,2.63);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.744,-119.6066,1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8118324,-122.8136673,0.88);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (60.2222,-141.0235,1.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.2798333,-116.7863333,0.62);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (41.8962,-119.5913,1.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.6431667,-117.2336667,0.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (61.1969,-151.9162,1.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8171654,-122.8183365,1.02);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (43.7708333,-110.9126667,1.17);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (34.6295,-116.2893333,1.72);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (46.4171667,-121.773,0.87);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (53.1845,-166.7335,1.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (60.127,-151.9664,1.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.5059,-118.3983,0.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.3228333,-118.5931667,1.34);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.4895,-116.906,0.55);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.2458,-151.094,1.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.4638,-98.7499,2.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (61.5726,-148.3332,1.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (54.7722,-161.592,2.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (19.3473333,-155.2168333,2.43);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.9364,142.5653,4.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (60.3759,-146.9271,1.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.8801667,-116.901,0.72);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.2948,-150.6536,1.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (61.0326,-146.636,1.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (17.833,-66.055,2.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (-40.5547,176.8849,4.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (18.1007,-66.2874,2.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.067,-150.4148,1.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (-31.0733,-178.9432,4.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (21.9339,-108.2501,4.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (35.5923333,-120.8733333,2.04);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (61.2703,-150.0819,1.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (65.2379,-150.8262,1.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.8991667,-116.258,0.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (41.8052,-119.6081,0.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.1241,-117.0157,0.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (19.0505,-64.7322,3.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (46.722,-121.9163333,0.03);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (65.6032,-152.5775,1.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.2226667,-118.402,0.92);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (61.6506,-151.8082,1.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (19.3291667,-155.1623333,1.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (39.7436667,-110.9466667,1.81);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (19.0146,-65.1027,3.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.6265,-118.9043333,0.58);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5026667,-113.923,1.87);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.6346667,-116.7285,0.33);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.7924995,-122.7651672,1.07);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (40.5401667,-121.6581667,0.52);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.5103,-147.1622,1.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.762,-116.1128333,0.79);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (19.4143333,-155.3168333,1.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (39.399,-119.0115,1.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (62.8894,-151.2633,1.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (68.1021,-136.4771,3.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.348,-114.6299,0.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.4511667,-116.387,0.52);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8409996,-122.8286667,0.33);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8391685,-122.8274994,0.84);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (-7.5196,128.5492,5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (18.2124,-67.6358,3.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (34.259,-119.643,1.87);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.9483333,-120.2801667,2.18);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (34.2695,-119.6558333,2.19);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (34.271,-119.6551667,2.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (34.2651667,-119.6553333,1.97);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8380013,-122.8288345,0.32);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.738,-115.9915,0.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (34.2088333,-118.5645,1.29);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8231659,-122.8423309,0.79);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (65.8825,-150.7776,2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (64.6705,-148.2648,0.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (35.6918,-97.4031,2.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.4725,-118.8261667,1.66);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (17.9046,-66.9421,1.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.5741,-150.7878,1.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8243332,-122.8434982,0.43);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5395,-118.8048333,0.03);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.4731667,-118.8248333,2.61);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.7711667,-122.7155,1.04);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.8384,-152.9549,1.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.8133333,-116.0651667,1.78);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (47.6015,-121.7271667,1.38);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.4968333,-112.5956667,1.25);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.5658,-118.4381,0.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (35.6765,-97.3973,2.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (34.2576667,-118.6871667,1.19);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.2189,-118.048,1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8339996,-122.7726669,0.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (62.8882,-149.5161,1.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (47.546,-122.7965,2.76);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (51.7601,-175.39,2.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.0722,-118.8082,0.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (17.9447,-67.0316,2.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (41.8611,-119.6302,3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (46.1456667,-111.9208333,1.01);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (34.253,-118.6676667,1.56);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (46.264,-120.5385,1.57);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8056679,-122.7748337,0.73);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8068352,-122.770668,0.71);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (47.4671667,-122.5915,0.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.0308333,-120.5921667,0.61);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.4122,-151.3322,1.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.224,-120.774,1.21);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (34.6931667,-116.2453333,1.88);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (19.4144993,-155.2633362,1.12);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.0175,-117.802,0.69);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.0118333,-117.7971667,-0.05);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (40.501,-124.3011667,1.13);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (39.742,-123.4626667,1.86);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8251667,-122.7968333,2.61);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8256683,-122.7969971,0.55);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (19.4025,-155.2778333,0.49);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (51.5556,-175.5126,2.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.7641667,-122.7266667,1.36);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8260002,-122.8249969,0.89);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.5254,-98.9867,2.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.0461667,-117.7666667,0.45);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.0451667,-117.7736667,0.74);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.840332,-122.8284988,0.92);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (52.3793,-174.5314,2.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.2785,-121.6541667,1.15);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (35.6381667,-120.7563333,1.19);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.831501,-122.8061676,0.86);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.5553,-98.9182,3.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.828167,-122.7978363,0.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5731667,-118.8501667,0.15);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8246651,-122.8006668,0.55);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.4758,-151.4831,1.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8208351,-122.7643356,0.82);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (61.9453,-149.268,1.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.7885,-122.7613333,1.87);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (47.593,-121.783,0.95);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (52.3129,-169.2713,2.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (34.9136667,-119.3456667,1.48);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.578,-118.8511667,0.06);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (30.4922,139.1043,4.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (67.4879,-146.2068,1.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (62.9742,-150.445,1.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (40.0073333,-123.6856667,2.31);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (19.404,-155.2665,0.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (56.9969,-155.7088,2.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (60.7867,-147.3942,1.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (40.085,-119.9138,0.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8216667,-122.8441667,1.62);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.6003333,-116.7375,0.57);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (32.9778333,-116.2696667,1.44);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (51.6615,-175.2211,1.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.5693333,-112.1661667,1.16);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (2.1013,126.8601,4.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (39.8038333,-123.5698333,1.84);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (40.0321667,-122.9001667,1.91);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (43.5731667,-110.3911667,0.74);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.7468333,-122.7011667,1.53);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (32.6821667,-115.7393333,1.65);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.7491667,-122.7008333,2.22);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5793333,-118.7256667,0.89);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (62.5508,-149.7182,1.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8313332,-122.7926636,0.19);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.731,-153.113,1.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (52.1791,-171.2618,2.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.8618,-152.8867,1.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (17.829,-66.0159,2.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (39.5413333,-123.3825,1.84);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8216667,-122.7638321,0.52);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (60.3188,-142.0362,1.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (19.7466667,-155.8006667,1.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (40.7951667,-123.3893333,2.06);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8216667,-122.8245,1.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (64.6373,-147.6525,1.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (48.1698333,-122.7768333,1.87);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (18.0951,-66.2878,2.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.656,-118.7802,-0.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (19.2152,-64.7955,3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.0386,-118.6345,0.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (31.1965,-115.9305,3.36);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (49.5727,156.378,4.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (-59.7481,-25.5619,4.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.5553333,-121.0563333,2.36);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (46.435,-122.3996667,1.14);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.7783,-148.8122,1.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.2933333,-120.8636667,1.55);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (62.9433,-151.268,1.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (35.1215,-118.1906667,1.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (41.8885,-119.6007,1.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.4408333,-113.771,1.25);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.492,-118.4176,0.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (-15.5176,-17'))
);
wwv_flow_api.append_to_install_script(
 p_id=>wwv_flow_api.id(75477078542955772)
,p_script_clob=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'4.0379,4.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (34.0013333,-116.8488333,1.54);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (32.4566667,-115.5798333,1.39);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.0624,-151.4252,0.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.037,-116.4406667,0.77);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5711667,-118.842,-0.02);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8231659,-122.8259964,1.09);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (35.8808,-97.3054,3.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (-30.785,-71.4794,4.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.9099,-152.8044,1.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.6415,-118.9288333,0.65);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (44.691,-111.8255,0.93);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8061667,-122.817,1.83);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (-3.4126,68.4313,4.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.4788333,-118.8555,0.41);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (44.7113333,-111.798,2.17);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (35.809,-121.3658333,2.15);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (42.1286667,-122.0103333,2.07);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.6862,-153.3087,2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (62.6391,-151.902,1.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (18.7516,-65.2659,2.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (35.3155,-119.8786667,0.95);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (35.7818,-97.4859,2.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (46.846,-121.7526667,0.36);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (19.3198333,-155.1483333,1.57);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (35.7745,-97.4862,3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (19.3268333,-155.1545,1.88);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (34.6945,-116.2456667,2.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.1502,-151.4439,1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (51.6047,-177.5103,1.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.5003333,-116.7883333,0.62);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.5297,-119.4127,1.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (54.1926,-162.0832,2.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (64.913,-149.0428,0.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.3072,-151.8436,1.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (40.1007,-119.6758,0.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (62.2683,-151.4142,1.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.5435,-122.2903333,1.65);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5758333,-118.8565,-0.05);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (39.6803,-119.4827,0.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.5991,-153.1566,0.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.4593333,-116.5838333,0.66);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (19.2539,-64.397,3.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (-3.3621,68.3188,4.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8166656,-122.8018341,1.01);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.0216667,-117.8001667,1.03);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.0226667,-117.7993333,0.65);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.77,-115.9473333,1.58);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.4837,-152.7479,2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5735,-118.8616667,0);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (41.8464,-119.6471,1.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.8375,-152.9992,2.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (18.2329,-67.2457,2.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8143349,-122.8311691,1.05);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.8746,-151.0581,1.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (41.8567,-119.6644,1.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (60.2148,-152.5078,2.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (-33.213,-71.387,4.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5725,-118.8626667,1.53);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (61.8252,-148.9214,0.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (40.0682,-119.2897,1.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (35.7094,-3.5584,4.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (41.8488,-119.6556,1.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (41.8582,-119.6459,2.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (61.7259,-149.5794,1.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.2741667,-116.0048333,1.54);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5828333,-118.8483333,-0.08);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (46.9935,-114.2328333,1.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (18.743,-155.1916667,1.79);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (39.3983333,-111.906,2.25);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8173332,-122.7841644,1.03);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.5763,-150.0187,1.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (39.2821,-120.2463,0.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.018,-117.8,0.82);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (35.6843,-97.4202,2.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (61.4016,-146.5303,1.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (61.8079,-149.0468,0.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.4728333,-118.825,2.68);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.7683333,-115.9426667,1.45);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.7628333,-115.9471667,1.02);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.3623,-152.8359,1.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.3115,-116.2936667,0.93);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.1241,-150.6425,1.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5721667,-118.8423333,1.17);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.7845,-152.9992,1.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.7245,-116.0731,-0.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (39.8083333,-123.568,2.22);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8154984,-122.8248367,0.79);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (18.5496,-67.083,3.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (19.9543333,-155.542,1.95);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8143349,-122.796669,0.87);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (61.4938,-143.5141,1.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (61.3581,-148.868,1.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (18.8526,-66.329,2.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8136667,-122.7963333,1.49);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (18.552,-67.4525,3.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5805,-118.8566667,-0.08);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (46.4816667,-122.4228333,1.18);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.4486,-98.7954,1.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.5706,-117.9242,1.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (34.01,-116.32,0.92);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (51.5766,-175.6169,1.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.6336,-153.4374,2.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (61.745,-150.0527,1.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.6203333,-121.2305,1.34);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.2923,-97.6988,2.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (44.5238333,-110.5905,1.68);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8188333,-122.7765,0.16);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (19.3651667,-155.1933333,1.99);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.7075,-153.2584,2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (19.0058,-66.8312,2.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.6683,-118.0447,0.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.0972,-117.1205,-0.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (47.7673333,-122.1495,1.34);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (52.143,-175.7494,1.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (40.1662,-119.4089,0.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (19.4011667,-155.2651667,0.75);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (51.5479,-175.2774,1.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.5585,-89.6135,1.34);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (39.4657,-120.286,0.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.76,-122.7261667,0.59);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.7873,-152.9999,2.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (16.7212,-86.2162,3.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8451667,-122.8308333,1.37);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8463333,-122.8306667,1.28);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8445,-122.8293333,2.07);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.2859,-97.5133,2.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5746667,-118.8586667,0.37);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (47.7805,-121.8701667,1.57);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (17.9876,-66.2867,2.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.2839,-97.5219,2.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (64.2216,-147.7626,1.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.3818333,-118.5883333,2.75);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (18.329,145.8832,4.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (61.6463,-149.7432,1.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8201667,-122.8018333,0.14);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (19.304,-66.2403,3.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (18.7859,-64.7547,2.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.2579,-118.3713,0.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (34.023,-118.3758333,1.26);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.2916,-115.2281,1.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (17.9911,-67.0317,1.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.609,-116.7325,0.24);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.7815018,-122.7276688,0.58);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8223333,-122.7695,0.75);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.7643,-116.2774,0.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8356667,-122.87883,0.59);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.5209,-118.5016,0.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.8872,-151.8453,1.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (51.7426,-177.1676,1.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.7642,-116.2732,0);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (46.1963333,-122.1828333,0.25);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8115005,-122.8284988,1.03);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (17.9549,-67.0515,1.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (-17.8431,-178.4687,4.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (62.6741,-149.6841,1.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8014984,-122.831337,1.03);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.3256,-115.2474,1.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (47.7763333,-120.067,1.18);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (4.5454,-32.5863,4.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (34.7038333,-116.2363333,1.82);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.4481,-151.1374,0.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (40.3655,-123.3761667,1.83);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (57.5738,-154.6336,1.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.575,-118.8565,0.22);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (19.1585,-64.6035,3.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.7275,-153.1212,2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (34.0255,-117.2426667,1.26);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (40.1282,142.5421,4.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5383333,-121.8253333,1.03);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5381667,-121.827,0.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.1616,-150.3626,1.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.57,-118.8535,0.04);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.6546,-118.7824,1.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.793335,-122.7306671,0.87);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8408318,-122.8290024,0.45);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (44.644,-110.3925,0.49);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.7066667,-121.4088333,0.86);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (51.4407,-178.0874,1.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (35.726,-117.7096667,0.97);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.4531667,-116.5496667,0.48);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (50.3792,156.425,4.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (62.9747,-148.6081,1.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8133316,-122.8164978,0.45);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.162,-118.3658333,3.44);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (47.0146667,-121.9225,0.36);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (35.993,-117.0038,0.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (19.3816667,-155.2413333,1.49);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (65.6614,-143.7573,4.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8138351,-122.8146667,0.34);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (19.5893326,-155.4371643,1.77);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.5556,-151.0681,0.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (39.2283333,-110.4605,1.39);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (35.5431667,-119.3673333,2.37);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8214989,-122.7675018,0.75);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8161659,-122.8125,1.03);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8181648,-122.8125,0.34);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8151667,-122.8131667,1.91);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8143333,-122.8126667,2.46);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.4582,-152.588,1.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5753333,-118.8536667,0.51);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.585,-118.8523333,-0.06);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8173332,-122.8223343,0.43);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.6346667,-118.9831667,0.73);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.581,-118.8531667,-0.01);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.6966,-116.2368,-0.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (45.3695,-112.5901667,0.17);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (51.526,-176.86,2.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (35.6617,-97.3941,3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (57.229,-155.3073,2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (35.6866,-3.6285,4.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (35.6645,-97.4049,4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.838,-122.7943333,-0.17);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.7598333,-122.74,0.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (-7.3449,121.2058,4.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.815834,-122.8225021,0.56);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (41.8491,-119.6514,1.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.2329,-150.7351,1.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.7299,-116.0732,0);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (60.199,-152.8855,1.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.2367,-150.7545,1.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (23.9673,122.4167,4.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (39.2327,-120.0833,0);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (19.4156667,-155.3136667,0.74);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (65.1688,-149.079,0.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.2012,-152.1336,0.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (61.5767,-146.4977,1.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (19.292,-155.4838333,1.34);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.2866,-97.8364,2.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.5115,-116.4995,0.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.8461,-152.8912,1.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (51.184,-177.648,2.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (39.2276,-119.378,0.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (40.1697,-121.0249,1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (34.692,-116.2503333,1.44);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.3503,-153.4294,0.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.6285,-118.8685,0.35);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5725,-118.8483333,0.67);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (41.9005,-119.6104,0.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (61.6053,-142.6455,1.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (55.2661,-162.0906,3.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (19.0855007,-155.3728333,1.87);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.3563,-153.4187,0.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.5029,-148.4587,0.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5766667,-118.8491667,0.01);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (62.9164,-151.2752,1.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5776667,-118.852,-0.01);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.5607,-150.8163,2.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (60.7194,-152.8553,1.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (39.6457,-29.7594,4.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5795,-118.8545,0.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8370018,-122.7848358,0.43);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (34.0905,-116.7235,1.24);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.4672,-98.749,1.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (61.4528,-150.0541,1.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.7492,-153.0639,1.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.5192,-98.9825,2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (53.4873,-165.1463,2.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8263321,-122.856163,0.92);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (61.1347,-148.2975,1.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8269997,-122.8266678,0.56);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5723333,-118.8576667,2.25);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (19.1786671,-155.4668274,1.99);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (62.7897,-150.8051,1.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (60.1058,-152.8283,1.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5748333,-118.8463333,-0.01);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.8388,-97.8191,2.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (35.3946667,-118.6258333,1.38);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (-0.3165,129.4169,4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (61.8776,-150.5679,1.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8423347,-122.8733368,0.59);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (18.0095,-65.5958,2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.8123,-153.3518,2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (51.6785,-176.7581,1.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8095016,-122.8294983,0.56);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8243332,-122.8463364,0.68);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.5366,-150.7584,1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (51.2647,-178.4167,1.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (41.8415,-119.6545,1.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.7538333,-122.7143333,0.64);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.2294,-151.3547,1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.713,-116.7653333,1.62);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (35.6636,-97.3938,3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.564,-118.8625,0.53);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8431664,-122.8404999,0.46);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.4486667,-116.717,0.33);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (52.0487,-173.5554,1.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.6874,-152.6245,2.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (24.8834,121.7647,4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (58.0243,-153.3545,2.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (50.5094,-174.5463,2.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.2801,-97.5139,2.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.508,-118.3939,0);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (62.2963,-142.5683,0.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.493,-116.7926667,0.98);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.4377,-151.1588,1.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.2461,-117.5462,-0.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.564,-118.8546667,0.18);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.566,-118.8546667,0.26);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8351667,-122.7743333,0.18);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (44.6373333,-114.1291667,2.33);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.6281667,-118.9136667,0.54);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.4467,-98.7727,2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (39.2317,-120.4939,0.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (60.5818,-140.5874,1.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (44.7775,-111.1356667,0.11);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (17.982,-67.041,1.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (51.8045,-176.4289,1.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (39.0528333,-123.0526667,1.48);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.6526,-118.7991,0.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.4698,-98.7515,1.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (61.5774,-146.6782,1.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.2486667,-97.5573333,1.79);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (13.6657,144.9278,4.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.478,-118.8525,0.58);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.2875,-97.5202,3.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (53.8765,-166.4551,1.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.287,-97.5192,3.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (17.9867,-67.0378,1.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.7678337,-122.7463303,0.52);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.5143,-118.3966,1.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.4078333,-116.395,1.42);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (34.2925,-116.8505,0.96);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.2261667,-116.7311667,0.57);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.8869,-141.3621,2.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (35.4795,-118.4261667,1.42);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.7910004,-122.7785034,0.82);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5758333,-118.8288333,0.24);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (60.1822,-141.1267,1.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (39.634,-119.3854,0.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.2235,-116.7385,1.04);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.4858,-98.7393,1.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.1852,-115.4778,1.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.251,-122.188,1.94);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.5766,-153.5877,2.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (35.5648333,-118.3711667,1.62);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (47.7558333,-113.83,-0.58);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (35.3391667,-118.5883333,1.59);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (10.2673,122.4514,4.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (35.34,-118.5866667,1.56);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.4153,-117.0169,0.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (19.413,-155.3138333,1.63);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (34.3356667,-116.455,1.05);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (34.115,-116.9813333,1.49);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.6298333,-118.9108333,0.21);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (62.2791,-148.4507,1.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (34.2715,-117.6021667,1.16);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (48.5713333,-122.0218333,0.87);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (60.3282,-151.0652,1.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8073349,-122.8320007,0.68);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8398323,-122.8278351,0.69);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.3142,-151.8268,1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8113327,-122.8239975,1.03);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (60.9176,-149.7723,1.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (19.3258333,-155.1706667,1.64);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (19.4145,-155.3188333,1.11);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (19.4125,-155.3123333,3.69);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.63,-118.9126667,0.23);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.6271667,-118.912,0.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (19.0981,-64.8759,2.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (62.9488,-151.3827,1.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (61.1151,-151.8923,1.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8126678,-122.8201675,0.85);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (62.5651,-149.6193,1.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5713333,-118.8566667,0.53);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.572,-118.8555,0.48);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (39.515,-119.9387,0);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.536,-116.6953333,0.86);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (18.9111,-64.6699,3.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.1817,-151.385,0.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (61.3143,-152.2493,0.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.0471,-97.9219,2.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (19.2831667,-155.3875,0.83);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (19.1566,-64.7652,3.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (64.6993,-149.4505,0.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.5952,-152.4126,0.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.6126667,-120.8246667,2.32);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.7917,-152.9913,2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.383,-153.3537,1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (18.8925,-64.2068,3.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.7648333,-115.949,1.71);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (62.2269,-148.6448,1.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.58,-118.852,0.29);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.4406,-98.7803,2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.7387,-153.2988,1.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (18.7082,-64.05,3.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (65.8678,-149.6916,1.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (46.4381667,-122.2421667,0.58);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (34.0588333,-117.234,0.78);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5731667,-118.8486667,0.59);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.4908333,-118.8526667,0.35);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (39.3579,-119.94,0.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.449,-98.7668,1.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.5543,-150.6002,1.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (45.8196667,-111.5688333,0.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (19.0699997,-155.3574982,2.03);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (54.6419,-160.6798,3.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (60.879,-147.3445,1.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8168333,-122.7866667,0.29);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.8291667,-117.6553333,2.29);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5716667,-118.8541667,0.55);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8240013,-122.8276672,0.43);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.0437,-116.1625,-0.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.4891667,-116.5876667,0.48);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (41.8494,-119.6512,0.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.9241,-148.668,1.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.4346667,-118.6758333,0.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5851667,-118.8561667,-0.07);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (41.8601,-119.6536,2.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (61.2403,-150.804,1.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (34.6933333,-116.2461667,2.88);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (34.6943333,-116.2428333,4.1);',
'Insert into EARTHQUAKES (LAT,L'))
);
end;
/
begin
wwv_flow_api.append_to_install_script(
 p_id=>wwv_flow_api.id(75477078542955772)
,p_script_clob=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'NG,MAG) values (38.4932,-118.2553,0.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.825,-153.0203,2.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8088341,-122.8239975,1.02);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (-4.424,153.3533,4.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (60.3394,-153.2077,2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (64.9909,-147.3411,1.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (19.3651667,-155.2875,2.26);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (19.3683333,-155.2911667,0.48);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.5785,-151.9164,1.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.2305,-145.21,1.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (40.1866667,-121.6195,1.28);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.7563324,-122.716835,0.99);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.836834,-122.8018341,1.01);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (51.7291,-174.1525,1.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (66.4046,-135.4836,4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.5222,-153.3983,2.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (19.3986667,-155.2628333,0.42);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (15.9528,146.1728,4.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (62.2903,-148.8366,1.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8465004,-122.8306656,0.18);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8446667,-122.8305,1.39);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8461685,-122.8323364,0.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (13.3798,-90.7569,4.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.6573,-153.4211,2.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (19.0667,-64.888,2.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (18.9101,-64.912,3.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.8075,-152.9073,1.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.9568,26.2387,4.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (19.0212,-64.9203,2.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (18.9916,-64.9134,3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (18.9484,-64.9251,3.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.0871667,-116.6053333,0.92);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (19.39,-155.2795,2.12);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (19.3898333,-155.2796667,0.53);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (34.0078333,-118.4161667,1.72);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (18.9902,-64.9225,3.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (50.3861,-174.6605,2.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.8056,-146.936,1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (19.4296667,-155.6246667,1.78);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.7949,-153.1289,1.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (45.8706667,-112.0356667,0.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (18.9932,-65.016,3.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.2936667,-121.7416667,1.88);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5663333,-118.8531667,0.07);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (52.0735,-175.0034,1.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (3.6377,124.4825,4.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.0938333,-121.9706667,1.97);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (4.5678,-32.6187,4.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.4387,-146.5996,0.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (22.3373,121.1984,4.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (60.4838,-147.3453,1.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (58.6024,-137.1112,1.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (61.8313,-150.2406,1.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (4.4827,-32.6649,5.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (-18.2095,-174.3934,4.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.4678333,-118.691,0.85);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.6862,-153.3045,2.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (46.938,-112.6866667,1.28);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.4683333,-118.6906667,0.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.9636,-153.4516,2.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.2787,-145.2429,1.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.3601,-117.1681,0.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.006,-149.8179,1.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (35.9735,-120.5281667,1.33);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (35.9723333,-120.5321667,2.76);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.0794,-148.9119,1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.0148333,-117.804,0.76);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (34.0386667,-116.7133333,1.19);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.0935,-151.4723,1.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (17.9617,-66.2835,3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.7773,-153.0506,3.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.9726667,-116.7923333,0.73);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (17.9825,-66.2916,1.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (35.5686667,-118.542,0.69);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (35.6951667,-121.1245,1.03);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (17.9487,-67.058,1.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (17.9829,-66.279,1.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8066673,-122.8190002,0.63);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (18.0041,-66.2806,1.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (18.023,-66.2776,1.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (17.9787,-66.2861,2.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.2205,-150.7054,1.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (17.965,-66.2762,3.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.6283333,-118.9136667,0.81);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.824,-122.8531667,1.34);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (65.5137,-144.0462,1.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5665,-118.857,0.05);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5653333,-118.8548333,0.56);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.9121,-150.4963,1.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (34.0385,-117.2803333,1.05);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.7891655,-122.770668,0.88);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (35.6775,-97.3676,2.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8161659,-122.8293304,0.33);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.5802,-118.3499,0.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.5679,-118.3592,0.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (34.6873333,-116.2451667,1.71);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (61.7149,-150.8791,1.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (19.2346,-64.7593,2.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (65.1577,-149.1297,1.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.6815,-116.7375,1.15);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (64.9809,-147.3713,1.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8175,-122.8203333,0.43);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (64.8415,-147.836,0.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.7994995,-122.7986679,1.02);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (60.1386,-153.4511,2.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (62.038,-148.0739,1.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8043327,-122.8366699,0.43);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (32.9018333,-115.5308333,1.32);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8019981,-122.7979965,0.95);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (19.1228,-64.748,3.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (41.8798,-119.6227,0.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (35.0436667,-117.6768333,1.27);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8096657,-122.8366699,0.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8063333,-122.8161667,1.92);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5648333,-118.8531667,0.19);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.6288333,-116.6773333,0.54);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8144989,-122.8143311,0.43);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (62.6327,-137.0918,1.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.7613335,-122.7261658,0.45);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8076667,-122.8188333,0.19);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.6305,-116.6778333,0.58);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8113333,-122.8168333,2.59);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.4935,-148.6308,1.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5818333,-118.8615,0.05);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (34.6946667,-116.2368333,3.48);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (46.124,-122.1743333,0.35);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (39.2297,-120.0868,0.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.3528333,-122.21,1.15);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (35.6906,-97.4275,3.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8380013,-122.8286667,1.04);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (57.1977,-155.6482,2.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (35.2066667,-117.2811667,2.42);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8146667,-122.8209991,0.43);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (60.2265,-152.6394,1.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.1525,-151.4237,1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.840168,-122.878334,0.65);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.841835,-122.8271637,0.45);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.7293,-153.1816,2.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.7625008,-122.7353363,0.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (35.6704,-97.3934,2.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (54.0729,-165.203,1.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.7949982,-122.802002,0.88);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (19.4236667,-155.6148333,1.42);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.2087,-150.6206,1.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8216667,-122.84,1.04);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8198333,-122.8431667,0.77);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.575,-118.864,0.47);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8230019,-122.8268356,0.43);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.7231667,-116.8255,0.88);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.9896,-151.7169,1.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (44.736,-111.1473333,0.45);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.4771667,-118.819,0.76);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (46.8301667,-121.9515,2.03);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.5103,-98.7038,1.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (39.2268,-120.0881,0);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.27,-118.0176667,2.95);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8346667,-122.799,1.77);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (60.0633,-152.9767,1.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (35.6669,-97.3994,3.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (62.0949,-149.7908,2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.1512,-150.642,1.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.4743333,-118.8235,1.18);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (61.9889,-146.9568,1.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (10.2974,93.6503,4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8261681,-122.7908325,0.44);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (46.4015,-111.0253333,0.84);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.2452,-151.3755,1.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.9695,-116.7106667,0.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (61.7479,-150.7161,1.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (51.984,-173.9812,1.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.0226,-117.5159,0.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (34.1581667,-117.4413333,0.76);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.6991,-118.9997,1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.443,-98.7718,2.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (51.7765,-176.4771,1.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.7956657,-122.7624969,0.74);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8325,-122.7715,1.11);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8258324,-122.7758331,0.67);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (52.3457,-169.2324,2.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (53.1739,-166.7689,2.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (39.7422,-120.6824,0.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.4463,-98.7705,2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.5107,-118.3939,0);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (47.8093333,-122.8013333,0.58);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (62.3324,-144.9874,1.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (19.3911667,-155.2483333,2.05);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (18.2735,-67.8294,3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (19.3921667,-155.2463333,2.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.1408,-144.5787,1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (61.0586,-151.6235,1.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8255005,-122.8063354,0.55);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.57,-118.851,0.66);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (19.4331667,-155.6188333,1.81);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5706667,-118.865,0.69);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.4499,-98.7703,1.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.3617,-151.4748,0.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (64.6057,-150.2806,0.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (54.2461,-164.567,2.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (62.5419,-140.1974,1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.7469,-138.938,1.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (60.6396,-147.3842,1.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (51.3999,-174.6624,1.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.568,-118.8598333,0.09);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.4523333,-119.2625,1.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.3928,-118.2979,0.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.7852,-147.6476,1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (49.0653,154.9102,4.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.0914,-115.3815,1.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.2989,-118.7534,0.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.7661667,-117.454,0.93);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (13.4762,93.915,4.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (57.6244,-155.484,2.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.3395,-97.6723,2.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.4591,-147.8455,0.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.2318,-118.3543,0.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (62.5507,-151.2923,2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (56.0232,-150.0193,3.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (51.4592,-176.0943,3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (49.3713333,-120.4985,1.69);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.0193333,-117.8106667,0.91);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (64.982,-147.3456,1.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (40.1616667,-122.8588333,1.68);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (17.9475,-67.0521,1.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (34.2828333,-117.0258333,0.99);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (61.8268,-148.4915,1.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.3852,-118.0868,0.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (61.5363,-148.1649,1.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (-6.3907,127.8985,4.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (43.5431667,-110.496,1.23);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (-30.8496,-72.7285,3.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (-6.4907,130.0257,4.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (53.3159,-166.0613,1.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (18.1371,-67.2051,2.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (61.0025,-146.9589,1.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (46.1881667,-123.0223333,1.26);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.7999992,-122.758667,0.71);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8025017,-122.7570038,0.81);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.7983333,-122.755,2.33);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.7998352,-122.7581635,0.74);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.800499,-122.7576675,0.82);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (51.2494,-178.4122,1.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.7879982,-122.7470016,0.52);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (43.4986,-110.3779,4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (61.3662,-148.5544,1.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (51.6033,-178.1985,1.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.5097,-118.402,0.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8018341,-122.8046646,0.58);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (64.7154,-147.9031,0.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.7508333,-122.7135,1.43);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8510017,-122.8343353,0.58);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8086662,-122.814003,0.78);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8230019,-122.8044968,1.06);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8061667,-122.8028333,0.61);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8088333,-122.8121667,1.68);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5725,-118.8431667,0.53);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8153343,-122.8138351,1.12);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.754,-122.6951667,1.19);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.7983333,-122.8226667,0.84);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8128319,-122.81633,0.55);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8076668,-122.8111649,1.06);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8081667,-122.813,2.87);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (46.401,-122.2855,1.42);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.4711667,-118.6886667,1.03);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (64.3688,-149.7537,0.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5683333,-118.8538333,0.12);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8166667,-122.8191667,1.05);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8323333,-122.7703333,1.72);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (52.1407,-173.347,2.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8155,-122.7606667,0.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.6618,-118.7061,0.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (62.2048,-153.2592,1.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8165016,-122.7616653,0.93);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (34.6911667,-116.2413333,1.73);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (64.678,-149.1827,0.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (41.0118333,-74.3495,0.17);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.6283333,-116.6778333,0.56);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (-30.067,-71.047,4.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (41.8861,-119.5903,1.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.3829,-151.9903,1.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (32.8116,139.1337,4.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (19.142,-64.6794,2.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (65.4638,-144.7092,1.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5705,-118.8568333,1.18);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (35.5511667,-119.3743333,2.23);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (62.5915,-150.0551,1.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (60.3175,-152.3482,1.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (19.0368,-64.8152,2.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.9803,-148.7385,1.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (32.0565,95.0448,5.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (64.6951,-149.1887,0.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (61.6629,-149.6568,1.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (39.1977,-120.1592,0);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8166656,-122.8274994,0.68);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (-36.8804,177.3917,4.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (64.9924,-147.3419,1.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (41.8962,-119.6071,0.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.767,-117.4523333,0.85);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.4785,-116.0321,0.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (54.2339,-162.8204,2.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.5233333,-116.4711667,0.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5821667,-118.8605,0.34);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (34.2406667,-117.6355,1.49);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (-19.6102,-176.6841,4.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.352,-122.205,1.21);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (46.1996667,-122.1938333,0.72);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (51.1848,-178.0165,2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8448334,-122.8259964,1.02);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (68.1636,-136.4214,3.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.7691667,-116.1335,0.82);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8418333,-122.839,1.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.051,-97.917,1.87);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (35.9846667,-120.541,1.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (35.9846667,-120.5428333,1.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (-24.5547,-179.8468,4.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (58.5302,-155.2872,3.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.8068333,-117.1256667,0.96);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (-31.6733,-72.0838,4.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5821667,-118.8536667,0);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8433342,-122.8416672,0.58);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.356,-153.4299,0.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (34.4206667,-116.468,1.65);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.5825,-121.1776667,1.81);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (60.2892,-148.5642,1.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (-52.8719,25.9049,4.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5818333,-118.8521667,0.14);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.6416667,-117.2301667,0.49);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.8606667,-117.5136667,0.87);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (35.0566667,-118.3445,1.45);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (51.5463,-178.1157,1.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8071667,-122.7721667,0.95);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (32.893,-116.2616667,1.87);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (52.8308,-169.5965,2.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8363342,-122.7965012,0.69);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.803,-153.0384,1.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.4371,-152.764,2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (-13.6949,-69.9015,4.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (44.549,-114.507,1.63);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8030014,-122.7703323,0.77);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (18.4857,-65.0658,2.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (44.4513333,-110.945,0.74);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.5195,-122.4376667,1.48);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (51.5121,-178.1247,2.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (18.1009,-67.0873,2.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (39.2485,-122.8111667,1.23);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (-14.3255,167.3965,4.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (71.642,-2.4395,4.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (41.0107,-116.4052,3.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.1323333,-117.8478333,1.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.576,-118.8563333,-0.01);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (39.1059,-119.6468,-0.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (54.3512,-161.5092,2.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.1391667,-121.5331667,1.05);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (61.9503,-149.201,2.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (52.9964,-167.4719,2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (51.4196,-174.7672,4.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.98,-117.5867,0.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (61.7875,-150.6793,1.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (54.2517,-161.3804,2.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (53.8153,-166.9132,1.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (62.9887,-150.4898,1.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (47.6415,-114.144,-0.79);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5713333,-118.854,0.34);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8240013,-122.7878342,1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.605,-118.8191667,0.86);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8098335,-122.8161697,0.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5703333,-118.8583333,1.98);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.6298333,-118.83,0.39);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.2719,-115.4474,0.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (25.2531,124.8492,4.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (-9.8476,118.7646,4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.4827,-98.9799,2.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (-2.5008,140.1866,4.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.7675,-122.7185,0.26);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8064995,-122.7720032,1.11);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (65.1127,-148.6305,0.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.864,-117.4991667,1.21);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5595,-118.855,0.23);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (64.6452,-149.2712,1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (17.9825,-67.0463,2.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5746667,-118.8626667,0.64);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5416667,-118.8793333,0.54);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (46.141,-119.2503333,1.49);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (-8.0159,108.8105,4.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (34.6965,-116.2428333,1.74);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (40.376,-124.6073333,2.22);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (41.8526,-119.6273,1.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (44.7813333,-111.9,0.77);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5715,-118.8571667,0.13);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8183327,-122.8219986,0.56);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (47.1466667,-122.9993333,1.27);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (41.8912,-119.5915,1.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.840332,-122.8281631,1.14);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.5054,-118.3995,0.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.5133,-118.3955,2.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8201675,-122.7646637,1.11);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (60.0894,-151.1538,2.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8261681,-122.7789993,0.78);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8195,-122.7641667,1.06);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (47.6923333,-121.496,1.46);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (53.1717,-165.9807,1.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (45.9951667,-112.4518333,1.31);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5955,142.0322,4.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.0658,-117.5952,1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.025,-117.6116667,1.09);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (7.0626,126.568,4.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (61.6084,-150.6679,1.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (60.1428,-151.0714,1.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (47.7595,-113.8416667,-0.61);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (35.0565,-118.3393333,1.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.8466,-152.9805,1.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (19.235,-64.813,3.6);',
'Insert into EARTHQUAKES '))
);
wwv_flow_api.append_to_install_script(
 p_id=>wwv_flow_api.id(75477078542955772)
,p_script_clob=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'(LAT,LNG,MAG) values (64.7204,-150.9476,1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.9484,-118.1519,1.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (-8.7034,149.8736,4.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.535,-116.6955,0.42);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (45.8756,-75.5597,2.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.094,-112.6361667,0.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.7583333,-122.7236667,1.18);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.7625,-122.7231667,0.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (62.4602,-151.0078,1.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.0665,-116.1996667,1.19);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8146667,-122.8311691,0.52);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.9893333,-122.4455,1.29);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (46.0051667,-112.469,1.25);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.9966667,-117.2683333,2.05);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (57.1396,-156.6961,2.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (46.0355,-123.5548333,1.52);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (49.1175,-122.1776667,1.38);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (61.9877,-149.8691,2.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (24.018,142.1388,4.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.098,-151.4084,1.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (19.2236667,-155.5263333,2.39);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.7194,-118.8191,1.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.4723333,-121.6496667,1.31);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (60.875,-149.6413,1.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.0888333,-115.0071667,2.05);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.8826675,-121.6151657,2.06);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (-29.9206,-71.8346,4.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (18.5074,-64.9466,2.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.841,-152.9725,1.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8081665,-122.7716675,1.02);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.654,-118.7962,1.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (44.704,-111.7941667,0.92);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (-22.7249,-179.4962,4.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (39.0268333,-123.4398333,1.57);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (34.266,-119.6465,1.96);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.913,-139.2293,1.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.6527,-118.7776,0.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (44.334,-112.593,1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8216667,-122.866333,1.07);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8205,-122.8666667,0.38);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8003333,-122.7698333,1.15);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.802166,-122.7711639,1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5426667,-118.8755,1.15);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (-15.71,-71.8,4.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.8521667,-117.4871667,1.41);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.4903,-98.718,1.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.7373333,-122.5483333,1.03);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (61.5845,-150.0104,1.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (46.0165,-112.4706667,1.78);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.7266,-153.0681,2.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (51.547,-177.7311,1.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (47.9635,-113.9686667,0.33);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (54.0673,-163.5699,2.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.585,-118.8568333,-0.07);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8168333,-122.7973333,1.27);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8171654,-122.7981644,1.19);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (61.553,-150.8183,1.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (39.4171667,-122.883,1.87);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.7977,-115.9537,0.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5716667,-118.864,0.01);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.0179,-116.4417,-0.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (47.9551667,-113.9775,1.04);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.7753,-153.1698,1.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (44.7025,-110.9911667,1.49);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (-30.3875,-72.1386,4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (43.0403,145.7783,4.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.4808333,-118.8155,0.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.7641667,-116.1155,1.22);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5706667,-118.8338333,0.55);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5718333,-118.8575,0.11);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (60.7529,-151.7423,2.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (54.8705,-160.0515,2.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (7.122,92.1235,4.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (54.8731,-159.5195,3.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (18.8525,-67.4852,3.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (39.417,-119.5866,1.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (51.4019,-176.268,1.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (47.9531667,-113.9805,0.72);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (53.4214,-165.2065,1.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (66.2097,-149.727,1.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (60.2428,-153.86,0.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5756667,-118.8556667,0.03);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (35.9766667,-117.9123333,1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (54.8643,-161.3243,3.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (41.8763,-119.5867,1.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.7117,-116.0316,-0.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (-17.2944,167.4984,4.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (60.5248,-152.0621,2.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (-7.4295,128.4679,4.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.4963,-146.7372,1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.7169,-116.0314,0.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8176667,-122.8193333,1.47);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (52.0954,-173.297,2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (62.0019,-149.8417,1.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (41.8747,-119.5883,1.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (52.8628,-169.5976,2.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (17.8507,-66.1091,2.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.4224,-116.9007,0.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (51.4865,-178.5764,2.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (4.5065,-32.6079,4.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (62.3811,-149.5354,1.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (50.5309,-175.0837,2.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5756667,-118.8486667,0.01);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.0989,-151.4412,1.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8165016,-122.7838364,0.72);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.4368,-98.7872,2.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (-15.78,-71.77,4.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (61.4053,-146.7595,1.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5691667,-118.846,0.05);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8148333,-122.8213333,1.65);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8125,-122.8213333,1.31);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (-43.5841,172.803,4.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.6098333,-118.8145,0.21);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (18.7406,-65.6828,2.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (54.038,-164.0899,2.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.3788333,-116.8718333,0.81);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (60.7996,-150.4758,1.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (18.7201,-64.6457,2.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (39.5684,-120.3941,0.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (41.8411,-119.6346,1.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (60.4637,-146.5988,1.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.7334,-116.2895,0);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8116684,-122.8248367,0.56);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (51.7208,-179.099,2.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (61.0153,-152.3834,1.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (60.912,-151.6137,1.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (54.8651,-160.1648,2.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (18.1532,-67.3379,2.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (61.8084,-151.0808,1.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.8237,-151.042,1.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (41.9756,-120.1767,0.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (19.4366667,-155.6166667,1.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (46.5766667,-119.8381667,0.74);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8143333,-122.8165,0.45);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.8251667,-117.4871667,1.25);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (60.8671,-147.0919,1.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.7194,-153.4749,1.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (64.1762,-148.5687,0.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.4696667,-116.4933333,1.02);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8446667,-122.8251667,1.44);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (52.5285,-169.4551,2.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (41.7596667,-111.7001667,1.05);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8214989,-122.7659988,0.79);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.839,-122.828,1.24);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.8068333,-117.9755,1.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.9001,-115.9854,0.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.0328,-151.4344,1.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (-24.1159,-66.9377,4.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.0668,-117.9339,1.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.6312,-150.6026,0.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (52.2023,-170.2635,2.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.2977,-114.637,1.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (41.9782,-120.1661,1.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5267,-116.3351,0);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (58.4964,-156.4001,3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.51,-116.474,0.95);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8375,-122.769,1.04);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (-2.5779,134.2967,4.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.4831667,-121.6008333,1.12);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (19.5628333,-155.9073333,1.86);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.085,-149.8198,1.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.4506,-98.7617,1.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (58.8735,-153.0037,2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (57.4465,-154.1395,2.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5483333,-118.8666667,0.16);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (34.2701667,-119.6555,2.29);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (41.8853,-119.5955,3.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (52.0005,-179.912,2.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5356667,-118.8721667,0.37);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (47.3158333,-116.5501667,1.95);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (34.2678333,-119.654,2.11);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (40.4953333,-124.29,1.72);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (-21.8108,170.6755,4.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5735,-118.8401667,0.12);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (-29.9561,-71.6987,4.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (35.1576667,-118.3988333,1.38);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.6548333,-116.7151667,0.89);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (60.3862,-147.3506,2.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (44.7655,-111.1706667,0.29);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (39.1349,-119.7621,0.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.2652,-151.6922,1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8115005,-122.815834,0.88);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.3292,-116.3772,0);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (3.2761,125.2463,4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (53.7254,-163.0034,2.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (34.447,-117.941,0.84);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.6599,-118.7921,1.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (60.3928,-139.4396,1.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.568,-118.8555,0.12);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (39.3548333,-111.537,1.36);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.2908,141.875,4.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.6575,-118.7925,1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (39.3521667,-111.545,1.42);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (19.1506,-64.7792,3.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (34.6921667,-116.2403333,1.97);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (62.2155,-151.0597,1.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (39.3124,-119.9401,0.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.7789,-153.0303,2.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5721667,-118.8695,0.03);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (39.3111,-119.9727,0.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5725,-118.8646667,0.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (57.6753,-155.2303,2.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8531667,-122.7936667,1.21);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8525,-122.7961667,0.97);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8121681,-122.7986679,1.13);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8255,-122.7801667,1.76);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (62.7936,-143.3211,0.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (60.1038,-152.7073,1.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (34.6071667,-116.6245,1.38);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.7755,-153.0572,1.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (62.1299,-147.4445,1.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (-5.1413,151.1196,4.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (64.7433,-149.2321,0.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (52.8987,169.0244,4.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.7858,-149.4782,1.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.9315,-122.3061667,1.09);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8406667,-122.8283333,0.34);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (52.1732,-173.7704,1.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (61.1073,-150.7021,1.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8069992,-122.8161697,0.85);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.3348,-97.0054,2.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.4635,-121.8068333,0.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (45.6398333,-122.783,1.73);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.2398,-117.9056,1.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (61.1918,-150.6875,1.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.2639,-116.0055,0.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (19.1791667,-155.5973333,1.45);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.8061667,-117.1216667,0.63);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8131676,-122.8133316,0.45);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.4734,-98.6981,3.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.2474,-118.7213,0.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8096667,-122.785,1.35);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.2488333,-97.643,1.92);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8219986,-122.8428345,0.84);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (60.0543,-151.6322,1.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (61.5673,-152.0848,1.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (19.172,-64.4895,3.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (18.6581,-65.0419,2.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (62.1523,-147.7908,1.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.810833,-122.828331,1.01);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (-20.2393,-177.9782,4.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.6441,-153.4262,1.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (39.7493333,-122.8078333,1.62);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8149986,-122.822998,1.03);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (39.4186667,-122.8913333,1.66);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (42.4621667,-120.5791667,2.21);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (61.7855,-150.7251,2.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (61.7805,-150.6872,4.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (51.9709,-174.1888,1.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (60.0833,-150.9361,1.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.2208,-117.2832,0.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5666667,-118.848,0.33);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (19.493166,-155.4858398,1.72);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8356667,-122.7921677,0.19);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5746667,-118.8535,0.07);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.0734,-97.7357,2.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (39.5668,-119.1539,0.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.8292,-153.0104,1.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.3373,-145.309,1.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (62.8998,-150.4754,1.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.3048,-114.6611,0.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (46.4461667,-122.3695,1.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8160019,-122.7965012,0.53);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (54.3989,-161.5676,2.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (18.0704,-67.063,1.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (39.1085,-119.6477,0);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (19.0046,-66.9586,3.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (58.4061,-152.2286,2.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8154984,-122.7978363,0.33);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8135,-122.7955,1.52);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (-18.9642,-179.8748,4.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (-14.517,167.4209,4.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (39.1139,-119.6454,0.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (-18.7427,-177.8818,4.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (62.1546,-150.8796,1.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.6908,-153.1325,2.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (41.4946,22.9195,4.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (34.2093333,-117.3976667,0.63);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (53.0133,-167.3512,4.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.568,-118.8536667,0.37);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5581667,-118.853,0.21);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.2365,-117.5506,0.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (61.2242,-150.8567,1.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (44.6056667,-114.1158333,2.07);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (35.5718,-3.5728,4.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.4783333,-121.0606667,1.94);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (39.1131,-119.6435,1.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.0563333,-120.2438333,1.22);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (53.1769,-166.7916,2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (-18.1561,-178.3457,4.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.603,-147.6601,1.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.86,-118.3494,0.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (52.1215,-172.8177,3.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (-15.8461,-175.4824,4.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8398333,-122.8288333,1.13);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.7939987,-122.7639999,0.64);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (61.0387,-152.3649,1.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (54.0382,-163.3648,2.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (61.0905,-149.9228,2.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.7849,-115.9921,0.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (19.4111667,-155.3183333,0.71);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.66,-118.7875,0.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.4316,-98.7857,1.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.0065,-120.5696667,0.49);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.7231,-116.3351,-0.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.0085,-117.8006667,0.68);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (40.075,-121.5348333,1.96);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.4269,-150.055,1.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (46.197,-122.1801667,0.13);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8380013,-122.793335,0.52);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.3489,-114.6452,0.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (-31.347,-178.1514,4.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5813333,-118.8668333,-0.04);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (44.5393333,-114.5208333,1.48);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.3015,-114.6391,1.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (-4.7083,-80.7157,4.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.57,-118.8556667,0.83);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.7906685,-122.729332,1.12);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.0395,-116.4347,-0.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.6508333,-116.7185,0.97);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.9636,-153.1512,2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8223343,-122.7809982,0.88);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.2952,-117.0928,1.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8064995,-122.8176651,0.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5801667,-118.8598333,-0.13);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.3951,-117.0622,2.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5786667,-118.8525,-0.01);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (62.3158,-149.8276,1.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5763333,-121.7468333,0.74);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (40.0421,-120.1323,0.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (31.5976667,-114.4143333,2.99);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.003,-120.5676667,-0.01);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8450012,-122.8143311,0.43);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (60.3966,-139.4475,1.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (54.0119,-164.6097,2.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (60.4264,-139.4014,1.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.07,23.85,4.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (60.9484,-147.4457,1.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (61.9525,-150.4662,1.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (52.1488,-172.467,2.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (39.3166,-119.9734,0.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.9026667,-116.2678333,0.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.0139,-117.5201,0.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (61.9483,-150.4547,2.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5145,-118.4206667,1.43);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.0056667,-120.5783333,0.19);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (35.7328333,-121.1253333,1.18);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.6378333,-116.6903333,0.43);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (62.6976,-152.0379,1.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.7656667,-122.5568333,1.08);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (-62.9903,146.8934,4.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (61.6574,-149.8082,1.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.1881,-150.8036,2.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8238333,-122.8441667,-0.05);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5711667,-118.856,0.49);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (35.8926,-96.738,2.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (51.9251,-172.3401,2.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.4655,-118.7108333,1.21);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (39.1136,-119.6442,0.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (39.1108,-119.6462,0.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8286667,-122.8065033,0.56);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.4573333,-118.7115,0.64);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (19.4131667,-155.3125,2.11);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (46.9435,-119.8138333,0.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (35.3221667,-119.8723333,1.26);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.2195,-118.7127,0.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (19.3206667,-155.1618333,1.26);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.375,-119.5328333,1.98);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.4138,-115.6107,0.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8274994,-122.8544998,0.57);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (44.8838,81.2759,4.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.2218333,-118.4066667,1.13);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.715,-116.7541667,0.38);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.5191,-151.0669,1.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (18.1049,-67.1165,3.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5785,-118.8498333,-0.01);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.4513333,-113.1076667,1.34);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.524,-116.4663333,0.63);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.7688,-153.0507,1.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (65.0158,-149.0192,0.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (60.1095,-152.988,1.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (46.1955,-122.2013333,0.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (65.0157,-149.0314,0.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (-5.1116,134.2607,4.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (62.4792,-150.1998,1.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (40.5088333,-124.3051667,1.65);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (13.3479,-44.5254,4.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.2573,-151.086,1.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (4.6174,-32.3909,4.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.0195,-116.4473,0);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.3254,-153.5712,1.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (-28.581,-12.51,4.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (53.7992,-166.4911,1.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.7968333,-122.7303333,1.31);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (53.8528,-166.481,0.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (64.641,-151.4826,0.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (46.1953333,-122.1983333,0.71);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (40.4616667,-121.5133333,-0.02);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8344994,-122.8030014,1.01);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (34.04,-117.2628333,1.28);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.2656,-151.1648,0.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.4785,-98.7309,1.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.8019,-147.5887,1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.4675,-148.9689,1.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5398333,-118.8306667,0.22);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.6318333,-119.0463333,0.26);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (61.8174,-150.2457,1.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.463,-121.8421667,0.95);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.3908333,-116.3753333,0.93);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.802,-117.1268333,1.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.7631667,-115.946,1.22);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.3717,-151.4867,0.9);',
'Insert into EA'))
);
end;
/
begin
wwv_flow_api.append_to_install_script(
 p_id=>wwv_flow_api.id(75477078542955772)
,p_script_clob=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'RTHQUAKES (LAT,LNG,MAG) values (38.5048,-118.5774,-0.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.6949,-152.8651,1.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.7096667,-121.344,1.73);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.347,-114.6369,1.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (39.0566,-119.6138,0.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8171667,-122.7695,0.19);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (60.6713,-143.2542,1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5741667,-118.8485,0.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (34.0701667,-117.2731667,1.33);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5801667,-118.8478333,0.45);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (46.1995,-122.188,0.85);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.8895,-152.1748,1.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (46.1975,-122.1795,0.66);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (60.6289,-147.6453,1.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8208333,-122.8425,1.26);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.829834,-122.8550034,0.51);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8123333,-122.8178333,1.86);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.044,-118.4681667,1.38);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5726667,-118.8505,1.22);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.2261667,-116.75,2.32);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.831665,-122.8034973,0.49);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (61.0545,-152.4068,1.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.7801,-153.1187,1.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (64.678,-149.1602,0.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.5241,-98.6109,2.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (61.1298,-147.2126,1.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.2872,-149.0036,1.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.5261667,-116.732,0.76);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (46.1943333,-122.2315,0.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (-3.0947,129.4852,4.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8425,-122.8421667,0.45);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5876667,-118.849,0.17);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (60.7958,-149.8053,1.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.7816,-153.7004,1.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (60.1227,-141.2673,1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (55.6291,-158.9586,2.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.4623333,-116.4146667,0.67);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (51.4266,179.4615,2.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5748333,-118.852,0.66);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5693333,-118.852,0.63);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.3574,-153.732,2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (51.586,-175.8364,1.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8243332,-122.8095016,0.56);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.0872,74.1415,4.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (61.8191,-148.5173,1.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (4.6546,-32.653,4.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (40.5041667,-124.3078333,2.86);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (-21.513,-68.37,4.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (4.5653,-32.7198,4.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (-2.8018,128.1513,4.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.8604,-152.849,1.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (4.4473,-32.5085,4.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (-56.1587,-122.9544,4.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (61.2958,-152.4236,1.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (58.4919,-154.2676,2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5745,-118.8548333,0.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.1943,-117.3196,0.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (55.5992,-158.1116,2.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.579,-118.8488333,0.04);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (44.8185,-110.6955,1.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8133316,-122.7843323,1.08);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (46.1601667,-122.3256667,0);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (60.0414,-152.822,1.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (62.7832,-150.5859,1.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5535,-113.0545,1.11);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5693333,-118.856,0.26);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (8.5556,-83.6825,4.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5775,-118.8595,-0.04);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (51.4711,-179.8418,3.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.5125,-148.0611,1.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8066673,-122.81633,0.88);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (-21.2564,-179.0149,4.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (-7.4385,128.1651,5.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.9382,-118.7391,1.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5743333,-118.8553333,1.04);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (61.8058,-148.506,1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (60.1335,-140.904,1.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.985,-112.5111667,1.99);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.6816667,-116.773,0.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (46.4079,140.8183,4.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.7672,-115.9742,0);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5776667,-118.8506667,0.75);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (39.613,-119.4295,0.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8195,-122.7648333,1.35);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.0331667,-112.2535,2.28);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.578,-118.8528333,0.47);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8408318,-122.8300018,0.45);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.5231667,-116.7341667,0.28);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (64.9899,-152.1604,0.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (60.0942,-152.8892,1.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (48.9438,154.8815,4.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (46.4458333,-122.3768333,0.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.576,-118.8506667,0.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (34.1505,-116.9215,1.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.6263333,-118.8755,0.21);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5613333,-118.853,0.68);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.1487,-152.3348,0.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (-20.3165,-69.2314,4.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8051682,-122.774498,0.55);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (35.1288333,-118.183,1.51);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (60.872,-147.0067,1.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.5363333,-116.6963333,1.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.7812,-153.1111,1.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5745,-118.8503333,0.75);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.7625,-153.0997,1.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (16.6412,-61.4613,4.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.4113333,-121.7646667,1.57);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.2576667,-115.991,1.93);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.6532,-153.3228,2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5701667,-118.8533333,1.74);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.7538,-153.3759,2.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (64.6626,-149.1868,0.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5288333,-118.8793333,0.27);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.9346,-118.7415,1.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (-31.7434,-179.7933,4.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.1755,-83.3078333,2.33);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (61.3352,-146.721,1.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.4181,-119.3379,1.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.189,-83.3103333,2.48);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.1743,-118.2364,0.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.7623,-153.2215,2.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.0511,-118.5839,0.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.6303333,-116.7256667,0.19);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (34.6106667,-116.6261667,1.72);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (35.6615,-97.3927,2.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (34.2525,-117.5248333,0.69);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8300018,-122.8566666,0.66);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.6989,-153.2413,1.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (18.2388,-65.3175,2.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8085,-122.794,1.34);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.4873,-117.2478,1.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8218346,-122.7815018,0.88);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.6583333,-118.94,0.83);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (65.0128,-148.4441,0.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (34.611,-116.632,2.01);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.154,-115.7956,0.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5806667,-118.851,-0.05);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.4308,-119.327,1.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (51.6517,-174.8398,1.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.3713333,-116.3953333,1.07);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (31.2258,-103.3279,3.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.9949,-115.2134,1.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (61.8613,-148.5183,0.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (46.8405,-121.7585,0.48);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.6578,-116.2735,0.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.4356,-119.3303,1.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.9907,-115.2315,1.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (61.4263,-147.4465,1.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.3675,-152.7541,1.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (34.6105,-116.6306667,1.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.6403,-152.8094,1.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.576,-118.8511667,0.19);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.8264,-152.736,1.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (-5.8873,148.2932,4.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (-5.6582,130.9502,4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (60.0332,-153.0322,2.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (34.297,-116.8665,1.48);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (-18.9532,-70.2384,4.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8025017,-122.7713318,0.52);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8076667,-122.8246667,0.91);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.4445,-147.1262,1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (34.6063333,-116.6268333,1.34);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (34.6983333,-116.246,1.71);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.7605,-115.765,0.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (34.6225,-116.6475,1.35);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.473,-118.41,0.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (34.6071667,-116.6238333,1.62);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.4717,-98.7486,2.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8336678,-122.8284988,0.43);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8386667,-122.8293333,1.72);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (34.6141667,-116.6296667,1.38);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (34.6081667,-116.6256667,1.18);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.1481667,-117.592,2.36);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (51.5335,-177.9047,2.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (34.6098333,-116.6288333,4.31);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (61.9977,-149.1163,1.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (51.5003,-177.5627,1.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (40.659,-124.1366667,1.78);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (35.7511667,-84.315,1.34);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8348351,-122.7991638,1.01);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (62.9051,-150.0832,1.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5841667,-118.8775,1.83);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5788333,-118.8561667,0.11);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.7435,-152.6256,1.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (-30.7255,-71.6378,4.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.2741,-151.1886,1.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5713333,-118.8541667,0.64);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (54.7332,-162.7788,2.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5711667,-118.8571667,2.16);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (64.8494,-152.0716,1.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.4997,-98.7113,2.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.3929,-119.3236,1.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (39.1401,-119.751,0.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5388333,-118.8943333,0.28);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.0553333,-97.891,1.83);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.0565,-97.8925,1.97);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.4747,-98.7535,2.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (46.8594,146.6103,4.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8126678,-122.817337,1.12);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.2671,-97.5327,2.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (60.1256,-141.3648,1.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.353,-153.3979,0.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.807,-152.915,1.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (-6.7742,102.222,4.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (60.0794,-139.4375,2.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (64.8118,-149.1653,0.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5705,-118.8618333,0.51);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.6418333,-118.9101667,0.54);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.4636,-98.6816,2.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.3144,-136.49,1.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (68.6652,-147.6116,2.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8274994,-122.8324966,0.89);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.4314,-151.414,0.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.9916,-148.7869,1.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (60.1245,-141.3325,1.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.8456,-152.8414,2.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (62.0312,-145.1254,1.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (31.8895,-116.2185,3.34);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (-15.7296,-71.8033,5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (62.4312,-149.7817,1.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.7887,-117.7313,1.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (64.1898,-147.5662,2.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (61.4924,-149.8736,2.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (60.219,-141.1477,1.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (41.8978,-119.595,2.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (60.2485,-141.1375,1.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.7069,-153.2823,1.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.2542,-97.6945,2.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (-3.0432,129.4154,5.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (62.4181,-151.5182,1.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (62.3113,-150.4919,1.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.7836,-153.2789,1.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8233333,-122.843,0.31);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (61.0793,-148.2469,1.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (19.2106667,-155.5781708,2.23);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (31.802,70.0646,4.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.0238333,-117.8131667,0.29);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8199997,-122.7965012,1.17);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (-5.1783,154.0053,4.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (66.0083,-150.7859,0.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.2028333,-118.4035,2.12);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (-15.8825,-71.6847,4.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.0981,-150.9575,1.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (41.0601667,-125.9448333,2.81);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (18.0254,-65.3925,3.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.6383333,-118.9086667,0.32);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.4554,-118.3816,0.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (5.9268,126.5425,4.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (34.2166667,-117.08,1.47);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.6408333,-118.9096667,0.69);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (34.183,-117.4091667,1.14);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5716667,-118.48,1.62);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.6592,-153.2608,4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (-6.1578,148.6211,4.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.838501,-122.8296661,0.87);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.6398333,-118.9101667,0.77);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.6401667,-118.9173333,0.06);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (46.3245,-122.2311667,0.56);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (46.1721667,-119.2545,1.39);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (61.4721,-151.8891,1.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (46.192,-123.0453333,1.81);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.435,-113.7988333,1.23);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (5.4405,127.4856,4.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (14.3323,-92.5014,4.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.0483,-116.2964,0.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.0319,-152.264,1.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.4074,-151.3294,0.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.44,-151.3574,1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5711667,-118.8573333,1.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5688333,-118.8586667,1.76);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (47.6146667,-123.351,2.11);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (60.24,-152.7096,1.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (48.088,-121.9315,1.81);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (18.994833,-155.4508362,2.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (64.4783,-147.6439,1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (41.0311,71.671,4.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (18.8887,-64.3202,2.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (19.3385,-155.3195,1.14);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (51.7457,178.7606,3.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (61.3811,-149.756,1.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5705,-118.8551667,0.67);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (18.9745,-155.304,2.12);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.8966667,-121.6253333,1.46);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (66.3554,-147.7369,1.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (-45.7308,-77.6806,4.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (64.5623,-149.2175,1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.6433,-153.4056,2.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5671667,-118.8585,1.07);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5778333,-118.8611667,0.53);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (39.1095,-119.6358,0.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (35.5464,-97.3117,2.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.4772,-98.7347,2.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.4775,-98.7433,3.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.7491,-153.1292,1.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (32.8253333,-117.0361667,0.76);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5671667,-118.8463333,0.66);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.4905,-116.4828333,0.59);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (19.3836667,-155.2805,2.52);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (19.3816667,-155.281,2.74);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.8681667,-117.5171667,1.11);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (19.3823333,-155.2796667,2.43);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (60.5446,-147.6691,1.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5766667,-118.8581667,0.67);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.8228333,-117.4836667,1.82);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.8249,-146.8739,1.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.843,-122.8245,0.54);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.5782,-153.0518,2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (46.0056667,-112.4696667,1.31);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (41.2363333,-112.6695,0.97);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.7503333,-122.7385,0.06);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (61.5397,-150.9555,2.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (41.2321667,-112.6621667,0.99);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (41.2388333,-112.6495,0.94);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5763333,-118.852,0.75);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.7948341,-122.7666702,0.53);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5796667,-118.8565,0.76);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5746667,-113.0433333,0.78);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (54.2085,-163.2643,2.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (39.4298,-119.7922,0.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8424988,-122.8251648,1.19);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (61.0594,-142.8933,1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (-4.0591,152.8345,4.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.474,-98.7523,2.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (49.4495,-120.5161667,2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8426666,-122.8264999,0.57);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (58.9745,-152.0637,1.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.5762,-150.8257,1.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (-0.0076,97.6586,4.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (46.9118333,-119.1173333,1.39);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5803333,-118.8576667,0.27);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (34.3033333,-118.489,0.96);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (34.2995,-118.482,2.42);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (34.2935,-118.4875,1.84);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5723333,-118.856,0.94);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.5712,-153.4758,2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (60.6993,-146.7016,2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.7362,-153.0751,2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (66.8991,-148.5728,1.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.3044,-114.6362,1.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (12.4132,125.4312,4.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.4752,-98.7589,2.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (32.0788,45.8397,4.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8035,-122.7926667,1.32);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.871,-121.6021667,2.03);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (-59.873,-28.6384,4.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (31.5726,49.9349,4.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.7243,-153.096,1.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (35.5406667,-120.7931667,1.27);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.738,-153.1061,2.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8431664,-122.8249969,0.99);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (60.6606,-143.0969,1.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.4796667,-118.8476667,0.88);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.4528,-98.7673,2.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (53.5242,-166.806,1.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.8561667,-118.2825,1.51);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (41.0125,-74.3501667,0.61);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (-22.9333,-66.3533,4.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8268318,-122.8536682,0.91);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (58.9377,-153.0757,1.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (19.1741657,-155.4629974,2.02);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (60.2533,-153.6767,1.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.1672,-118.2257,0.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.5642,-151.0199,1.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8358345,-122.7963333,0.19);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (35.7461,-97.1586,2.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (60.5039,-152.0679,1.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (68.0628,-136.346,3.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (62.2819,-148.1869,1.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (41.8848,-119.5854,1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (35.9998333,-120.8828333,1.47);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.5515,-151.0593,1.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (-7.0937,154.8282,4.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.7797,-153.0056,2.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (51.602,-178.2026,2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.7488,-153.1795,1.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (-45.725,-77.5256,4.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (-11.1878,161.6595,4.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8248333,-122.8528333,1.46);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.5037,-118.1921,0.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (34.171,-116.174,1.37);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (34.167,-116.1735,2.39);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (61.9892,-147.3915,1.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (12.5498,-87.7475,4.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (11.1425,140.2246,4.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (51.7732,-174.9483,2.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (53.9856,-164.4142,2.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.6748333,-116.7801667,0.77);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.659,-116.7683333,0.45);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.9665,-117.7108333,0.91);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (41.9038,-119.6083,1.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.6641667,-116.6986667,0.67);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5768333,-118.8553333,-0.09);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.4844,-98.7435,1.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (11.1909,140.3376,4.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.0188333,-117.7691667,1.49);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.2484,-150.7245,1.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.1612,-118.2403,0.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5748333,-118.8621667,0.13);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (19.4063339,-155.2825012,1.86);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.1618,-118.23,1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.9701667,-112.3495,1.67);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.6855,-153.2088,1.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.7651,-153.043,1.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (-4.131,152.9181,4.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.832,-122.772,1.46);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.1676,-118.2456,0.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (40.8321667,-111.5853333,0.76);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.1632,-118.2304,0.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (34.3403333,-116.8793333,1.02);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5725,-118.8475,0.54);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (65.4544,-133.9035,4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.5733333,-116.719,0.81);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (40.5736667,-125.1766667,2.62);',
'Insert int'))
);
wwv_flow_api.append_to_install_script(
 p_id=>wwv_flow_api.id(75477078542955772)
,p_script_clob=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'o EARTHQUAKES (LAT,LNG,MAG) values (62.9056,-151.2271,1.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (64.5935,-147.7057,0.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.6306,-116.9349,0);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (61.2366,-150.5779,1.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.767,-153.5661,2.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5731667,-118.8578333,0.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5698333,-118.8538333,0.08);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5693333,-118.8556667,0.06);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (65.0165,-148.8374,0.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.7809,-153.0809,1.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.2845,-151.1992,1.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.8189,-150.5473,1.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.1849,-118.2425,0.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.1647,-118.2394,1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (61.5723,-149.9676,1.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.3737,-117.1301,0.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.566,-118.8561667,0.99);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.7434,-153.1277,1.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (60.6852,-143.2586,1.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.5322,-98.6839,3.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.2438,142.2397,5.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.9276667,-116.7331667,1.15);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (34.5728333,-116.5433333,1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (61.5264,-151.2776,2.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.7295,-153.115,1.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (11.1919,139.9634,4.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8146667,-122.8201667,1.49);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (60.6507,-146.6647,1.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5738333,-118.8536667,-0.02);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (11.1543,140.0964,4.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (35.0868333,-116.641,2.09);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (60.5563,-158.7124,2.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8126678,-122.8266678,0.56);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (19.4104996,-155.2866669,2.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (-22.513,-68.952,4.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5385,-118.834,0.19);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (65.0611,-149.1264,0.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (39.7051,-120.0956,0.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8076667,-122.8141667,0.22);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.2694,-118.413,1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (34.2988333,-116.8613333,1.64);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8120003,-122.8199997,0.56);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (60.1885,-152.7556,1.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.498,-116.7885,0.27);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (60.5074,-152.4566,1.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (35.8565,-90.0371667,1.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (34.1748333,-117.4231667,2.46);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.5131,-98.7097,1.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8498344,-122.8215027,0.43);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.1386667,-118.052,1.07);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (51.7185,-175.2988,2.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (54.1192,158.9669,4.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (35.1761667,-119.1103333,1.34);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.2513,-151.8226,1.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.5273,-98.6901,2.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (60.0824,-152.1234,1.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.5275,-98.6891,1.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (54.6016,-163.4676,2.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.828,-115.967,-0.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.4816,70.863,5.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5781667,-118.8551667,0.14);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.7236,-116.2239,-0.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5645,-118.8531667,0.53);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (18.0112,-65.3886,2.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.4758333,-118.8236667,1.15);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (58.9537,-153.8788,2.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.3563,-117.1279,0.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.6346667,-118.831,0.87);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.365,-117.1406,0.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (-5.2376,152.7746,4.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (60.7459,-151.3573,2.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.4673333,-118.8241667,0.91);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8221667,-122.8428333,1.26);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.472,-118.8245,2.23);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.7233333,-122.5376667,1.68);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.795,-118.7608,0.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.3476,-117.1314,0.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8378334,-122.8065033,1.16);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8361667,-122.8061667,1.49);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8378333,-122.8058333,1.54);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.8598,-152.8986,1.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.7859993,-122.7358322,0.74);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.3666,-117.1279,-0.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5668333,-118.8665,0.69);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (34.3301667,-116.688,1.18);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (34.5738333,-116.542,1.49);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.2878333,-116.3141667,1.05);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (52.3712,-169.9856,3.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.82,-152.9173,1.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (55.9073,-159.8013,1.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.836,-122.7698333,0.26);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (35.6793,-97.4119,2.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (52.491,-169.7456,4.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (52.5086,-169.5136,2.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (19.3588333,-155.207,0.74);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (56.7763,-153.1907,3.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (60.0768,-152.3708,1.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8231667,-122.8435,1.48);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (60.4318,-142.8157,1.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (2.2173,128.8786,4.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5738333,-118.8588333,0.49);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.8515,-153.5391,1.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.2266667,-118.4075,1.11);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.664,-118.7767,0.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.016,-150.6218,1.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.4063333,-116.3681667,0.93);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8306656,-122.7570038,0.51);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.567,-118.8553333,0.49);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (40.4988333,-124.2993333,2.01);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (60.0103,-140.6411,1.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8246651,-122.8464966,0.19);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.0329,-150.9604,1.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (39.2279,-120.0813,-0.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.8446667,-116.7885,1.23);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.6797,-118.5636,1.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (46.258,-122.5898333,1.27);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (40.5035,-124.3013333,1.91);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (40.5005,-124.3,2.37);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (39.2289,-120.4794,0.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (62.4617,-153.2495,1.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (46.4163333,-119.2728333,0.17);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (51.7357,-176.2717,1.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.4751,-118.6668,0.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.473,-116.5713333,0.81);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5808333,-118.8528333,-0.07);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.672,-147.4493,1.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (18.385,-64.5036,2.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5901667,-118.8583333,-0.11);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.58,-118.8515,0.03);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5713333,-118.8475,-0.02);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.3641667,-122.2258333,2.09);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.9408,-117.1105,1.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8618333,-122.8056667,1.13);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.2417,-118.6319,0.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5708333,-118.8496667,0.88);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.2558333,-115.994,1.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (34.028,-117.1796667,1.05);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.2673333,-116.7733333,0.54);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.2434,-118.628,1.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (60.032,-152.8704,2.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (44.6068333,-111.0991667,0.38);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (60.7475,-140.4547,1.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.5116667,-116.4588333,0.51);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (47.4835,-122.3621667,1.35);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.0239,-116.4424,-0.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (41.907,-119.6006,2.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.1613,-118.2274,1.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.2954,-149.0426,0.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (19.3588333,-155.2063333,3.03);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.4103,-118.293,0.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (61.7428,-148.2186,1.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (60.2342,-150.9604,1.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (61.8036,-148.5321,0.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5741667,-118.858,0.59);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.0039,-149.411,1.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (61.961,-149.9285,1.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.5349,-153.9775,1.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.3859,-116.9935,0.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (53.6854,-166.3864,2.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.0051,-117.5004,0.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8385,-119.9825,1.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (60.0275,-152.8701,1.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (45.3951,-70.763,1.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5698333,-118.9353333,0.48);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (62.9007,-151.1369,1.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.2054,-117.4003,0.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8103333,-122.8093338,0.63);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (39.276,-123.3155,1.91);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (64.8168,-148.6574,0.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8154984,-122.8191681,0.65);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (64.9709,-148.9256,0.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (46.8471667,-121.7551667,1.15);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (46.8606667,-121.7678333,1.36);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.4606,-118.3695,0.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8171667,-122.821,0.17);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.9453,-152.7992,1.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (62.0526,-141.024,1.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.9728,-139.279,2.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (34.3165,-117.011,0.91);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (39.2427,143.6016,4.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.8175,-152.6029,1.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (60.2732,-152.6644,1.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5765,-118.849,0);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.529,-98.6849,3.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.7636681,-122.7313309,0.78);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (64.5991,-149.5798,0.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (60.0039,-152.779,1.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.576,-118.8503333,0.13);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (53.8685,-166.8739,1.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (34.6096667,-116.6241667,1.71);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (62.1212,-147.7633,1.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (19.3176667,-155.935,1.95);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (39.1474,-119.7064,0.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.9443333,-116.846,0.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5776667,-118.8506667,0.04);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (60.0584,-139.397,1.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (53.8609,-166.8844,1.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (60.2603,-152.2719,1.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.788,-122.8411667,-0.06);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.406,-97.543,3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (19.395,-155.0055,2.54);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (60.082,-139.4303,3.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.9763333,-116.6798333,1.09);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (41.8638,-119.6299,0.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.7986679,-122.7838364,0.99);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (47.2845,-122.2898333,1.37);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (47.3947,-70.5033,2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.9003333,-117.695,0.53);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (19.430666,-155.2126617,2.21);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.0006667,-120.5626667,1.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.6553,-153.2306,2.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5851667,-118.866,0.29);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.097,-98.0308333,1.77);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (-3.7709,155.3117,4.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (61.4154,-146.8527,1.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.7913322,-122.7298355,0.88);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.4763333,-116.4813333,0.89);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5718333,-118.8551667,0.95);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5861667,-118.8646667,0.51);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (6.9364,92.4103,4.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.7191,-153.1416,2.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (7.5997,-36.7093,4.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.6338333,-116.6943333,1.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5776667,-118.8581667,1.05);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.244,-118.6168,0.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (62.9509,-150.4974,2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (60.5319,-151.5298,2.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (34.0131667,-117.215,0.82);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.3227,-118.1409,0.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5726667,-118.8601667,0.53);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.2176667,-118.4055,1.62);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (62.3813,-151.1324,1.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.1163,-116.7388,0.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.8272,-149.1301,1.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (51.878,-174.4414,1.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (34.3025,-116.8645,1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8136673,-122.7916641,1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (39.4015,-120.1716,1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (19.1145,-66.4653,2.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.7225,-122.5391667,1.59);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.635,-118.9291667,0.11);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8231659,-122.8284988,0.69);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (60.7768,-152.1691,1.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (60.637,-150.7694,1.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.869,-118.0808,0.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (61.4382,-147.3938,1.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (61.3051,-146.8092,1.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.8701667,-121.5966667,1.26);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5751667,-118.852,1.08);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5856667,-118.8593333,0.71);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.8319,-152.9508,1.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.2358333,-122.1795,1.65);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (19.2015,-155.4023333,2.68);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5778333,-118.8608333,1.02);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (60.2912,-153.1065,1.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (61.7509,-149.4278,1.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5851667,-118.8608333,0.11);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (66.9091,-149.7532,1.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (51.9054,-169.6714,4.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8156662,-122.762001,1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.2803,-114.6454,1.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5886667,-118.8598333,-0.09);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (64.3198,-150.8865,0.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (34.1218333,-118.4538333,1.36);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5811667,-118.8581667,0.08);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.8685,-121.5986667,1.68);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (-30.5898,-71.5732,4.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (-15.6306,-177.5343,4.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.869,-121.5988333,1.95);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.7026,-153.0994,1.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.2298333,-118.4071667,1.57);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.7453333,-122.573,1.54);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.4159,-147.513,1.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8206667,-122.8416667,1.11);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.4529,-98.7619,1.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (6.9145,126.7269,4.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.4936667,-116.5533333,0.44);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (4.5327,-32.671,5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (60.7903,-151.9419,1.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (61.7529,-151.1819,1.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (4.5691,-32.6862,4.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (18.5795,-64.9322,3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.5405,-116.6916667,0.54);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (-22.0141,-176.3068,4.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (4.5302,-32.7061,4.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.2945,-151.2017,1.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (4.1172,-32.6172,4.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.2111667,-89.4126667,1.31);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (39.2205,-120.0827,-0.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8371658,-122.8286667,0.46);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (35.7192,-97.1698,3.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.3083,-118.3936,0.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.5209,-150.8021,1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (39.23,-120.0971,0);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.8283333,-119.2843333,2.28);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (60.2272,-137.499,1.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.4562,-98.7677,1.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (39.3294,-120.1446,0.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8035011,-122.7728348,0.88);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.6564,-118.7905,0.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.7869,-153.0213,2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.6806,-119.5185,1.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (4.686,-32.6366,5.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (11.2531,126.0768,4.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.5035,-98.7644,1.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (60.6128,-152.48,1.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.4858333,-116.4933333,0.26);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (47.3861667,-113.2026667,0.95);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (18.1432,-65.122,3.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.2195,-118.4063,0.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (8.0613,-38.4475,4.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (-31.332,-178.3309,4.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (60.477,-151.2445,1.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8093338,-122.7876663,0.77);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (2.2012,128.8973,4.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (64.7083,-148.5543,0.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8225,-122.8425,0.35);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.579,-118.8561667,-0.02);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8218346,-122.8421631,0.89);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (56.5187,-158.3757,2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (13.798,-88.843,5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (61.4746,-146.6198,1.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (41.8976,-119.5891,1.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8101654,-122.7458344,0.82);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.7834,-153.1746,1.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (60.785,-151.1553,1.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.6645,-118.7815,0.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.7517,-153.3378,1.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8278333,-122.806,2.04);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (35.543,-120.791,3.28);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.1697,-118.2461,0.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.3731,-115.742,1.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (19.1128,-66.4745,2.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (46.1936667,-122.1956667,0.13);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8088341,-122.8014984,0.55);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (18.044,-65.4141,2.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (61.1933,-149.533,1.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (46.423,-122.3876667,0.88);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (60.2127,-141.0186,0.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.7225,-122.5421667,2.01);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (19.1154,-66.4308,2.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (19.0741,-66.4428,2.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.5417,-152.4825,1.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.7314,-116.3118,0.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (19.1,-66.4343,2.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (61.4445,-150.3456,1.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (34.0475,-117.5328333,1.11);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (61.4888,-147.4115,1.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.9214,-152.2702,1.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (19.3635,-155.477,2.37);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.1608,-118.2395,1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.2151,-118.3734,0.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.4954,-148.0888,1.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (39.2218,-120.0812,0.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (39.514,-123.3348333,2.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5753333,-118.8565,1.34);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.5586,-118.4434,0.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8273315,-122.8529968,0.68);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.2514,-117.4695,1.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (51.6661,-177.371,2.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (18.0077,-64.8919,3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5451667,-118.8791667,0.13);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (39.4113,-120.1235,0.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8193321,-122.7630005,0.87);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.7495,-152.0144,2.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (64.974,-147.3558,1.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (14.1933,-92.9971,4.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (61.8925,-151.0646,1.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.6438333,-118.9455,0.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (62.3371,-149.1346,1.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (18.0762,-65.4209,2.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (64.6099,-147.6771,0.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (34.1975,-117.411,1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (47.5498333,-122.7803333,1.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.9565,-116.6211667,0.87);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (40.5081667,-124.3038333,1.65);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (60.4529,-148.6983,1.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (-4.2396,102.2127,4.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.1988,-150.2155,1.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.7626667,-122.7331667,0.71);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8209991,-122.8161697,0.79);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.7021667,-116.7485,1.65);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (52.8933,-166.7705,2.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (-3.5849,141.3883,5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.4674,-98.7839,1.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.4795,-116.4873333,0.55);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.699,-148.3592,1.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (-9.2454,123.9952,4.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (19.4048333,-155.278,0.68);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (60.0567,-139.4185,1.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (60.0609,-139.3974,1.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (45.635,-122.7596667,1.38);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (62.2516,-149.2059,1.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.473,-121.8011667,0.83);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.4518333,-118.6486667,1.49);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.4488,-98.7027,2.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (64.6808,-149.4551,0.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5775,-118.8576667,0);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5818333,-118.8498333,-0.04);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8173332,-122.8218307,0.56);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.3776667,-116.7055,0.67);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.1544,-115.078,0.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (34.3763333,-119.5561667,1.68);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8411674,-122.8274994,0.84);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.4363,-98.6873,1.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (51.3427,-177.7128,2.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (60.4031,-147.7002,1.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5728333,-118.8498333,0.83);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (61.1331,-152.2964,0.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (26.4525,126.2022,4.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.1169,-118.4001,0.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5778333,-118.8513333,0.18);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (64.9884,-147.'))
);
end;
/
begin
wwv_flow_api.append_to_install_script(
 p_id=>wwv_flow_api.id(75477078542955772)
,p_script_clob=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'5098,0.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.4459,-98.7755,2.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5765,-118.8543333,-0.06);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (35.6346,140.243,4.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (-45.3383,-77.7826,4.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.573,-118.8506667,0.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (47.6885,-122.6785,1.74);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.6943,-153.1587,1.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.556,-118.8523333,0.69);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.2727,-118.374,0.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (51.9322,-175.5273,3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8021667,-122.7703333,1.29);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (41.0133333,-74.3473333,1.14);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.1647,-118.2438,1.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.0246,-118.9107,0.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.5077,-118.6119,0.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (44.827,-117.1955,2.52);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (62.185,-150.6967,1.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.854,-115.5336,1.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (-24.3276,-115.7459,4.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.8923,-118.139,1.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.5098333,-116.5618333,0.99);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.4662,-153.0664,1.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8416672,-122.8301697,0.18);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.1947,-118.2784,0.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.2318333,-117.5153333,2.66);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.2341667,-117.517,3.23);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.7668333,-121.3601667,1.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (-19.1878,-177.4746,4.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (44.727,-111.1241667,0.86);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (-43.5183,169.9388,4.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.4778333,-116.4788333,0.99);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.4771667,-116.4838333,1.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.4715,-116.4971667,1.29);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.4745,-116.4825,0.73);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.9941667,-112.2621667,2.14);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (19.4151669,-155.2805023,1.82);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.554,-118.826,0.66);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (-17.2281,167.2826,4.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (39.5481667,-120.341,1.69);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (35.2986667,-117.4335,1.13);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.0083333,-98.0301667,1.87);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5763333,-118.8565,0.16);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5311667,-118.8766667,2.26);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (39.9532,-120.72,0.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (51.5691,-178.095,2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (64.3162,-149.9297,1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.221,-150.7477,1.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.7095,-116.1687,-0.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.3058,-153.6383,2.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.9881667,-122.2696667,0.99);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (44.7395,-111.2428333,0.67);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8218333,-122.7793333,0.43);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.4492,-98.7661,1.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (61.9632,-152.1372,1.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (53.5738,-166.9539,1.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (34.2971667,-118.4935,1.01);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (60.2172,-152.7159,1.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (64.3082,-149.8756,1.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.7491667,-122.7045,0.79);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (62.0416,-149.5553,1.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (41.8839,-119.642,0.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (35.6866667,-118.3908333,0.58);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (30.0849,131.0844,4.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (64.9903,-147.3138,1.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (34.6973333,-116.2463333,1.96);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (34.0993333,-118.3943333,1.04);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (46.1958333,-122.1905,0.25);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (32.1186,137.8228,4.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.7882,-97.6029,2.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (58.9197,-152.1319,1.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (-8.0761,113.8341,4.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5756667,-118.8568333,0.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8003349,-122.7683334,0.92);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (-28.6642,-68.877,4.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.8062,-153.0331,2.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.777,-98.1074,2.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (-18.736,-177.7287,4.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (46.4486667,-122.2411667,0.99);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (62.1711,-149.3217,2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (61.2888,-147.6672,1.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.6608,-118.7907,1.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.7031,-153.2813,2.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (58.9119,-154.907,2.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.8378,-152.8984,2.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.8635,-117.503,1.53);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (12.595,-87.6298,4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.578,-118.8488333,0.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.578,-118.8568333,0.08);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (7.7394,136.8231,4.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.7868333,-122.7783333,0.29);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.7095,-116.7538333,1.04);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5723333,-118.8533333,2.05);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (19.3636667,-155.2961667,2.15);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.1525,-116.1322,-0.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (19.134,-66.4347,2.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (61.76,-141.0696,1.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.521,-151.0619,1.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.9371667,-111.4635,2.01);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.581,-112.5566667,1.27);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (13.0086,125.2747,4.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.3613,-153.4673,1.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (-5.499,152.7003,4.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (61.1341,-147.1991,1.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8218333,-122.843,0.33);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.8714,-152.9463,1.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.0374,-116.4385,-0.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (19.4134998,-155.2286682,2.07);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (60.9735,-151.7433,2.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.4912,70.3448,4.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (60.0235,-150.0985,1.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (39.4081667,-111.907,1.39);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (-6.3303,150.074,4.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (47.5501667,-122.673,1.59);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (41.9141,-119.6059,3.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (-32.4755,-69.8344,4.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (47.6296667,-120.361,0.87);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.6025,-153.4429,3.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (-34.3267,179.3665,4.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (66.7703,-146.8525,1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8243332,-122.8451691,0.79);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (5.1321,-32.5199,4.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (47.5505,-122.7851667,1.92);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (46.3518333,-122.3925,1.57);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (1.7627,98.2363,4.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.7896,-152.9866,2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (47.5461667,-122.815,3.42);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.0227,-116.4424,0.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5696667,-118.849,0.67);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8263333,-122.853,1.02);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.1006667,-117.5971667,-0.27);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (40.5546667,-121.6948333,0.93);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (18.8211,-67.3174,2.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (4.8333,-32.6181,5.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.818,-122.8196667,0.16);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (51.6487,-175.5336,4.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (64.8359,-147.8189,0.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (19.4518333,-155.6,0.63);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (51.5353,-175.5745,2.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8121667,-122.8226667,0.17);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (19.0895,-66.4422,2.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5718333,-118.8505,0.69);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.7993317,-122.8075027,1.02);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (-21.8918,-179.4298,5.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (57.8145,-157.5327,2.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.7866669,-122.7483368,0.98);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.1709,-118.1604,0.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (34.2995,-116.868,1.35);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (17.2102,60.0573,5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (-16.3006,-173.1129,4.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.6043333,-116.7388333,0.92);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.1614,-150.7847,1.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.796,-153.0703,1.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.7881667,-122.7343333,1.04);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (64.9835,-147.3543,1.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (62.2167,-149.6829,1.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (41.8866,-119.5949,1.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (22.2296,144.9936,4.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.3216667,-122.105,1.38);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.225,-118.4683333,1.68);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (60.3399,-150.8932,1.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.9473,-152.321,2.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (17.8822,-67.3413,2.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (62.8752,-151.7343,1.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.1178,-151.506,0.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8181648,-122.7998352,0.94);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (34.7941667,-117.5903333,2.79);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.423,-116.432,0.58);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8418333,-122.832,0.08);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.1038,-118.8642,0.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (64.9596,-149.5854,1.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8224983,-122.767334,0.82);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.4446,-118.1332,0.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (62.2136,-150.0685,1.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.409,-116.4141667,1.41);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (61.5654,-149.8646,1.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (62.238,-150.0791,1.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (12.4113,123.6636,4.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (34.1573333,-116.8126667,1.37);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (64.946,-149.5636,1.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5956667,-118.8621667,0.16);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.831501,-122.8018341,0.76);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.6595,-116.713,0.98);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (34.1571667,-116.812,1.46);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (62.909,-151.7598,1.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (-5.3608,152.6235,4.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (47.1543333,-121.9311667,1.01);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (-21.9139,-179.359,5.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5681667,-118.8476667,0.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.1396,-117.428,0.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8371658,-122.7553329,1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (52.4181,-174.3814,3.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (45.5385,-112.58,0.68);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (19.086,-66.4292,3.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5716667,-118.8528333,-0.02);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.2543,-97.3654,3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.0409,-116.2905,-0.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (60.3658,-151.8239,1.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (54.8795,-164.4235,2.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (4.505,-32.5457,5.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (5.0102,-32.6824,4.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.6348333,-118.94,0.39);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (-22.3474,179.2886,5.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5473333,-118.8586667,0);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (40.5028333,-124.2986667,1.96);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.431,-119.3264,1.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.4329,-119.3197,1.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.4622,-151.2014,0.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (4.9832,-32.5833,4.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.2384,-118.3906,1.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (4.6428,-32.5624,4.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (47.4893333,-121.7631667,1.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.164,-116.2618333,1.13);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (4.5745,-32.6203,4.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (62.7234,-149.6863,2.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8310013,-122.7976685,0.56);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.0753,-144.4935,1.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.0355,-120.617,0.54);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.0078333,-117.8026667,0.71);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (49.0363333,-119.9366667,1.94);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.812,-153.0411,1.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (-29.1241,-179.1507,4.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (19.3585,-155.2065,0.65);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (61.887,-150.1449,1.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.2088333,-118.4046667,1.54);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.5628,-151.0224,0.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (54.2507,-164.5282,2.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (36.6153,-115.7952,0.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (60.204,-151.8756,1.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.5666,-153.5585,1.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8408318,-122.8290024,0.68);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.8007,-153.0853,2.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (60.9368,-152.0897,1.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (34.2941667,-116.8655,1.25);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.7975,-122.7578333,1.71);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.298,-151.0706,0.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (6.5287,126.9742,4.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (41.8519,-119.629,1.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.581,-118.8533333,0.77);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8118324,-122.7771683,0.34);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (60.0164,-141.3357,1.3);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (60.457,-150.6574,1.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5753333,-118.8578333,0.75);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.577,-118.8575,0.68);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (60.1653,-153.3819,1.8);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (34.0283333,-117.2,0.93);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (-3.3438,139.7487,4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8250008,-122.8081665,0.73);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (53.5052,-164.7784,3.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5545,-118.8786667,0.15);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (61.5794,-146.3446,1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5166667,-121.8228333,1.47);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.1867,-149.082,1.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.7676,-152.9738,1.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (57.3348,-154.7947,1.9);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (61.246,-159.3169,2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5725,-118.8651667,2.08);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (60.5012,-149.9555,1.4);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (63.6311,-148.7297,1.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (35.7429,-97.1462,3.1);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (35.9656667,-120.5196667,0.02);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.709,-153.1448,1.7);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.6813,-152.3593,1.5);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (33.5346667,-116.6948333,1.44);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (38.8354988,-122.7823334,1.15);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5796667,-118.8606667,0.22);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (59.8081,-153.0383,1.6);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (37.5801667,-118.8498333,0.29);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (57.8523,-151.1716,2.2);',
'Insert into EARTHQUAKES (LAT,LNG,MAG) values (50.758,-174.0403,2.5);',
''))
);
null;
end;
/
prompt --application/deployment/checks
begin
null;
end;
/
prompt --application/deployment/buildoptions
begin
null;
end;
/
prompt --application/end_environment
begin
wwv_flow_api.import_end(p_auto_install_sup_obj => nvl(wwv_flow_application_install.get_auto_install_sup_obj, false));
commit;
end;
/
set verify on feedback on define on
prompt  ...done