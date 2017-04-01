<!-- begin le/bps_glbpurpose.tpl -->
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
	send_event('SEARCH/SAVE_DPPA');
    }

    function decline_terms()
    {
	document.forms[0].graphview_license_text.disabled = true;
	send_event('LOGOUT');
    }

</script>

<body <TMPL_UNLESS VERIFY_PASSWORD>onLoad="window.focus();"</TMPL_UNLESS> topmargin="0" leftmargin="0" marginwidth="0" marginheight="0" >
<!--<TMPL_VAR NAME=SERVER_ID>-->

<div id="hd"><h2><span id="hdr_top_logo">LexisNexis Accurint</span></h2></div>


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
In consideration for the privilege of access to the information in Accurint for Law Enforcement
database ("Accurint LE"), the individual who logged into Accurint LE (the "User") agrees to the
following conditions:
    </td>
  </tr>
  <tr>
    <td width="680" align="center" valign="top">

      <textarea name="graphview_license_text" cols="70" rows="20" style="width: 100%; height: 400; font-size: 8pt; font-family: Arial, Sans-Serif;" readonly wrap>

1.  The User acknowledges that LexisNexis Risk Solutions FL Inc. shall not be liable for the use made of Accurint LE by the User or the consequences of that use, and that the User or User's employing agency, or both, remain responsible for the acts or omissions of such User in connection with access to and use of the information in Accurint LE.

2.  The User is aware that the information found in Accurint LE may contain errors. The User will not take action based solely on this information without independently verifying the validity and accuracy of that information.

3.  The User understands and accepts that any non-compliance with the terms of this Agreement or any unauthorized or improper use or dissemination of information derived from Accurint LE may subject the User or the User's employing agency to discontinuance of service.  Moreover, certain offenses against system security and the improper dissemination of the information contained therein may be punishable offenses under state and federal law.

4.  The User agrees to abide by the following rules and understands that access to Accurint LE is strictly conditioned upon such compliance:
    A. Individual User codes will be used only for authorized law enforcement investigative or intelligence purposes and only in an official capacity.
    B. Individual User passwords will not be disclosed to any other person except as expressly authorized by User's employing agency management.
    C. Individual passwords will be changed if the User reasonably suspects that his or her password has been improperly disclosed or compromised.
    D. Information will only be accessed or printed out for authorized law enforcement investigative or intelligence purposes and only in an official capacity.
    E. <TMPL_IF DMF_PURPOSE_LEVEL_11>By agreeing below you are confirming you have a legitimate fraud prevention interest or you have a legitimate business purpose pursuant to a law, government rule, regulation, or fiduciary duty in order to access the NTIS Limited Access Death Master File (DMF).<TMPL_ELSE><TMPL_IF DMF_PURPOSE_LEVEL_10>By agreeing below you are confirming you have a legitimate fraud prevention interest in order to access the NTIS Limited Access Death Master File (DMF).<TMPL_ELSE><TMPL_IF DMF_PURPOSE_LEVEL_01>By agreeing below you are confirming you have a legitimate business purpose pursuant to a law, government rule, regulation, or fiduciary duty.<TMPL_ELSE>By agreeing below you are confirming you have no Permissible Purpose to access the NTIS Limited Access Death Master File (DMF).</TMPL_IF></TMPL_IF></TMPL_IF>

5. The User acknowledges that he/she is aware of and bound by the terms and conditions of the Accurint for Law Enforcement Application and Agreement entered into by the User's employing agency.

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
<!-- end le/bps_glbpurpose.tpl -->
