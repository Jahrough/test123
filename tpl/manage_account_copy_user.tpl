<!-- begin manage_account_copy_user.tpl -->
    <table border="0" cellpadding="0" cellspacing="0" class="myaccountborder" width="880">
      <tr>
        <td align="center" width="100%">
        <table border="0" cellpadding="0" cellspacing="0" width="856">
	  <tr height="12">
            <td height="12" class="unifont1">&nbsp;</td>
          </tr>
	</table>
        <table border="0" cellpadding="10px" cellspacing="0" width="860" class="myaccountbody">

	  <tr>
	    <!-- left column -->
	    <td width="100%" align="center" valign="top">
            <table border="0" cellpadding="0" cellspacing="0" width="100%">
              <TR>
                <td class="myaccounttitle" align="left" width="60%">Original User Login: <span style="color: #ed1c24;"><TMPL_VAR NAME=LOGINID></span></TD>
		    <INPUT class="nsinputs" TYPE="hidden" NAME="USERID" VALUE="<TMPL_VAR NAME=USERID>"><INPUT TYPE="hidden" NAME="LOGINID" VALUE="<TMPL_VAR NAME=LOGINID>">
		<td align="center" valign="top">
    <a href="javascript:send_event('MANAGE/MANAGE_ACCOUNTS')"><img width="65" height="24" border="0" name="backadmin" src="<TMPL_VAR NAME=IMGPATH>/previous_page.gif"></a>
    <a href="javascript:send_event('MANAGE/COPY_USER_NOW');" onClick="if( validate(<TMPL_VAR NAME=MIN_PASSWORD_LENGTH><TMPL_IF SHA2_PASSWORD>,1<TMPL_ELSE><TMPL_IF PW_COMPLEXITY_FOUR>,2<TMPL_ELSE>,0</TMPL_IF></TMPL_IF>)){if('<TMPL_VAR NAME="PENDING_ADMINS">' == '1') { return confirm_new_admin()} else {return true;}} else {return false;}"><img width="81" height="24" border="0" name="copyuser" src="<TMPL_VAR NAME=IMGPATH>/copyuser.gif"></a>
    </td>
              </TR>
	      <tr>
	        <td colspan="2">&nbsp;</td>
	      </tr>

	    <TMPL_IF NAME="PERSON_STATUS_P">
              <TR>
		<td align="left" valign="top" class="unifont1" colspan="2">
		<b><a href="javascript: void(0);" onclick="general_win('<TMPL_VAR NAME="HLPPATH">/new_admin_pending.html', 'NewAdminHelp', 500, 200);">* Note:</a></b> This user is pending verification.
		</td>
              </TR>
	      <TMPL_ELSE>
	    <TMPL_IF NAME="PERSON_STATUS_D">
              <TR>
		<td align="left" valign="top" class="unifont1" colspan="2">
		<b><a href="javascript: void(0);" onclick="general_win('<TMPL_VAR NAME="HLPPATH">/denied_admin_status.html', 'DeniedAdminHelp', 500, 200);">* Note:</a></b> System Administrator request denied for this user.
		</td>
              </TR>
	      <TMPL_ELSE>
	      <TMPL_IF NAME="PENDING_ADMINS">
	      <tr>
	        <td colspan="2" class="unifont1" align="center">
		<b><a href="javascript: void(0);" onclick="general_win('<TMPL_VAR NAME="HLPPATH">/new_admin_help.html', 'NewAdminHelp', 540, 280);">* Instructions</a></b> on adding System Administrators to your account.
		</td>
	      </tr>
	      </TMPL_IF>
	      </TMPL_IF>
	      </TMPL_IF>
            </table>

	  <fieldset>
	    <div align="left" class="unifont1bold"><legend>Account Settings <TMPL_UNLESS NAME="IRS">&nbsp;&nbsp;(bold fields denote required fields)</TMPL_UNLESS></legend></div>
            <table border="0" cellpadding="0" cellspacing="0" width="95%">
              <TMPL_UNLESS NAME="IRS">
              <TR>
                    <td class="unifont1" align="left" width="50%">Name Prefix:</TD>
                    <td align="left" width="50%"><INPUT class="nsinputs" TYPE="text" NAME="NAMEPREFIX" SIZE="25" VALUE="<TMPL_VAR NAME=NAMEPREFIX>" MAXLENGTH=30></TD>
              </TR>
              </TMPL_UNLESS>
              <TR>
              <TMPL_IF NAME="IRS">
                <td class="unifont1" align="left" width="50%">First Name:</TD>
              <TMPL_ELSE>
                <td class="unifont1bold" align="left" width="50%">First Name:</TD>
              </TMPL_IF>
                <td align="left" width="50%"><INPUT class="nsinputs" TYPE="text" NAME="FIRSTNAME" SIZE="25" VALUE="<TMPL_VAR NAME=FIRSTNAME>" MAXLENGTH=30></TD>
              </TR>
              <TR>
                <td class="unifont1" align="left" width="200">Middle Name:</TD>
                <td align="left" width="220"><INPUT class="nsinputs" TYPE="text" NAME="MIDDLE_NAME" SIZE="25" VALUE="<TMPL_VAR NAME='MIDDLE_NAME'>" MAXLENGTH=30></TD>
              </TR>
              <TR>
              <TMPL_IF NAME="IRS">
                <td class="unifont1" align="left" width="50%">Last Name:</TD>
              <TMPL_ELSE>
                <td class="unifont1bold" align="left" width="50%">Last Name:</TD>
              </TMPL_IF>
                <td align="left" width="50%"><INPUT class="nsinputs" TYPE="text" NAME="LASTNAME" SIZE="25" VALUE="<TMPL_VAR NAME=LASTNAME>" MAXLENGTH=30></TD>
              </TR>
              <TMPL_IF SHOW_EMPLOYEE_ID>
              <TR>
                <td class="unifont1" align="left" width="50%">Employee ID:</TD>
                <td align="left" width="50%"><INPUT class="nsinputs" TYPE="text" NAME="EMPLOYEEID" SIZE="25" VALUE="<TMPL_VAR NAME=EMPLOYEEID>" MAXLENGTH=11></TD>
              </TR>
              </TMPL_IF>
              <TMPL_UNLESS NAME="IRS">
              <TR>
                <td class="unifont1bold" align="left" width="200">Position Title:</TD>
                <td align="left" width="200"><INPUT class="nsinputs" TYPE="text" NAME="TITLE" SIZE="25" VALUE="<TMPL_VAR NAME=TITLE>" MAXLENGTH=30></TD>
              </TR>
              </TMPL_UNLESS>
	      <TMPL_INCLUDE NAME="manage_account_departments.tpl">
              <TR>
              <TMPL_IF NAME="IRS">
                <td class="unifont1" align="left" width="50%">Street Address:</TD>
              <TMPL_ELSE>
                <td class="unifont1bold" align="left" width="50%">Street Address:</TD>
              </TMPL_IF>
                <td align="left" width="50%"><INPUT class="nsinputs" TYPE="text" NAME="ADDR_LINE1" SIZE="25" VALUE="<TMPL_VAR NAME=ADDR_LINE1>" MAXLENGTH=30></TD>
              </TR>
              <TMPL_IF NAME="IRS">
              <TR>
                <td class="unifont1" align="left" width="50%">Street Address 2:</TD>
                <td align="left" width="50%"><INPUT class="nsinputs" TYPE="text" NAME="ADDR_LINE2" SIZE="25" VALUE="<TMPL_VAR NAME=ADDR_LINE2>" MAXLENGTH=30></TD>
              </TR>
              </TMPL_IF>
              <TR>
              <TMPL_IF NAME="IRS">
                <td class="unifont1" align="left" width="50%">City:</TD>
              <TMPL_ELSE>
                <td class="unifont1bold" align="left" width="50%">City:</TD>
              </TMPL_IF>
                <td align="left" width="50%"><INPUT class="nsinputs" TYPE="text" NAME="ADDR_CITY" SIZE="25" VALUE="<TMPL_VAR NAME=ADDR_CITY>" MAXLENGTH=30></TD>
              </TR>
              <TR>
              <TMPL_IF NAME="IRS">
                <td class="unifont1" align="left" width="50%">State:</TD>
              <TMPL_ELSE>
                <td class="unifont1bold" align="left" width="50%">State:</TD>
              </TMPL_IF>
                <td align="left" width="50%">
                    <INPUT class="nsinputs" TYPE="text" NAME="ADDR_STATE" SIZE="2" VALUE="<TMPL_VAR NAME=ADDR_STATE>" MAXLENGTH="2">
                </TD>
              </TR>
              <TR>
              <TMPL_IF NAME="IRS">
                <td class="unifont1" align="left" width="50%">Zip Code:</TD>
              <TMPL_ELSE>
                <td class="unifont1bold" align="left" width="50%">Zip Code:</TD>
              </TMPL_IF>
                <td align="left" width="50%"><INPUT class="nsinputs" TYPE="text" NAME="ADDR_POSTALCODE" SIZE="25" VALUE="<TMPL_VAR NAME=ADDR_POSTALCODE>" MAXLENGTH=30></TD>
              </TR>
              <TR>
              <TMPL_IF NAME="IRS">
                <td class="unifont1" align="left" width="50%">Phone:</TD>
              <TMPL_ELSE>
                <td class="unifont1bold" align="left" width="50%">Phone:</TD>
              </TMPL_IF>
                <td align="left" width="50%"><INPUT class="nsinputs" TYPE="text" NAME="PHONE_VOICE1" SIZE="25" VALUE="<TMPL_VAR NAME=PHONE_VOICE1>" MAXLENGTH=30></TD>
              </TR>
              <TR>
              <TMPL_IF NAME="IRS">
                <td class="unifont1" align="left" width="50%">Email:</TD>
              <TMPL_ELSE>
                <td class="unifont1bold" align="left" width="50%">Email:</TD>
              </TMPL_IF>
                <td align="left" width="50%"><INPUT class="nsinputs" TYPE="text" NAME="EMAIL_ADDR" SIZE="25" VALUE="<TMPL_VAR NAME=EMAIL_ADDR>" MAXLENGTH=60></TD>
              </TR>
              <TR>
              <TMPL_IF NAME="IRS">
                <td class="unifont1" align="left" width="50%">Confirm Email:</TD>
              <TMPL_ELSE>
                <td class="unifont1bold" align="left" width="50%">Confirm Email:</TD>
              </TMPL_IF>
                <td align="left" width="50%"><INPUT onpaste="block_paste(this);" class="nsinputs" TYPE="text" NAME="EMAIL_ADDR2" SIZE="25" VALUE="<TMPL_VAR NAME=EMAIL_ADDR>" MAXLENGTH=60></TD>
              </TR>
              <TMPL_IF NAME="IRS">
              <TMPL_INCLUDE NAME="manage_account_add_update_user_irs_options.tpl">
              </TMPL_IF>
              <TR>
              <TMPL_IF NAME="IRS">
                <td class="unifont1" align="left" width="50%">Login:</TD>
              <TMPL_ELSE>
                <td class="unifont1bold" align="left" width="50%">Login:</TD>
              </TMPL_IF>
                <td align="left" width="200"><INPUT class="nsinputs" TYPE="text" NAME="NEW_LOGINID" SIZE="25" VALUE="<TMPL_VAR NAME=NEW_LOGINID>" MAXLENGTH=<TMPL_IF IRS>20<TMPL_ELSE>30</TMPL_IF>></TD>
              </TR>
              <TR>
                <td class="unifont1" align="left" width="50%">System Administrator:</TD>
                <td align="left" width="50%">
                <table border="0" cellpadding="0" cellspacing="0">
                  <tr>
                    <td><INPUT TYPE=RADIO NAME=SYSTEMADMINISTRATOR VALUE='1' <TMPL_IF NAME=SYSTEMADMINISTRATOR>CHECKED</TMPL_IF> onClick="batchset();check_admin_to_be('T');"></td>
                    <td class="unifont1">Yes&nbsp;&nbsp;&nbsp;</td>
                    <td><INPUT TYPE=RADIO NAME=SYSTEMADMINISTRATOR VALUE='0' <TMPL_UNLESS NAME=SYSTEMADMINISTRATOR>CHECKED</TMPL_UNLESS> onClick="check_admin_to_be('F');"></td>
                    <td class="unifont1">No</td>
                  </tr>
                </table>
                </td>    
              </TR>
            <TMPL_IF ECT_COLLECT_PII_DATA>
            <TMPL_UNLESS INTERNAL_COMPANY>
            <TMPL_UNLESS IS_RESELLER>
            <tr>
              <td >
                <TMPL_INCLUDE NAME=manage_account_gather_admin_to_be_info.tpl>
              </td>
            </tr>
            </TMPL_UNLESS>
            </TMPL_UNLESS>
            </TMPL_IF>

	            <TR>
                <TMPL_IF NAME="IRS">
                <td class="unifont1" align="left" width="50%">
                <TMPL_ELSE>
                <td class="unifont1bold" align="left" width="50%">
                </TMPL_IF>
                  <img border="0" width="11" height="10" src="<TMPL_VAR NAME=IMGPATH>/star.gif" alt="See Password Requirements">&nbsp;New Password:</TD>
                <td align="left" width="50%"><INPUT class="nsinputs" TYPE="password" NAME="PASSWORD" SIZE="25" VALUE="" MAXLENGTH=30 AUTOCOMPLETE="off"></TD>
              </TR>
              <TR>
                <TMPL_IF NAME="IRS">
                <td class="unifont1" align="left" width="50%">
                <TMPL_ELSE>
                <td class="unifont1bold" align="left" width="50%">
                </TMPL_IF>
                  <img border="0" width="11" height="10" src="<TMPL_VAR NAME=IMGPATH>/star.gif" alt="See Password Requirements">&nbsp;Confirm New Password:</TD>
                <td align="left" width="50%"><INPUT class="nsinputs" TYPE="password" NAME="CONFIRM_PASSWORD" SIZE="25" VALUE="" MAXLENGTH=30 AUTOCOMPLETE="off"></TD>
              </TR>
            </table>
	    <div style="padding: 5px;">
	    <TMPL_INCLUDE NAME="manage_account_password_req.tpl">
	    </div>
	  </fieldset>
	    </td>
          </tr>
        </table>
        </td>
      </tr>
    </table>

<input type="hidden" name="CC_PERMISSIONS" value="<TMPL_VAR CC_PERMISSIONS>"/>

<TMPL_INCLUDE NAME=myaccount_footer.tpl>

<TMPL_INCLUDE NAME="manage_account_error_mesg.tpl">

<!-- end manage_account_copy_user.tpl -->
