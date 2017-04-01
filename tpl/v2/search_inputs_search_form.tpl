<table id="searchTable" cellpadding="1" cellspacing="0" border="0">
<tbody>
  <tr>
          <td style="padding-left: 10px; padding-top: 5px;" valign="top" <TMPL_IF DDESKTOP_SEARCH>colspan="2"</TMPL_IF>>

     <table cellspacing="0" border="0" width="100%">
     <tbody>
      <TMPL_INCLUDE NAME="inputs_fields/search_inputs_fields.tpl">
     </tbody>
     </table>
    </td>

        <TMPL_UNLESS NAME=DDESKTOP_SEARCH>
        <TMPL_UNLESS NAME=BKY_TOOLS_HIDE_SEARCH_BUTTONS>
          <td style="padding-left: 10px; padding-right: 10px; padding-top: 5px;" valign="top" width="33%">
     <table cellspacing="0" border="0">

    <tr>
      <td style="padding-right: 10px; padding-top: 18px;" valign="top" width="33%">
<TMPL_IF NAME=POWER_BOOLEAN_SEARCH>
        <div style="font-size: 120%; padding-top: 5px;">
          <strong><a href="javascript:quick_tc_toggle();" id="qs_tc_toggle"><TMPL_IF NAME=USE_TC>Quick Search<TMPL_ELSE>Terms &amp; Connectors</TMPL_IF></a></strong>
          <img src="<TMPL_VAR NAME=IMGPATH>/ico_down_arro.gif" alt="" height="6" width="13">
        </div>
        <br><br>
</TMPL_IF>
        <TMPL_INCLUDE NAME="search_buttons.tpl">
      </td>
    </tr>

     <tr>
     <td height="10"></td>
    </tr>

       <tr>
         <td valign="top" align="left">
                <TMPL_INCLUDE NAME="coverage_help.tpl">
  <TMPL_INCLUDE NAME="search_inputs_disclaimer.tpl">
        </td>
       </tr>
     </table>
   </td>
   </TMPL_UNLESS>
   </TMPL_UNLESS>
  </tr>

<!-- Start the next row now -->

        <TMPL_UNLESS DDESKTOP_SEARCH>
        <TMPL_UNLESS TRENDREPORTS>
        <TMPL_UNLESS FILEAREA>
        <tr>
          <td colspan="6" align="center"><div id="lineVertRedDot"></div></td>
        </tr>

        <TMPL_UNLESS SHOW_POLICE_RECORDS_CLAIM_NUMBER>
        <TMPL_UNLESS COURTTRUSTEE>
  <tr>
          <td style="padding-left: 10px; padding-top: 5px; padding-bottom: 10px;" valign="top">
     <table cellspacing="0" border="0">
        <tr>
    <td><b><label for="REF_CODE"><TMPL_IF REFERENCE_CODE_RENAME>Claim #:<span class=unifont1boldred>*</span>&nbsp;<TMPL_ELSE><span id="ref_code">Reference Code:</span>&nbsp;</TMPL_IF></label></b></td>

              <TMPL_IF SOCIALMEDIA_SEARCH>
                <td style="font-size: 9pt;" align="center" valign="middle"><input type=text tabindex="191" size="16" maxlength="<TMPL_IF REFERENCE_CODE_MAX_LENGTH><TMPL_VAR REFERENCE_CODE_MAX_LENGTH><TMPL_ELSE>30</TMPL_IF>" name="REFERENCE_CODE" id="REF_CODE" value="<TMPL_VAR NAME=REFERENCE_CODE>"<TMPL_IF DISABLE_REF_CODE> DISABLED</TMPL_IF>><TMPL_IF REF_CODE_DROP_DOWN> <a href="javascript:void(0);" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','440','120',0,0,0,0,0,0,'','client_number');">Select Reference Number</a></TMPL_IF></td>
              <TMPL_ELSE>
                <td style="font-size: 9pt;" align="center" valign="middle"><input type=text tabindex="91" size="16" maxlength="<TMPL_IF REFERENCE_CODE_MAX_LENGTH><TMPL_VAR REFERENCE_CODE_MAX_LENGTH><TMPL_ELSE>30</TMPL_IF>" name="REFERENCE_CODE" id="REF_CODE" value="<TMPL_VAR NAME=REFERENCE_CODE>"<TMPL_IF DISABLE_REF_CODE> DISABLED</TMPL_IF>><TMPL_IF REF_CODE_DROP_DOWN> <a href="javascript:void(0);" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','440','120',0,0,0,0,0,0,'','client_number');">Select Reference Number</a></TMPL_IF></td>
              </TMPL_IF>
    
                


        <TMPL_UNLESS HIDE_DOL_DATE>
        <TMPL_IF INS>
          <TMPL_INCLUDE NAME="search_inputs_dol_date.tpl">
        </TMPL_IF>
        </TMPL_UNLESS>
        </tr>
     </table>
          </td>
  </tr>
        </TMPL_UNLESS>
        </TMPL_UNLESS>
        </TMPL_UNLESS>
        </TMPL_UNLESS>
        </TMPL_UNLESS>

        <TMPL_IF NAME=COURTTRUSTEE>
            <TMPL_INCLUDE NAME="report/court_trustee_display.tpl">
            <TMPL_IF NAME=COURT_INFO_EXISTS>
            <tr>
                <td colspan="6" align="center"><div id="lineVertRedDot"></div></td>
            </tr>
            </TMPL_IF>
        </TMPL_IF>

</tbody>
</table>
