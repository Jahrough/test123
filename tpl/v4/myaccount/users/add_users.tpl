<i class="fa fa-16 fa-user-plus pos_1 fa-fw bluetxt"></i>
<TMPL_IF MANAGE_UPDATE_USER>
<span class="fa-16">Update User</span>
<TMPL_ELSE>
<span class="fa-16">Create User</span>
</TMPL_IF>
<p></p> 
          <input name="accesslevel" id="accesslevel" type="hidden" value="user"> 
          <input id="is_internal_emp_id" type="hidden" value="<TMPL_VAR SHOW_EMPLOYEE_ID>">
          <input id="is_external_emp_id" type="hidden" value="<TMPL_VAR SHOW_EXTERNAL_EMP_ID>">          
          <input id="is_update" type="hidden" value="<TMPL_VAR MANAGE_UPDATE_USER>">          
          <input type="hidden" name="HELP_PAGE_NAME" value="bsp_lp_admin_users_c.html">

          <div class="formfields">
          
       
            <!-- section -->
            <div class="form_section">
              <div class="form_label"><label for="userid">User ID</label>:</div>
              <div class="form_field">
                <input name="NEW_LOGINID" title="User ID" id="userid" type="text" value="<TMPL_VAR NAME=NEW_LOGINID>" maxlength="30"> 
                &nbsp;&nbsp;&nbsp;
              </div>
              <div class="form_label"><label for="access_level">Access Level:</label>:</div>
              <div class="form_field">
                <select name="SYSTEMADMINISTRATOR" title="Access Level" id="access_level">
                  <option value="0">User</option>
                  <option value="1">Admin</option>
                </select>
              </div>
              <div class="clear"></div>
              
            </div>
            
            <div class="form_section">
              <div class="form_label"><label for="billgroup">Billgroup</label>:</div>
              <div class="form_field">
                <select name="billgroup" title="Billgroup" id="billgroup">
                  <option value="00">Select</option>
                  <option value="1234567890">1234567890 - Group A</option>
                  <option value="9876543210">9876543210 - Group B</option>
                  <option value="4598135715">4598135715 - Group C</option>
                </select>
              </div>
              <div class="clear"></div>
            </div>
            <div class="clear"></div>
            <!-- /section -->

            <!-- section -->
            <div class="form_section">
              <div class="form_label"><label for="lastname">Name</label>:</div>
              <div class="form_field">
                <input name="LASTNAME" value="<TMPL_VAR LASTNAME>" title="Last Name" class="example" id="lastname" type="text"> 
                <input name="FIRSTNAME" value="<TMPL_VAR FIRSTNAME>" title="First Name" class="example" id="firstname" type="text">
              </div>
              <div class="clear"></div>
            </div>

            <div class="form_section">
              <div class="form_label"><label for="ext_employee_num">Employee #</label>:</div>
              <div class="form_field">
                <input name="EXTERNAL_EMPLOYEEID" title="Employee Number" id="ext_employee_num" value="<TMPL_VAR NAME=EXTERNAL_EMPLOYEEID>" type="text"> 
                <a class="tooltipstered" id="emp_identifier" href=""><i class="fa fa-14 fa-info-circle pos_1 fa-fw"></i></a>
              </div>
              <div class="clear"></div>
            </div>
            <TMPL_IF SHOW_EMPLOYEE_ID>
            <div class="form_section">
              <div class="form_label"><label for="employee_num">Internal Employee #</label>:</div>
              <div class="form_field">
                <input name="EMPLOYEEID" title="Employee Number" id="employee_num" type="text" value="<TMPL_VAR NAME=EMPLOYEEID>"> 
                <a class="tooltipstered" id="emp_identifier" href=""><i class="fa fa-14 fa-info-circle pos_1 fa-fw"></i></a>
              </div>
              <div class="clear"></div>
            </div>

            </TMPL_IF>
            <div class="clear"></div>
            <!-- /section -->
            
            <!-- section -->
            <div class="form_section">
              <div class="form_label"><label for="phonecarrier">Cell Phone</label>:</div>
              <div class="form_field">
                <select name="phonecarrier" id="phonecarrier">
                  <option value="none">Select Carrier</option>
                  <option value="att">AT&amp;T</option>
                  <option value="sprint">Sprint</option>
                  <option value="tmobile">T-Mobile</option>
                  <option value="verizon">Verizon</option>
                </select>
                
                <input name="PHONE_VOICE1" value="<TMPL_VAR PHONE_VOICE1>" title="(123) 456-7890" class="example" id="smsmfa" type="text">
              </div>
            </div>
            <div class="form_section">
              <div class="form_label"><label for="email">Email</label>:</div>
              <div class="form_field">
                <input name="EMAIL_ADDR" value="<TMPL_VAR EMAIL_ADDR>" title="Email Address" id="email" type="text" size="45">
              </div>
              <div class="clear"></div>
            </div>
            <div class="clear"></div>
            <!-- /section -->
            
            <!-- /section -->
            <div class="form_label"><label for="password">Password</label>:</div>
            <div class="form_field">
              <input name="PASSWORD" title="Password" id="password" type="password"> 

              &nbsp;&nbsp;&nbsp;
              
              <strong><label for="verifypassword">Verify Password</label>:</strong> 
              <input name="CONFIRM_PASSWORD" title="Verify Password" id="verifypassword" type="password"> 
              <i title="Password match!" class="fa fa-17 fa-check-circle fa-fw greentxt pwd_match" style="display: none;"></i>
              <i title="Password do not match!" class="fa fa-17 fa-times-circle fa-fw redtxt pwd_match_fail" style="display: none;"></i>
              <br>
              <span class="smalltxt"><a class="pwd_generator" href="javascript:void(0)"><i title="Password Requirements" class="fa fa-13 fa-lock pos_1 fa-fw"></i>Password Generator</a></span>
              
            </div>
            <div class="clear"></div>
            <!-- /section -->
            
            <!-- section -->
            <div class="form_section">
              <div class="form_label"><label for="userstatus">User Status</label>:</div>
              <div class="form_field nowrap">
                <input name="SUSPENDED" class="userstatus" id="userstatus1" type="radio" value="N" <TMPL_IF NAME=SUSPENDED_N>CHECKED</TMPL_IF>> <label for="userstatus1">Active</label> &nbsp;&nbsp;
                <input name="SUSPENDED" class="userstatus" id="userstatus2" type="radio" value="Y" <TMPL_IF NAME=SUSPENDED_Y>CHECKED</TMPL_IF>> <label for="userstatus2">Inactive</label>
              </div>
              <div class="clear"></div>
            </div>
            <div class="clear"></div>
            <!-- /section -->
            
            <div id="assign_group">
            
              <div class="hz_line">&nbsp;</div>
              
              <!-- section -->
              <div class="form_label"><label for="products">Product</label>:</div>
            <div class="form_field">
              <span class="fl_left prod_right">
                <select name="products" title="Products" id="products">
                  <option value="01">Anti-Money Laundering</option>
                  <option value="02">Collections</option>
                  <option value="03">Risk Management</option>
                  <option value="04">Real Estate</option>
                </select>
                <p class="dev_note" style="display: none;">
                  Dev Note: if user has access to<br>
                  only 1 Product, do not put<br>
                  the Product in a drop-down<br>
                  option. Just display the<br>
                  Product as plain text.
                </p>
              </span>
              <span class="fl_left prod_left">
                
                <label for="usergroup"><strong>Available Groups</strong></label>: <span class="prod_group redtxt">Anti-Money Laundering</span>&nbsp;&nbsp;(<a class="rpt_link" href="" target="report">Group Features</a>)<br>
                <div class="usergroup">
                  
                  <table class="table data_table group_table g01" style="display: table;">
                    <colgroup>
                      <col class="group_tbl_col1">
                      <col class="group_tbl_col2">
                      <col class="group_tbl_col3">
                    </colgroup>
                    <tbody><tr>
                      <td></td>
                      <td class="smalltxt" colspan="2">UI Note: need text here - something to the effect of the "Default" group.</td>
                    </tr>
                    <tr>
                      <td><input name="usergroup" type="checkbox" value="01"></td>
                      <td>Callaway</td>
                      <td>Description goes here.</td>
                    </tr>
                    <tr>
                      <td><input name="usergroup" type="checkbox" value="02"></td>
                      <td>Doublelabs</td>
                      <td>Description goes here.</td>
                    </tr>
                    <tr>
                      <td><input name="usergroup" type="checkbox" value="03"></td>
                      <td>Flexcare</td>
                      <td>Description goes here.</td>
                    </tr>
                    <tr>
                      <td><input name="usergroup" type="checkbox" value="04"></td>
                      <td>QA Test Group</td>
                      <td>Description goes here.</td>
                    </tr>
                    <tr>
                      <td><input name="usergroup" type="checkbox" value="05"></td>
                      <td>San Francisco Test</td>
                      <td>Description goes here.</td>
                    </tr>
                    <tr>
                      <td><input name="usergroup" type="checkbox" value="06"></td>
                      <td>Stormy Hook</td>
                      <td>Description goes here.</td>
                    </tr>
                  </tbody></table>
                  
                  <table class="table data_table group_table g02" style="display: none;">
                    <colgroup>
                      <col class="group_tbl_col1">
                      <col class="group_tbl_col2">
                      <col class="group_tbl_col3">
                    </colgroup>
                    <tbody><tr>
                      <td><input name="usergroup" type="checkbox" value="07"></td>
                      <td>Atlanta</td>
                      <td>Description goes here.</td>
                    </tr>
                    <tr>
                      <td><input name="usergroup" type="checkbox" value="08"></td>
                      <td>Call Center</td>
                      <td>Description goes here.</td>
                    </tr>
                    <tr>
                      <td><input name="usergroup" type="checkbox" value="09"></td>
                      <td>Exo Eccentric</td>
                      <td>Description goes here.</td>
                    </tr>
                    <tr>
                      <td><input name="usergroup" type="checkbox" value="10"></td>
                      <td>Joydexon</td>
                      <td>Description goes here.</td>
                    </tr>
                    <tr>
                      <td><input name="usergroup" type="checkbox" value="11"></td>
                      <td>Lantern Dusty</td>
                      <td>Description goes here.</td>
                    </tr>
                    <tr>
                      <td><input name="usergroup" type="checkbox" value="12"></td>
                      <td>October Team</td>
                      <td>Description goes here.</td>
                    </tr>
                  </tbody></table>

                  <span class="g03" style="display: none;">
                    <i class="fa fa-13 fa-ban pos_1 fa-fw redtxt"></i>No available groups for this Product.
                  </span>
                  
                  <table class="table data_table group_table g04" style="display: none;">
                    <colgroup>
                      <col class="group_tbl_col1">
                      <col class="group_tbl_col2">
                      <col class="group_tbl_col3">
                    </colgroup>
                    <tbody><tr>
                      <td><input name="usergroup" type="checkbox" value="13"></td>
                      <td>Akers Department</td>
                      <td>Description goes here.</td>
                    </tr>
                    <tr>
                      <td><input name="usergroup" type="checkbox" value="14"></td>
                      <td>Borders Group</td>
                      <td>Description goes here.</td>
                    </tr>
                    <tr>
                      <td><input name="usergroup" type="checkbox" value="15"></td>
                      <td>Deltacus</td>
                      <td>Description goes here.</td>
                    </tr>
                    <tr>
                      <td><input name="usergroup" type="checkbox" value="16"></td>
                      <td>Hexdox</td>
                      <td>Description goes here.</td>
                    </tr>
                    <tr>
                      <td><input name="usergroup" type="checkbox" value="17"></td>
                      <td>Omega Long</td>
                      <td>Description goes here.</td>
                    </tr>
                    <tr>
                      <td><input name="usergroup" type="checkbox" value="18"></td>
                      <td>Particle Board</td>
                      <td>Description goes here.</td>
                    </tr>
                  </tbody></table>
                  
                </div>
              </span>
              <span class="clear"></span>
            </div>
            <div class="clear"></div>
              <!-- /section -->
            
            </div>

          </div>
          
          <div class="search_buttons">
            <div class="form_label"></div>
            <div class="form_field">
              <!-- <input title="Save" id="savebutton" onclick="javascript:send_event('MANAGE/ADD_USER_NOW')" type="button" value="Save"> &nbsp; -->
              <input title="Save" id="savebutton" type="button" value="Save"> &nbsp; 
              <input title="Clear" onclick="javascript:document.forms[0].reset();$(document.forms[0]).validate().resetForm();" type="button" value="Clear"> &nbsp; 
              <input title="Cancel" id="go_back" type="button" value="Cancel">
            </div>
            <div class="clear"></div>
          </div>

        
