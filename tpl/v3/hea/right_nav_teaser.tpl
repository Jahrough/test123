<div class="ad">
    <div class="ad-accurint-news" style="height:85px;">
        <div class="adLabel"></div>
        <div class="adBody">
	    <div><a href="javascript:void(0);" onClick="general_win('<TMPL_VAR NAME=HTMLPATH>/security_message1.html','SecurityMessage',600,400,0,0,0,1,1,0);">Important Security Message</a></div>
            <div><a href="javascript:void(0);" onClick="general_win('<TMPL_VAR NAME=HTMLPATH>/mfa_announcement_gov_le_popup.html','MFA',625,200,0,0,0,1,1,0);">Important Security enhancement - Multi Factor Authentication</a></div>
	    <div><a href="https://learn.lexisnexis.com/lexisnexis/user_activity_info.aspx?id=489" target="_blank">Learn more! Click here to download a complimentary Get Started Guide.</a></div>
        </div>
        <div class="adFoot">
            <a href="javascript:send_event('LOGIN/SHOW_WELCOME');">View Past Announcements</a>
        </div>
    </div>

    <TMPL_UNLESS BLIND>
      <TMPL_UNLESS HIDE_RECENT_SEARCHES>
        <div class="ad-recent-searches">
            <div class="adLabel"></div>
            <div id="rsContainer">
                <tmpl_if rcs_loop>
                <tmpl_loop rcs_loop>
                    <tmpl_if title>
                   <span>
                       <div class="rsLeft" title="<tmpl_var title>"><tmpl_var type> </div> 
                       <div class="rsRight">
                           <tmpl_if lnk>
                               <a href="javascript:rerun_recentSearches(<tmpl_var lnk>)">&nbsp;<tmpl_var crit></a>
                           <tmpl_else>
                               &nbsp;<tmpl_var crit>
                           </tmpl_if>
                       </div>
                   </span>
                   <br>
                   </tmpl_if>
                </tmpl_loop>
                <tmpl_else>
                   <span>
                       <div class="rsLeft" title="No Activity">&nbsp;&nbsp;No Activity</div>
                       <div class="rsRight">(Last 24 Hours)</div>
                   </span>
                    <br>
                </tmpl_if>
            </div>
            <div class="view-all">
                <a href="javascript:show_post_popup('MYACCOUNT/SHOW_ALL_RECENT','MyAccountWin','','',1,1,1,1,1,0,'<TMPL_VAR NAME=ACTION_ADMIN>');" title="Show All Recent Searches">View All &#8594;</a>
            </div>
            <div class="adFoot">
                <div>Use of Recent Searches is subject to<br> your <a href="javascript:alert('The selection of a recent search will be subject to your currently selected permissible purposes certified to at login of this session pursuant to the Gramm-Leach-Bliley Act (15 U.S.C. § 6801 et seq.) and its implementing regulations and the Driver\'s Privacy Protection Act (18 U.S.C. § 2721 et seq.) and related state laws.')">Permissible Use</a> selections.</div>
            </div>
        </div>
      </TMPL_UNLESS>
    </TMPL_UNLESS>
    
    <div class="ad-rotating">
        <div class="ad-accurint-mobile">
            <a href="javascript:void(0);" onClick="javascript:general_win('<TMPL_VAR NAME=HTMLPATH>/gov/accurint_mobile_popup.html','MOBILE',600,450,0,0,0,1,1,0);">&nbsp;</a>
        </div>
        <div class="ad-fraud">
            <a href="javascript:void(0);" onClick="javascript:general_win('http://www.fraudoftheday.com','MOBILE',1000,650,1,1,1,1,1,1);">&nbsp;</a>
        </div>
        <div class="ad-university">
            <a href="javascript:show_post_popup('SAML/ACCESS_LNU','LNINUniversity','1040','600',1,1,1,1,1,1);">&nbsp;</a>
        </div>
    </div>

    <div class="ad-security-reminder">
        <div class="adLabel"></div>

        <div class="security-reminder-hover"> 
 	            <span class="security_lock left"></span> 
 	            <b>SECURITY REMINDER</b> 
 	            <span class="security_lock right"></span> 
 	            <br/> 
 	            <br/>If your last login session was not on <b><TMPL_VAR NAME=LAST_LOGIN_DATE></b>, please contact your system administrator. 
        </div> 
        <div class="adBody">You last signed in on <a href="javascript:show_post_popup('MYACCOUNT/SHOW_PREFERENCES','MyAccountWin','','',1,1,1,1,1,0);"><TMPL_VAR NAME=LAST_LOGIN_DATE></a>.</div>
        <div class="adFoot">
            <a href="javascript:void(0)" onclick="window.open('http://www.accurint.com/security_center/index.html?source=le');" title="Security Center">Security Center</a> | <a href="javascript:void(0)" onclick="ad_securityTips(0);" title="Show Security Tips">Security Tips</a>
        </div>
    </div>
</div>


<TMPL_INCLUDE NAME="security_tips_legov.tpl">
