<!-- Begin v2/popup/display_admin_contact.tpl -->
<html>
<head>
<title><TMPL_IF NAME="TITLE"><TMPL_VAR NAME="TITLE"><TMPL_ELSE>Company Administrators/Contacts</TMPL_IF></title>
<link href="<TMPL_VAR NAME='CSSPATH'>/<TMPL_VAR NAME=SKIN_TYPE>/skin.css" rel="stylesheet" type="text/css">
<link href="<TMPL_VAR NAME='CSSPATH'>/style1.css" rel="stylesheet" type="text/css">
<link href="<TMPL_VAR NAME='CSSPATH'>/accurint.css" rel="stylesheet" type="text/css">
<link href="<tmpl_var csspath>/<tmpl_var application_type>/diff.css" rel="stylesheet" type="text/css">
<link href="<TMPL_VAR NAME='CSSPATH'>/<TMPL_VAR NAME=APPLICATION_TYPE>/<TMPL_VAR NAME=USER_THEME>.css" rel="stylesheet" type="text/css">

<script src="<TMPL_VAR NAME='JSPATH'>/common.js"></script>
<script src="<TMPL_VAR NAME='JSPATH'>/shared.js"></script>

<style type="text/css">
	<TMPL_IF GOV>
        <TMPL_IF LE_CLIENT>
           #hd{
                   background:url(<TMPL_VAR NAME='IMGPATH'>/gov/logo_client.png) no-repeat;
                   padding-right:15px;
                   height:75px;
           }
   		</TMPL_IF>
	</TMPL_IF>
	<TMPL_IF LE>
        <TMPL_IF LE_CLIENT>
           #hd{
                   background:url(<TMPL_VAR NAME='IMGPATH'>/le/logo_client.png) no-repeat;
                   padding-right:15px;
                   height:75px;
           }
	   </TMPL_IF>
	</TMPL_IF>
</style>
</head>

<body onLoad="window.focus();" topmargin="0" leftmargin="0" marginwidth="0" marginheight="0">

<div id="hd"><span id="hdr_top_logo"></span></h2></div>

<form name="CONTACT_US" action="<TMPL_VAR NAME=ACTION>" method="post"> 
<TMPL_INCLUDE NAME=common_hidden_input.tpl>
<INPUT type=hidden NAME="SKIN_TYPE" VALUE="<TMPL_VAR NAME=SKIN_TYPE>">
<INPUT type=hidden NAME="APPLICATION_TYPE" VALUE="<TMPL_VAR NAME=APPLICATION_TYPE>">
<INPUT type=hidden NAME="EVENT" VALUE="<TMPL_VAR NAME=EVENT>">

<div align="center">

<table cellpadding="0" cellspacing="0" border="0">

  <TMPL_IF NAME="ERROR_MSG">
  <tr>
    <td class="unifont1" nowrap><br><br><font color="red"><TMPL_VAR NAME="ERROR_MSG"></font><br></td>
  </tr>
  </TMPL_IF>



  <tr>
    <td class="unifont1" nowrap>

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

</form>
</body>
</html>
<!-- End v2/popup/display_admin_contact.tpl -->
