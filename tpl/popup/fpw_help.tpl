
<html>
<head>
<title>Forgot Password Help and Information</title>
<link href="<TMPL_VAR NAME='CSSPATH'>/style1.css" rel="stylesheet" type="text/css">
<link href="<TMPL_VAR NAME='CSSPATH'>/<TMPL_VAR NAME=SKIN_TYPE>/skin.css" rel="stylesheet" type="text/css">
<TMPL_IF ENABLE_V2>
<link href="<TMPL_VAR NAME='CSSPATH'>/accurint.css" rel="stylesheet" type="text/css">
<link href="<tmpl_var csspath>/<tmpl_var application_type>/diff.css" rel="stylesheet" type="text/css">
<link href="<TMPL_VAR NAME='CSSPATH'>/<TMPL_VAR NAME=APPLICATION_TYPE>/<TMPL_VAR NAME=USER_THEME>.css" rel="stylesheet" type="text/css">
</TMPL_IF>

<script src="<TMPL_VAR NAME='JSPATH'>/common.js"></script>
<script src="<TMPL_VAR NAME='JSPATH'>/shared.js"></script>
<script src="<TMPL_VAR NAME='JSPATH'>/please_wait.js"></script>

</head>

<body onLoad="window.focus();" topmargin="0" leftmargin="0" marginwidth="0" marginheight="0">

<TMPL_IF ENABLE_V2>
<div id="hd"><span id="hdr_top_logo"></span></div>
</TMPL_IF>

<div align="center">
<br><br><br>
<table border="0" cellpadding="10" cellspacing="0" width="80%">
  <tr>
    <td class="unifont1">
    <b>Forgot Password Feature</b>
    <br><br>
    The Forgot Password feature allows you and your company's users to have a
    temporary password emailed to them following an unsuccessful password entry
    during a login attempt. Note: The user must enter a valid, registered Login ID
    with an incorrect password before the Forgot Password link will appear to them. 
<br><br>
    In order to use this feature, you or another System Administrator must register
    your company. You can register your company by enabling the radio button on the
    Manage Company tab at any time. Following company registration, each user will
    be prompted to register with a valid email address and a security question and
    answer. 
<br><br>
    Utilizing this feature does not vary the terms and conditions of your contract
    with us. Specifically, all security requirements remain in full force and
    effect and any misuse of your account, in connection with or related to the
    Forgot Password feature or otherwise, is strictly the responsibility of you and
    your company.
    </td>
  </tr>
</table>

</div>

</body>
</html>
