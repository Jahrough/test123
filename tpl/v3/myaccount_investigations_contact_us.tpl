<!DOCTYPE html>
<!-- Begin v3/myaccount_investigations_contact_us.tpl -->
<html>
<head>
<meta http-equiv="X-UA-Compatible" content="IE=Edge" />
<title>LexisNexis Security Investigations</title>

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

<table border="0" cellpadding="0" cellspacing="0" width="550">
  <tr>
    <td align="center">
    <table border="0" cellpadding="0" cellspacing="0" width="525">
    <TMPL_IF NAME="ERROR_MSG">
      <tr>
        <td align="left" class="smallfont1"><br><br><font color="red"><TMPL_VAR NAME="ERROR_MSG"></font><br></td>
      </tr>
     </TMPL_IF>
      <tr>
        <td align="center" colspan="2" style="color:#ed1c24;"><br><big><b>Investigation Referral Form to LexisNexis Security Investigations</b></big><br><br></td>
      </tr>
      <tr>
        <td align="center">
	<table width="440">
	  <tr>
	    <td align="left" width="35%">Company ID:</td>
	    <td align="left" width="65%"><TMPL_VAR NAME=COMPANYID></td>
	  </tr>
	  <tr>
	    <td align="left">Administrator ID:</td>
	    <td align="left"><TMPL_VAR NAME=LOGINID></td>
	  </tr>
	  <tr>
	    <td align="left">Administrator Name:</td>
	    <td align="left"><TMPL_VAR NAME=FIRSTNAME>&nbsp;<TMPL_VAR NAME=LASTNAME></td>
	  </tr>
	  <tr>
	    <td align="left">Administrator Email:</td>
	    <td align="left"><TMPL_VAR NAME=EMAIL_ADDR></td>
	  </tr>
	  <tr>
	    <td align="left" colspan="2"><br><b>Below, fill in all that apply.&nbsp; Use ONE form per incident, per person.<br><br></td>
	  </tr>
	</table>
	<table width="400" cellpadding="2">
          <tr>
            <td align="left" width="34%">Login ID:</td>
	    <td align="left" width="66%"><input type="text" name="SUBJECT_LOGIN_ID" tabindex="1" size="25" value=""></td>
          </tr>
          <tr>
            <td align="left">Login ID Holder Name:</td>
	    <td align="left"><input type="text" name="SUBJECT_NAME" tabindex="2" size="25" value=""></td>
          </tr>
          <tr>
            <td colspan="2" align="left"><br>Name of person who conducted activity in question if different than<br></td>
	  </tr>
	  <tr>
            <td valign="top" align="left">the Login ID Holder:</td>
	    <td align="left"><input type="text" name="OTHER_SUBJECT_NAME" tabindex="3" size="25" value=""></td>
          </tr>
          <tr>
            <td align="left">Period of activity in question:</td>
	    <td align="left"><input type="text" name="ACTIVITY_TIME_PERIOD" tabindex="4" size="25" value=""></td>
          </tr>
        </table>
	<table width="440">
	  <tr>
	    <td align="left"><b><br>Please include a brief summary of what you are referring for investigation:</b></td>
	  </tr>
	</table>
        </td>
      </tr>
      <tr>
        <td align="center"><br><textarea tabindex="5" cols="60" rows="5" name="MESSAGE"></textarea></td>
      </tr>
    
      <tr>
        <td align="center"><br><input class="btn red-btn" name="sendmessage" type="button" value="Send Message" onClick="this.value='*** Sending ***';this.disabled=true;this.form.submit();"></td>
      </tr>
    </table>
    </td>
  </tr>
</table>

</div></div>

</form>
</body>
</html>
<!-- end v3/myaccount_investigations_contact_us.tpl -->
