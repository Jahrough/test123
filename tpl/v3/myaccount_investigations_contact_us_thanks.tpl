<!DOCTYPE html>
<!-- Begin v3/myaccount_investigations_contact_us_thanks.tpl -->
<html>
<head>
<meta http-equiv="X-UA-Compatible" content="IE=Edge" />
<title>LexisNexis Security Investigations -- Thank You</title>

<TMPL_INCLUDE NAME="includes_info.tpl">
<style>
.txtWrapper{min-width:500px;}
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

<table border="0" cellpadding="10" cellspacing="0" width="550">
  <tr>
    <td>
    <br><br><br>
    <center><big><font color="#ed1c24"><b>Your Investigation Referral Form Has Been Sent</b></font></big></center>
    <br><br>
    This matter has been submitted for investigation.&nbsp;An individual from our Corporate Security Office we will be in contact with you.&nbsp; If you have any additional information that you need to provide in the future pertaining to this investigation, you may submit the information through the same Investigations Referral Form.
    <br><br><br><br><br><br>
    <center><input class="btn red-btn" name="closewindow" type="button" value="Close Window" onClick="self.close();"></center>
    </td>
  </tr>
</table>

</div>
</div>

</form>
</body>
</html>
<!-- end v3/myaccount_investigations_contact_us_thanks.tpl -->
