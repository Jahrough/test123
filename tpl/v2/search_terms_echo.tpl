<!-- begin: $RCSfile: search_terms_echo.tpl,v $ -->

<TMPL_IF NAME="RESULTS">

	<TMPL_IF NAME="RECORD_COUNT">
        <span class="grey"><TMPL_IF IRB><FONT size=3></TMPL_IF>Records: <TMPL_VAR NAME="START_RECORD"> to <TMPL_VAR NAME="END_RECORD"> of <TMPL_IF NAME="SHOW_ALL"><TMPL_VAR NAME="RECORD_COUNT"><TMPL_ELSE><TMPL_IF NAME="MORE_THAN_MAX_GEN">first </TMPL_IF><TMPL_VAR NAME="END_RECORD"></TMPL_IF>
        <TMPL_IF IRB></FONT></TMPL_IF></span></TMPL_IF>
  <TMPL_IF NAME="PROPERTY_COUNTS">
  <br><span class="grey">Property Assessment Records: <TMPL_IF NAME=PROPERTY_ASSESSMENT_COUNT><TMPL_VAR NAME=PROPERTY_ASSESSMENT_COUNT> Records<TMPL_ELSE>No Records Found</TMPL_IF></span>
  <br><span class="grey">Property Deed Records: <TMPL_IF NAME=PROPERTY_DEED_COUNT><TMPL_VAR NAME=PROPERTY_DEED_COUNT> Records<TMPL_ELSE>No Records Found</TMPL_IF></span>
  <br><span class="grey">Total Records: <TMPL_IF NAME=PROPERTY_TOTAL_COUNT><TMPL_VAR NAME=PROPERTY_TOTAL_COUNT> Records<TMPL_ELSE>No Records Found</TMPL_IF></span>
  </TMPL_IF>
	<h2><TMPL_VAR NAME="PAGE_TITLE"> Results</h2>

<TMPL_IF NAME="SEARCH_TERMS">
	<br /><span id="search_terms"><p><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Search Terms Used</strong>&nbsp;-&nbsp;<TMPL_LOOP NAME="SEARCH_TERMS">&nbsp;<TMPL_VAR NAME="TERM_NAME">:&nbsp;<strong><TMPL_VAR NAME="TERM_VALUE"></strong>;</TMPL_LOOP></p></span><br />
</TMPL_IF>
<TMPL_IF NAME="BUS_QUALIFIER_REPORT">
    <FONT size="3">
    <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b>User Notice:&nbsp;</b>Choose which Business you would like information on</p>
    </FONT>
    <p>&nbsp;</p>
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
<TMPL_IF NAME="OABMS_SEARCH">
    <FONT size="2">
    <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;User Notice: It is the user's responsibility to determine that the physician record obtained from this service is that of the physician being sought.</p>

    <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;The board certification data contained in this report has been primary source verified against the ABMS directory Database compiled by Elsevier in cooperation with ABMS.</p>

    <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b>Copyright &copy; 2015 Elsevier Inc. and the American Board of Medical Specialties. All rights reserved.</b></p>
    </FONT>
    <p>&nbsp;</p>
</TMPL_IF>

<TMPL_UNLESS NAME="RESULTS">
<TMPL_IF NAME="SEARCH_TERMS">
<!--
<h2><TMPL_VAR NAME="PAGE_TITLE"> Results</h2>
<h2><TMPL_IF NAME="SHOW_FCRA_SEARCH_TITLE">Choose an individual from the below list<TMPL_ELSE><TMPL_VAR NAME="PAGE_TITLE"> Results</TMPL_IF></h2>
-->
<h2><TMPL_IF NAME="SHOW_FCRA_SEARCH_TITLE">Choose which Individual you would like information on<TMPL_ELSE><TMPL_VAR NAME="PAGE_TITLE"> Results</TMPL_IF></h2>
    <br /><span id="search_terms"><p><strong>Search Terms Used</strong>&nbsp;-&nbsp;<TMPL_LOOP NAME="SEARCH_TERMS">&nbsp;<TMPL_VAR NAME="TERM_NAME">:&nbsp;<strong><TMPL_VAR NAME="TERM_VALUE"></strong>;</TMPL_LOOP></p></span><br />
</TMPL_IF>
</TMPL_UNLESS>

<!-- end: $RCSfile: search_terms_echo.tpl,v $ -->
