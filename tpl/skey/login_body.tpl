<!-- begin login body -->
<table border="0" cellpadding="5" cellspacing="0" width="803">
  <tr>
    <TMPL_IF IRB>
    <td valign="top" align="center"><img src="<TMPL_VAR NAME=IMGPATH>/<TMPL_VAR NAME=APPLICATION_TYPE>/login_group.jpg" border="0" width="247" height="221"></td>
    <TMPL_ELSE>
    <td valign="top" align="center"><img src="<TMPL_VAR NAME=IMGPATH>/<TMPL_VAR NAME=APPLICATION_TYPE>/login_group.jpg" border="0" width="247" height="221"><br>
    <table border="0" cellpadding="2" cellspacing="0">
      <tr>
        <td nowrap class="unifont1" align="center"><b>24/7 Search and<br>Technical Assistance</b></td>
      </tr>
      <tr>
        <td nowrap class="unifont2" align="center"><font color="#ed1c24"><b>1.800.543.6862</b></font></td>
      </tr>
    </table>
    </td>
    </TMPL_IF>
    <td>
    <table border="0" cellpadding="7" cellspacing="0">
    <TMPL_IF ENABLE_LOGIN_TOKEN>
      <tr>
        <td colspan="2" class="unifont2"><b>To ensure the security of your account<br>please enter the following to log in:</b></td>
      </tr>
      <tr>
        <td colspan="2" class="unifont2"><b><li>Password</li><li><a class="verification" href="javascript:void(0);" onClick="alert_win('<TMPL_VAR NAME=HTMLPATH>/verification_popup.html',420,420);">Verification</a> Characters</li></b></td>
      </tr>
    </TMPL_IF>

      <tr>
        <td nowrap class="unifont2"><b>Password:</b></td>
	<td><input tabindex="2" type="password" name="PASSWORD" size="24" autocomplete="off"></td>
      </tr>

    <TMPL_IF ENABLE_LOGIN_TOKEN>
      <input type=hidden name=_ST value=''>
      <tr>
        <td class="unifont2" nowrap><b>Verification Characters:</b><TMPL_IF SHOW_SOUND_LINK><br><span class="unifont1">(<a class="verification" href="javascript:void(0);" onClick="sound_win();"><b>Listen to Characters</b></a>)</span></TMPL_IF></td>
	<td><IMG name="tokenimg" src="<TMPL_VAR NAME=IMGPATH>/spacer.gif" border="0" width="170" height="36" alt="Enter the verification characters below:" title="Enter the verification characters below:"></td>
      </tr>
      <tr>
        <td class="unifont2"><b>Enter the above<br><a class="verification" href="javascript:void(0);" onClick="alert_win('<TMPL_VAR NAME=HTMLPATH>/verification_popup.html',420,420);">Verification</a> Characters:</b></td>
        <td><INPUT tabindex="3" type="text" name="_T" size="24" autocomplete="off"></td>
      </tr>
    </TMPL_IF>
      <tr>
        <TMPL_IF ENABLE_AJAX_APP>
        <td colspan="1" class="unifont1" align="center"><input tabindex="4" type="checkbox" name="checkboxLow">&nbsp;<b>Low-Bandwidth</b></td>
        <td colspan="1" class="unifont1" align="center"><input tabindex="5" type="checkbox" name="checkboxAjax">&nbsp;<b>Ajax Version</b></td>
        <TMPL_ELSE>
        <td colspan="2" class="unifont1" align="center"><input tabindex="4" type="checkbox" name="checkboxLow">&nbsp;<b>Low-Bandwidth</b></td>
        </TMPL_IF>
      </tr>
      
      <tr>
        <td colspan="2" align="center"><input tabindex="5" type="image" name="LOGIN" src="<TMPL_VAR NAME=IMGPATH>/login_key.gif" border="0" width="100" height="20" onMouseOver="this.src='<TMPL_VAR NAME=IMGPATH>/login_key_over.gif';" onMouseOut="this.src='<TMPL_VAR NAME=IMGPATH>/login_key.gif';"></td>
      </tr>
    </table>
    </td>
  </tr>
</table>

<!-- end login body -->
