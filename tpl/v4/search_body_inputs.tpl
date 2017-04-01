<TMPL_IF NAME="SEARCH_NAME">
    <form name="<TMPL_VAR NAME=SEARCH_NAME>" action="<TMPL_IF USE_MISC_PROCESS><TMPL_VAR NAME=ACTION_MISC><TMPL_ELSE><TMPL_VAR NAME=ACTION></TMPL_IF>" method="post" class="smart-form search_submit" <TMPL_UNLESS NAME="OCCCR_RESULTS_SEARCH">data-event="<TMPL_VAR NAME=SEARCH_EVENT>"</TMPL_UNLESS><TMPL_IF NAME=MORTGAGE_FRAUD_REPORT> data-mfraud="true"</TMPL_IF>>
<TMPL_ELSE>
    <form name="PERSON_SEARCH" action="<TMPL_IF USE_MISC_PROCESS><TMPL_VAR NAME=ACTION_MISC><TMPL_ELSE><TMPL_VAR NAME=ACTION></TMPL_IF>" method="post" class="smart-form search_submit" data-event="<TMPL_VAR NAME=SEARCH_EVENT>"<TMPL_IF NAME=MORTGAGE_FRAUD_REPORT> data-mfraud="true"</TMPL_IF>>
</TMPL_IF>
<TMPL_IF NAME="SEARCH_EVENT">
    <INPUT type="hidden" NAME="EVENT" VALUE="<TMPL_VAR NAME=SEARCH_EVENT>">
<TMPL_ELSE>
    <INPUT type="hidden" NAME="EVENT" VALUE="SEARCH/SEARCH">
</TMPL_IF>
<TMPL_INCLUDE NAME="common_hidden_input.tpl">
<input type="hidden" id="REPORT_ACTION" name="ACTION_REPORT" value="<TMPL_VAR NAME=ACTION_REPORT>">
<INPUT type="hidden" NAME="CURRENT_EVENT" ID="CURRENT_EVENT" VALUE="<TMPL_VAR NAME=CURRENT_EVENT>">
<INPUT type="hidden" NAME="RECID" VALUE="">
<INPUT type="hidden" NAME="FULL_NAME" VALUE="">
<INPUT type="hidden" NAME="SKIN_TYPE" VALUE="<TMPL_VAR NAME=SKIN_TYPE>">
<INPUT type="hidden" NAME="APPLICATION_TYPE" VALUE="<TMPL_VAR NAME=APPLICATION_TYPE>">
<INPUT type="hidden" NAME="COURT_SEARCH_WIZARD" VALUE="<TMPL_VAR NAME=COURT_SEARCH_WIZARD>">
<INPUT type="hidden" NAME="PMTAB" VALUE="0">
<INPUT type="hidden" NAME="MYACCTAB" VALUE="<TMPL_VAR IM_ON_MYACCURINT>">
<TMPL_IF NAME='MID'>
<input type="hidden" name="PSID" value="<TMPL_VAR NAME=MPSID>">
<input type="hidden" name="MID" value="<TMPL_VAR NAME=MID>">
</TMPL_IF>
<!--
<INPUT type="hidden" NAME="REQUIRE_REF_CODE" VALUE="<TMPL_VAR NAME=REQUIRE_REF_CODE>">
<INPUT type="hidden" NAME="REQUIRE_REF_CODE_EXTRA" VALUE="<TMPL_VAR NAME=REQUIRE_REF_CODE_EXTRA>">
-->

<TMPL_IF NAME="ENABLE_ADVANCED_SEARCH">
    <INPUT type="hidden" NAME="ADVANCED_SEARCH" VALUE="<TMPL_VAR NAME=APPLICATION_TYPE>">
</TMPL_IF>
<TMPL_IF NAME=PERSON_SEARCH>
    <INPUT TYPE="hidden" NAME="SSN_ONLY_SEARCH" VALUE="<TMPL_VAR NAME=SSN_ONLY_SEARCH>">
<TMPL_ELSE>
    <TMPL_IF NAME=ADV_SEARCH>
        <INPUT TYPE="hidden" NAME="SSN_ONLY_SEARCH" VALUE="<TMPL_VAR NAME=SSN_ONLY_SEARCH>">
    </TMPL_IF>
</TMPL_IF>
<TMPL_IF NAME="CLEAR_REFERENCE_CODE">
    <INPUT type="hidden" NAME="CLEAR_REFERENCE_CODE" VALUE="1">
</TMPL_IF>
<TMPL_IF NAME="ENABLE_GRAPHVIEW">
    <INPUT type="hidden" NAME="ENABLE_GRAPHVIEW" VALUE="1">
</TMPL_IF>
<INPUT type="hidden" NAME="ACTION_MISC" VALUE="<TMPL_VAR NAME=ACTION_MISC>">
<INPUT type="hidden" NAME="QS_OPTION" id="QS_OPTION" value="SSN" />
<TMPL_INCLUDE NAME="search_inputs_search_form2.tpl">

<TMPL_UNLESS NAME="IRS_VERIFY">
<TMPL_UNLESS NAME="SSA_VERIFY">
<TMPL_UNLESS NAME="MYTASK">
  <TMPL_UNLESS SEARCH_ERROR_MESSAGE>
    <TMPL_INCLUDE NAME="search_buttons.tpl">
  <TMPL_ELSE>
    <TMPL_UNLESS SHOW_FORM_ON_ERROR>
      <TMPL_INCLUDE NAME="search_buttons.tpl">
    </TMPL_UNLESS>   
  </TMPL_UNLESS>    
</TMPL_UNLESS>
</TMPL_UNLESS>
</TMPL_UNLESS>
<TMPL_IF NAME="EDIT_SEARCH_STREAM">
    <INPUT TYPE="hidden" name="PSID" VALUE="<TMPL_VAR NAME="EDIT_SEARCH_STREAM">">
    <INPUT TYPE="hidden" name="EDIT_SEARCH_STREAM" VALUE="1">
</TMPL_IF>
<INPUT type="hidden" NAME="IS_FROM_FORM" VALUE="1">

</form>
<TMPL_IF NAME="DELCO_SEARCH">
    <div class="text pull-left">
        <hr/>
        <span style="font-family:'Arial Regular', 'Arial';font-weight:400;">The <strong>Delaware Secretary of State</strong> search system is not full-text searchable - searches are limited to the company name.</span><br /><br />
        <span style="font-family:'Arial Regular', 'Arial';font-weight:400;">Enter the first 30 characters or less of the name that you wish to find. </span><span style="font-family:'Arial Bold', 'Arial';font-weight:700;">Example:</span><span style="font-family:'Arial Regular', 'Arial';font-weight:400;"> To find 'Associates of the Italian Academy for Advanced Studies in America, Inc.' please enter 'Associates of the Italian'. The system will locate all filings that begin with these words.</span><br /><br /><span style="font-family:'Arial Regular', 'Arial';font-weight:400;">Please note that the use of boolean search connectors is not permitted with this search request.</span><br /><br />
        <span style="font-family:'Arial Bold', 'Arial';font-weight:700;">NOTE!</span><span style="font-family:'Arial Bold', 'Arial';font-weight:700;">&nbsp;</span><span style="font-family:'Arial Regular', 'Arial';font-weight:400;">The cite list returned from your search is offered to you at NO CHARGE. </span><span style="font-family:'Arial Bold', 'Arial';font-weight:700;">All accesses to the actual document(s) from the cite list, however, will incur a search charge.</span><span style="font-family:'Arial Regular', 'Arial';font-weight:400;"> Please complete any browsing and/or printing of the document while in the original access - re-access, even of the same document, will result in additional charges.</span><br /><br />
        <span style="font-family:'Arial Bold', 'Arial';font-weight:700;">Important:</span><span style="font-family:'Arial Regular', 'Arial';font-weight:400;"> The Public Records and commercially available data sources used on reports have errors. Data is sometimes entered poorly, processed incorrectly and is generally not free from defect. This system should not be relied upon as definitively accurate. Before relying on any data this system supplies, it should be independently verified. For Secretary of State documents, the following data is for information purposes only and is not an official record. Certified copies may be obtained from that individual state's Department of State.</span><br />
        <span style="font-family:'Arial Regular', 'Arial';font-weight:400;">This information is real time data and is subject to change at any moment. This data is for informational purposes only. Certification may only be obtained through the Division of Corporations, or from a Delaware Registered Agent's office located within the State of Delaware.</span>
    </div>
</TMPL_IF>
<TMPL_IF NAME="OCCCR_ORDER_RESULTS_SEARCH">
    <INPUT type="hidden" NAME="WEB20_HLPPATH" VALUE="<TMPL_VAR NAME=WEB20_HLPPATH>">
</TMPL_IF>
