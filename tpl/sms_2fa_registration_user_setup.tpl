<!-- begin sms2fa_registration_user_setup.tpl -->
<!--<TMPL_VAR NAME=SERVER_ID>-->
<html>
  <head>
    <title>SMS based Multi-Factor Registration</title>

    <link href="<TMPL_VAR NAME='CSSPATH'>/style1.css" rel="stylesheet" type="text/css">
    <link href="<TMPL_VAR NAME='CSSPATH'>/<TMPL_VAR NAME=SKIN_TYPE>/skin.css" rel="stylesheet" type="text/css">
    <TMPL_IF ENABLE_V2>
    <link href="<TMPL_VAR NAME='CSSPATH'>/v2/accurint.css" rel="stylesheet" type="text/css">
    <link href="<tmpl_var csspath>/v2/<tmpl_var application_type>/diff.css" rel="stylesheet" type="text/css">
    <link href="<TMPL_VAR NAME='CSSPATH'>/v2/<TMPL_VAR NAME=APPLICATION_TYPE>/<TMPL_VAR NAME=USER_THEME>.css" rel="stylesheet" type="text/css">
    </TMPL_IF>

    <script src="<TMPL_VAR NAME='JSPATH'>/common.js"></script>
    <script src="<TMPL_VAR NAME='JSPATH'>/shared.js"></script>
    
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
</script>
  </head>

  <body topmargin="0" leftmargin="0" marginwidth="0" marginheight="0" onload="document.forms[0].SMS_PHONE.focus();">
    <TMPL_IF ENABLE_V2>
    <div id="hd">
    <h2><a trackid="hdr_top_logo">LexisNexis Accurint</a></h2>
    </div>
    </TMPL_IF>
    <form name="SET_SMS_2FA" action="<TMPL_VAR NAME=ACTION>" method="post">
      <TMPL_INCLUDE NAME=common_hidden_input.tpl>
      <input type="hidden" name="EVENT" value=''>
      <input type="hidden" name="INIT_LOGIN" value="<TMPL_VAR NAME=INIT_LOGIN>">
      <br /><br />
      <div align="center">
              <table border="0" cellpadding="0" cellspacing="0" width="856">
                <tr>
                    <td align="center" class="myaccounttitle" height="20" valign="middle"><br>
                      <TMPL_IF INIT_LOGIN>
                        Multi-Factor Authentication Registration
                      <TMPL_ELSE>
                        Add Multi-Factor Token
                      </TMPL_IF>
                      <br/><br/>
                   </td>
                </tr>
                <tr>
                  <td colspan="2" align="center" class="myaccountlabel" height="100" valign="middle">
            <table border="0" cellpadding="1" cellspacing="0" width="500" class="myaccountborder" style="margin: 0 auto">
              <tr>
            <td align="center">
              <table border="0" cellpadding="10" cellspacing="0" width="675" class="myaccountalert">

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
                          <input type=text name="SMS_PHONE" size="10" maxlength="10" tabindex="1" onkeypress="return isNumberKey(event)" ></td>
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
              <table border="0" width="500">
              <tr>
                <td class="myaccountlabel" valign="middle" height="50">
                    <table border="0" width="95%">
                    <TMPL_IF INIT_LOGIN>
                        <TMPL_IF ENABLE_OTP_ROAMING>
                            <tr>
                                <td align="left" width="30%"><input name="BUTTON" tabindex="2" type="button" value="Register Now" onClick="return show_sms_2fa_auth();"></td>
                                <td align="center" width="2%"></td>
                                <td align="left" width="30%"><input name="BUTTON" tabindex="3" type="button" value="Register Later" onClick="javascript:sms_user_bypass();"></td>
                                <td align="center" width="2%"></td>
                                <td align="left" width="30%"><input name="BUTTON" tabindex="4" type="button" value="No Thanks" onClick="javascript:sms_user_nothanks();"></td>
                            </tr>
                        <TMPL_ELSE>
                            <tr>
                                <td align="center"><input name="BUTTON" tabindex="2" type="button" value="Register Now" onClick="return show_sms_2fa_auth();"></td>
                            </tr>
                        </TMPL_IF>
                    <TMPL_ELSE>
                        <tr>
                            <td align="right" width="10%"><input name="BUTTON" tabindex="2" type="button" value="Save" onClick="return show_sms_2fa_auth();"></td>
                            <td align="center" width="1%"></td>
                            <td align="left" width="10%"><input name="BUTTON" tabindex="3" type="button" value="Cancel" onClick="window.close();disable_buttons('BUTTON');"></td>
                        </tr>                    
                    </TMPL_IF>
                    </table>
                </td>
                </tr>
                </table>
              </td>
            </tr>
              </table>
            </td>
              </tr>
            </table>
      </div>

    </form>
  </body>
</html>
<!-- end sms2fa_registration_user_setup.tpl -->
