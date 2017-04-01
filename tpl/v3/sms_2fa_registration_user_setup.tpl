<!DOCTYPE html>
<html>
    <head>
        <TMPL_INCLUDE NAME="includes_info.tpl">
        <title>SMS based Multi-Factor Registration</title>
        
        <script>
        function show_sms_2fa_auth() 
        {
            df = document.forms[0];
            if (999 == df.SMS_CARRIER_CODE.value) {
                alert('Please select a US cell phone carrier');
                df.SMS_CARRIER_CODE.focus();
                return false;
            }
            
            if (df.SMS_PHONE.value.length < 10) {
            alert('Please enter your 10 digit cell phone');
            df.SMS_PHONE.focus();
            return false;
            } else {
            df.SMS_PHONE.value = df.SMS_PHONE.value.toUpperCase();
            //df.submit;
            send_event('LOGIN/DO_SMS_2FA_REGISTRATION');
            //return true;
            }
        }
        
        function doKey(e)
        {
            var typedkey = (IE4) ? event.keyCode : e.which;
        
        
            if (typedkey == 13 && !ENTER_FOCUS) {
               show_sms_2fa_auth();
            }
        }
        
        function isNumberKey(evt)
        {
            var charCode = (evt.which) ? evt.which : event.keyCode
             
            if (charCode > 31 && (charCode < 48 || charCode > 57)){
                return false;
            }
            return true;
        }

        
        IE4 = document.all;
        NS4 = document.layers;
        ENTER_FOCUS = 0;
        dokey_stop_flag = false;
        
        var agt = navigator.userAgent.toLowerCase();
        if (agt.indexOf("safari") == -1) { // If NOT Safari or Google Chrome run doKey.
            if (!NS4) {
                document.onkeyup = doKey;
                document.onkeydown = keyClear;
            } else {
                document.captureEvents(Event.KEYPRESS);
                document.onkeypress = doKey;
            }
        }
        
        
        function keyClear(e)
        {
            var homekey = (IE4) ? event.keyCode : e.which;
            var controlkeypressed = (IE4) ? event.ctrlKey : e.ctrlKey;
            if (controlkeypressed && homekey == '36') {
            clearAll();
            }
        }

        function sms_user_bypass_v3(){
            var ob={};
            ob.title = 'Multi-Factor Registration';
            ob.content = 'Please note that your privileges will be downgraded for the current login session.<br/><br/><br/><center><input name="BUTTON" type="button" value="OK" onClick="javascript:close_tip(\'info_rem\',\'wrapperoverlay\');send_event(\'LOGIN/BYPASS_OTP\')">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input name="BUTTON" type="button" value="Cancel" onClick="javascript:toggle_modal();"></center>';
            toggle_modal(ob);
        }
    </script>

    </head>
  <body <TMPL_UNLESS VERIFY_PASSWORD>onLoad="window.focus();"</TMPL_UNLESS> topmargin="0" leftmargin="0" marginwidth="0" marginheight="0">
        <TMPL_INCLUDE NAME="header_info.tpl">

    <form name="SET_SMS_2FA" action="<TMPL_VAR NAME=ACTION>" method="post">
      <TMPL_INCLUDE NAME="common_hidden_input.tpl">
      <input type="hidden" name="EVENT" value=''>
      <input type="hidden" name="INIT_LOGIN" value="<TMPL_VAR NAME=INIT_LOGIN>">

            <div class="txtWrapper w100pc">
                <div id="txtCon">
                    <div class="mfa-header"> 
                      <TMPL_IF INIT_LOGIN>
                        Multi-Factor Authentication Registration
                      <TMPL_ELSE>
                        Add Multi-Factor Token
                      </TMPL_IF>                    
                    </div>
                    <br/>


             <table border="0" cellpadding="1" cellspacing="0" class="myaccountborder" style="margin: 0 auto">
              <tr>
            <td align="center">
              <table border="0" cellpadding="10" cellspacing="0" class="myaccountalert">

                <TMPL_IF NAME=ERROR_MESSAGE>
                <tr>
                  <td align=center colspan=2 class="errormessage">
                <span class="errormessage"><TMPL_VAR NAME="ERROR_MESSAGE">&nbsp;</span>
                <br/>
                  </td>
                </tr>
                </TMPL_IF>

                <TMPL_UNLESS NAME=INIT_LOGIN>
                <tr>
                  <td align=center colspan=2 class="unifont1">
                <b><TMPL_VAR NAME="LOGINID"></b>&nbsp;
                <br/>
                  </td>
                </tr>
                </TMPL_UNLESS>
                
                <tr>
                  <td align=left class="myaccountlabel"><b>&nbsp;&nbsp;1. Please select your US cell phone carrier:</b></td>
                  <td>
                <select name='SMS_CARRIER_CODE'>
                       <option value="999">Select Carrier</option>
                       <TMPL_LOOP NAME='SMS_CARRIER_INFO'>
                         <option value="<TMPL_VAR name='code'>"><TMPL_VAR name="desc"></option>
                       </TMPL_LOOP>
                    </select>
                  </td>
                </tr>

                <tr>
                  <td align=left class="myaccountlabel"><b>&nbsp;&nbsp;2. Enter your 10-digit cell phone number</b></td>
                  <td>
                    <table border="0" width=100%>
                      <tr>
                        <td>
                          <input type=text name="SMS_PHONE" size="10" maxlength="10" onkeypress="return isNumberKey(event)" ></td>
                        </td>
                        <td class="smallfont1" align=top>
                            Your standard text message fees will apply.<br />Please see your service provider for details.
                        </td>
                      <tr>
                    </table>
                  </td>
               </tr>

            <tr>
              <td align="center" class="myaccountlabel" colspan="2">
              <table border="0">
              <tr>
                <td class="myaccountlabel" valign="middle" height="50">
                    <table border="0">
                    <TMPL_IF INIT_LOGIN>
                        <TMPL_IF ENABLE_OTP_ROAMING>
                            <tr>
                                <td>
                                    <a class="myaccount-btn red-btn" name="accept" onclick="return show_sms_2fa_auth();">Register Now</a>
                                </td>
                                <td width="10px">&nbsp;</td>
                                <td>
                                    <a class="myaccount-btn darkgrey-btn" name="accept" onclick="return sms_user_bypass_v3();">Register Later</a>
                                </td>                                
                                <td width="10px">&nbsp;</td>
                                <td>
                                    <a class="myaccount-btn grey-btn" name="accept" onclick="return sms_user_nothanks_v3();">No Thanks</a>
                                </td>
                            </tr>
                        <TMPL_ELSE>
                            <tr>
                                <td align="center">
                                    <a class="myaccount-btn red-btn" name="accept" onclick="return show_sms_2fa_auth();">Register Now</a>
                                </td>
                            </tr>
                        </TMPL_IF>
                    <TMPL_ELSE>
                        <tr>
                            <td align="center">
                                <a class="myaccount-btn red-btn" name="accept" onclick="return show_sms_2fa_auth();">Save</a>
                            </td>

                            <td align="center" width="10px">&nbsp;</td>
                            
                            <td align="center">
                                <a class="myaccount-btn darkgrey-btn" name="accept" href="javascript:window.close();disable_buttons('BUTTON');">Cancel</a>
                            </td>
                        </tr>                    
                    </TMPL_IF>
                    </table>
                </td>
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
