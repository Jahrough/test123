<!-- begin verify_security_answer.tpl -->
<!--<TMPL_VAR NAME=SERVER_ID>-->
<html>
  <head>
    <title>Accurint - Please verify your identity</title>

    <link href="<TMPL_VAR NAME='CSSPATH'>/style1.css" rel="stylesheet" type="text/css">
    <link href="<TMPL_VAR NAME='CSSPATH'>/<TMPL_VAR NAME=SKIN_TYPE>/skin.css" rel="stylesheet" type="text/css">

    <script src="<TMPL_VAR NAME='JSPATH'>/common.js"></script>
    <script src="<TMPL_VAR NAME='JSPATH'>/shared.js"></script>
    <script>
	// set up to submit on enter key
	var pressed = 0;
	function setup_keypress_handler()
	{
	    if (document.all) {	// IE
		document.onkeydown = submit_on_enter;
		// alert('onkeydown handler attached.');
	    } else {
		if (document.layers || document.getElementById) {  // NS4 & Mozilla
		    document.captureEvents(Event.KEYPRESS);
		    document.onkeypress = submit_on_enter;
		    // alert('onkeypress handler attached.');
	// 	} else {
	// 	    alert('no handler attached for keypress handling!');
		}
	    }
	}

	function get_key(e)
	{
	    var code;
	    if (e.keyCode)
		code = e.keyCode;
	    else
		if (e.which)
		    code = e.which;
	    return code;
	}

	function submit_on_enter(e)
	{
	    var f = document.forms[0];
	    if (!e)
		var e = window.event;
	    var key = get_key(e);
	    if (!pressed && e.target == f.SECURITY_ANSWER && key == 13) {	// ENTER key pressed
	// 	alert('ENTER key pressed.');
		pressed = 1;
		check_vals();
		pressed = 0;
	    }
	}


	function check_vals()
	{
	    df = document.forms[0];
	    if (df.SECURITY_ANSWER.value.length < <TMPL_VAR NAME="MIN_LENGTH_SECURITY_QUESTION"> ||
		/^[\s]+$/.test(df.SECURITY_ANSWER.value) ||
		!/^[\w\s.,\-\'\"]+$/.test(df.SECURITY_ANSWER.value)
		) {
		df.SECURITY_ANSWER.focus();
		alert('Please enter a valid answer, at least <TMPL_VAR NAME="MIN_LENGTH_SECURITY_QUESTION"> characters, alphanumeric only.');
	    } else {
		send_event('LOGIN/DO_VERIFY_SECURITY_ANSWER');
	    }
	}

	function bypass_roaming_security()
	{
	        alert("Your access will be restricted for this session.");
		send_event('LOGIN/CANCEL_VERIFY_SECURITY_ANSWER');
	}

	function init() {
	    df = document.forms[0];
	    if(df.SECURITY_ANSWER) df.SECURITY_ANSWER.focus();
	    <TMPL_IF ERROR_MESSAGE>
	      alert('<TMPL_VAR ERROR_MESSAGE>');
	    </TMPL_IF>
	    //setup_keypress_handler();
	}
    </script>
  </head>

  <body topmargin="0" leftmargin="0" marginwidth="0" marginheight="0" class="alternatebody" onload="init()">

      <form name="verify_security" action="<TMPL_VAR NAME=ACTION>" method="POST">

	  <TMPL_INCLUDE NAME=common_hidden_input.tpl>

	      <div align="center">

		<br><br><br>

		<table border="0" cellpadding="0" cellspacing="0" class="myaccountborder" width="880">
		  <tr>
		    <td align="center" valign="top">

		      <table border="0" cellpadding="0" cellspacing="0" width="860">
			<tr>
			  <td width="12"><img alt="" height="12" width="12" border="0" src="<TMPL_VAR NAME=IMGPATH>/rndcorner2.gif"></td>
			  <td width="856" class="myaccountborder"><img alt="" height="12" width="856" border="0" src="<TMPL_VAR NAME=IMGPATH>/spacer.gif"></td>
			  <td width="12"><img alt="" height="12" width="12" border="0" src="<TMPL_VAR NAME=IMGPATH>/rndcorner.gif"></td>
			</tr>
		      </table>

		      <table border="0" cellpadding="0" cellspacing="0" width="856" class="myaccountbody">
			<tr>
			  <td align="center" class="myaccounttitle" height="20" valign="middle"><br>
			    Ensure the security of your account
			    <br/><br/>
			  </td>
			</tr>
			<tr>
			  <td colspan="2" align="center" class="myaccountlabel" height="100" valign="middle">
			    <table border="0" cellpadding="1" cellspacing="0" width="500" class="myaccountborder" style="margin: 0 auto">
			      <tr>
				<td align="center">
				  <table border="0" cellpadding="10" cellspacing="0" width="600" class="myaccountalert">


				  <TMPL_IF NAME=SECURITY_ANSWER_VERIFIED>
				    <tr>
				    <td align=center class="myaccountlabel">
				    <b>Answer verified successfully.</b>
				    <input type="hidden" name="EVENT" value="LOGIN/CONTINUE">
				    <p><input id="continue" type=image name="CONTINUE" src="<TMPL_VAR NAME=IMGPATH>/continue.gif" border="0"></p>
				    </td>
				    </tr>
				  <TMPL_ELSE>

				  <TMPL_IF NAME=MAX_ERR>
				    <tr>
				    <td align=center class="myaccountlabel">
				    <b>You have entered incorrect information too many times and will only be allowed restricted access for this session.</b>
				    <input type="hidden" name="EVENT" value="LOGIN/CANCEL_VERIFY_SECURITY_ANSWER">
				    <p><input id="continue" type=image name="CONTINUE" src="<TMPL_VAR NAME=IMGPATH>/continue.gif" border="0"></p>
				    </td>
				    </tr>
				  <TMPL_ELSE>

				    <input type="hidden" name="EVENT" value="LOGIN/DO_VERIFY_SECURITY_ANSWER">
				    <input type="hidden" name="CURRENT_EVENT" value="<TMPL_VAR NAME='CURRENT_EVENT'>">


				      <tr>
					  <td align=center colspan=2 class="myaccountlabel">
					  <!-- placeholder -->
					  </td>
				      </tr>

				      <tr>
					<td valign=top align="right" width="50%" class="myaccountlabel">
					Account security question:
					</td>
					<td valign=top align="left" class="myaccountlabel">
					<TMPL_VAR NAME=SECURITY_QUESTION>
					<input type="hidden" name="SECURITY_QUESTION_INDEX" value="<TMPL_VAR NAME=SECURITY_QUESTION_INDEX>">
					</td>
				      </tr>
				      <tr>
					<td valign=top align="right" class="myaccountlabel">
					Please enter your answer:
					</td>
					<td valign=top align="left" class="myaccountlabel">
					    <input type="text" name="SECURITY_ANSWER" size="25" autocomplete="off" maxlength=250>
					</td>
				      </tr>

					<tr>
					<td colspan=2 align="center">
					<p>
					<a href="javascript:check_vals()"><img alt="" src="<TMPL_VAR NAME=IMGPATH>/continue.gif" border="0"></a>
					<TMPL_UNLESS MANDATORY_REGISTER>
					&nbsp;&nbsp;&nbsp;
					<a href="javascript:bypass_roaming_security()"><img alt="" src="<TMPL_VAR NAME=IMGPATH>/cancel.gif" border="0"></a>
					</TMPL_UNLESS>
					</p>
					</td>


				     </TMPL_IF>
				     </TMPL_IF>

					</tr>
				  </table>
				</td>
			      </tr>
			  </table>
			  </td>
			</tr>

			<tr>
			  <td height="50" valign="middle"></td>
			</tr>

		      </table>

		      <TMPL_INCLUDE NAME=myaccount_footer.tpl>

		    </td>
		  </tr>
		</table>
	      </div>
      </form>

     </body>
</html>
<!-- end verify_security_answer.tpl -->
