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

	<ul id="support-links">
	  <li><a target="_blank" href="https://accurint.custhelp.com/cgi-bin/accurint.cfg/php/enduser/chat.php">Live Chat</a></li>
	  <li><a href="javascript:void(0);" onclick="javascript:open_help();">Help?</a></li>
	  <li>1-866-277-8407</li>

	  <TMPL_IF MOBILE_ONLY_USER>
	    <li><a href="javascript:send_event('LOGOUT');">Sign Out</a></li>
	  <TMPL_ELSE>
	  <TMPL_IF NON_BILLABLE_SYSTEM_ADMIN>
	    <li><a href="javascript:send_event('LOGOUT');">Sign Out</a></li>
	  </TMPL_IF>
	  </TMPL_IF>

	  </ul>

        </div>
    </div>
</div>

<div id="modalDiv">
    <img src="<TMPL_VAR IMGPATH>/loading.gif" alt="Running Search" height="40" width="67"/>
    <span>Running Search... Please Wait.</span>
</div>
<div id="modalBlur"></div>
