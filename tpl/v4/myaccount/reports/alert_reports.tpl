<div id="reportcontents">
  <TMPL_IF NAME="DISABLED">
    <TMPL_INCLUDE NAME=myaccount_disabled.tpl>
  <TMPL_ELSE>
    <div class="report_header">
      <div class="fl_left">
        <h2 class="redtxt report_title" title="Alert Report"><span class="fa fa-16 fa-exclamation-triangle pos_2 fa-fw redtxt"></span>
          <span class="urlRptType">Alert History Report</span>
        </h2>
        <br/>
        <TMPL_IF DATE_RANGE>
        <div>
          <strong><span style="display: inline;" class="showurlRpt">Date Range: </span></strong> 
          <span class="urlName"> <TMPL_VAR NAME=DATE_RANGE></span> 
        </div>
        <br>         
        <TMPL_ELSE>
          <TMPL_IF FROM_DATE>
          <div>
            <strong><span style="display: inline;" class="showurlRpt">From Date: </span></strong> 
            <span class="urlName"> <TMPL_VAR NAME=FROM_DATE></span> 
          </div>
          <br>         
          </TMPL_IF>
        
          <TMPL_IF TO_DATE>
          <div>
            <strong><span style="display: inline;" class="showurlRpt">To Date: </span></strong> 
            <span class="urlName"> <TMPL_VAR NAME=TO_DATE></span> 
          </div>
          <br>         
          </TMPL_IF>
        </TMPL_IF>
        <div>
          <strong><span style="display: inline;" class="showurlRpt">Total Alerts Configured: </span></strong> 
          <span class="urlName"> <TMPL_VAR NAME=TOTAL_ALERTS_CONF></span> 
        </div>
        <br>         
        <div>
          <strong><span style="display: inline;" class="showurlRpt">Number of Alert Runs: </span></strong> 
          <span class="urlName"> <TMPL_VAR NAME=TOTAL_ALERTS_RUN></span> 
        </div>
        <br>
        <div>
          <strong><span style="display: inline;" class="showurlRpt">Alert Run with Results: </span></strong> 
          <span class="urlName"> <TMPL_VAR NAME=TOTAL_ALERTS_RESULTS></span> 
        </div>
        <br>         
      </div>
      <div class="fl_right txt_right">
        <div><strong>Today's Date:</strong> <span class="dateTime"><TMPL_VAR NAME="REPORT_TIME"></span></div>
      </div>
      <div class="clear"></div>
      
    </div>
    <TMPL_IF NAME="NO_RESULTS_FOUND">
      <h2>No Results Found</h2>
    <TMPL_ELSE>
      <TMPL_IF TOO_MANY_RECS>
        <h2>Report returned too many results. Try to restrict the date range.</h2>
      <TMPL_ELSE>
        <TMPL_INCLUDE NAME="myaccount/reports/alert_detail_report.tpl">
      </TMPL_IF>
    </TMPL_IF>  
  </TMPL_IF> 
</div>