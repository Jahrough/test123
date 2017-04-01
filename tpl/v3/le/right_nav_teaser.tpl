<div class="ad">
    <div class="ad-accurint-news">
        <div class="adLabel"></div>
        <div class="adBody">
	    <div><a title="Important Security enhancement - Multi Factor Authentication" href="javascript:void(0);" onClick="general_win('<TMPL_VAR NAME=HTMLPATH>/mfa_announcement_gov_le_popup.html','MFA',625,200,0,0,0,1,1,0);">Important Security enhancement - Multi Factor Authentication</a></div>
	    <div><a title="Now Available! Advanced Motor Vehicles Search" href="javascript:void(0);" onClick="general_win('<TMPL_VAR NAME=HTMLPATH>/le/advanced_motor_vehicle_popup.html','MOBILE',550,275,0,0,0,1,1,0);">Now Available! Advanced Motor Vehicles Search (8/6/2015)</a></div>
	    <div><a title="Important Security Message" href="javascript:void(0);" onClick="general_win('<TMPL_VAR NAME=HTMLPATH>/security_message1.html','SecurityMessage',600,400,0,0,0,1,1,0);">Important Security Message</a></div>
	    <div><a title="Learn more! Click here to download a complimentary Get Started Guide." href="https://learn.lexisnexis.com/lexisnexis/user_activity_info.aspx?id=432" target="_blank">Learn more! Click here to download a complimentary Get Started Guide.</a></div>
	    <div><a title="Go Mobile with Accurint" href="javascript:void(0);" onClick="general_win('<TMPL_VAR NAME=HTMLPATH>/le/accurint_mobile_popup.html','MOBILE',600,450,0,0,0,1,1,0);">Go Mobile with Accurint</a></div>
        </div>
        <div class="adFoot">
            <a title="View Past Announcements" href="javascript:send_event('LOGIN/SHOW_WELCOME');">View Past Announcements</a>
        </div>
    </div>

    <TMPL_IF LE>
	
        <a title="Share your Success Story" href="javascript:show_post_popup('MYACCOUNT/SHOW_SHARE_SUCCESS_EMAIL','ShareSuccess',600,550);"><div class="ad-share-success"></div></a>

	<a title="Accurint Virtual Crime Center" href="http://solutions.lexisnexis.com/avcc_info" target="_blank"><div class="ad-avcc"></div></a>

	<a title="LexisNexis University School of Law Enforcement" href="http://learn.lexisnexis.com/lnpsa" target="_blank"><div class="ad-lexisnexis-university"></div></a>

    </TMPL_IF>

    <div class="ad-security-reminder">
        <div class="adLabel"></div>

        <div class="security-reminder-hover"> 
 	            <span class="security_lock left"></span> 
 	            <b>SECURITY REMINDER</b> 
 	            <span class="security_lock right"></span> 
 	            <br/> 
 	            <br/>If your last login session was not on <b><TMPL_VAR NAME=LAST_LOGIN_DATE></b>, please contact your system administrator. 
        </div> 
        <div class="adBody">You last signed in on <a title="Last Login Date" href="javascript:show_post_popup('MYACCOUNT/SHOW_PREFERENCES','MyAccountWin','','',1,1,1,1,1,0);"><TMPL_VAR NAME=LAST_LOGIN_DATE></a>.</div>
        <div class="adFoot">
            <a href="javascript:void(0)" onclick="window.open('http://www.accurint.com/security_center/index.html?source=le');" title="Security Center">Security Center</a> | <a href="javascript:void(0)" onclick="ad_securityTips(0);" title="Show Security Tips">Security Tips</a>
        </div>
    </div>
</div>
