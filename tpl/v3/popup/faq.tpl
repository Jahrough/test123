<!DOCTYPE html>
<!-- Begin v3/popup/faq.tpl -->
<html>
<head>
<meta http-equiv="X-UA-Compatible" content="IE=Edge" />
<title>Frequently Asked Questions</title>

<TMPL_INCLUDE NAME="includes_info.tpl">
<style>
.txtWrapper{min-width:0px;}
.txtWrapper{width:90%;}
</style>

<script src="<TMPL_VAR NAME='JSPATH'>/common.js"></script>
<script src="<TMPL_VAR NAME='JSPATH'>/shared.js"></script>
</head>

<body onLoad="window.focus();" topmargin="0" leftmargin="0" marginwidth="0" marginheight="0">
<TMPL_INCLUDE NAME="header_info.tpl">
<form name="CONTACT_US" action="<TMPL_VAR NAME=ACTION>" method="post"> 
<TMPL_INCLUDE NAME="common_hidden_input.tpl">
<INPUT type=hidden NAME="SKIN_TYPE" VALUE="<TMPL_VAR NAME=SKIN_TYPE>">
<INPUT type=hidden NAME="APPLICATION_TYPE" VALUE="<TMPL_VAR NAME=APPLICATION_TYPE>">
<INPUT type=hidden NAME="EVENT" VALUE="<TMPL_VAR NAME=EVENT>">

   <div class="txtWrapper">
    <div id="txtCon">


<div align="right">
<table border="0" cellpadding="0" cellspacing="0">
  <tr>
    <td><a class="myaccount-btn red-btn" name="close" href="javascript:self.close();">Close</a>
  </tr>
</table>
</div>

<div align="center">

<table border="0" cellpadding="0" cellspacing="0">
  <tr>
    <td align="left" colspan="2" class="myaccounttitle"><B>Frequently Asked Questions</B></td>
  </tr>
  <tr>
    <td align="left" colspan="2" class="unifont2" valign="top">&nbsp;</td>
  </tr>
  <tr>
    <td align="left" class="unifont2" valign="top">&#149;&nbsp;&nbsp;</td>
    <td align="left" class="unifont2" valign="top"><a href="Javascript:void(0);" onClick="javascript:show_post_popup('LOGIN/SHOW_POPUP','FAQGeneral','','',1,0,0,1,1,0,'','faq_general');">General Questions</a></td>
  </tr>
  <tr>
    <td align="left" class="unifont2" valign="top">&#149;&nbsp;&nbsp;</td>
    <td align="left" class="unifont2" valign="top"><a href="Javascript:void(0);" onClick="javascript:show_post_popup('LOGIN/SHOW_POPUP','FAQBilling','','',1,0,0,1,1,0,'','faq_billing');">Billing, Invoicing and Payment Questions</a></td>
  </tr>
</table>

<br><br>

</div>

</div>
</div>

</form>
</body>
</html>
<!-- End v3/popup/faq.tpl -->
