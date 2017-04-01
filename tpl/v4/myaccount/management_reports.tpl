
<div id="reportcontents" class="management">	
  <TMPL_IF NAME="DISABLED">
    <TMPL_INCLUDE NAME=myaccount_disabled.tpl>
  <TMPL_ELSE>
    <div class="report_header">
      <div class="fl_left">
        <h2 class="redtxt report_title" title="User"><span class="urlIcon"><span class="fa fa-16 fa-briefcase pos_2 fa-fw redtxt"></span></span>
          <span class="urlRptType"><TMPL_VAR NAME="REPORT_TITLE"></span>
        </h2>
        <br/>
      </div>
      <div class="fl_right txt_right">
        <div><strong>Today's Date:</strong> <span class="dateTime"><TMPL_VAR NAME="REPORT_TIME"></span></div>
      </div>
      <div class="clear"></div>
    </div>
    <TMPL_IF NAME="REPORT_MANAGEMENT_FEATURES_REPORT">
      <TMPL_INCLUDE NAME="myaccount/reports/report_management_features_report.tpl">
    <TMPL_ELSE>
      <TMPL_INCLUDE NAME="myaccount/reports/report_management_membership_report.tpl">
    </TMPL_IF>
  </TMPL_IF>
</div>    
