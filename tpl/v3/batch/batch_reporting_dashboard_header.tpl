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
                        <TMPL_UNLESS IRB>
                            <TMPL_UNLESS IRS>
                                <li><b>24/7 Search and Technical Assistance&nbsp;1-866-277-8764 or <a target="_blank" style="color:#fff;" href="mailto:batchtechsupport@lexisnexis.com">Batch Tech Support Email</a></b></li>
                            </TMPL_UNLESS>
                        </TMPL_UNLESS>
                        <TMPL_IF BATCH_DASHBOARD_ONLY>
                              <li><a trackid="hdr_contact_us" href="javascript:send_event('LOGOUT');">Sign Out</a>&nbsp;&nbsp;</li>
                        </TMPL_IF>
                        <li><a trackid="hdr_help" href="#" onClick="general_win('<TMPL_VAR NAME=HLPPATH>/batch_dashboard_help.html','HelpWindow',790,600,1,1,1,1,1,0);void(0);">Help</a>&nbsp;&nbsp;</li>
                    </ul>
                </TMPL_UNLESS>
            </TMPL_UNLESS>
        </div>
    </div>
</div>

<div id="modalDiv">
    <img src="<TMPL_VAR IMGPATH>/loading.gif" alt="Running Search" height="40" width="67"/>
    <span>Running Search... Please Wait.</span>
</div>
<div id="modalBlur"></div>
