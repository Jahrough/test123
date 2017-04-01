<!-- begin user_filters.tpl -->
    <div class="form_label"><label for="SEARCH_FIRSTNAME">Name</label>:</div>
    <div class="form_field">
        <label for="SEARCH_LASTNAME" style="display: none">Last Name</label>
        <input type="text" placeholder="Last Name" id="SEARCH_LASTNAME" name="SEARCH_LASTNAME" VALUE="<TMPL_VAR NAME=SEARCH_LASTNAME>" MAXLENGTH=30>
        <input type="text" placeholder="First Name" id="SEARCH_FIRSTNAME" name="SEARCH_FIRSTNAME" VALUE="<TMPL_VAR NAME=SEARCH_FIRSTNAME>" MAXLENGTH=30>
    </div>
    <div class="clear"></div>
    
    <div class="form_section">
       <div class="form_label"><label for="SEARCH_LOGINID">User ID</label>:</div>
       <div class="form_field">
                <input type="text" placeholder="Login ID" id="SEARCH_LOGINID" name="SEARCH_LOGINID" VALUE="<TMPL_VAR NAME=SEARCH_LOGINID>" MAXLENGTH=20>
       </div>
       <div class="clear"></div>
   </div>
   <div class="form_section">
     <div class="form_label"><label for="employee_num">Employee #</label>:</div>
       <div class="form_field">
         <input type="text" name="employee_num" placeholder="Employee #" id="employee_num" title="Employee Number" value="<TMPL_VAR employee_num>"/> 
         <a id="emp_identifier" href="javascript:void(0);"><i class="fa fa-14 fa-info-circle pos_1 fa-fw"></i></a>
       </div>
     <div class="clear"></div>
   </div>
   <div class="clear"></div>
    <div class="form_section">    
        <div class="form_label"><label for="DD_BILLGROUP">Billgroup</label>:</div>
        <div class="form_field">
            <TMPL_IF MULTIPLE_BILLGROUPS> 
            <select name="DD_BILLGROUP" id="DD_BILLGROUP" title="Billgroup">
                <option value="0">All</option>
                <TMPL_LOOP NAME=BILLGROUPLOOP>
                    <option value="<TMPL_VAR NAME=CompanyId>" <TMPL_IF SELECTED_BILLGROUP><TMPL_IF Selected>selected="selected"</TMPL_IF></TMPL_IF>><TMPL_VAR NAME=CompanyName></option>
                </TMPL_LOOP>
            </select>
            <TMPL_UNLESS IS_ADMIN_REPORTING> 
            <a class="submitBtn" href="javascript:set_active_billgroup_user();"> 
                Select
            </a>
            </TMPL_UNLESS>
            <TMPL_ELSE>
            <TMPL_LOOP NAME=BILLGROUPLOOP>
            <span><TMPL_VAR NAME=CompanyName></span>
            </TMPL_LOOP>
            </TMPL_IF>
        </div>
        <div class="clear"></div>    
    </div> 
    
    <div class="form_section">
        <input type=hidden name="ALLUSERS" id="ALLUSERS">
        <div class="form_label"><span id="ALLUSERS">User Status</span>:</div>
        <div class="form_field nowrap">
          <input name="user_status" class="user_status" id="user_status1" type="radio" <TMPL_IF NAME="SUSPENDED_1">checked="checked" </TMPL_IF>value="1"> <label for="user_status1">Active</label> &nbsp;&nbsp;
          <input name="user_status" class="user_status" id="user_status2" type="radio" <TMPL_IF NAME="SUSPENDED_2">checked="checked" </TMPL_IF>value="2"> <label for="user_status2">Inactive</label> &nbsp;&nbsp;
          <input name="user_status" class="user_status" id="user_status3" type="radio" <TMPL_IF NAME="SUSPENDED_6">checked="checked" </TMPL_IF>value="6"> <label for="user_status3">Permanently Inactive</label> &nbsp;&nbsp;
          <input name="user_status" class="user_status" id="user_status4" type="radio" <TMPL_UNLESS SUSPENDED_1><TMPL_UNLESS SUSPENDED_2><TMPL_UNLESS SUSPENDED_6>checked="checked"</TMPL_UNLESS></TMPL_UNLESS></TMPL_UNLESS> value="3"> <label for="user_status4">All</label>
        </div> 
        <TMPL_UNLESS SHOW_ADMIN_REPORT>
        <div id="status_type" style="display: none">   
        <div class="clear"></div>      
        <div class="form_label"><label for="usertype">Status Type</label>:</div>
        <div class="form_field">
                <select id="usertype" name="usertype">
                    <option value="0">All</option>
                    <option value="1">Inactivity</option>
                    <option value="2">Strike out count</option>
                    <option value="3">Admin Suspending</option>
                </select>
        </div>
        </div>
        </TMPL_UNLESS>
        <div class="clear"></div>
    </div>
    <TMPL_UNLESS SHOW_ADMIN_REPORT>
    <div class="form_section">
      <div class="form_label"><label for="accesslevel">Access Level</label>:</div>
      <div class="form_field nowrap">
        <input name="accesslevel" class="accesslevel" id="accesslevel1" type="radio" value="admin"> <label for="accesslevel1">Admin</label> &nbsp;&nbsp;
        <input name="accesslevel" class="accesslevel" id="accesslevel2" type="radio" value="user"> <label for="accesslevel2">User</label> &nbsp;&nbsp;
        <input name="accesslevel" class="accesslevel" id="accesslevel3" type="radio" checked="checked" value="all"> <label for="accesslevel3">All</label>
                
      </div>
      <div class="clear"></div>
    </div>
    </TMPL_UNLESS>
    <div class="clear"></div>
    
    <div class="form_label"></div>    
    <div class="form_field" id="last-name-range">
        <TMPL_IF name="LETTERS_LOOP">
            <TMPL_LOOP name="LETTERS_LOOP">
                <TMPL_IF name="CURRENT_LETTER_NO_LINK">
                    <TMPL_VAR name="LETTER">
                <TMPL_ELSE>
                  <a class="search_letter" href="javascript:set_last_name_range_v4('<TMPL_VAR name="LETTER">');"><TMPL_VAR name="LETTER"></a>
                </TMPL_IF>
            </TMPL_LOOP>
            <a id="search_name" href="javascript:void(0);"><i class="fa fa-14 fa-info-circle pos_1 fa-fw"></i></a>
        </TMPL_IF>
    </div>              
    <div class="clear"></div>
<!-- end user_filters.tpl -->