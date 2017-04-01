<!-- begin restrict_ip_help.tpl -->

<table border="0" cellpadding="0" cellspacing="0" width="880">
<tr>
  <td nowrap align="center" valign="middle" class="myaccountborder"> 
  <table width="856" cellpadding="0" cellspacing="0" border="0">
    <tr height="12">
      <td height="12" width="856" class="unifont1">&nbsp;</td>
    </tr>
  </table>
  <table width="856" cellpadding="0" cellspacing="0" border="0" class="myaccountbody">
	<tr><td align="center" class="unifont1"><br>&nbsp;
	<a href="javascript:send_event('SECURITY/SHOW_SECURITY', '<TMPL_VAR NAME=ACTION_ADMIN>')"><img border="0" src="<TMPL_VAR NAME=IMGPATH>/BATCH/back.gif"></a>&nbsp;&nbsp;&nbsp;&nbsp;
	<TMPL_IF SHOW_RESTRICT_IP>
		<a href="javascript:send_event('SECURITY/SHOW_RESTRICT_IP')"><img border="0" src="<TMPL_VAR NAME=IMGPATH>/continue.gif"></a>
	</TMPL_IF>
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
	    <td class="unifont1" nowrap align="center" valign="middle"><b>Restrict Access By IP Address</b></td>
	  </tr>


  	  <tr class="myaccountbody">
	  <td align="center">
	  <table border="0" width="80%">
	  <tr>
	  	<td class="largefont1"><BR>
		
<p>
This feature allows you to specify the ip address or addresses your
company and users must come from to access our system. Restricting IP
addresses denies access to anyone that is <b>NOT</b> in the IP address which
you specify. This feature should only be used by network administrators
or experienced users who know the following information: 
</p>

<ol>
<li>The IP address of your company/computer. 
<li>Whether your company utilizes sub-networks (subnets) 
<li>The IP Type (Static or Dynamic) 
</ol>

<p>
A static IP address is one in which your
connection to the Internet gets the same value every time you connect. 
</p>

<p>
A dynamic IP address is one in which a different IP address
is assigned every time you connect to the Internet. This is typically
the case if you have a dial-up connection, a DSL line or a cable modem.
This feature cannot be used if you have a dynamic IP address. If you
are unsure of whether you have a dynamic or static IP address, contact
your Internet Service Provider (ISP). 
</p>

<p>
If you would like assistance with setting up IP Restrictions for your company please contact Customer Support.
</p>	
	<br><br>

		</td>
	  </table>
	  </td>
	  </tr>
    </table>
  </td>
</tr>
</table>
<TMPL_INCLUDE NAME=myaccount_footer.tpl>
<INPUT TYPE="HIDDEN" NAME="IP_ACCESS_ID" VALUE="">
<span class="smallfont1">&nbsp;<br></span>
<!-- end restrict_ip_help.tpl -->
