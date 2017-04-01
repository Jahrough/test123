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
       <input type="hidden" NAME="TOKENID" value="<TMPL_VAR NAME=TOKENID>">
       <input type="hidden" NAME="MANAGE_USER_OTP" VALUE="<TMPL_VAR NAME=MANAGE_USER_OTP>">
       <input type="hidden" NAME="OTP_LOGINID" VALUE="<TMPL_VAR NAME=OTP_LOGINID>">
       <INPUT type="hidden" NAME="EMAIL" VALUE="<TMPL_VAR NAME=USER_EMAIL>">
       <INPUT type="hidden" NAME="MASK_EMAIL" VALUE="<TMPL_VAR NAME=MASK_EMAIL>">
       <INPUT type="hidden" NAME="SMS_PHONE" VALUE="<TMPL_VAR NAME=SMS_PHONE>">
       <INPUT type="hidden" NAME="VOICE_PHONE" VALUE="<TMPL_VAR NAME=VOICE_PHONE>">
       <INPUT type="hidden" NAME="SMS_PHONE_MASK" VALUE="<TMPL_VAR NAME=SMS_PHONE_MASK>">
       <INPUT type="hidden" NAME="VOICE_PHONE_MASK" VALUE="<TMPL_VAR NAME=VOICE_PHONE_MASK>">
       <input type="hidden" NAME="AUTH_SEQUENCE" VALUE="1">

       <TMPL_INCLUDE NAME="manage_account_mfa_background.tpl">

       <div id="send-mfa-token-modal" class="modal fade bs-example-modal-sm" data-backdrop="static" data-keyboard="false" aria-live="polite" role="dialog" aria-labelledby="clearFreqsModal" aria-hidden="true">
       <div class="modal-dialog trap">
            <div class="modal-content">
                <div class="modal-header">
                      <TMPL_IF MFA_APPROVED_IP>
                         <button type="button" class="close" onclick="send_event('LOGIN/CONTINUE')">    
                      <TMPL_ELSE>
                         <TMPL_IF MFA_ALLOW_ROAMING>
                            <button type="button" class="close" onclick="return bypass_otp();">    
                         <TMPL_ELSE>
                            <button type="button" class="close" onclick="show_mfa_close_dialog();">    
                         </TMPL_IF>
                      </TMPL_IF>
                       <span aria-hidden="true" class="close-icon"></span>
                       <span class="sr-only">Close</span>
                    </button>
                    <h4 class="modal-title"><br>You are attempting to access this application from a location or device that we do not recognize.  You must enter a secure one-time passcode (OTP) to continue.</h4>
                </div><br>
                <div class="modal-body">
                   <h3 style="font-size:.9em"><TMPL_IF ADDL_MESSAGE><TMPL_VAR NAME="ADDL_MESSAGE"><br><br></TMPL_IF>Choose how you want to receive your passcode:</h3><br><br>
                   <table>
                   <tr><th style="width:350px">User: <strong><TMPL_VAR NAME="LOGINID"></strong></th><th style="width:150px">Send Token:</th><th style="width:150px">Send Voice</th></tr>
                   <tr><td>Email: <TMPL_VAR NAME="MASK_EMAIL"></td><td><input type="radio" data-value="TOKEN_TYPE_EMAIL" name="TOKEN_TYPE" checked></td><td></td> </tr>
                   <tr><td>Phone: <TMPL_VAR NAME=SMS_PHONE_MASK></td><td><input type="radio" data-value="TOKEN_TYPE_PHONE" name="TOKEN_TYPE" <TMPL_UNLESS NAME="SMS_PHONE_MASK">disabled</TMPL_UNLESS>></td><td><input type="radio" data-value="TOKEN_TYPE_PHONE_VOICE" name="TOKEN_TYPE" <TMPL_UNLESS NAME="SMS_PHONE_MASK">disabled</TMPL_UNLESS>></td></tr>
                   <tr><td>Alternate Phone: <TMPL_VAR NAME=VOICE_PHONE_MASK></td><td><input type="radio" data-value="TOKEN_TYPE_ALT_PHONE" name="TOKEN_TYPE" <TMPL_UNLESS NAME="VOICE_PHONE_MASK">disabled</TMPL_UNLESS>></td><td><input type="radio" data-value="TOKEN_TYPE_ALT_PHONE_VOICE" name="TOKEN_TYPE" <TMPL_UNLESS NAME="VOICE_PHONE_MASK">disabled</TMPL_UNLESS>></td></tr>
                   </table>
                </div><br>
                <div class="modal-footer">
                   <button class="btn btn-danger" onclick="mfa_send_token();" type="button">Send</button>
                      <TMPL_IF MFA_APPROVED_IP>
                         <button class="btn btn-default" onclick="send_event('LOGIN/CONTINUE');" type="button">Skip</button>
                      <TMPL_ELSE>
                         <TMPL_IF MFA_ALLOW_ROAMING>
                            <button class="btn btn-default" onclick="return bypass_otp();" type="button">Skip</button>
                         </TMPL_IF>
                      </TMPL_IF>
               </div>
            </div>
       </div>
       </div>
       <div id="show-bypass-confirm-modal" class="modal fade bs-example-modal-sm" aria-live="polite" role="dialog" aria-labelledby="singleTabViewConfirmModal" aria-hidden="true">
         <div class="modal-dialog trap">
             <div class="modal-content">
                 <div class="modal-header" style="text-align-center">
                     <button type="button" class="close" data-dismiss="modal">
                        <span aria-hidden="true" class="close-icon"></span>
                        <span class="sr-only">Close</span>
                     </button>
                     <h2 class="modal-title">Downgraded Entitlements</h2>
                 </div>
                 <div class="modal-body">
                         <span>Please note that your privileges will be downgraded for the current login session.</span>
                         <br><br><br/><hr/><br/>
                     <div style="text-align:center;">
                         <button class="btn btn-default" onclick="send_event('LOGIN/BYPASS_OTP');" type="button">&nbsp;&nbsp;OK&nbsp;&nbsp;</button>
                     </div>
                 </div>
             </div>
         </div>
       </div>
    </form>

    <script type='text/javascript'>
        $(function(){
          show_mfa_token_send();
        });
    </script>
   
    <TMPL_INCLUDE NAME="manage_account_mfa_footer.tpl">
 </body>
</html>
<!-- end v4/manage_account_mfa_send_token.tpl-->
