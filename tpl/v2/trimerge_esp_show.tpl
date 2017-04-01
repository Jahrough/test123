<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
   "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<!-- begin trimerge/show.tpl -->
<!-- <TMPL_VAR SERVER_ID> -->
<html xmlns="http://www.w3.org/1999/xhtml" lang="en" xml:lang="en">
<head>
	<title >FCRA Tri-Merge Credit Report</title>
	<meta http-equiv="Content-Script-Type" content="text/javascript"/>
	<link href="<TMPL_VAR CSSPATH>/<TMPL_VAR SKIN_TYPE>/skin.css"
	rel="stylesheet" type="text/css"/>
	<link href="<TMPL_VAR CSSPATH>/<TMPL_VAR APPLICATION_TYPE>/diff.css"
	rel="stylesheet" type="text/css"/>
	<link href="<TMPL_VAR CSSPATH>/accurintSearch.css"
	rel="stylesheet" type="text/css"/>
	<link href="<TMPL_VAR CSSPATH>/accurint.css" rel="stylesheet" type="text/css"/>
	<link href="<TMPL_VAR CSSPATH>/print.css" media="print" rel="stylesheet" type="text/css"/>
	<link href="<TMPL_VAR CSSPATH>/<TMPL_VAR APPLICATION_TYPE>/<TMPL_VAR USER_THEME>.css"
	rel="stylesheet" type="text/css"/>
	<link href="<TMPL_VAR CSSPATH>/trimerge.css" rel="stylesheet" type="text/css"/>

	<TMPL_IF NAME="VERIFY_PASSWORD">
		<script type="text/javascript">general_win('<TMPL_VAR ACTION>?SESSION_ID=<TMPL_VAR SESSION_ID>&CSRF_TOKEN=<TMPL_VAR CSRF_TOKEN>&EVENT=LOGIN/DO_VERIFY_PASSWORD','VerifyPassword','575','200');</script>
	</TMPL_IF>
	<script type="text/javascript" src="<TMPL_VAR JSPATH>/search_javascript.js"></script>
	<script type="text/javascript" src="<TMPL_VAR JSPATH>/common.js"></script>
	<script type="text/javascript" src="<TMPL_VAR JSPATH>/shared.js"></script>
	<script type="text/javascript" src="<TMPL_VAR JSPATH>/order_mgr.js"></script>

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
    		var fcra_msg_2 = '<div style="padding:10px;"><p>PLEASE SELECT the permissible purpose for which you intend to utilize the information.&nbsp; The purpose you select will govern this entire session.&nbsp; If the purpose for which you are conducting searches changes, you will need to exit the system, re-login and select another purpose.</p><br><br>';
    			fcra_msg_2 += '<p>Tri-Merge Credit Reports are consumer reporting agency products provided by LexisNexis Risk Solutions Inc. and may only be accessed in compliance with the Fair Credit Reporting Act, 15 U.S.C. 1681, et seq. (the "FCRA").&nbsp; When you obtain Tri-Merge Credit Reports, you are a "User" of "Consumer Reports" as those terms are defined under the FCRA, and as such certify as follows:</p><br><br>';
    			fcra_msg_2 += '<ol><li>User will use Consumer Reports for the following purpose under the FCRA and such reports will not be used for any other purpose:<br/><br/>';
    			fcra_msg_2 += '<a class="fcraPU" name="setPermUse9" onclick="javascript:fcra(\'9\');"> Employment:</a> For Employment Purposes under the FCRA.</li><br>';
    			fcra_msg_2 += '<li>User will make a clear and conspicuous written disclosure to the consumer, prior to obtaining the report, in a document that consists solely of the disclosure, that a Consumer Report may be obtained.</li><br>';
    			fcra_msg_2 += '<li>User will obtain prior written authorization from the consumer and retain such authorization for a period of five (5) years.</li><br>';
    			fcra_msg_2 += '<li>The information obtained will not be used in violation of any Federal or state law, including any equal opportunity law or regulation.</li><br>';
    			fcra_msg_2 += '<li>If User intends to take any adverse action based in whole or in part on the Consumer Report, a copy of the report and a summary of the consumer\'s rights will be provided to the consumer prior to taking adverse action.</li><br></ol>';
    			fcra_msg_2 += '<p>User acknowledges that the FCRA imposes criminal penalties -- including a fine, up to two years in prison, or both -- against anyone who knowingly and willfully obtains information on a consumer from a consumer reporting agency under false pretenses, and other penalties for anyone who obtains such consumer information without a permissible purpose.</p><br><br></div>';

    			build_tip('Permitted Use Certification',fcra_msg_2,'',1,1,650);
		}else if(option == 9){
			document.forms[0].PERMITTED_PURPOSE.value = option;
			document.forms[0].PERM_USE.value = get_fcra(option);
			document.getElementById('fcra_text').innerHTML =  get_fcra(option);
    		close_tip('info_rem');
    	}else if(option == 'exit'){
    		var fcra_msg_exit = '<div style="padding:10px;"><p>You are now exiting the Tri-Merge employment decisioning services.  Tri-Merge Credit Reports are consumer reporting agency products provided by LexisNexis Risk Solutions Inc. and may only be accessed in compliance with the Fair Credit Reporting Act, 15 U.S.C. 1681, et seq<br><br><br></p>';
      			fcra_msg_exit += '<div align="center"><input class="btn" id="close_ok" type="button" value="Exit" onclick="javascript:window.close();"/>&nbsp; &nbsp; <input class="btn" id="close_cancel" type="button" value="Cancel" onclick="javascript:close_tip(\'info_rem\');"/></div></div>';

			build_tip('FCRA Tri-Merge Credit Reports',fcra_msg_exit,'',1,1,650);
    	}else{
			var fcra_msg_1 = '<div style="padding:10px;"><br><p>You are now requesting access to the Tri-Merge employment decisioning services.&nbsp;Tri-Merge Credit Reports are consumer reporting agency products provided by LexisNexis Risk Solutions Inc. and may only be accessed in compliance with the Fair Credit Reporting Act, 15 U.S.C. 1681, et seq.<br><br><br></p><div align="center"><input  class="btn" id="fcra_ok" type="button" value="Certify" onclick="javascript:fcra(\'9999\')" />&nbsp; &nbsp;<input  class="btn" id="fcra_cancel" type="button" value="Do Not Certify" onclick="javascript:window.close();"/></div></div>';
			build_tip('FCRA Tri-Merge Credit Reports',fcra_msg_1,'',1,1,650);
		}
    }

    function error(){
			var error_msg_1 = '<div style="padding:10px;"><div align="center"><p><br />	We are currently experiencing technical issues and are temporarily unable to process your request. <br/><br/>Please submit your request at a later time or contact our Technical Support team at 1-866-277-8407.<br /><br /><br /><br /></p><div align="center"><input  class="btn" id="error" type="button" value="Continue" onclick="javascript:close_tip(\'info_rem\');"/></div></div>';
			build_tip('FCRA Tri-Merge Credit Reports',error_msg_1,'',1,1,650);
    }




  </script>

</head>
<body>
  <div id="hd">
    <h2><span>LexisNexis<sup>&reg;</sup></span><em>FCRA Gateway</em></h2>
    <p id="phone247">24/7 Search and Technical Assistance <strong>1-866-277-8407</strong></p>
    <a name="closeBtn" id="closeBtn" onclick='javascript:fcra("exit");'>Close Window</a>
  </div>
  <form name="TRIMERGE_ESP_REPORT" action="<TMPL_VAR ACTION_REPORT>" method="post">
    <div id="content"><div id="frame">
      <input type="hidden" id="PERMITTED_PURPOSE" name="PERMITTED_PURPOSE" value="<TMPL_VAR PERMITTED_PURPOSE>"/>
      <input type="hidden" id="TM_ESP" name="TM_ESP" value="1"/>
      <div id="tabsBar">
        <ul>
          <li class="active"><a id="tmTab">Tri-Merge Credit Report</a></li>
          <li class="bakgrd">
          	<a href="#" onClick="window.opener.show_post_popup('MYACCOUNT/SHOW_ORDER_TRIMERGE_REPORTS','MyAccountWin','','',1,1,1,1,1,0);">
          		<img src="<TMPL_VAR IMGPATH>/white_arrow.gif" alt=""/> Report Manager
          	</a>
          </li>
        </ul>
      </div>
      <table id="formTable">
        <tbody><tr>
          <td>
            <table>
              <tbody><tr>
                <td>
                <table>
                  <tr>
                    <td>&nbsp;<span class="unifont1boldred">*</span></td>
                    <td><strong>Required Fields</strong>&nbsp; - &nbsp;Note: Last Name, First Name, SSN, DOB, Address,<br/>
                      City, State, Zip fields are all required.</td>
                  </tr>
                </table>
                </td>
              </tr>
              <tr>
                <td>
                <table>
                  <tr>
                    <td><strong>Please check the bureau(s) below</strong></td>
                  </tr>
                  <tr>
                    <td>
                      <input id="CHECKALL" type="checkbox" checked="checked" tabindex="1" value="Y" onclick="javascript:checkall_bureaus()"/>
                      <label for="CHECKALL">&nbsp;All&nbsp;</label>
                      <input name="EQUIFAX" id="EQUIFAX" type="checkbox" checked="checked" tabindex="2" value="Y"/>
                      <label for="EQUIFAX">&nbsp;Equifax&nbsp;</label>
                      <input name="EXPERIAN" id="EXPERIAN" type="checkbox" checked="checked" tabindex="3" value="Y"/>
                      <label for="EXPERIAN">&nbsp;Experian&nbsp;</label>
                      <input name="TRANSUNION" id="TRANSUNION" type="checkbox" checked="checked" tabindex="4" value="Y"/>
                      <label for="TRANSUNION">&nbsp;Trans Union&nbsp;</label>
                    </td>
                  </tr>
                </table>
                </td>
              </tr>
              <tr>
                <td>
                <table>
                  <tr>
                    <td><strong><label for="CASE_NUMBER">Case Number</label></strong></td>
                    <td><strong><label for="CASE_TYPE">Case Type</label></strong></td>
                    <td><strong><label for="ITEM_NUMBER">Item Number</label></strong></td>
                  </tr>
                  <tr>
                    <td class="nsinputs"><input type="text" name="CASE_NUMBER" id="CASE_NUMBER" tabindex="6" size="20" maxlength="10" onblur="this.value=this.value.toUpperCase()"/></td>
                    <td class="nsinputs"><input type="text" name="CASE_TYPE" id="CASE_TYPE" tabindex="7" size="6" maxlength="2" /></td>
                    <td class="nsinputs"><input type="text" name="ITEM_NUMBER" id="ITEM_NUMBER" tabindex="8" size="6" maxlength="3" /></td>
                  </tr>
                </table>
                </td>
              </tr>
              <tr id="name_row_0">
                <td>
                <table>
                  <tbody>
                  <tr>
                    <td><strong>Applicant</strong></td>
                  </tr>
                  <tr>
                    <td><strong><label for="LAST_NAME">Last Name</label>&nbsp;*</strong></td>
                    <td><strong><label for="FIRST_NAME">First Name</label>&nbsp;*</strong></td>
                    <td><strong><label for="MIDDLE_NAME">Middle Name</label></strong></td>
                    <td><strong><label for="SUFFIX">Suffix</label></strong></td>
                  </tr>
                  <tr>
                    <td class="nsinputs"><input type="text" name="LAST_NAME" id="LAST_NAME" tabindex="9" size="18" value="<TMPL_VAR LAST_NAME>" maxlength="20" onblur="this.value=this.value.toUpperCase()"/></td>
                    <td class="nsinputs"><input type="text" name="FIRST_NAME" id="FIRST_NAME" tabindex="10" size="15" value="<TMPL_VAR FIRST_NAME>" maxlength="15" onblur="this.value=this.value.toUpperCase()"/></td>
                    <td class="nsinputs"><input type="text" name="MIDDLE_NAME" id="MIDDLE_NAME" tabindex="11" size="10" value="<TMPL_VAR MIDDLE_NAME>" maxlength="15" onblur="this.value=this.value.toUpperCase()"/></td>
                    <td class="nsinputs"><input type="text" name="SUFFIX" id="SUFFIX" tabindex="12" size="4" value="<TMPL_VAR SUFFIX>" maxlength="3" onblur="this.value=this.value.toUpperCase()"/></td>
                  </tr>
                  <tr>
                    <td><strong>Spouse</strong></td>
                  </tr>
                  <tr>
                    <td><strong><label for="LAST_NAME">Last Name</label></strong></td>
                    <td><strong><label for="FIRST_NAME">First Name</label></strong></td>
                    <td><strong><label for="MIDDLE_NAME">Middle Name</label></strong></td>
                    <td><strong><label for="SUFFIX">Suffix</label></strong></td>
                  </tr>
                  <tr>
                    <td class="nsinputs"><input type="text" name="SPOUSE_LAST_NAME" id="SPOUSE_LAST_NAME" tabindex="14" size="18" value="<TMPL_VAR SPOUSE_LAST_NAME>" maxlength="20" onblur="this.value=this.value.toUpperCase()"/></td>
                    <td class="nsinputs"><input type="text" name="SPOUSE_FIRST_NAME" id="SPOUSE_FIRST_NAME" tabindex="15" size="15" value="<TMPL_VAR SPOUSE_FIRST_NAME>" maxlength="15" onblur="this.value=this.value.toUpperCase()"/></td>
                    <td class="nsinputs"><input type="text" name="SPOUSE_MIDDLE_NAME" id="SPOUSE_MIDDLE_NAME" tabindex="16" size="10" value="<TMPL_VAR SPOUSE_MIDDLE_NAME>" maxlength="15" onblur="this.value=this.value.toUpperCase()"/></td>
                    <td class="nsinputs"><input type="text" name="SPOUSE_SUFFIX" id="SPOUSE_SUFFIX" tabindex="17" size="4" value="<TMPL_VAR SPOUSE_SUFFIX>" maxlength="3" onblur="this.value=this.value.toUpperCase()"/></td>
                  </tr>
                  </tbody>
                </table>
                </td>
              </tr>
              <tr>
                <td>
                <table>
                  <tbody><tr>
                    <td><strong><label for="SSN">SSN</label>&nbsp;*</strong></td>
                    <td><strong><label for="DOB">DOB</label>&nbsp;*</strong></td>
                  </tr>
                  <tr>
                    <td class="nsinputs"><input type="text" name="SSN" id="SSN" size="18" tabindex="18" maxlength="11" value="<TMPL_VAR SSN>" /></td>
                    <td class="nsinputs"><input type="text" name="DOB" id="DOB" size="19" tabindex="19" maxlength="10" value="<TMPL_VAR DOB>" /></td>
                  </tr></tbody>
                </table>
                </td>
              </tr>
              <tr>
				<td class="otherAddr">&nbsp;</td>
              </tr>
              <tr>
                <td>
                  <fieldset>
                  <!--legend>Current Address</legend-->
                    <table>
                      <tbody>
						  <tr colspan=2>
							<td>
								<strong><label for="ADDR_TYPE">Residence</label> <a href="javascript:void(0);" onclick="generic_tip('Address Info','A Residence Address is required for submission of the credit report. An additional address may be provided below.',650);"><img src="<TMPL_VAR IMGPATH>/ico_information.gif" alt="More Information" height="13" hspace="5" width="14"></a></strong>
							</td>
						  </tr>
                      </tbody>
                    </table>
                    <table>
                      <tbody><tr>
                        <td><strong><label for="STREET_ADDRESS">Street Address</label>&nbsp;*</strong></td>
                        <td><strong><label for="CITY">City</label>&nbsp;*</strong></td>
                        <td>&nbsp;<strong><label id="STATE_LBL" for="STATE">State</label>&nbsp;*</strong></td>
                        <td><strong><label for="ZIP">Zip</label>&nbsp;*</strong></td>
                      </tr>
                      <tr>
                        <td class="nsinputs"><input type="text" name="STREET_ADDRESS" id="STREET_ADDRESS" tabindex="20" size="25" value="<TMPL_VAR STREET_ADDRESS>" onblur="this.value=this.value.toUpperCase()"/></td>
                        <td class="nsinputs"><input type="text" name="CITY" id="CITY" tabindex="21" size="15" value="<TMPL_VAR CITY>" onblur="this.value=this.value.toUpperCase()"/></td>
                        <td class="nsinputs"><input type="text" name="STATE" id="STATE" tabindex="22" size="5" maxlength="2" value="<TMPL_VAR STATE>" onblur="this.value=this.value.toUpperCase()"/></td>
                        <td class="nsinputs"><input type="text" name="ZIP" id="ZIP" tabindex="23" size="7" maxlength="5" value="<TMPL_VAR ZIP>" /></td>
                      </tr></tbody>
                    </table>
                  </fieldset>
                </td>
              </tr>
              <tr>
				<td class="otherAddr">&nbsp;</td>
              </tr>
              <tr>
                <td>
                  <fieldset>
                  <!--legend>Current Address</legend-->
                    <table>
                      <tbody><tr>
                        <td><strong><label for="STREET_ADDRESS_2">Street Address</label></strong></td>
                        <td><strong><label for="CITY_2">City</label></strong></td>
                        <td>&nbsp;<strong><label id="STATE_LBL" for="STATE_2">State</label></strong></td>
                        <td><strong><label for="ZIP_2">Zip</label></strong></td>
                      </tr>
                      <tr>
                        <td class="nsinputs"><input type="text" name="STREET_ADDRESS_2" id="STREET_ADDRESS_2" tabindex="25" size="25" value="<TMPL_VAR STREET_ADDRESS>" onblur="this.value=this.value.toUpperCase()"/></td>
                        <td class="nsinputs"><input type="text" name="CITY_2" id="CITY_2" tabindex="26" size="15" value="<TMPL_VAR CITY>" onblur="this.value=this.value.toUpperCase()"/></td>
                        <td class="nsinputs"><input type="text" name="STATE_2" id="STATE_2" tabindex="27" size="5" maxlength="2" value="<TMPL_VAR STATE>" onblur="this.value=this.value.toUpperCase()"/></td>
                        <td class="nsinputs"><input type="text" name="ZIP_2" id="ZIP_2" tabindex="28" size="7" maxlength="5" value="<TMPL_VAR ZIP>" /></td>
                      </tr></tbody>
                    </table>
                    <table>
                      <tbody><tr>
                        <td><strong><label for="ADDR_TYPE_2">Address Type</label></strong></td>
                      </tr>
                      <tr>
                        <td class="nsinputs">
                          <select name="ADDR_TYPE_2" id="ADDR_TYPE_2" tabindex="29">
                            <option value="">Select an Option</option>
                            <option value="Prior">Residence</option>
                            <option value="Prior">Employment</option>
                            <option value="Prior">Education</option>
                          </select>
                        </td>
                      </tr></tbody>
                    </table>
                  </fieldset>
                </td>
              </tr>
              </tbody>
            </table>
          </td>
          <td id="btnTd">
            <div id="searchBlock">
              <input tabindex="30" id="searchBtn" type="button" value="Request Credit Report" onClick="if(!validate()) return false;send_event('<TMPL_VAR NAME=REPORT_EVENT>')"/>
              <br/><br/><br/>
              <input tabindex="31" id="clearSrch" type="button" value="Clear Form" onClick="this.form.reset()"/>
            </div>
          </td>
        </tr>
        <tr>
          <td colspan="2">
            <p>
        Tri-Merge Credit Reports are consumer reporting agency products provided by LexisNexis Risk Solutions Inc. and may only be accessed in compliance with the Fair Credit Reporting Act, 15 U.S.C. 1681, et seq. (the "FCRA").
            </p><p>
        User acknowledges that the FCRA imposes criminal penalties -- including a fine, up to two years in prison, or both -- against anyone who knowingly and willfully obtains information on a consumer from a consumer reporting agency under false pretenses, and other penalties for anyone who obtains such consumer information without a permissible purpose.
            </p>
          </td>
        </tr>
        <tr>
          <td colspan="2"><div id="lineVertRedDot"></div></td>
        </tr>
        <tr>
          <td>
            <table>
              <tr>
                <td><label for="REFERENCE_CODE"><span id="ref_code"><strong>Reference:</strong></span>&nbsp;</label></td>
                <td><input type="text" tabindex="32" size="16" maxlength="30" name="REFERENCE_CODE"<TMPL_IF DISABLE_REF_CODE> DISABLED </TMPL_IF> id="REFERENCE_CODE" value="<TMPL_VAR NAME=REFERENCE_CODE>"/></td>
              </tr>
            </table>
          </td>
        </tr></tbody>
      </table>
      </div>

      <div id="glbdppaTbl">
        <p><TMPL_IF DYNAMIC_GLB_DPPA><a href="javascript:show_post_popup('SEARCH/SHOW_DPPA_CLOSE','DPPAwin','','',1,1,1,1,1,0);">Your DPPA Permissible Use</a>:&nbsp;<span id="dppa_reason"></span><TMPL_ELSE>Your DPPA Permissible Use:&nbsp;<script>document.write(dppa_value);</script></TMPL_IF></p>
        <p><TMPL_IF DYNAMIC_GLB_DPPA><a href="javascript:show_post_popup('SEARCH/SHOW_GLB_CLOSE','GLBwin','','',1,1,1,1,1,0);">Your GLBA Permissible Use</a>:&nbsp;<span id="glb_reason"></span><TMPL_ELSE>Your GLBA Permissible Use:&nbsp;<script>document.write(glb_purpose_value);</script></TMPL_IF></p>
        <p><TMPL_IF DYNAMIC_GLB_DPPA><a href="javascript:show_post_popup('SEARCH/SHOW_DMF_CLOSE','GLBwin','','',1,1,1,1,1,0);">Your DMF Permissible Use</a>:&nbsp;<span id="dmf_reason"></span><TMPL_ELSE>Your DMF Permissible Use:&nbsp;<script>document.write(dmf_purpose_value);</script></TMPL_IF></p>
        <p>
          <a href="javascript:fcra(9999);">Your FCRA Permissible Use</a>:&nbsp;<span id="fcra_text"></span></p>
      </div>
    </div><!-- END wrapper DIV -->
<div id="footer">
      <a href="http://www.lexisnexis.com/terms/copyright.aspx" target="_blank">Copyright &copy;</a> <script>document.write(new Date().getFullYear());</script> LexisNexis. All rights Reserved.&nbsp; <a href="http://www.lexisnexis.com/risk/terms/" target="_blank">Terms &amp; Conditions</a> <span>|</span> <a href="http://www.lexisnexis.com/en-us/terms/privacy-policy.page" target="_blank">Privacy & Security</a>
</div>
    <div id="wrapperoverlay2"></div>
    <div id="systemWorking">
      <img id="sWimg" src="<TMPL_VAR NAME=IMGPATH>/bg_processing.gif" alt="System Processing... Wait!" />
    </div>

	<TMPL_INCLUDE NAME="common_hidden_input.tpl">
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
  </form>


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

</body>
</html>
<!-- end trimerge/show.tpl -->
