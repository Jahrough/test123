<!-- begin myaccount_user_reporting.tpl -->
<!-- used for user and group activity reports -->

<script>
function refresh_page() {
    if (checkdate()) {
	send_event('MYACCOUNT/SHOW_USER_REPORTING', '<TMPL_VAR NAME=ACTION_ADMIN>');
    }
}
</script>

<table border="0" cellpadding="0" cellspacing="0" width="880">
<tr>
  <td nowrap align="center" valign="middle" class="myaccountborder"> 
  <table width="856" cellpadding="0" cellspacing="0" border="0">
    <tr height="12">
      <td height="12" width="856" class="unifont1">&nbsp;</td>
    </tr>
  </table>
  <table width="860" cellpadding="0" cellspacing="0" border="0" class="myaccountbody">
    <tr>
      <td align="center">
      <table border="0" cellpadding="2" cellspacing="0" width="100%">
        <tr>
          <td class="unifont1bold" align="left" nowrap="nowrap"><span class=unifont1boldred>&nbsp;&nbsp;<TMPL_VAR TITLE>:</span></td>
        </tr>
        <tr>
          <td class="unifont1" align="left" colspan="5">&nbsp;&nbsp;Choose a User Type below and click "Run" to generate a current User List.</span></td>
        </tr>
        <tr>
          <td align="right" width="15%"><span class=unifont1boldred>*&nbsp;</span><span class="unifont1bold">User Type:</span>
          </td>
          <td class="unifont1" nowrap="nowrap">
          <span class="unifont1">
          <input type="radio" name="user_type" value="Active" <TMPL_IF NAME=SET_ACTIVE>CHECKED</TMPL_IF>/>Active&nbsp;
          
          <input type="radio" name="user_type" value="Inactive" <TMPL_IF NAME=SET_INACTIVE>CHECKED</TMPL_IF>/>Inactive
          <input type="radio" name="user_type" value="All" <TMPL_IF NAME=SET_ALL>CHECKED</TMPL_IF>/>All</span>
          </td>
        </tr>
        <tr>
          <td class="unifont1bold" align="right"><span class=unifont1boldred>*&nbsp;</span>Report Format:</td>
          <td class="unifont1" nowrap="nowrap">
          &nbsp;&nbsp;<select name="OUTPUT_FORMAT">
          <option value="pdf" <TMPL_IF NAME='PDF'> selected</TMPL_IF>>PDF</option>
          <option value="html" <TMPL_IF NAME='HTML'> selected</TMPL_IF>>HTML</option>
          <option value="csv" <TMPL_IF NAME='Excel'> selected</TMPL_IF>>Excel</option>
          </td>
        </tr>
      </table>
      </td>
    </tr>
  </table>
  </td>
</tr>

<tr height="12" class="myaccountborder">
  <td height="12" class="unifont1">&nbsp;</td>
</tr>

<!-- start activity results -->
  <tr>
    <td align="center" class="myaccountborder">
      <table border="0" cellpadding="0" cellspacing="1" width="860" bgcolor="#d0ccd0">
        <tr>
        <td align="center" colspan="2">
        <table border="0" width="100%">
          <tr>
            <td class="inputlabel" nowrap="nowrap" align="left">&nbsp;<span class=unifont1boldred>Run Report:</span></td>
            <td class="unifont1" nowrap="nowrap" align="center"><input type="button" name="Run" value="Run" onClick="document.forms[0].RUN_REPORT.value=1;send_event('MYACCOUNT/SHOW_USER_REPORTING')">&nbsp;&nbsp;&nbsp;<input type="button" name="Reset" value="Reset" onClick="reset_form();"></td>
            <td class="inputlabel" nowrap="nowrap" align="right">&nbsp;<span class=unifont1boldred>*&nbsp;Required Fields</span></td>
          </tr>
        </table>
        </td>
        </tr>
      </table>
     </td>
    </tr>	
<TMPL_IF NAME=REPORT_SUBMITTED>
    <tr>	
      <td align="center" class="myaccountborder">
  	<table border="0" cellpadding="0" cellspacing="1" width="860" bgcolor="#d0ccd0">
  	  <tr height="20">
  	    <td class="unifont1bold" nowrap align="center" valign="middle" style="background-color:yellow;">Your report request has been submitted. Once available, you can view it in the Report Manager.
            </td>
          </tr>
        </table>
      </td>
    </tr>	
</TMPL_IF>
<TMPL_IF NAME=ERROR_MSG>
    <tr>	
      <td align="center" class="myaccountborder">
  	<table border="0" cellpadding="0" cellspacing="1" width="860" bgcolor="#d0ccd0">
  	  <tr height="20">
  	    <td class="smallfont1" nowrap align="center" valign="middle" class=unifont1boldred>There was a problem submitting your report request, please contact your system administrator. 
            </td>
          </tr>
        </table>
      </td>
    </tr>	
</TMPL_IF>
</table>
<TMPL_INCLUDE NAME=myaccount_footer.tpl>
<INPUT TYPE="HIDDEN" NAME="NEXT_PAGE_DATE" VALUE="<TMPL_VAR NAME=NEXT_PAGE_DATE>">
<INPUT TYPE="HIDDEN" NAME="PREV_PAGE_DATE" VALUE="<TMPL_VAR NAME=PREV_PAGE_DATE>">
<INPUT TYPE="HIDDEN" NAME="PAGE_COUNT" VALUE="<TMPL_VAR NAME=PAGE_COUNT>">
<INPUT TYPE="HIDDEN" NAME="PAGE_TOTAL" VALUE="<TMPL_VAR NAME=PAGE_TOTAL>">
<INPUT TYPE="HIDDEN" NAME="PAGE_RECORDS" VALUE="<TMPL_VAR NAME=PAGE_RECORDS>">
<INPUT TYPE="HIDDEN" NAME="RUN_REPORT" VALUE="">
<!--
<TMPL_IF HAS_FCRA_NON_FCRA>
<INPUT TYPE="HIDDEN" NAME="FCRA_NEXT_PAGE_DATE" VALUE="<TMPL_VAR NAME=FCRA_NEXT_PAGE_DATE>">
<INPUT TYPE="HIDDEN" NAME="FCRA_PREV_PAGE_DATE" VALUE="<TMPL_VAR NAME=FCRA_PREV_PAGE_DATE>">
<INPUT TYPE="HIDDEN" NAME="FCRA_PAGE_COUNT" VALUE="<TMPL_VAR NAME=FCRA_PAGE_COUNT>">
<INPUT TYPE="HIDDEN" NAME="FCRA_PAGE_TOTAL" VALUE="<TMPL_VAR NAME=FCRA_PAGE_TOTAL>">
<INPUT TYPE="HIDDEN" NAME="FCRA_PAGE_RECORDS" VALUE="<TMPL_VAR NAME=FCRA_PAGE_RECORDS>">
</TMPL_IF>
-->
<span class="smallfont1">&nbsp;<br></span>
<!-- end myaccount_user_reporting.tpl -->
