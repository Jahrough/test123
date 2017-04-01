<!-- begin v2/popup/faq.tpl -->
<html>
<head>
<title>Frequently Asked Questions</title>
<link href="<TMPL_VAR NAME='CSSPATH'>/<TMPL_VAR NAME=SKIN_TYPE>/skin.css" rel="stylesheet" type="text/css">
<link href="<TMPL_VAR NAME='CSSPATH'>/style1.css" rel="stylesheet" type="text/css">
<link href="<TMPL_VAR NAME='CSSPATH'>/accurint.css" rel="stylesheet" type="text/css">
<link href="<tmpl_var csspath>/<tmpl_var application_type>/diff.css" rel="stylesheet" type="text/css">
<link href="<TMPL_VAR NAME='CSSPATH'>/<TMPL_VAR NAME=APPLICATION_TYPE>/<TMPL_VAR NAME=USER_THEME>.css" rel="stylesheet" type="text/css">
<script src="<TMPL_VAR NAME='JSPATH'>/common.js"></script>
<script src="<TMPL_VAR NAME='JSPATH'>/shared.js"></script>
<script>
function getpage (faqfile) {
    var faqpath = '<TMPL_VAR NAME=HTMLPATH>/';
    var apptype = '<TMPL_VAR NAME=APPLICATION_TYPE>';
    if (apptype == 'leg' || apptype == 'hea' || apptype == 'fcol') { faqpath += apptype + '/'; }
    resizeWindow(810, 600, 1, 20, 20);
    location.href = faqpath + faqfile;
    if (document.all) { window.event.returnValue = false; } // Necessary for IE 6.0 bug.
}
</script>
</head>

<body onLoad="window.focus();" topmargin="0" leftmargin="0" marginwidth="0" marginheight="0">

<div id="hd">
<h2><a trackid="hdr_top_logo">LexisNexis Accurint</a></h2>
</div>

<form name="CONTACT_US" action="<TMPL_VAR NAME=ACTION>" method="post">
      <TMPL_INCLUDE NAME=common_hidden_input.tpl>
      <INPUT type=hidden NAME="SKIN_TYPE" VALUE="<TMPL_VAR NAME=SKIN_TYPE>">
      <INPUT type=hidden NAME="APPLICATION_TYPE" VALUE="<TMPL_VAR NAME=APPLICATION_TYPE>">
      <INPUT type=hidden NAME="EVENT" VALUE="<TMPL_VAR NAME=EVENT>">
<br><br>
<div align="center">
<table border="0" cellpadding="0" cellspacing="0">
  <tr>
    <td colspan="2" class="myaccounttitle"><B>Frequently Asked Questions</B></td>
  </tr>
  <tr>
    <td colspan="2" class="unifont2" valign="top">&nbsp;</td>
  </tr>
  <tr>
    <td class="unifont2" valign="top">&#149;&nbsp;&nbsp;</td>
    <td class="unifont2" valign="top"><a href="Javascript:void(0);" onClick="getpage('faq_general.html');">General Questions</a></td>
  </tr>
  <tr>
    <td class="unifont2" valign="top">&#149;&nbsp;&nbsp;</td>
    <td class="unifont2" valign="top"><a href="Javascript:void(0);" onClick="getpage('faq_billing.html')">Billing, Invoicing and Payment Questions</a></td>
  </tr>
</table>
</div>
</form>
</body>
</html>
<!-- end v2/popup/faq.tpl -->
