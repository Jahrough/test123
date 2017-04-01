<!-- begin record_utilities.tpl -->
<html>
<head>
<title>Records Utilities!</title>
<link href="<TMPL_VAR NAME='CSSPATH'>/<TMPL_VAR NAME=SKIN_TYPE>/skin.css" rel="stylesheet" type="text/css">
<TMPL_IF NAME='COMMON_RECORD_UTILS_JS'><script src="<TMPL_VAR NAME='JSPATH'>/record_utilities/<TMPL_VAR NAME='COMMON_RECORD_UTILS_JS'>.js"></script></TMPL_IF>
<script src="<TMPL_VAR NAME='JSPATH'>/record_utilities/<TMPL_VAR NAME='SEARCH_NAME'>.js"></script>
<script src="<TMPL_VAR NAME='JSPATH'>/record_utilities/common.js"></script>
</head>
<body onLoad="window.focus();display_record();" topmargin="0" leftmargin="0" marginwidth="0" marginheight="0">

<form name="CLIP">
<INPUT TYPE="HIDDEN" NAME="REC_TXT" VALUE="">
<center>
<br>
<table border="0" cellpadding="0" cellspacing="0">
  <tr>
    <td align="center" class="ctcheader">Record Utilities</td>
  </tr>
</table>
<table border="0" cellpadding="10" cellspacing="0">
  <tr>
    <script>display_text();</script>
  </tr>
</table>
<table border="0" cellpadding="2" cellspacing="0" width="140" class="myaccountborder">
  <tr>
    <td valign="top">
    <table border="0" cellpadding="5" cellspacing="0" width="100%" bgcolor="#ffffff">
      <tr>
        <td class="ctctextarea" colspan="2" align="center"><b>Quick Links</b></td>
      </tr>
      <tr>
        <td class="ctcbody" align="center"><a href="javascript:print_rec();"><img src="/bps/images/icon_print.gif" border="0" alt="Print This Record" title="Print This Record"></a><br>&nbsp;<a alt="Print This Record" title="Print This Record" class="ctclinks" href="javascript:print_rec();">Print</a></td>
        <td class="ctcbody" align="center"><a href="javascript:mail_rec();"><img src="/bps/images/icon_email.gif" border="0" alt="Email This Record" title="Email This Record"></a><br>&nbsp;<a alt="Email This Record" title="Email This Record" class="ctclinks" href="javascript:mail_rec();">Email</a></td>
      </tr>
    </table>
    </td>
  </tr>
</table>
<br>
<table border="0" cellpadding="0" cellspacing="0">
  <tr>
    <td class="ctctextarea" align="left">
      <script>write_textarea();</script>
    </td>
  </tr>
</table>
<br>
</center>
</form>
</body>
</html>
<!-- end record_utilities.tpl -->
