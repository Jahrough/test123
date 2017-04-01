<!-- begin: uid_capt.tpl -->
<table border=0 class="unifont2">

<input type=hidden name="PROCESS" value="1">


<input type=hidden name="_K" value="<TMPL_VAR NAME=_K>">
<input type=hidden name="_SK" value="<TMPL_VAR NAME=_SK>">
<INPUT type=hidden NAME="ACTION_SOUND" VALUE="<TMPL_VAR NAME=ACTION_SOUND>">


<tr>
<td valign=top><label for="login_id">Login ID:</label></td>
<td valign=top> <input id="login_id" type="text" name="LOGINID" value="" size=15 maxlength=20 tabindex='1' AUTOCOMPLETE="off"></td>
</tr>

 

<input type=hidden name=_ST value=''>
<tr>
<td nowrap>Verification Characters:<br><span class="smallfont1">(<a class="verification" href="javascript:void(0);" onClick="sound_win();">Listen to Characters</a>)</span></td>
<td><IMG name="tokenimg" src="<TMPL_VAR NAME=IMGPATH>/spacer.gif" border="0" width="170" height="36" alt="Enter the verification characters below:" title="Enter the verification characters below:"></td>
</tr>
<tr>
<td><label for="veri_char">Enter the above<br><a class="verification" href="javascript:void(0);" onClick="alert_win('<TMPL_VAR NAME=HTMLPATH>/verification_popup.html',420,420);">Verification</a> Characters:</label></td>
<td><INPUT id="veri_char" tabindex="3" type="text" name="_T" size="24" autocomplete="off"></td>
</tr>


</table>
<!-- end: uid_capt.tpl -->
