<!-- begin manage_account_copy_user.tpl -->
<div class="myaccount-section-title">Copying User: <span style="color: #464646;"><TMPL_VAR NAME=LOGINID></span></div>
<div class="myaccount-containers">
    <div class="section">
        <div class="section-row">
            <style>
                fieldset > table > tbody > tr > td{
                    padding-bottom:6px;
                    padding-right: 52px;
                }
            </style>
            <table class="twoColTable" style="width:60%;">
                <tbody>
                    <TMPL_IF NAME="PERSON_STATUS_P">
                        <tr>
                            <td class="pd15" style="padding-top:0">
                                <div class="warningmessage">
                                    <b><a href="javascript: void(0);" onclick="general_win('<TMPL_VAR NAME="HLPPATH">/new_admin_pending.html', 'NewAdminHelp', 500, 200);">* Note:</a></b> This user is pending verification.
                                </div>
                            </td>
                        </tr>
                    <TMPL_ELSE>
                    <TMPL_IF NAME="PERSON_STATUS_D">
                        <tr>
                            <td class="pd15" style="padding-top:0">
                                <div class="warningmessage">
                                    <b><a href="javascript: void(0);" onclick="general_win('<TMPL_VAR NAME="HLPPATH">/denied_admin_status.html', 'DeniedAdminHelp', 500, 200);">* Note:</a></b> System Administrator request denied for this user.
                                </div>
                            </td>
                        </tr>
                    <TMPL_ELSE>
                        <TMPL_IF NAME="PENDING_ADMINS">
                            <tr>
                                <td>
                                    <b><a href="javascript: void(0);" class="myaccLnk" onclick="general_win('<TMPL_VAR NAME="HLPPATH">/new_admin_help.html', 'NewAdminHelp', 540, 280);">* Instructions</a></b> on adding System Administrators to your account.
                                </td>
                            </tr>
                        </TMPL_IF>
                    </TMPL_IF>
                    </TMPL_IF>
                    <tr>
                        <td style="width:50%;">
                            <div class="section-row child-divs-left mgt6" style="height: 36px;">
                                <div class="btn grey-btn">
                                    <a href="javascript:send_event('MANAGE/MANAGE_ACCOUNTS')">
                                        &lt; Back
                                    </a>
                                </div>
                                <div class="btn red-btn mgl10">
                                    <a href="javascript:send_event('MANAGE/COPY_USER_NOW');" onClick="if( validate(<TMPL_VAR NAME=MIN_PASSWORD_LENGTH><TMPL_IF SHA2_PASSWORD>,1<TMPL_ELSE><TMPL_IF PW_COMPLEXITY_FOUR>,2<TMPL_ELSE>,0</TMPL_IF></TMPL_IF>)){if('<TMPL_VAR NAME="PENDING_ADMINS">' == '1') { return confirm_new_admin()} else {return true;}} else {return false;}">
                                        Copy User
                                    </a>
                                </div>
                            </div>
                            <fieldset>
                                <div align="left" class="unifont1bold"><legend>Account Settings <TMPL_UNLESS NAME="IRS">&nbsp;&nbsp;(bold fields denote required fields)</TMPL_UNLESS></legend></div>
                                    <INPUT type="hidden" name="USERID" value="<TMPL_VAR NAME=USERID>">
                                    <INPUT type="hidden" name="LOGINID" value="<TMPL_VAR NAME=LOGINID>">
                                    <table border="0" cellpadding="0" cellspacing="0" width="95%">
                                        <TMPL_UNLESS NAME="IRS">
                                            <TR>
                                                <td class="unifont1" align="left" width="50%"><label for="nam_prefix">Name Prefix:</label></TD>
                                                <td align="left" width="50%"><INPUT id="nam_prefix" class="nsinputs" TYPE="text" NAME="NAMEPREFIX" SIZE="25" VALUE="<TMPL_VAR NAME=NAMEPREFIX>" MAXLENGTH=30></TD>
                                            </TR>
                                        </TMPL_UNLESS>
                                        <tr>
                                            <td class="unifont1" align="left" width="50%"><label for="frst_nam"><TMPL_IF name="IRS">First Name:<TMPL_ELSE><strong>First Name:</strong></TMPL_IF></label></td>
                                            <td align="left" width="50%">
                                                <input id="frst_nam" class="nsinputs" type="text" name="FIRSTNAME" size="25" value="<TMPL_VAR NAME=FIRSTNAME>" maxlength=30>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="unifont1" align="left" width="200"><label for="mdl_nam">Middle Name:</label></td>
                                            <td align="left" width="220">
                                                <input id="mdl_nam" class="nsinputs" type="text" name="MIDDLE_NAME" size="25" value="<TMPL_VAR NAME='MIDDLE_NAME'>" maxlength=30>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="unifont1" align="left" width="50%"><label for="lst_nam"><TMPL_IF name="IRS">Last Name:<TMPL_ELSE><strong>Last Name:</strong></TMPL_IF></label></td>
                                            <td align="left" width="50%">
                                                <input id="lst_nam" class="nsinputs" type="text" name="LASTNAME" size="25" value="<TMPL_VAR NAME=LASTNAME>" maxlength=30>
                                            </td>
                                        </tr>
                                        <TMPL_IF SHOW_EMPLOYEE_ID>
                                        <tr>
                                            <td class="unifont1" align="left" width="50%"><label for="emp_id">Employee ID:</label></td>
                                            <td align="left" width="50%">
                                                <input id="emp_id" class="nsinputs" type="text" name="EMPLOYEEID" size="25" value="<TMPL_VAR NAME=EMPLOYEEID>" maxlength=11>
                                            </td>
                                        </tr>
                                        </TMPL_IF>
                                        <TMPL_UNLESS name="IRS">
                                            <tr>
                                                <td class="unifont1" align="left" width="200"><label for="pos_ttl"><TMPL_IF name="IRS">Position Title:<TMPL_ELSE><strong>Position Title:</strong></TMPL_IF></label></td>
                                                <td align="left" width="200">
                                                    <input id="pos_ttl" class="nsinputs" type="text" name="TITLE" size="25" value="<TMPL_VAR NAME=TITLE>" maxlength=30>
                                                </td>
                                            </tr>
                                        </TMPL_UNLESS>
                                        <TMPL_INCLUDE name="manage_account_departments.tpl">
                                        <tr>
                                            <td class="unifont1" align="left" width="50%"><label for="adr1"><TMPL_IF name="IRS">Street Address:<TMPL_ELSE><strong>Street Address:</strong></TMPL_IF></label></td>
                                            <td align="left" width="50%">
                                                <input id="adr1" class="nsinputs" type="text" name="ADDR_LINE1" size="25" value="<TMPL_VAR NAME=ADDR_LINE1>" maxlength=30>
                                            </td>
                                        </tr>
                                        <TMPL_IF NAME="IRS">
                                        <tr>
                                            <td class="unifont1" align="left" width="50%"><label for="adr2">Street Address 2:</label></td>
                                            <td align="left" width="50%">
                                                <input id="adr2" class="nsinputs" type="text" name="ADDR_LINE2" size="25" value="<TMPL_VAR NAME=ADDR_LINE2>" maxlength=30>
                                            </td>
                                        </tr>
                                        </TMPL_IF>
                                        <tr>
                                            <td class="unifont1" align="left" width="50%"><label for="cty"><TMPL_IF name="IRS">City:<TMPL_ELSE><strong>City:</strong></TMPL_IF></label></td>
                                            <td align="left" width="50%">
                                                <input id="cty" class="nsinputs" type="text" name="ADDR_CITY" size="25" value="<TMPL_VAR NAME=ADDR_CITY>" maxlength=30>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="unifont1" align="left" width="50%"><label for="state"><TMPL_IF name="IRS">State:<TMPL_ELSE><strong>State:</strong></TMPL_IF></label></td>
                                            <td align="left" width="50%">
                                                <TMPL_IF NAME="IRS">
                                                    <TMPL_IF NAME=STATE_DROP_DOWN_LIST>
                                                        <select id="state" name="ADDR_STATE">
                                                            <TMPL_LOOP STATE_DROP_DOWN_LIST>
                                                                <option value="<TMPL_VAR VALUE>"<TMPL_IF SELECTED> SELECTED</TMPL_IF>><TMPL_VAR NAME></OPTION>
                                                            </TMPL_LOOP>
                                                        </select>
                                                    </TMPL_IF>
                                                <TMPL_ELSE>
                                                    <input id="state" class="nsinputs" type="text" name="ADDR_STATE" size="2" value="<TMPL_VAR NAME=ADDR_STATE>" maxlength="2">
                                                </TMPL_IF>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="unifont1" align="left" width="50%"><label for="zip"><TMPL_IF name="IRS">Zip Code:<TMPL_ELSE><strong>Zip Code:</strong></TMPL_IF></label></td>
                                            <td align="left" width="50%">
                                                <input id="zip" class="nsinputs" type="text" name="ADDR_POSTALCODE" size="25" value="<TMPL_VAR NAME=ADDR_POSTALCODE>" maxlength=30>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="unifont1" align="left" width="50%"><label for="ph_vc"><TMPL_IF name="IRS">Phone:<TMPL_ELSE><strong>Phone:</strong></TMPL_IF></label></td>
                                            <td align="left" width="50%">
                                                <input id="ph_vc" class="nsinputs" type="text" name="PHONE_VOICE1" size="25" value="<TMPL_VAR NAME=PHONE_VOICE1>" maxlength=30>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="unifont1" align="left" width="50%"><label for="email"><TMPL_IF name="IRS">Email:<TMPL_ELSE><strong>Email:</strong></TMPL_IF></label></td>
                                            <td align="left" width="50%">
                                                <input id="email" class="nsinputs" type="text" name="EMAIL_ADDR" size="25" value="<TMPL_VAR NAME=EMAIL_ADDR>" maxlength=60>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="unifont1" align="left" width="50%"><label for="conf_email"><TMPL_IF name="IRS">Confirm Email:<TMPL_ELSE><strong>Confirm Email:</strong></TMPL_IF></label></td>
                                            <td align="left" width="50%">
						<input id="conf_email" onpaste="block_paste(this);" class="nsinputs" type="text" name="EMAIL_ADDR2" size="25" value="<TMPL_VAR NAME=EMAIL_ADDR>" maxlength=60>
                                            </td>
                                        </tr>
                                        <TMPL_IF NAME="IRS">
                                            <TMPL_INCLUDE name="manage_account_add_update_user_irs_options.tpl">
                                        </TMPL_IF>
                                        <tr>
                                            <td class="unifont1" align="left" width="50%"><label for="new_login"><TMPL_IF name="IRS">Login:<TMPL_ELSE><strong>Login:</strong></TMPL_IF></label></td>
                                            <td align="left" width="200">
                                                <input id="new_login" class="nsinputs" type="text" name="NEW_LOGINID" size="25" value="<TMPL_VAR NAME=NEW_LOGINID>" maxlength=<TMPL_IF IRS>20<TMPL_ELSE>30</TMPL_IF>>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="unifont1" align="left" width="50%"><sapn id="sys_admin">System Administrator:</sapn></td>
                                            <td align="left" width="50%">
						<input aria-labelledby="sys_admin" id="y_sys_admin" type="radio" name=SYSTEMADMINISTRATOR value='1' <TMPL_IF NAME=SYSTEMADMINISTRATOR>CHECKED</TMPL_IF> onClick="batchset();"><label for="y_sys_admin">Yes&nbsp;&nbsp;&nbsp;</label><input aria-labelledby="sys_admin" id="n_sys_admin" type="radio" name=SYSTEMADMINISTRATOR value='0' <TMPL_UNLESS name=SYSTEMADMINISTRATOR>CHECKED</TMPL_UNLESS>><label for="n_sys_admin">No</label>
                                            </td>    
                                        </tr>
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
                                        <tr>
                                            <td class="unifont1" align="left" width="50%">
                                                <img border="0" width="11" height="10" src="<TMPL_VAR NAME=IMGPATH>/star.gif" alt="See Password Requirements">
                                                &nbsp;<label for="new_pswrd"><TMPL_IF name="IRS">New Password:<TMPL_ELSE><strong>New Password:</strong></TMPL_IF></label>
                                            </td>
                                            <td align="left" width="50%">
                                                <input id="new_pswrd" class="nsinputs" type="password" name="PASSWORD" size="25" value="" maxlength=30 AUTOCOMPLETE="off">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="unifont1" align="left" width="50%">
                                                <img border="0" width="11" height="10" src="<TMPL_VAR NAME=IMGPATH>/star.gif" alt="See Password Requirements">
                                                &nbsp;<label for="conf_pswrd"><TMPL_IF name="IRS">Confirm New Password:<TMPL_ELSE><strong>Confirm New Password:</strong></TMPL_IF></label>
                                            </td>
                                            <td align="left" width="50%">
                                                <input id="conf_pswrd" class="nsinputs" type="password" name="CONFIRM_PASSWORD" size="25" value="" maxlength=30 AUTOCOMPLETE="off">
                                            </td>
                                        </tr>
                                    </table>
                                <div style="width: 375px;">
                                    <TMPL_INCLUDE name="manage_account_password_req.tpl">
                                </div>
                            </fieldset>
                        </td>
                    </tr>
                </table>
            </div>
        </div>
    </div>

<input type="hidden" name="CC_PERMISSIONS" value="<TMPL_VAR CC_PERMISSIONS>"/>

<TMPL_INCLUDE name=myaccount_footer.tpl>

<TMPL_INCLUDE name="manage_account_error_mesg.tpl">

<!-- end manage_account_copy_user.tpl -->
