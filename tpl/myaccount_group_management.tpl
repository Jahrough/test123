<!-- begin myaccount_group_management.tpl -->

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
          <td class="unifont1bold" align="left" colspan="4"><span class=unifont1boldred>&nbsp;&nbsp;<TMPL_VAR TITLE>:</span></td>
        </tr>
        <tr>
          <td class="unifont1bold" align="right" width="15%"><span class=unifont1boldred>*&nbsp;</span>Report Type:</td>
          <td class="unifont1" nowrap="nowrap"><input type="radio" name="mgmt_reporting" value="group_feature" <TMPL_IF NAME=SET_FEATURE>CHECKED</TMPL_IF> onClick="disable_groups(true);">Management Feature Report (all billgroups)&nbsp;</td>
        </tr>
        <tr>
          <td></td>
          <td class="unifont1" nowrap="nowrap"><input type="radio" name="mgmt_reporting" value="user_group" <TMPL_IF NAME=SET_USER_GROUP>CHECKED</TMPL_IF> onClick="disable_groups(false);">Management Group Report (select billgroup(s) to include)</td>
        </tr>
        <tr>
          <td class="unifont1bold" align="right" width="15%"><span class=unifont1boldred>*&nbsp;</span>Report Format:</td>
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

<!-- start results -->
  <tr>
    <td align="center" class="myaccountborder">
      <table border="0" cellpadding="0" cellspacing="1" width="860" bgcolor="#d0ccd0">

  	<TMPL_IF NAME="MGMT_RESULTS">
  	<tr height="20">
  	  <td class="unifont1" nowrap align="left" valign="middle" colspan="2"><input type="checkbox" name="SELECT_ALL" id="select_all" value="" onClick="selectall(this);" />Click to select/deselect all</td>
  	</tr>

  	<TMPL_LOOP NAME="MGMT_RESULTS">
    	<tr bgcolor="#ffffff">
          <td class="unifont1" nowrap="nowrap" width="1%" align="right"><input type="checkbox" name="MGMT_CHECKBOX" value="<TMPL_VAR COMPANY_ID>" <TMPL_IF NAME=MGMT_CHECKED>CHECKED</TMPL_IF>/></td>
  	  <td class="smallfont1" nowrap valign="top">&nbsp;<TMPL_VAR NAME="COMPANY_NAME"></td>
  	</tr>
  	</TMPL_LOOP>
  	</TMPL_IF>
        <tr>
        <td align="center" colspan="2">
        <table border="0" width="100%">
          <tr>
            <td class="inputlabel" nowrap="nowrap" align="left">&nbsp;<span class=unifont1boldred>Run Report:</span></td>
            <td class="unifont1" nowrap="nowrap" align="center"><input type="button" name="Run" value="Run" onClick="if(! validate_management_report(document.forms[0].mgmt_reporting)) return false; document.forms[0].RUN_REPORT.value=1;send_event('MYACCOUNT/SHOW_MANAGEMENT_REPORTING')">&nbsp;&nbsp;&nbsp;<input type="button" name="Reset" value="Reset" onClick="reset_form();"></td>
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
<span class="smallfont1">&nbsp;<br></span>

<script>
//init
if(document.getElementsByName('mgmt_reporting')[0].checked==true) {
    disable_groups(true);
}
else {
    disable_groups(false);
}


function disable_groups(set) {
    document.getElementById('select_all').disabled=set;
    ur=document.getElementsByName('mgmt_reporting');
        if(ur[0].checked==set) {
            mc=document.getElementsByName('MGMT_CHECKBOX');
            for(i=0;i<mc.length; i++) {
                mc[i].disabled=set;
            }
            return true;
    }
}

function selectall(sa) {
  cbox = document.getElementsByName("MGMT_CHECKBOX");
  for(i=0;i<cbox.length; i++) {
    cbox[i].checked=sa.checked;
  }
}
</script>
<!-- end myaccount_group_management.tpl -->
