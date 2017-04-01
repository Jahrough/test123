<!DOCTYPE html>
<html>
    <head>
        <TMPL_INCLUDE NAME="includes.tpl">
        <link href="<TMPL_VAR NAME='CSSPATH'>/main_menu.css" rel="stylesheet" type="text/css">
    </head>

<body onLoad="<TMPL_IF NAME="ALERTING_NEW_COUNT">menu_prompt('<TMPL_VAR NAME="ALERTING_NEW_COUNT">');</TMPL_IF>">

        <TMPL_INCLUDE NAME="mm_header.tpl">

       <div id="modalDiv">
            <img src="<TMPL_VAR IMGPATH>/loading.gif" alt="Running Search" height="40" width="67"/>
            <span>Running Search... Please Wait.</span>
        </div>
        <div id="modalBlur"></div>


       <form name="MAIN_MENU" action="<TMPL_VAR NAME=ACTION>" method="post">
        <TMPL_INCLUDE NAME="common_hidden_input.tpl">       
        <INPUT type=hidden NAME="EVENT" VALUE="">
	 <INPUT type=hidden id="IMGPATH" VALUE="<TMPL_VAR NAME=IMGPATH>">
        <INPUT type=hidden NAME="CURRENT_EVENT" VALUE="<TMPL_VAR NAME=CURRENT_EVENT>">
        <INPUT type=hidden NAME="CLIENT_TYPE" VALUE="WEB">
        <INPUT type=hidden NAME="HIDE_COURT_POPUP" VALUE="">
        <INPUT type=hidden NAME="COURT_SEARCH_WIZARD" VALUE="">
        <INPUT type=hidden NAME="SKIN_TYPE" VALUE="<TMPL_VAR NAME=SKIN_TYPE>">
        <INPUT type=hidden NAME="APPLICATION_TYPE" VALUE="<TMPL_VAR NAME=APPLICATION_TYPE>">
        <INPUT type=hidden NAME="MYACCTAB" VALUE="0">
        <INPUT type=hidden NAME="PMTAB" VALUE="0">
        <TMPL_IF NAME="ENABLE_ADVANCED_SEARCH"><INPUT type=hidden NAME="ADVANCED_SEARCH" VALUE="<TMPL_VAR NAME=APPLICATION_TYPE>"></TMPL_IF>
        <TMPL_IF NAME="ALERTING_NEW_COUNT">
        <INPUT type=hidden NAME="ALERTING_NEW_COUNT" id="ALERTING_NEW_COUNT" VALUE="<TMPL_VAR NAME=ALERTING_NEW_COUNT>">
        </TMPL_IF>
        <INPUT type=hidden NAME="ACTION_ADMIN" VALUE="<TMPL_VAR NAME=ACTION_ADMIN>">
        <INPUT type=hidden NAME="RECENT_WAIT" VALUE="<TMPL_IF SHOW_CASE_CONNECT>1</TMPL_IF>">

        <div class="mainMenuWrapper">
            <table class="mainMenuTable">
                <tbody>
                    <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td id="rightNavTeaserCell">
                <TMPL_INCLUDE NAME="right_nav_teaser.tpl">
                    </td>
                    </tr>
                    </tbody>
            </table>
        </div>
        <div class="collapseControlsCon">
            <div class="collapseExpandAll-collapse"></div>
            <div class="rolloverToggle">
                <input type="checkbox" id="rollover">
                <div>Enable Rollovers</div>
            </div>
        </div>

        </form>
        <TMPL_INCLUDE NAME="customize_myaccurint.tpl">

        <TMPL_INCLUDE NAME="main_menu_footer.tpl">


        <TMPL_INCLUDE NAME="search_hidden_form.tpl">
        <TMPL_INCLUDE NAME="map/hidden_form.tpl">
        <TMPL_INCLUDE NAME="verify_password_trigger.tpl">

        <TMPL_INCLUDE NAME="prepare_search_data_from_main_menu.tpl">
        <TMPL_INCLUDE NAME="search_decisions.tpl">
        <div id="new_alerts"></div>

        <script src="<tmpl_var name='JSPATH'>/ln/lexis.js"></script>
        <script src="<tmpl_var name='JSPATH'>/ln/server.js"></script>
        <script src="<tmpl_var name='JSPATH'>/ln/config.js"></script>
        <script src="<tmpl_var name='JSPATH'>/ln/misc.js"></script>
        <div id="wrapper" style="display:none;"></div>
        <div id="systemWorking" style="display:none;"></div>
        <script>
            LN.misc.appInit(<TMPL_IF BLIND>0<TMPL_ELSE><TMPL_IF SKIP_RECENT_SEARCH_AJAX>0<TMPL_ELSE>1</TMPL_IF></TMPL_IF>); <TMPL_IF NAME="ALERTING_NEW_COUNT">menu_prompt('<TMPL_VAR NAME="ALERTING_NEW_COUNT">');</TMPL_IF>
        </script>
     </body>
</html>
