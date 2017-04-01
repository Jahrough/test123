<!-- begin manage_clone_user_receipt.tpl -->
<table border="0" cellpadding="0" cellspacing="0" class="myaccountborder" width="880">
  <tr>
    <td align="center" valign="top">
    <table border="0" cellpadding="0" cellspacing="0" width="856">
      <tr height="12">
        <td height="12" width="856" class="unifont1">&nbsp;</td>
      </tr>
    </table>
    <table border="0" cellpadding="0" cellspacing="0" width="856" class="myaccountbody">
      <tr>
        <td colspan="2" align="center" class="myaccounttitle"><br>Rename User Complete<br/><br/></td>
      </tr>
      <tr>
        <td colspan="2" align="center" class="unifont1"><b>Old Login ID</b>: <TMPL_VAR NAME="OLD_LOGINID"></td>
      </tr>
      <tr>
        <td colspan="2" align="center" class="unifont1"><b>New LoginID</b>: <TMPL_VAR NAME="NEW_LOGINID"></td>
      </tr>
      <tr>
        <td class="unifont1" align="center" width="860" colspan="2"><br>
          <TMPL_IF NAME="NO_EMAIL_SENT">
	    Please notify the user of their new Login Id.
          <TMPL_ELSE>
	    We have sent an email to <b><TMPL_VAR NAME="USERS_EMAIL"></b> notifying them of a change to their loginid.
	  </TMPL_IF>
	  &nbsp;
	</td>
      </tr>
      <tr>
        <td width="860" align="center" colspan="2">
        <br>
          <table border="0" cellpadding="2" cellspacing="0" width="360">
            <tr>
              <td align="center" colspan="2">
                <a href="javascript:send_event('MANAGE/MANAGE_ACCOUNTS')"><img alt="" width="146" height="29" border="0" name="backadmin" src="<TMPL_VAR NAME=IMGPATH>/useradmin.gif"></a>
              </td>
            </tr>
          </table>
        </td>
      </tr>
    </table>
    </td>
  </tr>
</table>

<TMPL_INCLUDE NAME=myaccount_footer.tpl>

<span class="smallfont1">&nbsp;<br></span>

<!-- end manage_clone_user_receipt.tpl -->
