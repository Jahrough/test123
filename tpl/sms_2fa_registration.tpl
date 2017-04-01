<!-- begin sms_2fa_registration.tpl -->
<!--<TMPL_VAR NAME=SERVER_ID>-->
<html>
  <head>
    <title>Multi-Factor Authentication Registration</title>

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

    function bypass_otp() 
    {
        alert("Please note that your privileges will be downgraded for the current login session.");
        send_event('LOGIN/BYPASS_OTP');
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

      <!--<TMPL_IF ERROR_MESSAGE>
        <script>
      alert('<TMPL_VAR ERROR_MESSAGE>');
    </script>
      </TMPL_IF>-->
      <br /><br />
      <div align="center">
        <table border="0" cellpadding="0" cellspacing="0" width="880">
          <tr>
            <td align="center" valign="top">
              <table border="0" cellpadding="0" cellspacing="0" width="856">
                <tr>
          <td align="center" class="myaccounttitle" height="20" valign="middle"><br>
             Multi-Factor Authentication Registration
            <br/><br/>
          </td>
                </tr>
                <tr>
                  <td colspan="2" align="center" class="myaccountlabel" height="100" valign="middle">
            <table border="0" cellpadding="1" cellspacing="0" width="500" class="myaccountborder" style="margin: 0 auto">
              <tr>
            <td align="center">
              <table border="0" cellpadding="10" cellspacing="0" width="600" class="myaccountalert">

                <TMPL_IF NAME=ERROR_MESSAGE>
                <tr>
                  <td align=center colspan=2 class="errormessage">
                <span class="errormessage"><TMPL_VAR NAME="ERROR_MESSAGE">&nbsp;</span>
                <br/>
                  </td>
                </tr>
                </TMPL_IF>
                
                <tr>
                  <td align=left colspan=2 class="myaccountlabel">
                Accurint now offers Multi-Factor authentication over cell phones. Your Company's Administrator has elected to require this option for your company. The following screens will help you setup your cell phone as a device to receive one-time-passwords via SMS.
                <br/><br/>
                If at anytime you want to dis-continue this setup, please click on "Skip Setup" button at the bottom.
                <br/><br/>
                  <TMPL_IF NAME="IS_SYSTEM_ADMIN">
                    <a class="adver" href="javascript:general_win('<TMPL_VAR NAME=HTMLPATH>/bps/sms_faq_2factorFAQAdmin.html','2FactorFAQAdmin',750,500,0,0,0,1,1,0);void(0);">Need Assistance?</a>
                  <TMPL_ELSE>
                  <a class="adver" href="javascript:general_win('<TMPL_VAR NAME=HTMLPATH>/bps/sms_faq_2factorFAQ.html','2FactorFAQ',750,500,0,0,0,1,1,0);void(0);">Need Assistance?</a>
                  </TMPL_IF>
                  </td>
                </tr>

                <tr>
                  <td align=left class="myaccountlabel"><b>&nbsp;&nbsp;1. Please select your US cell phone carrier:</b></td>
                  <td>
                    <select name='SMS_CARRIER_CODE'>
                       <option value="999">Select Carrier</option>
                       <TMPL_LOOP NAME='SMS_CARRIER_INFO'>
                          <option value="<TMPL_VAR name='code'>"><TMPL_VAR name="desc"></option>
                       </TMPL_LOOP></select>
                  </td>
                </tr>

                <tr>
                  <td align=left class="myaccountlabel"><b>&nbsp;&nbsp;2. Enter your 10-digit cell phone number</b></td>
                  <td><input type=text name="SMS_PHONE" size="10" maxlength="10" tabindex="1"></td>
                </tr>

            <tr>
              <td align="center" class="myaccountlabel" colspan="2">
              <table border="0" width="500">
              <tr>
                <td class="myaccountlabel" valign="middle" height="50">
                    <table border="0" width="95%">
                    <TMPL_IF NAME="ENABLE_OTP_ROAMING">
                    <tr>
                    <td align="right" width="49%"><input name="BUTTON" tabindex="2" class="rb" type="button" value="Continue" onClick="return show_sms_2fa_auth();" onMouseDown="flip_style(this,'rbd');" disable_buttons('BUTTON');" onMouseOut="flip_style(this,'rb');"></td>
                    <td align="center" width="2%"></td>
                    <td align="left" width="49%"><input name="BUTTON" tabindex="2" class="rb" type="button" value="Bypass OTP" onClick="return bypass_otp();" onMouseDown="flip_style(this,'rbd');" disable_buttons('BUTTON');" onMouseOut="flip_style(this,'rb');"></td>
                    </tr>
                    <TMPL_ELSE>
                    <tr>
                    <td align="center"><input name="BUTTON" tabindex="2" class="rb" type="button" value="Continue" onClick="return show_sms_2fa_auth();" onMouseDown="flip_style(this,'rbd');" disable_buttons('BUTTON'); onMouseOut="flip_style(this,'rb');"></td>
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
<!-- end sms_2fa_registration.tpl -->
