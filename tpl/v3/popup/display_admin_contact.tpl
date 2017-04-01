<!DOCTYPE html>
<!-- Begin v3/popup/display_admin_contact.tpl -->
<html>
<head>
<meta http-equiv="X-UA-Compatible" content="IE=Edge" />
<title><TMPL_IF NAME="TITLE"><TMPL_VAR NAME="TITLE"><TMPL_ELSE>Company Administrators/Contacts</TMPL_IF></title>

<TMPL_INCLUDE NAME="includes_info.tpl">
<style>
.txtWrapper{min-width:425px;}
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

<div align="center">

<table cellpadding="0" cellspacing="0" border="0">

  <TMPL_IF NAME="ERROR_MSG">
  <tr>
    <td class="unifont1" nowrap><br><br><font color="red"><TMPL_VAR NAME="ERROR_MSG"></font><br></td>
  </tr>
  </TMPL_IF>

  <tr>
    <td align="left" class="unifont1" nowrap>

      <TMPL_IF NAME=CONTACT_LOOP>
<b>Your Company Contact(s)</b><br>
<br>
      <TMPL_LOOP NAME=CONTACT_LOOP>
&nbsp; Name:&nbsp; <TMPL_VAR NAME=CONTACT_FIRSTNAME> <TMPL_VAR NAME=CONTACT_LASTNAME><br>
&nbsp; Phone Number:&nbsp; <TMPL_VAR NAME=CONTACT_PHONE><br>
&nbsp; Email:&nbsp; <TMPL_VAR NAME=CONTACT_EMAIL><br>
<br>
      </TMPL_LOOP>
      </TMPL_IF>
<br>


      <TMPL_IF NAME=ADMIN_LOOP>
<b>Your System Administrator(s)</b><br>
<br>
      <TMPL_LOOP NAME=ADMIN_LOOP>
&nbsp; Name:&nbsp; <TMPL_VAR NAME=CONTACT_FIRSTNAME> <TMPL_VAR NAME=CONTACT_LASTNAME><br>
&nbsp; Phone Number:&nbsp; <TMPL_VAR NAME=CONTACT_PHONE><br>
&nbsp; Email:&nbsp; <TMPL_VAR NAME=CONTACT_EMAIL><br>
<br>
      </TMPL_LOOP>
      </TMPL_IF>
      
      <TMPL_UNLESS NAME=ADMIN_LOOP>
      <TMPL_UNLESS NAME=CONTACT_LOOP>
      <br><br><br>
<b>There are no system administrators or contacts designated</b><br>
<b>for your company at this time.</b><br>
      </TMPL_UNLESS>
      </TMPL_UNLESS>

<br>



    </td>
  </tr>
</table>

</div>
</div>
</div>

</form>
</body>
</html>
<!-- End v3/popup/display_admin_contact.tpl -->
