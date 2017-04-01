<!-- begin: remember_form.tpl -->

<input type=hidden name="PROCESS" value="1">

<TMPL_IF ENABLE_LOGIN_HASHING>
<input type=hidden name="_K" value="<TMPL_VAR NAME=_K>">
<input type=hidden name="_SK" value="<TMPL_VAR NAME=_SK>">
</TMPL_IF>

<p class="text12">

<TMPL_IF NAME=SA>

Login ID:&nbsp; <b><TMPL_VAR NAME=LOGINID></b>
<input type="hidden" name="LOGINID" value="<TMPL_VAR NAME=LOGINID>" size=15 maxlength=20>
<br><br>

Security question:&nbsp; <b><TMPL_VAR NAME=SECURITY_Q></b>
<br><br>

Answer:&nbsp; <input tabindex="2" name="SECURITY_A" value="<TMPL_VAR NAME=SECURITY_A>" size=25 maxlength=50>
<br><br>

<TMPL_ELSE>

Login ID:&nbsp; <b><TMPL_VAR NAME=LOGINID></b>
<input type="hidden" name="LOGINID" value="<TMPL_VAR NAME=LOGINID>" size=15 maxlength=20>
<br><br>

Security question:&nbsp; <b><TMPL_VAR NAME=SECURITY_Q></b>
<br><br>

Answer:&nbsp; <input tabindex="2" name="SECURITY_A" value="<TMPL_VAR NAME=SECURITY_A>" size=25 maxlength=50>
<br><br>

</TMPL_IF>
 
<TMPL_IF ENABLE_LOGIN_TOKEN>
<input type=hidden name=_ST value=''>

Verification Characters:&nbsp; <TMPL_IF SHOW_SOUND_LINK>(<a href ="#" onClick="javascript:sound_win(); return false;">Listen to Characters</a>)</TMPL_IF>
<br><br>

<IMG name="tokenimg" src="<TMPL_VAR NAME=IMGPATH>/spacer.gif" border="0" width="170" height="36" alt="Enter the verification characters below:" title="Enter the verification characters below:">
<br><br>

Enter the above <a href="javascript:alert_win('<TMPL_VAR NAME=HTMLPATH>/verification_popup.html',420,420);">Verification</a> Characters:&nbsp; <INPUT  tabindex="3" type="text" name="_T" size="24" autocomplete="off">
<br><br>
</TMPL_IF>

</p>

<!-- end: remember_form.tpl -->
