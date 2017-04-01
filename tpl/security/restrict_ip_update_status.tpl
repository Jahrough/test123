<!-- begin restrict_ip_update_status.tpl -->

<script language="JavaScript">
function confirm_submit(ip1, ip2) {
    
    var ip1 = document.forms[0][ip1].value;
    var ip2 = document.forms[0][ip2].value;
    var enabled = "<TMPL_VAR CURRENT_STATUS_ENABLED>";
    var todo = '';
    
    if (enabled == 1) { todo = "disable"; }
    else { todo = "enable";}

    if(!ip2) ip2 = ip1;
    if(confirm('You\'re about to '+ todo +' the range ' + ip1 + ' to ' + ip2 + '. \nAre you sure you wish to continue?')) {
	send_event('SECURITY/CHANGE_IP_STATUS');
    }
    else {
	return false;
    }
}
</script>

<table border="0" cellpadding="0" cellspacing="0" width="880">
<tr>
  <td nowrap align="center" valign="middle" class="myaccountborder">
  <table width="860" cellpadding="0" cellspacing="0" border="0">
    <tr height="12">
      <td height="12" width="856" class="unifont1">&nbsp;</td>
    </tr>
  </table>
  <table width="860" cellpadding="0" cellspacing="0" border="0" class="myaccountbody">
	<tr><td align="center" class="unifont1"><br>&nbsp;
	<TMPL_IF ERROR_UNKNOWN><BR><font color="red" size="+1">An unknown Error has occurred.  Please try again in a few minutes.</font></TMPL_IF>
	<br>&nbsp;</td></tr>
  </table>
  </td>
</tr>

<tr height="12" class="myaccountborder">
  <td height="12" class="unifont1">&nbsp;</td>
</tr>

<tr>
  <td align="center" class="myaccountborder">
    <table align=center border="1" cellpadding="0" cellspacing="1" width="856" bgcolor="#d0ccd0">
	  <tr class="myaccountbody">
	    <td colspan=5 class="unifont2" nowrap align="center" valign="middle"><b>Update IP Access Record Status:</b></td>
	  </tr>
	
  	  <tr class="myaccountbody">
	      <td colspan=5 class="unifont1" align="center" nowrap valign="top">&nbsp;<BR><a href="javascript:send_event('SECURITY/SHOW_RESTRICT_IP', '<TMPL_VAR NAME=ACTION_ADMIN>')"><img border="0" src="<TMPL_VAR NAME=IMGPATH>/cancel.gif"></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="javascript:send_event('SECURITY/CHANGE_IP_STATUS')" onclick="return confirm_submit('IP1','IP2')" ><TMPL_IF CURRENT_STATUS_ENABLED><img border="0" src="<TMPL_VAR NAME=IMGPATH>/disable_ip_address.gif"><TMPL_ELSE><img border="0" src="<TMPL_VAR NAME=IMGPATH>/enable_ip_address.gif"></TMPL_IF></a><BR>&nbsp;</td>
	      
	  </tr>
	  <tr class="myaccountbody">
		<td colspan=5 class="unifont1" align="center" valign="top">
 <b>Note:</b> Restricting IP addresses denies access to anyone that is <b>NOT</b> in
 the IP addresses specified.<br>Please review this information with your
 network administrator before making this change.<br><br>
		</td>
	  </tr>

	  <tr bgcolor="#eeeeee">
	    <td nowrap align=center class="smallfont1"><b>From IP</b></td>
	    <td nowrap align=center class="smallfont1"><b>To IP</b></td> 
	    <td nowrap align=center class="smallfont1"><b>Status</b></td>
	    <td nowrap align=center class="smallfont1"><b>Date Changed</b></td>
	  </tr>
	  <tr bgcolor="<TMPL_VAR bgcolor>"> 
	    <td align=center class="smallfont1"><TMPL_VAR IP1></td>
	    <td align=center class="smallfont1"><TMPL_VAR IP2></td>
	    <td align=center class="smallfont1"><TMPL_VAR xstatus></td>
	    <td nowrap align=center class="smallfont1"><TMPL_VAR datechanged></td>
	  </tr>
	  <tr><td class="myaccountbody" colspan=5 height=10></td></tr>
	</table>
	</td>
	</tr>
    </table>
  </td>
</tr>
</table>
<TMPL_INCLUDE NAME=myaccount_footer.tpl>
<INPUT TYPE="HIDDEN" NAME="IP_ACCESS_ID" VALUE="<TMPL_VAR ip_access_id>">
<INPUT TYPE="HIDDEN" NAME="CURRENT_STATUS" VALUE="<TMPL_VAR status>">
<INPUT TYPE="HIDDEN" NAME="IP1" VALUE="<TMPL_VAR IP1>">
<INPUT TYPE="HIDDEN" NAME="IP2" VALUE="<TMPL_VAR IP2>">
<span class="smallfont1">&nbsp;<br></span>
<!-- end restrict_ip_update_status.tpl -->
