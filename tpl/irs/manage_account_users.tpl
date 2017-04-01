<!-- begin manage_account_users.tpl -->
<script src="<TMPL_VAR NAME='JSPATH'>/sorttable.js"></script>
<script src="<TMPL_VAR NAME='JSPATH'>/user_admin_irs.js"></script>
<input type=hidden name="PAGE_NUMBER" value=<TMPL_IF NAME="CURRENT_PAGE"><TMPL_VAR NAME="CURRENT_PAGE"><TMPL_ELSE>1</TMPL_IF>>
<input type=hidden name="PREVIOUS_ALL_USERS" value=<TMPL_VAR NAME="PREVIOUS_ALL_USERS">>
<table border="0" cellpadding="0" cellspacing="0" width="880">
  <tr>
    <td valign="top">
    <table border="0" cellpadding="0" cellspacing="0" class="myaccountborder" width="880">
      <tr>
        <td align="center">
        <table border="0" cellpadding="0" cellspacing="0" class="myaccountbody" width="860">
          <tr>
	    <td height="12" class="myaccountborder" width="856"><img src="<TMPL_VAR NAME=IMGPATH>/spacer.gif" border="0" width="856" height="12"></td>
	  </tr>
	  <tr>
	    <td align="center" class="myaccounttitle"><br>Manage Users<br><br></td>
	  </tr>
          <TMPL_IF CANNOT_ADD_USER>
	  <tr>
	    <td class="unifont1" align="center">The maximum number of users has been reached for your account.  To create additional users you must first delete an existing user.</td>
          </tr>
          </TMPL_IF>
	  <tr height="39">
	    <td align="center" valign="middle" height="39">
	    <table border="0" cellpadding="0" cellspacing="0">
	      <tr>
		<td><a href="javascript:send_event('MANAGE/ADD_USER')"><img width="81" height="24" border="0" name="adduseradmin" src="<TMPL_VAR NAME=IMGPATH>/adduser.gif"></a></td>
		<td class="unifont1">&nbsp;&nbsp;&nbsp;&nbsp;</td>
		<td class="unifont1"><b>Display</b>&nbsp;</td>
	        <td class="unifont1">
		<select class="unifont1" name="ALLUSERS" onChange="if(validate_manage_user_inputs()) {send_event('MANAGE/MANAGE_ACCOUNTS');}">
                  <option value="1"<TMPL_IF NAME="SUSPENDED_1"> SELECTED</TMPL_IF>>Active</option>
                  <option value="2"<TMPL_IF NAME="SUSPENDED_2"> SELECTED</TMPL_IF>>Suspended</option>
                 <TMPL_IF NAME="PENDING_ADMINS"> <option value="4"<TMPL_IF NAME="SUSPENDED_4"> SELECTED</TMPL_IF>>Pending Approval</option></TMPL_IF>
                  <option value="6"<TMPL_IF NAME="SUSPENDED_6"> SELECTED</TMPL_IF>>Deleted</option>
		  <option value="3"<TMPL_IF NAME="SUSPENDED_3"> SELECTED</TMPL_IF>>All (Active/Suspended<TMPL_IF NAME="PENDING_ADMINS">/Pending</TMPL_IF>)</option>
                </select>
		</td>
		<td class="unifont1"><b>&nbsp;Users</b>&nbsp;<a href="javascript:void(0);" onClick="generic_tip('Preferences','The default search view on this page can be set in the Preferences section');"><img border="0" src="<TMPL_VAR NAME=IMGPATH>/v2/ico_information.gif" alt="More Information" height="13" width="14"></a></td>
		<td class="unifont1">&nbsp;&nbsp;&nbsp;&nbsp;</td>
    <TMPL_IF IRS>
    <td class="unifont1">&nbsp;&nbsp;&nbsp;&nbsp;</td>
    <TMPL_ELSE>
		<td><a href="javascript:show_post_popup('LOGIN/SHOW_POPUP','Find',309,270,0,0,0,0,0,0,'','find_users');"><img border="0" width="81" height="24" src="<TMPL_VAR NAME=IMGPATH>/find_user.gif"></a></td>
    </TMPL_IF>
		<TMPL_IF NAME="SHOW_VERIFICATION">
		<td class="unifont1">&nbsp;&nbsp;&nbsp;&nbsp;</td>
		<td><a href="javascript:send_event('MANAGE/VERIFICATION_LOG');"><img border="0" width="103" height="24" src="<TMPL_VAR NAME=IMGPATH>/user_verification.gif"></a></td>
		</TMPL_IF>
		<TMPL_UNLESS CSAML_LOGIN>
		<TMPL_IF NAME="ENABLE_OTP">
		<td class="unifont1">&nbsp;&nbsp;&nbsp;&nbsp;</td>
		<td><a href="javascript:send_event('OTP/MANAGE_OTP');"><img border="0" width="144" height="24" src="<TMPL_VAR NAME=IMGPATH>/manage_security_tokens.gif" alt="Manage Security Tokens"></a></td>
		</TMPL_IF>
		</TMPL_UNLESS>

	      </tr>
	    </table>
	    </td>  
          </tr>
    <TMPL_IF IRS>
    <input type=hidden name="SEARCH_FIRSTNAME_PREV" value="<TMPL_VAR NAME="SEARCH_FIRSTNAME_PREV">">
    <input type=hidden name="SEARCH_LASTNAME_PREV" value="<TMPL_VAR NAME="SEARCH_LASTNAME_PREV">">
    <input type=hidden name="SEARCH_LOGINID_PREV" value="<TMPL_VAR NAME="SEARCH_LOGINID_PREV">">
	  <tr>
      <td align="center">
        <table border="0" cellpadding="0" cellspacing="0" class="myaccountbody" width="860">
          <tr>
      	    <td align="right" valign="middle" class="unifont1" width="15%" nowrap="1">
              &nbsp;&nbsp;<b>First Name:</b>&nbsp;
            </td>
            <td width="15%"><INPUT class="nsinputs" TYPE="text" NAME="SEARCH_FIRSTNAME" SIZE="25" VALUE="<TMPL_VAR NAME=SEARCH_FIRSTNAME>" MAXLENGTH=30></td>
      	    <td align="right" valign="middle" class="unifont1" width="15%" nowrap="1">
              &nbsp;&nbsp;<b>Last Name:</b>&nbsp;
            </td>
            <td width="15%"><INPUT class="nsinputs" TYPE="text" NAME="SEARCH_LASTNAME" SIZE="25" VALUE="<TMPL_VAR NAME=SEARCH_LASTNAME>" MAXLENGTH=30></td>
      	    <td align="right" valign="middle" class="unifont1" width="15%" nowrap="1">
              &nbsp;&nbsp;<b>Login ID:</b>&nbsp;
            </td>
            <td width="15%"><INPUT class="nsinputs" TYPE="text" NAME="SEARCH_LOGINID" SIZE="20" VALUE="<TMPL_VAR NAME=SEARCH_LOGINID>" MAXLENGTH=20></td>
            <td align="left" valign="middle" width="10%">&nbsp;&nbsp;&nbsp;&nbsp;<a href="javascript:send_event('MANAGE/MANAGE_ACCOUNTS')" onClick="if(!validate_manage_user_inputs()) {return false;}"><img border="0" width="81" height="24" src="<TMPL_VAR NAME=IMGPATH>/find_user.gif"></a>&nbsp;&nbsp;</td>
  	      </tr>
  	    </table>
	    </td>  
    </tr>
    </TMPL_IF>
	  <tr>
      <td align="center">
        <table border="0" cellpadding="0" cellspacing="0" class="myaccountbody" width="860">
          <tr>
            <td align="center" valign="middle" class="unifont1" width="98%">
              <TMPL_IF NAME="LETTERS_LOOP">
              <TMPL_LOOP NAME="LETTERS_LOOP">
              <TMPL_IF NAME="CURRENT_LETTER_NO_LINK">
              <B><TMPL_VAR NAME="LETTER"></B>&nbsp;&nbsp;&nbsp;&nbsp;
              <TMPL_ELSE>
              <a href="javascript:set_last_name_range('<TMPL_VAR NAME="LETTER">');send_event('MANAGE/MANAGE_ACCOUNTS');"><TMPL_VAR NAME="LETTER"></a>&nbsp;&nbsp;&nbsp;&nbsp;
              </TMPL_IF>
              </TMPL_LOOP>
              </TMPL_IF>
            </td>
  	      </tr>
          <tr>
            <td align="center" valign="middle" class="unifont1">&nbsp;</td>
  	      </tr>
  	    </table>
	    </td>  
    </tr>
    <TMPL_UNLESS NAME="NO_PAGES_NEEDED">
	  <tr>
      <td align="center">
        <table border="0" cellpadding="0" cellspacing="0" class="myaccountbody" width="860">
          <tr>
      	    <td align="left" valign="middle" class="unifont1" width="15%" nowrap="1">
              &nbsp;&nbsp;<b>Page <TMPL_VAR NAME="CURRENT_PAGE"> of <TMPL_VAR NAME="TOTAL_PAGES"></b>&nbsp;
            </td>
            <td align="center" valign="middle" class="unifont1" width="85%"><b>&nbsp;Go to Page:&nbsp;&nbsp;</b>
              <TMPL_IF NAME="PAGE_LOOP">
              <TMPL_LOOP NAME="PAGE_LOOP">
              <TMPL_IF NAME="CURRENT_PAGE_NO_LINK">
              <B><TMPL_VAR NAME="PAGE_NUMBER"></B>
              <TMPL_ELSE>
              <a href="javascript:set_user_admin_page(<TMPL_VAR NAME="PAGE_NUMBER">);"><TMPL_VAR NAME="PAGE_NUMBER"></a>&nbsp;
              </TMPL_IF>
              </TMPL_LOOP>
              </TMPL_IF>
            </td>
  	      </tr>
  	    </table>
	    </td>  
    </tr>
    </TMPL_UNLESS>
          <tr>
	    <td height="12" class="myaccountborder" width="856"><img src="<TMPL_VAR NAME=IMGPATH>/spacer.gif" border="0" width="856" height="12"></td>
	  </tr>
        </table>
        </td>
      </tr>
    </table>

    <TMPL_IF NAME="MANAGE_ACCOUNT_ERROR">
    <table border="0" cellpadding="0" cellspacing="0" width="880" class="myaccountborder">
      <TR>
        <td align="center" valign="top">
	<table border="1" cellpadding="3" cellspacing="0" width="860">
	  <TR BGCOLOR="silver">
	    <TD class="myaccounttitle" align="center" bgcolor="silver">
            <TMPL_IF NAME="ERROR_NOSELECT">Please Select a User</TMPL_IF>
             <TMPL_IF NAME="ERROR_UNKNOWN_USER">
		User <TMPL_VAR NAME="LOGINID"> does not exist<br><br>
		<a href="javascript:send_event('MYACCOUNT/SHOW_PROFILE')"><img src="<TMPL_VAR IMGPATH>/back.gif" border="0"></a>
	    </TMPL_IF>
             <TMPL_IF NAME="ERROR_SECURITY_LOCKED">
		User <TMPL_VAR NAME="LOGINID"> is security locked.<br><br>
		<a href="javascript:send_event('MANAGE/MANAGE_ACCOUNTS')"><img src="<TMPL_VAR IMGPATH>/back.gif" border="0"></a>
	    </TMPL_IF>           
	    </TD>
	  </tr>
	</table>
	</td>
      </TR>
    </table>
      </TMPL_IF>

      <TMPL_IF NAME="USER_ADDED">
    <table border="0" cellpadding="0" cellspacing="0" width="880" class="myaccountborder">
      <tr>
        <td align="center" valign="top">
	<table border="1" cellpadding="3" cellspacing="0" width="860">
	  <TR BGCOLOR="silver">
	    <TD class="myaccounttitle" align="center" bgcolor="silver"><TMPL_VAR NAME="USER_ADDED"></TD>
	  </tr>
	</table>
	</td>
      </TR>
    </table>
      </TMPL_IF>

      <TMPL_IF NAME="MESSAGE">
    <table border="0" cellpadding="0" cellspacing="0" width="880" class="myaccountborder">
      <tr>
	<td align="center" valign="top">
	<table border="1" cellpadding="3" cellspacing="0" width="860">
	  <TR>
	    <TD class="myaccounttitle" align="center" bgcolor="silver"><TMPL_VAR NAME=MESSAGE></TD>
	  </tr>
	<table>
	</td>
      </TR>
    </table>
      </TMPL_IF>
      
    <table border="0" cellpadding="0" cellspacing="0" width="880" class="myaccountborder">
      <tr>
        <td class="myaccountborder"><img src="<TMPL_VAR NAME=IMGPATH>/spacer.gif" border="0" width="12" height="12"></td>
      </tr>
    </table>
    <TMPL_IF NAME=NO_USERS_FOUND>
    <table border="0" cellpadding="0" cellspacing="0" width="880" class="myaccountborder">
      <tr>
        <td align="center" valign="top">
        <table border="1" cellpadding="3" cellspacing="0" width="860">
          <TR class="myaccountbody">
            <TD class="unifont1bold" align=center NOWRAP>No Users Found</TD>
          </TR>
        </table>
        </td>
      </tr>
    </table>
    <TMPL_ELSE>
    <TMPL_IF NAME=USER_LIST>
    <table border="0" cellpadding="0" cellspacing="0" width="880" class="myaccountborder">
      <tr>
        <td align="center" valign="top">
        <table border="1" cellpadding="3" cellspacing="0" width="860" class="sortable" id="order_list">
          <TR class="myaccountbody">
            <TD class="unifont1bold" align=center NOWRAP>Login ID</TD>
            <TD class="unifont1bold" align=center NOWRAP>Last Name</TD>
            <TD class="unifont1bold" align=center NOWRAP>First Name</TD>
            <TD class="unifont1bold" align=center NOWRAP>Admin</TD>
            <TD class="unifont1bold" align=center NOWRAP>Status</TD>
            <TD class="unifont1bold" align=center NOWRAP>Last Login</TD>
          </TR>
        <TMPL_LOOP NAME=USER_LIST>
          <TR BGCOLOR="white">
            <TD class="unifont1">&nbsp;
	    <TMPL_IF NAME="ROW_LOCKED">
		<b><TMPL_VAR NAME=LOGINID></b>
	    <TMPL_ELSE>
		<a href="javascript:edit_user('MANAGE/UPDATE_USER','<TMPL_VAR NAME=LOGINID_ESC>')"<TMPL_IF XML_USER> onMouseOver="set_tip('tip_rem','<div style=\'width: 215px\'><br/>Warning! Before modifying an XML user please contact your Network/Technical Support department or LexisNexis XML Customer Support at 866.277.8763.<br /><br /></div>',event,'left');setOpacity('tip_rem',0);fadeIn('tip_rem',100,2);" onMouseOut="close_tip('tip_rem');"</TMPL_IF>><b><TMPL_VAR NAME=LOGINID></b></a><TMPL_IF XML_USER>&nbsp;&nbsp;(<i>XML User</i>)</TMPL_IF>
	    </TMPL_IF>
	    </TD>
            <TD class="unifont1"><TMPL_VAR NAME=LASTNAME></TD>
            <TD class="unifont1"><TMPL_VAR NAME=FIRSTNAME></TD>
	  <TMPL_IF NAME=SYSTEMADMINISTRATOR>  
            <TD class="unifont1"><TMPL_VAR NAME=SYSTEMADMINISTRATOR></TD>
	  <TMPL_ELSE>
	    <TD class="unifont1">N</TD>
	  </TMPL_IF>
            <TD class="unifont1"><TMPL_VAR NAME="SUSPENDED"></TD>
            <TD class="unifont1"><TMPL_VAR NAME=LAST_LOGIN_DATE></TD>
          </TR>
        </TMPL_LOOP>
        </table>
        </td>
      </tr>
    </table>
    </TMPL_IF>
    </TMPL_IF>
     
    <table border="0" cellpadding="0" cellspacing="0" class="myaccountborder" width="880">
      <tr>
        <td align="center">
        <table border="0" cellpadding="0" cellspacing="0" class="myaccountbody" width="860">
          <tr>
	    <td height="12" class="myaccountborder" width="856"><img src="<TMPL_VAR NAME=IMGPATH>/spacer.gif" border="0" width="856" height="12"></td>
	  </tr>
	  <tr height="39">
	    <td align="center" valign="middle" height="39">
	    <table border="0" cellpadding="0" cellspacing="0">
	      <tr>
		<td class="unifont1"><b><a href="javascript:void(0)" onclick="show_post_popup('MANAGE/MANAGE_ACCOUNTS_CSV','Downloadlist',525,300,0,0,0,0,0,0,'<tmpl_var name=ACTION_DOWNLOAD>','','<center><br><br><br><br><br><br><br><br><input name=\'DOWNLOAD_BUTTON\' value=\'*** Close Window AFTER Receiving File ***\' onclick=\'self.close();\' type=\'BUTTON\'><br><br><br><br></center><script>setTimeout(function () {scrollTo(0,document.body.scrollHeight)},200);setTimeout(function () {scrollTo(0,0)},5000);</script>');">Download All</a></b>&nbsp;</td>
	      </tr>
	    </table>
	    </td>  
          </tr>
          <tr>
	    <td height="12" class="myaccountborder" width="856"><img src="<TMPL_VAR NAME=IMGPATH>/spacer.gif" border="0" width="856" height="12"></td>
	  </tr>
        </table>
        </td>
      </tr>
    </table>

<TMPL_INCLUDE NAME=myaccount_footer.tpl>

    </td>
  </tr>
</table>
    

<span class="smallfont1">&nbsp;<br></span>

<INPUT TYPE="HIDDEN" NAME="LOGINID" VALUE="">
<INPUT TYPE="HIDDEN" NAME="SORT" VALUE="<TMPL_VAR NAME=SORT>">
<INPUT TYPE="HIDDEN" NAME="OLDSORT" VALUE="<TMPL_VAR NAME=SORT>">
<INPUT TYPE="HIDDEN" NAME="SORTDIR" VALUE="<TMPL_VAR NAME=SORTDIR>">
<!-- end manage_account_users.tpl -->
