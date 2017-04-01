<!-- begin: remember_form.tpl -->
<table border=0 class="unifont2">

<input type=hidden name="PROCESS" value="1">

<TMPL_IF ENABLE_LOGIN_HASHING>
<input type=hidden name="_K" value="<TMPL_VAR NAME=_K>">
<input type=hidden name="_SK" value="<TMPL_VAR NAME=_SK>">
</TMPL_IF>
<INPUT type=hidden NAME="ACTION_SOUND" VALUE="<TMPL_VAR NAME=ACTION_SOUND>">

<TMPL_IF NAME=SA>
<tr>
<td valign=top>Login ID:</td>
<td valign=top><b><TMPL_VAR NAME=LOGINID></b>
<input type="hidden" name="LOGINID" value="<TMPL_VAR NAME=LOGINID>" size=15 maxlength=20></td>
</tr>
<tr>
<td valign=top>Security question:</td>
<td valign=top><b><TMPL_VAR NAME=SECURITY_Q></b></td>
</tr>
<tr>
<td valign=top>Answer:</td>
<td valign=top><input tabindex="2" name="SECURITY_A" value="<TMPL_VAR NAME=SECURITY_A>" size=25 maxlength=50></td>
</tr>
<TMPL_ELSE>

<tr>
<td valign=top>Login ID:</td>
<td valign=top><b><TMPL_VAR NAME=LOGINID></b>
<input type="hidden" name="LOGINID" value="<TMPL_VAR NAME=LOGINID>" size=15 maxlength=20></td>
</tr>

<tr>
<td valign=top>Security question:</td>
<td valign=top><b><TMPL_VAR NAME=SECURITY_Q></b></td>
</tr>
<tr>
<td valign=top>Answer:</td>
<td valign=top><input tabindex="2" name="SECURITY_A" value="<TMPL_VAR NAME=SECURITY_A>" size=25 maxlength=50></td>
</tr>
</TMPL_IF>
 
<TMPL_IF ENABLE_LOGIN_TOKEN>
<input type=hidden name=_ST value=''>
<tr>
<td nowrap>Verification Characters:<br><span class="smallfont1">(<a class="verification" href="javascript:void(0);" onClick="sound_win();">Listen to Characters</a>)</span></td>
<td><IMG name="tokenimg" src="<TMPL_VAR NAME=IMGPATH>/spacer.gif" border="0" width="170" height="36" alt="Enter the verification characters below:" title="Enter the verification characters below:"></td>
</tr>
<tr>
<td>Enter the above<br><a class="verification" href="javascript:void(0);" onClick="alert_win('<TMPL_VAR NAME=HTMLPATH>/verification_popup.html',420,420);">Verification</a> Characters:</td>
<td><INPUT  tabindex="3" type="text" name="_T" size="24" autocomplete="off"></td>
</tr>
</TMPL_IF>

</table>
<!-- end: remember_form.tpl -->
