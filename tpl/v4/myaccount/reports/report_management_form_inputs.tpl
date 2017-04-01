<i class="fa fa-16 fa-briefcase pos_1 fa-fw bluetxt"></i>
<span class="fa-16">Management Report</span>
<p>
</p>

<div class="formfields">
    <input type="hidden" name="HELP_PAGE_NAME" value="bsp_admin_reports_management_t.html">
    <div class="form_label"><label for="userstatus1">Report Type</label>:</div>
    <div class="form_field nowrap">
        <input name="MANAGEMENT_REPORT_TYPE" value="1" id="radio1" title="All" checked="checked" type="radio"> <label for="radio1">User/Group Features Report <span class="smalltxt">(All Billgroups)</span></label> &nbsp;&nbsp;&nbsp;
        <input name="MANAGEMENT_REPORT_TYPE" value="2" id="radio2" title="User/Group Report" type="radio"> <label for="radio2">User/Group Membership Report</label>
    </div>
    <div class="clear"></div>
    <div id="show_mgt_table">
      <div class="billgroup_select">
        <div class="form_label">Billgroups:</div>
        <div class="form_field" style="width:60%">
          <TMPL_INCLUDE NAME=myaccount/reports/report_shared_form_billgroup_select.tpl>
        </div>
      </div>
    </div>
    <div class="clear"></div>    
  <div class="search_buttons">
    <div class="form_label"></div>
    <div class="form_field">
        <a class="submitBtn mgmtRpt" value="Run Report" title="Run Report">Run Report</a>
    </div>
    <div class="clear"></div>
  </div>     
     
</div>          	

