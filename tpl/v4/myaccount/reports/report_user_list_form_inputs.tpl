<i class="fa fa-16 fa-list pos_1 fa-fw bluetxt"></i> <span class="fa-16">User List Report</span>
<p>
</p>

<div class="formfields">
    <div class="form_label"><label for="userstatus1">User Status</label>:</div>
    <div class="form_field nowrap">
        <input name="USER_STATUS" id="userstatus1" value="" title="All Users" checked="checked" type="radio"> <label for="userstatus1">All</label> &nbsp;&nbsp;&nbsp;
        <input name="USER_STATUS" id="userstatus2" value="N" title="Active Users" type="radio"> <label for="userstatus2">Active</label> &nbsp;&nbsp;&nbsp;
        <input name="USER_STATUS" id="userstatus3" value="Y" title="Inactive Users" type="radio"> <label for="userstatus3">Inactive</label>
    </div>
    <div class="clear"></div>
    <input type=hidden id="is_multiple_billgroup" name="MULTIPLE_BILLGROUPS" value="<TMPL_VAR MULTIPLE_BILLGROUPS>">
    <input type="hidden" name="HELP_PAGE_NAME" value="bsp_admin_reports_user_list_t.html">
    <!-- DID IT THIS WAY SO THAT IN FUTURE THERE IS A REQUIREMENT OF SELECTING THE BILLGROUP OUT OF MULTIPLE BILLGROUPS --> 
    <TMPL_IF MULTIPLE_BILLGROUPS>
      <TMPL_LOOP NAME=BILLGROUPLOOP> 
        <input type=hidden class="chkBillGroups" name="<TMPL_VAR NAME=CompanyId>" value="<TMPL_VAR NAME=CompanyId>">
      </TMPL_LOOP>       
   </TMPL_IF> 
</div>          	

<div class="search_buttons">
    <div class="form_label"></div>
    <div class="form_field">
        <a class="submitBtn userListRpt" value="Run Report" title="Run Report">Run Report</a>
    </div>
    <div class="clear"></div>
</div>     
