<!-- begin restrict_ip.tpl -->

<table border="0" cellpadding="0" cellspacing="0" width="880">
<tr>
  <td nowrap align="center" valign="middle" class="myaccountborder">
  <table width="856" cellpadding="0" cellspacing="0" border="0">
    <tr height="12">
      <td height="12" width="856" class="unifont1">&nbsp;</td>
    </tr>
  </table>
  <table width="856" cellpadding="0" cellspacing="0" border="0" class="myaccountbody">
	<tr><td align="center" class="largefont1"><br>&nbsp;
	<TMPL_IF RESTRICT_BY_COUNTRY>
	<b>Country IP Restrictions</b>
	<TMPL_ELSE>
	<b>Permitted Access By IP Address or Range</b>
	</TMPL_IF>
	<br><br></td></tr>
    <tr>
      <td align="center" class="unifont1">
	  	<TMPL_IF RESTRICT_BY_COUNTRY>
			<a href="javascript:send_event('SECURITY/SHOW_RESTRICT_IP')">Restrinct by IP</a>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;<b>Restrict by Country</b>
			<!-- this should go in the else 
			<b>Restrinct by IP</b>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;<a href="javascript:send_event('SECURITY/SHOW_RESTRICT_BY_COUNTRY')">Restrict by Country</a>
			-->
		<TMPL_ELSE>
		</TMPL_IF></td>
    </tr>
  </table>
  </td>
</tr>

<tr height="12" class="myaccountborder">
  <td height="12" class="unifont1">&nbsp;</td>
</tr>

<tr>
  <td align="center" class="myaccountborder">
		<TMPL_INCLUDE NAME="security/restrict_ip_body.tpl">
  </td>
</tr>
</table>
<TMPL_INCLUDE NAME=myaccount_footer.tpl>

<INPUT TYPE="HIDDEN" NAME="IP_ACCESS_ID" VALUE="">
<INPUT TYPE="HIDDEN" NAME="CURRENT_STATUS" VALUE="">
<span class="smallfont1">&nbsp;<br></span>
<!-- end restrict_ip.tpl -->
