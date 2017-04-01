<!-- begin manage_account_otp_type_select.tpl -->
<!--<TMPL_VAR NAME=SERVER_ID>-->
<html>
<head>
<title>My Account</title>

<link href="<TMPL_VAR NAME='CSSPATH'>/style1.css" rel="stylesheet" type="text/css">
<link href="<TMPL_VAR NAME='CSSPATH'>/<TMPL_IF NAME=ENABLE_V2>v2/</TMPL_IF><TMPL_VAR NAME=SKIN_TYPE>/skin.css" rel="stylesheet" type="text/css">

<script src="<TMPL_VAR NAME='JSPATH'>/common.js"></script>
<script src="<TMPL_VAR NAME='JSPATH'>/shared.js"></script>
<script src="<TMPL_VAR NAME='JSPATH'>/user_admin.js"></script>
<script src="<TMPL_VAR NAME='JSPATH'>/validate.js"></script>
<script src="<TMPL_VAR NAME='JSPATH'>/otp.js"></script>

</head>

<body onLoad="<TMPL_UNLESS SHOW_MYACC_WITHOUT_PARENT>setInterval('checkparent()',2000);</TMPL_UNLESS>" topmargin="0" leftmargin="0" marginwidth="0" marginheight="0" class="alternatebody">

<form name="MYACCOUNT" action="<TMPL_VAR NAME=ACTION>" method="post">
<TMPL_INCLUDE NAME=common_hidden_input.tpl>
<INPUT type=hidden NAME="SKIN_TYPE" VALUE="<TMPL_VAR NAME=SKIN_TYPE>">
<INPUT type=hidden NAME="APPLICATION_TYPE" VALUE="<TMPL_VAR NAME=APPLICATION_TYPE>">
<INPUT type=hidden NAME="EVENT" VALUE="">

<!--
<table height="5" border="0" cellpadding="0" cellspacing="0" width="100%">
  <tr height="5">
    <td bgcolor="#cccccc" height="5" class="unifont2pt">&nbsp;</td>
  </tr>
</table>
-->
<center>

<TMPL_INCLUDE NAME="admin_header.tpl">

<TMPL_IF NAME="DISABLED">
  <TMPL_INCLUDE NAME=myaccount_disabled.tpl>
<TMPL_ELSE>

<INPUT type=hidden NAME="MANAGE_USER_OTP" VALUE="<TMPL_VAR NAME=MANAGE_USER_OTP>">
<INPUT type=hidden NAME="OTP_LOGINID" VALUE="<TMPL_VAR NAME=OTP_LOGINID>">

<table border=0 cellpadding="0" cellspacing="0" class="myaccountborder" width="880">
  <tr>
    <td align="center" valign="top">

    <table border="0" cellpadding="0" cellspacing="0" width="856">
      <tr height="12">
        <td height="12" width="856" class="unifont1">&nbsp;</td>
      </tr>
    </table>
    
    <table border=0 cellpadding="0" cellspacing="0" width="856" class="myaccountbody">
      <tr>
        <td colspan="2" align="center" class="myaccounttitle"><br>Select type of Security Token <TMPL_IF NAME=MANAGE_USER_OTP>to be assigned to user <TMPL_VAR NAME="OTP_LOGINID"></TMPL_IF></td>
      </tr>
      <tr>
        <td align="center" class="myaccounttitle" width="856" colspan="2"><br></TD>     
      </tr>
    </table>

        <table border="0" cellpadding="2" cellspacing="2" width="856" class="myaccountbody">

        <tr>
            <TMPL_IF NAME="MANAGE_USER_OTP">
            <td align="right" width="45%"><input name="BUTTON" tabindex="2" class="rb" type="button" value="<< Back" onClick="send_event('MANAGE/MANAGE_ACCOUNTS');disable_buttons('BUTTON');" onMouseDown="flip_style(this,'rbd');" disable_buttons('BUTTON');" onMouseOut="flip_style(this,'rb');"></td>
            <td align="center" width="1%"></td>
            <td align="right" width="5%"><input name="BUTTON" tabindex="2" class="rb" type="button" value="Verisign Token" onClick="send_event('OTP/SHOW_ADD_OTP_FORM');disable_buttons('BUTTON');" onMouseDown="flip_style(this,'rbd');" disable_buttons('BUTTON');" onMouseOut="flip_style(this,'rb');"></td>
            <td align="center" width="1%"></td>
            <td align="left" width="45%"><input name="BUTTON" tabindex="2" class="rb" type="button" value="Multi-Factor Token" onClick="send_event('OTP/SHOW_ASSIGN_SMS_OTP_FORM');disable_buttons('BUTTON');" onMouseDown="flip_style(this,'rbd');" disable_buttons('BUTTON');" onMouseOut="flip_style(this,'rb');"></td>
        <TMPL_ELSE>
            <td align="right" width="45%"><input name="BUTTON" tabindex="2" class="rb" type="button" value="<< Back" onClick="send_event('MANAGE/MANAGE_ACCOUNTS');disable_buttons('BUTTON');" onMouseDown="flip_style(this,'rbd');" disable_buttons('BUTTON');" onMouseOut="flip_style(this,'rb');"></td>
            <td align="center" width="1%"></td>
            <td align="center" width="5%"><input name="BUTTON" tabindex="2" class="rb" type="button" value="Verisign Token" onClick="send_event('OTP/MANAGE_OTP');disable_buttons('BUTTON');" onMouseDown="flip_style(this,'rbd');" disable_buttons('BUTTON');" onMouseOut="flip_style(this,'rb');"></td>
            <td align="center" width="1%"></td>
            <td align="left" width="45%"><input name="BUTTON" tabindex="2" class="rb" type="button" value="Multi-Factor Token" onClick="send_event('OTP/MANAGE_SMS_OTP');disable_buttons('BUTTON');" onMouseDown="flip_style(this,'rbd');" disable_buttons('BUTTON');" onMouseOut="flip_style(this,'rb');"></td>
        </TMPL_IF>
        </tr>

         <!-- <tr>
             <td colspan="4" align="center">
                  <TMPL_IF NAME="MANAGE_USER_OTP">
                  <input name="BUTTON" class="rb_otp_small" type="button" value="<< Back" onMouseDown="flip_style(this,'rbd_otp_small');" onClick="send_event('OTP/MANAGE_OTP_USER');disable_buttons('BUTTON');" onMouseOut="flip_style(this,'rb_otp_small');">
                  <TMPL_ELSE>
                  <input name="BUTTON" class="rb_otp_small" type="button" value="<< Back" onMouseDown="flip_style(this,'rbd_otp_small');" onClick="send_event('OTP/MANAGE_OTP');disable_buttons('BUTTON');" onMouseOut="flip_style(this,'rb_otp_small');">
                  </TMPL_IF>
            </td>
         </tr>-->

         <tr>
                    <td align="center" class="myaccounttitle" colspan="5">
             <br><br><br><br><br><br><br><br><br><br>
            </td>
                 </tr>
        </table>
      </td>
    </tr>
    </table>
</table>

<TMPL_INCLUDE NAME=myaccount_footer.tpl>

<span class="smallfont1">&nbsp;<br></span>

<TMPL_INCLUDE NAME="manage_account_error_mesg.tpl">





 



</TMPL_IF>

</center>

</form>
</body>
</html>
<!-- end manage_account_otp_type_select.tpl -->
