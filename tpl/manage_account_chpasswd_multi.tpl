<!-- begin manage_account_chpasswd_multi.tpl -->
<input type="hidden" name="LOGINID" value="<TMPL_VAR NAME='LOGINID'>">
<input type="hidden" name="MIN_PW_LEN" value="<TMPL_VAR NAME='MIN_PASSWORD_LENGTH'>">
<table border="0" cellpadding="0" cellspacing="0" class="myaccountborder" width="880">
  <tr>
    <td align="center" valign="top">
    <table border="0" cellpadding="0" cellspacing="0" width="856">
      <tr height="12">
        <td height="12" width="856" class="unifont1">&nbsp;</td>
      </tr>
    </table>
    <TMPL_IF BILL_PMT_ONLY>
    <table width="856" cellpadding="0" cellspacing="0" border="0" class="myaccountbody">
      <tr>
        <td><img width="856" height="5" border="0" src="<TMPL_VAR NAME=IMGPATH>/spacer.gif"></td>
      </tr>
      <tr>
        <td>
        <table width="856" cellpadding="0" cellspacing="0" border="0">
        <tr>
          <td width="1%"></td>
          <td>
            <input name="logout" tabindex="6" class="rb_otp_small" align="left" type="button" value="Log Out" onMouseDown="flip_style(this,'rbd_otp_small');" onClick="send_event('LOGOUT');" onMouseOut="flip_style(this,'rb_otp_small');">
          <td>
        </tr>
        </table>
        </td>
      </tr>
      <tr>
        <td><img width="856" height="5" border="0" src="<TMPL_VAR NAME=IMGPATH>/spacer.gif"></td>
      </tr>
      </tr>
      <tr>
      <td align="center" valign="middle" class="myaccountborder">
        <table width="856" cellpadding="0" cellspacing="0" border="0">
        <tr>
          <td colspan="5" align="center" width="856"><img width="856" height="12" border="0" src="<TMPL_VAR NAME=IMGPATH>/spacer.gif"></td>
        </tr>
        </table>
        </tr>
      </td>
      </tr>
    </table>
    </TMPL_IF>

    <table border="0" cellpadding="0" cellspacing="0" width="856" class="myaccountbody">
      <tr>
        <td colspan="3" align="center" class="myaccounttitle"><br><TMPL_IF SITEKEY_MSG>Secure Login Image<TMPL_ELSE>Account Credentials</TMPL_IF></td>
      </tr>
      <TMPL_IF NAME="MESSAGE">
	      <TR>
		<td class="myaccounttitle" align="center" width="860" colspan="3"><br><TMPL_VAR NAME="MESSAGE">&nbsp;</TD>
	      </TR>
		<TMPL_IF SITEKEY_MSG>	
		<tr> 
		   <td align='center' colspan='3'><br>
			<table border="0" cellpadding="10" cellspacing="0">
			   <tr>
			     <td align=center>
				<input name="BUTTON" tabindex="1" class="rb_otp" type="button" value="Continue" onMouseDown="flip_style(this,'rbd_otp');" onClick="send_event('MANAGE/MANAGE_SINGLE_ACCOUNT');" onMouseOut="flip_style(this,'rb_otp');"> 
			    </td> 
			  </tr> 
			</table>
		   </td>
		</tr>
		<div id='flc'></div>
		<script type="text/javascript" language="javascript">show_lsflash(<TMPL_IF EFSKID>'<TMPL_VAR NAME=EFSKID>'</TMPL_IF>)</script>
		</TMPL_IF>
      </TMPL_IF>


     <TMPL_UNLESS SITEKEY_MSG> 
     <tr>
        <td width="860" align="center">
        <br>
        <table border="0" cellpadding="2" cellspacing="0" width="600">
          <tr>
            <td class="unifont1" align="center" width="50%">
	    
	    <input name="BUTTON" tabindex="1" class="rb_otp" type="button" value="Change Password" onMouseDown="flip_style(this,'rbd_otp');" onClick="send_event('MANAGE/MANAGE_SINGLE_ACCOUNT_PASSWD');" onMouseOut="flip_style(this,'rb_otp');"> 

	    </TD>
	    <td class="unifont1" align="center" width="50%">
	    
	   <input name="BUTTON" tabindex="2" class="rb_otp" type="button" value="Change Security Question(s)" onMouseDown="flip_style(this,'rbd_otp');" onClick="send_event('MANAGE/MANAGE_SINGLE_ACCOUNT_SEC_Q');" onMouseOut="flip_style(this,'rb_otp');"> 
    
	    </TD>

	   <TMPL_IF ENABLE_SITEKEYS> 
	    <td class="unifont1" align="center" width="50%">
	   <input name="BUTTON" tabindex="2" class="rb_otp" type="button" value="Secure Login Image" onMouseDown="flip_style(this,'rbd_otp');" onClick="send_event('MANAGE/SITEKEY');" onMouseOut="flip_style(this,'rb_otp');"> 
	    </td>
	    </TMPL_IF>
	    <td class="unifont1" align="center" width="50%">
            <TMPL_UNLESS CSAML_LOGIN>
            <TMPL_IF NAME=MFA_MACHINE_ACTIVATE_ENABLED>
            <TMPL_UNLESS MFA_COMPANY_IP_RESTRICT_NOROAM>
	    <input name="BUTTON" tabindex="2" class="rb_otp" type="button" value="Manage Security Tokens" onMouseDown="flip_style(this,'rbd_otp');" onClick="send_event('OTP/MANAGE_OTP_USER');" onMouseOut="flip_style(this,'rb_otp');"> 
            </TMPL_UNLESS>
	    </TMPL_IF>
            </TMPL_UNLESS>
	    </TD>
          </tr>
        </table>
    
	<br><br><br>
	</td>
      </tr>
      </TMPL_UNLESS>

    </table>
    </td>
  </tr>
</table>


<TMPL_INCLUDE NAME=myaccount_footer.tpl>

<span class="smallfont1">&nbsp;<br></span>

<TMPL_INCLUDE NAME="manage_account_error_mesg.tpl">

<!-- end manage_account_chpasswd_multi.tpl -->
