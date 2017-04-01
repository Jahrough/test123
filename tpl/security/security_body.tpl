<!-- begin security_body.tpl -->

<script>
function refresh_page() {
    if (checkdate()) {
	send_event('SECURITY/SHOW_SECURITY', '<TMPL_VAR NAME=ACTION_ADMIN>')
    }
}
</script>

<table border="0" cellpadding="0" cellspacing="0" width="880">
<tr>
  <td nowrap align="center" valign="middle" class="myaccountborder">
  <table width="856" cellpadding="0" cellspacing="0" border="0">
    <tr height="12">
      <td align="center" height="12" class="unifont1">&nbsp;</td>
    </tr>
  </table>
  <table width="856" cellpadding="0" cellspacing="0" border="0" class="myaccountbody">
    <tr>
      <td align="center">
      <table border="0" cellpadding="2" cellspacing="0">
        <tr height="40">
          <td height="40" class="unifont1"><b>Type:</b>&nbsp;</td>
          <td height="40"><input type="radio" value="" name="STATUS" class="myaccountbody" <TMPL_VAR NAME=ALL_CHECKED>></td>
          <td height="40" class="unifont1">All&nbsp;</td>
          <td height="40"><input type="radio" value="SUCCESS" name="STATUS" class="myaccountbody" <TMPL_VAR NAME=SUCCESS_CHECKED>></td>
          <td height="40" class="unifont1">Success&nbsp;</td>
          <td height="40"><input type="radio" value="FAILED" name="STATUS" class="myaccountbody" <TMPL_VAR NAME=FAILED_CHECKED>></td>
          <td height="40" class="unifont1">Failed&nbsp;</td>
          <td height="40" class="unifont1"><a href="javascript:void(0);" onClick="displayDatePicker('SECURITY_DATE_FROM','below');"><b>From</a>:</b>&nbsp;</td>
          <td height="40"><input onClick="displayDatePicker('SECURITY_DATE_FROM','below');" type=text name=SECURITY_DATE_FROM value="<TMPL_VAR NAME=SECURITY_DATE_FROM>" size="8" maxlength=10></td>
          <td height="40" class="unifont1">&nbsp;&nbsp;<a href="javascript:void(0);" onClick="displayDatePicker('SECURITY_DATE_TO','below');"><b>To</a>:</b>&nbsp;</td>
          <td height="40"><input onClick="displayDatePicker('SECURITY_DATE_TO','below');" type=text name=SECURITY_DATE_TO value="<TMPL_VAR NAME=SECURITY_DATE_TO>" size="8" maxlength=10></td>
          <td height="40" class="unifont1">&nbsp;&nbsp;&nbsp;&nbsp;</td>
          <td height="40" class="unifont1"><b>Total:</b>&nbsp;</td>
          <td height="40" class="unifont1"><TMPL_VAR NAME=PAGE_RECORDS></td>
          <td height="40" class="unifont1">&nbsp;&nbsp;&nbsp;&nbsp;</td>
          <td height="40"><TMPL_IF NAME=PREV_ON><a href="javascript:send_event('SECURITY/SHOW_SECURITY_PREV', '<TMPL_VAR NAME=ACTION_ADMIN>')"><img width="65" height="24" border="0" name="prevadmin" src="<TMPL_VAR NAME=IMGPATH>/previous_page.gif"></a><TMPL_ELSE><img width="65" height="24" border="0" name="prevadmin" src="<TMPL_VAR NAME=IMGPATH>/previous_page_off.gif"></TMPL_IF></td>
          <td height="40"><a href="javascript:refresh_page();"><img width="65" height="24" border="0" name="refreshadmin" src="<TMPL_VAR NAME=IMGPATH>/refresh.gif"></a></td>
          <td height="40"><TMPL_IF NAME=NEXT_ON><a href="javascript:send_event('SECURITY/SHOW_SECURITY_NEXT', '<TMPL_VAR NAME=ACTION_ADMIN>')"><img width="65" height="24" border="0" name="nextadmin" src="<TMPL_VAR NAME=IMGPATH>/next_page.gif"></a><TMPL_ELSE><img width="65" height="24" border="0" name="nextadmin" src="<TMPL_VAR NAME=IMGPATH>/next_page_off.gif"></TMPL_IF></td>
	  
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
		<td colspan="3" align="center"><span class="unifont2"><font color="blue"><b><TMPL_VAR NAME=DATE_ERROR></b>&nbsp;&nbsp;</font></span></td>
		</tr>
	  </TMPL_IF>
        <tr>
		<td height="40" class="unifont1"><b><a href="javascript:send_event('SECURITY/SHOW_RESTRICT_IP_HELP')"><img border="0" src="<TMPL_VAR NAME=IMGPATH>/restrict_by_ip.gif"></a></b>&nbsp;&nbsp;</td>
		<td height="40" class="unifont1"><img border="0" height="1" width="30" src="<TMPL_VAR NAME=IMGPATH>/spacer.gif"></td>
		<td height="40"><span class="unifont1"><b>User:</b>&nbsp;&nbsp;</span></td>
		<td  height="40" class="unifont1">
		<SELECT NAME=SECURITY_LOGIN_FILTER>
		<TMPL_LOOP NAME=USER_SELECT_LOOP>
		<OPTION VALUE="<TMPL_VAR NAME=LOGINID>" <TMPL_IF NAME="LOGIN_SELECT">SELECTED</TMPL_IF>><TMPL_VAR NAME=LOGINID> - <TMPL_VAR NAME=FIRSTNAME> <TMPL_VAR NAME=LASTNAME></OPTION>
		</TMPL_LOOP>
		</SELECT><img border="0" height="1" width="30" src="<TMPL_VAR NAME=IMGPATH>/spacer.gif">
		<b><a href="javascript:send_event('MYACCOUNT/SHOW_PREFERENCES')">Time Zone:</a></b> <TMPL_VAR TZNAME> (<TMPL_VAR OFFSET>)

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

<!--
	&nbsp; Show Status:	
	<select name=STATUS>
	<option	value="">ALL</option>
	<option	value="SUCCESS"<TMPL_IF NAME=SUCCESS_CHECK> SELECTED</TMPL_IF>>Success</option>
	<option	value="FAILED"<TMPL_IF NAME=FAILED_CHECK> SELECTED</TMPL_IF>>Failure</option>
	</select>	
	<input type=text name=SECURITY_COUNT value="<TMPL_VAR NAME=SECURITY_COUNT>" size=4>&nbsp;&nbsp;<a href="javascript:send_event('SECURITY/SHOW_SECURITY')">Refresh</a><br>
-->	

<tr>
  <td align="center" class="myaccountborder">
    <table border="1" cellpadding="0" cellspacing="1" width="860" bgcolor="#d0ccd0">
	  <tr>
	    <td class="smallfont1" nowrap align="center" valign="middle"><b>Activity</b></td>
	    <td class="smallfont1" nowrap align="center" valign="middle"><b>Status</b></td>
	    <td class="smallfont1" nowrap align="center" valign="middle"><b>Loginid</b></td>
	    <td class="smallfont1" nowrap align="center" valign="middle"><b>IP, Browser</b></td>
	    <td class="smallfont1" nowrap align="center" valign="middle"><b>Source</b></td>
	    <td class="smallfont1" nowrap align="center" valign="middle"><b>Date &amp; Time</b> 
	    	    </td>
	  </tr>


	  <TMPL_LOOP NAME="SEARCH_RESULTS">
  	  <tr bgcolor="#ffffff">
	      <td class="smallfont1" nowrap valign="top">&nbsp;<TMPL_VAR NAME="activity"></td>
	      
	    <td class="smallfont1" nowrap valign="top">&nbsp;
		<TMPL_VAR NAME="status">
		</td>


		<td class="smallfont1" nowrap valign="top">&nbsp;<TMPL_VAR NAME="loginid"></td>

	   
	    <td class="smallfont1" valign="top">&nbsp;
		<TMPL_VAR NAME="ip"><br>
		&nbsp;<TMPL_VAR NAME="browser">
	    </td>
	    <td class="smallfont1" nowrap valign="top">&nbsp;<TMPL_VAR NAME="client_type"></td>

	    <td class="smallfont1" nowrap valign="top">&nbsp;<TMPL_VAR NAME="timestamp"></td>
	  </tr>
	  </TMPL_LOOP>
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
<span class="smallfont1">&nbsp;<br></span>
<!-- end security_body.tpl -->
