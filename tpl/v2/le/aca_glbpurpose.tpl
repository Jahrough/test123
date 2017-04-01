<!-- begin le/aca_glbpurpose.tpl -->
<html>
<head>
<title>Terms and Conditions</title>
<link href="<TMPL_VAR NAME='CSSPATH'>/style1.css" rel="stylesheet" type="text/css">
<link href="<TMPL_VAR NAME='CSSPATH'>/<TMPL_VAR NAME=SKIN_TYPE>/skin.css" rel="stylesheet" type="text/css">
<link href="<TMPL_VAR NAME='CSSPATH'>/accurint.css" rel="stylesheet" type="text/css">
<link href="<tmpl_var csspath>/<tmpl_var application_type>/diff.css" rel="stylesheet" type="text/css">
<link href="<TMPL_VAR NAME='CSSPATH'>/<TMPL_VAR NAME=APPLICATION_TYPE>/<TMPL_VAR NAME=USER_THEME>.css" rel="stylesheet" type="text/css">
<script src="<TMPL_VAR NAME='JSPATH'>/common.js"></script>
<script src="<TMPL_VAR NAME='JSPATH'>/shared.js"></script>
<script type="text/javascript">
    function accept_terms()
    {
	document.forms[0].graphview_license_text.disabled = true;
	    send_event('SAML/ACCESS_ATACRAIDS');
    }

    function decline_terms()
    {
	document.forms[0].graphview_license_text.disabled = true;
	send_event('LOGOUT');
    }

</script>

<body <TMPL_UNLESS VERIFY_PASSWORD>onLoad="window.focus();"</TMPL_UNLESS> topmargin="0" leftmargin="0" marginwidth="0" marginheight="0" >
<!--<TMPL_VAR NAME=SERVER_ID>-->

<div id="hd"><h2><span id="hdr_top_logo">Accurint Crime Analysis Terms and Condition</span></h2></div>


<form name="GLB" method="post">
    <TMPL_INCLUDE NAME="common_hidden_input.tpl">
    <input type="hidden" NAME="CURRENT_EVENT" VALUE="<TMPL_VAR NAME=CURRENT_EVENT>">
    <input type="hidden" name="EVENT" value="">
<div align="center">
<br>
<table border="0" cellpadding="0" cellspacing="0">
  <tr>
    <td style="font-family: helvetica,arial; font-size: 12pt; color: #003399;"><B>Terms and Conditions</B></td>
  </tr>
</table>
<table border="0" cellpadding="10" cellspacing="0" width="680">
  <tr>
    <td class="unifont1" width="680" align="left">
Accurint Crime Analysis Terms and Conditions:
    </td>
  <tr>
    <td width="680" align="center" valign="top">

      <textarea name="graphview_license_text" cols="70" rows="20" style="width: 100%; height: 400; font-size: 8pt; font-family: Arial, Sans-Serif;" readonly wrap>

Accurint Crime Analysis is for criminal justice use only. 

The user agrees that the information obtained through Accurint Crime Analysis will only be used to carry out valid, legal, and official law enforcement, public safety, and correctional facility purposes and for no other purpose. 

The information obtained through Accurint Crime Analysis shall not be disclosed to any third party except when necessary to carry out such law enforcement duties. 

Any misuse of this information is contrary to the LexisNexis terms of access and use applicable to you.

      </textarea><br>
      <br>
	<center><input type="button" name="accept" value="I Accept" onclick="accept_terms();" >&nbsp;&nbsp;<input type="button" name="decline" value="I Decline" onclick="decline_terms();"></center>
    </td>
  </tr>
</table>
</div>
<TMPL_INCLUDE NAME="verify_password_trigger.tpl">
</form> 
</body>
</html>
<!-- end le/aca_glbpurpose.tpl -->
