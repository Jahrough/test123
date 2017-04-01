<i class="fa fa-16 fa-users pos_1 fa-fw bluetxt"></i> <span class="fa-16">Group Report</span>
<p></p>
<div class="formfields">
  <div class="form_label">Billgroup:</div>
  <div class="form_field">
    <input type=hidden name="FIRST_LOAD_DONE" value="<TMPL_VAR FIRST_LOAD_DONE>"> 
    <input type=hidden name="BILLGROUP_DESC" value="<TMPL_VAR BILLGROUP_DESC>">
    <input type="hidden" name="picked_billgroup" id="picked_billgroup" />    
    <input type="hidden" name="HELP_PAGE_NAME" value="bsp_admin_reports_groups_t.html">

    <TMPL_IF MULTIPLE_BILLGROUPS> 
    <TMPL_LOOP NAME=BILLGROUPLOOP>
    <TMPL_IF Selected>
    <a class="change_billgroup" href="javascript:void(0);">
      <span class="urlGroup"><TMPL_VAR NAME=CompanyName></span>
    </a>
    </TMPL_IF>
    </TMPL_LOOP>
    <TMPL_ELSE>
      <TMPL_LOOP NAME=BILLGROUPLOOP>
        <a href="javascript:void(0);">     
          <span class="urlGroup"><TMPL_VAR NAME=CompanyName></span>
        </a>
      </TMPL_LOOP>
    </TMPL_IF>
    <a class="change_billgroup" href="javascript:void(0);" id="fail_over" style="display: none">     
      <span class="urlGroup"></span>
    </a>
    
  </div>
  <div class="clear"></div>
  <TMPL_INCLUDE NAME=myaccount/reports/report_extra_form_inputs.tpl>
</div>
<TMPL_INCLUDE NAME="myaccount/groups/groups_list.tpl">
<TMPL_INCLUDE NAME=myaccount/reports/report_bill_group_model.tpl>
