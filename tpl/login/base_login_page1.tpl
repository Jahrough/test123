<!-- begin login/base_login_page1.tpl -->
<h2>STEP 1 of 2:</h2>
<p>Enter your <strong>User Name</strong> and <strong>Verification Characters</strong> below and click "Next."</p>

<input type=hidden name=_ST value=''>

<table border="0" cellpadding="0" cellspacing="0" id="logintable" width="610">
      
      <tr>
        <td width="210" nowrap><label for="login_id"><strong>User Name:</strong></label></td>
	<td width="220"><input id="login_id" onfocus="this.className='focus'" onblur="this.className='normal'" class="normal" tabindex="1" type="text" name="LOGINID" size="24" maxlength="20" autocomplete="off"></td>
	<td width="180">
	<a href="javascript:void(0);" onClick="set_tip('passwordinfo','','','center');" title="Open Where Do I Enter My Password">Where Do I Enter My Password?</a>
	<br><br>
	<a href="javascript:void(0);" onClick="set_tip('verificationinfo','','','center');" title="Know more about Verification Characters">What are Verification Characters?</a>
	</td>
      </tr>
     
      <tr>
        <td nowrap><strong>Verification Characters:</strong><TMPL_IF SHOW_SOUND_LINK><br>(<a class="verification" href="javascript:void(0);" onClick="sound_win();" title="Open Listen to Characters" >Listen to Characters</a>)</TMPL_IF></td>
	<td><IMG name="tokenimg" src="<TMPL_VAR NAME=IMGPATH>/spacer.gif" border="0" width="170" height="36" alt="Enter the verification characters below:" title="Enter the verification characters below:"></td>
	<td colspan="2" align="center"><input tabindex="3" type="image" src="<TMPL_VAR NAME=IMGPATH>/login/next-button.gif" name="NEXT" Value="Next >" alt="Next step"></td>
      </tr>

      <tr>
        <td><label for="vari_char"><strong>Enter Verification Characters:</strong></label></td>
        <td valign="top"><INPUT id="vari_char" onfocus="this.className='focus'" onblur="this.className='normal'" class="normal" tabindex="2" type="text" name="_T" size="24" autocomplete="off" onkeyup="javascript:check_pwd()"></td>
        <td align="center"><a href="javascript:void(0);" onClick="set_tip('securityinfo','','','center');" title="Know more about How Do I Protect My Account">How Do I Protect My Account?</a></td>
      </tr>

      <!--
      <tr>
	<td><a tabindex="3" href="javascript:send_event('PRELOGIN/SHOW_INDEX','<TMPL_VAR ACTION_LOGIN>')"> Forgot Password  ?</a></td>
	<td>&nbsp;</td>
	<td>&nbsp;</td>
      </tr>
      -->
      
     
</table>

<div id="loginsupport">
<p><img src="<TMPL_VAR NAME=IMGPATH>/login/product.gif" alt="Product Support" width="26" height="30"><a tabindex="2" href="https://accurint.custhelp.com" target="_blank" title="Submit a question to support">Submit a question to support</a></p>
</div>

<br>

<div id="loginsupport2">
<p><img src="<TMPL_VAR NAME=IMGPATH>/login/product.gif" alt="Forgot Password" width="26" height="30"><a tabindex="3" href="javascript:send_event('PRELOGIN/SHOW_INDEX','<TMPL_VAR ACTION_LOGIN>')" title="Forgot your password">Forgot your password?</a></p>
</div>

<br>

<div id="icons1">
<p><strong><img src="<TMPL_VAR NAME=IMGPATH>/login/billing.gif" width="19" height="31" alt="Billing Support" />Billing Support:</strong><br /><a href="mailto:billing_statements@accurint.com" title="Billing Support Email contact">Email us</a> or call 1.866.528.0570</p>
</div>

<div id="icons2">
<p><strong><img src="<TMPL_VAR NAME=IMGPATH>/login/education.gif" width="26" height="41" alt="Education &amp; Training" />Education &amp; Training:</strong><br /><a href="mailto:customereducation@lexisnexis.com" title="Education and Training Email contact">Email us</a> or call 1.800.201.6411<br>Or visit <a target="_blank" href="http://learn.lexisnexis.com" title="Open training site">learn.lexisnexis.com</a></p>
</div>

<!-- end login/base_login_page1.tpl -->
