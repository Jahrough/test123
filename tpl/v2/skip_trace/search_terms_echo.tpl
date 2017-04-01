<!-- begin: $RCSfile: search_terms_echo.tpl,v $ -->

<TMPL_IF NAME="RESULTS">

	<TMPL_IF NAME="RECORD_COUNT"><span class="grey" id="st_recs">Records: <TMPL_VAR NAME="START_RECORD"> to <TMPL_VAR NAME="END_RECORD"> of <TMPL_IF NAME="SHOW_ALL"><TMPL_VAR NAME="RECORD_COUNT"><TMPL_ELSE><TMPL_IF NAME="MORE_THAN_MAX_GEN">first </TMPL_IF><TMPL_VAR NAME="END_RECORD"></TMPL_IF></span></TMPL_IF>
	<h2>Skip Wizard</h2>

<TMPL_IF NAME="SEARCH_TERMS">
	<p><strong>Search Terms Used</strong>&nbsp;-&nbsp;<TMPL_LOOP NAME="SEARCH_TERMS">&nbsp;<TMPL_VAR NAME="TERM_NAME">:&nbsp;<strong><TMPL_VAR NAME="TERM_VALUE"></strong>;</TMPL_LOOP></p>
</TMPL_IF>
        <span id="skipTraceMultiple" style="margin-top:-10px;display:none;">
        <p><a style="cursor:pointer;" onClick="javascript:show_all(<TMPL_IF NAME="PAGE_LINKS_LOOP"><TMPL_VAR NAME="END_RECORD"><TMPL_ELSE><TMPL_VAR NAME="RECORD_COUNT"></TMPL_IF>)">Show All Possible Debtors</a></p>
	</span>
	<div id="clear"></div>
<TMPL_INCLUDE NAME="skip_trace/search_messages.tpl">
<br/>
</TMPL_IF>

<!-- end: $RCSfile: search_terms_echo.tpl,v $ -->
