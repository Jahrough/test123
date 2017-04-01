<div id="reportcontents">	
          <TMPL_IF NAME="DISABLED">
              <TMPL_INCLUDE NAME=myaccount_disabled.tpl>
          <TMPL_ELSE>
            <div class="report_header">
              <div class="fl_left">
                <h2 class="redtxt report_title" title="User"><span class="urlIcon"><span class="fa fa-16 fa-list pos_2 fa-fw redtxt"></span></span>
                  <span class="urlRptType">User List Report</span>
                </h2>
                <br/>
                <div>
                  <strong><span style="display: inline;" class="showurlRpt">User Status: </span></strong> 
                  <span class="urlName"> <TMPL_VAR NAME=USER_STATUS_DESCRIPTION></span> 
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
                <TMPL_IF NAME="USER_LIST_REPORT">
                     <TMPL_INCLUDE NAME="myaccount/reports/user_list_report.tpl">      
                </TMPL_IF>
            </TMPL_IF>    
         </TMPL_IF>
</div>    
