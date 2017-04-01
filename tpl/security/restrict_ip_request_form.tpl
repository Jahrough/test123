<!--begin restrict_ip_request_form.tpl-->
<html>
<head>
<title>IP Restriction Request</title>
<style type="text/css">
.style2 {FONT-SIZE: 11pt; FONT-FAMILY: arial; color: #ffffff; font-weight: bold; }
.style3 {FONT-SIZE: 8pt; FONT-FAMILY: arial; color: #000000; }
.bs{ color: #ffffff; width: 75px; font-weight: bold; font-family: arial,helvetica; font-size: 8pt; background: #336699; cursor: hand; }
.unifont2 {FONT-SIZE: 10pt; FONT-FAMILY: Arial; }
</style>
<link href="<TMPL_VAR NAME='CSSPATH'>/<TMPL_VAR NAME=SKIN_TYPE>/skin.css" rel="stylesheet" type="text/css">

<script src="<TMPL_VAR NAME='JSPATH'>/validate.js"></script>

<script>
function err() {
    var errmsg = '<TMPL_IF ERROR_BADIP>Invalid IP Address or IP Range.  Please check these values and try again.</TMPL_IF><TMPL_IF ERROR_BAD_RANGE>Invalid IP Range.  Please check these values and try again.</TMPL_IF><TMPL_IF ERROR_ONLY_CLASS_C_IP_ALLOWED>Only Class C IP addresses allowed. (x.y.z.* to x.y.z.*)</TMPL_IF><TMPL_IF ERROR_NOT_IN_POLICY>IP Address or IP Range is not allowed.  This is not an acceptable IP Address or IP Range</TMPL_IF><TMPL_IF ERROR_BLACKLISTED>IP Address is not allowed.  Please contact Customer Service.</TMPL_IF><TMPL_IF ERROR_RECORD_EXISTS>Same IP Address or IP Range already exists. <BR>Please check these values and try again.</TMPL_IF><TMPL_IF ERROR_TYPE_CONFLICT>You currently have active Country Restrictions on this account.  Please disable all active Country Restriction records and try again.</TMPL_IF><TMPL_IF ERROR_NUMRANGES_OVER_LIMIT>You currently have the maximum of <TMPL_VAR NAME=MAXRANGES> IP ranges defined. Please contact Customer Service.</TMPL_IF><TMPL_IF ERROR_UNKNOWN>An unknown Error has occured.  Please try again in a few minutes.</TMPL_IF><TMPL_IF ERROR_BADEMAIL>Please enter a valid email address.</TMPL_IF>';
    if(errmsg) alert(errmsg);

}
</script>

</head>

<TMPL_IF NAME=SEND_RESTRICT_IP_REQUEST_THANKS>

<body topmargin="0" leftmargin="0" marginwidth="0" marginheight="0">

<center>

<table border="0" cellpadding="0" cellspacing="0" width="100%">
  <tr class="errtitle" style="height: 40px;">
    <td class="style2" align="center">THANK YOU</td>
  </tr>
  <tr bgcolor="#000000" style="height: 5px;">
    <td></td>
  </tr>
</table>
<br>
<table border="0" cellpadding="10" cellspacing="0" width="95%">
  <tr>
    <td align="center" class="style3">Your IP access request has been sent. <br><br></td>
  </tr>
  <tr>
    <td align="center"><input class="bs" type="button" value="CLOSE" onClick="window.close();"></td>
  </tr>
</table>


</center>

<TMPL_ELSE>

<body onLoad="window.focus();document.forms[0].FIRSTNAME.focus();err()" topmargin="0" leftmargin="0" marginwidth="0" marginheight="0">

<table border="0" cellpadding="0" cellspacing="0" width="100%">
  <tr class="errtitle" style="height: 40px;">
    <td class="style2" align="center"><b>Send IP Restriction Request</b></td>
  </tr>
  <tr bgcolor="#000000" style="height: 5px;">
    <td></td>
  </tr>
</table>
<br>

<center>
<table border=0 cellspacing=0 cellpadding=0 width=80%>
<tr><td class="unifont2" valign=top>
If you would like assistance setting up IP Restrictions, please fill out
the information below. 
</td>
</tr>
</table>
<br>

<form name=SENDIT action="<TMPL_VAR NAME=ACTION>" method=post onsubmit="return validate()">
<TMPL_INCLUDE NAME=common_hidden_input.tpl>
<input type=hidden name=EVENT value="SECURITY/SEND_RESTRICT_IP_REQUEST">

<table border="0" cellpadding="2" cellspacing="0" width="100%">
  <tr align=center>
    <td align=right class=unifont2><b>First Name:</b></td>
    <td align=left class=unifont2>&nbsp;<input name=FIRSTNAME value="<TMPL_VAR FIRSTNAME>" pattern="generic" size=12 maxlength=25 error_message="Please enter first name"></td>
  </tr>
  <tr align=center>
    <td align=right class=unifont2><b>Last Name:</b></td>
    <td align=left class=unifont2>&nbsp;<input name=LASTNAME value="<TMPL_VAR LASTNAME>" pattern="generic" size=10 maxlength=25 error_message="Please enter last name"></td>
  </tr>
  <tr align=center>
    <td align=right class=unifont2><b>Phone Number:</b></td>
    <td align=left class=unifont2>&nbsp;<input name=PHONE_VOICE1 value="<TMPL_VAR PHONE_VOICE1>"  pattern="phone" error_message="Please enter a valid phone number in the format (xxx) xxx-xxxx" size=13 maxlength=16></td>
  </tr>
  <tr align=center>
    <td align=right class=unifont2><b>Email Address:</b></td>
    <td align=left class=unifont2>&nbsp;<input name=EMAIL_ADDR value="<TMPL_VAR EMAIL_ADDR>" pattern="email" error_message="Please enter a valid email address in form user@host.com" size=24 maxlength=50></td>
  </tr>
</table>
<br>
<table cellspacing=0 cellpadding=2 align=center width=400>
  <tr>
    <td colspan=3 height=20 class="unifont2">Please enter the IP address or IP Address ranges for your company below. If you only have a single IP address, simply leave the 'To:' field
    blank. If you are not sure about your IP addresses then please speak
    with your network administrator. 
    <br><br></td>
  </tr>
   
  <tr align=center>
  <td colspan=3 align=center class=unifont2>
Your current IP is: <b style="color:#0000ff"><TMPL_VAR IP></b><br><br>
  </td>
  </tr>
 
  <TMPL_LOOP IPS>
  <tr align=center>
    <td align=right class=unifont2>From: <input name=IP_START value="<TMPL_VAR IP_START>" pattern="ip" optional="<TMPL_VAR OPTIONAL>" error_message="Please enter a valid From IP address in form xxx.xxx.xxx.xxx" size=15 maxlength=15></td>
    <td width=20>&nbsp;</td> 
    <td align=left class=unifont2>To: <input name=IP_STOP value="<TMPL_VAR IP_STOP>" pattern="ip" optional="1" error_message="Please enter a valid To IP address in form xxx.xxx.xxx.xxx" size=15 maxlength=15></td>
  </tr>
  </TMPL_LOOP>
  
  <tr align=center>
    <td colspan=3 align=center class=unifont2><br>If you have any questions or comments please enter them below:
    <textarea style="font-size:10pt" name=COMMENTS row=5 cols=45><TMPL_VAR COMMENTS></textarea>
    </td>
  </tr>

  <tr>
    <td colspan=3 align=center>
	<br>
      <input type=submit value=" Send Request ">
    </td>
  </tr>
</table>
</form>

</center>

</TMPL_IF>

</body>
</html>
<!--end restrict_ip_request_form.tpl-->
