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
                <TMPL_IF LE>
                    <li><a style="cursor: help;" href="javascript:void(0);" onClick="general_win('https://learn.lexisnexis.com/lexisnexis/user_home.aspx?portal=gov','HelpWindow',780,490,1,1,1,1,1,0);">Help</a></li>
                    <li><a href="http://risk.lexisnexis.com/contact" target="_blank"> Contact</a></li>
                <TMPL_ELSE>
                    <TMPL_IF GOV>
                        <li><a style="cursor: help;" href="javascript:void(0);" onClick="general_win('https://learn.lexisnexis.com/lexisnexis/user_home.aspx?portal=gov','HelpWindow',780,490,1,1,1,1,1,0);">Help</a></li>
                        <li><a href="http://risk.lexisnexis.com/contact" target="_blank"> Contact</a></li>
                    <TMPL_ELSE>
                        <TMPL_IF COL>
                            <li><a style="cursor: help;" href="javascript:void(0);" onClick="general_win('https://learn.lexisnexis.com/lexisnexis/user_home.aspx?portal=col','HelpWindow',780,490,1,1,1,1,1,0);">Help</a></li>
                            <li><a href="http://risk.lexisnexis.com/contact" target="_blank"> Contact</a></li>
                        <TMPL_ELSE>
                            <li><a style="cursor: help;" href="javascript:void(0);" onClick="general_win('https://learn.lexisnexis.com/lexisnexis/user_home.aspx','HelpWindow',780,490,1,1,1,1,1,0);">Help</a></li>
                            <li><a href="http://risk.lexisnexis.com/contact" target="_blank"> Contact</a></li>
                        </TMPL_IF>
                    </TMPL_IF>
                </TMPL_IF>
            </ul>
        </div>
    </div>
</div>

<div id="modalDiv">
    <img src="<TMPL_VAR IMGPATH>/loading.gif" alt="Running Search" height="40" width="67"/>
    <span>Processing... please wait.</span>
</div>
<div id="modalBlur"></div>
