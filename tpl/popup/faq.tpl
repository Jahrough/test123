<!-- begin faq.tpl -->
<html>
<head>
<title>Frequently Asked Questions</title>
<link href="<TMPL_VAR NAME='CSSPATH'>/<TMPL_VAR NAME=SKIN_TYPE>/skin.css" rel="stylesheet" type="text/css">
<link href="<TMPL_VAR NAME='CSSPATH'>/style1.css" rel="stylesheet" type="text/css">
<script src="<TMPL_VAR NAME='JSPATH'>/common.js"></script>
<script src="<TMPL_VAR NAME='JSPATH'>/shared.js"></script>
<script>
function getpage (faqfile) {
    var faqpath = '<TMPL_VAR NAME=HTMLPATH>/';
    var apptype = '<TMPL_VAR NAME=APPLICATION_TYPE>';
    if (apptype == 'leg' || apptype == 'hea') { faqpath += apptype + '/'; }
    resizeWindow(810, 600, 1, 20, 20);
    location.href = faqpath + faqfile;
    if (document.all) { window.event.returnValue = false; } // Necessary for IE 6.0 bug.
}
</script>
</head>
<body onLoad="window.focus();" topmargin="0" leftmargin="0" marginwidth="0" marginheight="0">
<form name="CONTACT_US" action="<TMPL_VAR NAME=ACTION>" method="post">
      <TMPL_INCLUDE NAME=common_hidden_input.tpl>
      <INPUT type=hidden NAME="SKIN_TYPE" VALUE="<TMPL_VAR NAME=SKIN_TYPE>">
      <INPUT type=hidden NAME="APPLICATION_TYPE" VALUE="<TMPL_VAR NAME=APPLICATION_TYPE>">
      <INPUT type=hidden NAME="EVENT" VALUE="<TMPL_VAR NAME=EVENT>">
<table border="0" cellpadding="0" cellspacing="0" width="100%" class="headerarea">
  <tr>
    <td><img src="<TMPL_VAR NAME=IMGPATH>/<TMPL_VAR NAME=APPLICATION_TYPE>/logo.gif" width="266" height="43" border="0"></td>
    <td><img src="<TMPL_VAR NAME=IMGPATH>/spacer.gif" width="164" height="43"></td>
  </tr>
  <tr>
    <td class="headerseparator" height="2" colspan="2" align="left" valign="bottom"><img border="0" height="2" width="430" src="<TMPL_VAR NAME=IMGPATH>/spacer.gif"></td>
  </tr>
</table>
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
<!-- end faq.tpl -->
