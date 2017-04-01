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
        
        <link class="for-print" href="<TMPL_VAR NAME='CSSPATH'>/download.css" type="text/css" media="all" rel="stylesheet">
        <link class="for-print" href="<TMPL_VAR NAME='CSSPATH'>/print_icons.css" type="text/css" media="all" rel="stylesheet">
        <script src="<TMPL_VAR NAME=JSPATH>/v4/libs/jquery-1.11.1.min.js"></script>
        
    </head>

    <body class="menu-on-top">
        <div id="main" style="margin-top: 0px!important; padding-left: 10px; padding-right: 10px;">
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
                              
                <div id="search-results-row" class="row">
                    <TMPL_IF NAME="SEARCH_ERROR_MESSAGE">
                        <TMPL_INCLUDE NAME="search_error_container.tpl">
                    </TMPL_IF>
                    <TMPL_IF NAME="RESULTS">
                    <div id="search-results-con">
                        <form name="SEARCH_RESULTS" method="post">
                        <TMPL_VAR NAME="RESULTS">
                        </form>
                    </div>
                    </TMPL_IF>
                </div>
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

               
                </br>
                <span>Copyright &COPY;</span>
                <TMPL_VAR COPYRIGHT_YEAR> LexisNexis. All rights reserved.
            </div>
        </div>
    </body>
</html>




   



