<!-- Begin myaccount_contact_us.tpl -->
<html>
<head>
<title><TMPL_IF NAME="TITLE"><TMPL_VAR NAME="TITLE"><TMPL_ELSE>Contact Us</TMPL_IF></title>
<link href="<TMPL_VAR NAME='CSSPATH'>/<TMPL_VAR NAME=SKIN_TYPE>/skin.css" rel="stylesheet" type="text/css">
<link href="<TMPL_VAR NAME='CSSPATH'>/style1.css" rel="stylesheet" type="text/css">
<TMPL_IF ENABLE_V2>
<link href="<TMPL_VAR NAME='CSSPATH'>/v2/accurint.css" rel="stylesheet" type="text/css">
<link href="<tmpl_var csspath>/v2/<tmpl_var application_type>/diff.css" rel="stylesheet" type="text/css">
<link href="<TMPL_VAR NAME='CSSPATH'>/v2/<TMPL_VAR NAME=APPLICATION_TYPE>/<TMPL_VAR NAME=USER_THEME>.css" rel="stylesheet" type="text/css">
</TMPL_IF>
<script src="<TMPL_VAR NAME='JSPATH'>/common.js"></script>
<style type="text/css">
<TMPL_IF GOV>
	<TMPL_IF LE_CLIENT>
	   #hd{
		   background:url(<TMPL_VAR NAME='IMGPATH'>/v2/gov/logo_client.png) no-repeat;
		   padding-right:15px;
		   height:75px;
	   }
   </TMPL_IF>
</TMPL_IF>
<TMPL_IF LE>
	<TMPL_IF LE_CLIENT>
	   #hd{
		   background:url(<TMPL_VAR NAME='IMGPATH'>/v2/le/logo_client.png) no-repeat;
		   padding-right:15px;
		   height:75px;
	   }
   </TMPL_IF>
</TMPL_IF>
</style>
</head>

<body onLoad="window.focus();" topmargin="0" leftmargin="0" marginwidth="0" marginheight="0">

<TMPL_IF ENABLE_V2>
<div id="hd">
<h2><a trackid="hdr_top_logo">LexisNexis Accurint</a></h2>
</div>
</TMPL_IF>

<form name="CONTACT_US" action="<TMPL_VAR NAME=ACTION>" method="post"> 
      <TMPL_INCLUDE NAME=common_hidden_input.tpl>
      <INPUT type=hidden NAME="SKIN_TYPE" VALUE="<TMPL_VAR NAME=SKIN_TYPE>">
      <INPUT type=hidden NAME="APPLICATION_TYPE" VALUE="<TMPL_VAR NAME=APPLICATION_TYPE>">
      <INPUT type=hidden NAME="EVENT" VALUE="<TMPL_VAR NAME=EVENT>">

<TMPL_UNLESS ENABLE_V2>
<table border="0" cellpadding="0" cellspacing="0" width="100%" class="headerarea">
  <tr>
    <td><img alt="" src="<TMPL_VAR NAME=IMGPATH>/<TMPL_VAR NAME=APPLICATION_TYPE>/logo.gif" width="266" height="43" border="0"></td>
    <td><img alt="" src="<TMPL_VAR NAME=IMGPATH>/spacer.gif" width="184" height="43"></td>
  </tr>
  <tr>
    <td class="headerseparator" height="2" colspan="2" align="left" valign="bottom"><img border="0" height="2" width="450" src="<TMPL_VAR NAME=IMGPATH>/spacer.gif"></td>
  </tr>
</table>
</TMPL_UNLESS>

<table border="0" cellpadding="0" cellspacing="0" width="450">
  <tr>
    <td width="10"><img alt="" height="1" width="10" border="0" src="<TMPL_VAR NAME=IMGPATH>/spacer.gif"></td>
    <td width="440">
    <table border="0" cellpadding="0" cellspacing="0" width="440">
    <TMPL_IF NAME="ERROR_MSG">
      <tr>
        <td width="440" colspan="3" class="smallfont1"><br><br><font color="red"><TMPL_VAR NAME="ERROR_MSG"></font><br></td>
      </tr>
     </TMPL_IF>
      <tr>
        <td width="440" colspan="3" class="unifont1"><br><br><b><TMPL_IF INSTRUCTIONS><TMPL_VAR INSTRUCTIONS><TMPL_ELSE>Please Type Your Message Below.</TMPL_IF>&nbsp; Click SEND When You Are Finished<TMPL_IF IRB> or call 1-800-447-2112</TMPL_IF>.</b><br><br></td>
      </tr>
      <tr>
        <td width="100"><img alt="" height="1" width="100" border="0" src="<TMPL_VAR NAME=IMGPATH>/spacer.gif"></td>
		<td width="340" colspan="2"><td>
      </tr>
      <tr>
        <td width="100" class="myaccountlabel">Company ID:</td>
        <td width="1" class="unifont1"><img alt="" border="0" height="22" width="1" src="<TMPL_VAR NAME=IMGPATH>/spacer.gif"></td>
        <td width="339" class="myaccountlabel"><TMPL_VAR NAME=COMPANYID></td>
      </tr>
      <tr>
        <td width="100" class="myaccountlabel">Login ID:</td>
        <td width="1" class="unifont1"><img alt="" border="0" height="22" width="1" src="<TMPL_VAR NAME=IMGPATH>/spacer.gif"></td>
        <td width="339" class="myaccountlabel"><TMPL_VAR NAME=LOGINID></td>
      </tr>
      <tr>
        <td width="100" class="unifont1">First Name:</td>
        <td colspan="2" width="340" class="unifont1"><input type="text" name="FIRST_NAME" tabindex="1" size="25" value="<TMPL_VAR NAME=FIRSTNAME>"></td>
      </tr>

      <tr>
        <td width="100" class="unifont1">Last Name:</td>
        <td colspan="2" width="340" class="unifont1"><input type="text" name="LAST_NAME" tabindex="1" size="25" value="<TMPL_VAR NAME=LASTNAME>"></td>
      </tr>
<!--
      <tr>
        <td width="100" class="unifont1">Phone:</td>
        <td colspan="2" width="340" class="unifont1"><input type="text" name="PHONE" tabindex="1" size="25" value=""></td>
      </tr>
-->
      <tr>
        <td width="100" class="unifont1">Email:</td>
        <td colspan="2" width="340" class="unifont1"><input type="text" name="FROM_EMAIL" tabindex="1" size="25" value="<TMPL_VAR NAME=EMAIL_ADDR>"></td>
      </tr>
<!--
      <tr>
        <td width="100" class="unifont1"><br>Subject:</td>
        <td colspan="2" width="340" class="unifont1"><br><input type="text" name="SUBJECT" tabindex="1" size="25" value=""></td>
      </tr>
-->

      <tr>
        <td width="100" valign="top" class="unifont1"><br>Message:</td>
	<td width="340" colspan="2" class="unifont1"><br><textarea class="unifont1" cols="40" rows="6" name="MESSAGE"></textarea></td>
      </tr>
      <tr>
        <td width="440" colspan="3" class="unifont1" align="center">
        <br><br>
        <input name="sendmessage" type="button" value="< <TMPL_IF NAME=BUTTON_NAME><TMPL_VAR BUTTON_NAME><TMPL_ELSE>Send Message</TMPL_IF> >" onClick="this.value='*** Sending ***';this.disabled=true;this.form.submit();">
        </td>
      </tr>
    </table>
    </td>
  </tr>
</table>

</form>
<SCRIPT>
<!--//
document.forms[0].MESSAGE.focus();
//-->
</SCRIPT>
</body>
</html>
<!-- End myaccount_contact_us.tpl -->
