<!-- BEGIN: main_menu_form.tpl -->
                <form name="MAIN_MENU" action="<TMPL_VAR NAME=ACTION>" method="post" aria-hidden="true">
                <TMPL_INCLUDE NAME="common_hidden_input.tpl">
                <INPUT type=hidden NAME="EVENT" VALUE="">
                <INPUT type=hidden NAME="CURRENT_EVENT" VALUE="<TMPL_VAR NAME=CURRENT_EVENT>">
                <INPUT type=hidden NAME="CLIENT_TYPE" VALUE="WEB">
                <INPUT type=hidden NAME="HIDE_COURT_POPUP" VALUE="">
                <INPUT type=hidden NAME="COURT_SEARCH_WIZARD" VALUE="">
                <INPUT type=hidden NAME="SKIN_TYPE" VALUE="<TMPL_VAR NAME=SKIN_TYPE>">
                <INPUT type=hidden NAME="APPLICATION_TYPE" VALUE="<TMPL_VAR NAME=APPLICATION_TYPE>">
                <INPUT type=hidden NAME="MYACCTAB" VALUE="0">
                <INPUT type=hidden NAME="PMTAB" VALUE="0">
                <INPUT type=hidden NAME="MYTASK" VALUE="0">
                <TMPL_IF NAME="ENABLE_ADVANCED_SEARCH"><INPUT type=hidden NAME="ADVANCED_SEARCH" VALUE="<TMPL_VAR NAME=APPLICATION_TYPE>"></TMPL_IF>
                <TMPL_IF NAME="ALERTING_NEW_COUNT">
                <INPUT type=hidden NAME="ALERTING_NEW_COUNT" id="ALERTING_NEW_COUNT" VALUE="<TMPL_VAR NAME=ALERTING_NEW_COUNT>">
                </TMPL_IF>
                <INPUT type="hidden" NAME="QS_OPTION" id="QS_OPTION" value="SSN" />
                <INPUT type=hidden NAME="ACTION_MISC" VALUE="<TMPL_VAR NAME=ACTION_MISC>">
                <input type=hidden name="DISABLED_SEARCHES" value="<TMPL_VAR DISABLED_SEARCHS>">                
                </form>
<!-- END: main_menu_form.tpl -->
