<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
   "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<!-- begin trimerge/show.tpl -->
<!-- <TMPL_VAR SERVER_ID> -->
<html xmlns="http://www.w3.org/1999/xhtml" lang="en" xml:lang="en">
<head>
  <title >FCRA Tri-Merge Credit Report</title>
  <meta http-equiv="Content-Script-Type" content="text/javascript"/>
  <link href="<TMPL_VAR CSSPATH>/v2/<TMPL_VAR SKIN_TYPE>/skin.css"
   rel="stylesheet" type="text/css"/>
  <link href="<TMPL_VAR CSSPATH>/v2/<TMPL_VAR APPLICATION_TYPE>/diff.css"
   rel="stylesheet" type="text/css"/>
  <link href="<TMPL_VAR CSSPATH>/v2/accurintSearch.css"
   rel="stylesheet" type="text/css"/>
  <link href="<TMPL_VAR CSSPATH>/v2/accurint.css" rel="stylesheet" type="text/css"/>
  <link href="<TMPL_VAR CSSPATH>/v2/print.css" media="print" rel="stylesheet" type="text/css"/>
  <link href="<TMPL_VAR CSSPATH>/v2/<TMPL_VAR APPLICATION_TYPE>/<TMPL_VAR USER_THEME>.css"
   rel="stylesheet" type="text/css"/>
  <link href="<TMPL_VAR CSSPATH>/v2/trimerge.css" rel="stylesheet" type="text/css"/>
</head>
<body>
  <div id="hd">
    <h2><span>LexisNexis<sup>&reg;</sup></span><em>FCRA Gateway</em></h2>
    <p id="phone247">24/7 Search and Technical Assistance <strong>1-866-277-8407</strong></p>
    <a name="closeBtn" id="closeBtn">Close Window</a>
  </div>
  <form id="TRIMERGE_REPORT_FORM_ID" name="TRIMERGE_REPORT_FORM_ID" action="<TMPL_VAR REPORT_ACTION>" method="post">
    <div id="content"><div id="frame">
      <input type="hidden" id="PERMITTED_PURPOSE" name="PERMITTED_PURPOSE" value=""/>
      <div id="tabsBar">
        <ul>
          <li class="active"><a id="tmTab">Tri-Merge Credit Report</a></li>
          <!-- li><a id="tmTab">Equifax Credit Report</a></li -->
          <li class="bakgrd"><a id="mgr_trig"><img src="<TMPL_VAR IMGPATH>/white_arrow.gif" alt=""/> Report Manager</a></li>
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
                      <input id="CHECKALL" type="checkbox" checked="checked" tabindex="1" value="1"/>
                      <label for="CHECKALL">&nbsp;All&nbsp;</label>
                      <input name="EQUIFAX" id="EQUIFAX" type="checkbox" checked="checked" tabindex="2" value="1"/>
                      <label for="EQUIFAX">&nbsp;Equifax&nbsp;</label>
                      <input name="EXPERIAN" id="EXPERIAN" type="checkbox" checked="checked" tabindex="3" value="1"/>
                      <label for="EXPERIAN">&nbsp;Experian&nbsp;</label>
                      <input name="TRANSUNION" id="TRANSUNION" type="checkbox" checked="checked" tabindex="4" value="1"/>
                      <label for="TRANSUNION">&nbsp;Trans Union&nbsp;</label>
                      &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                      <input name="DISCLOSURE" id="DISCLOSURE" type="checkbox" 
                      <TMPL_UNLESS SHOW_CONSUMER_DISCLOSURE>disabled="disabled" </TMPL_UNLESS>tabindex="5" value="1"/>
                      <label for="DISCLOSURE">Consumer Disclosure?&nbsp;</label>
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
                    <td class="nsinputs"><input type="text" name="CASE_NUMBER" id="CASE_NUMBER" tabindex="6" size="20" maxlength="10" /></td>
                    <td class="nsinputs"><input type="text" name="CASE_TYPE" id="CASE_TYPE" tabindex="7" size="6" maxlength="2" /></td>
                    <td class="nsinputs"><input type="text" name="ITEM_NUMBER" id="ITEM_NUMBER" tabindex="8" size="6" maxlength="3" /></td>
                  </tr>
                </table>
                </td>
              </tr>
              <tr id="name_row_0">
                <td>
                <table>
                  <tbody><tr>
                    <td><strong><label for="LAST_NAME">Last Name</label>&nbsp;*</strong></td>
                    <td><strong><label for="FIRST_NAME">First Name</label>&nbsp;*</strong></td>
                    <td><strong><label for="MIDDLE_NAME">Middle Name</label></strong></td>
                    <td><strong><label for="SUFFIX">Suffix</label></strong></td>
                    <td><strong><label for="SPOUSE">Spouse</label></strong></td>
                    <td id="name_ph_0" rowspan="2" valign="bottom">
                      <input id="add_name_btn" type="button" value="+" tabindex="103"/>
                      <input id="rm_name_btn" type="button" value="-"  tabindex="104"/>
                    </td>
                  </tr>
                  <tr>
                    <td class="nsinputs"><input type="text" name="LAST_NAME" id="LAST_NAME" tabindex="9" size="18" value="<TMPL_VAR LAST_NAME>" maxlength="20"/></td>
                    <td class="nsinputs"><input type="text" name="FIRST_NAME" id="FIRST_NAME" tabindex="10" size="15" value="<TMPL_VAR FIRST_NAME>" maxlength="15"/></td>
                    <td class="nsinputs"><input type="text" name="MIDDLE_NAME" id="MIDDLE_NAME" tabindex="11" size="10" value="<TMPL_VAR MIDDLE_NAME>" maxlength="15"/></td>
                    <td class="nsinputs"><input type="text" name="SUFFIX" id="SUFFIX" tabindex="12" size="4" value="<TMPL_VAR SUFFIX>" maxlength="3"/></td>
                    <td class="nsinputs"><input type="text" name="SPOUSE" id="SPOUSE" tabindex="13" size="15" value="<TMPL_VAR SPOUSE>" maxlength="20"/></td>
                  </tr></tbody>
                </table>
                </td>
              </tr>
              <tr>
                <td>
                  <fieldset>
                  <!--legend>Current Address</legend-->
                    <table>
                      <tbody><tr>
                        <td><strong><label for="STREET_ADDRESS">Street Address</label>&nbsp;*</strong></td>
                        <td><strong><label for="CITY">City</label>&nbsp;*</strong></td>
                        <td>&nbsp;<strong><label id="STATE_LBL" for="STATE">State&nbsp</label></strong></td>
                        <td><strong><label for="ZIP">Zip</label>&nbsp;*</strong></td>
                      </tr>
                      <tr>
                        <td class="nsinputs"><input type="text" name="STREET_ADDRESS" id="STREET_ADDRESS" tabindex="44" size="25" value="<TMPL_VAR STREET_ADDRESS>" /></td>
                        <td class="nsinputs"><input type="text" name="CITY" id="CITY" tabindex="45" size="15" value="<TMPL_VAR CITY>" /></td>
                        <td class="nsinputs"><input type="text" name="STATE" id="STATE" tabindex="46" size="5" maxlength="2" value="<TMPL_VAR STATE>" /></td>
                        <td class="nsinputs"><input type="text" name="ZIP" id="ZIP" tabindex="47" size="7" maxlength="5" value="<TMPL_VAR ZIP>" /></td>
                      </tr></tbody>
                    </table>
                    <table>
                      <tbody><tr>
                        <td><strong><label for="ADDR_TYPE">Address Type</label></strong></td>
                        <td><strong><label for="FROM_MONTH">Since</label></strong></td>
                        <td><label for="FROM_YEAR">&nbsp;</label></td>
                      </tr>
                      <tr>
                        <td class="nsinputs">
                          <select name="ADDR_TYPE" id="ADDR_TYPE" tabindex="48">
                            <option value="0">Select an Option</option>
                            <option value="1">Residence</option>
                            <option value="2">Employment</option>
                            <option value="3">Education</option>
                          </select>
                        </td>
                        <td class="nsinputs">
                          <select name="FROM_MONTH" id="FROM_MONTH" tabindex="49">
                            <option value="">Month</option>
                          </select>
                        </td>
                        <td class="nsinputs">
                          <select name="FROM_YEAR" id="FROM_YEAR" tabindex="50">
                            <option value="">Year</option>
                          </select>
                        </td>
                        <td id="addr_ph_0" rowspan="2" valign="bottom">
                          <input id="add_addr_btn" type="button" value="+" tabindex="105"/>
                          <input id="rm_addr_btn" type="button" value="-" tabindex="106"/>
                        </td>
                      </tr></tbody>
                    </table>
                  </fieldset>
                </td>
              </tr>
              <tr>
                <td>
                  <fieldset id="OTHER_ADDR">
                    <!--legend>Other Addresses</legend-->
                    <table id="addr_row_0">
                      <tbody><tr>
                        <td></td>
                      </tr></tbody>
                    </table>
                  </fieldset>
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
                    <td class="nsinputs"><input type="text" name="SSN" id="SSN" size="18" tabindex="89" maxlength="11" value="<TMPL_VAR SSN>" /></td>
                    <td class="nsinputs"><input type="text" name="DOB" id="DOB" size="19" tabindex="90" maxlength="10" value="<TMPL_VAR DOB>" /></td>
                  </tr></tbody>
                </table>
                </td>
              </tr></tbody>
            </table>
          </td>
          <td id="btnTd">
            <div id="searchBlock">
              <input tabindex="101" id="searchBtn" type="submit" value="Request Credit Report"/>
              <br/><br/><br/>
              <input tabindex="102" id="clearSrch" type="button" value="Clear Form"/>
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
                <td><input type="text" tabindex="91" size="16" maxlength="30" name="REFERENCE_CODE"<TMPL_IF DISABLE_REF_CODE> DISABLED </TMPL_IF> id="REFERENCE_CODE" value="<TMPL_VAR NAME=REFERENCE_CODE>"/></td>
              </tr>
            </table>
          </td>
        </tr></tbody>
      </table>
      </div>

      <div id="glbdppaTbl">
        <p><TMPL_IF DYNAMIC_GLB_DPPA><a href="javascript:show_post_popup('SEARCH/SHOW_DPPA_CLOSE','DPPAwin','','',1,1,1,1,1,0);">Your DPPA Permissible Use</a>:&nbsp;<span id="dppa_reason"></span><TMPL_ELSE>Your DPPA Permissible Use:&nbsp;<span id="dppa_reason"></span></TMPL_IF></p>
        <p><TMPL_IF DYNAMIC_GLB_DPPA><a href="javascript:show_post_popup('SEARCH/SHOW_GLB_CLOSE','GLBwin','','',1,1,1,1,1,0);">Your GLBA Permissible Use</a>:&nbsp;<span id="glb_reason"></span><TMPL_ELSE>Your GLBA Permissible Use:&nbsp;<span id="glb_reason"></span></TMPL_IF></p>
        <p><TMPL_IF DYNAMIC_GLB_DPPA><a href="javascript:show_post_popup('SEARCH/SHOW_DMF_CLOSE','GLBwin','','',1,1,1,1,1,0);">Your DMF Permissible Use</a>:&nbsp;<span id="dmf_reason"></span><TMPL_ELSE>Your DMF Permissible Use:&nbsp;<span id="dmf_reason"></span></TMPL_IF></p>
        <p>
          <a href="javascript:void(0);" id="fcra_perm_link">Your FCRA Permissible Use</a>:
          &nbsp;<span id="fcra_perm"><TMPL_VAR TRIMERGE_REPORT_FCRA></span></p>
      </div> 
    </div><!-- END wrapper DIV -->
    <div id="footer">
          <a href="http://www.lexisnexis.com/" target="_blank"><img src="/bps/368.1/images/v2/LogoCore.gif" alt="LexisNexis logo" width="126" height="25" border="0"/></a>
          <p><a href="http://www.lexisnexis.com/about/" target="_blank">About LexisNexis</a> <span>|</span> <a href="http://www.lexisnexis.com/risk/terms/" target="_blank">Terms &amp; Conditions</a></p>
          <p><a href="http://www.lexisnexis.com/terms/copyright.aspx" target="_blank">Copyright &copy;</a> <script>document.write(new Date().getFullYear());</script> LexisNexis Risk Solutions. All rights reserved.</p>
    </div>
    <div id="wrapperoverlay2"></div>
    <div id="systemWorking">
      <img id="sWimg" src="/bps/368.1/images/v2/bg_processing.gif" alt="System Processing... Wait!" />
    </div>
    <div id="fcra_rem" class="fcra">
      <div class="fcra_rem_title">
        <div class="fcra_title_txt">FCRA Tri-Merge Credit Reports</div>
      </div>
      <div class="fcra_rem_body">
        <p>
        You are now requesting access to the Tri-Merge employment decisioning services.&nbsp; 
        Tri-Merge Credit Reports are consumer reporting agency products provided by LexisNexis Risk
        Solutions Inc. and may only be accessed in compliance with the Fair Credit Reporting Act,
        15 U.S.C. 1681, et seq.
        </p>
        <div>
          <input  class="btn" id="fcra_ok" type="button" value="Certify"/>
          &nbsp; &nbsp; <input  class="btn" id="fcra_cancel" type="button" value="Do Not Certify"/>
        </div>
      </div>
    </div>
    <div id="fcra_rem2" class="fcra">
      <div class="fcra_rem_title">
        <div class="fcra_title_txt">Permitted Use Certification</div>
      </div>
      <div class="fcra_rem_body">
        <p>
        PLEASE SELECT the permissible purpose for which you intend to utilize the information.&nbsp; The purpose you select will govern this entire session.&nbsp; If the purpose for which you are conducting searches changes, you will need to exit the system, re-login and select another purpose.
        </p><p>
      Tri-Merge Credit Reports are consumer reporting agency products provided by LexisNexis Risk Solutions Inc. and may only be accessed in compliance with the Fair Credit Reporting Act, 15 U.S.C. 1681, et seq. (the "FCRA").&nbsp; When you obtain Tri-Merge Credit Reports, you are a "User" of "Consumer Reports" as those terms are defined under the FCRA, and as such certify as follows:
        </p>
        <ol>
          <li>User will use Consumer Reports for the following purpose under the FCRA and such reports will not be used for any other purpose:<br/><br/>
            <a class="fcraPU" name="setPermUse9"> Employment:</a> For Employment Purposes under the FCRA.
          </li>
          <li>User will make a clear and conspicuous written disclosure to the consumer, prior to obtaining the report, in a document that consists solely of the disclosure, that a Consumer Report may be obtained.</li>
          <li>User will obtain prior written authorization from the consumer and retain such authorization for a period of five (5) years.</li>
          <li>The information obtained will not be used in violation of any Federal or state law, including any equal opportunity law or regulation.</li>         <li>If User intends to take any adverse action based in whole or in part on the Consumer Report, a copy of the report and a summary of the consumer's rights will be provided to the consumer prior to taking adverse action.</li>
        </ol>
        <p>
      User acknowledges that the FCRA imposes criminal penalties -- including a fine, up to two years in prison, or both -- against anyone who knowingly and willfully obtains information on a consumer from a consumer reporting agency under false pretenses, and other penalties for anyone who obtains such consumer information without a permissible purpose.
        </p>
      </div>
    </div>
    </div>
    <div id="fcra_rem3" class="fcra">
      <div class="fcra_rem_title">
        <div class="fcra_title_txt">FCRA Tri-Merge Credit Reports</div>
      </div>
      <div class="fcra_rem_body">
        <p>
You are now exiting the Tri-Merge employment decisioning services.  Tri-Merge Credit Reports are consumer reporting agency products provided by LexisNexis Risk Solutions Inc. and may only be accessed in compliance with the Fair Credit Reporting Act, 15 U.S.C. 1681, et seq
        </p>
        <div>
          <input class="btn" id="close_ok" type="button" value="Exit"/>
          &nbsp; &nbsp; <input class="btn" id="close_cancel" type="button" value="Cancel"/>
        </div>
      </div>
    </div>
  </form>
<TMPL_IF NAME="VERIFY_PASSWORD">
    <script type="text/javascript">general_win('<TMPL_VAR ACTION>?SESSION_ID=<TMPL_VAR SESSION_ID>&CSRF_TOKEN=<TMPL_VAR CSRF_TOKEN>&EVENT=LOGIN/DO_VERIFY_PASSWORD','VerifyPassword','575','200');</script>
</TMPL_IF>
  <script type="text/javascript" src="<TMPL_VAR JSPATH>/common.js"></script>
  <script type="text/javascript" src="<TMPL_VAR JSPATH>/shared.js"></script>
  <TMPL_INCLUDE accurint_js.tpl>
  <script type="text/javascript" src="<TMPL_VAR JSPATH>/PopupBox.js"></script>
  <script type="text/javascript" src="<TMPL_VAR JSPATH>/PopupGeoStatesWidget.js"></script>
  <script type="text/javascript" src="<TMPL_VAR JSPATH>/Accurint/Trimerge.js"></script>
  <script type="text/javascript">//<![CDATA[

Accurint.Trimerge.Search = (function(I){

    I.showPermUseSelect = '<TMPL_VAR TRIMERGE_REPORT_FCRA>';

    return I;

})(window.Accurint.Trimerge.Search || {});

var glb_purpose_value = get_glb(<TMPL_VAR GLB_PURPOSE_VALUE>); 
var dppa_value = get_dppa(<TMPL_VAR DPPA_VALUE>); 
var dmf_purpose_value = get_dmf('<TMPL_VAR NAME=DMF_PURPOSE_VALUE>');
$("dppa_reason").update(dppa_value);
$("glb_reason").update(glb_purpose_value);
$("dmf_reason").update(dmf_purpose_value);

 //]]></script>
  <script type="text/javascript" src="<TMPL_VAR JSPATH>/Accurint/Trimerge/Search.js"></script>
</body>
</html>
<!-- end trimerge/show.tpl -->
