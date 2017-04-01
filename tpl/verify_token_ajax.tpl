<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<!--<TMPL_VAR NAME=SERVER_ID>-->
<html>
  <head>
    <title>Source Docs Rapid Alert</title>
  </head>
  <body>

    <div id="verify_outer">
	  <TMPL_IF ERROR_MESSAGE>
	    <p class="verify_error"><TMPL_VAR ERROR_MESSAGE></p>
	  </TMPL_IF>

	    <p class="verify_note">Ensure the security of your account</p>
	    <TMPL_INCLUDE NAME=common_hidden_input.tpl>
        <input type="hidden" id="CURRENT_EVENT" value="<TMPL_VAR NAME='CURRENT_EVENT'>">
	    <input type="hidden" id="ACTION_REPORT" value="<TMPL_VAR NAME=ACTION_REPORT>">
	    <input type="hidden" id="ACTION_SOUND" value="<TMPL_VAR NAME=ACTION_SOUND>">
	    <input type="hidden" id="ENABLE_LOGIN_TOKEN" value="<TMPL_IF ENABLE_LOGIN_TOKEN>1<TMPL_ELSE>0</TMPL_IF>">

	    <table class="verify_info">
	      <tr>
	        <td class="verify_right">
		  <a class="verification" href="javascript:void(0);" onClick="alert_win('<TMPL_VAR NAME=HTMLPATH>/verification_popup.html',420,420);">Verification</a> characters:
		  <TMPL_IF SHOW_SOUND_LINK><br><span class="unifont1">(<a class="verification" href="javascript:void(0);" onClick="sound_win();"><b>Listen to Characters</b></a>)</span></TMPL_IF>
	        </td>
	        <td class="verify_left">
		  <img name="tokenimg" src="<TMPL_VAR NAME=IMGPATH>/spacer.gif" border="0" width="170" height="36" alt="Enter the verification characters below:" title="Enter the verification characters below:">
	        </td>
	      </tr>
	      <tr>
	        <td class="verify_right">
		  Please enter the above Verification Characters to proceed:
	        </td>
	        <td class="verify_left">
		  <input type="text" name="_T" size="24" autocomplete="off">
	        </td>
	      </tr>
	    </table>

	    <p><a href="javascript:send_token()"><img src="<TMPL_VAR NAME=IMGPATH>/continue.gif" border="0"></a></p>

    </div>

  </body>
</html>
