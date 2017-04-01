<!-- begin manage_account_add_user.tpl -->

    <table border="0" cellpadding="0" cellspacing="0" class="myaccountborder" width="880">
      <tr>
        <td align="center" valign="top">
        <table border="0" cellpadding="0" cellspacing="0" class="myaccountbody" width="860">
          <tr height="12" class="myaccountborder">
            <td colspan="2" height="12" class="unifont2pt">&nbsp;</td>
          </tr>
          <tr>
            <td align="center" valign="top" width="440">
            <table border="0" cellpadding="0" cellspacing="0" width="420">
	      <tr>
	        <td colspan="2">&nbsp;</td>
	      </tr>
              <TR>
                <td class="myaccounttitle" align="center" width="50%">Add User:</TD>
                <td class="largefont1" align="center" valign="top" width="50%">
		  <TMPL_INCLUDE NAME="manage_account_add_user_buttons.tpl">
                </td>
              </TR>
	      <TMPL_IF NAME="PENDING_ADMINS">
	      <tr>
	        <td colspan="2" class="unifont1" align="center">
		<b><a href="javascript: void(0);" onclick="general_win('<TMPL_VAR NAME="HLPPATH">/new_admin_help.html', 'NewAdminHelp', 540, 280);">* Instructions</a></b> on adding System Administrators to your account.
		</td>
	      </tr>
	      </TMPL_IF>
          <tr>
	    <td align="center" colspan="2">
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
                <td class="unifont1" align="left" width="200">First Name:</TD>
              <TMPL_ELSE>
                <td class="unifont1bold" align="left" width="200">First Name:</TD>
              </TMPL_IF>              
                <td align="left" width="200"><INPUT class="nsinputs" TYPE="text" NAME="FIRSTNAME" SIZE="25" VALUE="<TMPL_VAR NAME=FIRSTNAME>" MAXLENGTH=30></TD>
              </TR>
              <TR>
                <td class="unifont1" align="left" width="200">Middle Name:</TD>
                <td align="left" width="200"><INPUT class="nsinputs" TYPE="text" NAME="MIDDLE_NAME" SIZE="25" VALUE="<TMPL_VAR NAME='MIDDLE_NAME'>" MAXLENGTH=30></TD>
              </TR>
              <TR>
              <TMPL_IF NAME="IRS">
                <td class="unifont1" align="left" width="200">Last Name:</TD>
              <TMPL_ELSE>
                <td class="unifont1bold" align="left" width="200">Last Name:</TD>
              </TMPL_IF>
                <td align="left" width="200"><INPUT class="nsinputs" TYPE="text" NAME="LASTNAME" SIZE="25" VALUE="<TMPL_VAR NAME=LASTNAME>" MAXLENGTH=30></TD>
              </TR>
              <TMPL_IF SHOW_EMPLOYEE_ID>
              <TR>
                <td class="unifont1" align="left" width="200">Employee ID:</TD>
                <td align="left" width="200"><INPUT class="nsinputs" TYPE="text" NAME="EMPLOYEEID" SIZE="25" VALUE="<TMPL_VAR NAME=EMPLOYEEID>" MAXLENGTH=11></TD>
              </TR>
              </TMPL_IF>
              <TMPL_UNLESS NAME="IRS">
              <TR>
                <td class="unifont1bold" align="left" width="200">Position Title:</TD>
                <td align="left" width="200"><INPUT class="nsinputs" TYPE="text" NAME="TITLE" SIZE="25" VALUE="<TMPL_VAR NAME=TITLE>" MAXLENGTH=30></TD>
              </TR>
              </TMPL_UNLESS>
	      <TMPL_INCLUDE NAME="manage_account_departments.tpl">
              <tr>
              <TMPL_IF NAME="IRS">
                <td class="unifont1" align="left" width="200">Street Address:</td>
              <TMPL_ELSE>
                <td class="unifont1bold" align="left" width="200">Street Address:</td>
              </TMPL_IF>
                <td align="left" width="200"><INPUT class="nsinputs" TYPE="text" NAME="ADDR_LINE1" SIZE="25" VALUE="<TMPL_VAR NAME=ADDR_LINE1>" MAXLENGTH=30></td>
              </tr>
              <TMPL_IF NAME="IRS">
              <TR>
                <td class="unifont1" align="left" width="200">Street Address 2:</TD>
                <td align="left" width="200"><INPUT class="nsinputs" TYPE="text" NAME="ADDR_LINE2" SIZE="25" VALUE="<TMPL_VAR NAME=ADDR_LINE2>" MAXLENGTH=30></TD>
              </TR>
              </TMPL_IF>
              <TR>
              <TMPL_IF NAME="IRS">
                <td class="unifont1" align="left" width="200">City:</TD>
              <TMPL_ELSE>
                <td class="unifont1bold" align="left" width="200">City:</TD>
              </TMPL_IF>
                <td align="left" width="200"><INPUT class="nsinputs" TYPE="text" NAME="ADDR_CITY" SIZE="25" VALUE="<TMPL_VAR NAME=ADDR_CITY>" MAXLENGTH=30></TD>
              </TR>
              <TR>
              <TMPL_IF NAME="IRS">
                <td class="unifont1" align="left" width="200">State:</TD>
              <TMPL_ELSE>
                <td class="unifont1bold" align="left" width="200">State:</TD>
              </TMPL_IF>
                <td align="left" width="200">
                    <INPUT class="nsinputs" TYPE="text" NAME="ADDR_STATE" SIZE="2" VALUE="<TMPL_VAR NAME=ADDR_STATE>" MAXLENGTH="2">
                </TD>
              </TR>
              <TR>
              <TMPL_IF NAME="IRS">
                <td class="unifont1" align="left" width="200">Zip Code:</TD>
              <TMPL_ELSE>
                <td class="unifont1bold" align="left" width="200">Zip Code:</TD>
              </TMPL_IF>
                <td align="left" width="200"><INPUT class="nsinputs" TYPE="text" NAME="ADDR_POSTALCODE" SIZE="25" VALUE="<TMPL_VAR NAME=ADDR_POSTALCODE>" MAXLENGTH=30></TD>
              </TR>
    <!--
              <TR>
                <td class="unifont1" align="left" width="200">Country:</TD>
                <td align="left" width="200"><INPUT class="nsinputs" TYPE="text" NAME="ADDR_COUNTRY" SIZE="25" VALUE="<TMPL_VAR NAME=ADDR_COUNTRY>" MAXLENGTH=30></TD>
              </TR>
    -->
              <TR>
              <TMPL_IF NAME="IRS">
                <td class="unifont1" align="left" width="200">Phone:</TD>
              <TMPL_ELSE>
                <td class="unifont1bold" align="left" width="200">Phone:</TD>
              </TMPL_IF>
                <td align="left" width="200"><INPUT class="nsinputs" TYPE="text" NAME="PHONE_VOICE1" SIZE="25" VALUE="<TMPL_VAR NAME=PHONE_VOICE1>" MAXLENGTH=30></TD>
              </TR>
    <!--
              <TR>
                <td class="unifont1" align="left" width="200">Phone 2:</TD>
                <td align="left" width="200"><INPUT class="nsinputs" TYPE="text" NAME="PHONE_VOICE2" SIZE="25" VALUE="<TMPL_VAR NAME=PHONE_VOICE2>" MAXLENGTH=30></TD>
              </TR>
              <TR>
                <td class="unifont1" align="left" width="200">FAX:</TD>
                <td align="left" width="200"><INPUT class="nsinputs" TYPE="text" NAME="PHONE_FAX" SIZE="25" VALUE="<TMPL_VAR NAME=PHONE_FAX>" MAXLENGTH=30></TD>
              </TR>
    -->

    		  <TMPL_IF NAME="ENABLE_EMAIL_DOMAIN">
				  <TR>
				  	<td class="unifont1" colspan="2" width="50%">
				  		<table class="unifont1" border="0" cellpadding="0" cellspacing="0" width="100%">
				  			<tr>
                            <TMPL_IF NAME="IRS">
								<td class="unifont1" align="left" width="33%">Email Prefix:&nbsp;</TD>
						    <TMPL_ELSE>
								<td class="unifont1bold" align="left" width="50%" nowrap >Email Prefix:&nbsp;</TD>
						    </TMPL_IF>
								<td align="left" width="32%"><INPUT class="nsinputs" TYPE="text" NAME="EMAIL_ADDR_PREFIX" SIZE="18" VALUE="<TMPL_VAR NAME=EMAIL_ADDR_PREFIX>" MAXLENGTH=60></TD>
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
                            	<td class="unifont1bold" align="left" width="50%" nowrap >Confirm Email Prefix:&nbsp;</TD>
                            </TMPL_IF>
								<td align="left" width="32%"><INPUT onpaste="block_paste(this);" class="nsinputs" TYPE="text" NAME="EMAIL_ADDR_PREFIX2" SIZE="18" VALUE="<TMPL_VAR NAME=EMAIL_ADDR_PREFIX2>" MAXLENGTH=60></TD>
								<td class="unifont1" align="center">@</TD>
								<td align="left">
									<select id="email_domain" name="EMAIL_DOMAIN2">
										<option value="" selected>Select One</option>
										<TMPL_LOOP NAME="EMAIL_DOMAIN_LIST">
											<option<TMPL_IF NAME='EMAIL_DOMAIN_SELECTED'> selected</TMPL_IF> value="<TMPL_VAR NAME='EMAIL_DOMAIN'>"><TMPL_VAR NAME='EMAIL_DOMAIN'></option>
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
                <td class="unifont1" align="left" width="200">Email:</TD>
              <TMPL_ELSE>
                <td class="unifont1bold" align="left" width="200">Email:</TD>
              </TMPL_IF>
                <td align="left" width="200"><INPUT class="nsinputs" TYPE="text" NAME="EMAIL_ADDR" SIZE="25" VALUE="<TMPL_VAR NAME=EMAIL_ADDR>" MAXLENGTH=60></TD>
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

              <TMPL_IF NAME="IRS">
              <TMPL_INCLUDE NAME="manage_account_add_update_user_irs_options.tpl">
              </TMPL_IF>
              <TR>
              <TMPL_IF NAME="IRS">
                <td class="unifont1" align="left" width="200"><img border="0" width="11" height="10" src="<TMPL_VAR NAME=IMGPATH>/star.gif" alt="See Password Requirements">&nbsp;Login:</TD>
              <TMPL_ELSE>
                <td class="unifont1bold" align="left" width="200"><img border="0" width="11" height="10" src="<TMPL_VAR NAME=IMGPATH>/star.gif" alt="See Password Requirements">&nbsp;Login:</TD>
              </TMPL_IF>
                <td align="left" width="200"><INPUT class="nsinputs" TYPE="text" NAME="NEW_LOGINID" SIZE="25" VALUE="<TMPL_VAR NAME=NEW_LOGINID>" MAXLENGTH=<TMPL_IF IRS>20<TMPL_ELSE>30</TMPL_IF>></TD>
              </TR>
              <TR>
              <TMPL_IF NAME="IRS">
                <td class="unifont1" align="left" width="200"><img border="0" width="11" height="10" src="<TMPL_VAR NAME=IMGPATH>/star.gif" alt="See Password Requirements">&nbsp;Password:</TD>
              <TMPL_ELSE>
                <td class="unifont1bold" align="left" width="200"><img border="0" width="11" height="10" src="<TMPL_VAR NAME=IMGPATH>/star.gif" alt="See Password Requirements">&nbsp;Password:</TD>
              </TMPL_IF>
                <td align="left" width="200"><INPUT class="nsinputs" TYPE="password" NAME="PASSWORD" SIZE="25" VALUE="" MAXLENGTH=30 AUTOCOMPLETE="off"></TD>
              </TR>
              <TR>
              <TMPL_IF NAME="IRS">
                <td class="unifont1" align="left" width="200"><img border="0" width="11" height="10" src="<TMPL_VAR NAME=IMGPATH>/star.gif" alt="See Password Requirements">&nbsp;Confirm Password:</TD>
              <TMPL_ELSE>
                <td class="unifont1bold" align="left" width="200"><img border="0" width="11" height="10" src="<TMPL_VAR NAME=IMGPATH>/star.gif" alt="See Password Requirements">&nbsp;Confirm Password:</TD>
              </TMPL_IF>
                <td align="left" width="200"><INPUT class="nsinputs" TYPE="password" NAME="CONFIRM_PASSWORD" SIZE="25" VALUE="" MAXLENGTH=30 AUTOCOMPLETE="off"></TD>
              </TR>
	        </table>
	    <div style="margin: 2px auto; padding: 0; width: 100%; text-align: center;">
	      <TMPL_INCLUDE NAME="manage_account_username_password_req.tpl">
	    </div>
	      </fieldset>
	    </td>
          </tr>

          <tr>
	    <td align="center" colspan="2">
	      <fieldset>
	        <div align="left" class="unifont1bold"><legend>General Settings</legend></div>
		<table border="0" cellpadding="0" cellspacing="0" width="95%">

              <TR>
                <td class="unifont1" align="left" width="200">Suspend User:</TD>
                <td align="left" width="200">
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

              <TR>
                <td class="unifont1" align="left" width="200">System Administrator:</TD>
                <td align="left" width="200">
                <table border="0" cellpadding="0" cellspacing="0">
                  <tr>
                    <td><INPUT TYPE=RADIO NAME=SYSTEMADMINISTRATOR VALUE='1' <TMPL_IF NAME=SYSTEMADMINISTRATOR>CHECKED</TMPL_IF> onClick="batchset();check_admin_to_be('T');"></td>
                    <td class="unifont1">Yes&nbsp;&nbsp;&nbsp;</td>
                    <td><INPUT TYPE=RADIO NAME=SYSTEMADMINISTRATOR VALUE='0' <TMPL_UNLESS NAME=SYSTEMADMINISTRATOR>CHECKED</TMPL_UNLESS> onClick="userroleset();check_admin_to_be('F');"></td>
                    <td class="unifont1">No</td>
                  </tr>
                </table>
                </td>
              </TR>
            <TMPL_IF ECT_COLLECT_PII_DATA>
            <TMPL_UNLESS INTERNAL_COMPANY>
            <TMPL_UNLESS IS_RESELLER>
            <tr>
              <td colspan="2" >
                <TMPL_INCLUDE NAME=manage_account_gather_admin_to_be_info.tpl>
              </td>
            </tr>
            </TMPL_UNLESS>
            </TMPL_UNLESS>
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

	      <TMPL_UNLESS LOC>
	      <TR>
                <td class="unifont1" align="left" width="200">Directory Assistance Only:</TD>
                <td align="left" width="200">
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

		  <TMPL_IF LE>
		  <TMPL_UNLESS IRB>
		  <TMPL_UNLESS DISABLE_PHONE_BATCH>
		      <TR>
                <td class="unifont1" align="left" width="200">Enable Reverse Phone Append:</TD>
                <td align="left" width="200">
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

		  <TMPL_UNLESS LOC>
		  <TMPL_UNLESS IRB>
		  <TMPL_UNLESS DISABLE_BATCH>
		      <TR>
                <td class="unifont1" align="left" width="200">Enable Batch Uploads:</TD>
                <td align="left" width="200">
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
	        </table>
	      </fieldset>
	    </td>
          </tr>

          <tr>
            <td class="unifont1" align="center" colspan="2">
               <TMPL_IF LOC>
                        <TMPL_INCLUDE NAME="loc/manage_account_disable_reports.tpl">
                <TMPL_ELSE>
               <TMPL_IF LNP>
                        <TMPL_INCLUDE NAME="tcol/manage_account_disable_reports.tpl">
                <TMPL_ELSE>
               <TMPL_IF TCOL>
                        <TMPL_INCLUDE NAME="tcol/manage_account_disable_reports.tpl">
                <TMPL_ELSE>
               <TMPL_IF FCOL>
                        <TMPL_INCLUDE NAME="fcol/manage_account_disable_reports.tpl">
                <TMPL_ELSE>
               <TMPL_IF GCOL>
                        <TMPL_INCLUDE NAME="gcol/manage_account_disable_reports.tpl">
                <TMPL_ELSE>
                        <TMPL_INCLUDE NAME="manage_account_disable_reports.tpl">
                </TMPL_IF>
                </TMPL_IF>
                </TMPL_IF>
                </TMPL_IF>
                </TMPL_IF>
	    </td>
          </tr>

          <tr>
            <td class="unifont1" align="center" colspan="2">
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
	    </td>
          </tr>

	      <TMPL_ELSE>

	      <INPUT TYPE=HIDDEN NAME="DA_ONLY" VALUE="1">

	      </TMPL_UNLESS>

          <tr>
            <td colspan="2" align="center">
            <br><br><br>
	    <TMPL_INCLUDE NAME="manage_account_add_user_buttons.tpl">
            </td>
          </tr>
        </table>

        </td>
	    <td width="300" align="left" valign="top">
	    <br>
	    <TMPL_IF NAME="IRS">
       	      <TMPL_INCLUDE NAME="irs/manage_account_disable_searches.tpl">
	    <TMPL_ELSE>
	      <TMPL_IF NAME="HEA">
	        <TMPL_INCLUDE NAME="hea/manage_account_disable_searches.tpl">
	      <TMPL_ELSE>
	        <TMPL_IF NAME="INS">
	          <TMPL_INCLUDE NAME="ins/manage_account_disable_searches.tpl">
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
			    <TMPL_INCLUDE NAME="loc/manage_account_disable_searches.tpl">
			<TMPL_ELSE>
		       <TMPL_IF NAME="IRB">
			    <TMPL_INCLUDE NAME="irb/manage_account_disable_searches.tpl">
			<TMPL_ELSE>
		       <TMPL_IF NAME="XBPS">
			    <TMPL_INCLUDE NAME="xbps/manage_account_disable_searches.tpl">
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
	    </td>
          </tr>
        </table>
        </td>
      </tr>
    </table>

<TMPL_INCLUDE NAME=myaccount_footer.tpl>

<TMPL_INCLUDE NAME="manage_account_error_mesg.tpl">

<!-- end manage_account_add_user.tpl -->
