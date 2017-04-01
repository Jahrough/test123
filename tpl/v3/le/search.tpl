<!DOCTYPE html>
<html>
    <head>
        <TMPL_IF ALLOW_CHAT>
        <link type="text/css" href="<tmpl_var CCSS>" rel="stylesheet" charset="utf-8">
        <script type="text/javascript" src="<tmpl_var CJS>" charset="utf-8"></script>
        </TMPL_IF>

        <TMPL_INCLUDE NAME="includes.tpl">
        <TMPL_INCLUDE NAME="security_tips_legov.tpl">
        <TMPL_INCLUDE NAME="prepare_search_decisions.tpl">
    </head>
    <body onload="init_search_page()">
        <div id="skiptocontent"><a href="#searchForm" title="skip navigation">Skip Navigation</a></div>
        <TMPL_INCLUDE NAME="header.tpl">
 
        <div class="searchWrapper">
        <table class="searchCon">
            <thead style="display:none;">  
              <th aria-label="Left Menu">&nbsp;</th>  
              <th aria-label="Search Body">&nbsp;</th>  
              <th aria-label="Right Menu">&nbsp;</th>  
            </thead>  
            <tbody>
                <tr>
                    <td>
                       <div class="leftMenu" role="navigation"></div>
                    </td>
                    <td>
                        <TMPL_INCLUDE NAME="search_body.tpl">
                    </td>
                    <TMPL_UNLESS NAME=DDESKTOP_SEARCH>
                        <td>
                            <TMPL_INCLUDE NAME="right_nav_teaser.tpl">
                        </td>
                    </TMPL_UNLESS>
                 </tr>
                 <TMPL_UNLESS NAME="RESULTS">
                 <TMPL_IF name="COMBINED_MVR_SEARCH">
                 <tr>
                    <td>
                       <div class="leftMenuExtension motorVehicleSearch"></div>
                    </td>
                    <td>
                       <div class="formBox extraTipSection motorVehicleSearch"><TMPL_INCLUDE NAME="tips/adv_mv_tips.tpl"></div>
                    </td>
                 </tr>
                 </TMPL_IF>
                 </TMPL_UNLESS>
             </tbody>
         </table>
        </div>
	    <TMPL_INCLUDE NAME="search_hidden_form.tpl">
        <TMPL_INCLUDE NAME="map/hidden_form.tpl">
        
        <TMPL_IF NAME="RESULTS"><a name="skiptoresults"></a></TMPL_IF>
        <TMPL_INCLUDE NAME="search_terms_echo.tpl">

	    <TMPL_INCLUDE NAME="search_results.tpl">
	    <TMPL_INCLUDE NAME="search_messages.tpl">

	    <TMPL_INCLUDE NAME="glb_dppa.tpl">

        <input type="hidden" id="REPORT_ACTION" name="ACTION_REPORT" value="<TMPL_VAR NAME=ACTION_REPORT>">

        <TMPL_INCLUDE NAME="verify_password_trigger.tpl">

        <TMPL_INCLUDE NAME="prepare_search_data_from_main_menu.tpl">

        <TMPL_INCLUDE NAME="search_decisions.tpl">
        <TMPL_INCLUDE NAME="ribbon_bar.tpl">
        <TMPL_INCLUDE NAME="customize_myaccurint.tpl">

        <div id="modalDiv" role="dialog" aria-live="polite" aria-labelledby="dialog-title" class="trap"> 
            <img src="<TMPL_VAR IMGPATH>/loading.gif" alt="Running Search" height="40" width="67"/>
            <span>Running Search... Please Wait.</span>
        </div>
        <div id="modalBlur"></div>
        <div id="wrapper" style="display:none;"></div>
        <div id="systemWorking" style="display:none;"></div>
    </body>
</html>
