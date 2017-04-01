<!-- begin training_materials.tpl -->
<html>
<head>
<title>Training and Resources</title>
<link href="<TMPL_VAR NAME='CSSPATH'>/<TMPL_VAR NAME=SKIN_TYPE>/skin.css" rel="stylesheet" type="text/css">
<link href="<TMPL_VAR NAME='CSSPATH'>/style1.css" rel="stylesheet" type="text/css">

<TMPL_IF ENABLE_V2>
<link href="<TMPL_VAR NAME='CSSPATH'>/accurint.css" rel="stylesheet" type="text/css">
<link href="<tmpl_var csspath>/<tmpl_var application_type>/diff.css" rel="stylesheet" type="text/css">
<link href="<TMPL_VAR NAME='CSSPATH'>/<TMPL_VAR NAME=APPLICATION_TYPE>/<TMPL_VAR NAME=USER_THEME>.css" rel="stylesheet" type="text/css">
</TMPL_IF>

<script src="<TMPL_VAR NAME='JSPATH'>/common.js"></script>
<script src="<TMPL_VAR NAME='JSPATH'>/shared.js"></script>
</head>
<body onLoad="window.focus();" topmargin="0" leftmargin="0" marginwidth="0" marginheight="0">

<TMPL_IF ENABLE_V2>
<div id="hd"><h2><a trackid="hdr_top_logo"></a></h2></div>
</TMPL_IF>

<form name="CONTACT_US" action="<TMPL_VAR NAME=ACTION>" method="post">
      <TMPL_INCLUDE NAME=common_hidden_input.tpl>
      <INPUT type=hidden NAME="SKIN_TYPE" VALUE="<TMPL_VAR NAME=SKIN_TYPE>">
      <INPUT type=hidden NAME="APPLICATION_TYPE" VALUE="<TMPL_VAR NAME=APPLICATION_TYPE>">
      <INPUT type=hidden NAME="EVENT" VALUE="<TMPL_VAR NAME=EVENT>">

<TMPL_UNLESS ENABLE_V2>
<table border="0" cellpadding="0" cellspacing="0" width="100%" class="headerarea">
  <tr>
    <td><img src="<TMPL_VAR NAME=IMGPATH>/<TMPL_VAR NAME=APPLICATION_TYPE>/logo.gif" width="266" height="43" border="0"></td>
    <td><img src="<TMPL_VAR NAME=IMGPATH>/spacer.gif" width="184" height="43"></td>
  </tr>
  <tr>
    <td height="10" colspan="2" align="left" valign="bottom"><img border="0" height="10" width="450" src="<TMPL_VAR NAME=IMGPATH>/spacer.gif"></td>
  </tr>
  <tr>
    <td class="headerseparator" height="10" colspan="2" align="left" valign="bottom"><img border="0" height="10" width="450" src="<TMPL_VAR NAME=IMGPATH>/spacer.gif"></td>
  </tr>
</table>
</TMPL_UNLESS>

<br><br>
<div align="center">
<table border="0" cellpadding="0" cellspacing="0">
  <tr>
    <td colspan="2" class="myaccounttitle" align="center"><B>Training and Resources</B></td>
  </tr>
  <tr>
    <td colspan="2" class="unifont2" valign="top">&nbsp;</td>
  </tr>
  <tr>
    <td class="unifont2" valign="top">&#149;&nbsp;&nbsp;</td>
    <td class="unifont2" valign="top"><a href="javascript:general_win('<TMPL_VAR NAME=HLPPATH>/irs/pdf/accurint_user_guide.pdf','AccurintUserGuide','790','600',1,1,1,1,1,0);void(0);" title="User Guide">User Guide</a></td>
  </tr>
  <tr>
    <td colspan="2" class="unifont2" valign="top">&nbsp;</td>
  </tr>
  <tr>
    <td class="unifont2" valign="top">&#149;&nbsp;&nbsp;</td>
    <td class="unifont2" valign="top"><a href="javascript:general_win('<TMPL_VAR NAME=HLPPATH>/irs/pdf/quick_reference_guide.pdf','QuickReferenceGuide','790','600',1,1,1,1,1,0);void(0);" title="Quick Reference Guide">Quick Reference Guide</a></td>
  </tr>
  <tr>
    <td colspan="2" class="unifont2" valign="top">&nbsp;</td>
  </tr>
  <tr>
    <td class="unifont2" valign="top">&#149;&nbsp;&nbsp;</td>
    <td class="unifont2" valign="top"><a href="javascript:general_win('<TMPL_VAR NAME=HLPPATH>/irs/pdf/irs_search_examples.pdf','IRSSearchExamples','790','600',1,1,1,1,1,0);void(0);" title="Quick Reference Guide">IRS Search Examples</a></td>
  </tr>
  <tr>
    <td colspan="2" class="unifont2" valign="top">&nbsp;</td>
  </tr>
  <tr>
    <td class="unifont2" valign="top">&#149;&nbsp;&nbsp;</td>
    <td class="unifont2" valign="top"><a href="http://spder.web.irs.gov/accurintCBT" target="_blank" title="Online Tutorial">Online Tutorial</a></td>
  </tr>
  <tr>
    <td colspan="2" class="unifont2" valign="top">&nbsp;</td>
  </tr>
  <tr>
    <td class="unifont2" valign="top">&#149;&nbsp;&nbsp;</td>
    <td class="unifont2" valign="top"><a href="http://rnet.web.irs.gov/rs/accurint/training.htm" target="_blank" title="Training Options">Training Options</a></td>
  </tr>
  <tr>
    <td colspan="2" class="unifont2" valign="top">&nbsp;</td>
  </tr>
  <tr>
    <td class="unifont2" valign="top">&#149;&nbsp;&nbsp;</td>
    <td class="unifont2" valign="top"><a href="javascript:general_win('http://www.lexisnexis.com/training/irs','AccurintTelephonicTraining','790','600',1,1,1,1,1,0);void(0);" title="Telephonic Training Registration">Telephonic Training Registration</a></td>
  </tr>
  <tr>
    <td colspan="2" class="unifont2" valign="top">&nbsp;</td>
  </tr>
  <tr>
    <td class="unifont2" valign="top">&#149;&nbsp;&nbsp;</td>
    <td class="unifont2" valign="top"><a href="http://rnet.web.irs.gov/rs/accurint/newsletter.htm" target="_blank" title="Newsletters">Newsletters</a></td>
  </tr>
</table>
</div>
</form>
</body>
</html>
<!-- end training_materials.tpl -->
