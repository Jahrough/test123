<!-- begin equifaxcreditsearch/search_messages.tpl -->

<table border="0" cellpadding="0" cellspacing="0" height="37" width="100%">
  <tr>
    <td align="center"><span class="searchmessageinfo"><TMPL_IF NAME="SEARCH_INFO_MESSAGE"><TMPL_VAR NAME="SEARCH_INFO_MESSAGE"><TMPL_ELSE><TMPL_IF SHOW_SEARCH_MESSAGE>** Enter search parameters and click <TMPL_IF REPORT_EVENT>REPORT<TMPL_ELSE>SEARCH</TMPL_IF> **<TMPL_IF SHOW_PRICE_MESSAGE><TMPL_IF SEARCH_CHARGE><br>$<TMPL_VAR SEARCH_CHARGE> charge applies to all searches</TMPL_IF></TMPL_IF><TMPL_IF SHOW_PRICING_LINK><TMPL_IF SEARCH_CHARGE><br>Charge applied for every search</TMPL_IF></TMPL_IF></TMPL_IF><TMPL_IF SEARCH_MESSAGE_COVERAGE>. Check coverage area for available states and search criteria</TMPL_IF></TMPL_IF></span><TMPL_IF NAME="SEARCH_ERROR_MESSAGE"><span class="searchmessageerror"><TMPL_VAR NAME="SEARCH_ERROR_MESSAGE"></span></TMPL_IF></td>
    <TMPL_IF NAME="RECORD_COUNT">
    <td><img alt="" src="<TMPL_VAR NAME=IMGPATH>/spacer.gif" height="1" width="20"></td>
    <td align="center"><span class="searchmessagerec">Records:&nbsp; </span><span class="searchmessagenum"><TMPL_VAR NAME="START_RECORD"> to <TMPL_VAR NAME="END_RECORD"> of <TMPL_IF NAME="SHOW_ALL"><TMPL_VAR NAME="RECORD_COUNT"><TMPL_ELSE><TMPL_IF NAME="MORE_THAN_MAX_GEN">first </TMPL_IF><TMPL_VAR NAME="END_RECORD"></TMPL_IF></span></td>
        <INPUT type="hidden" NAME="PAGE">
        <INPUT type="hidden" NAME="START_RECORD" VALUE="<TMPL_VAR NAME=START_RECORD>">
        <INPUT type="hidden" NAME="END_RECORD" VALUE="<TMPL_VAR NAME=END_RECORD>">
        <INPUT type="hidden" NAME="RECORD_COUNT" VALUE="<TMPL_VAR NAME=RECORD_COUNT>">
        <TMPL_IF NAME="PAGE_LIST">
        <INPUT type="hidden" NAME="PAGE_LIST" VALUE="<TMPL_VAR NAME=PAGE_LIST>">
        </TMPL_IF>
    </TMPL_IF>
    <TMPL_IF NAME="PAGE_LINKS_LOOP"><td align="left" width="1%" height="37"  nowrap="nowrap" ><span class="searchmessagerec">Result Page:&nbsp;</span></td></TMPL_IF>
    <TMPL_IF NAME=PREV_PAGE><td align="left" width="1%" height="37"><TMPL_INCLUDE NAME=equifaxcreditsearch/prev_url.tpl></td></TMPL_IF>
    <TMPL_IF NAME="PAGE_LINKS_LOOP">
	<td align="middle"  width="1%" nowrap="nowrap" height="37"><TMPL_IF NAME=PREV_PAGE>&nbsp;</TMPL_IF>
	<TMPL_LOOP PAGE_LINKS_LOOP>
	    <TMPL_IF NAME="CURRENT_PAGE">
	    <span class="search_results_current_page_number"><TMPL_VAR NAME="PAGE"></span>
	    <TMPL_ELSE>
	    <a class="search_results_paging" href="javascript:set_nextpage_search(<TMPL_VAR SEARCH_FORM_INDEX>,'<TMPL_VAR SEARCH_NAME>',<TMPL_VAR NAME=PAGE>)"><TMPL_VAR NAME="PAGE"></a>
	    </TMPL_IF>
	</TMPL_LOOP>&nbsp;
	</td>
    </TMPL_IF>
    <TMPL_IF NAME="SHOW_ALL"><TMPL_IF NAME=NEXT_PAGE><td align="right" width="1%" height="37"><TMPL_INCLUDE NAME=equifaxcreditsearch/next_url.tpl></TMPL_IF></td></TMPL_IF>
  </tr>
</table>

<!-- end equifaxcreditsearch/search_messages.tpl -->
