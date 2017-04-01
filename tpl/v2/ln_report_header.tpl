<form name="REPORT" action="<TMPL_VAR NAME=ACTION>">
 <TMPL_INCLUDE NAME=common_hidden_input.tpl>
 <input type="hidden" name="EVENT" value="">
 <input type=hidden name=CURRENT_EVENT VALUE=<TMPL_VAR NAME=CURRENT_EVENT>>
 <input type=hidden name=REFERENCE_CODE VALUE=<TMPL_VAR NAME=REFERENCE_CODE>>
 <INPUT type=hidden NAME=APPLICATION_TYPE VALUE="<TMPL_VAR NAME=APPLICATION_TYPE>">
 <INPUT type=hidden NAME="SKIN_TYPE" VALUE="<TMPL_VAR NAME=SKIN_TYPE>">
</form>

<div id="hd">
<h2><a trackid="hdr_top_logo">LexisNexis Accurint for Collections</a></h2>
<div>
<TMPL_UNLESS IRB>
<p>24/7 Search and Technical Assistance <strong><TMPL_IF IRS>1-866-277-8407<TMPL_ELSE>1-866-277-8407</TMPL_IF></strong></p>
<TMPL_ELSE>
<p><strong>Product Support:</strong> 8:30am - 7:30pm M-Thu | 8:30am - 5:30pm Fri | Eastern | <strong>800-447-2112</strong></p>
</TMPL_UNLESS>
<ul>
<li class="first"><a trackid="hdr_contact_us" href="https://learn.lexisnexis.com/lexisnexis/user_home.aspx" target="_blank">Help</a></li>
<TMPL_IF IRB>
<li><a trackid="hdr_my_account" href="javascript:show_post_popup('LOGIN/SHOW_POPUP','AdminContactUsWin','450','500',0,0,0,0,0,0,'','customer_support');">Product Support</a></li>
<TMPL_ELSE>
<li><a trackid="hdr_my_account" href="javascript:show_post_popup('LOGIN/SHOW_POPUP','HTMLHelp','475','610',1,1,1,1,1,0,'','contact_select');">Contact Us</a></li>
</TMPL_IF>
</ul>
</div>
</div>
