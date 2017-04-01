<!-- Begin short_carfax_report.tpl -->
<!--<TMPL_VAR NAME=SERVER_ID>-->
<html>
<head>
<title>Carfax Report Options</title>
<link href="<TMPL_VAR NAME='CSSPATH'>/style1.css" rel="stylesheet" type="text/css">
<link href="<TMPL_VAR NAME='CSSPATH'>/<TMPL_VAR NAME=SKIN_TYPE>/skin.css" rel="stylesheet" type="text/css">
<script src="<TMPL_VAR NAME='JSPATH'>/common.js"></script>
<script src="<TMPL_VAR NAME='JSPATH'>/shared.js"></script>
<script src="<TMPL_VAR NAME='JSPATH'>/pricing.js"></script>
<script src="<TMPL_VAR NAME='JSPATH'>/report.js"></script>
<script src="<TMPL_VAR NAME='JSPATH'>/please_wait.js"></script>
</head>
<script>
function validate()
{
   if (document.forms[0].CARFAX_AGREE) {
      if ((!document.forms[0].CARFAX_AGREE[0].checked && !document.forms[0].CARFAX_AGREE[1].checked) ||
          document.forms[0].CARFAX_AGREE[1].checked) {
         alert('You must check "I Agree" to acknowledge the Terms & Conditions before proceeding.');
         return false;
      }
      return true;
   }
}
</script>

<body onLoad="window.focus();" topmargin="0" leftmargin="0" marginwidth="0" marginheight="0">

<div id="pleasewait" style="position:absolute; visibility:hidden; z-index:1000;"><img alt="" src="<TMPL_VAR NAME=IMGPATH>/arrows_wait_full.gif" id="pw" name="pw" width="400" height="120" border="0"></div>

<form name="SHORT_CARFAX_REPORT" action="<TMPL_VAR NAME=ACTION_REPORT>" method="post"> 

      <TMPL_INCLUDE NAME=common_hidden_input.tpl>
      <INPUT type=hidden NAME="SKIN_TYPE" VALUE="<TMPL_VAR NAME=SKIN_TYPE>">
      <INPUT type=hidden NAME="APPLICATION_TYPE" VALUE="<TMPL_VAR NAME=APPLICATION_TYPE>">
      <INPUT type=hidden NAME="EVENT" VALUE="REPORT/CARFAX_REPORT">
      <INPUT type=hidden NAME="REFERENCE_CODE" VALUE="<TMPL_VAR REFERENCE_CODE>">
      <INPUT TYPE=HIDDEN NAME="DOL_DATE" VALUE="<TMPL_VAR NAME=DOL_DATE>">
      <INPUT type=hidden NAME="VIN" VALUE="<TMPL_VAR NAME="VIN">">
      
<div align="center" id="mainbody">

<table border="0" cellpadding="0" cellspacing="0" width="100%" height="10">
  <tr height="10">
    <td height="10" class="unifont2pt">&nbsp;</td>
  </tr>
</table>

<table border="0" cellpadding="0" cellspacing="0" width="100%" height="10">
  <tr height="10">
    <td height="10" class="unifont2pt">&nbsp;</td>
  </tr>
</table>
<table border="1" cellpadding="0" cellspacing="0" width="640" bgcolor="#ffffff">
  <tr>
    <td align="center" valign="top">
    <table border="0" cellpadding="2" cellspacing="0">
      <tr>
	      <td valign="top" align="center" class="myaccountlabel">VIN</td>
      </tr>
      <tr>
	      <td valign="top" align="center" class="smallfont1"><TMPL_VAR NAME=VIN></td>
      </tr>
    </table>
    </td>
  </tr>
</table>
<table border="0" cellpadding="0" cellspacing="0" width="100%" height="10">
  <tr height="10">
    <td height="10" class="unifont2pt">&nbsp;</td>
  </tr>
</table>
<TMPL_INCLUDE NAME="short_carfax_report_body.tpl">
</div>

</form>
</body>
</html>
<!-- End short_carfax_report.tpl -->
