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

       <div id="final-mfa-token-modal" class="modal fade bs-example-modal-sm" data-backdrop="static" data-keyboard="false" aria-live="polite" role="dialog" aria-labelledby="clearFreqsModal" aria-hidden="true">
       <div class="modal-dialog trap">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" onclick="send_event('LOGIN/CONTINUE')">
                       <span aria-hidden="true" class="close-icon"></span>
                       <span class="sr-only">Close</span>
                    </button>
                    <h4 class="modal-title">Multifactor authentication complete.</h4>
                </div><br>
                <div class="modal-body">
                   <h3 style="font-size:.9em"><TMPL_VAR NAME=MESSAGE></h3><br><br>
                </div><br>
                <div class="modal-footer">
                   <button class="btn btn-danger" onclick="send_event('<TMPL_VAR NAME=BUTTON_EVENT>');" type="button"><TMPL_VAR NAME=BUTTON_NAME></button>
               </div>
            </div>
        </div>
       </div>

    </form>

    <script type='text/javascript'>
        $(function(){
            show_mfa_token_final();
        });
    </script>

    <TMPL_INCLUDE NAME="manage_account_mfa_footer.tpl">
 </body>
</html>
<!-- end v4/manage_account_mfa_final.tpl-->
