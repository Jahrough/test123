<!-- begin manage_account_add_user.tpl -->
<div class="myaccount-section-title">Add User</div>
    <div class="myaccount-containers">
        <div class="section">
            <div class="section-row">
            <TMPL_IF NAME="PENDING_ADMINS">
                <div>
                    <b><a class="myaccLnk" href="javascript: void(0);" onclick="general_win('<TMPL_VAR NAME="HLPPATH">/new_admin_help.html', 'NewAdminHelp', 540, 280);">* Instructions</a></b> on adding System Administrators to your account.
                </div>
            </TMPL_IF>
				<table class="twoColTable">
                    <tbody>
                        <tr>
                            <td>
                                <div class="section-row child-divs-left" style="height: 36px;">
                                    <TMPL_INCLUDE NAME="myaccount/manage_account_add_user_buttons.tpl">
                                </div>
                                <table class="w100pc">
                                    <tr>
                                        <td colspan="2">
                                            <fieldset>
                                                <div>
                                                    <legend>Account Settings <TMPL_UNLESS NAME="IRS">&nbsp;&nbsp;(bold fields denote required fields)</TMPL_UNLESS></legend>
                                                </div>
                                                <ul class="vertical-inputs">
                                                    <TMPL_UNLESS NAME="IRS">
                                                    <li>
                                                        <INPUT TYPE="text" placeholder="Position Title" NAME="TITLE" SIZE="25" VALUE="<TMPL_VAR NAME=TITLE>" MAXLENGTH=30 style="font-weight: bold; width: 200px;">
                                                    </li>
                                                    <li>
                                                        <INPUT TYPE="text" placeholder="Name Prefix" NAME="NAMEPREFIX" SIZE="25" VALUE="<TMPL_VAR NAME=NAMEPREFIX>" MAXLENGTH=30 style="width: 200px;">
                                                    </li>
                                                    </TMPL_UNLESS>
                                                    <li>
                                                        <INPUT placeholder="First Name" TYPE="text" NAME="FIRSTNAME" SIZE="25" VALUE="<TMPL_VAR NAME=FIRSTNAME>" MAXLENGTH=30 <TMPL_UNLESS NAME="IRS">style="font-weight: bold; width: 200px;"</TMPL_UNLESS> >
                                                    </li>
                                                    <li>
                                                        <INPUT TYPE="text" placeholder="Middle Name" NAME="MIDDLE_NAME" SIZE="25" VALUE="<TMPL_VAR NAME='MIDDLE_NAME'>" MAXLENGTH=30 style="width: 200px;">
                                                    </li>
                                                    <li>
                                                        <INPUT TYPE="text" placeholder="Last Name" NAME="LASTNAME" SIZE="25" VALUE="<TMPL_VAR NAME=LASTNAME>" MAXLENGTH=30 <TMPL_UNLESS NAME="IRS">style="font-weight: bold; width: 200px;"</TMPL_UNLESS> >
                                                    </li>
                                                    <TMPL_IF SHOW_EMPLOYEE_ID>
                                                    <li>
                                                        <INPUT TYPE="text" placeholder="Employee ID" NAME="EMPLOYEEID" SIZE="25" VALUE="<TMPL_VAR NAME=EMPLOYEEID>" MAXLENGTH=11 style="width: 200px;">
                                                    </li>
                                                    </TMPL_IF>
                                              <TMPL_INCLUDE NAME="manage_account_departments.tpl">
                                                    <li>
                                                        <INPUT TYPE="text" placeholder="Street Address" NAME="ADDR_LINE1" SIZE="25" VALUE="<TMPL_VAR NAME=ADDR_LINE1>" MAXLENGTH=30 <TMPL_UNLESS NAME="IRS">style="font-weight: bold; width: 200px;"</TMPL_UNLESS> >
                                                    </li>
                                                  <TMPL_IF NAME="IRS">
                                                    <li>
                                                        <INPUT TYPE="text" placeholder="Street Address 2" NAME="ADDR_LINE2" SIZE="25" VALUE="<TMPL_VAR NAME=ADDR_LINE2>" MAXLENGTH=30>
                                                    </li>
                                                  </TMPL_IF>
                                                    <li>
                                                        <INPUT TYPE="text" placeholder="City" NAME="ADDR_CITY" SIZE="25" VALUE="<TMPL_VAR NAME=ADDR_CITY>" MAXLENGTH=30 <TMPL_UNLESS NAME="IRS">style="font-weight: bold; width: 200px;"</TMPL_UNLESS> >
                                                    </li>
                                                    <li>
                                                          <INPUT id="ADDR_STATE" TYPE="text" placeholder="State" NAME="ADDR_STATE" SIZE="2" VALUE="<TMPL_VAR NAME=ADDR_STATE>" MAXLENGTH="2" <TMPL_UNLESS NAME="IRS">style="font-weight: bold;"</TMPL_UNLESS> >
                                                    </li>
                                                    <li>
                                                        <INPUT TYPE="text" placeholder="Zip" NAME="ADDR_POSTALCODE" SIZE="25" VALUE="<TMPL_VAR NAME=ADDR_POSTALCODE>" MAXLENGTH=30 <TMPL_UNLESS NAME="IRS">style="font-weight: bold; width: 200px;"</TMPL_UNLESS> >
                                                    </li>
                                                    <li>
                                                        <INPUT TYPE="text" placeholder="Phone" NAME="PHONE_VOICE1" SIZE="25" VALUE="<TMPL_VAR NAME=PHONE_VOICE1>" MAXLENGTH=30 <TMPL_UNLESS NAME="IRS">style="font-weight: bold; width: 200px;"</TMPL_UNLESS> >
                                                    </li>

                                                  <TMPL_IF NAME="ENABLE_EMAIL_DOMAIN">
                                                  <TMPL_IF NAME="EMAIL_ADDR_NOMATCH">
                                                        <li>
                                                            <span><TMPL_VAR NAME="EMAIL_ADDR"> needs to be updated below</span>
                                                        </li>
                                                  </TMPL_IF>
                                                        <li>
                                                            <INPUT class="mgr5" TYPE="text" placeholder="Email Prefix" NAME="EMAIL_ADDR_PREFIX" SIZE="18" VALUE="<TMPL_UNLESS NAME="EMAIL_ADDR_NOMATCH"><TMPL_VAR NAME=EMAIL_ADDR_PREFIX></TMPL_UNLESS>" MAXLENGTH=60 <TMPL_UNLESS NAME="IRS">style="font-weight: bold;"</TMPL_UNLESS> >
                                                            <span>@</span>
                                                            <select id="email_domain" name="EMAIL_DOMAIN">
                                                                <option value="" selected>Select One</option>
                                                                <TMPL_LOOP NAME="EMAIL_DOMAIN_LIST">
                                                                    <option<TMPL_IF NAME='EMAIL_CURR_DOMAIN'> selected</TMPL_IF> value="<TMPL_VAR NAME='EMAIL_DOMAIN'>"><TMPL_VAR NAME='EMAIL_DOMAIN'></option>
                                                                </TMPL_LOOP>
                                                            </select>
                                                        </li>
                                                        <li>
                                                            <INPUT class="mgr5" placeholder="Confirm Email Prefix" onpaste="block_paste(this);" TYPE="text" NAME="EMAIL_ADDR_PREFIX2" SIZE="18" VALUE="<TMPL_UNLESS NAME="EMAIL_ADDR_NOMATCH"><TMPL_VAR NAME=EMAIL_ADDR_PREFIX2></TMPL_UNLESS>" MAXLENGTH=60 <TMPL_UNLESS NAME="IRS">style="font-weight: bold;"</TMPL_UNLESS> >
                                                            <span>@</span>
                                                            <select id="email_domain" name="EMAIL_DOMAIN2">
                                                                <option value="" selected>Select One</option>
                                                                <TMPL_LOOP NAME="EMAIL_DOMAIN_LIST">
                                                                    <option<TMPL_IF NAME='EMAIL_CURR_DOMAIN2'> selected</TMPL_IF> value="<TMPL_VAR NAME='EMAIL_DOMAIN'>"><TMPL_VAR NAME='EMAIL_DOMAIN'></option>
                                                                </TMPL_LOOP>
                                                            </select>
                                                            <INPUT TYPE="hidden" NAME="EMAIL_ADDR" VALUE="<TMPL_VAR NAME=EMAIL_ADDR>">
                                                        </li>
                                                  <TMPL_ELSE>
                                                      <li>
                                                          <INPUT placeholder="Email Address" TYPE="text" NAME="EMAIL_ADDR" SIZE="25" VALUE="<TMPL_VAR NAME=EMAIL_ADDR>" MAXLENGTH=60 <TMPL_UNLESS NAME="IRS">style="font-weight: bold;"</TMPL_UNLESS> >
                                                      </li>
                                                      <li>
                                                          <INPUT placeholder="Confirm Email Address" onpaste="block_paste(this);" TYPE="text" NAME="EMAIL_ADDR2" SIZE="25" VALUE="<TMPL_VAR NAME=EMAIL_ADDR>" MAXLENGTH=60 <TMPL_UNLESS NAME="IRS">style="font-weight: bold;"</TMPL_UNLESS> >
                                                      </li>
                                                  </TMPL_IF>

                                                  <TMPL_IF NAME="IRS">
                                                      <TMPL_INCLUDE NAME="manage_account_add_update_user_irs_options.tpl">
                                                  </TMPL_IF>
                                                  <li>
                                                      <INPUT placeholder="New Login ID" TYPE="text" NAME="NEW_LOGINID" VALUE="<TMPL_VAR NAME=NEW_LOGINID>" MAXLENGTH=<TMPL_IF IRS>20<TMPL_ELSE>30 style="font-weight: bold; width: 200px;"</TMPL_IF>>
                                                      <img border="0" width="11" height="10" src="<TMPL_VAR NAME=IMGPATH>/star.gif" alt="See Loginid Requirements">
                                                  </li>
                                                  <TMPL_UNLESS NAME=ROW_LOCKED>
                                                      <li>
                                                          <script>$j(function(){init_pw_placeholder_labels();});</script>
                                                          <noscript>Your browser does not support JavaScript!</noscript>
                                                          <INPUT placeholder="Password" TYPE="password" NAME="PASSWORD" SIZE="25" VALUE="<TMPL_VAR NAME=NEWPASSWORD>" MAXLENGTH=30 AUTOCOMPLETE="off" <TMPL_UNLESS NAME="IRS">style="font-weight: bold; width: 200px;"</TMPL_UNLESS>>
                                                          <img border="0" width="11" height="10" src="<TMPL_VAR NAME=IMGPATH>/star.gif" alt="See Password Requirements">
                                                      </li>
                                                      <li>
                                                          <INPUT placeholder="Confirm Password" TYPE="password" NAME="CONFIRM_PASSWORD" SIZE="25" VALUE="<TMPL_VAR NAME=CONFIRM_PASSWORD>" MAXLENGTH=30 AUTOCOMPLETE="off" <TMPL_UNLESS NAME="IRS">style="font-weight: bold; width: 200px;"</TMPL_UNLESS>>
                                                          <img border="0" width="11" height="10" src="<TMPL_VAR NAME=IMGPATH>/star.gif" alt="See Password Requirements">
                                                      </li>
                                                  </TMPL_UNLESS>
                                                </ul>
                                                <TMPL_UNLESS NAME=ROW_LOCKED>
                                                    <div style="padding: 5px;">
                                                        <TMPL_INCLUDE NAME="manage_account_username_password_req.tpl">
                                                    </div>
                                                </TMPL_UNLESS>
                                            </fieldset>
                                        </td>
                                    </tr>
                                </table>
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

                                      <TMPL_UNLESS NAME="PERSON_STATUS_P">
                                          <TR>
                                            <td class="unifont1" align="left" width="50%">System Administrator:</TD>
                                            <td align="left" width="50%">
                                            <table border="0" cellpadding="0" cellspacing="0">
                                              <tr>
                                                <td><INPUT TYPE=RADIO NAME=SYSTEMADMINISTRATOR VALUE='1' <TMPL_IF NAME=SYSTEMADMINISTRATOR>CHECKED</TMPL_IF> onClick="batchset();showHideDTU('T');"></td>
                                                <td class="unifont1">Yes&nbsp;&nbsp;&nbsp;</td>
                                                <td><INPUT TYPE=RADIO NAME=SYSTEMADMINISTRATOR VALUE='0' <TMPL_UNLESS NAME=SYSTEMADMINISTRATOR>CHECKED</TMPL_UNLESS> onClick="showHideDTU('F');" ></td>
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
                                      </TMPL_UNLESS>

                                          <TMPL_IF SHOW_DISPLAY_TO_USERS>
                                          <TR>
                                              <td class="unifont1" align="left" width="50%"><span id="DTU-LABEL-1"  <TMPL_UNLESS NAME=SYSTEMADMINISTRATOR>STYLE="visibility:hidden;" </TMPL_UNLESS>>Display to Users:</span>&nbsp;
                                              <span id="DTU-LABEL-2" <TMPL_UNLESS NAME=SYSTEMADMINISTRATOR>STYLE="visibility:hidden;"</TMPL_UNLESS>>
                                                     <a class="helpQtnIcon no-float" href="javascript:show_post_popup('LOGIN/SHOW_POPUP','FPWInfo','644','500',0,0,0,1,0,0,'','display_to_users_help');">&nbsp;</a>
                                              </span>

                                          </td>

                                            <td align="left" width="50%">
                                            <table border="0" cellpadding="0" cellspacing="0">
                                               <tr>
                                                  <span id="DTU-INPUT"  <TMPL_UNLESS NAME=SYSTEMADMINISTRATOR>STYLE="visibility:hidden;"</TMPL_UNLESS> >
                                                     <input type="checkbox" name="DISPLAY_TO_USERS" value="1" <TMPL_IF NAME="DISPLAY_TO_USERS_YES">CHECKED</TMPL_IF>>
                                                  </span>
                                               </tr>
                                            </table>
                                            </td>
                                          </TR>
                                          </TMPL_IF>

                                          <TMPL_IF SHOW_COMPANY_CONTACT>
                                          <TR>
                                            <td class="unifont1" align="left" width="50%">
                                                Company Contact:&nbsp;
                                                <a class="helpQtnIcon no-float" href="javascript:show_post_popup('LOGIN/SHOW_POPUP','FPWInfo','644','500',0,0,0,1,0,0,'','company_contact_help');">&nbsp;</a>
                                            </TD>
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

                                    </table>

                                  </fieldset>

                                      <TMPL_UNLESS NAME=ROW_LOCKED>
                                        <TMPL_UNLESS HIDE_SEARCHES_REPORTS>

                                      <p></p>
                                    <TMPL_IF LOC>
                                        <TMPL_INCLUDE NAME="../loc/manage_account_disable_reports.tpl">
                                    <TMPL_ELSE>
                                    <TMPL_IF TCOL>
                                        <TMPL_INCLUDE NAME="../tcol/manage_account_disable_reports.tpl">
                                    <TMPL_ELSE>
                                    <TMPL_IF FCOL>
                                        <TMPL_INCLUDE NAME="../fcol/manage_account_disable_reports.tpl">
                                    <TMPL_ELSE>
                                            <TMPL_INCLUDE NAME="manage_account_disable_reports.tpl">
                                    </TMPL_IF>
                                    </TMPL_IF>
                                    </TMPL_IF>
                                      <p></p>

                                      </TMPL_UNLESS>
                                      </TMPL_UNLESS>
                                    <TMPL_INCLUDE manage_account_disable_features.tpl>

                                    <TMPL_IF NAME="GROUPS_ENABLED">
                                        <TMPL_IF HAS_ADMIN_GROUP>
                                            <p></p>
                                            <TMPL_INCLUDE NAME="update_users_admin_groups.tpl">
                                        </TMPL_IF>
                                    </TMPL_IF>

                                      <TMPL_ELSE>

                                      <INPUT TYPE=HIDDEN NAME="DA_ONLY" VALUE="1">

                                      </TMPL_UNLESS>
                                <div class="section-row child-divs-left" style="height: 36px;">
                                    <TMPL_INCLUDE NAME="myaccount/manage_account_add_user_buttons.tpl">
                                </div>
                            </td>
                            <td>
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
                                        <TMPL_IF NAME="TCOL">
                                      <TMPL_INCLUDE NAME="tcol/manage_account_disable_searches.tpl">
                                <TMPL_ELSE>
                                        <TMPL_IF NAME="FCOL">
                                      <TMPL_INCLUDE NAME="fcol/manage_account_disable_searches.tpl">
                                <TMPL_ELSE>
                                       <TMPL_IF NAME="LOC">
                                        <TMPL_INCLUDE NAME="loc/manage_account_disable_searches.tpl">
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
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
                                
<TMPL_INCLUDE NAME=myaccount_footer.tpl>

<TMPL_INCLUDE NAME="manage_account_error_mesg.tpl">

<!-- end manage_account_add_user.tpl -->
