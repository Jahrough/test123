<!-- begin webar_disclaimer.tpl-->
<!--<TMPL_VAR NAME=SERVER_ID>-->
<html>
<head>
<title>Important Reminder</title>
<link href="<tmpl_var csspath>/<tmpl_var application_type>/diff.css" rel="stylesheet" type="text/css">
<link href="<TMPL_VAR NAME='CSSPATH'>/accurint.css" rel="stylesheet" type="text/css">
<link href="<TMPL_VAR NAME='CSSPATH'>/<TMPL_VAR NAME=APPLICATION_TYPE>/<TMPL_VAR NAME=USER_THEME>.css" rel="stylesheet" type="text/css">
<script src="<TMPL_VAR NAME='JSPATH'>/common.js"></script>
<script src="<TMPL_VAR NAME='JSPATH'>/shared.js"></script>
</head>

<body topmargin="0" leftmargin="0" marginwidth="0" marginheight="0" class="alternatebody_v2">
<div id="hd">
  <h2>LexisNexis Accurint for Collections</h2>
</div>

<form name="DPPA" action="<TMPL_VAR NAME=ACTION>" method="post">
    <TMPL_INCLUDE NAME=common_hidden_input.tpl>
    <input type="hidden" NAME="CURRENT_EVENT" VALUE="<TMPL_VAR NAME=CURRENT_EVENT>">
    <input type="hidden" name="EVENT" value="">
    <INPUT type=hidden NAME="SKIN_TYPE" VALUE="<TMPL_VAR NAME=SKIN_TYPE>">
    <INPUT type=hidden NAME="APPLICATION_TYPE" VALUE="<TMPL_VAR NAME=APPLICATION_TYPE>">

<div align="center">
<table border="0" cellpadding="5" cellspacing="0" width="90%">
	<tr>
	<td align="left" id="searchResults"><h2>Important Reminder</h2></td>
	</tr>

  <tr>
    <td width="100%" align="center" valign="top">
    <table border="0" width="90%" cellpadding="6" cellspacing="0">
      <tr>
        <td class="medblack" width="90%" align="left">
		You have asked to navigate to your Collect Point Web Collections Manager environment.  
		Please be aware that Accurint for Collections data imported to Collect Point continues to be governed by the terms of your agreement for service (usually titled the &quot;LN Non-FCRA Application & Agreement&quot;) with LexisNexis Risk Solutions FL Inc., including without limitation, prohibitions on disclosure of LexisNexis data to third parties and use in repayment term alteration.  You are solely responsible to ensure that activities conducted on or through the platform and content loaded on the platform comply with contractual and legal requirements.
	</td>
      </tr>
    </table>
    </td>
  </tr>
  <tr>
	<td>
		<div align="center">
		<input type="button" name="prevann" value="Continue" onClick="this.disabled=true;send_event('SAML/ACCESS_WEBAR')">
		&nbsp;<input type="button" value="Cancel" onClick="this.disabled=true;window.close();">
		</div>	


	</td>
  </tr>
  </table>

</div>
</form>
<TMPL_INCLUDE NAME="lexisnexis_footer.tpl">

</body>
</html>
<!-- end webar_disclaimer.tpl-->

