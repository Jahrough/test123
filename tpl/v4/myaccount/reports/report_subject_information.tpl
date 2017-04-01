<div class="report_header">
    <div class="fl_left">
        <h2 class="redtxt report_title" title="User"><TMPL_UNLESS DOWNLOAD><span class="urlIcon"><TMPL_UNLESS BILLGROUP_ACTIVITY_REPORTS><i class="fa fa-16 fa-user pos_2 fa-fw redtxt"></i><TMPL_ELSE><i class="fa fa-16 fa-history pos_1 fa-fw redtxt"></i></TMPL_UNLESS></span></TMPL_UNLESS>
            <TMPL_IF NAME="REPORT_TYPE_SUMMARY_REPORT">
                <span class="urlRptType">Summary Report</span>
            <TMPL_ELSE>
                <span class="urlRptType">Detail Report</span>                    
            </TMPL_IF>
        </h2>
        <br/>
        <TMPL_IF BILLGROUP_ACTIVITY_REPORTS>
            <div>
                <strong><span style="display: inline;" class="showurlRpt">Billgroup Activity</span></strong> 
            </div>
            <br>         
        </TMPL_IF>
        <TMPL_IF REPORT_LOGIN_ID>
            <div>
                <strong><span style="display: inline;" class="showurlRpt">Login Id: </span></strong> 
                <span class="urlName"> <TMPL_VAR NAME=REPORT_LOGIN_ID></span> 
            </div>
            <br>         
        </TMPL_IF>
        <TMPL_IF REPORT_GROUP_ID>
            <TMPL_IF REPORT_GROUP_NAME>
                <div>
                    <strong><span style="display: inline;" class="showurlRpt">Group: </span></strong> 
                    <span class="urlName"> <TMPL_VAR NAME=REPORT_GROUP_NAME></span> 
                </div>
                <br>                   
            </TMPL_IF>
        </TMPL_IF>
        <TMPL_IF DATE_RANGE>
            <div>
                <strong><span style="display: inline;" class="showurlRpt">Date Range: </span></strong> 
                <span class="urlName"> <TMPL_VAR NAME=DATE_RANGE></span> 
            </div>
            <br>         
        <TMPL_ELSE>
            <div>
                <strong><span style="display: inline;" class="showurlRpt">Date Range: </span></strong> 
                <span class="urlName"><TMPL_VAR NAME=FROM_DATE> - <TMPL_VAR NAME=TO_DATE></span> 
            </div>
            <br>
        </TMPL_IF>
        <TMPL_IF REPORT_NUM_DAYS>
        <div>
            <strong><span style="display: inline;" class="showurlRpt">Number Of Days: </span></strong> 
            <span class="urlName"> <TMPL_VAR NAME=REPORT_NUM_DAYS></span> 
        </div>
        <br>
        </TMPL_IF>
    </div>
    <div class="fl_right txt_right">
        <div><strong>Today's Date:</strong> <span class="dateTime"><TMPL_VAR NAME="REPORT_TIME"></span></div>
        <br/>
        <div class="rpt_note">Note: the search results listed may not match your invoice.</div>
    </div>
    <div class="clear"></div>
</div>

