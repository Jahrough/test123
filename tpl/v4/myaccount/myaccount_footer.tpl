
    <form name="MYACCOUNT_REPORTS" action="<TMPL_VAR NAME=ACTION>" method="post" id="myreports">
            <TMPL_INCLUDE NAME="common_hidden_input.tpl">
            <INPUT type="hidden" NAME="SKIN_TYPE" VALUE="<TMPL_VAR NAME=SKIN_TYPE>">
            <INPUT type="hidden" NAME="APPLICATION_TYPE" VALUE="<TMPL_VAR NAME=APPLICATION_TYPE>">
            <INPUT type="hidden" NAME="EVENT" VALUE="">
            <INPUT type="hidden" NAME="REPORT_BILLGROUP_COMPANY_ID" VALUE="<TMPL_VAR NAME=ACTIVE_COMPANY_ID>">
            <INPUT type="hidden" NAME="REPORT_BILLGROUP_COMPANY_TYPE" VALUE="<TMPL_VAR NAME=ACTIVE_COMPANY_TYPE>">
            <INPUT type="hidden" NAME="REPORT_LOGIN_ID" VALUE="<TMPL_VAR NAME=REPORT_LOGIN_ID>">
            <INPUT type="hidden" NAME="REPORT_USER_ID" VALUE="<TMPL_VAR NAME=REPORT_USER_ID>">
            <INPUT type="hidden" NAME="REPORT_GROUP_ID" VALUE="<TMPL_VAR NAME=REPORT_GROUP_ID>">
            <INPUT type="hidden" NAME="REPORT_GROUP_DESC" VALUE="<TMPL_VAR NAME=REPORT_GROUP_DESC>">
            <INPUT type="hidden" NAME="REPORT_GROUP_NAME" VALUE="<TMPL_VAR NAME=REPORT_GROUP_NAME>">
            <INPUT type="hidden" NAME="REPORT_TYPE" VALUE="<TMPL_VAR NAME=REPORT_TYPE>">
            <INPUT type="hidden" NAME="FROM_DATE" VALUE="<TMPL_VAR NAME=FROM_DATE>">
            <INPUT type="hidden" NAME="TO_DATE" VALUE="<TMPL_VAR NAME=TO_DATE>">
            <INPUT type="hidden" NAME="DATE_RANGE_TYPE" VALUE="">
            <INPUT type="hidden" NAME="IS_ADMIN_REPORTING" VALUE="<TMPL_VAR NAME=IS_ADMIN_REPORTING>">
            <INPUT type="hidden" NAME="REPORT_BILLGROUPS" VALUE="">            
            <INPUT type="hidden" NAME="REPORT_USER_STATUS" VALUE="">            
            <INPUT type="hidden" NAME="REPORT_SHOW_IN_MODAL" VALUE="0">            
            <INPUT type="hidden" NAME="REPORT_MANAGEMENT_REPORT_TYPE" VALUE="">
            <INPUT type="hidden" NAME="REP_DATE_RECENT" VALUE="">
            <INPUT type="hidden" NAME="REP_DATE_RECENT_LABEL" VALUE=""> 
            <INPUT type="hidden" NAME="REPORT_BILLGROUP_DESCRIPTION" VALUE="<TMPL_VAR REPORT_BILLGROUP_DESCRIPTION>">           
    </form>


<div id="footer" class="gd_grey2">
      	<span class="fl_right">24/7 Search and Technical Assistance: 1 (866) 277-8407</span>
        <span class="clear"></span>
      	<a href="http://www.lexisnexis.com/about-us" target="_blank" title="About LexisNexis">About LexisNexis</a> | 
        <a href="http://www.lexisnexis.com/risk/terms/" target="_blank" title="Terms &amp; Conditions">Terms &amp; Conditions</a> | 
        <a href="https://risk.custhelp.com/app/ask" target="_blank" title="Contact Us">Contact Us</a>
        <br>
        <a target="_blank" href="http://www.lexisnexis.com/terms/copyright.aspx" title="Copyright">Copyright &COPY;</a> <span class="copyrightyear"></span> LexisNexis.  All rights reserved.
</div>

<div id="mainModal" class="modal fade bs-example-modal-lg" tabindex="-1" aria-live="polite" role="dialog" aria-labelledby="reportModel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header"><button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">×</span><span class="sr-only">Close</span></button>          
                <h4 class="modal-title"> Loading &nbsp;</h4>
            </div>
            <div class="modal-body">
                <div class="modal-body"><br /><br /><br /><span id="loading"><i class="fa fa-3x fa-refresh fa-spin"></i><br /><br />loading</span><br /><br /></div>
            </div>
        </div>
    </div>
</div>
    <div id="refresh-session-modal" class="modal fade bs-example-modal-sm" aria-live="polite" role="dialog" aria-labelledby="refreshSessionModal" aria-hidden="true" data-keyboard="false" data-backdrop="static">
        <div class="modal-dialog trap">
            <div class="modal-content">
                <div class="modal-header">
                    <h2 class="modal-title">Security Time Out</h2>
                </div>
                <div class="modal-body">
                    <div>
                        <span id="session_refresh_message">Your session will expire in <span id="remaining_minutes">0</span> minutes (about <span id="sess_expires_at">11:23:45 EST</span>) unless you refresh your session by clicking OK below</span>
                        <span id="session_expired_message" class="hidden">Your session has expired due to inactivity. Please click OK below to sign back in.</span>
                        <br/><br/><br/>
                    </div>
                </div>
                <div class="modal-footer">
                    <div>
                        <button id="session_refresh_btn" class="btn btn-default" onclick="if (window.opener){window.opener.refresh_web20_session()}else{refresh_web20_session()};" type="button">&nbsp;&nbsp;OK&nbsp;&nbsp;</button>
                        <button id="session_expired_btn" class="btn btn-default hidden" onclick="if(window.opener){window.opener.web20_auto_logout()}else{web20_auto_logout()};" type="button">&nbsp;&nbsp;OK&nbsp;&nbsp;</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div id="ie8-modal" class="modal">
        <div class="well well-sm"><img class="loading-spinner" src="<TMPL_VAR NAME=IMGPATH>/loading_spinner.gif" width="35" height="35" alt="Loading" />&nbsp;<span class="loading-text"></span></div>
    </div>
