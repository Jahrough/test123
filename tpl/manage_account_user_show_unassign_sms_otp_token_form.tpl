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

<table border="0" cellpadding="0" cellspacing="0" class="myaccountborder" width="880">
  <tr>
    <td align="center" valign="top">
    <table border="0" cellpadding="0" cellspacing="0" width="856">
      <tr height="12">
        <td height="12" width="856" class="unifont1">&nbsp;</td>
      </tr>
    </table>
    <table cellpadding="0" cellspacing="0" width="856" class="myaccountbody">
      <tr>
        <td colspan="2" align="center" class="myaccounttitle"><br>Unassign Multi-Factor Security Token</td>
      </tr>

    <TMPL_IF NAME="MESSAGE">
      <tr>
        <td align="center" class="myaccounttitle" width="856" colspan="2"><br></TD>     
      </tr>
    <tr>
    <TMPL_IF NAME="TASK_FAILURE">
    <td align="center" class="errormessage" colspan="4">
     <span class="errormessage"><TMPL_VAR NAME="MESSAGE">&nbsp;</span>
    </td>
    <TMPL_ELSE>
    <td align="center" class="successmessage" colspan="4">
     <span class="successmessage"><TMPL_VAR NAME="MESSAGE">&nbsp;</span>
    </td>
    </TMPL_IF>
    </tr>
    </TMPL_IF>
    <tr>
      <td>
       <br />
        <TMPL_UNLESS NAME="USER_UNASSIGNED">
            <table border=1 cellpadding="2" cellspacing="0" width="750" align=center>
              <tr>
                <td class="unifont1" align="left"><TMPL_VAR NAME="LOGINID"></td>
                <td class="unifont1" align="left"><TMPL_VAR NAME="OTP_USER_FIRST"></td>
                <td class="unifont1" align="left"><TMPL_VAR NAME="OTP_USER_LAST"></td>
                <td class="unifont1" align="left"><TMPL_VAR NAME="PHONE"></td>
                <td class="unifont1" align="left"><TMPL_VAR NAME="CARRIER"></td>
              </tr>
            </table>
        </TMPL_UNLESS>

    <table border=0 cellpadding="2" cellspacing="0" width="750" align=center>
    <tr><td height="10"></td>
    <tr>
      <tr>
  <TMPL_IF NAME="USER_UNASSIGNED">
        <td align="center"><input name="BUTTON" class="rb_otp_small" type="button" value="Close" onMouseDown="flip_style(this,'rbd_otp_small');" onClick="window.close();disable_buttons('BUTTON');" onMouseOut="flip_style(this,'rb_otp_small');"></td>
      <TMPL_ELSE>  
        <td align="right"><input name="BUTTON" class="rb_otp_small" type="button" value="OK" onMouseDown="flip_style(this,'rbd_otp_small');" onClick="javascript:sms_user_unassign('<TMPL_VAR NAME="PHONE">','<TMPL_VAR NAME="LOGINID">','<TMPL_VAR NAME="TOKENID">');" disable_buttons('BUTTON'); " onMouseOut="flip_style(this,'rb_otp_small');"></td>
        <td align="left"><input name="BUTTON" class="rb_otp_small" type="button" value="Cancel" onMouseDown="flip_style(this,'rbd_otp_small');" onClick="window.close();disable_buttons('BUTTON');" onMouseOut="flip_style(this,'rb_otp_small');"></td>
      </TMPL_IF>
      </tr>
        </table>
    <br><br><br>
    </td>
      </tr>
    </table>
    </td>
  </tr>
</table>

<TMPL_INCLUDE NAME=myaccount_footer.tpl>

<span class="smallfont1">&nbsp;<br></span>

<TMPL_INCLUDE NAME="manage_account_error_mesg.tpl">

<!-- manage_account_user_show_unassign_sms_otp_token_form.tpl-->
