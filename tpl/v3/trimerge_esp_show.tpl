<!DOCTYPE html>
<html>
    <head>
        <TMPL_INCLUDE NAME="includes_info.tpl">

        <TMPL_IF NAME="VERIFY_PASSWORD">
            <script type="text/javascript">general_win('<TMPL_VAR ACTION>?SESSION_ID=<TMPL_VAR SESSION_ID>&CSRF_TOKEN=<TMPL_VAR CSRF_TOKEN>&EVENT=LOGIN/DO_VERIFY_PASSWORD','VerifyPassword','575','200');</script>
        </TMPL_IF>
<style>
    .searchWrapper {
        width: 960px;
    }
    .searchWrapper .formBox {
        width: 100%; 
    }
    .topBarConMiddle {
        max-width: 960px;
        min-width: 950px;
    }

    .pageFooterWrapper, .noResultsWrapper {
        min-width: 960px;
        max-width: 960px;
    }
    #glbdppaCon {
        min-width: 960px !important;
    }
</style>


<script language="JavaScript">
	var glb_purpose_value = get_glb(<TMPL_VAR NAME=GLB_PURPOSE_VALUE>);
	var dppa_value = get_dppa(<TMPL_VAR NAME=DPPA_VALUE>);
        var dmf_purpose_value = get_dmf('<TMPL_VAR NAME=DMF_PURPOSE_VALUE>');

	function loadFCRA(){
		document.getElementById('fcra_text').innerHTML =  get_fcra(<TMPL_VAR NAME=TRIMERGE_PERM_USE>);
		document.forms[0].PERM_USE.value = get_fcra(<TMPL_VAR NAME=TRIMERGE_PERM_USE>);
	}

    function checkall_bureaus(){
    	if(document.forms[0].CHECKALL.checked){
    		document.forms[0].EQUIFAX.checked = true;
    		document.forms[0].EXPERIAN.checked = true;
    		document.forms[0].TRANSUNION.checked = true;
    	}else{
    		document.forms[0].EQUIFAX.checked = false;
    		document.forms[0].EXPERIAN.checked = false;
    		document.forms[0].TRANSUNION.checked = false;
    	}
    }

    function conf(){
    	alert('Credit Report has been requested. Please check the report manager for results.');
    }

    function fcra(option){

    	if(option == 9999){
    		var fcra_msg_2 = '<p>PLEASE SELECT the permissible purpose for which you intend to utilize the information.&nbsp; The purpose you select will govern this entire session.&nbsp; If the purpose for which you are conducting searches changes, you will need to exit the system, re-login and select another purpose.</p><br><br>';
    			fcra_msg_2 += '<p>Tri-Merge Credit Reports are consumer reporting agency products provided by LexisNexis Risk Solutions Inc. and may only be accessed in compliance with the Fair Credit Reporting Act, 15 U.S.C. 1681, et seq. (the "FCRA").&nbsp; When you obtain Tri-Merge Credit Reports, you are a "User" of "Consumer Reports" as those terms are defined under the FCRA, and as such certify as follows:</p><br><br>';
    			fcra_msg_2 += '<ol><li>User will use Consumer Reports for the following purpose under the FCRA and such reports will not be used for any other purpose:<br/><br/>';
    			fcra_msg_2 += '<a class="myaccLnk" name="setPermUse9" onclick="javascript:fcra(\'9\');"> Employment:</a> For Employment Purposes under the FCRA.</li><br>';
    			fcra_msg_2 += '<li>User will make a clear and conspicuous written disclosure to the consumer, prior to obtaining the report, in a document that consists solely of the disclosure, that a Consumer Report may be obtained.</li><br>';
    			fcra_msg_2 += '<li>User will obtain prior written authorization from the consumer and retain such authorization for a period of five (5) years.</li><br>';
    			fcra_msg_2 += '<li>The information obtained will not be used in violation of any Federal or state law, including any equal opportunity law or regulation.</li><br>';
    			fcra_msg_2 += '<li>If User intends to take any adverse action based in whole or in part on the Consumer Report, a copy of the report and a summary of the consumer\'s rights will be provided to the consumer prior to taking adverse action.</li><br></ol>';
    			fcra_msg_2 += '<p>User acknowledges that the FCRA imposes criminal penalties -- including a fine, up to two years in prison, or both -- against anyone who knowingly and willfully obtains information on a consumer from a consumer reporting agency under false pretenses, and other penalties for anyone who obtains such consumer information without a permissible purpose.</p><br><br>';

    			new_modal('Permitted Use Certification',fcra_msg_2,650);
		}else if(option == 9){
			document.forms[0].PERMITTED_PURPOSE.value = option;
			document.forms[0].PERM_USE.value = get_fcra(option);
			document.getElementById('fcra_text').innerHTML =  get_fcra(option);
    		$j('#closeModal').click();
    	}else if(option == 'exit'){
    		var fcra_msg_exit = '<p>You are now exiting the Tri-Merge employment decisioning services.  Tri-Merge Credit Reports are consumer reporting agency products provided by LexisNexis Risk Solutions Inc. and may only be accessed in compliance with the Fair Credit Reporting Act, 15 U.S.C. 1681, et seq<br><br><br></p>';
      			fcra_msg_exit += '<input class="btn red-btn" id="close_ok" type="button" value="Exit" onclick="javascript:window.close();"/>&nbsp; &nbsp; <input class="btn grey-btn" id="close_cancel" type="button" value="Cancel" onclick="javascript:close_tip(\'info_rem\');"/>';

			new_modal('FCRA Tri-Merge Credit Reports',fcra_msg_exit,650);
    	}else{
			var fcra_msg_1 = '<p>You are now requesting access to the Tri-Merge employment decisioning services.&nbsp;Tri-Merge Credit Reports are consumer reporting agency products provided by LexisNexis Risk Solutions Inc. and may only be accessed in compliance with the Fair Credit Reporting Act, 15 U.S.C. 1681, et seq.<br><br><br></p><div align="center"><input  class="btn red-btn" id="fcra_ok" type="button" value="Certify" onclick="javascript:fcra(\'9999\')" />&nbsp; &nbsp;<input  class="btn grey-btn" id="fcra_cancel" type="button" value="Do Not Certify" onclick="javascript:window.close();"/>';
			new_modal('FCRA Tri-Merge Credit Reports',fcra_msg_1,650);
		}
    }

    function error(){
			var error_msg_1 = '<p><br />	We are currently experiencing technical issues and are temporarily unable to process your request. <br/><br/>Please submit your request at a later time or contact our Technical Support team at 1-866-277-8407.<br /><br /><br /><br /></p><div align="center"><input  class="btn" id="error" type="button" value="Continue" onclick="javascript:close_tip(\'info_rem\');"/>';
			new_modal('FCRA Tri-Merge Credit Reports',error_msg_1,650);
    }

  </script>

    </head>
    <body>


            <div class="topBarCon">
                <div class="topBarConMiddle" style="margin-left:5px;">
                    <div class="left">
                        <ul>
                            <TMPL_IF GOV>
                                <li class="ln-logo ln-logo-gov"><div>&nbsp;</div></li>
                            </TMPL_IF>
                            <TMPL_IF LE>
                                <li class="ln-logo ln-logo-le"><div>&nbsp;</div></li>
                            </TMPL_IF>
                            <TMPL_IF HEA>
                                <li class="ln-logo ln-logo-hea"><div>&nbsp;</div></li>
                            </TMPL_IF>
                        </ul>
                    </div>

                    <div class="right">
                        <ul id="support-links">
                            <li>24/7 Search and Technical Assistance 1-866-277-8407</li>
                            <li>
                                <a href="javascript:void(0);" onclick="self.onerror = function() {window.close(); return true;}; if (opener) {if (!opener.closed){opener.focus()}}; window.close();">Close</a>
                            </li>
                        </ul>
                    </div>

                </div>
            </div>

            <div id="modalDiv">
                <img src="<TMPL_VAR IMGPATH>/loading.gif" alt="Running Search" height="40" width="67"/>
                <span>Running Search... Please Wait.</span>
            </div>
            <div id="modalBlur"></div>


            <div class="searchWrapper">
            <table class="searchCon">
                <tbody>
                    <tr>
                        <td>
                            <div class="formBox searchFormConWidth">
                                <div class="floatWrap">
                                    <div class="searchFormCon searchFormConWidth">
                                


                                        <form name="TRIMERGE_ESP_REPORT" action="<TMPL_VAR ACTION_REPORT>" method="post">
                                          <TMPL_INCLUDE NAME="common_hidden_input.tpl">
                                          <input type="hidden" id="PERMITTED_PURPOSE" name="PERMITTED_PURPOSE" value="<TMPL_VAR PERMITTED_PURPOSE>"/>
                                          <input type="hidden" id="TM_ESP" name="TM_ESP" value="1"/>
                                            <INPUT type=hidden NAME="CURRENT_EVENT" VALUE="<TMPL_VAR NAME=CURRENT_EVENT>">
                                            <INPUT type=hidden NAME="EVENT" VALUE="REPORT/TRIMERGE_ESP_REPORT">
                                            <INPUT type=hidden NAME="RECID" VALUE="">
                                            <INPUT type=hidden NAME="FULL_NAME" VALUE="">
                                            <INPUT type=hidden NAME="SKIN_TYPE" VALUE="<TMPL_VAR NAME=SKIN_TYPE>">
                                            <INPUT type=hidden NAME="APPLICATION_TYPE" VALUE="<TMPL_VAR NAME=APPLICATION_TYPE>">
                                            <INPUT type=hidden NAME="REQUIRE_REF_CODE" VALUE="<TMPL_VAR NAME=REQUIRE_REF_CODE>">
                                            <INPUT type=hidden NAME="REQUIRE_REF_CODE_EXTRA" VALUE="<TMPL_VAR NAME=REQUIRE_REF_CODE_EXTRA>">
                                            <INPUT type=hidden NAME="REQUIRE_REF_CODE_ALERT_TEXT" VALUE="<TMPL_VAR NAME=REQUIRE_REF_CODE_ALERT_TEXT>">
                                            <INPUT type=hidden NAME="REQUIRE_REF_CODE_FORMAT" VALUE="<TMPL_VAR NAME=REQUIRE_REF_CODE_FORMAT>">
                                            <INPUT type=hidden NAME="KEY1" VALUE="ITEM_NUMBER">
                                            <INPUT type=hidden NAME="KEY2" VALUE="CASE_TYPE">
                                            <INPUT type=hidden NAME="KEY3" VALUE="CASE_NUMBER">
                                            <INPUT type=hidden NAME="PRIMARY_SUBJECT" VALUE="PRIMARY_SUBJECT">
                                            <INPUT type=hidden NAME="SECONDARY_SUBJECT" VALUE="SECONDARY_SUBJECT">
                                            <input type=hidden NAME="ADDR_TYPE" value="Current">
                                            <input type=hidden NAME="REQUEST_TIME" value="">
                                            <input type=hidden NAME="DOB_ALT" value="">
                                            <input type=hidden NAME="PERM_USE" value="">

                <div class="formTopNav searchFormConWidth">
                    <div class="searchFormLabel"></div>
                    <span> FCRA Tri-Merge Credit Report</span>
                </div>



                <div class="formBody searchFormConWidth">
                    <div class="formBdyLeft">
                        <TMPL_INCLUDE NAME="trimerge/trimerge_report_form.tpl">
                    </div>
                    
                    <div class="formBdyRight">
                        <div class="frmControls">

                        <div>
                            <div id="srch_button_only" style="display: block;">
                                <TMPL_IF USE_MISC_PROCESS>
                                  <input type="button" class="btn redBtn" tabindex="101" id="searchBtn" value="Search"  onBlur="ENTER_FOCUS=0;" onFocus="ENTER_FOCUS=1" onClick="placeholder_clear(); if(!validate()){ placeholders_reset();return false;}else{show_loading(); send_event('<TMPL_VAR NAME=SEARCH_EVENT>'<TMPL_IF POWER_BOOLEAN_SEARCH>,'<TMPL_VAR NAME=ACTION_REPORT>'<TMPL_ELSE><TMPL_UNLESS IRB>,'<TMPL_VAR NAME=ACTION_MISC>'</TMPL_UNLESS></TMPL_IF>);}">
                                <TMPL_ELSE> 
                                  <input type="button" class="btn redBtn" tabindex="101" id="searchBtn" value="Search" onBlur="ENTER_FOCUS=0;" onFocus="ENTER_FOCUS=1" onClick="placeholder_clear(); if(!validate()){ placeholders_reset();return false;}else{show_loading(); send_event('<TMPL_VAR NAME=SEARCH_EVENT>');}">
                                </TMPL_IF>
                            </div>
                            <div id="rpt_button_only" style="display: none;">
                                <input type="button" class="btn redBtn" tabindex="101" value="Report" onBlur="ENTER_FOCUS=0;" onFocus="ENTER_FOCUS=1" onClick="javascript:placeholder_clear(); if(!validate()){ placeholders_reset();return false;}else{show_report_win('<TMPL_VAR NAME=REPORT_EVENT>');}"  class="isnotlink">
                            </div>
                            <div>
                                <input type="button" class="btn darkBtn" onClick="javascript:clearAll();placeholders_reset();return false;" value="Clear Form"/>
                            </div>
                        </div>
                        <div>
                        <input type="text" class="refInput" name="REFERENCE_CODE"<TMPL_IF DISABLE_REF_CODE> DISABLED </TMPL_IF> id="REFERENCE_CODE" value="<TMPL_VAR NAME=REFERENCE_CODE>" placeholder="Reference"/>
                        </div>


                        <span>
                            <b>Important:</b><br>
                                Tri-Merge Credit Reports are consumer reporting agency products provided by LexisNexis Risk Solutions Inc. and may only be accessed in compliance with the Fair Credit Reporting Act, 15 U.S.C. 1681, et seq. (the "FCRA").<br/><br/>
                                User acknowledges that the FCRA imposes criminal penalties -- including a fine, up to two years in prison, or both -- against anyone who knowingly and willfully obtains information on a consumer from a consumer reporting agency under false pretenses, and other penalties for anyone who obtains such consumer information without a permissible purpose. 
                        </span>





                        </div>
                    </div>
                </div>



                                            

                                        </form>

                                    </div>
                                </div>
                            </div>

                        </td>
                     </tr>
                 </tbody>
             </table>

            </div>


            <div class="pageFooterWrapper">
                <div class="pageFooterCon" id="glbdppaCon">
                    <p><TMPL_IF DYNAMIC_GLB_DPPA><a href="javascript:show_post_popup('SEARCH/SHOW_DPPA_CLOSE','DPPAwin','','',1,1,1,1,1,0);">Your DPPA Permissible Use</a>:&nbsp;<span id="dppa_reason"></span><TMPL_ELSE>Your DPPA Permissible Use:&nbsp;<script>document.write(dppa_value);</script></TMPL_IF></p>
                    <p><TMPL_IF DYNAMIC_GLB_DPPA><a href="javascript:show_post_popup('SEARCH/SHOW_GLB_CLOSE','GLBwin','','',1,1,1,1,1,0);">Your GLBA Permissible Use</a>:&nbsp;<span id="glb_reason"></span><TMPL_ELSE>Your GLBA Permissible Use:&nbsp;<script>document.write(glb_purpose_value);</script></TMPL_IF></p>
                    <p><TMPL_IF DYNAMIC_GLB_DPPA><a href="javascript:show_post_popup('SEARCH/SHOW_DMF_CLOSE','GLBwin','','',1,1,1,1,1,0);">Your DMF Permissible Use</a>:&nbsp;<span id="dmf_reason"></span><TMPL_ELSE>Your DMF Permissible Use:&nbsp;<script>document.write(dmf_purpose_value);</script></TMPL_IF></p>
                    <p>
                      <a href="javascript:fcra(9999);">Your FCRA Permissible Use</a>:&nbsp;<span id="fcra_text"></span></p>
                </div>
            </div>



	<TMPL_UNLESS NAME="TRIMERGE_PERM_USE">
		<script type="text/javascript">fcra();</script>
	</TMPL_UNLESS>

	<TMPL_IF NAME="TRIMERGE_PERM_USE">
		<script type="text/javascript">loadFCRA();</script>
	</TMPL_IF>

	<TMPL_IF NAME="CONFIRMATION">
		<script type="text/javascript">conf();</script>
	</TMPL_IF>

	<TMPL_IF NAME="ERROR_MESSAGE">
		<script type="text/javascript">error();</script>
	</TMPL_IF>

    <TMPL_INCLUDE NAME="batch/batch_footer.tpl">
    </body>
</html>
