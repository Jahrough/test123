<!--<TMPL_VAR NAME=SERVER_ID>-->
<html>
  <head>
    <title>On a mobile device? Get Accurint Mobile.</title>
	<link href="<TMPL_VAR NAME='CSSPATH'>/mobile.css" rel="stylesheet" type="text/css">
	<script src="<TMPL_VAR NAME='JSPATH'>/mobilepopup.js"></script>
	<script src="<TMPL_VAR NAME='JSPATH'>/shared.js"></script>
	<script src="<TMPL_VAR NAME='JSPATH'>/common.js"></script>
	<script src="<TMPL_VAR NAME='JSPATH'>/v2/user_feedback.js"></script>
	<script src="<TMPL_VAR NAME='JSPATH'>/user_admin.js"></script>
  </head>

<body>
<form name="APP_REMINDER" action="<TMPL_VAR NAME=ACTION>" method="post">
<TMPL_INCLUDE NAME=common_hidden_input.tpl>
<input type="hidden" name="EVENT" value="">
<input type="hidden" name="app_reminder" value="">
<input type="hidden" name="device_url" value="<tmpl_var name=device_url>">

<div id="blanket" style="display: none;"></div>
<div id="popUpDiv" style="display: none;">

  <table class="email_cont" cellpadding="0" cellspacing="0" valign="center">
    <tr>
      <td>
        <table cellpadding="0" cellspacing="0">
          <tr>
            <td class="left"><span class="bodytext">Email address(es):</span></td>
            <td class="right">
	    <table><tr>
	    <td><img id="subtractE" onClick="toggle_emails('S');" src="<tmpl_var name=imgpath>/mobile/minus.png" alt="Subtract email address" title="Subtract email address" /></td>
	    <td><img id="addE" onClick="toggle_emails('A');" src="<tmpl_var name=imgpath>/mobile/plus.png" alt="Add email address" title="Add email address" /></td>
	    </tr></table>
	   </td>
          </tr>
          <tr>
            <td colspan="2"><input class="emailinput" id="email1" name="email1" type="text" /></td>
          </tr>
          <tr>
            <td colspan="2"><input style="display:none;" class="emailinput" id="email2" name="email2" type="text" /></td>
          </tr>
          <tr>
            <td colspan="2"><input style="display:none;" class="emailinput" id="email3" name="email3" type="text" /></td>
          </tr>
          <tr>
            <td class="left" colspan="2"><span class="bodytext">e.g., name@company.com</span><br /></td>
          </tr>
          <tr>
            <td colspan="2" align="center">
	    <img  onClick="popup('popUpDiv')" id="cancel" src="<tmpl_var name=imgpath>/mobile/cancel.png" />
	    <img src="<tmpl_var name=imgpath>/mobile/send.png" onClick="if (validate_emails()){ fn_send_email(); }"/>
	   </td>
          </tr>
        </table>
      </td>
    </tr>
  </table>
</div>

<div id="container_iphone">

<br /><span class="med">On a mobile device?</span><br />
<span class="lg">Get Accurint<span class="reg">&reg;</span> Mobile.</span>

<table class="mobile_container" cellpadding="0" cellspacing="0">
  <tr>
    <td class="mobile_images"><img src="<tmpl_var name=imgpath>/mobile/lexisnexis_final.png" alt="LexisNexis" title="LexisNexis" /></td>
    <td class="mobile_images"><img src="<tmpl_var name=imgpath>/mobile/devices_final.png" alt="Mobile devices" title="Mobile devices" /></td>
  </tr>
</table>

<a href="javascript:void(0);" onClick="javascript:fn_app_reminder(1);"><img class="but" src="<tmpl_var name=imgpath>/mobile/download.png" alt="Download now" title="Download now" name="down" /></a><br />
<a href="javascript:void(0);" onclick="popup('popUpDiv')"><img class="but" src="<tmpl_var name=imgpath>/mobile/email.png" alt="Email download URL" title="Email download URL" /></a><br />
<a href="javascript:void(0);" onClick="javascript:fn_app_reminder(4);"><img class="but" src="<tmpl_var name=imgpath>/mobile/learn.png" alt="Learn more" title="Learn more" /></a><br />
<a href="javascript:void(0);" onClick="javascript:fn_app_reminder(3);"><img class="but" src="<tmpl_var name=imgpath>/mobile/remind.png" alt="Remind me later" title="Remind me later" /></a><br /><br />
<a href="javascript:void(0);" onClick="javascript:fn_app_reminder(2);"><img class="but" src="<tmpl_var name=imgpath>/mobile/nothanks.png" alt="No, thanks" title="No, thanks" /></a><br /><br />

</div>

</form>
</body>
</html>
