<!-- begin v4/myaccount/users/investigate_user.tpl -->
<i class="fa fa-16 fa-search pos_1 fa-fw bluetxt"></i> <span class="fa-16">Investigate User</span>
<p>
<input type=hidden id="on_investigation_page" value="1">
          <div class="formfields">
            <div class="form_label"></div>
            <div class="form_field">
              To assist our investigation team, please provide the following information (if available):
            </div>
            <div class="clear"></div>
            
            <!-- section -->
            <div class="form_section">
              <div class="form_label">User ID:</div>
              <div class="form_field">
                <input type="hidden" NAME="SUBJECT_LOGIN_ID" value="<TMPL_VAR SUBJECT_LOGIN_ID>">
                <span class="userid"><TMPL_VAR SUBJECT_LOGIN_ID></span> 
              </div>
              <div class="form_label">Employee #:</div>
              <div class="form_field">
                <input type="hidden" NAME="SUBJECT_EMPLOYEE_ID" value="<TMPL_VAR SUBJECT_EMPLOYEE_ID>">
                <span class="userid"><TMPL_VAR SUBJECT_EMPLOYEE_ID></span> 
              </div>
              <div class="clear"></div>
            </div>
            <div class="form_section">
              <div class="form_label">User:</div>
              <div class="form_field">
                <input type="hidden" NAME="SUBJECT_NAME" value="<TMPL_VAR SUBJECT_NAME>">              
                <span class="firstname"><TMPL_VAR SUBJECT_NAME></span>
              </div>
              <div class="clear"></div>
            </div>
            <div class="clear"></div>
            <!-- /section -->
            <!-- section -->
            <div class="form_section">
              <div class="form_label"><label for="products">Product</label>:</div>
              <div class="form_field">
                <input name="PRODUCT_DESCRIPTION" type="hidden" id="product_description">
                <select name="products" id="products" title="Products">
                  <TMPL_LOOP NAME=PRODUCT_LIST>
                    <option <TMPL_IF SELECTED>SELECTED</TMPL_IF> value="<TMPL_VAR NAME=COMPANY>|<TMPL_VAR NAME=PRODUCT_ID>"><TMPL_VAR NAME=PRODUCT_DESC></option>
                  </TMPL_LOOP>  
                </select>
                <br />
                <span class="smalltxt">Product in which the activity occurred.</span>
              </div>
              <div class="clear"></div>
            </div>
            
              <div class="form_label"><label for="from_date">From</label>:</div>
              <div class="form_field">
                <input name="ACTIVITY_TIME_PERIOD" type="hidden" id="activity_time_period">
                <span> 
                <input type="text" name="INV_FROM_DATE" id="from_date" title="From Date" size="10" />
                </span>
                <br />
                <span class="smalltxt">Period of activity in question.</span>
              </div>
              <div class="form_label_cstm"><label for="to_date">To</label></strong>:</div>
                <div class="form_field">
                <span> 
                <input type="text" name="INV_TO_DATE" id="to_date" title="To Date" size="10" />
                </span>
                </div>
              <div class="clear"></div>
            
            
            <!-- /section -->
            
            <div class="form_label"><label for="summarynotes">Summary</label>:</div>
            <div class="form_field">
              <span class="smalltxt">Provide a brief summary of the nature of your investigation.</span><br />
              <textarea class="summarynotes" cols="80" rows="5" id="summarynotes" title="Summary Notes" name="MESSAGE"></textarea>
            </div>
            <div class="clear"></div>
            
            <div class="hz_line">&nbsp;</div>
            
            <div class="form_label"></div>
            <div class="form_field">
              The information is being submitted by:
            </div>
            <div class="clear"></div>
            <!-- section -->
            <div class="form_section">
              <div class="form_label">Admin ID:</div>
              <div class="form_field">
                <span class="admin_id"><TMPL_VAR LOGINID></span>
              </div>
              <div class="form_label">Employee #:</div>
              <div class="form_field">
                <input type="hidden" NAME="ADMIN_EMPLOYEE_ID" value="<TMPL_VAR ADMIN_EMPLOYEE_ID>">
                <span class="userid"><TMPL_VAR ADMIN_EMPLOYEE_ID></span> 
              </div>
              
              <div class="clear"></div>
            </div>
            <div class="form_section">
              <div class="form_label">Admin:</div>
              <div class="form_field">
                <span class="admin_first"><TMPL_VAR FIRSTNAME></span> <span class="admin_last"><TMPL_VAR LASTNAME></span>
              </div>
              <div class="clear"></div>
            </div>
            <div class="clear"></div>
            <!-- /section -->
            
            <!-- section -->
            <div class="form_section">
              <div class="form_label">Billgroup:</div>
              <div class="form_field">
                <span class="billgroup"><TMPL_VAR COMPANYID></span>
              </div>
              <div class="clear"></div>
            </div>
            <div class="form_section">
              <div class="form_label">Email:</div>
              <div class="form_field">
                <a href="javascript:void(0);"><span class="email"><TMPL_VAR EMAIL_ADDR></span></a>
              </div>
              <div class="clear"></div>
            </div>
            <div class="clear"></div>
            <!-- /section -->

          </div>
          
          <div class="search_buttons">
            <div class="form_label"></div>
            <div class="form_field">
              <input type="button" class="btn_red" value="Submit" id="send_message" title="Submit" /> &nbsp; 
              <input type="button" class="btn_normal" value="Cancel" id="go_back" title="Cancel"/>
            </div>
            <div class="clear"></div>
          </div>
<!-- end v4/myaccount/users/investigate_user.tpl -->