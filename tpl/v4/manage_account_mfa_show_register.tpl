<!DOCTYPE html>
<html lang="en">
<head>
<link href="<TMPL_VAR NAME='CSSPATH'>/accurint.css" rel="stylesheet" type="text/css">
<TMPL_INCLUDE NAME="v4/includes.tpl">
<title>LexisNexis&reg; Terms for Use Data</title>
<link href="<TMPL_VAR NAME='CSSPATH'>/<TMPL_VAR NAME=APPLICATION_TYPE>/<TMPL_VAR NAME=USER_THEME>.css" rel="stylesheet" type="text/css">

<script src="<TMPL_VAR NAME='JSPATH'>/v4/mfa.js"></script>
 <body topmargin="0" leftmargin="0" marginwidth="0" marginheight="0" >

    <div id="hd" class="<TMPL_IF AML>aml-logo<TMPL_ELSE>rm-logo</TMPL_IF>"></div>
    <form name="GLB" action="<TMPL_VAR NAME=ACTION>" method="post">
       <TMPL_INCLUDE NAME="common_hidden_input.tpl">
       <input type="hidden" name="LOGINID" value="<TMPL_VAR NAME=LOGINID>">
       <input type="hidden" name="EVENT" value="OTP/MFA_INPUT_TOKEN_DETAILS">
       <input type="hidden" NAME="APPLICATION_TYPE" VALUE="<TMPL_VAR NAME=APPLICATION_TYPE>">

       <TMPL_INCLUDE NAME="manage_account_mfa_background.tpl">
       <div id="mfa-registration-modal" class="modal fade bs-example-modal-sm" data-backdrop="static" data-keyboard="false" aria-live="polite" role="dialog" aria-labelledby="clearFreqsModal" aria-hidden="true">
       <div class="modal-dialog trap">
               <div class="modal-content">
                   <div class="modal-header">
                       <h4 class="modal-title">Multifactor Authentication Registration.</h4>
                   </div><br>
                   <div class="modal-body">
                      <h3 style="font-size:.9em">Our customers place their trust in us.&nbsp;&nbsp;It is a responsibility we at <TMPL_IF APP_NAME><TMPL_VAR NAME=APP_NAME><TMPL_ELSE>LexisNexis&#174;</TMPL_IF> take very seriously.&nbsp;&nbsp;When you attempt to a access certain information from a browser or location our systems do not recognize, you must request and enter a temporary one-time passcode (OTP), which helps us identify you.&nbsp;&nbsp;This added layer of security helps prevent unauthorized access to certain information and products.<br /><br /> You may choose to provide at least one telephone number to receive your OTP and other security notifications from <TMPL_IF APP_NAME><TMPL_VAR NAME=APP_NAME><TMPL_ELSE>LexisNexis&#174;</TMPL_IF> via SMS (text message) or automated voice call.&nbsp;&nbsp;The phone number that you provide will only be used in connection with account security.&nbsp;&nbsp;If you do not provide a telephone number, you can choose to have the OTP sent to your email address.<br /><br /> Click <b>Register</b> to begin the process of requesting an OTP.</h3>
                   </div><br>
                   <div class="modal-footer">
                      <button class="btn btn-danger" onclick="send_event('OTP/MFA_INPUT_TOKEN_DETAILS');" type="button">Register</button>
                      <TMPL_IF MFA_APPROVED_IP>
                        <button class="btn btn-default" onclick="send_event('LOGIN/CONTINUE');" type="button">Skip</button>
                      <TMPL_ELSE>
                        <TMPL_IF MFA_ALLOW_ROAMING>
                          <button class="btn btn-default" onclick="return bypass_otp();" type="button">Skip</button>
                        <TMPL_ELSE>
                          <button class="btn btn-default" onclick="send_event('LOGIN/LOGIN');" type="button">Exit</button>
                        </TMPL_IF>
                      </TMPL_IF>
                  </div>
               </div>
           </div>
       </div>
    </form>

    <script type='text/javascript'>
        $(function(){
            show_mfa_registration();
        });
    </script>
    <TMPL_INCLUDE NAME="manage_account_mfa_footer.tpl">
 </body>
</html>
<!-- end v4/manage_account_mfa_show_register.tpl-->
