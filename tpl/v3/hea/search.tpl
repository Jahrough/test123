<!DOCTYPE html>
<html>
    <head>
        <TMPL_IF ALLOW_CHAT>
        <link type="text/css" href="<tmpl_var CCSS>" rel="stylesheet" charset="utf-8">
        <script type="text/javascript" src="<tmpl_var CJS>" charset="utf-8"></script>
        </TMPL_IF>

        <TMPL_INCLUDE NAME="includes.tpl">
    </head>
    <body>
        <TMPL_INCLUDE NAME="header.tpl">
 
        <div class="searchWrapper">
        <table class="searchCon">
            <tbody>
                <tr>
                    <td>
                       <div class="leftMenu"></div>
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

             </tbody>
         </table>
        </div>

	<TMPL_UNLESS NAME="SEARCH_ERROR_MESSAGE">
        <TMPL_UNLESS NAME="RESULTS">
	<div class="tipsWrapper">
	  <div id="searchTipsCon">
	  <TMPL_INCLUDE NAME="tips/search_tips.tpl">
	  </div>
	</div>
        </TMPL_UNLESS>
        </TMPL_UNLESS>

    	    
        <TMPL_INCLUDE NAME="search_hidden_form.tpl">
        <TMPL_INCLUDE NAME="map/hidden_form.tpl">

        <TMPL_IF NAME="RESULTS"><a name="skiptoresults"></a></TMPL_IF>
        <TMPL_INCLUDE NAME="search_terms_echo.tpl">

	    <TMPL_INCLUDE NAME="search_results.tpl">
	    <TMPL_INCLUDE NAME="search_messages.tpl">

	    <TMPL_INCLUDE NAME="glb_dppa.tpl">

        <TMPL_INCLUDE NAME="verify_password_trigger.tpl">

        <TMPL_INCLUDE NAME="prepare_search_data_from_main_menu.tpl">
        <TMPL_INCLUDE NAME="search_decisions.tpl">
        <TMPL_INCLUDE NAME="ribbon_bar.tpl">
        <TMPL_INCLUDE NAME="customize_myaccurint.tpl">
        <div id="modalDiv">
            <img src="<TMPL_VAR IMGPATH>/loading.gif" alt="Running Search" height="40" width="67"/>
            <span>Running Search... Please Wait.</span>
        </div>
        <div id="modalBlur"></div>
        <div id="wrapper" style="display:none;"></div>
        <div id="systemWorking" style="display:none;"></div>
        <script>
            LN.misc.appInit(<TMPL_IF BLIND>0<TMPL_ELSE><TMPL_IF SKIP_RECENT_SEARCH_AJAX>0<TMPL_ELSE>1</TMPL_IF></TMPL_IF>); <TMPL_IF NAME="ALERTING_NEW_COUNT">menu_prompt('<TMPL_VAR NAME="ALERTING_NEW_COUNT">');</TMPL_IF>
        </script>
    </body>
</html>
