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
                <!-- need to use one file for all accurint headers.. too many files currently; add tmpl_if conditions and change the right nav content as needed -->
                <li id="li_print"><a trackid="hdr_my_account" href="javascript:print_report();">Print Report</a></li>
                <li><a trackid="hdr_my_account" href="javascript:show_post_popup('LOGIN/SHOW_POPUP','AdminContactUsWin','550','775',0,0,0,1,1,0,'','contact_select');">Contact Us</a></li>
                <li>
                   <TMPL_IF GOV> 
                       <a style="cursor: help;" trackid="hdr_contact_us" href="https://learn.lexisnexis.com/lexisnexis/user_home.aspx?portal=gov" target="_blank">Help</a>
                   </TMPL_IF>
                   <TMPL_IF LE> 
                       <a style="cursor: help;" trackid="hdr_contact_us" href="https://learn.lexisnexis.com/lexisnexis/user_home.aspx?portal=gov" target="_blank">Help</a>
                   </TMPL_IF>
                </li>
            </ul>
        </div>
    </div>
</div>
