<!DOCTYPE html>
<html lang="en">
<head>
<link href="<TMPL_VAR NAME='CSSPATH'>/accurint.css" rel="stylesheet" type="text/css">
<TMPL_INCLUDE NAME="v4/includes.tpl"> 
<title>LexisNexis&reg; Terms for Use Data</title>
<link href="<TMPL_VAR NAME='CSSPATH'>/<TMPL_VAR NAME=APPLICATION_TYPE>/<TMPL_VAR NAME=USER_THEME>.css" rel="stylesheet" type="text/css">

<script src="<TMPL_VAR NAME='JSPATH'>/v4/mfa.js"></script>
<script> var otpLength = "<TMPL_VAR OTPLENGTH>";</script>
 <body topmargin="0" leftmargin="0" marginwidth="0" marginheight="0" >

    <div id="hd" class="<TMPL_IF AML>aml-logo<TMPL_ELSE>rm-logo</TMPL_IF>"></div>
    <form name="GLB" action="<TMPL_VAR NAME=ACTION>" method="post">
       <TMPL_INCLUDE NAME="common_hidden_input.tpl">
       <input type="hidden" name="LOGINID" value="<TMPL_VAR NAME=LOGINID>">
       <input type="hidden" name="EVENT" value="OTP/MFA_INPUT_TOKEN_FINAL">
       <input type="hidden" NAME="APPLICATION_TYPE" VALUE="<TMPL_VAR NAME=APPLICATION_TYPE>">
       <input type="hidden" NAME="TOKENID" value="<TMPL_VAR NAME=TOKENID>">
       <input type="hidden" NAME="MANAGE_USER_OTP" VALUE="<TMPL_VAR NAME=MANAGE_USER_OTP>">
       <input type="hidden" NAME="OTP_LOGINID" VALUE="<TMPL_VAR NAME=OTP_LOGINID>">
       <input type="hidden" NAME="OTPLENGTH" VALUE="<TMPL_VAR NAME=OTPLENGTH>">
       <input type="hidden" NAME="NEW_MFA" VALUE="<TMPL_VAR NAME=MFA_MACHINE_ACTIVATE_ENABLED>">

       <TMPL_INCLUDE NAME="manage_account_mfa_background.tpl">

       <div id="verify-mfa-token-modal" class="modal fade bs-example-modal-sm" data-backdrop="static" data-keyboard="false" aria-live="polite" role="dialog" aria-labelledby="clearFreqsModal" aria-hidden="true">
       <div class="modal-dialog trap">
            <div class="modal-content">
                <div class="modal-header">
                   <TMPL_IF MFA_ALLOW_ROAMING>
                      <button type="button" class="close" onclick="return bypass_otp();">
                   <TMPL_ELSE>
                      <button type="button" class="close" onclick="show_mfa_close_dialog();">
                   </TMPL_IF>
                       <span aria-hidden="true" class="close-icon"></span>
                       <span class="sr-only">Close</span>
                    </button>
                    <h4 class="modal-title">Enter OTP</h4>
                </div><br>
                <div class="modal-body">
                   <h3 style="font-size:.9em">Your secure one-time passcode (OTP) has been sent.<br><br>Enter the OTP you received via email, voice or text. Please allow sufficient time for delivery. Your OTP is valid only for 60 minutes.</h3><br><br>
                   <table>
                    <input type="text" class="form-control" NAME="OTP1" MAXLENGTH=<TMPL_VAR NAME=OTPLENGTH> placeholder="OTP" style="width:300px">
                    <br><span class="pull-left"><br><h3 style="font-size:.9em">Did not receive your passcode?&nbsp;<a href="javascript:send_event('OTP/MFA_INPUT_TOKEN_SAVE');" style="color:#00f; text-decoration:underline">Choose another delivery method</a></h3><span>
                   </table>
                </div>
                <div class="modal-footer">
                   <button class="btn btn-danger" onclick="do_edit();" type="button">Send</button>
                   <TMPL_IF MFA_ALLOW_ROAMING>
                      <button class="btn btn-default" onclick="return bypass_otp();" type="button">Skip</button>
                   </TMPL_IF>
               </div>
            </div>
       </div>
       </div>

    </form>

    <script type='text/javascript'>
        $(function(){
            show_mfa_token_verify();
        });
    </script>
   
    <TMPL_INCLUDE NAME="manage_account_mfa_footer.tpl">
 </body>
</html>
<!-- end v4/manage_account_mfa_verify_token.tpl-->
