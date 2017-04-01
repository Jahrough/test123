<!DOCTYPE html>
<html>
    <head>
        <title>Accurint - Please verify your identity</title>
        <TMPL_INCLUDE NAME="includes_info.tpl">
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
  <body <TMPL_UNLESS VERIFY_PASSWORD>onLoad="window.focus();"</TMPL_UNLESS> topmargin="0" leftmargin="0" marginwidth="0" marginheight="0">
        <TMPL_INCLUDE NAME="header_info.tpl">

        <form name="verify_security" action="<TMPL_VAR NAME=ACTION>" method="POST">
	    <TMPL_INCLUDE NAME="common_hidden_input.tpl">

            <div class="txtWrapper">
                <div id="txtCon">
                    <div class="lnin-header"> Ensure the security of your account</div>
                    <br/>
                    
                    <div class="subTxt">


                         <table class="w100pc" class="myaccountbody">
                            <tr>
                              <td colspan="2" align="center" class="myaccountlabel" height="100" valign="middle">
                                <table cellpadding="1" class="myaccountborder" style="margin: 0 auto; width:55%;">
                                  <tr>
                                <td align="center">
                                  <table cellpadding="10" class="w100pc myaccountalert">


                                  <TMPL_IF NAME=SECURITY_ANSWER_VERIFIED>
                                    <tr>
                                    <td align=center class="myaccountlabel">
                                    <b>Answer verified successfully.</b>
                                    <p><input id="continue" type=image name="CONTINUE" src="<TMPL_VAR NAME=IMGPATH>/continue.gif" border="0"></p>
                                    <p><a id="continue" name="CONTINUE" class="btn red-btn" href="javascript:send_event('LOGIN/CONTINUE')">Continue</a></p>
                                    </td>
                                    </tr>
                                  <TMPL_ELSE>

                                  <TMPL_IF NAME=MAX_ERR>
                                    <tr>
                                    <td align=center class="myaccountlabel">
                                    <b>You have entered incorrect information too many times and will only be allowed restricted access for this session.</b>
                                    <input type="hidden" name="EVENT" value="LOGIN/CANCEL_VERIFY_SECURITY_ANSWER">
                                    <p><a id="continue" name="CONTINUE" class="btn red-btn" href="javascript:send_event('LOGIN/CANCEL_VERIFY_SECURITY_ANSWER')">Continue</a></p>
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
                                        <a class="btn red-btn" href="javascript:check_vals()">Continue</a>
                                        <TMPL_UNLESS MANDATORY_REGISTER>
                                            &nbsp;&nbsp;&nbsp;
                                            <a class="btn grey-btn" href="javascript:bypass_roaming_security()">Cancel</a>
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

                    </div>
                </div>
            </div>
        
        </form>
    </body>
</html>
