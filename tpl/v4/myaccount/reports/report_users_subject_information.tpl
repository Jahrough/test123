<div class="report_header">
    <div class="fl_left">
        <h2 class="redtxt report_title" title="User"><span class="urlIcon"><i class="fa fa-16 fa-user pos_2 fa-fw redtxt"></i></span>
                <span class="urlRptType"><TMPL_VAR NAME="REPORT_TITLE"></span>
        </h2>
        <br/>
        <TMPL_IF REPORT_LOGIN_ID>
            <div>
                <strong><span style="display: inline;" class="showurlRpt">Login Id: </span></strong> 
                <span class="urlName"> <TMPL_VAR NAME=REPORT_LOGIN_ID></span> 
            </div>
            <br>         
            <div>
                <strong><span style="display: inline;" class="showurlRpt">User Id: </span></strong> 
                <span class="urlName"> <TMPL_VAR NAME=REPORT_USER_ID></span> 
            </div>
            <br>                     
        </TMPL_IF>
        <TMPL_IF REPORT_GROUP_ID>
            <div>
                <strong><span style="display: inline;" class="showurlRpt">Group Id: </span></strong> 
                <span class="urlName"> <TMPL_VAR NAME=REPORT_GROUP_ID></span> 
            </div>
            <br>     
            <TMPL_IF REPORT_GROUP_DESC>
                <div>
                    <strong><span style="display: inline;" class="showurlRpt">Group Desc: </span></strong> 
                    <span class="urlName"> <TMPL_VAR NAME=REPORT_GROUP_DESC></span> 
                </div>
                <br>                   
            </TMPL_IF>            
        </TMPL_IF>
        
    </div>
    <div class="fl_right txt_right">
        <div><strong>Today's Date:</strong> <span class="dateTime"><TMPL_VAR NAME="REPORT_TIME"></span></div>
        <br/>
        <div class="rpt_note">Note: the search results listed may not match your invoice.</div>
    </div>
    <div class="clear"></div>
</div>

