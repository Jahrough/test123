<!DOCTYPE html>
<html lang="en">
    <head>
         <base href="<TMPL_VAR BASE_HREF>/">
        <TMPL_INCLUDE NAME="includes.tpl">
        <TMPL_IF DYNAMIC_CSS_LOOP>
          <TMPL_LOOP DYNAMIC_CSS_LOOP>
        <link class="dynamic-css" href="<TMPL_VAR NAME='CSSPATH'>/<TMPL_VAR CSS_NAME>" media="all" type="text/css" rel="stylesheet"> 
          </TMPL_LOOP>
        </TMPL_IF>
        <TMPL_IF HISTORY_DOWNLOAD>
        <link  href="<TMPL_VAR NAME='CSSPATH'>/history-preferences.css" media="screen" type="text/css" rel="stylesheet">
        <link  href="<TMPL_VAR NAME='CSSPATH'>/Results.css" media="screen" type="text/css" rel="stylesheet">
        <link  href="<TMPL_VAR NAME='CSSPATH'>/fab_styles.css" media="screen" type="text/css" rel="stylesheet">
        </TMPL_IF>
        <link class="for-print" href="<TMPL_VAR NAME='CSSPATH'>/download.css" type="text/css" media="all" rel="stylesheet">
        <link class="for-print" href="<TMPL_VAR NAME='CSSPATH'>/print_icons.css" type="text/css" media="all" rel="stylesheet">
        <script src="<TMPL_VAR NAME=JSPATH>/v4/libs/jquery-1.11.1.min.js"></script>
        <TMPL_IF SHOW_CHART>
          <script src="<TMPL_VAR GOOGLE_CHART_PATH>/45.1/js/jsapi_compiled_format_module.js" type="text/javascript" charset="UTF-8"></script>
          <script src="<TMPL_VAR GOOGLE_CHART_PATH>/45.1/js/jsapi_compiled_default_module.js" type="text/javascript" charset="UTF-8"></script>
          <script src="<TMPL_VAR GOOGLE_CHART_PATH>/45.1/js/jsapi_compiled_ui_module.js" type="text/javascript" charset="UTF-8"></script>
          <script src="<TMPL_VAR GOOGLE_CHART_PATH>/45.1/js/jsapi_compiled_corechart_module.js" type="text/javascript" charset="UTF-8"></script>
        </TMPL_IF>
        <script>
        var googleChartPath = "<TMPL_VAR NAME='GOOGLE_CHART_PATH'>";
        $(document).ready(function () {
          $('a').not('[href^="#"], .navAnchor').each(function () {
            $(this).after($(this).text());
            $(this).remove();
          });
          var pathname = window.location.href;
          $('a[href^="#"]').each(function () {
              var link = $(this).attr('href');
              $(this).attr('href', pathname + link);
           });
        });      
        </script>
    </head>

    <body class="menu-on-top">
        <div id="main" style="margin-top: 0px!important;">
            <div id="content" style="opacity: 1;">
              <TMPL_IF INCLUDE_COVER_PAGE>
                <header id="header"> 
                  <TMPL_INCLUDE NAME="header_logo.tpl">
                </header>
                <TMPL_INCLUDE NAME="print_cover_page.tpl">
              </TMPL_IF>
              <header id="header"> 
                <TMPL_INCLUDE NAME="header_logo.tpl">
              </header>
              <TMPL_UNLESS HISTORY_DOWNLOAD>                 
                <TMPL_INCLUDE NAME="search_results.tpl">
                <TMPL_IF NAME=HID_DPPA_PERMISSBLE_USE>
                  <TMPL_INCLUDE NAME="glb_dppa_selections.tpl">
                <TMPL_ELSE>
                  <TMPL_IF NAME=HID_GLBA_PERMISSBLE_USE>
                    <TMPL_INCLUDE NAME="glb_dppa_selections.tpl">
                  <TMPL_ELSE>
                    <TMPL_IF NAME=HID_DMF_PERMISSBLE_USE>
                      <TMPL_INCLUDE NAME="glb_dppa_selections.tpl">
                    </TMPL_IF>
                  </TMPL_IF>
                </TMPL_IF>
                <hr/>
              <TMPL_ELSE>
                <hr/>
                <TMPL_INCLUDE NAME="history_results.tpl">
              </TMPL_UNLESS>  
            </br>
              <span>Copyright &COPY;</span>
              <TMPL_VAR COPYRIGHT_YEAR> LexisNexis. All rights reserved.
            </div>
        </div>
    </body>
</html>
