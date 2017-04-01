<div id="reportcontents"> 
        <TMPL_IF NAME="DISABLED">
            <TMPL_INCLUDE NAME=myaccount_disabled.tpl>
        <TMPL_ELSE>
            <div class="report_header">
              <div class="fl_left">
                <h2 class="redtxt report_title" title="Entitlement"><span class="fa fa-16 fa-file-text-o pos_2 fa-fw redtxt"></span>
                  <span class="urlRptType"><TMPL_VAR REPORT_TITLE></span>
                </h2>
                <br/>
                <div>
                  <strong><span style="display: inline;" class="showurlRpt">Name: </span></strong> 
                  <span class="urlName"><TMPL_UNLESS REPORT_BY_USER>All Admins<TMPL_ELSE><TMPL_VAR ADMIN_NAME> (<TMPL_VAR REPORT_LOGIN_ID>)</TMPL_UNLESS></span> 
                </div>
                <TMPL_UNLESS SHOW_ENTITLEMENT_REPORTS>
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
        <TMPL_IF ADMIN_REPORT_NUM_DAYS>
        <div>
            <strong><span style="display: inline;" class="showurlRpt">Number Of Days: </span></strong> 
            <span class="urlName"> <TMPL_VAR NAME=ADMIN_REPORT_NUM_DAYS></span> 
        </div>
        <br>
        </TMPL_IF>
                </TMPL_UNLESS>
              </div>
              <div class="fl_right txt_right">
                <div><strong>Today's Date:</strong> <span class="dateTime"><TMPL_VAR NAME="REPORT_TIME"></span></div>
              </div>
              <div class="clear"></div>
            </div>            
            <TMPL_IF NAME="NO_RESULTS_FOUND">
                    <h2>No Results Found</h2>
            <TMPL_ELSE>
              <TMPL_IF NAME="SHOW_ENTITLEMENT_REPORTS">
                <TMPL_INCLUDE NAME="myaccount/reports/admin_entitlement_report.tpl">
              </TMPL_IF>
              <TMPL_IF NAME="SHOW_ADMIN_ACTIVITY_REPORTS">
                <TMPL_INCLUDE NAME="myaccount/reports/admin_activity_report.tpl">
              </TMPL_IF>              
            </TMPL_IF>       
        </TMPL_IF>
</div>