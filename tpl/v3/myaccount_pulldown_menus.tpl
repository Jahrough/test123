<!-- begin myaccount_pulldown_menus.tpl -->
<style type="text/css">
#myaccountnavlist {
        font-family: Arial, Helvetica, sans-serif;
	font-size:90%;
        line-height:99%;
        margin: 0px;
        padding: 0px;
        position: relative;
}
#myaccountnavlist ul {
        padding:5px 0px 0px;
        font-size:81%;
        list-style:none;
        margin: 0px;
}

#myaccountnavlist li {
    text-align: left;
    list-style:none;
    background-repeat:no-repeat;
    background-position:-3px 0.3em;
    width: auto;
    padding-left: 10px;
    margin-bottom:5px;
    margin-top: 5px;
    margin-left: 15px;
    margin-right: 25px;
}
.pulldownbox {
    display:none;
    position:absolute;
    background-color:#f2f4f1;
    border-left:2px solid #4e8cb9;
    border-bottom:2px solid #4e8cb9;
    border-right:2px solid #4e8cb9;
    z-index:399;
    top:95px;
    width: auto;
    border-bottom: 4px solid #6d6e71 !important;
}
.topBorder {
	position: absolute;
        background-color:#4e8cb9;
	top:0px;
	left:0px;
	width:100%;
	height:1px;
}
.clearBorder {
	position: absolute;
	background-color:#f2f4f1;
	top:0px;
	left:0px;
	width:76px;
	height:1px;
}

</style>

<script language="JavaScript">
  function my_send_event() {
    var df = document.forms[0];
    if (df.MFA_USE_LOGIN) {
      df.MFA_USE_LOGIN.value = 1;
    }
    myaccount_event('OTP/MANAGE_OTP_USER');
  }
</script>
<noscript>Your browser does not support JavaScript!</noscript>
<input type="hidden" name="MFA_USE_LOGIN" value="0">
  
<div id="listmanage" class="pulldownbox" onMouseOver="document.getElementById('listmanage').style.display = 'block';" onMouseOut="document.getElementById('listmanage').style.display = 'none';">
    <div class="topBorder">
        <div class="clearBorder"></div>
    </div>
    <div id="myaccountnavlist">
        <ul>
            <TMPL_IF NAME="SA">
                <li><i>&#8226;</i><a href="javascript:myaccount_event('MANAGE/MANAGE_ACCOUNTS');">Manage Users</a></li>
                <TMPL_UNLESS MOBILE_ONLY_USER>
					<TMPL_IF GROUPS_ENABLED>
						<li><i>&#8226;</i><a href="javascript:myaccount_event('MANAGE/MANAGE_GROUPS');">Manage Groups</a></li>
					</TMPL_IF>
				</TMPL_UNLESS>
                <TMPL_UNLESS NAME="MANAGE_COMPANY_DISABLED">
                    <li><i>&#8226;</i><a href="javascript:myaccount_event('SECURITY/SHOW_COMPANY_SECURITY');">Manage Company</a></li>
                </TMPL_UNLESS>
            </TMPL_IF>
            <TMPL_UNLESS MOBILE_ONLY_USER>
				<TMPL_IF NAME="DYNAMIC_DESKTOP_CHAT">
					<li><i>&#8226;</i><a href="javascript:myaccount_event('DYNAMIC_DESKTOP/MANAGE_CHAT');">Manage Chat Contacts</a></li>
				</TMPL_IF>
			</TMPL_UNLESS>
        </ul>
    </div>
</div>

<TMPL_IF SHOW_CASE_CONNECT>
    <div id="listcc" class="pulldownbox" onMouseOver="document.getElementById('listcc').style.display = 'block';" onMouseOut="document.getElementById('listcc').style.display = 'none';">
    <div class="topBorder"><div class="clearBorder"></div></div>
        <div id="myaccountnavlist">
            <ul>
                <li><i>&#8226;</i><a href="javascript:myaccount_event('CC/MANAGER');">Case Deconfliction</a></li>
                <li><i>&#8226;</i><a href="javascript:myaccount_event('CC/SUBSCR_CONNECT');">Manage Subscribers</a></li>
                <TMPL_IF CASE_AUDITOR_TAB>
                    <li><i>&#8226;</i><a href="javascript:myaccount_event('CC/SHOW_AUDIT');">Case Audit</a></li>
                </TMPL_IF>
            </ul>
        </div>
    </div>
</TMPL_IF>

<div id="credentials" class="pulldownbox" onMouseOver="document.getElementById('credentials').style.display = 'block';" onMouseOut="document.getElementById('credentials').style.display = 'none';">
    <div class="topBorder">
        <div class="clearBorder"></div>
    </div>
    <div id="myaccountnavlist">
        <ul>
            <li><i>&#8226;</i><a href="javascript:myaccount_event('MANAGE/MANAGE_SINGLE_ACCOUNT_PASSWD');">Change Password</a></li>
            <TMPL_IF SHOW_SECURITY_QUESTION_LINK><li><i>&#8226;</i><a href="javascript:myaccount_event('MANAGE/MANAGE_SINGLE_ACCOUNT_SEC_Q');">Change Security Question(s)</a></li></TMPL_IF>
            <TMPL_IF ENABLE_SITEKEYS> 
                <li><i>&#8226;</i><a href="javascript:myaccount_event('MANAGE/SITEKEY');">Secure Login Image</a></li>
            </TMPL_IF>
            <TMPL_UNLESS CSAML_LOGIN>
            <TMPL_IF NAME="MFA_MACHINE_ACTIVATE_ENABLED"> 
            <TMPL_UNLESS NAME="MFA_COMPANY_IP_RESTRICT_NOROAM">
            <li><i>&#8226;</i><a href="javascript:my_send_event();">Manage Security Tokens</a></li>
            </TMPL_UNLESS>
            </TMPL_IF>
            </TMPL_UNLESS>
        </ul>
    </div>
</div>

<div id="listactivity" class="pulldownbox" onMouseOver="document.getElementById('listactivity').style.display = 'block';" onMouseOut="document.getElementById('listactivity').style.display = 'none';">
    <div class="topBorder">
        <div class="clearBorder"></div>
    </div>
    <div id="myaccountnavlist">
        <ul>
            <TMPL_IF NAME="ENABLE_GROUP_REPORTS">
                <li><i>&#8226;</i><a href="javascript:myaccount_event('MYACCOUNT/SHOW_ACTIVITY','<TMPL_VAR NAME=ACTION_ADMIN>');">User Reporting</a></li>
                <TMPL_IF NAME="SA">
					<li><i>&#8226;</i><a href="javascript:myaccount_event('MYACCOUNT/SHOW_GROUP_REPORTING');">Group Reporting</a></li>
					<li><i>&#8226;</i><a href="javascript:myaccount_event('MYACCOUNT/SHOW_USER_REPORTING');">User List Reporting</a></li>
					<li><i>&#8226;</i><a href="javascript:myaccount_event('MYACCOUNT/SHOW_MANAGEMENT_REPORTING');">Management Reporting</a></li>
				</TMPL_IF>
            </TMPL_IF>
        </ul>
    </div>
</div>

<div id="listreports" class="pulldownbox" onMouseOver="document.getElementById('listreports').style.display = 'block';" onMouseOut="document.getElementById('listreports').style.display = 'none';">
    <div class="topBorder">
        <div class="clearBorder"></div>
    </div>
    <div id="myaccountnavlist">
        <ul>
            <TMPL_IF NAME="SHOW_ONLINE_REPORTS">
                <li><i>&#8226;</i><a href="javascript:myaccount_event('MYACCOUNT/SHOW_ORDER_MGR_REPORTS');">Online Reports</a></li>
            </TMPL_IF>
			<TMPL_UNLESS NAME="MOBILE_ONLY_USER">
				<TMPL_IF NAME="SHOW_COURT_REPORTS">
					<li><i>&#8226;</i><a href="javascript:myaccount_event('MYACCOUNT/SHOW_ORDER_MGR_COURT');">Court Search Reports</a></li>
				</TMPL_IF>

				<TMPL_IF NAME="SHOW_POLICE_RECORDS">
					<li><i>&#8226;</i><a href="javascript:myaccount_event('MYACCOUNT/SHOW_ORDER_MGR_POLICE_RECORDS');">Police Records Reports</a></li>
				</TMPL_IF>

				<TMPL_IF NAME="ALLOW_BATCH_JOBS">
					<li><i>&#8226;</i><a href="javascript:myaccount_event('MYACCOUNT/SHOW_ORDER_MGR_BATCH','<TMPL_VAR NAME=ACTION_BATCH>');">View Batch Results</a></li>
				</TMPL_IF>

				<TMPL_IF NAME="ALLOW_WATCHDOG">
					<li><i>&#8226;</i><a href="javascript:myaccount_event('MYACCOUNT/SHOW_ORDER_MGR_WATCHDOG','<TMPL_VAR NAME=ACTION_BATCH>');">View Watchdog Results</a></li>
				</TMPL_IF>

				<TMPL_UNLESS CSAML_LOGIN>
				<TMPL_IF NAME="SHOW_ALERTING">
					<li><i>&#8226;</i><a href="javascript:myaccount_event('ALERT/SHOW_ALERTS_MGR');">Person Alerts</a></li>
				</TMPL_IF>
				</TMPL_UNLESS>

				<TMPL_IF NAME="SHOW_TRIMERGE_REPORTS">
					<li><i>&#8226;</i><a href="javascript:myaccount_event('MYACCOUNT/SHOW_ORDER_TRIMERGE_REPORTS');">FCRA TriMerge Reports</a></li>
				</TMPL_IF>

				<TMPL_IF NAME="SHOW_GROUP_REPORTS">
					<TMPL_IF SA>
						<li><i>&#8226;</i><a href="javascript:myaccount_event('MYACCOUNT/SHOW_ORDER_MGR_GROUP');">Group Admin Reports</a></li>
					</TMPL_IF>
				</TMPL_IF>
			</TMPL_UNLESS>
        </ul>
    </div>
</div>
<!-- end myaccount_pulldown_menus.tpl -->
