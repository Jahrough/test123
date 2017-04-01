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
       <input type="hidden" NAME="UPDATE_USER" VALUE="1">

       <TMPL_INCLUDE NAME="manage_account_mfa_background.tpl">

       <div id="mfa-token-input-modal" class="modal fade bs-example-modal-sm" data-backdrop="static" data-keyboard="false" aria-live="polite" role="dialog" aria-labelledby="clearFreqsModal" aria-hidden="true">
           <div class="modal-dialog trap">
               <div class="modal-content">
                   <div class="modal-header">
                       <h4 class="modal-title">Multifactor Authentication Registration.</h4>
                   </div><br>
                   <div class="modal-body">
                      <h3 style="font-size:.9em">Update Your Information:</h3><br><br>
                      <table>
                      <tr><th style="width:350px">User: <strong><TMPL_VAR NAME="LOGINID"></strong></th></tr>
                      <tr><td width="40%">Email: </td><td><input type=text class="form-control" NAME="EMAIL" size="40" maxlength="60" value="<TMPL_VAR NAME=USER_EMAIL>"></td></tr>
                      <tr><td width="40%">Primary Phone: </td><td><input type=text class="form-control" NAME="SMS_PHONE" value="<TMPL_VAR NAME=SMS_PHONE>" MAXLENGTH=12 placeholder="Primary Phone"></td></tr>
                      <tr><td width="40%">Alternate Phone: </td><td><input type=text class="form-control" NAME="VOICE_PHONE" value="<TMPL_VAR NAME=VOICE_PHONE>" MAXLENGTH="12"></td></tr>
                      </table>
                   </div><br>
                   <div class="modal-footer">
                      <button class="btn btn-danger" onclick="if (!check_vals()){return false};send_event('OTP/MFA_INPUT_TOKEN_SAVE');" type="button">Save</button>
                      <button class="btn btn-default" onclick="document.forms[0].UPDATE_USER.value='0';send_event('OTP/MFA_INPUT_TOKEN_SAVE');" type="button">No Changes</button>
                  </div>
               </div>
           </div>
       </div>
   </form>

    </form>

    <script type='text/javascript'>
        $(function(){
            show_mfa_token_input();
        });
  </script>
   
    <TMPL_INCLUDE NAME="manage_account_mfa_footer.tpl">
 </body>
</html>
<!-- end v4/manage_account_mfa_input_token.tpl-->
