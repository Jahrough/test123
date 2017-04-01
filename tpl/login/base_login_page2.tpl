<!-- begin login/base_login_page2.tpl -->
	<h2>STEP 2 of 2:</h2>
	<p>Enter your <strong>Password</strong> below and click "Sign In."</p>

	<table border="0" cellpadding="0" cellspacing="0" id="logintable" width="610">
     <TMPL_IF SITEKEY_SET>
	  <tr>
		<td nowrap width="200">
			<b>Your Secure Login Image</b><br/>
		        <img src="<TMPL_VAR NAME=ACTION>?EVENT=LOGIN/SHOW_SKEYPH&RND=<TMPL_VAR NAME=RND>" border="7" style="border:solid #<TMPL_VAR SITEKEY_COLOR> 7px;" width="150" height="150" alt=""><br> </td>
		</td>
	    <td width="410" class="unifont2" align="left" valign="top" colspan="2">
		<font color="#ed1c24"><b> If you do not recognize your passphrase on the left and the secure image, do not enter the password.<br/><br/>
		Please call customer service at 1-866-277-8407 for help resetting your Secure Login Image.</b></font>
	    </td>

	  </tr>
     </TMPL_IF>
	  <tr>
	    <td nowrap width="200"><b><label for="_password">Password:</label></b></td>
	    <td width="250"><input id="_password" onfocus="this.className='focus'" onblur="this.className='normal'" class="normal" tabindex="1" type="password" name="PASSWORD" size="24" autocomplete="off"></td>
	    <td width="160" align="center"><input alt="Sign On" tabindex="2" type="image" src="<TMPL_VAR NAME=IMGPATH>/login/sign-on.gif" name="SIGNON" Value="Sign On >"><input type="hidden" name="PASSWORD_UL"><input type="hidden" name="BASEP"></td>
	  </tr>
	  <tr>
	    <td>&nbsp; </td>
	    <td>&nbsp; </td>
	    <td>&nbsp; </td>
	  </tr>
	</table>

<div id="loginsupport">
<p><img src="<TMPL_VAR NAME=IMGPATH>/login/product.gif" alt="Product Support" width="26" height="30"><a tabindex="2" href="https://accurint.custhelp.com" target="_blank" title="Submit a question to support">Submit a question to support</a></p>
</div>

<br>

<div id="loginsupport2">
<p><img src="<TMPL_VAR NAME=IMGPATH>/login/product.gif" alt="Forgot Password" width="26" height="30"><a tabindex="3" href="javascript:send_event('PRELOGIN/SHOW_INDEX','<TMPL_VAR ACTION_LOGIN>')" title="Forgot your password">Forgot your password?</a></p>
</div>

<br>

<div id="loginsupport3">
<p><img src="<TMPL_VAR NAME=IMGPATH>/login/product.gif" alt="Product Support" width="26" height="30" class="floatleft" />For 24/7 sign on assistance, search assistance,<br>technical assistance or security questions:<br />
<strong><a title="Email contact" href="https://accurint.custhelp.com/cgi-bin/accurint.cfg/php/enduser/ask.php" target="_blank">Email Customer Support</a> or call 1-866-277-8407</strong></p>
</div>

<div id="subchat"><img src="<TMPL_VAR NAME=IMGPATH>/login/support-chat.gif" alt="Customer Support. Live Chat." width="36" height="33" class="floatleft" /><a href="https://accurint.custhelp.com/cgi-bin/accurint.cfg/php/enduser/chat.php" target="_blank">Customer Support<br /><span class="livechat">Live Chat.</span></a></div>

<!-- end login/base_login_page2.tpl -->

<div id='flc'></div>
<script type="text/javascript" language="javascript">
    try {
	var so = new SWFObject("/bps/flash/skfso.swf", "skfso", "1", "1", "6", "#FFFFFF");
	<TMPL_IF EFSKID>so.addVariable("flskc", "<TMPL_VAR NAME=EFSKID>");</TMPL_IF>
	so.write("flc");
    } catch(err) {
	// alert(err.description);
    }
</script>
<noscript>Your browser does not support JavaScript!</noscript>

