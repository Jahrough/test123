<!-- begin myaccount_activity.tpl -->

<script>
function refresh_page() {
    if (checkdate()) {
	send_event('MYACCOUNT/SHOW_ACTIVITY', '<TMPL_VAR NAME=ACTION_ADMIN>');
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
      <table border="0" cellpadding="2" cellspacing="0">
        <tr>
          <td height="40" class="unifont1"><a href="javascript:void(0);" onClick="displayDatePicker('ACTIVITY_DATE_FROM','below');"><b>From:</b></a>&nbsp;</td>
          <td height="40"><input onClick="displayDatePicker('ACTIVITY_DATE_FROM','below');" type=text name=ACTIVITY_DATE_FROM value="<TMPL_VAR NAME=ACTIVITY_DATE_FROM>" size="8" maxlength=10></td>
          <td height="40" class="unifont1">&nbsp;&nbsp;<a href="javascript:void(0);" onClick="displayDatePicker('ACTIVITY_DATE_TO','below');"><b>To</a>:</b>&nbsp;</td>
          <td height="40"><input onClick="displayDatePicker('ACTIVITY_DATE_TO','below');" type=text name=ACTIVITY_DATE_TO value="<TMPL_VAR NAME=ACTIVITY_DATE_TO>" size="8" maxlength=10></td>
          <td height="40" class="unifont1">&nbsp;&nbsp;&nbsp;&nbsp;</td>
          <td height="40" class="unifont1"><b>Total:</b>&nbsp;</td>
          <td height="40" class="unifont1"><TMPL_VAR NAME=PAGE_RECORDS></td>
          <td height="40" class="unifont1">&nbsp;&nbsp;&nbsp;&nbsp;</td>
          <td height="40"><TMPL_IF NAME=PREV_ON><a href="javascript:send_event('MYACCOUNT/SHOW_ACTIVITY_PREV', '<TMPL_VAR NAME=ACTION_ADMIN>')"><img width="65" height="24" border="0" name="prevadmin" src="<TMPL_VAR NAME=IMGPATH>/previous_page.gif"></a><TMPL_ELSE><img width="65" height="24" border="0" name="prevadmin" src="<TMPL_VAR NAME=IMGPATH>/previous_page_off.gif"></TMPL_IF></td>
          <td height="40"><a href="javascript:refresh_page();"><img width="65" height="24" border="0" name="refreshadmin" src="<TMPL_VAR NAME=IMGPATH>/refresh.gif"></a></td>
          <td height="40"><TMPL_IF NAME=NEXT_ON><a href="javascript:send_event('MYACCOUNT/SHOW_ACTIVITY_NEXT', '<TMPL_VAR NAME=ACTION_ADMIN>')"><img width="65" height="24" border="0" name="nextadmin" src="<TMPL_VAR NAME=IMGPATH>/next_page.gif"></a><TMPL_ELSE><img width="65" height="24" border="0" name="nextadmin" src="<TMPL_VAR NAME=IMGPATH>/next_page_off.gif"></TMPL_IF></td>
          <td height="40"><TMPL_UNLESS IRS><TMPL_UNLESS IRB><TMPL_IF NAME=ACT_EXPORT_ON><a href="javascript:send_event('MYACCOUNT/SHOW_ACTIVITY_EXPORT', '<TMPL_VAR NAME=ACTION_ADMIN>')"><img width="80" height="24" border="0" name="nextadmin" src="<TMPL_VAR NAME=IMGPATH>/btn_export.gif"></a><TMPL_ELSE><img width="80" height="24" border="0" name="nextadmin" src="<TMPL_VAR NAME=IMGPATH>/btn_export_off.gif"></TMPL_IF></TMPL_UNLESS></TMPL_UNLESS></td>
	  
        </tr>
      </table>
      </td>
    </tr>
    
	<TMPL_IF NAME=SYSTEMADMINISTRATOR>
    <tr>
      <td align="center">
      <table border="0" cellpadding="0" cellspacing="0">
	  <TMPL_IF NAME="DATE_ERROR">
		<tr>
		<td colspan="2" align="center"><span class="unifont2"><font color="blue"><b><TMPL_VAR NAME=DATE_ERROR></b>&nbsp;&nbsp;</font></span></td>
		</tr>
	  </TMPL_IF>
        <tr>
		<td height="40"><span class="unifont1"><b>User:</b>&nbsp;&nbsp;</span></td>
		<td height="40" class="unifont1">
		<SELECT NAME=ACTIVITY_LOGIN_FILTER>
		<TMPL_LOOP NAME=USER_SELECT_LOOP>
		<OPTION VALUE="<TMPL_VAR NAME=LOGINID>" <TMPL_IF NAME="LOGIN_SELECT">SELECTED</TMPL_IF>><TMPL_VAR NAME=LOGINID> - <TMPL_VAR NAME=FIRSTNAME> <TMPL_VAR NAME=LASTNAME></OPTION>
		</TMPL_LOOP>
		</SELECT>
		&nbsp;&nbsp;&nbsp;&nbsp;<b><a href="javascript:send_event('MYACCOUNT/SHOW_PREFERENCES')">Time Zone:</a></b> <TMPL_VAR TZNAME> (<TMPL_VAR OFFSET>)
		</td>
		</tr>
	  </table>
      </td>
    </tr>
	</TMPL_IF>
  </table>
  </td>
</tr>

<tr height="12" class="myaccountborder">
  <td height="12" class="unifont1">&nbsp;</td>
</tr>

<tr>
  <td align="center" class="myaccountborder">
	<table border="1" cellpadding="0" cellspacing="1" width="860" bgcolor="#d0ccd0">
	  <tr height="20">
	    <td class="smallfont1" nowrap align="center" valign="middle"><b>Activity</b></td>
	    <td class="smallfont1" nowrap align="center" valign="middle"><b>Search Criteria</b></td>
	    <td class="smallfont1" nowrap align="center" valign="middle"><b>Reference Code</b></td>
<!--    <td class="smallfont1" nowrap align="center" valign="middle"><b>Count</b></td> -->
<!--
            <td class="smallfont1" nowrap align="center" valign="middle"><b>Cost</b></td>
-->
<!--            <td class="smallfont1" nowrap align="center" valign="middle"><b>Source</b></td> -->
	    <td class="smallfont1" nowrap align="center" valign="middle"><b>Date &amp; Time</b>
	    </td>
	  </tr>
      <TMPL_IF NAME="SEARCH_RESULTS">
	  <TMPL_LOOP NAME="SEARCH_RESULTS">
  	  <tr bgcolor="#ffffff">
	    <TMPL_IF NAME="transaction_type">
	      <td class="smallfont1" nowrap valign="top">&nbsp;<TMPL_VAR NAME="transaction_type"></td>
	    <TMPL_ELSE>
	      <td class="smallfont1" nowrap valign="top">&nbsp;</td> 
	    </TMPL_IF>
	   <td class="smallfont1" nowrap valign="top">&nbsp;
	<TMPL_VAR NAME="fname">
	<TMPL_VAR NAME="mname">
	<TMPL_VAR NAME="lname">
	<TMPL_VAR NAME="full_name">
	<TMPL_VAR NAME="address">
	<TMPL_VAR NAME="city">
	<TMPL_VAR NAME="state">
	<TMPL_VAR NAME="zip">
	<TMPL_VAR NAME="zip4">
	<TMPL_VAR NAME="phone">
	<TMPL_VAR NAME="ssn">
	<TMPL_VAR NAME="unique_id">
	<TMPL_VAR NAME="dob">
	<TMPL_VAR NAME="business_name"></td>
<!--	<TMPL_IF NAME="record_count">
		<td class="smallfont1" nowrap valign="top" 
		align="right"><TMPL_VAR NAME="record_count">&nbsp;</td>
	<TMPL_ELSE>
		<td class="smallfont1" nowrap valign="top" align="right">0&nbsp;</td>
	</TMPL_IF>
	<td class="smallfont1" nowrap valign="top">&nbsp;<TMPL_VAR NAME="client_type"></td>
-->
	<TMPL_IF NAME="reference_code">
		<td class="smallfont1" nowrap valign="top">&nbsp;<TMPL_VAR NAME="reference_code"></td>
	<TMPL_ELSE>
		<td class="smallfont1" nowrap valign="top">&nbsp;</td>
	</TMPL_IF>
	<TMPL_IF NAME="dateadded">
		<td class="smallfont1" <TMPL_UNLESS IGNORE_NO_WRAP>nowrap </TMPL_UNLESS>valign="top">&nbsp;<TMPL_VAR NAME="dateadded"></td>
	<TMPL_ELSE>
		<td class="smallfont1" nowrap valign="top">&nbsp;</td>
	</TMPL_IF>
	</tr>
	</TMPL_LOOP>
	<TMPL_ELSE>
	    <TMPL_UNLESS NAME="IRS">
	    <tr bgcolor="#ffffff"><td class="smallfont1" nowrap valign="top" colspan=4>&nbsp;No activity was found.</td></tr>
	    </TMPL_UNLESS>
	</TMPL_IF>

    </table>
   </td>
  </tr>	
</table>
<TMPL_INCLUDE NAME=myaccount_footer.tpl>
<INPUT TYPE="HIDDEN" NAME="NEXT_PAGE_DATE" VALUE="<TMPL_VAR NAME=NEXT_PAGE_DATE>">
<INPUT TYPE="HIDDEN" NAME="PREV_PAGE_DATE" VALUE="<TMPL_VAR NAME=PREV_PAGE_DATE>">
<INPUT TYPE="HIDDEN" NAME="PAGE_COUNT" VALUE="<TMPL_VAR NAME=PAGE_COUNT>">
<INPUT TYPE="HIDDEN" NAME="PAGE_TOTAL" VALUE="<TMPL_VAR NAME=PAGE_TOTAL>">
<INPUT TYPE="HIDDEN" NAME="PAGE_RECORDS" VALUE="<TMPL_VAR NAME=PAGE_RECORDS>">
<INPUT TYPE="HIDDEN" NAME="EXPORT_REPORT" VALUE="">
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
<!-- end myaccount_activity.tpl -->
