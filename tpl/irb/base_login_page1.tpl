<!-- begin irb/base_login_page1.tpl -->

            <table width="523" border="0" cellspacing="0" cellpadding="2">
	      <tr>
		<td align="left" valign="top" class="bodyCopy">

                <table width="100%" border="0" cellspacing="0" cellpadding="0" class="formTable">
                    <tr>
                      <td>


<table width="100%" border="0" cellspacing="0" cellpadding="0" class="formTableInset">
  <tr>
    <td><table width="100%" border="0" align="center" cellpadding="3" cellspacing="0" class="formTitle">
  <tr>
    <td>Account Login: Step 1 of 3</td>
  </tr>
</table>
      <table width="100%" border="0" align="center" cellpadding="4" cellspacing="1">
        <tr>
          <td class="bodyCopy" width="27%" align="left" valign="middle">User Name</td>
          <td width="73%" align="left" valign="middle"><input type="text" name="LOGINID" autocomplete="off" class="formInput" tabindex="1"></td>
        </tr>
        <input type=hidden name=_ST value=''>
        <tr>
          <td class="bodyCopy" align="left" valign="middle">Verification Characters <br>
            (<a class="verification" href="javascript:void(0);" onClick="sound_win();"><u>Listen to Characters</u></a>)</td>
          <td align="left" valign="middle"><IMG name="tokenimg" src="<TMPL_VAR NAME=IMGPATH>/spacer.gif" border="0" width="170" height="36" alt="Enter the verification characters below:" title="Enter the verification characters below:"></td>
        </tr>
        <tr>
          <td class="bodyCopy" align="left" valign="middle">Enter the above<br>
              <a class="verification" href="javascript:void(0);" onClick="alert_win('<TMPL_VAR NAME=HTMLPATH>/verification_popup.html',420,420);"><u>Verification</u></a> Characters</td>
          <td align="left" valign="middle"><input type="text" name="_T" autocomplete="off" class="formInput" tabindex="2" onkeyup="javascript:check_pwd()"></td>
        </tr>
        <tr>
          <td align="left" valign="middle">&nbsp;</td>
          <td align="left" valign="middle"><input tabindex="3" type="submit" value="Next >" class="button">
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a tabindex="4" href="javascript:send_event('PRELOGIN/SHOW_INDEX','<TMPL_VAR ACTION_LOGIN>')"> Forgot Password  ?</a></td>
        </tr>
      </table></td>
  </tr>
</table>

                    </td>
                    </tr>
                  </table>

                </td>
              </tr>
              <tr>
                <td align="left" valign="top" class="bodyCopy">&nbsp;</td>
              </tr>
            </table>

<!-- end irb/base_login_page1.tpl -->
