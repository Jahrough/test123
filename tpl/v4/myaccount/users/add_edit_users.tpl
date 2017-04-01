<!-- begin myaccount/users/add_edit_users.tpl -->
<!-- Deleted user ROW_LOCKED = 1 -->
<TMPL_IF MANAGE_UPDATE_USER>
<TMPL_UNLESS ROW_LOCKED>
<span class="fa fa-16 fa-edit pos_1 fa-fw bluetxt"></span>
<span class="fa-16">Edit User</span>
<TMPL_ELSE>
<i class="fa fa-16 fa-eye pos_1 fa-fw bluetxt"></i>
<span class="fa-16">View User</span>
</TMPL_UNLESS>
<TMPL_ELSE>
<TMPL_IF MANAGE_COPY_USER>
<i class="fa fa-16 fa-copy pos_1 fa-fw bluetxt"></i>
<span class="fa-16">Copy User</span>
<TMPL_ELSE>
<i class="fa fa-16 fa-user-plus pos_1 fa-fw bluetxt"></i>
<span class="fa-16">Create User</span>
</TMPL_IF>
</TMPL_IF>
<p></p>
          <input name="accesslevel" id="accesslevel" type="hidden" value="user"> 
          <input id="is_internal_emp_id" type="hidden" value="<TMPL_VAR SHOW_EMPLOYEE_ID>">
          <input id="is_external_emp_id" type="hidden" value="<TMPL_VAR SHOW_EXTERNAL_EMP_ID>">          
          <input id="is_update" type="hidden" value="<TMPL_VAR MANAGE_UPDATE_USER>">
          <input id="is_copy_user" type="hidden" value="<TMPL_VAR MANAGE_COPY_USER>">
          <input name="SUSPENDED" id="is_suspended" type="hidden" value="N">
          <input name="USER_GROUPS" id="usr_groups" type="hidden">
          <input name="COMPANY_ID" type="hidden" value="<TMPL_VAR COMPANY_ID>">
          <input type="hidden" name="HELP_PAGE_NAME" value="bsp_admin_user_edit_t.html">
          <script> var isSha2Password = "<TMPL_VAR SHA2_PASSWORD>";</script>
          <script> var minPasswordLen = "<TMPL_VAR MIN_PASSWORD_LENGTH>";</script>
          
          <input type=hidden name="INV_SUBJECT_USER_ID">
          <input type=hidden name="INV_SUBJECT_USER_NAME">
          <input type=hidden name="INV_SUBJECT_EXT_EMP_ID">
          
          <input type=hidden id="invalid_employeeid" value="<TMPL_IF ERROR_INVALID_EMPLOYEEID>1<TMPL_ELSE>0</TMPL_IF>">

          <div class="formfields">
            <TMPL_IF ADD_EDIT_ERROR>
              <TMPL_UNLESS ERROR_INVALID_EMPLOYEEID>
              <div class="add_edit_error_message redtxt rcorner3">
              <span class="fl_right"><a class="close_error" href="javascript:void(0);"><i class="fa fa-14 fa-times pos_1 fa-fw redtxt"></i></a></span>
              <TMPL_IF ERROR_GENERAL>
                <i class="fa fa-14 fa-exclamation-triangle pos_1 fa-fw redtxt"></i> <TMPL_VAR name=ERROR_GENERAL>
              <TMPL_ELSE>
                <TMPL_IF ERROR_LOGINID>
                   <i class="fa fa-14 fa-exclamation-triangle pos_1 fa-fw redtxt"></i> Invalid User ID.
                <TMPL_ELSE>
                  <TMPL_IF ERROR_INVALID_PASSWORD>
                    <i class="fa fa-14 fa-exclamation-triangle pos_1 fa-fw redtxt"></i> Invalid Password.
                  <TMPL_ELSE>
                    <i class="fa fa-14 fa-exclamation-triangle pos_1 fa-fw redtxt"></i> Unknown ERROR
                  </TMPL_IF>
                </TMPL_IF>
               </TMPL_IF>
               <span class="clear"></span>
               </div>
               </TMPL_UNLESS>
            </TMPL_IF>          
            <TMPL_IF MANAGE_UPDATE_USER>
            <span class="fl_right">
              <TMPL_UNLESS ROW_LOCKED>
              <TMPL_UNLESS DISABLE_USER_COPY>
              <TMPL_UNLESS SYSTEMADMINISTRATOR>
              <TMPL_UNLESS SUSPENDED_Y>  
              <span class="clone_option"><a  href="javascript:send_event('MANAGE/COPY_USER')" title="Copy User" class="clone_link iconButton"><span class="fa fa-16 fa-copy pos_1 fa-fw"></span></a></span> &nbsp;&nbsp;&nbsp;
              </TMPL_UNLESS>
              </TMPL_UNLESS>
              </TMPL_UNLESS>
              </TMPL_UNLESS>
              <a href="javascript:investigate_user('MYACCOUNT/SHOW_SECURITY_INVESTIGATIONS_EMAIL','<TMPL_VAR NAME=LOGINID>','<TMPL_VAR NAME=FIRSTNAME>','<TMPL_VAR NAME=LASTNAME>','<TMPL_VAR NAME=EXTERNAL_EMPLOYEEID>');" title="Investigate User" class="inv_link iconButton"><span class="fa fa-16 fa-search pos_1 fa-fw"></span></a> &nbsp;&nbsp;&nbsp; 
              <TMPL_UNLESS ROW_LOCKED>
              <TMPL_IF IS_ALERT_ALLOWED>
              <a href="javascript:alert_user('<TMPL_VAR NAME=SUBSCRIPTIONID>','<TMPL_VAR NAME=LOGINID>','<TMPL_VAR NAME=FIRSTNAME>','<TMPL_VAR NAME=LASTNAME>');" title="Alert" class="alert_link iconButton"><span class="fa fa-16 fa-bell pos_1 fa-fw"></span></a> &nbsp;
              </TMPL_IF>
              </TMPL_UNLESS>
            </span>
            <span class="clear"></span>
            <div class="clear"></div>
            </TMPL_IF>
             <TMPL_IF MANAGE_COPY_USER>            
            <div class="form_section">
              <div class="form_label">Based on User:</div>
              <div class="form_field"><TMPL_VAR BASED_ON_USER></div>
              <div class="clear"></div>  
            </div>
            <div class="clear"></div>
            </TMPL_IF>            
            <!-- section -->
            <div class="form_section">
              <div class="form_label"><TMPL_UNLESS MANAGE_UPDATE_USER><label for="userid">User ID</label><TMPL_ELSE>User ID</TMPL_UNLESS>:</div>
              <div class="form_field">
               <TMPL_IF MANAGE_UPDATE_USER>
                <INPUT TYPE="hidden" NAME="LOGINID" VALUE="<TMPL_VAR NAME=LOGINID>">
                <INPUT TYPE="hidden" NAME="USERID" VALUE="<TMPL_VAR NAME=USERID>">
                <span class="userid"><TMPL_VAR NAME=LOGINID></span>
               <TMPL_ELSE>
                <TMPL_IF MANAGE_COPY_USER>
                <INPUT TYPE="hidden" NAME="LOGINID" VALUE="<TMPL_VAR NAME=LOGINID>">
                </TMPL_IF>
                <span>
                <input name="NEW_LOGINID" title="User ID" placeholder="User ID" id="userid" type="text" value="<TMPL_VAR NAME=NEW_LOGINID>" maxlength="30">
                </span>
               </TMPL_IF>
               </div>  
                &nbsp;&nbsp;&nbsp;
                <div class="form_label"><TMPL_IF MANAGE_ADD_USER><label for="access_level">Access Level</label><TMPL_ELSE>Access Level</TMPL_IF></div>
                <div class="form_field nopwrap">
                <span class="access_level">
                <TMPL_IF MANAGE_ADD_USER>
                  <INPUT type=hidden name="SYSTEMADMINISTRATOR" value="0">
                  User
                <TMPL_ELSE>
                  <TMPL_IF MANAGE_COPY_USER>
                  <INPUT type=hidden name="SYSTEMADMINISTRATOR" value="0">
                  User
                  <TMPL_ELSE>
                    <TMPL_IF SYSTEMADMINISTRATOR>
                    Admin
                    <TMPL_ELSE>
                    User
                    </TMPL_IF>
                  </TMPL_IF>  
                </TMPL_IF>
                </span>
                <TMPL_IF MANAGE_UPDATE_USER>
                <TMPL_IF SYSTEMADMINISTRATOR>
                <span id="admin_actions">(<a class="admin_tools" href="javascript:void(0);" title="Entitlements">Entitlements</a>)</span>
                </TMPL_IF>
                </TMPL_IF>
                </div>
                <div class="clear"></div>
              </div>
            <div class="form_section">
              <div class="form_label"><TMPL_IF MANAGE_ADD_USER><label for="billgroup">Billgroup</label><TMPL_ELSE>Billgroup</TMPL_IF>:</div>
              <div class="form_field">
                <TMPL_IF MANAGE_ADD_USER>
                <select name="billgroup" title="Billgroup" id="billgroup">
                  <TMPL_LOOP NAME=BILLGROUPLOOP>
                    <option value="<TMPL_VAR NAME=CompanyId>"<TMPL_IF NAME="Selected"> SELECTED</TMPL_IF>><TMPL_VAR NAME=CompanyName></option>
                  </TMPL_LOOP>
                </select>
                <TMPL_ELSE>
                  <TMPL_LOOP NAME=BILLGROUPLOOP>
                      <span class="billgroup"><TMPL_VAR NAME=CompanyName></span>
                  </TMPL_LOOP>
                </TMPL_IF>
              </div>
              <div class="clear"></div>
            </div>
            <!-- /section -->
            <div class="clear"></div>
            <!-- section -->
            <div class="form_section">
              <div class="form_label"><TMPL_UNLESS ROW_LOCKED><label for="lastname">Name</label><TMPL_ELSE>Name</TMPL_UNLESS>:</div>
                <TMPL_UNLESS ROW_LOCKED>
                <div class="form_field">
                <span>
                <input name="LASTNAME" value="<TMPL_UNLESS MANAGE_COPY_USER><TMPL_VAR LASTNAME><TMPL_ELSE><TMPL_IF ADD_EDIT_ERROR><TMPL_VAR LASTNAME></TMPL_IF></TMPL_UNLESS>" title="Last Name"  placeholder="Last Name" id="lastname" type="text">
                </span>
                </div>
                <div class="form_field">
                <div class="form_label" style="display:none"><TMPL_UNLESS ROW_LOCKED><label for="firstname" style="display:none">Name</label><TMPL_ELSE>Name</TMPL_UNLESS>:</div>
                <span>                
                <input name="FIRSTNAME" value="<TMPL_UNLESS MANAGE_COPY_USER><TMPL_VAR FIRSTNAME><TMPL_ELSE><TMPL_IF ADD_EDIT_ERROR><TMPL_VAR FIRSTNAME></TMPL_IF></TMPL_UNLESS>" title="First Name" placeholder="First Name" id="firstname" type="text">
                </span>
                </div>
                <TMPL_ELSE>
                <div class="form_field">
                <span><TMPL_VAR LASTNAME>&nbsp;<TMPL_VAR FIRSTNAME></span>
                </div>
                </TMPL_UNLESS>
              <div class="clear"></div>
            </div>            
            <div class="form_section">
              <div class="form_label"><TMPL_UNLESS ROW_LOCKED><label for="ext_employee_num">Employee #</label><TMPL_ELSE>Employee #</TMPL_UNLESS>:</div>
              <div class="form_field">
                <TMPL_UNLESS ROW_LOCKED>
                <span>
                <input name="EXTERNAL_EMPLOYEEID" title="Employee ID" placeholder="Employee #" id="ext_employee_num" value="<TMPL_UNLESS MANAGE_COPY_USER><TMPL_VAR NAME=EXTERNAL_EMPLOYEEID><TMPL_ELSE><TMPL_IF ADD_EDIT_ERROR><TMPL_VAR EXTERNAL_EMPLOYEEID></TMPL_IF></TMPL_UNLESS>" type="text">
                <a id="emp_identifier" href="javascript:void(0);"><span class="fa fa-14 fa-info-circle pos_1 fa-fw"></span></a>
                </span>
                <TMPL_ELSE>
                <span><TMPL_VAR NAME=EXTERNAL_EMPLOYEEID></span>
                </TMPL_UNLESS>
              </div>
              <div class="clear"></div>
            </div>
            <div class="clear"></div>
            <TMPL_IF SHOW_EMPLOYEE_ID>
            <div class="form_section">
              <div class="form_label"><TMPL_UNLESS MANAGE_UPDATE_USER><label for="employee_num">Internal Emp #</label><TMPL_ELSE>Internal Emp #</TMPL_UNLESS>:</div>
              <div class="form_field">
                <TMPL_UNLESS MANAGE_UPDATE_USER>
                <span>
                <input name="EMPLOYEEID" title="Internal Employee number" placeholder="Internal Employee #" id="employee_num" type="text" value="<TMPL_VAR NAME=EMPLOYEEID>">
                </span>
                <div id="emp_error_msg" class="redtxt" style="display: none">
                  Please enter valid Internal employee number.  
                </div>
                 <TMPL_ELSE>
                <INPUT TYPE="hidden" NAME="EMPLOYEEID" id="employee_num" VALUE="<TMPL_VAR NAME=EMPLOYEEID>">
                <span><TMPL_VAR NAME=EMPLOYEEID></span>
                </TMPL_UNLESS>
              </div>
              <div class="clear"></div>
            </div>
            <div class="clear"></div>
            </TMPL_IF>
            <!-- /section -->
            
            <!-- section -->
            <div class="form_section">
              <div class="form_label"><label for="cellphone">Cell Phone</label>:</div>
              <div class="form_field">
                <TMPL_UNLESS ROW_LOCKED>
                <span>
                <input name="PHONE_VOICE1" value="<TMPL_UNLESS MANAGE_COPY_USER><TMPL_VAR PHONE_VOICE1><TMPL_ELSE><TMPL_IF ADD_EDIT_ERROR><TMPL_VAR PHONE_VOICE1></TMPL_IF></TMPL_UNLESS>" title="(123) 456-7890"  placeholder="Phone" id="cellphone" type="text">
                </span>
                <TMPL_ELSE>
                <span><TMPL_VAR PHONE_VOICE1></span>
                </TMPL_UNLESS>
              </div>
            </div>
            <div class="form_section">
              <div class="form_label"><TMPL_UNLESS ROW_LOCKED><label for="email">Email</label><TMPL_ELSE>Email</TMPL_UNLESS>:</div>
              <div class="form_field">
                <TMPL_UNLESS ROW_LOCKED>
                <span>
                <input name="EMAIL_ADDR" value="<TMPL_UNLESS MANAGE_COPY_USER><TMPL_VAR EMAIL_ADDR><TMPL_ELSE><TMPL_IF ADD_EDIT_ERROR><TMPL_VAR EMAIL_ADDR></TMPL_IF></TMPL_UNLESS>" title="Email Address" placeholder="Email Address" id="email" type="text" size="45">
                </span>
                <TMPL_ELSE>
                <span><TMPL_VAR EMAIL_ADDR></span>
                </TMPL_UNLESS>
              </div>
              <div class="clear"></div>
            </div>
            <div class="clear"></div>
            <!-- /section -->
            
            <TMPL_UNLESS ROW_LOCKED>
            <TMPL_UNLESS DISABLE_PASSWORD_RESET>
            <!-- /section -->
              <div class="form_label"><label for="password">Password</label>:</div>
              <div class="form_field">
                <TMPL_UNLESS MANAGE_UPDATE_USER>
                <span>
                <input name="PASSWORD" title="Password" id="password" placeholder="Password" type="password">
                </span>
                <TMPL_ELSE>
                <span>
                <input name="NEWPASSWORD" title="Password" id="password" placeholder="New Password" type="password">
                </span>
                </TMPL_UNLESS>
                <TMPL_IF MANAGE_ADD_USER>
                <br>
                <span class="smalltxt"><a class="pwd_generator" href="javascript:void(0)"><span class="fa fa-13 fa-lock pos_1 fa-fw" title="Password Generator"></span>Password Generator</a></span>  
                </TMPL_IF>
              </div>
                &nbsp;&nbsp;&nbsp;
                <div class="form_label"><label for="verifypassword">Verify Password</label>:</div>
                <div class="form_field">
                <span>
                <input name="CONFIRM_PASSWORD" title="Verify Password" id="verifypassword" placeholder="Confirm Password" type="password">
                <i title="Password match!" class="fa fa-17 fa-check-circle fa-fw greentxt pwd_match" style="display: none;"></i>
                <i title="Password do not match!" class="fa fa-17 fa-times-circle fa-fw redtxt pwd_match_fail" style="display: none;"></i>
                </span>
                </div>
            <div class="clear"></div>
	    <div class="padding-10"><b>All new passwords must:</b></div>
            <div class="clear"></div>
                            <div class="col col-0_5">&nbsp;</div>
			    <div class="col col-3">
                            <ul class="default_list">
                                <li>Consist of at least <TMPL_VAR MIN_PASSWORD_LENGTH> characters</li>
                                <li>Not include any spaces</li>
                                <li>Not include your ID</li>
                                <li>Not be the same as any of your previous 12 passwords</li>
			    </ul>
			    </div>
			    <div class="col col-3">
                            <ul class="default_list">
                                <li>Not been used in the last 30 days</li>
                                <li>Contain at least <TMPL_IF SHA2_PASSWORD>three<TMPL_ELSE>two</TMPL_IF> of the following:
                                    <ul>
                                        <TMPL_IF SHA2_PASSWORD>
                                            <li>Uppercase characters</li>
                                            <li>Lowercase characters</li>
                                        <TMPL_ELSE>
                                            <li>Alphabetic characters</li>
                                        </TMPL_IF>
                                        <li>Numeric characters</li>
                                        <li>Special character <span aria-hidden="true">(e.g.~!@#$%^&*(){};:.,)</span><span class="sr-only">for example: tilde, exclamation mark, at sign, pound sign, dollar sign, percentage mark, caret, ampersand, star, parenthesis, curly brackets, colon, semi-colon, apostrophe, and period.</span></li>
                                    </ul>
                                </li>
                            </ul>
			    <br><br>
			    </div>
	    <div class="clear"></div>
            </TMPL_UNLESS>
            </TMPL_UNLESS>
            <!-- /section -->
            <!-- /section -->
            <TMPL_IF MANAGE_UPDATE_USER>
            <TMPL_UNLESS ROW_LOCKED>
            <div id="user_notes1">
              <input type=hidden name="NOTEID" value="<TMPL_VAR NOTEID>">
              <input type=hidden name="SYSTEM_GENERATED_USER_NOTES" value="<TMPL_VAR SYSTEM_GENERATED_USER_NOTES>">
              <div class="form_label"><label for="add_user_note1">Notes</label>:</div>
              <div class="form_field">
                <textarea name="NOTES" class="usernotes" id="add_user_note1" rows="5" cols="60"><TMPL_VAR NAME="USER_NOTES"></textarea>
              </div>
              <div class="clear"></div>
            </div>
            </TMPL_UNLESS>
            </TMPL_IF>
            <!-- section -->
            <div class="col col-10">
              <div class="form_label col"><span id="user_status">User Status</span>:</div>
              <TMPL_IF ROW_LOCKED>
                <span>Permanently Inactive</span>
              <TMPL_ELSE>
                <label class="col">
                  <input aria-labelledby="user_status" name="userstatus" class="userstatus" id="userstatus1" type="radio" value="N" <TMPL_UNLESS FUTURE_DEACTIVATION_DATE><TMPL_IF NAME=SUSPENDED_N>CHECKED</TMPL_IF></TMPL_UNLESS>> 
                  <span aria-hidden="true">Active</span>
                </label>
                <label class="col">
                  <input <TMPL_IF DISABLE_USER_INACTIVATE>disabled="disabled" </TMPL_IF>aria-labelledby="user_status" name="userstatus" class="userstatus" id="userstatus2" type="radio" value="Y" <TMPL_UNLESS FUTURE_DEACTIVATION_DATE><TMPL_IF NAME=SUSPENDED_Y>CHECKED</TMPL_IF></TMPL_UNLESS>> 
                  <span aria-hidden="true">Inactive</span>
                </label>

                <TMPL_IF MANAGE_UPDATE_USER>
                  <!-- Inactive Beginning -->
                  <label class="col">
                    <input <TMPL_IF DISABLE_USER_INACTIVATE>disabled="disabled" </TMPL_IF> aria-labelledby="user_status" name="userstatus" class="userstatus" id="userstatus4" type="radio" value="inactive_beginning" <TMPL_IF FUTURE_DEACTIVATION_DATE>CHECKED</TMPL_IF>>
                    <span aria-hidden="true">Inactive Beginning</span>
                  </label>
                  <TMPL_UNLESS DISABLE_USER_INACTIVATE>
                    <div id="inactive_begin_dt" class="col">
                      <input data-rome-id="0" id="FUTURE_DEACTIVATION_DATE" placeholder="MM-DD-YYYY" name="FUTURE_DEACTIVATION_DATE" title="Inactive Beginning" type="text" size="10" VALUE="<TMPL_VAR NAME=FUTURE_DEACTIVATION_DATE>">
                    </div>
                  </TMPL_UNLESS>

                  <!-- Permanently Inactive -->
                  <label class="col">
                    <input <TMPL_IF DISABLE_USER_INACTIVATE>disabled="disabled" </TMPL_IF> aria-labelledby="user_status" name="userstatus" class="userstatus" id="userstatus3" type="radio" value="deleted">
                    <span aria-hidden="true">Permanently Inactive</span>
                  </label>

                </TMPL_IF>
              </TMPL_IF>
            </div>
            <div class="clear"></div>
            <TMPL_UNLESS MANAGE_ADD_USER>            
            <div id="assign_group">
            
              <div class="hz_line">&nbsp;</div>
              
              <!-- section -->
              <div class="form_label"><label for="products">Product</label>:</div>
            <div class="form_field">
              <span class="fl_left prod_right">
                <select name="products" title="Products" id="products" <TMPL_IF ROW_LOCKED>disabled</TMPL_IF>>
                <TMPL_LOOP NAME=PRODUCT_LIST>
                  <option <TMPL_IF SELECTED>SELECTED</TMPL_IF> value="<TMPL_VAR NAME=COMPANY>|<TMPL_VAR NAME=PRODUCT_ID>"><TMPL_VAR NAME=PRODUCT_DESC></option>
                </TMPL_LOOP>  
                </select>
              </span>
              <span class="fl_left prod_left">
                
                <label for="usergroup"><strong>Available Groups</strong></label>: <span class="prod_group redtxt" id="prod_desc"></span>&nbsp;&nbsp;(<a class="rpt_link" href="javascript:load_group_features()">Group Features</a>)<br>
                <div id="user_group" class="usergroup">
                  <table id="group_table" class="table data_table group_table g01">
                    <colgroup>
                      <col class="group_tbl_col1">
                      <col class="group_tbl_col2">
                      <col class="group_tbl_col3">
                    </colgroup>
                    <tbody>
                    <TMPL_IF GROUP_LIST_COUNT>                    
                    <TMPL_LOOP NAME=GROUP_LIST>
                    <tr>
                      <td><input name="usergroup" id ="<TMPL_VAR NAME=GROUP_ID>_grp" type="checkbox" value="<TMPL_VAR NAME=GROUP_ID>" <TMPL_IF CHECKED>CHECKED</TMPL_IF> <TMPL_IF ROW_LOCKED>disabled</TMPL_IF>></td>
                      <td><label for="<TMPL_VAR NAME=GROUP_ID>_grp"><TMPL_VAR NAME=GROUP_NAME></label></td>
                      <td><TMPL_VAR NAME=GROUP_DESCRIPTION></td>
                    </tr>
                    </TMPL_LOOP>
                    <TMPL_ELSE>
                      <tr>
                        <td>
                          <span class="g03"><i class="fa fa-13 fa-ban pos_1 fa-fw redtxt"></i>No available groups for this Product.</span>
                        </td>
                      </tr>  
                    </TMPL_IF>
                    </tbody>
                  </table>
                </div>
              </span>
              <span class="clear"></span>
            </div>
            <div class="clear"></div>
              <!-- /section -->
            
            </div>
            </TMPL_UNLESS>
          </div>
          
          <div class="search_buttons">
            <div class="form_label"></div>
            <div class="form_field">
              <!-- <input title="Save" id="savebutton" onclick="javascript:send_event('MANAGE/ADD_USER_NOW')" type="button" value="Save"> &nbsp; -->
              <TMPL_UNLESS ROW_LOCKED>
              <input title="Save" class="btn_red" id="savebutton" type="button" value="Save"> &nbsp; 
              <input title="Clear" class="btn_normal" onclick="javascript:web20_clear_all();return false;" type="button" value="Clear"> &nbsp; 
              <input title="Cancel" class="btn_normal" id="go_back" type="button" value="Cancel">
              <TMPL_ELSE>
              <input title="Return" class="btn_red" id="go_back" type="button" value="Return">
              </TMPL_UNLESS>
            </div>
            <div class="clear"></div>
          </div>

         <div id="inactive_permanent">
          <div class="fa-16"><span class="fa fa-20 fa-user-times pos1 fa-fw redtxt"></span> Permanently Inactivate</div>
          
          <p>
            <strong>User:</strong> <span class="firstname redtxt"><TMPL_VAR FIRSTNAME></span> <span class="lastname redtxt"><TMPL_VAR LASTNAME></span> (<span class="redtxt"><TMPL_VAR NAME=LOGINID></span>)
          </p>
          
          <p>
            A user who is permanently inactivated will not be permitted in the future to be reactivated.
          </p>
          
          <hr size="1" />
          
          Are you sure you want to permanently inactivate this user?
          <span class="fl_right"><a href="javascript:void(0);" rel="modal:close">Yes</a>&nbsp; | &nbsp;<a class="no_delete" href="javascript:void(0);" rel="modal:close">No</a></span><span class="clear"></span>
        </div>  
        
        
        <div aria-hidden="true" aria-labelledby="disableSearch" role="dialog" aria-live="polite" class="modal fade bs-example-modal-sm" id="pwd_generator" style="width: 60%; top: 30%; left: 20%">
          <div class="modal-dialog trap">
            <div class="modal-content">
                <div class="modal-header">
                    <span class="fl_right"><a href="javascript:void(0);" data-dismiss="modal">Cancel</a></span><span class="clear"></span>
                    <div class="fa-16"><span class="fa fa-20 fa-lock pos1 fa-fw redtxt"></span> Password Generator</div>
                </div>
                <div class="modal-body">
                    <div class="row">
                      <input type="text" name="newpwd" id="newpwd" size="40" value="" /> 
                      <input title="Generate Password" type="button" class="btn_red" name="generate" id="generate_pwd" value="Generate" />
                      <p/>
                      <p>
                        <a id="new_pwd" href="javascript:void(0);" data-dismiss="modal">Use This Password</a>
                      </p>
                    </div>
                </div>
            </div>
          </div>
        </div>        
        
        <div id="admin_tools" style="height:40%; width: 30%">
          <span class="fl_right"><a href="javascript:void(0);" rel="modal:close">Close</a></span><span class="clear"></span>
          <div id="modal_title">
          <div class="fa-16"><span class="fa fa-20 fa-wrench pos_1 fa-fw redtxt"></span> <span class="firstname"><TMPL_VAR FIRSTNAME></span> <span class="lastname"><TMPL_VAR LASTNAME></span> (<span class="userid redtxt"><TMPL_VAR NAME=LOGINID></span>)</div>
          </div>
          <div id="modal_body">
          <p>
            The Admin has the following entitlements:

            <div class="ulpad15">
              <TMPL_LOOP ENTITLEMENTS>
              <div><span class="<TMPL_UNLESS DISABLE>fa fa-14 fa-check-circle pos_1 fa-fw greentxt<TMPL_ELSE>fa fa-14 fa-times pos_1 fa-fw redtxt</TMPL_UNLESS>" title="Entitlement Granted"></span> <TMPL_VAR NAME></div>
              </TMPL_LOOP>
            </div>
          </p>
          </div>
        </div>
<!-- end myaccount/users/add_edit_users.tpl -->        
