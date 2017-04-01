<!-- begin login body3 -->
	<br/>	
	<h2>We do not recognize the computer from which you are logging in from. Please answer your security question below to proceed with your login.</h2>
	<br/>	<br/>	
	<p><b><TMPL_VAR NAME=QUES></b></p>
	<input type=hidden name="QNUM" value="<TMPL_VAR NAME=QNUM>">
	<input type=hidden name="QUES" value="<TMPL_VAR NAME=QUES>">
	<input type=hidden name="ICT" value="<TMPL_VAR NAME=ICT>">
	<table border="0" cellpadding="0" cellspacing="0" id="logintable" width="610">
	  <tr>
	    <td width="240"><input onfocus="this.className='focus'" onblur="this.className='normal'" class="normal" tabindex="1" type="password" name="ANS" size="25" autocomplete="off"></td>
	    <td width="200" align="center"><input tabindex="2" type="image" src="<TMPL_VAR NAME=IMGPATH>/login/sign-on.gif" name="SIGNON" Value="Sign On >"><input type="hidden" name="PASSWORD_UL"><input type="hidden" name="BASEP"></td>
	    <td width="170" align="center"><a tabindex="3" href="javascript:send_event('LOGIN/BYPASS_SKEY','<TMPL_VAR ACTION>')"> Bypass Question</a></td>
	  </tr>
	</table>

<div id="loginsupport">
<p><img src="<TMPL_VAR NAME=IMGPATH>/login/product.gif" alt="Product Support" width="26" height="30"><a tabindex="2" href="https://accurint.custhelp.com" target="_blank">Submit a question to support</a></p>
</div>

<br>

<div id="loginsupport2">
<p><img src="<TMPL_VAR NAME=IMGPATH>/login/product.gif" alt="Forgot Password" width="26" height="30"><a tabindex="3" href="javascript:send_event('PRELOGIN/SHOW_INDEX','<TMPL_VAR ACTION_LOGIN>')">Forgot your password?</a></p>
</div>

<br>

<div id="loginsupport3">
<p><img src="<TMPL_VAR NAME=IMGPATH>/login/product.gif" alt="Product Support" width="26" height="30" class="floatleft" />For 24/7 sign on assistance, search assistance,<br>technical assistance or security questions:<br />
<strong><a href="https://accurint.custhelp.com/cgi-bin/accurint.cfg/php/enduser/ask.php" target="_blank">Email Customer Support</a> or call 1-866-277-8407</strong></p>
</div>

<div id="subchat"><img src="<TMPL_VAR NAME=IMGPATH>/login/support-chat.gif" alt="Customer Support. Live Chat." width="36" height="33" class="floatleft" /><a href="https://accurint.custhelp.com/cgi-bin/accurint.cfg/php/enduser/chat.php" target="_blank">Customer Support<br /><span class="livechat">Live Chat.</span></a></div>


<input type=hidden name=_ST value=''>
<script>document.forms[0].ANS.focus();</script>
<!-- end login body3 -->
