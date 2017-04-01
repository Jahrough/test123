<!-- begin myaccount/manage_account_chpasswd_multi.tpl -->
<input type="hidden" name="LOGINID" value="<TMPL_VAR NAME='LOGINID'>">
<input type="hidden" name="MIN_PW_LEN" value="<TMPL_VAR NAME='MIN_PASSWORD_LENGTH'>">

<div class="myaccount-section-title" style="margin-bottom:28px;"><TMPL_IF SITEKEY_MSG>Secure Login Image<TMPL_ELSE>Account Credentials</TMPL_IF></div>

<div class="section-row">
    <TMPL_IF BILL_PMT_ONLY>
        <div>
	    &nbsp; &nbsp; <a class="btn red-btn" href="javascript:void(0);" onClick="send_event('LOGOUT');">Sign Out</a>
        </div>
    </TMPL_IF>
</div>
<TMPL_IF NAME="MESSAGE">
    <div class="section-row pd15">
        <div class="warningmessage">
                <TMPL_VAR NAME="MESSAGE">&nbsp;
        </div>
    </div>
    <TMPL_IF SITEKEY_MSG>
        <div class="section-row child-divs-center">
            <div>
                <input name="BUTTON" tabindex="1" class="rb_otp" type="button" value="Continue" onClick="send_event('MANAGE/MANAGE_SINGLE_ACCOUNT');"> 
                <script type="text/javascript" language="javascript">show_lsflash(<TMPL_IF EFSKID>'<TMPL_VAR NAME=EFSKID>'</TMPL_IF>)</script>
            </div>
        </div>
    </TMPL_IF>
</TMPL_IF>
<TMPL_UNLESS SITEKEY_MSG>
    <div class="section-row child-divs-center" style="margin-bottom:40px;">
         <div>
             <a class="btn darkgrey-btn" href="javascript:send_event('MANAGE/MANAGE_SINGLE_ACCOUNT_PASSWD');">
                 Change Password
             </a>
         </div>
         <div class="mgl15">
             <a class="btn darkgrey-btn" href="javascript:send_event('MANAGE/MANAGE_SINGLE_ACCOUNT_SEC_Q');">
                 Change Security Question(s)
             </a>
         </div>
         <TMPL_IF ENABLE_SITEKEYS> 
             <div class="mgl15">
                 <a class="btn darkgrey-btn" href="javascript:send_event('MANAGE/SITEKEY');">
                     Secure Login Image
                 </a>
             </div>
         </TMPL_IF>
         <TMPL_UNLESS CSAML_LOGIN>
         <TMPL_IF MFA_MACHINE_ACTIVATE_ENABLED>
         <TMPL_UNLESS MFA_COMPANY_IP_RESTRICT_NOROAM>
         <div class="mgl15">
             <a class="btn darkgrey-btn" href="javascript:send_event('OTP/MANAGE_OTP_USER');">
                 Manage Security Tokens
             </a>
         </div>
         </TMPL_UNLESS>
         </TMPL_IF>
         </TMPL_UNLESS>
    </div>
</TMPL_UNLESS>

<TMPL_INCLUDE NAME="manage_account_error_mesg.tpl">

<!-- end myaccount/manage_account_chpasswd_multi.tpl -->
