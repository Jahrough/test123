<span class="fa fa-16 fa-bell pos_1 fa-fw bluetxt"></span> <span class="fa-16">Alert Report</span>
<p></p>
<div class="formfields">
  <div class="form_label">Billgroup:</div>
  <div class="form_field">
    <TMPL_IF MULTIPLE_BILLGROUPS> 
    <TMPL_LOOP NAME=BILLGROUPLOOP>
     <input type=hidden class="alert_comp" id="<TMPL_VAR NAME=CompanyId>" value="<TMPL_VAR is_alert_allowed>">
    <TMPL_IF Selected>
    <input type="hidden" name="picked_billgroup" id="picked_billgroup" value="<TMPL_VAR NAME=CompanyId>" />
    <input type=hidden value="<TMPL_VAR is_alert_allowed>" id="is_alert_allowed">
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
  </div>
  <div class="clear"></div>
  <div id="repo_extra_inputs">
    <TMPL_INCLUDE NAME=myaccount/reports/report_extra_form_inputs.tpl>
  </div>
  <div id="rpt_buttons" class="search_buttons">
    <div class="form_label"></div>
    <div class="form_field"><input type="button" onclick="javascript:run_alert_report()" value="Run Report" title="Run Report" id="submitbutton" /></div>
    <div class="clear"></div>
  </div>
</div>
<TMPL_INCLUDE NAME=myaccount/reports/report_bill_group_model.tpl>
