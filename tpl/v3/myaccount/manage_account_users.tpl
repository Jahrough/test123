<!-- begin manage_account_users.tpl -->
<input type=hidden name="PAGE_NUMBER" value=<TMPL_IF name="CURRENT_PAGE"><TMPL_VAR name="CURRENT_PAGE"><TMPL_ELSE>1</TMPL_IF>>
<input type=hidden name="PREVIOUS_ALL_USERS" value=<TMPL_VAR name="PREVIOUS_ALL_USERS">>
<input type=hidden name="SUSPEND_CHECKED_USERS" value=0>
<input type=hidden name="DELETE_CHECKED_USERS" value=0>

<div class="myaccount-section-title">Manage Users</div>

<!-- START div.myaccount-containers -->
<div class="myaccount-containers">
    <div class="section">
        <TMPL_IF CANNOT_ADD_USER>
            <div class="section-row left">
              <span>The maximum number of users has been reached for your account.  To create additional users you must first delete an existing user.</span>
            </div>
        </TMPL_IF>
        <div class="section-row left child-divs-left child-divs-ml10">
            <TMPL_UNLESS CANNOT_ADD_USER>
                <div>
                    <a class="btn darkgrey-btn" href="javascript:showpw();send_event('MANAGE/ADD_USER')">Add User</a>
                </div>
            </TMPL_UNLESS>
            <div>
                <select id="ALLUSERS" name="ALLUSERS" onChange="showpw();send_event('MANAGE/MANAGE_ACCOUNTS');">
                    <option value="1"<TMPL_IF NAME="SUSPENDED_1"> SELECTED</TMPL_IF>>Show 'Active'</option>
                    <option value="2"<TMPL_IF NAME="SUSPENDED_2"> SELECTED</TMPL_IF>>Show 'Suspended'</option>
                    <TMPL_IF NAME="PENDING_ADMINS"> <option value="4"<TMPL_IF NAME="SUSPENDED_4"> SELECTED</TMPL_IF>>Show 'Pending Approval'</option></TMPL_IF>
                    <option value="3"<TMPL_IF NAME="SUSPENDED_3"> SELECTED</TMPL_IF>>Show 'All'</option>
                    <TMPL_IF NAME="SHORT_LOGINID_ALERT_ENABLED"><option value="5"<TMPL_IF NAME="SUSPENDED_5"> SELECTED</TMPL_IF>>Show 'Renamed'</option></TMPL_IF>
                </select>
            </div>
            <div>
                <div class="left mgt2"><label for="ALLUSERS">Users</label></div>
                <div class="left mgt5">
                    <a class="helpQtnIcon" href="javascript:void(0);" onClick="generic_tip('Preferences','The default search view on this page can be set in the Preferences section');">&nbsp;</a>
                </div>
            </div>

            <TMPL_IF name="SHOW_VERIFICATION">
                <div>
                    <a class="btn grey-btn" href="javascript:showpw();send_event('MANAGE/VERIFICATION_LOG');">User Verification</a>
                </div>
            </TMPL_IF>

            <TMPL_UNLESS CSAML_LOGIN>
	    <TMPL_UNLESS name="MFA_MACHINE_ACTIVATE_ENABLED">
            <TMPL_IF name="ENABLE_OTP">
                <TMPL_IF IRS>
                    <div>
                        <a class="btn grey-btn" href="javascript:showpw();send_event('OTP/MANAGE_OTP');">Manage Security Tokens</a>
                    </div>
                <TMPL_ELSE>
                    <div>
                        <a class="btn grey-btn" href="javascript:showpw();send_event('OTP/SHOW_OTP_TYPE_SELECTION_FORM');">Manage Security Tokens</a>
                    </div>
                </TMPL_IF>
            </TMPL_IF>
            </TMPL_UNLESS>
            </TMPL_UNLESS>

            <TMPL_UNLESS IRS>
            <TMPL_IF name="SHOW_ACTIVE_COMPANY_LINK">
            <TMPL_IF MANAGE_ACCOUNTS>
            <TMPL_IF COMPANY_BILLGROUP>
            <div>
                <label for="SELECT_BILLGROUP" style="display:none">Select Billing Group</label>
                <select id="SELECT_BILLGROUP" name="SELECT_BILLGROUP" onChange="showpw();send_event('MANAGE/MANAGE_ACCOUNTS');">
                    <TMPL_LOOP NAME="COMPANY_BILLGROUP">
                        <option value=<TMPL_VAR NAME="CompanyId"> <TMPL_IF COMPANY_SELECTED>selected</TMPL_IF> ><TMPL_VAR Name="CompanyName">
                    </TMPL_LOOP>
                </select>
            </div>
            </TMPL_IF>
            </TMPL_IF>
            </TMPL_IF>
            </TMPL_UNLESS>

            <div>
                <a class="btn grey-btn" href="javascript:showpw();set_suspend_users();">Update Users</a>

            </div>
        </div>

        <TMPL_IF name="SHOW_ACTIVE_COMPANY_LINK">
            <div class="section-row left">
                <span>To search within the current and descending hierarchy accounts, enter search criteria below<br>or click the letter of the Alphabet which corresponds to the user's last name.</span>
            </div>  

        </TMPL_IF>
        
        <div class="section-row left child-divs-left child-divs-ml10">
            <input type=hidden name="SEARCH_FIRSTNAME_PREV" value="<TMPL_VAR name="SEARCH_FIRSTNAME_PREV">">
            <input type=hidden name="SEARCH_LASTNAME_PREV" value="<TMPL_VAR name="SEARCH_LASTNAME_PREV">">
            <input type=hidden name="SEARCH_LOGINID_PREV" value="<TMPL_VAR name="SEARCH_LOGINID_PREV">">
            <div>
                <label for="SEARCH_FIRSTNAME" style="display: none">Dummy</label>
                <input type="text" placeholder="First Name" id="SEARCH_FIRSTNAME" name="SEARCH_FIRSTNAME" VALUE="<TMPL_VAR NAME=SEARCH_FIRSTNAME>" MAXLENGTH=30>
            </div>
            <div>
                <label for="SEARCH_LASTNAME" style="display: none">Dummy</label>
                <input type="text" placeholder="Last Name" id="SEARCH_LASTNAME" name="SEARCH_LASTNAME" VALUE="<TMPL_VAR NAME=SEARCH_LASTNAME>" MAXLENGTH=30>
            </div>
            <div>
                <label for="SEARCH_LOGINID" style="display: none">Dummy</label>
                <input type="text" placeholder="Login ID" id="SEARCH_LOGINID" name="SEARCH_LOGINID" VALUE="<TMPL_VAR NAME=SEARCH_LOGINID>" MAXLENGTH=20>
            </div>

            <TMPL_IF SHOW_ADMIN_CONTACT>
                <div class="mgt2">
                    <label for="SYSTEM_ADMIN">System Admin:</label>
                    <input type="checkbox" class="nsinputs" id="SYSTEM_ADMIN" name="SYSTEM_ADMIN" value="1" <TMPL_IF name="SYSTEM_ADMIN_YES">CHECKED</TMPL_IF>>
                </div>

                <div class="mgt2">
                    <label for="COMPANY_CONTACT_CHECKBOX">Company Contact:</label>
                    <input type="checkbox" class="nsinputs" id="COMPANY_CONTACT_CHECKBOX" name="COMPANY_CONTACT_CHECKBOX" value="1" <TMPL_IF name="COMPANY_CONTACT_YES">CHECKED</TMPL_IF>>
                </div>
            </TMPL_IF>            

            <TMPL_IF name="NO_PAGES_NEEDED">
                <div>
                    <a id="view-all-users" class="btn red-btn" href="javascript:void(0);">View All Users</a>
                </div>
            <TMPL_ELSE>
                <div>
                    <a class="btn red-btn" onclick="if(!validate_manage_user_inputs()) {return false;}" href="javascript:showpw();send_event('MANAGE/MANAGE_ACCOUNTS');">Find User</a>
                </div>
            </TMPL_IF>

        </div>

        <div id="last-name-range">
            <TMPL_IF name="LETTERS_LOOP">
                <TMPL_LOOP name="LETTERS_LOOP">
                    <TMPL_IF name="CURRENT_LETTER_NO_LINK">
                        <div class="active"><TMPL_VAR name="LETTER"></div>
                        <TMPL_ELSE>
                            <TMPL_IF name="NO_PAGES_NEEDED">
                                <div><a href="javascript:set_last_name_range_v3('<TMPL_VAR name="LETTER">');"><TMPL_VAR name="LETTER"></a></div>
                            <TMPL_ELSE>
                                <div><a href="javascript:showpw();set_last_name_range('<TMPL_VAR name="LETTER">');send_event('MANAGE/MANAGE_ACCOUNTS');"><TMPL_VAR name="LETTER"></a></div>                                
                            </TMPL_IF>
                    </TMPL_IF>
                </TMPL_LOOP>
            </TMPL_IF>
        </div>

    <TMPL_IF name="MANAGE_ACCOUNT_ERROR">
        <div class="section-row mgt15">
            <div class="errormessage pd15 bold" style="text-align:center;">
                <TMPL_IF name="ERROR_NOSELECT">Please Select a User</TMPL_IF>
                <TMPL_IF name="ERROR_UNKNOWN_USER">
                    User <TMPL_VAR name="LOGINID"> does not exist<br><br>
                    <a href="javascript:showpw();send_event('MYACCOUNT/SHOW_PROFILE')"><img alt="" src="<TMPL_VAR IMGPATH>/back.gif" border="0"></a>
                </TMPL_IF>
                <TMPL_IF name="ERROR_SECURITY_LOCKED">
                    User <TMPL_VAR name="LOGINID"> is security locked.<br><br>
                    <a href="javascript:showpw();send_event('MANAGE/MANAGE_ACCOUNTS')">
                        <img alt="" src="<TMPL_VAR IMGPATH>/back.gif" border="0">
                    </a>
                </TMPL_IF>
            </div>
        </div>
    </TMPL_IF>

    <!--
    <TMPL_UNLESS name="NO_PAGES_NEEDED">
          <div class="section-row left child-divs-left child-divs-ml10 mgt10 pdt10 pdb10 no-left-padding" style="padding-left:0px;">
                <div class="left mgt2 bold">Showing Results <TMPL_VAR name="STARTING_RECORD"> - <TMPL_VAR name="ENDING_RECORD"> of <TMPL_VAR name="TOTAL_RECORDS"></div>

                <TMPL_IF PREV_PAGE_BTN_ON>
                    <div>
                        <a class="btn grey-btn" href="javascript:clearPlaceholders();set_user_admin_page(<TMPL_VAR name="PREV_PAGE_NO">);"> << </a>
                    </div>
                <TMPL_ELSE>
                    <div>
                        <a class="btn grey-btn disabled" href="javascript:void(0);"> << </a>
                    </div>
                </TMPL_IF>

                <TMPL_IF NEXT_PAGE_BTN_ON>
                    <div>
                        <a class="btn grey-btn" href="javascript:clearPlaceholders();set_user_admin_page(<TMPL_VAR name="NEXT_PAGE_NO">);"> >> </a>
                    </div>
                <TMPL_ELSE>
                    <div>
                        <a class="btn grey-btn disabled" href="javascript:void(0);"> >> </a>
                    </div>
                </TMPL_IF>

        </div>
    </TMPL_UNLESS>
    -->




    <TMPL_IF name="MESSAGE">
        <div class="section-row mgt15 pd15 left" style="padding-top:0">
            <div class="warningmessage">
                <TMPL_VAR NAME=MESSAGE>
            </div>
        </div>
    </TMPL_IF>
        
    <TMPL_IF name="USER_ADDED">
        <div class="section-row mgt15 left">
            <div class="successmessage pd15 bold" style="text-align:center;">
                <TMPL_VAR name="USER_ADDED">
            </div>
        </div>
    </TMPL_IF>

    

           <!-- START USER LIST -->
			<table id="userList" class="display" style="clear:both;">
				<thead>
					  <tr class="myaccountbody">
						<TMPL_IF NAME=SHOWING_RENAMED_USERS>
							<th id="col_new_log_id">New Login ID</th>
							<th id="col_old_log_id">Old Login ID</th>
							<th id="col_re_named_dt">Renamed Date</th>
						<TMPL_ELSE>
							<th id="col_log_id">Login ID</th>
							<th id="col_last_nam">Last Name</th>
							<th id="col_frst_nam">First Name</th>
							<th id="col_admin">Admin</th>
							<TMPL_IF SHOW_ADMIN_CONTACT>
							   <th id="col_contact">Contact</th>
							</TMPL_IF>
							<th id="col_usr_sus">User Suspended</th>
							<th id="col_stats">Status</th>
							<th id="col_lst_login">Last Login</th>
							<th id="col_del_usr">Delete User</th>
						</TMPL_IF>
					  </tr>
				</thead>
				<tbody>
					<TMPL_LOOP NAME=USER_LIST>
						<TMPL_UNLESS HIDE_ENTRY>
							<tr>
								<TMPL_IF NAME=SHOWING_RENAMED_USERS>
									<td headers="col_new_log_id"><TMPL_VAR NAME=NEW_LOGINID></td>
									<td headers="col_old_log_id"><TMPL_VAR NAME=OLD_LOGINID></td>
									<td headers="col_re_named_dt"><TMPL_VAR NAME=RENAMED_DATE></td>
								<TMPL_ELSE>
									<td headers="col_log_id">
										<TMPL_IF name="CLONE_ALLOWED">
											<b><font color="red"><TMPL_VAR NAME=LOGINID></font></b>
											(<a class="myaccLnk" href="javascript:showpw();edit_user('MANAGE/CLONE_USER','<TMPL_VAR NAME=LOGINID_ESC>','<TMPL_VAR NAME=COMPANYID>')">
												<b><font color="green">Rename</font></b>
											</a>)
										<TMPL_ELSE>
											<TMPL_IF NAME=SECURITY_LOCKED>
												<b><TMPL_VAR NAME=LOGINID></b>
												(<i>Locked</i>)
											<TMPL_ELSE>
												<a class="myaccLnk" href="javascript:showpw();edit_user('MANAGE/UPDATE_USER','<TMPL_VAR NAME=LOGINID_ESC>','<TMPL_VAR NAME=COMPANYID>')"<TMPL_IF XML_USER> onMouseOver="new_popover(this, 'Warning! Before modifying an XML user please contact your Network/Technical Support department or <TMPL_IF IRB>IRBSearch<TMPL_ELSE>LexisNexis XML Customer Support</TMPL_IF> at <TMPL_IF IRB>1-800-447-2112<TMPL_ELSE>866.277.8763</TMPL_IF>.',220);" onMouseOut="remove_popover();"</TMPL_IF>>
													<b><TMPL_VAR NAME=LOGINID></b>
												</a>
												<TMPL_IF XML_USER>(<i>XML User</i>)</TMPL_IF>
												<TMPL_IF NAME=SHOW_FUTURE_DEACTIVATION_DATE>
													<br>
													Future Suspend Date: <TMPL_VAR NAME=FUTURE_DEACTIVATION_DATE>
												</TMPL_IF>
											</TMPL_IF>
										</TMPL_IF>
									</td>
									<td headers="col_last_nam"><TMPL_VAR NAME=LASTNAME></td>
									<td headers="col_frst_nam"><TMPL_VAR NAME=FIRSTNAME></td>

									<TMPL_IF NAME="PERSON_STATUS_P">
										<TMPL_IF NAME=SYSTEMADMINISTRATOR>  
											<td headers="col_admin">Pending</td>
										</TMPL_IF>
									<TMPL_ELSE>
									<TMPL_IF NAME="PERSON_STATUS_D">
										<TMPL_IF NAME=SYSTEMADMINISTRATOR>  
											<td headers="col_admin">Denied</td>
										</TMPL_IF>
									<TMPL_ELSE>
										<TMPL_IF NAME=SYSTEMADMINISTRATOR>  
											<td><TMPL_VAR NAME=SYSTEMADMINISTRATOR></td>
										<TMPL_ELSE>
											<td headers="col_admin">N</td>
										</TMPL_IF>
									</TMPL_IF>
									</TMPL_IF>
									<TMPL_IF SHOW_ADMIN_CONTACT>
										<td headers="col_contact"><TMPL_IF NAME=ISCONTACT><TMPL_VAR NAME=ISCONTACT><TMPL_ELSE>N</TMPL_IF></td>
									</TMPL_IF>
									<td headers="col_usr_sus" class="oneLine"><TMPL_UNLESS NAME=SECURITY_LOCKED><TMPL_IF XML_USER><TMPL_IF NAME=SUSPENDED_Y>Y<TMPL_ELSE>N</TMPL_IF><TMPL_ELSE><INPUT TYPE=HIDDEN NAME='USER_LIST' VALUE='<TMPL_VAR NAME=USERID>'><INPUT id="yes-<TMPL_VAR NAME=USERID>" TYPE=RADIO NAME='SUSPEND_RADIO_BUTTON_<TMPL_VAR NAME=USERID>' VALUE='YES' <TMPL_IF NAME=SUSPENDED_Y>CHECKED</TMPL_IF>><label for="yes-<TMPL_VAR NAME=USERID>">Yes</label><INPUT id="no-<TMPL_VAR NAME=USERID>" TYPE=RADIO NAME='SUSPEND_RADIO_BUTTON_<TMPL_VAR NAME=USERID>' VALUE='NO' <TMPL_UNLESS NAME=SUSPENDED_Y>CHECKED</TMPL_UNLESS>><label for="no-<TMPL_VAR NAME=USERID>">No</label></TMPL_IF></TMPL_UNLESS></td>
									<td headers="col_stats"><TMPL_VAR NAME=SUSPENDED></td>
									<td headers="col_lst_login" class="oneLine"><TMPL_VAR NAME=LAST_LOGIN_DATE></td>
								</TMPL_IF>
								<td headers="col_del_usr" class="oneLine"><TMPL_UNLESS XML_USER><INPUT TYPE=HIDDEN NAME='DELETE_USER_LIST' VALUE='<TMPL_VAR NAME=USERID>'><INPUT TYPE=HIDDEN NAME='DELETE_USER_LOGINID' VALUE='<TMPL_VAR NAME=LOGINID>'><INPUT id="del-yes-<TMPL_VAR NAME=USERID>" TYPE=RADIO NAME='DELETE_RADIO_BUTTON_<TMPL_VAR NAME=USERID>' VALUE='YES'> <label for="del-yes-<TMPL_VAR NAME=USERID>">Yes</label> <INPUT id="del-no-<TMPL_VAR NAME=USERID>" TYPE=RADIO NAME='DELETE_RADIO_BUTTON_<TMPL_VAR NAME=USERID>' VALUE='NO' CHECKED> <label for="del-no-<TMPL_VAR NAME=USERID>">No</label> <TMPL_ELSE>No </TMPL_UNLESS></td>
						   </tr>
						</TMPL_UNLESS>
					</TMPL_LOOP>
				</tbody>
			</table>
        <!-- END USER LIST -->
        <div class="section-row child-divs-center" style="margin-top:35px;">
            <div class="btn grey-btn">
                <a href="javascript:void(0)" onclick="show_post_popup('MANAGE/MANAGE_ACCOUNTS_CSV','Downloadlist',525,300,0,0,0,0,0,0,'<tmpl_var name=ACTION_DOWNLOAD>','','<center><br><br><br><br><br><br><br><br><input name=\'DOWNLOAD_BUTTON\' value=\'*** Close Window AFTER Receiving File ***\' onclick=\'self.close();\' type=\'BUTTON\'><br><br><br><br></center><script>setTimeout(function () {scrollTo(0,document.body.scrollHeight)},200);setTimeout(function () {scrollTo(0,0)},5000);</script>');">Download All</a>
            </div>
        </div>
    </div>
</div>
<!-- END div.myaccount-containers -->

<INPUT TYPE="HIDDEN" name="LOGINID" VALUE="">
<INPUT TYPE="HIDDEN" name="UPDATE_USER_COMPANYID" VALUE="">
<INPUT TYPE="HIDDEN" name="SORT" VALUE="<TMPL_VAR NAME=SORT>">
<INPUT TYPE="HIDDEN" name="OLDSORT" VALUE="<TMPL_VAR NAME=SORT>">
<INPUT TYPE="HIDDEN" name="SORTDIR" VALUE="<TMPL_VAR NAME=SORTDIR>">
<!-- end manage_account_users.tpl -->
