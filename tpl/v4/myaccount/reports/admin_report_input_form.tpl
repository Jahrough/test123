<span class="fa fa-16 fa-file-text-o pos_1 fa-fw bluetxt"></span> <span class="fa-16">Admin Report</span>
<p></p>
<div class="formfields">
  <input type="hidden" name="HELP_PAGE_NAME" value="bsp_admin_reports_admin_t.html">
  <div class="form_label">Report Type:</div>
  <div class="form_field nowrap">
    <input type="radio" name="report_type" value="1" id="report_entitlement" title="Entitlement Report" checked="checked" /> <label for="report_entitlement">Entitlement Report <span class="smalltxt">(All Admins)</span></label> &nbsp;&nbsp;&nbsp;
    <input type="radio" name="report_type" value="2" id="report_individual" title="Individual Report" /> <label for="report_individual">Individual Admin Activity</label>
    &nbsp;&nbsp;&nbsp;
    <input type="radio" name="report_type" value="3" id="report_group" title="All Admin Report" /> <label for="report_group">All Admin Activity</label>
  </div>
  <div class="clear"></div>
  <div id="repo_extra_inputs">
    <TMPL_INCLUDE NAME=myaccount/reports/report_extra_form_inputs.tpl>
  </div>
  <div id="individual_report">
    <TMPL_INCLUDE NAME=myaccount/user_filters.tpl>
    <div id="reset-row">
      <a class="cancelBtn" href="javascript:resetUserList();">Reset</a>
    </div>

    <!-- START div.myaccount-containers -->
    <div class="myaccount-containers">
      <div class="section">
        <!-- START USER LIST -->
        <table id="adminUserListReport" class="table data_table" width="100%">
          <thead>
            <tr>
              <th id="col_lst_nam">Last Name</th>
              <th id="col_frst_nam">First Name</th>
              <th id="col_access_lvl">Access Level</th>
              <th id="col_user_id">User ID</th>
              <th id="col_emp_num">Employee #</th>
              <th id="col_bill_grp">Billgroup</th>
              <th id="col_status">Status</th>
              <th id="col_rn_rpt">Run Report</th>
            </tr>
          </thead>
        </table>
        <!-- END USER LIST -->
      </div>
     </div>
  </div>
  <div id="rpt_buttons" class="search_buttons">
    <div class="form_label"></div>
    <div class="form_field"><input class="btn_red" type="button" onclick="javascript:run_admin_report()" value="Run Report" title="Run Report" id="submitbutton" /></div>
    <div class="clear"></div>
  </div>
</div>

