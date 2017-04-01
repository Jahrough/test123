<!-- begin: $RCSfile: search_terms_echo.tpl,v $ -->

<TMPL_IF NAME="RESULTS">
	<TMPL_IF NAME="RECORD_COUNT"><span class="grey">Records: <TMPL_VAR NAME="START_RECORD"> to <TMPL_VAR NAME="END_RECORD"> of <TMPL_IF NAME="SHOW_ALL"><TMPL_VAR NAME="RECORD_COUNT"><TMPL_ELSE><TMPL_IF NAME="MORE_THAN_MAX_GEN">first </TMPL_IF><TMPL_VAR NAME="END_RECORD"></TMPL_IF></span></TMPL_IF>
  <TMPL_IF NAME="PROPERTY_COUNTS">
  <br><span class="grey">Property Assessment Records: <TMPL_IF NAME=PROPERTY_ASSESSMENT_COUNT><TMPL_VAR NAME=PROPERTY_ASSESSMENT_COUNT> Records<TMPL_ELSE>No Records Found</TMPL_IF></span>
  <br><span class="grey">Property Deed Records: <TMPL_IF NAME=PROPERTY_DEED_COUNT><TMPL_VAR NAME=PROPERTY_DEED_COUNT> Records<TMPL_ELSE>No Records Found</TMPL_IF></span>
  <br><span class="grey">Total Records: <TMPL_IF NAME=PROPERTY_TOTAL_COUNT><TMPL_VAR NAME=PROPERTY_TOTAL_COUNT> Records<TMPL_ELSE>No Records Found</TMPL_IF></span>
  </TMPL_IF>
	<h2><TMPL_VAR NAME="PAGE_TITLE"> Results <TMPL_VAR NAME="DEMO_TEXT"></h2>

<TMPL_IF NAME="SML_REPORT_DATE">
<br ><p><strong>&nbsp;&nbsp;&nbsp;&nbsp;Report prepared: <TMPL_VAR NAME="SML_REPORT_DATE"></strong></p><br />
</TMPL_IF>

<TMPL_IF NAME="SEARCH_TERMS">
<TMPL_UNLESS NAME="HIDE_SEARCH_TERMS">
	<br /><span id="search_terms"><p><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Search Terms Used</strong>&nbsp;-&nbsp;<TMPL_LOOP NAME="SEARCH_TERMS">&nbsp;<TMPL_VAR NAME="TERM_NAME">:&nbsp;<strong><TMPL_VAR NAME="TERM_VALUE"></strong>;</TMPL_LOOP></p></span><br />
</TMPL_UNLESS>        
</TMPL_IF>
<TMPL_INCLUDE NAME="search_messages.tpl">
<br/>

</TMPL_IF>

<TMPL_UNLESS NAME="RESULTS">
<TMPL_UNLESS NAME=HIDE_SEARCH_TERMS>
<TMPL_IF NAME="SEARCH_TERMS">
<h2><TMPL_VAR NAME="PAGE_TITLE"> Results</h2>
    <br /><span id="search_terms"><p><strong>Search Terms Used</strong>&nbsp;-&nbsp;<TMPL_LOOP NAME="SEARCH_TERMS">&nbsp;<TMPL_VAR NAME="TERM_NAME">:&nbsp;<strong><TMPL_VAR NAME="TERM_VALUE"></strong>;</TMPL_LOOP></p></span><br />
</TMPL_IF>
</TMPL_UNLESS>
</TMPL_UNLESS>
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

    <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b>Copyright &copy; <script>document.write(new Date().getFullYear());</script> Elsevier Inc. and the American Board of Medical Specialties. All rights reserved.</b></p>
    </FONT>
    <p>&nbsp;</p>
</TMPL_IF>

<TMPL_IF NAME="SOCIALMEDIA_SEARCH">
<TMPL_IF NAME="EMAIL_LOOP">
	<span id="search_terms"><p><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Additional Emails Used</strong>&nbsp;-
        <TMPL_LOOP NAME="EMAIL_LOOP">&nbsp;<strong><TMPL_VAR DESC></strong>;
        </TMPL_LOOP></p></span><br />
</TMPL_IF>
</TMPL_IF>




<!-- end: $RCSfile: search_terms_echo.tpl,v $ -->
