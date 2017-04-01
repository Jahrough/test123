<div id="clear"></div>
<div id="st_end_session" style="display:none;">
	<span class="warningHdr">
		<h3>SKIP SESSION COMPLETE FOR - <span class="st_curr_name"></h3>
	</span>
	<span class="skipTraceIcons">
		<ul>
		  <li class="first"><a onClick="javascript:st_option(3);"><img src="<TMPL_VAR NAME=IMGPATH>/ico_close_window.gif" alt="" width="20" height="20" />&nbsp;Close</a></li>
		  <span id="all_debtors_summ_link"><li class="first"><a onClick="javascript:show_all_debtors('<TMPL_IF NAME="PAGE_LINKS_LOOP"><TMPL_VAR NAME="END_RECORD"><TMPL_ELSE><TMPL_VAR NAME="RECORD_COUNT"></TMPL_IF>');"><img src="<TMPL_VAR NAME=IMGPATH>/ico_results_alert.gif" alt="" width="20" height="20" />&nbsp;Show All Debtors</a></li></span>
		  <li class="first"><a onClick="javascript:st_option(2);"><img src="<TMPL_VAR NAME=IMGPATH>/ico_new_search.gif" alt="" width="20" height="20" />&nbsp;New Search</a></li>
		  <TMPL_UNLESS DISABLE_SKIP_TRACE_EXPANDED_FORM><li class="first"><a onClick="javascript: st_option(1);"><img src="<TMPL_VAR NAME=IMGPATH>/ico_edit_search.gif" alt="" width="20" height="20" />&nbsp;Not My Debtor</a></li></TMPL_UNLESS>
		  <li class="first"><img src="<TMPL_VAR NAME=IMGPATH>/ico_alert.gif" alt="" width="20" height="20" /><a href="javascript:build_alert_report('<TMPL_VAR NAME="ACTION_REPORT">', 39)">&nbsp;Setup Alert</a></li>
		</ul>
	</span>
</div>
