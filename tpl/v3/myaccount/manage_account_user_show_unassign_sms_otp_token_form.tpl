<!-- begin manage_account_user_show_unassign_sms_otp_token_form.tpl -->

<script>
function doKey(e)
{
    var typedkey = (IE4) ? event.keyCode : e.which;


    if (typedkey == 13 && !ENTER_FOCUS) {
       sms_user_unassign('<TMPL_VAR NAME="PHONE">','<TMPL_VAR NAME="LOGINID">','<TMPL_VAR NAME="TOKENID">');
    }
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


<input type="hidden" NAME="TOKENID" value="<TMPL_VAR NAME=TOKENID>">
<input type="hidden" NAME="LOGINID" value="<TMPL_VAR NAME=LOGINID>">
<INPUT type=hidden NAME="OTP_LOGINID" VALUE="<TMPL_VAR NAME=OTP_LOGINID>">

<div class="myaccount-section-title">Unassign Multi-Factor Security Token</div>


<div class="section-row" style="padding: 15px 150px;">
    <fieldset class="mgb0">

     <TMPL_INCLUDE NAME=myaccount/myaccount_messages.tpl>

                <table id="userList" class="display">

                <TMPL_UNLESS NAME="USER_UNASSIGNED">
                <thead>
                      <tr class="myaccountbody">
                        <td><b>Login ID</b></td>
                        <td><b>First Name</b></td>
                        <td><b>Last Name</b></td>
                        <td><b>Phone Number</b></TD>
                        <td><b>Carrier</b></TD>
                      </tr>
                </thead>

                      <tr>
                        <td><TMPL_VAR NAME="LOGINID"></td>
                        <td><TMPL_VAR NAME="OTP_USER_FIRST"></td>
                        <td><TMPL_VAR NAME="OTP_USER_LAST"></td>
                        <td><TMPL_VAR NAME="PHONE"></td>
                        <td><TMPL_VAR NAME="CARRIER"></td>
                      </tr>
                </TMPL_UNLESS>
                  <tr>
                     <td colspan="5" align="center">
                          <TMPL_IF NAME="USER_UNASSIGNED">
                              <input name="BUTTON" class="btn grey-btn" type="button" value="Close" onClick="javascript:window.close();">
                          <TMPL_ELSE>
                              <input name="BUTTON" class="btn red-btn" type="button" value="Ok" onClick="javascript:sms_user_unassign_v3('<TMPL_VAR NAME="PHONE">','<TMPL_VAR NAME="LOGINID">','<TMPL_VAR NAME="TOKENID">');">
                              <input name="BUTTON" class="btn grey-btn" type="button" value="Close" onClick="javascript:window.close();">
                          </TMPL_IF>
                    </td>
                 </tr>

                </table>


    </fieldset>
</div> 



<!-- manage_account_user_show_unassign_sms_otp_token_form.tpl-->
