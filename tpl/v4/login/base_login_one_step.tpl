<!-- begin login/base_login_one_step.tpl -->
<input type="hidden" name="_ST" value="">

<div id="signInCredentials">



	<div class="form-group">
		<label for="LOGINID">ID</label>
		<input type="text" class="form-control" id="LOGINID" name="LOGINID" value="<TMPL_VAR LOGINID>" autocomplete="off">
	</div>
	<div class="form-group">
		<label for="PASSWORD">Password</label>
		<input type="password" class="form-control" id="PASSWORD" name="PASSWORD" autocomplete="off">
		<input type="hidden" id="PASSWORD_UL" name="PASSWORD_UL">
		<input type="hidden" id="BASEP" name="BASEP"/>
	</div>
	<button type="submit" class="btn btn-primary btn-lg btn-block">Sign In</button>



	<TMPL_IF ENABLE_LOGIN_TOKEN>

		<div id="securityCode">
			<img id="tokenimg" name="tokenimg" src="<TMPL_VAR NAME=IMGPATH>/spacer.gif" alt="Enter the verification characters below">
			<TMPL_IF SHOW_SOUND_LINK>
				<p>
					<a class="verification" href="#" onClick="javascript:sound_win(); return false;">Listen to Numbers</a>
				</p>
			</TMPL_IF>
		</div>

		<label for="_T" class="securityCodeText">
			<span class="label-text">Security Code</span>
			<input type="text" id="_T" name="_T" autocomplete="off" onkeyup="javascript:check_pwd()">
			<input type=hidden id="_UDT" name="_UDT" value="<TMPL_VAR NAME=_UDT>">
		</label>

		<p class="message">Enter the sequence of numbers displayed above.</span>

	</TMPL_IF>

	<div id="errorMsgContainer" class="hidden" tabindex="0"></div>

	<div id="signOnButtonContainer">
		<button id="SIGNON" name="SIGNON" class="arrow-right">Sign In</button>
	</div>

</div>

<TMPL_INCLUDE NAME=v4/login/base_login_help.tpl>
<!-- end login/base_login_one_step.tpl -->
