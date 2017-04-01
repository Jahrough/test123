<i class="fa fa-16 fa-user pos_1 fa-fw bluetxt"></i> <span class="fa-16 bluetxt">User Report</span>
<p></p>
<div class="formfields">
  <input type="hidden" name="HELP_PAGE_NAME" value="bsp_admin_reports_user_t.html">
  <TMPL_INCLUDE NAME=myaccount/reports/report_extra_form_inputs.tpl>
  <TMPL_INCLUDE NAME=myaccount/user_filters.tpl>
  <div id="reset-row">
    <a class="cancelBtn" href="#" onClick="javascript:resetUserList(); return false;">Reset</a>
  </div>

<!-- START div.myaccount-containers -->
<div class="myaccount-containers">
  <div class="section">
    <!-- START USER LIST -->
    <table id="userListReport" class="table data_table" width="100%">
      <thead>
        <tr>
          <th id="col_lst_nam">Last Name</th>
          <th id="col_frst_nam">First Name</th>
          <th id="col_access_lvl">Access Level</th>
          <th id="col_user_id">User ID</th>
          <th id="col_emp_num">Employee #</th>
          <th id="col_bill_grp">Billgroup</th>
          <th id="col_status">Status</th>
          <TMPL_IF NAME="SUSPENDED_2">
            <th id="col_status_typ">Status Type</th>
          </TMPL_IF>
          <th id="col_rn_rpt">Run Report</th>
        </tr>
      </thead>
  </table>
  <!-- END USER LIST -->
</div>
</div>
<!-- END div.myaccount-containers -->
</div>
