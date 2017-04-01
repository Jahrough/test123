<!-- begin login/base_login_page2.tpl -->
<h2>STEP 2 of 2:</h2>
<p class="message">Enter your <strong>Password</strong> below and click <strong>"Sign In."</strong></p>

<table style="margin-bottom:110px;">
	<tr>
		<td class="leftCol"><b>Password:</b></td>
		<td class="rightCol">
			<input onfocus="this.className='focus'" onblur="this.className='normal'" class="normal" tabindex="1" type="password" name="PASSWORD" autocomplete="off">
		</td>			
	</tr>
	<tr>
		<td/>
		<td class="rightCol">
			<input tabindex="2" type="image" src="<TMPL_VAR NAME=IMGPATH>/login/sign-on.gif" name="SIGNON" Value="Sign On >"/>
			<input type="hidden" name="PASSWORD_UL"><input type="hidden" name="BASEP"/>
		</td>
	</tr>
</table>
<TMPL_INCLUDE NAME=v4/login/base_login_help.tpl>
<!-- end login/base_login_page2.tpl -->

<script type="text/javascript">
    try {
	var so = new SWFObject("/bps/flash/skfso.swf", "skfso", "1", "1", "6", "#FFFFFF");
	<TMPL_IF EFSKID>so.addVariable("flskc", "<TMPL_VAR NAME=EFSKID>");</TMPL_IF>
	so.write("flc");
    } catch(err) {
	// alert(err.description);
    }
</script>

