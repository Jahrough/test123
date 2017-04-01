<!-- begin: $RCSfile: bk_events_search_terms_echo.tpl,v $ -->
<TMPL_IF NAME="DISPLAY_RECS_LOOP">

  	<h2><TMPL_VAR NAME="PAGE_TITLE"> Results - <TMPL_IF FCRA_MODE>Decisioning<TMPL_ELSE>Contact &amp; Locate</TMPL_IF></h2>
    <TMPL_IF NAME="COURT_LINK_MESSAGE">
        <br /><p><strong>Important:</strong>&nbsp;<TMPL_VAR NAME="COURT_LINK_MESSAGE_INITIAL">&nbsp;<u><i><TMPL_VAR NAME="COURT_LINK_MESSAGE_FORMAT"></i></u>&nbsp;<TMPL_VAR NAME="COURT_LINK_MESSAGE_FINAL"><TMPL_IF COURT_LINK_MESSAGE_NOTE><br><strong><TMPL_VAR NAME="COURT_LINK_MESSAGE_NOTE"></strong></TMPL_IF><br />
    </TMPL_IF>
    <TMPL_IF NAME="COURT_LINK_MESSAGE_RI">
        <br /><p><strong>Important:</strong>&nbsp;<TMPL_VAR NAME="COURT_LINK_MESSAGE_RI"><b><a href="http://www.cdiaonline.org/About/content.cfm?ItemNumber=10988" target="_blank">here</a>.</b></strong><br />
    </TMPL_IF>

    <TMPL_IF NAME="SEARCH_TERMS">
	    <br /><span id="search_terms"><p><strong>Search Terms Used</strong>&nbsp;-&nbsp;<TMPL_LOOP NAME="SEARCH_TERMS">&nbsp;<TMPL_VAR NAME="TERM_NAME">:&nbsp;<strong><TMPL_VAR NAME="TERM_VALUE"></strong>;</TMPL_LOOP></p></span><br />
    </TMPL_IF>

    <TMPL_INCLUDE NAME="search_messages.tpl">
    <br/>

</TMPL_IF>


<TMPL_UNLESS NAME="DISPLAY_RECS_LOOP">
    <TMPL_IF NAME="SEARCH_TERMS">
        <h2><TMPL_IF NAME="SHOW_FCRA_SEARCH_TITLE">Choose which docket event you would like information on<TMPL_ELSE><TMPL_VAR NAME="PAGE_TITLE"> Results - <TMPL_IF FCRA_MODE>Decisioning<TMPL_ELSE>Contact &amp; Locate</TMPL_IF></TMPL_IF></h2>
        <br /><span id="search_terms"><p><strong>Search Terms Used</strong>&nbsp;-&nbsp;<TMPL_LOOP NAME="SEARCH_TERMS">&nbsp;<TMPL_VAR NAME="TERM_NAME">:&nbsp;<strong><TMPL_VAR NAME="TERM_VALUE"></strong>;</TMPL_LOOP></p></span><br />
    </TMPL_IF>
</TMPL_UNLESS>

<!-- end: $RCSfile: bk_events_search_terms_echo.tpl,v $ -->
