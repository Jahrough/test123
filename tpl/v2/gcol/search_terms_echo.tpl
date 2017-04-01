<!-- begin: $RCSfile: search_terms_echo.tpl,v $ -->

<TMPL_IF NAME="RESULTS">

	<TMPL_UNLESS CONTACT_PLUS_SEARCH>
  <TMPL_IF NAME="RECORD_COUNT"><span class="grey">Records: <TMPL_VAR NAME="START_RECORD"> to <TMPL_VAR NAME="END_RECORD"> of <TMPL_IF NAME="SHOW_ALL"><TMPL_VAR NAME="RECORD_COUNT"><TMPL_ELSE><TMPL_IF NAME="MORE_THAN_MAX_GEN">first </TMPL_IF><TMPL_VAR NAME="END_RECORD"></TMPL_IF></span></TMPL_IF>
  </TMPL_UNLESS>

  	<h2><TMPL_VAR NAME="PAGE_TITLE"> Results - <TMPL_IF FCRA_MODE>Decisioning<TMPL_ELSE>Contact &amp; Locate</TMPL_IF></h2>
<TMPL_IF NAME="SEARCH_TERMS">
	<br /><span id="search_terms"><p><strong>Search Terms Used</strong>&nbsp;-&nbsp;<TMPL_LOOP NAME="SEARCH_TERMS">&nbsp;<TMPL_VAR NAME="TERM_NAME">:&nbsp;<strong><TMPL_VAR NAME="TERM_VALUE"></strong>;</TMPL_LOOP></p></span><br />
</TMPL_IF>

<TMPL_IF NAME="PROPERTY_COUNTS">
<br/>
      <p>
      <span id="search_terms"><strong>Records -<TMPL_IF NAME=PROPERTY_ASSESSMENT_COUNT><a href="javascript:showwaitnew();javascript:set_prop_assess_page_search(<TMPL_VAR SEARCH_FORM_INDEX>,'<TMPL_VAR SEARCH_NAME>',<TMPL_VAR PROPERTY_DEED_COUNT>)"><TMPL_VAR NAME=PROPERTY_ASSESSMENT_COUNT> Property Assessments <img border="0" width="6" height="8" src="<TMPL_VAR NAME=IMGPATH>/ico_right_arro.gif" alt="Next"></a><TMPL_ELSE>
      				 0  Property Assessments</TMPL_IF> | <TMPL_IF NAME=PROPERTY_DEED_COUNT><a href="javascript:showwaitnew();javascript:set_nextpage_search(<TMPL_VAR SEARCH_FORM_INDEX>,'<TMPL_VAR SEARCH_NAME>',1)"><TMPL_VAR NAME=PROPERTY_DEED_COUNT> Deeds & Mortgages <img border="0" width="6" height="8" src="<TMPL_VAR NAME=IMGPATH>/ico_right_arro.gif" alt="Next"></a><TMPL_ELSE>
                                 0 Deeds & Mortgages </TMPL_IF></strong></span>
      <span id="grey"> (click to jump to beginning of records)</span>
      </p>
</TMPL_IF>
<TMPL_INCLUDE NAME="search_messages.tpl">
<br/>

</TMPL_IF>
<TMPL_IF NAME="BUS_SEARCH_TRUNCATED_RESPONSE">
    <FONT size="2">
    <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b>NOTE:&nbsp;</b>Additional Companies Were Found<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Your search has found many results. If the company you were looking for is not in these results, please refine your search by adding additional or more specific search terms.</p>
    </FONT>
    <p>&nbsp;</p>
</TMPL_IF>
<TMPL_UNLESS NAME="RESULTS">
<TMPL_IF NAME="SEARCH_TERMS">
<h2><TMPL_IF NAME="SHOW_FCRA_SEARCH_TITLE">Choose which Individual you would like information on<TMPL_ELSE><TMPL_VAR NAME="PAGE_TITLE"> Results - <TMPL_IF FCRA_MODE>Decisioning<TMPL_ELSE>Contact &amp; Locate</TMPL_IF></TMPL_IF></h2>
    <br /><span id="search_terms"><p><strong>Search Terms Used</strong>&nbsp;-&nbsp;<TMPL_LOOP NAME="SEARCH_TERMS">&nbsp;<TMPL_VAR NAME="TERM_NAME">:&nbsp;<strong><TMPL_VAR NAME="TERM_VALUE"></strong>;</TMPL_LOOP></p></span><br />
</TMPL_IF>
</TMPL_UNLESS>

<!-- end: $RCSfile: search_terms_echo.tpl,v $ -->
