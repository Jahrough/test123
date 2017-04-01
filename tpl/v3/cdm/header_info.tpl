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
                    <li><a title="Open help" style="cursor: help;" href="javascript:void(0);" onClick="general_win('<TMPL_VAR NAME=HLPPATH>/v3/le/batch/batch_how_to.html','HelpWindow',780,490,1,1,1,1,1,0);">Help</a></li>
                 <li><a title="Open contact" href="http://risk.lexisnexis.com/contact" target="_blank"> Contact</a></li>

                <TMPL_ELSE>
                <TMPL_IF GOV>
                    <li><a title="Open help" style="cursor: help;" href="javascript:void(0);" onClick="general_win('<TMPL_VAR NAME=HLPPATH>/v3/gov/batch/batch_how_to.html','HelpWindow',780,490,1,1,1,1,1,0);">Help</a></li>
                 <li><a title="Open contact" href="http://risk.lexisnexis.com/contact" target="_blank"> Contact</a></li>

                <TMPL_ELSE>
                <TMPL_IF HEA>
                    <li><a style="cursor: help;" href="javascript:void(0);" onClick="general_win('<TMPL_VAR NAME=HLPPATH>/v3/hea/batch/batch_how_to.html','HelpWindow',780,490,1,1,1,1,1,0);">Help</a></li>
                 <li><a href="http://risk.lexisnexis.com/contact" target="_blank"> Contact</a></li>

                <TMPL_ELSE>
                <TMPL_IF COL>
                    <li><a style="cursor: help;" href="javascript:void(0);" onClick="general_win('<TMPL_VAR NAME=HLPPATH>/col/batch/batch_how_to.html','HelpWindow',780,490,1,1,1,1,1,0);">Help</a></li>
                 <li><a href="http://risk.lexisnexis.com/contact" target="_blank"> Contact</a></li>

                <TMPL_ELSE>
                    <li><a style="cursor: help;" href="javascript:void(0);" onClick="general_win('<TMPL_VAR NAME=HLPPATH>/v3/batch/batch_how_to.html','HelpWindow',780,490,1,1,1,1,1,0);">Help</a></li>
                 <li><a href="http://risk.lexisnexis.com/contact" target="_blank"> Contact</a></li>
				</TMPL_IF>
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



<FORM NAME="BATCH" action="<TMPL_VAR NAME=ACTION_BATCH>" METHOD="POST" <TMPL_VAR FORM_ARGS>>
  <TMPL_INCLUDE NAME="common_hidden_input.tpl">
  <INPUT type=hidden NAME="SKIN_TYPE" VALUE="<TMPL_VAR NAME=SKIN_TYPE>">
  <INPUT type=hidden NAME="APPLICATION_TYPE" VALUE="<TMPL_VAR NAME=APPLICATION_TYPE>">

     <div class="batchCon" style="border-radius: 8px;">
        <div>

