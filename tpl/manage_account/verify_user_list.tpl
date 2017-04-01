<!-- begin: $RCSfile: verify_user_list.tpl,v $ -->
<table border="1" cellpadding="3" cellspacing="0" width="100%">
  <tr bgcolor="#999999">
    <TD class="unifont1bold" align="center" nowrap="nowrap">Verified<br><span style="color:#00cc00">Yes</span>&nbsp;|&nbsp;<span style="color:#cc0000">No</span></TD>
    <TD class="unifont1bold" align="center" nowrap="nowrap">Name</TD>
    <TD class="unifont1bold" align="center" nowrap="nowrap">Login ID</TD>
    <TD class="unifont1bold" align="center" nowrap="nowrap">Date Added</TD>
    <TD class="unifont1bold" align="center" nowrap="nowrap">Last Login Date</TD>
    <TD class="unifont1bold" align="center" nowrap="nowrap">Admin</TD>
    <TD class="unifont1bold" align="center" nowrap="nowrap">Suspended</TD>
  </tr>
  <TMPL_IF NAME="USER_LIST">
<TMPL_LOOP NAME=USER_LIST>
  <tmpl_if name="LAST_90DAYS">
  <tr bgcolor="#ffdddd">
  <tmpl_else>
  <tr bgcolor="white">
  </tmpl_if>
    <tmpl_if name="SELECT_ALL">
      <td>
        <tmpl_if name="SELECTABLE">
	  <tmpl_if name="CURRENT_USER">
	    <input type="hidden" name="users_selected_<TMPL_VAR NAME=COUNTER>" value="<TMPL_VAR NAME=USERID>">
	    <input type="radio" name="xusers_selected_<TMPL_VAR NAME=COUNTER>" value="<TMPL_VAR NAME=USERID>" checked disabled>
	    <input type="radio" name="xusers_selected_<TMPL_VAR NAME=COUNTER>" value="" disabled>
	  <tmpl_else>
	    <tmpl_if name="SELECTED">
       	      <input type="radio" name="users_selected_<TMPL_VAR NAME=COUNTER>" value="<TMPL_VAR NAME=USERID>" checked>
	      <input type="radio" name="users_selected_<TMPL_VAR NAME=COUNTER>" value="">
	    <tmpl_else>
	      <input type="radio" name="users_selected_<TMPL_VAR NAME=COUNTER>" value="<TMPL_VAR NAME=USERID>">
	      <input type="radio" name="users_selected_<TMPL_VAR NAME=COUNTER>" value="" checked>
	    </tmpl_if>
	  </tmpl_if>
	<tmpl_else>&nbsp;
	</tmpl_if>
      </TD>
    </tmpl_if>
    <TD class="<tmpl_if name="SYSTEMADMINISTRATOR">unifont1blue<tmpl_else>unifont1</tmpl_if>"><TMPL_VAR NAME=FIRSTNAME> <TMPL_VAR NAME=LASTNAME></TD>
    <TD class="<tmpl_if name="SYSTEMADMINISTRATOR">unifont1blue<tmpl_else>unifont1</tmpl_if>">&nbsp;<TMPL_VAR NAME=LOGINID></TD>
    <TD class="<tmpl_if name="SYSTEMADMINISTRATOR">unifont1blue<tmpl_else>unifont1</tmpl_if>" nowrap="nowrap"><TMPL_VAR NAME=DATEADDED>&nbsp;</TD>
    <TD class="<tmpl_if name="SYSTEMADMINISTRATOR">unifont1blue<tmpl_else>unifont1</tmpl_if>" nowrap="nowrap"><TMPL_VAR NAME=LAST_LOGIN_DATE>&nbsp;</TD>
    <TD class="<tmpl_if name="SYSTEMADMINISTRATOR">unifont1blue<tmpl_else>unifont1</tmpl_if>"><TMPL_VAR NAME=SYSTEMADMINISTRATOR_DISPLAY></TD>
    <TD class="<tmpl_if name="SYSTEMADMINISTRATOR">unifont1blue<tmpl_else>unifont1</tmpl_if>"><TMPL_VAR NAME=SUSPENDED_DISPLAY></TD>
  </tr>
</TMPL_LOOP>
<TMPL_ELSE>
  <tr bgcolor="white">
  <td colspan="7" class="unifont1">
  None found
  </td>
  </tr>
</TMPL_IF>
  <tr bgcolor="#999999">
    <td colspan=7 class="smallfont1" align="left" nowrap="nowrap">   
    <div style="float:right">
<TMPL_IF NAME="LAST_PAGE"><input class="verifyaccount" type="button" onmouseover="window.status='Submit - completes the process'" onmouseout="window.status=''" onclick="send_event('MANAGE/CONFIRM_VERIFY_ACCOUNT');" value="   SUBMIT   "><TMPL_ELSE><input class="verifyaccount" type="button" onmouseover="window.status='Save and Continue - saves selection and moves to next page'" onmouseout="window.status=''" onclick="show_verify_users_pos(<TMPL_VAR NAME=NEXT_OFFSET>)" value="  SAVE AND CONTINUE  "></TMPL_IF>&nbsp;&nbsp;&nbsp;&nbsp;<TMPL_UNLESS NAME="STANDALONE"><input class="verifyaccount" type="button" onclick="send_event('MANAGE/VERIFICATION_LOG');" value="   EXIT   "><TMPL_ELSE><input class="verifyaccount" type="button"  onmouseover="window.status='Save and Exit - saves selection'" onmouseout="window.status=''" onclick="show_verify_cancel(<TMPL_VAR NAME=NEXT_OFFSET>);" value="   SAVE AND EXIT   "></TMPL_UNLESS>
   </div>
   <input type="checkbox" name="users_selected" value="all" onclick="check_all_radio(this, 'users_selected_',2)">&nbsp;&nbsp;<b>Check here to select all users listed above</b>
   </TD>
  </tr>
</table>
<br>
<div align=right>
<a href="javascript:document.forms[0].reset();">Reset form</a>
</div>
<br>
<!-- end: $RCSfile: verify_user_list.tpl,v $ -->
