<!-- Begin myaccount_investigations_contact_us.tpl -->
<html>
<head>
<title>Investigation Referral Form</title>
<link href="<TMPL_VAR NAME='CSSPATH'>/<TMPL_VAR NAME=SKIN_TYPE>/skin.css" rel="stylesheet" type="text/css">
<link href="<TMPL_VAR NAME='CSSPATH'>/style1.css" rel="stylesheet" type="text/css">
<TMPL_UNLESS ENABLE_V3>
<TMPL_IF ENABLE_V2>
<link href="<TMPL_VAR NAME='CSSPATH'>/v2/accurint.css" rel="stylesheet" type="text/css">
<link href="<tmpl_var csspath>/v2/<tmpl_var application_type>/diff.css" rel="stylesheet" type="text/css">
<link href="<TMPL_VAR NAME='CSSPATH'>/v2/<TMPL_VAR NAME=APPLICATION_TYPE>/<TMPL_VAR NAME=USER_THEME>.css" rel="stylesheet" type="text/css">
</TMPL_IF>
</TMPL_UNLESS>
<script src="<TMPL_VAR NAME='JSPATH'>/common.js"></script>
</head>

<body onLoad="window.focus();document.forms[0].SUBJECT_LOGIN_ID.focus();" topmargin="0" leftmargin="0" marginwidth="0" marginheight="0">

<TMPL_UNLESS ENABLE_V3>
<TMPL_IF ENABLE_V2>
<div id="hd">
<h2><a trackid="hdr_top_logo">LexisNexis Accurint</a></h2>
</div>
</TMPL_IF>
</TMPL_UNLESS>

<form name="CONTACT_US" action="<TMPL_VAR NAME=ACTION>" method="post"> 
      <TMPL_INCLUDE NAME=common_hidden_input.tpl>
      <INPUT type=hidden NAME="SKIN_TYPE" VALUE="<TMPL_VAR NAME=SKIN_TYPE>">
      <INPUT type=hidden NAME="APPLICATION_TYPE" VALUE="<TMPL_VAR NAME=APPLICATION_TYPE>">
      <INPUT type=hidden NAME="EVENT" VALUE="<TMPL_VAR NAME=EVENT>">

<TMPL_UNLESS ENABLE_V3>
<TMPL_UNLESS ENABLE_V2>
<table border="0" cellpadding="0" cellspacing="0" width="100%" class="headerarea">
  <tr>
    <td><img alt="" src="<TMPL_VAR NAME=IMGPATH>/<TMPL_VAR NAME=APPLICATION_TYPE>/logo.gif" width="266" height="43" border="0"></td>
    <td><img alt="" src="<TMPL_VAR NAME=IMGPATH>/spacer.gif" width="284" height="43"></td>
  </tr>
  <tr>
    <td class="headerseparator" height="10" colspan="2" align="left" valign="bottom"><img alt="" border="0" height="10" width="550" src="<TMPL_VAR NAME=IMGPATH>/spacer.gif"></td>
  </tr>
</table>
</TMPL_UNLESS>
</TMPL_UNLESS>

<table border="0" cellpadding="0" cellspacing="0" width="550">
  <tr>
    <td align="center">
    <table border="0" cellpadding="0" cellspacing="0" width="525">
    <TMPL_IF NAME="ERROR_MSG">
      <tr>
        <td class="smallfont1"><br><br><font color="red"><TMPL_VAR NAME="ERROR_MSG"></font><br></td>
      </tr>
     </TMPL_IF>
      <tr>
        <td align="center" colspan="2" class="unifont1"><br><big><b>Investigation Referral Form to LexisNexis Security Investigations</b></big><br><br></td>
      </tr>
      <tr>
        <td align="center">
	<table width="400">
	  <tr>
	    <td width="35%" class="myaccountlabel">Company ID:</td>
	    <td width="65%" class="unifont1"><TMPL_VAR NAME=COMPANYID></td>
	  </tr>
	  <tr>
	    <td class="myaccountlabel">Administrator ID:</td>
	    <td class="unifont1"><TMPL_VAR NAME=LOGINID></td>
	  </tr>
	  <tr>
	    <td class="myaccountlabel">Administrator Name:</td>
	    <td class="unifont1"><TMPL_VAR NAME=FIRSTNAME>&nbsp;<TMPL_VAR NAME=LASTNAME></td>
	  </tr>
	  <tr>
	    <td class="myaccountlabel">Administrator Email:</td>
	    <td class="unifont1"><TMPL_VAR NAME=EMAIL_ADDR></td>
	  </tr>
	  <tr>
	    <td colspan="2" align="center" class="unifont1"><br><b>Below, fill in all that apply.&nbsp; Use ONE form per incident, per person.<br><br></td>
	  </tr>
          <tr>
            <td class="myaccountlabel">Login ID:</td>
	    <td class="unifont1"><input type="text" name="SUBJECT_LOGIN_ID" tabindex="1" size="25" value=""></td>
          </tr>
          <tr>
            <td class="myaccountlabel">Login ID Holder Name:</td>
	    <td class="unifont1"><input type="text" name="SUBJECT_NAME" tabindex="2" size="25" value=""></td>
          </tr>
          <tr>
            <td colspan="2" class="myaccountlabel">Name of person who conducted activity in question if different than</td>
	  </tr>
	  <tr>
            <td valign="top" class="myaccountlabel">the Login ID Holder:</td>
	    <td class="unifont1"><input type="text" name="OTHER_SUBJECT_NAME" tabindex="3" size="25" value=""></td>
          </tr>
          <tr>
            <td class="myaccountlabel">Period of activity in question:</td>
	    <td class="unifont1"><input type="text" name="ACTIVITY_TIME_PERIOD" tabindex="4" size="25" value=""></td>
          </tr>
        </table>
        </td>
      </tr>

      <tr>
        <td align="center" class="unifont1"><br><b>Please include a brief summary of what you are referring for investigation:</b><br></td>
      </tr>
      <tr>
        <td align="center" class="unifont1"><br><textarea tabindex="5" class="unifont1" cols="60" rows="6" name="MESSAGE"></textarea></td>
      </tr>
    
      <tr>
        <td align="center" class="unifont1"><br><br><input name="sendmessage" type="button" value="< Send Message >" onClick="this.value='*** Sending ***';this.disabled=true;this.form.submit();"></td>
      </tr>
    </table>
    </td>
  </tr>
</table>

</form>
</body>
</html>
<!-- End myaccount_investigations_contact_us.tpl -->
