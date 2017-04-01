<script type="text/javascript">
var vertical = '<TMPL_VAR NAME=APPLICATION_TYPE>';
function open_help() {
    if (vertical == 'gov' || vertical == 'le') {
        window.open ("https://learn.lexisnexis.com/lexisnexis/user_home.aspx?portal=gov");
    } else {
        window.open ("https://learn.lexisnexis.com/lexisnexis/user_home.aspx");
    }
}
function open_help_html(help_url,help_win) {
    general_win('<TMPL_VAR NAME=HLPPATH>/' + help_url,help_win,780,490,1,1,1,1,1,0);
}
function myaccount_event(param1,param2) { // IE 6 Needs
    if (param2) {
	setTimeout(function(){send_event(param1,param2)},250);
    } else {
	setTimeout(function(){send_event(param1)},250);
    }
    showpw();
}
</script>

<noscript>Your browser does not support JavaScript!</noscript>
<div class="topBarCon">
    <div class="topBarConMiddle" style="margin-left:5px;">
        <div class="left">
            <ul>
                <TMPL_IF GOV>
                    <li class="ln-logo ln-logo-gov"><div>&nbsp;</div></li>
                </TMPL_IF>
                <TMPL_IF LE>
                    <li class="ln-logo ln-logo-le"><div>&nbsp;</div></li>
                </TMPL_IF>
                <TMPL_IF HEA>
                    <li class="ln-logo ln-logo-hea"><div>&nbsp;</div></li>
                </TMPL_IF>
            </ul>
        </div>
        <div class="right">
            <TMPL_UNLESS IRS>
                <TMPL_UNLESS IRB>
                    <ul id="support-links">
                        <li><a target="_blank" href="https://accurint.custhelp.com/cgi-bin/accurint.cfg/php/enduser/chat.php">Live Chat</a></li>
                        <li><a href="javascript:void(0);" onclick="javascript:open_help();">Help?</a></li>
                        <li>1-866-277-8407</li>
                        <li>
							<TMPL_IF MOBILE_ONLY_USER>
								<a href="javascript:send_event('LOGOUT');">Sign Out</a>
							<TMPL_ELSE>
							<TMPL_IF NON_BILLABLE_SYSTEM_ADMIN>
								<a href="javascript:send_event('LOGOUT');">Sign Out</a>
							<TMPL_ELSE>
								<TMPL_UNLESS SHOW_MYACC_WITHOUT_PARENT><a href="javascript:void(0);" onClick="self.onerror = function() {<TMPL_UNLESS NON_BILLABLE_SYSTEM_ADMIN>window.close();<TMPL_ELSE>javascript:send_event('LOGOUT');</TMPL_UNLESS> return true;}; if (opener) {if (!opener.closed){opener.focus()}}; <TMPL_UNLESS NON_BILLABLE_SYSTEM_ADMIN>window.close();<TMPL_ELSE>javascript:send_event('LOGOUT');</TMPL_UNLESS>">Close</a></TMPL_UNLESS>
							</TMPL_IF>
							</TMPL_IF>
                        </li>
                    </ul>
                </TMPL_UNLESS>
            </TMPL_UNLESS>
        </div>
    </div>
</div>

<div id="modalDiv">
    <img src="<TMPL_VAR IMGPATH>/loading.gif" alt="Running Search" height="40" width="67"/>
    <span>Processing… please wait.</span>
</div>
<div id="modalBlur"></div>
