<div class="formBox searchFormConWidth" id="searchForm" role="main">
    <div class="floatWrap">

        <div role="form" class="searchFormCon searchFormConWidth">
            <TMPL_IF NAME="SEARCH_NAME">
              <form name="<TMPL_VAR NAME='SEARCH_NAME'>" action="<TMPL_VAR NAME=ACTION>" method="post">
            <TMPL_ELSE>
              <form name="PERSON_SEARCH" action="<TMPL_VAR NAME=ACTION>" method="post">
            </TMPL_IF>
                <TMPL_INCLUDE NAME="common_hidden_input.tpl">
                <TMPL_IF NAME="SEARCH_EVENT">
                <INPUT type=hidden NAME="EVENT" VALUE="<TMPL_VAR NAME='SEARCH_EVENT'>">
                <TMPL_ELSE>
                <INPUT type=hidden NAME="EVENT" VALUE="SEARCH/SEARCH">
                </TMPL_IF>
                
                <input type="hidden" id="REPORT_ACTION" name="ACTION_REPORT" value="<TMPL_VAR NAME=ACTION_REPORT>">
                <INPUT type=hidden NAME="CURRENT_EVENT" ID="CURRENT_EVENT" VALUE="<TMPL_VAR NAME=CURRENT_EVENT>">
                <INPUT type=hidden NAME="RECID" VALUE="">
                <INPUT type=hidden NAME="FULL_NAME" VALUE="">
                <INPUT type=hidden id="IMGPATH" VALUE="<TMPL_VAR NAME=IMGPATH>">
                <INPUT type=hidden NAME="SKIN_TYPE" VALUE="<TMPL_VAR NAME=SKIN_TYPE>">
                <INPUT type=hidden NAME="APPLICATION_TYPE" VALUE="<TMPL_VAR NAME=APPLICATION_TYPE>">
                <INPUT type=hidden NAME="DISPLAY_DL_TAB_LOGIC" VALUE="<TMPL_VAR NAME=DISPLAY_DL_TAB_LOGIC>">
                <INPUT type=hidden NAME="COURT_SEARCH_WIZARD" VALUE="<TMPL_VAR NAME=COURT_SEARCH_WIZARD>">
                <INPUT type=hidden NAME="PMTAB" VALUE="0">
                <INPUT type=hidden NAME="MYACCTAB" VALUE="<TMPL_VAR IM_ON_MYACCURINT>">
                <INPUT type=hidden NAME="REQUIRE_REF_CODE" VALUE="<TMPL_VAR NAME=REQUIRE_REF_CODE>">
                <INPUT type=hidden NAME="REQUIRE_REF_CODE_EXTRA" VALUE="<TMPL_VAR NAME=REQUIRE_REF_CODE_EXTRA>">
                <INPUT type=hidden NAME="FDN_DATA_TYPE" VALUE="<TMPL_VAR NAME=FDN_DATA_TYPE>">
                <TMPL_IF NAME="ENABLE_ADVANCED_SEARCH"><INPUT type=hidden NAME="ADVANCED_SEARCH" VALUE="<TMPL_VAR NAME=APPLICATION_TYPE>"></TMPL_IF>

                <TMPL_IF NAME=PERSON_SEARCH>
                      <INPUT TYPE=hidden NAME="SSN_ONLY_SEARCH" VALUE="<TMPL_VAR NAME=SSN_ONLY_SEARCH>">
                <TMPL_ELSE>
                <TMPL_IF NAME=ADV_SEARCH>
                      <INPUT TYPE=hidden NAME="SSN_ONLY_SEARCH" VALUE="<TMPL_VAR NAME=SSN_ONLY_SEARCH>">
                </TMPL_IF>
                </TMPL_IF>

                <TMPL_IF NAME="CLEAR_REFERENCE_CODE">
                      <INPUT type=hidden NAME="CLEAR_REFERENCE_CODE" VALUE="1">
                </TMPL_IF>

                <TMPL_IF NAME="ENABLE_GRAPHVIEW">
                      <INPUT type=hidden NAME="ENABLE_GRAPHVIEW" VALUE="1">
                </TMPL_IF>
                <TMPL_IF NAME="USE_MISC_PROCESS">
                      <INPUT type=hidden NAME="ACTION_MISC" VALUE="<TMPL_VAR NAME=ACTION_MISC>">
                </TMPL_IF>

                <div class="formTopNav searchFormConWidth">
                    <div class="searchFormLabel"></div>
                    <TMPL_INCLUDE NAME="search_coverage_help.tpl">                        
                </div>

                <div class="formBody searchFormConWidth">
                    <div class="formBdyLeft">
                        <TMPL_INCLUDE NAME="search_inputs_search_form.tpl">
                    </div>
                    
                    <div class="formBdyRight">
                        <div class="frmControls">
                            <TMPL_INCLUDE NAME="search_buttons.tpl">
                            <TMPL_INCLUDE NAME="search_inputs_disclaimer.tpl">
                        </div>
                    </div>
                </div>

            </form>
        </div>


    </div>
</div>

