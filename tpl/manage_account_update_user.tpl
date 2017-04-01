<!-- begin manage_account_update_users.tpl -->
    <table border="0" cellpadding="0" cellspacing="0" class="myaccountborder" width="880">
      <tr>
        <td align="center" width="100%">
        <table border="0" cellpadding="0" cellspacing="0" width="856">
	  <tr height="12">
            <td height="12" class="unifont1">&nbsp;</td>
          </tr>
	</table>
        <table border="0" cellpadding="10px" cellspacing="0" width="860" class="myaccountbody">

    <TR>
    <td align="center" valign="top" colspan="2">
	<TMPL_INCLUDE NAME="manage_account_update_user_buttons_new.tpl">
    </td>
    </TR>

	  <tr>
	    <!-- left column -->
	    <td width="<TMPL_IF NAME=ROW_LOCKED>100<TMPL_ELSE>50</TMPL_IF>%" align="center" valign="top">
            <table border="0" cellpadding="0" cellspacing="0" width="100%">
              <TR>
                <td class="myaccounttitle" align="left" width="60%">Update User: <span style="color: #ed1c24;"><TMPL_VAR NAME=LOGINID></span></TD>
		        <INPUT class="nsinputs" TYPE="hidden" NAME="USERID" VALUE="<TMPL_VAR NAME=USERID>"><INPUT TYPE="hidden" NAME="LOGINID" VALUE="<TMPL_VAR NAME=LOGINID>"
	            <INPUT TYPE=HIDDEN NAME="UPDATE_USER_COMPANYID" VALUE="<TMPL_VAR NAME=UPDATE_USER_COMPANYID>">
	            <INPUT TYPE=HIDDEN NAME="LAST_LOGIN_DATE" VALUE="<TMPL_VAR NAME=LAST_LOGIN_DATE>">
	            <INPUT TYPE="hidden" NAME="VERIFY_EMP_ID" VALUE="<TMPL_VAR NAME=VERIFY_EMP_ID>">
		<td align="left" valign="top">

		</td>
              </TR>
	      <tr>
	        <td colspan="2">&nbsp;</td>
	      </tr>

      <TMPL_IF NAME="SUSPENDED_Y">
          <tr>
              <td align="left" valign="top" width="80%"><span style="color: #3300cc;">This user is currently suspended</span></td>
          </tr>
          <tr>
              <td colspan="2">&nbsp;</td>
          </tr>
      </TMPL_IF>

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
                <td align="left" width="50%">
                  <TMPL_UNLESS EMPLOYEEID>
                    <INPUT class="nsinputs" TYPE="text" NAME="EMPLOYEEID" SIZE="25" VALUE="<TMPL_VAR NAME=EMPLOYEEID>" MAXLENGTH=11>
                  <TMPL_ELSE>
                    <INPUT class="nsinputs" TYPE="text" NAME="EMPLOYEEID" SIZE="25" VALUE="<TMPL_VAR NAME=EMPLOYEEID>" MAXLENGTH=11 readonly>
                  </TMPL_UNLESS> 
                </TD>
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
    <!--
              <TR>
                <td class="unifont1" align="left" width="50%">Country:</TD>
                <td align="left" width="50%"><INPUT class="nsinputs" TYPE="text" NAME="ADDR_COUNTRY" SIZE="25" VALUE="<TMPL_VAR NAME=ADDR_COUNTRY>" MAXLENGTH=30></TD>
              </TR>
    -->
              <TR>
              <TMPL_IF NAME="IRS">
                <td class="unifont1" align="left" width="50%">Phone:</TD>
              <TMPL_ELSE>
                <td class="unifont1bold" align="left" width="50%">Phone:</TD>
              </TMPL_IF>
                <td align="left" width="50%"><INPUT class="nsinputs" TYPE="text" NAME="PHONE_VOICE1" SIZE="25" VALUE="<TMPL_VAR NAME=PHONE_VOICE1>" MAXLENGTH=30></TD>
              </TR>
    <!--
              <TR>
                <td class="unifont1" align="left" width="50%">Phone 2:</TD>
                <td align="left" width="50%"><INPUT class="nsinputs" TYPE="text" NAME="PHONE_VOICE2" SIZE="25" VALUE="<TMPL_VAR NAME=PHONE_VOICE2>" MAXLENGTH=30></TD>
              </TR>
              <TR>
                <td class="unifont1" align="left" width="50%">FAX:</TD>
                <td align="left" width="50%"><INPUT class="nsinputs" TYPE="text" NAME="PHONE_FAX" SIZE="25" VALUE="<TMPL_VAR NAME=PHONE_FAX>" MAXLENGTH=30></TD>
              </TR>
    -->
    		  <TMPL_IF NAME="ENABLE_EMAIL_DOMAIN">
    		  <TMPL_IF NAME="EMAIL_ADDR_NOMATCH">
				<tr>
					<td class="unifont1" colspan="2" width="50%">
						<span style="color: #ed1c24; font-weight: bold;"><TMPL_VAR NAME="EMAIL_ADDR"> needs to be updated below</span>
					</td>
				</tr>
    		  </TMPL_IF>
				  <TR>
				  	<td class="unifont1" colspan="2" width="50%">
				  		<table class="unifont1" border="0" cellpadding="0" cellspacing="0" width="100%">
				  			<tr>
                              <TMPL_IF NAME="IRS">
								<td class="unifont1" align="left" width="33%">Email Prefix:&nbsp;</TD>
                              <TMPL_ELSE>
								<td class="unifont1bold" align="left" width="50%" nowrap>Email Prefix:&nbsp;</TD>
                              </TMPL_IF>
								<td align="left" width="32%"><INPUT class="nsinputs" TYPE="text" NAME="EMAIL_ADDR_PREFIX" SIZE="18" VALUE="<TMPL_UNLESS NAME="EMAIL_ADDR_NOMATCH"><TMPL_VAR NAME=EMAIL_ADDR_PREFIX></TMPL_UNLESS>" MAXLENGTH=60></TD>
								<td class="unifont1" align="center">@</TD>
								<td align="left">
									<select id="email_domain" name="EMAIL_DOMAIN">
										<option value="" selected>Select One</option>
										<TMPL_LOOP NAME="EMAIL_DOMAIN_LIST">
											<option<TMPL_IF NAME='EMAIL_CURR_DOMAIN'> selected</TMPL_IF> value="<TMPL_VAR NAME='EMAIL_DOMAIN'>"><TMPL_VAR NAME='EMAIL_DOMAIN'></option>
										</TMPL_LOOP>
									</select>
								</td>
							</tr>
						</table>
					</td>
				  </TR>
				  <TR>
				  	<td class="unifont1" colspan="2" width="50%">
				  		<table class="unifont1" border="0" cellpadding="0" cellspacing="0" width="100%">
				  			<tr>
                              <TMPL_IF NAME="IRS">
								<td class="unifont1" align="left" width="33%">Confirm Email Prefix:&nbsp;</TD>
                              <TMPL_ELSE>
								<td class="unifont1bold" align="left" width="50%" nowrap>Confirm Email Prefix:&nbsp;</TD>
                              </TMPL_IF>
								<td align="left" width="32%"><INPUT onpaste="block_paste(this);" class="nsinputs" TYPE="text" NAME="EMAIL_ADDR_PREFIX2" SIZE="18" VALUE="<TMPL_UNLESS NAME="EMAIL_ADDR_NOMATCH"><TMPL_VAR NAME=EMAIL_ADDR_PREFIX2></TMPL_UNLESS>" MAXLENGTH=60></TD>
								<td class="unifont1" align="center">@</TD>
								<td align="left">
									<select id="email_domain" name="EMAIL_DOMAIN2">
										<option value="" selected>Select One</option>
										<TMPL_LOOP NAME="EMAIL_DOMAIN_LIST">
											<option<TMPL_IF NAME='EMAIL_CURR_DOMAIN2'> selected</TMPL_IF> value="<TMPL_VAR NAME='EMAIL_DOMAIN'>"><TMPL_VAR NAME='EMAIL_DOMAIN'></option>
										</TMPL_LOOP>
									</select>
								</td>
							</tr>
						</table>
						<INPUT class="nsinputs" TYPE="hidden" NAME="EMAIL_ADDR" VALUE="<TMPL_VAR NAME=EMAIL_ADDR>">
					</td>
				  </TR>
              <TMPL_ELSE>
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
              </TMPL_IF>

              <TMPL_UNLESS NAME="IRS">
              <TR>
                <td class="unifont1" align="left" width="50%">Future Suspend Date:</TD>
                <td align="left" width="50%"><INPUT onClick="displayDatePicker('FUTURE_DEACTIVATION_DATE');" class="nsinputs" TYPE="text" NAME="FUTURE_DEACTIVATION_DATE" SIZE="25" VALUE="<TMPL_VAR NAME=FUTURE_DEACTIVATION_DATE>" MAXLENGTH=10></TD>
              </TR>
              </TMPL_UNLESS>
              <TMPL_IF NAME="IRS">
              <TMPL_INCLUDE NAME="manage_account_add_update_user_irs_options.tpl">
              </TMPL_IF>
              <TR>
                <td class="unifont1" align="left" width="50%">Last Login Date:</TD>
                <td class="unifont1" align="left" width="50%"><TMPL_VAR NAME="LAST_LOGIN_DATE"></TD>
              </TR>

    <!--
              <TR>
                <td class="unifont1" align="left" width="50%">Login:</TD>
                <td class="unifont1" align="left" width="50%"><INPUT class="nsinputs" TYPE="hidden" NAME="USERID" VALUE="<TMPL_VAR NAME=USERID>"><INPUT TYPE="hidden" NAME="LOGINID" VALUE="<TMPL_VAR NAME=LOGINID>"><TMPL_VAR NAME=LOGINID></TD>
              </TR>
    -->
              <TMPL_UNLESS NAME=ROW_LOCKED>
			  <TMPL_IF NAME="ADMIN_SELF_EDIT">
              <TR>
                <td class="unifont1" align="left" width="50%"><img border="0" width="11" height="10" src="<TMPL_VAR NAME=IMGPATH>/star.gif" alt="See Password Requirements">&nbsp;Current Password:</TD>
                <td align="left" width="50%"><INPUT class="nsinputs" TYPE="password" NAME="CURR_PASSWORD" SIZE="25" VALUE="" MAXLENGTH=30 AUTOCOMPLETE="off"></TD>
              </TR>
			  </TMPL_IF>
	      <TR>
                <td class="unifont1" align="left" width="50%"><img border="0" width="11" height="10" src="<TMPL_VAR NAME=IMGPATH>/star.gif" alt="See Password Requirements">&nbsp;New Password: (optional)</TD>
                <td align="left" width="50%"><INPUT class="nsinputs" TYPE="password" NAME="NEWPASSWORD" SIZE="25" VALUE="" MAXLENGTH=30 AUTOCOMPLETE="off"></TD>
              </TR>
              <TR>
                <td class="unifont1" align="left" width="50%" nowrap><img border="0" width="11" height="10" src="<TMPL_VAR NAME=IMGPATH>/star.gif" alt="See Password Requirements">&nbsp;Confirm New Password:</TD>
                <td align="left" width="50%"><INPUT class="nsinputs" TYPE="password" NAME="CONFIRM_PASSWORD" SIZE="25" VALUE="" MAXLENGTH=30 AUTOCOMPLETE="off"></TD>
              </TR>
	      </TMPL_UNLESS>
            </table>
	    <TMPL_UNLESS NAME=ROW_LOCKED>
	    <div style="padding: 5px;">
	    <TMPL_INCLUDE NAME="manage_account_password_req.tpl">
	    </div>
	    </TMPL_UNLESS>
	  </fieldset>

	      <p></p>
	  <TMPL_UNLESS NAME=ROW_LOCKED>
	  <fieldset>
	    <div align="left" class="unifont1bold"><legend>General Settings</legend></div>
            <table border="0" cellpadding="0" cellspacing="0" width="95%">
              <TR>
                <td class="unifont1" align="left" width="50%">Suspend User:</TD>
                <td align="left" width="50%">
                <table border="0" cellpadding="0" cellspacing="0">
                  <tr>
                    <td><INPUT TYPE=RADIO NAME=SUSPENDED VALUE='Y' <TMPL_IF NAME=SUSPENDED_Y>CHECKED</TMPL_IF>></td>
                    <td class="unifont1">Yes&nbsp;&nbsp;&nbsp;</td>
                    <td><INPUT TYPE=RADIO NAME=SUSPENDED VALUE='N' <TMPL_IF NAME=SUSPENDED_N>CHECKED</TMPL_IF>></td>
                    <td class="unifont1">No</td>
                  </tr>
                </table>
                </td>
              </TR>
              
              <TMPL_UNLESS NAME=SSO_USER>
 	            <TMPL_UNLESS NAME="PERSON_STATUS_P">
 	            <TMPL_UNLESS NAME="PERSON_STATUS_D">
                  <TR>
                    <td class="unifont1" align="left" width="50%">System Administrator:</TD>
                    <td align="left" width="50%">
                      <table border="0" cellpadding="0" cellspacing="0">
                        <tr>
                          <td><INPUT TYPE=RADIO NAME=SYSTEMADMINISTRATOR VALUE='1' <TMPL_IF NAME=SYSTEMADMINISTRATOR>CHECKED</TMPL_IF> onClick="batchset();showHideDTU('T');check_admin_to_be('T');"></td>
                          <td class="unifont1">Yes&nbsp;&nbsp;&nbsp;</td>
                          <td><INPUT TYPE=RADIO NAME=SYSTEMADMINISTRATOR VALUE='0' <TMPL_UNLESS NAME=SYSTEMADMINISTRATOR>CHECKED</TMPL_UNLESS> onClick="showHideDTU('F');check_admin_to_be('F');" ></td>
                          <td class="unifont1">No</td>
                        </tr>
                      </table>
                    </td>
                  </TR>
                  <TMPL_IF ECT_COLLECT_PII_DATA>
                    <TMPL_UNLESS INTERNAL_COMPANY>
                      <TMPL_UNLESS IS_RESELLER>
                        <TMPL_UNLESS NAME="ORIG_SYSTEMADMINISTRATOR">
                          <tr>
                            <td colspan="2" >
                              <TMPL_INCLUDE NAME=manage_account_gather_admin_to_be_info.tpl>
                            </td>
                          </tr>
                        </TMPL_UNLESS>
                      </TMPL_UNLESS>
	                </TMPL_UNLESS>
                  </TMPL_IF>
	            </TMPL_UNLESS>
	            </TMPL_UNLESS>

                <TMPL_IF SHOW_DISPLAY_TO_USERS>
                  <TR>
                    <td class="unifont1" align="left" width="50%"><span id="DTU-LABEL-1"  <TMPL_UNLESS NAME=SYSTEMADMINISTRATOR>STYLE="visibility:hidden;" </TMPL_UNLESS>>Display to Users:</span>&nbsp;
                      <span id="DTU-LABEL-2" <TMPL_UNLESS NAME=SYSTEMADMINISTRATOR>STYLE="visibility:hidden;"</TMPL_UNLESS>>
                        <a href="javascript:show_post_popup('LOGIN/SHOW_POPUP','FPWInfo','644','500',0,0,0,1,0,0,'','display_to_users_help');">
                          <img src="<TMPL_VAR IMGPATH>/v2/ico_question.gif" alt="More Information" height="13" width="14"/>
                        </a>
                      </span>
                    </td>
                    <td align="left" width="50%">
                      <table border="0" cellpadding="0" cellspacing="0">
                        <tr>
                          <span id="DTU-INPUT"  <TMPL_UNLESS NAME=SYSTEMADMINISTRATOR>STYLE="visibility:hidden;"</TMPL_UNLESS> >
                            <input type="checkbox" class="nsinputs"  name="DISPLAY_TO_USERS" value="1" <TMPL_IF NAME="DISPLAY_TO_USERS_YES">CHECKED</TMPL_IF>>
                          </span>
                        </tr>
                      </table>
                    </td>
                  </TR>
                </TMPL_IF>

                <TMPL_IF SHOW_COMPANY_CONTACT>
                  <TR>
                    <td class="unifont1" align="left" width="50%">Company Contact:&nbsp;
                      <a href="javascript:show_post_popup('LOGIN/SHOW_POPUP','FPWInfo','644','500',0,0,0,1,0,0,'','company_contact_help');">
                        <img src="<TMPL_VAR IMGPATH>/v2/ico_question.gif" alt="More Information"/>
                    </td>
                    <td align="left" width="50%">
                      <table border="0" cellpadding="0" cellspacing="0">
                        <tr>
                          <td><INPUT TYPE=RADIO NAME=COMPANY_CONTACT VALUE='1' <TMPL_IF NAME=COMPANY_CONTACT_YES>CHECKED</TMPL_IF>></td>
                          <td class="unifont1">Yes&nbsp;&nbsp;&nbsp;</td>
                          <td><INPUT TYPE=RADIO NAME=COMPANY_CONTACT VALUE='0' <TMPL_UNLESS NAME=COMPANY_CONTACT_YES>CHECKED</TMPL_UNLESS>></td>
                          <td class="unifont1">No</td>
                        </tr>
                      </table>
                    </td>
                  </TR>
                </TMPL_IF>

	            <TMPL_UNLESS NAME="SYSTEMADMINISTRATOR">
                  <TMPL_UNLESS NAME="DISABLE_AUTOMATED_BILL_PAY">
                    <TR>
                      <td class="unifont1" align="left" width="50%">Billing End User:</TD>
                      <td align="left" width="50%">
                        <table border="0" cellpadding="0" cellspacing="0">
                          <tr>
                            <td><INPUT TYPE=RADIO NAME=BILLING_END_USER VALUE='1' <TMPL_IF NAME=BILLING_END_USER_YES>CHECKED</TMPL_IF> onClick=""></td>
                            <td class="unifont1">Yes&nbsp;&nbsp;&nbsp;</td>
                            <td><INPUT TYPE=RADIO NAME=BILLING_END_USER VALUE='0' <TMPL_UNLESS NAME=BILLING_END_USER_YES>CHECKED</TMPL_UNLESS>></td>
                            <td class="unifont1">No</td>
                          </tr>
                        </table>
                      </td>
                    </TR>
                    <TMPL_UNLESS ENABLE_EPIC360_PAYMENTS>
                    <TR>
                      <td class="unifont1" align="left" width="50%">Activity Detail:</TD>
                      <td align="left" width="50%">
                        <table border="0" cellpadding="0" cellspacing="0">
                          <tr>
                            <td><INPUT TYPE=RADIO NAME=ACTIVITY_DETAIL VALUE='1' <TMPL_IF NAME=ACTIVITY_DETAIL_YES>CHECKED</TMPL_IF> onClick=""></td>
                            <td class="unifont1">Yes&nbsp;&nbsp;&nbsp;</td>
                            <td><INPUT TYPE=RADIO NAME=ACTIVITY_DETAIL VALUE='0' <TMPL_UNLESS NAME=ACTIVITY_DETAIL_YES>CHECKED</TMPL_UNLESS>></td>
                            <td class="unifont1">No</td>
                          </tr>
                        </table>
                      </td>
                    </TR>
                    </TMPL_UNLESS>
	              </TMPL_UNLESS>
	            </TMPL_UNLESS>

	            <TMPL_UNLESS DA_ONLY>
                  <TMPL_UNLESS HIDE_SEARCHES_REPORTS>
 	                <TMPL_UNLESS LOC>
	                  <TR>
                        <td class="unifont1" align="left" width="200">Directory Assistance Only:</TD>
                        <td align="left" width="220">
                          <table border="0" cellpadding="0" cellspacing="0">
                            <tr>
                              <td><INPUT TYPE=RADIO NAME=DA_ONLY VALUE='1' <TMPL_IF NAME=DA_ONLY_YES>CHECKED</TMPL_IF>></td>
                              <td class="unifont1">Yes&nbsp;&nbsp;&nbsp;</td>
                              <td><INPUT TYPE=RADIO NAME=DA_ONLY VALUE='0' <TMPL_UNLESS NAME=DA_ONLY_YES>CHECKED</TMPL_UNLESS>></td>
                              <td class="unifont1">No</td>
                            </tr>
                          </table>
                        </td>
                      </TR>
	                </TMPL_UNLESS>

	                <TMPL_UNLESS NAME=ROW_LOCKED>
	                  <TMPL_UNLESS LOC>
		                <TMPL_IF LE>
		                  <TMPL_UNLESS IRB>
		                    <TMPL_UNLESS DISABLE_PHONE_BATCH>
		                      <TR>
			                    <td class="unifont1" align="left" width="200">Enable Reverse Phone Append:</TD>
			                    <td align="left" width="220">
			                    <table border="0" cellpadding="0" cellspacing="0">
			                      <tr>
			                        <td><input type="radio" name="ALLOW_PHONE_BATCH_JOBS" value="1" <TMPL_IF NAME=ALLOW_PHONE_BATCH_JOBS>CHECKED</TMPL_IF>></td>
			                        <td class="unifont1">Yes&nbsp;&nbsp;&nbsp;</td>
			                        <td><input type="radio" name="ALLOW_PHONE_BATCH_JOBS" value="0" <TMPL_UNLESS NAME=ALLOW_PHONE_BATCH_JOBS>CHECKED</TMPL_UNLESS>></td>
			                        <td class="unifont1">No</td>
			                      </tr>
			                    </table>
			                    </td>
		                      </TR>
		                    </TMPL_UNLESS>
		                  </TMPL_UNLESS>
		                </TMPL_IF>

		                <TMPL_UNLESS IRB>
		                  <TMPL_UNLESS DISABLE_BATCH>
		                    <TR>
			                  <td class="unifont1" align="left" width="200">Enable Batch Uploads:</TD>
			                  <td align="left" width="220">
			                    <table border="0" cellpadding="0" cellspacing="0">
			                      <tr>
			                        <td><INPUT TYPE=RADIO NAME=ALLOW_BATCH_JOBS_MYACC VALUE='1' <TMPL_IF NAME=ALLOW_BATCH_JOBS_MYACC>CHECKED</TMPL_IF>></td>
			                        <td class="unifont1">Yes&nbsp;&nbsp;&nbsp;</td>
			                        <td><INPUT TYPE=RADIO NAME=ALLOW_BATCH_JOBS_MYACC VALUE='0' <TMPL_UNLESS NAME=ALLOW_BATCH_JOBS_MYACC>CHECKED</TMPL_UNLESS> onclick="adminalert();"></td>
			                        <td class="unifont1">No</td>
			                      </tr>
			                    </table>
			                  </td>
		                    </TR>
		                  </TMPL_UNLESS>
		                </TMPL_UNLESS>

	                    <TMPL_IF COMPANY_DISABLE_COURT>
	                      <INPUT TYPE=HIDDEN NAME="DISABLE_COURT" VALUE="1">
	                    <TMPL_ELSE>
	                      <TMPL_IF IS_RESELLER>
	                        <INPUT TYPE=HIDDEN NAME="DISABLE_COURT" VALUE="1">
	                      <TMPL_ELSE>
                            <TR>
                              <td width="200" nowrap class="unifont1" align="left">Enable Court Searches:</TD>
                              <td width="220" align="left">
                                <table border="0" cellpadding="0" cellspacing="0">
                                  <tr>
                                    <td><INPUT TYPE=RADIO NAME="DISABLE_COURT" VALUE='0' <TMPL_UNLESS NAME=DISABLE_COURT>CHECKED</TMPL_UNLESS>></td>
                                    <td class="unifont1">Yes&nbsp;&nbsp;&nbsp;</td>
                                    <td><INPUT TYPE=RADIO NAME="DISABLE_COURT" VALUE='1' <TMPL_IF NAME=DISABLE_COURT>CHECKED</TMPL_IF>></td>
                                    <td class="unifont1">No</td>
                                  </tr>
                                </table>
                              </td>
                            </TR>
	                      </TMPL_IF>
	                    </TMPL_IF>

	                    <TMPL_UNLESS IRB>
	                      <TMPL_IF COMPANY_DISABLE_WATCHDOG>
	                        <INPUT TYPE=HIDDEN NAME="DISABLE_WATCHDOG" VALUE="1">
	                      <TMPL_ELSE>
                            <TR>
                              <td width="200" nowrap class="unifont1" align="left">Enable Watchdog:</TD>
                              <td width="220" align="left">
                                <table border="0" cellpadding="0" cellspacing="0">
                                  <tr>
                                    <td><INPUT TYPE=RADIO NAME="DISABLE_WATCHDOG" VALUE='0' <TMPL_UNLESS NAME=DISABLE_WATCHDOG>CHECKED</TMPL_UNLESS>></td>
                                    <td class="unifont1">Yes&nbsp;&nbsp;&nbsp;</td>
                                    <td><INPUT TYPE=RADIO NAME="DISABLE_WATCHDOG" VALUE='1' <TMPL_IF NAME=DISABLE_WATCHDOG>CHECKED</TMPL_IF>></td>
                                    <td class="unifont1">No</td>
                                  </tr>
                                </table>
                              </td>
                            </TR>
	                      </TMPL_IF>
	                    </TMPL_UNLESS>

	                    <TMPL_IF SHOW_RESEND_VTOKEN>
                          <tr>
		                    <td colspan='2'><br/><a style="font-size:8pt" href='#' onclick="javascript:resend_vcode()">Resend Forgot Password Signup Verification Token</a></td>
		                  </tr>
		                  <div id="systemWorking" style="position:absolute;top:350px;left:450px;z-index:100;display:none;">
		                    <img id="sWimg" src="<TMPL_VAR NAME=IMGPATH>/rs_vtoken.gif" alt="Resending Token.." />
		                  </div>
	                    </TMPL_IF>
	                  </TMPL_UNLESS>

	                  <TMPL_IF ALLOW_SKIP_TRACE>
	                    <TMPL_IF COMPANY_DISABLE_SKIP_TRACE>
	                      <INPUT TYPE=HIDDEN NAME="DISABLE_SKIP_TRACE" VALUE="1">
	                    <TMPL_ELSE>
                          <TR>
                            <td width="200" nowrap class="unifont1" align="left">Enable Skip Wizard:</TD>
                            <td width="220" align="left">
                              <table border="0" cellpadding="0" cellspacing="0">
                                <tr>
                                  <td><INPUT TYPE=RADIO NAME="DISABLE_SKIP_TRACE" VALUE='0' <TMPL_UNLESS NAME=DISABLE_SKIP_TRACE>CHECKED</TMPL_UNLESS>></td>
                                  <td class="unifont1">Yes&nbsp;&nbsp;&nbsp;</td>
                                  <td><INPUT TYPE=RADIO NAME="DISABLE_SKIP_TRACE" VALUE='1' <TMPL_IF NAME=DISABLE_SKIP_TRACE>CHECKED</TMPL_IF>></td>
                                  <td class="unifont1">No</td>
                                </tr>
                              </table>
                            </td>
                          </TR>
	                    </TMPL_IF>
	                  </TMPL_IF>

	                  <TMPL_IF ALLOW_USER_WEBAR>
	                    <TR>
                          <td width="200" nowrap class="unifont1" align="left">Enable Collect Point:</TD>
                          <td width="220" align="left">
                            <table border="0" cellpadding="0" cellspacing="0">
                              <tr>
                                <td><INPUT TYPE=RADIO NAME="ENABLE_WEBAR" VALUE='1' <TMPL_IF NAME=ENABLE_WEBAR>CHECKED</TMPL_IF>></td>
                                <td class="unifont1">Yes&nbsp;&nbsp;&nbsp;</td>
                                <td><INPUT TYPE=RADIO NAME="ENABLE_WEBAR" VALUE='0' <TMPL_UNLESS NAME=ENABLE_WEBAR>CHECKED</TMPL_UNLESS>></td>
                                <td class="unifont1">No</td>
                              </tr>
                            </table>
                          </td>
                        </TR>
	                    <TR>
                          <td width="200" nowrap class="unifont1" align="left">Enable direct relay to Collect Point:</TD>
                          <td width="220" align="left">
                            <table border="0" cellpadding="0" cellspacing="0">
                              <tr>
                                <td><INPUT TYPE=RADIO NAME="ENABLE_DIRECT_RELAY_WEBAR" VALUE='1' <TMPL_IF NAME=ENABLE_DIRECT_RELAY_WEBAR>CHECKED</TMPL_IF>></td>
                                <td class="unifont1">Yes&nbsp;&nbsp;&nbsp;</td>
                                <td><INPUT TYPE=RADIO NAME="ENABLE_DIRECT_RELAY_WEBAR" VALUE='0' <TMPL_UNLESS NAME=ENABLE_DIRECT_RELAY_WEBAR>CHECKED</TMPL_UNLESS>></td>
                                <td class="unifont1">No</td>
                              </tr>
                            </table>
                          </td>
                        </TR>
	                  </TMPL_IF>
	                </TMPL_UNLESS>
	              </TMPL_UNLESS>
	            </TMPL_UNLESS>
              </TMPL_UNLESS>
	    </table>
	  </fieldset>

	      <TMPL_UNLESS NAME=ROW_LOCKED>
            <TMPL_UNLESS NAME=SSO_USER>
              <TMPL_UNLESS HIDE_SEARCHES_REPORTS>
                <p></p>
		        <TMPL_IF LOC>
			      <TMPL_INCLUDE NAME="../loc/manage_account_disable_reports.tpl">
		        <TMPL_ELSE>
		          <TMPL_IF LNP>
			        <TMPL_INCLUDE NAME="../tcol/manage_account_disable_reports.tpl">
		          <TMPL_ELSE>
		            <TMPL_IF TCOL>
			          <TMPL_INCLUDE NAME="../tcol/manage_account_disable_reports.tpl">
		            <TMPL_ELSE>
		              <TMPL_IF FCOL>
			            <TMPL_INCLUDE NAME="../fcol/manage_account_disable_reports.tpl">
		              <TMPL_ELSE>
		                <TMPL_IF GCOL>
			              <TMPL_INCLUDE NAME="../gcol/manage_account_disable_reports.tpl">
		                <TMPL_ELSE>
		                  <TMPL_INCLUDE NAME="manage_account_disable_reports.tpl">
		                </TMPL_IF>
		              </TMPL_IF>
		            </TMPL_IF>
		          </TMPL_IF>
		        </TMPL_IF>
	            <p></p>
	          </TMPL_UNLESS>
            </TMPL_UNLESS>
	      </TMPL_UNLESS>
          <TMPL_UNLESS NAME=SSO_USER>
            <TMPL_INCLUDE manage_account_disable_features.tpl>
          </TMPL_UNLESS> 
          <TMPL_UNLESS DISABLE_POLICE_RECORDS>
            <TMPL_IF INS>
                <p></p>
                <TMPL_INCLUDE NAME="manage_account_disable_police_users.tpl">
            <TMPL_ELSE>
                <TMPL_IF LEG>
                  <p></p>
                  <TMPL_INCLUDE NAME="manage_account_disable_police_users.tpl">
                </TMPL_IF>
            </TMPL_IF>
          </TMPL_UNLESS> 
          <TMPL_UNLESS NAME=SSO_USER>
            <TMPL_IF NAME="GROUPS_ENABLED">
              <TMPL_IF HAS_ADMIN_GROUP>
                 <p></p>
                 <TMPL_INCLUDE NAME="update_users_admin_groups.tpl">
              </TMPL_IF>
            </TMPL_IF>
          </TMPL_UNLESS>
	      <TMPL_ELSE>

	      <INPUT TYPE=HIDDEN NAME="DA_ONLY" VALUE="1">

	      </TMPL_UNLESS>

	    </td>

	    <!-- right column -->
	    <TMPL_UNLESS NAME=ROW_LOCKED>
	      <td width="50%" align="left" valign="top">
            <TMPL_UNLESS NAME=SSO_USER>
            <TMPL_UNLESS HIDE_SEARCHES_REPORTS>
              <TMPL_IF NAME="IRS">
                <TMPL_INCLUDE NAME="irs/manage_account_disable_searches.tpl">
              <TMPL_ELSE>
                <TMPL_IF NAME="HEA">
                  <TMPL_INCLUDE NAME="hea/manage_account_disable_searches.tpl">
                <TMPL_ELSE>
                  <TMPL_IF NAME="INS">
                    <TMPL_INCLUDE NAME="ins/manage_account_disable_searches.tpl">
                  <TMPL_ELSE>
                    <TMPL_IF NAME="LEG">
                      <TMPL_INCLUDE NAME="leg/manage_account_disable_searches.tpl">
	                <TMPL_ELSE>
                      <TMPL_IF NAME="XBPS">
	                    <TMPL_INCLUDE NAME="xbps/manage_account_disable_searches.tpl">
	                  <TMPL_ELSE>
                        <TMPL_IF NAME="GOV">
                          <TMPL_INCLUDE NAME="gov/manage_account_disable_searches.tpl">
                        <TMPL_ELSE>
	                       <TMPL_IF NAME="LE">
	                         <TMPL_INCLUDE NAME="le/manage_account_disable_searches.tpl">
		                   <TMPL_ELSE>
	                         <TMPL_IF NAME="COL">
	                           <TMPL_INCLUDE NAME="col/manage_account_disable_searches.tpl">
		                     <TMPL_ELSE>
	                           <TMPL_IF NAME="LNP">
	                             <TMPL_INCLUDE NAME="tcol/manage_account_disable_searches.tpl">
		                       <TMPL_ELSE>
	                             <TMPL_IF NAME="TCOL">
	                               <TMPL_INCLUDE NAME="tcol/manage_account_disable_searches.tpl">
		                         <TMPL_ELSE>
	                               <TMPL_IF NAME="FCOL">
	                                  <TMPL_INCLUDE NAME="fcol/manage_account_disable_searches.tpl">
		                           <TMPL_ELSE>
	                                  <TMPL_IF NAME="GCOL">
	                                    <TMPL_INCLUDE NAME="gcol/manage_account_disable_searches.tpl">
		                              <TMPL_ELSE>
			                            <TMPL_IF NAME="LOC">
			                              <TMPL_INCLUDE NAME="../loc/manage_account_disable_searches.tpl">
			                            <TMPL_ELSE>
			                            <TMPL_IF NAME="IRB">
			                              <TMPL_INCLUDE NAME="../irb/manage_account_disable_searches.tpl">
			                            <TMPL_ELSE>
			                              <TMPL_INCLUDE NAME="manage_account_disable_searches.tpl">
	                                    </TMPL_IF>
	                                    </TMPL_IF>
	                                  </TMPL_IF>
	                               </TMPL_IF>
	                             </TMPL_IF>
	                           </TMPL_IF>
	                         </TMPL_IF>
	                       </TMPL_IF>
	                     </TMPL_IF>
	                   </TMPL_IF>
                     </TMPL_IF>
                   </TMPL_IF>
                 </TMPL_IF>
               </TMPL_IF>
            <TMPL_ELSE>
      	      <TMPL_IF NAME="LE">
                <!-- Case Connect -->
                <TMPL_INCLUDE NAME=case_connect/admin_radio_block.tpl>
	          <TMPL_ELSE>
                <TMPL_IF NAME="GOV">
                  <!-- Case Connect -->
                  <TMPL_INCLUDE NAME=case_connect/admin_radio_block.tpl>
                </TMPL_IF>
              </TMPL_IF>
            </TMPL_UNLESS>
            </TMPL_UNLESS>
	      </td>
        </TMPL_UNLESS>
        </tr>
    <TR>
      <td align="center" valign="top" colspan="2">
	    <TMPL_INCLUDE NAME="manage_account_update_user_buttons_new.tpl">
      </td>
    </TR>
        </table>
        </td>
      </tr>
    </table>


<TMPL_INCLUDE NAME=myaccount_footer.tpl>

<INPUT type=hidden NAME=ORIG_SYSTEMADMINISTRATOR value="<TMPL_VAR ORIG_SYSTEMADMINISTRATOR>">
<INPUT type=hidden NAME=ORIG_DA_ONLY value="<TMPL_VAR ORIG_DA_ONLY>">
<INPUT type=hidden NAME=ORIG_ALLOW_BATCH_JOBS value="<TMPL_VAR ORIG_ALLOW_BATCH_JOBS>">
<INPUT type=hidden NAME=ORIG_ALLOW_PHONE_BATCH_JOBS value="<TMPL_VAR ORIG_ALLOW_PHONE_BATCH_JOBS>">
<INPUT type=hidden NAME=ORIG_BILLING_END_USER value="<TMPL_VAR ORIG_BILLING_END_USER>">
<INPUT type=hidden NAME=ORIG_ACTIVITY_DETAIL value="<TMPL_VAR ORIG_ACTIVITY_DETAIL>">
<INPUT type=hidden NAME=ORIG_PERSON_STATUS_P value="<TMPL_VAR ORIG_PERSON_STATUS_P>">
<INPUT type=hidden NAME=ORIG_PERSON_STATUS_S value="<TMPL_VAR ORIG_PERSON_STATUS_S>">
<INPUT type=hidden NAME=ORIG_PERSON_STATUS_A value="<TMPL_VAR ORIG_PERSON_STATUS_A>">
<INPUT type=hidden NAME=ORIG_PERSON_STATUS_D value="<TMPL_VAR ORIG_PERSON_STATUS_D>">
<INPUT type=hidden NAME="IS_SSO_USER" value="<TMPL_VAR SSO_USER>">
<TMPL_IF NAME=ROW_LOCKED>
<script>disable_form(document.forms[0]);</script>
</TMPL_IF>

<TMPL_INCLUDE NAME="manage_account_error_mesg.tpl">

<!-- end manage_account_update_users.tpl -->
