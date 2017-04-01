<!-- begin restrict_ip_add.tpl -->

<script>
function chk(f) {
    var num = /^\d+$/;
    if(num.test(f.IP1_1.value) && num.test(f.IP1_2.value) && num.test(f.IP1_3.value) && num.test(f.IP1_4.value)) 
	return 1;
    else
	alert("Please enter a valid From: IP address");
	return 0;
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
	<tr><td align="left" class="unifont1"><br>
	<blockquote>
	<TMPL_INCLUDE NAME="security/restrict_ip_mesg.tpl">
	</blockquote>
	</td></tr>
	<tr>
	<td class="errmsg" align="center">
	<TMPL_IF ERROR_BADIP>Invalid IP Address or IP Range.  Please check these values and try again.</TMPL_IF>
	<TMPL_IF ERROR_BAD_RANGE>Invalid IP Address or IP Range.  Please check these values and try again.</TMPL_IF>
	<TMPL_IF ERROR_ONLY_CLASS_C_IP_ALLOWED>Only Class C IP addresses allowed. (x.y.z.* to x.y.z.*)</TMPL_IF>
	<TMPL_IF ERROR_NOT_IN_POLICY>IP Address or IP Range is not allowed.  This is not an acceptable IP Address or IP Range</TMPL_IF>
	<TMPL_IF ERROR_BLACKLISTED>IP Address is not allowed.  Please contact Customer Service.</TMPL_IF>
	<TMPL_IF ERROR_RECORD_EXISTS>Same IP Address or IP Range already exists. <BR>Please check these values and try again.</TMPL_IF>
	<TMPL_IF ERROR_TYPE_CONFLICT>You currently have active Country Restrictions on this account.  Please disable all active Country Restriction records and try again.</TMPL_IF>
	<TMPL_IF ERROR_NUMRANGES_OVER_LIMIT>You currently have the maximum of <TMPL_VAR NAME=MAXRANGES> IP ranges defined. Please contact Customer Service.</TMPL_IF>
	<TMPL_IF ERROR_UNKNOWN>An unknown Error has occured.  Please try again in a few minutes.</TMPL_IF>
	<br><br>
	</td>
	</tr>
  </table>
  </td>
</tr>

<tr height="12" class="myaccountborder">
  <td height="12" class="unifont1">&nbsp;</td>
</tr>

<tr>
  <td align="center" class="myaccountborder">
    <table border="1" cellpadding="0" cellspacing="1" width="860" bgcolor="#d0ccd0">
	  <tr>
	    <td class="unifont1" nowrap align="center" valign="middle"><b>Add New IP Address:</b> (IP Restriction <b><a href="javascript:void(0)" onclick="general_win('<TMPL_VAR NAME=HTMLPATH>/security_ip_instructions.html','ipaccess_request','500','400');">Help</a></b>
)</td>
	  </tr>
	  <tr class="myaccountbody">
	    <td class="smallfont1" nowrap align="center" valign="bottom"><br><TMPL_IF IP><b>Note:</b> Your current IP address is: <TMPL_VAR NAME="ip"></TMPL_IF><br></td>
	  </tr>

  	  <tr class="myaccountbody">
	      <td class="smallfont1" align="center" nowrap valign="top">&nbsp;<BR>From: <input type="text" name="IP1_1" size="3" maxlength="3" value="<TMPL_VAR IP1_1>">.<input type="text" name="IP1_2" size="3" maxlength="3" value="<TMPL_VAR IP1_2>">.<input type="text" name="IP1_3" size="3" maxlength="3" value="<TMPL_VAR IP1_3>">.<input type="text" name="IP1_4" size="3" maxlength="3" value="<TMPL_VAR IP1_4>">
		  <TMPL_UNLESS STATIC_IP>
		  	&nbsp;&nbsp;&nbsp;&nbsp;To: <input type="text" name="IP2_1" size="3" maxlength="3" value="<TMPL_VAR IP2_1>">.<input type="text" name="IP2_2" size="3" maxlength="3" value="<TMPL_VAR IP2_2>">.<input type="text" name="IP2_3" size="3" maxlength="3" value="<TMPL_VAR IP2_3>">.<input type="text" name="IP2_4" size="3" maxlength="3" value="<TMPL_VAR IP2_4>">
		  <TMPL_ELSE>
		    <input type="hidden" name="IP2_1" value="">
			<input type="hidden" name="IP2_2" value="">
			<input type="hidden" name="IP2_3" value="">
			<input type="hidden" name="IP2_4" value="">
			<input type="hidden" name="IP_TYPE" value="STATIC">
		  </TMPL_UNLESS>
		  <BR>&nbsp;</td>
	      
	  </tr>
  	  <tr class="myaccountbody">
	      <td class="unifont1" align="center" nowrap valign="top">&nbsp;<BR><a href="javascript:if(chk(document.forms[0])) send_event('SECURITY/ADD_IP')"><img border="0" width="64" height="29" src="<TMPL_VAR NAME=IMGPATH>/add.gif"></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="javascript:send_event('SECURITY/SHOW_RESTRICT_IP')"><img border="0" width="64" height="29" src="<TMPL_VAR NAME=IMGPATH>/cancel.gif"></a><BR>&nbsp;</td>
	  </tr>
    </table>
  </td>
</tr>
</table>
<TMPL_INCLUDE NAME=myaccount_footer.tpl>
&nbsp;<br>
<!-- end restrict_ip_add.tpl -->
