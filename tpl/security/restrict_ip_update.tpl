<!-- begin restrict_ip_update.tpl -->

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
	<TMPL_INCLUDE NAME="security/restrict_ip_mesg.tpl">
	<TMPL_IF ERROR_BADIP><BR><font color="red" size="+1">Invalid IP Address or Subnet Mask.  Please check these values and try again.</font></TMPL_IF>
	<TMPL_IF ERROR_UNKNOWN><BR><font color="red" size="+1">An unknown Error has occured.  Please try again in a few minutes.</font></TMPL_IF>
	<br>&nbsp;</td></tr>
  </table>
  </td>
</tr>

<tr height="12" class="myaccountborder">
  <td height="12" class="unifont1">&nbsp;</td>
</tr>

<tr>
  <td align="center" class="myaccountborder">
    <table border="1" cellpadding="0" cellspacing="1" width="856" bgcolor="#d0ccd0">
	  <tr>
	    <td class="unifont1" nowrap align="center" valign="middle"><b>Update Restrict Access By IP Address:<TMPL_IF USER_IP>&nbsp;&nbsp;&nbsp;&nbsp;Your current IP: <TMPL_VAR USER_IP></TMPL_IF></b></td>
	  </tr>


  	  <tr class="myaccountbody">
	      <td class="smallfont1" align="center" nowrap valign="top">&nbsp;<BR>IP Address: <input type="text" name="IP1" size="3" maxlength="3" value="<TMPL_VAR IP1>">.<input type="text" name="IP2" size="3" maxlength="3" value="<TMPL_VAR IP2>">.<input type="text" name="IP3" size="3" maxlength="3" value="<TMPL_VAR IP3>">.<input type="text" name="IP4" size="3" maxlength="3" value="<TMPL_VAR IP4>">&nbsp;&nbsp;&nbsp;&nbsp;Subnet Mask: <input type="text" name="SUB1" size="3" maxlength="3" value="<TMPL_VAR SUB1>">.<input type="text" name="SUB2" size="3" maxlength="3" value="<TMPL_VAR SUB2>">.<input type="text" name="SUB3" size="3" maxlength="3" value="<TMPL_VAR SUB3>">.<input type="text" name="SUB4" size="3" maxlength="3" value="<TMPL_VAR SUB4>">&nbsp;&nbsp;&nbsp;Active: <input type="checkbox" name="STATUS" value="1" <TMPL_IF STATUS>CHECKED</TMPL_IF>><BR>&nbsp;</td>
	      
	  </tr>
  	  <tr class="myaccountbody">
	      <td class="unifont1" align="center" nowrap valign="top">&nbsp;<BR><a href="javascript:send_event('SECURITY/UPDATE_IP', '<TMPL_VAR NAME=ACTION_ADMIN>')"><img border="0" width="64" height="29" src="<TMPL_VAR NAME=IMGPATH>/update_generic2.gif"></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="javascript:send_event('SECURITY/SHOW_RESTRICT_IP', '<TMPL_VAR NAME=ACTION_ADMIN>')"><img border="0" width="64" height="29" src="<TMPL_VAR NAME=IMGPATH>/cancel.gif"></a><BR>&nbsp;</td>
	  </tr>
    </table>
  </td>
</tr>
</table>
<TMPL_INCLUDE NAME=myaccount_footer.tpl>
<INPUT TYPE="HIDDEN" NAME="IP_ACCESS_ID" VALUE="<TMPL_VAR IP_ACCESS_ID>">
<span class="smallfont1">&nbsp;<br></span>
<!-- end restrict_ip_update.tpl -->
