<!-- BEGIN myaccount_order_mgr_nav.tpl -->
	  <TMPL_IF NAME="MYACCOUNT_ORDER_MGR_REPORTS">
	    <TMPL_IF NAME="REPORT_DATA">
	    <table width="856" class="myaccountbody">
	      <tr>
		<th class="unifont1" align="left" width="10%">
		  <TMPL_IF NAME="REPORT_MANAGER_SHOW_PREV">
                    <TMPL_IF NAME="HAS_FCRA_NON_FCRA">
		    <a href="javascript:show_reports_prev_page_fcra(<TMPL_VAR NAME='REPORT_MANAGER_FIRST_RECORD'>, <TMPL_VAR NAME='REPORT_MANAGER_MAX_ITEMS'>,<TMPL_IF REPORT_MANAGER_FIRST_RECORD_FCRA><TMPL_VAR NAME='REPORT_MANAGER_FIRST_RECORD_FCRA'><TMPL_ELSE>0</TMPL_IF>,0);">&laquo; Previous</a>
                    <TMPL_ELSE>
		    <a href="javascript:show_reports_prev_page(<TMPL_VAR NAME='REPORT_MANAGER_FIRST_RECORD'>, <TMPL_VAR NAME='REPORT_MANAGER_MAX_ITEMS'>);">&laquo; Previous</a>
                    </TMPL_IF>
		  <TMPL_ELSE>
		    &nbsp;
		  </TMPL_IF>
		</th>
		<th class="unifont1" align="center">
	        <TMPL_IF HAS_FCRA_NON_FCRA>NON-FCRA </TMPL_IF>Reports: <TMPL_VAR NAME="REPORT_MANAGER_FIRST_RECORD"> to <TMPL_VAR NAME="REPORT_MANAGER_LAST_RECORD"> of <TMPL_VAR NAME="REPORT_MANAGER_TOTAL_COUNT">
		</th>
		<th class="unifont1" align="right" width="10%">
		  <TMPL_IF NAME="REPORT_MANAGER_SHOW_NEXT">
                    <TMPL_IF NAME="HAS_FCRA_NON_FCRA">
		    <a href="javascript:show_reports_next_page_fcra(<TMPL_VAR NAME='REPORT_MANAGER_LAST_RECORD'>,1,<TMPL_IF REPORT_MANAGER_FIRST_RECORD_FCRA><TMPL_VAR NAME='REPORT_MANAGER_FIRST_RECORD_FCRA'><TMPL_ELSE>0</TMPL_IF>,0);">Next &raquo;</a>
                    <TMPL_ELSE>
		    <a href="javascript:show_reports_next_page(<TMPL_VAR NAME='REPORT_MANAGER_LAST_RECORD'>);">Next &raquo;</a>
                    </TMPL_IF>
		  <TMPL_ELSE>
		    &nbsp;
		  </TMPL_IF>
		</th>
	      </tr>
	    </table>
	    </TMPL_IF>
	  </TMPL_IF>
    
	  <TMPL_IF NAME="MYACCOUNT_ORDER_MGR_TRIMERGE">
	    <TMPL_IF NAME="REPORT_DATA">
	    <table width="856" class="myaccountbody">
	      <tr>
		<th class="unifont1" align="left" width="10%">
		  <TMPL_IF NAME="REPORT_MANAGER_SHOW_PREV">
		    <a href="javascript:show_trimerge_reports_prev_page(<TMPL_VAR NAME='REPORT_MANAGER_FIRST_RECORD'>, <TMPL_VAR NAME='REPORT_MANAGER_MAX_ITEMS'>);">&laquo; Previous</a>
		  <TMPL_ELSE>
		    &nbsp;
		  </TMPL_IF>
		</th>
		<th class="unifont1" align="center">
	        Reports: <TMPL_VAR NAME="REPORT_MANAGER_FIRST_RECORD"> to <TMPL_VAR NAME="REPORT_MANAGER_LAST_RECORD"> of <TMPL_VAR NAME="REPORT_MANAGER_TOTAL_COUNT">
		</th>
		<th class="unifont1" align="right" width="10%">
		  <TMPL_IF NAME="REPORT_MANAGER_SHOW_NEXT">
		    <a href="javascript:show_trimerge_reports_next_page(<TMPL_VAR NAME='REPORT_MANAGER_LAST_RECORD'>);">Next &raquo;</a>
		  <TMPL_ELSE>
		    &nbsp;
		  </TMPL_IF>
		</th>
	      </tr>
	    </table>
	    </TMPL_IF>
	  </TMPL_IF>

	<TMPL_IF NAME="ONLINEJOBS_DATA">
	    <table width="856" class="myaccountbody">
	      <tr>
		<th class="unifont1" align="left" width="10%">
		  <TMPL_IF NAME="REPORT_MANAGER_SHOW_PREV">
		    <a href="javascript:show_batchresults_prev_page(<TMPL_VAR NAME='REPORT_MANAGER_FIRST_RECORD'>, <TMPL_VAR NAME='REPORT_MANAGER_MAX_ITEMS'>, '<TMPL_VAR NAME='ACTION_BATCH'>');">&laquo; Previous</a>
		  <TMPL_ELSE>
		    &nbsp;
		  </TMPL_IF>
		</th>
		<th class="unifont1" align="center">
	        Results: <TMPL_VAR NAME="REPORT_MANAGER_FIRST_RECORD"> to <TMPL_VAR NAME="REPORT_MANAGER_LAST_RECORD"> of <TMPL_VAR NAME="REPORT_MANAGER_TOTAL_COUNT">
		</th>
		<th class="unifont1" align="right" width="10%">
		  <TMPL_IF NAME="REPORT_MANAGER_SHOW_NEXT">
		    <a href="javascript:show_batchresults_next_page(<TMPL_VAR NAME='REPORT_MANAGER_LAST_RECORD'>,' <TMPL_VAR NAME='ACTION_BATCH'>');">Next &raquo;</a>
		  <TMPL_ELSE>
		    &nbsp;
		  </TMPL_IF>
		</th>
	      </tr>
	    </table>
	</TMPL_IF>

	<TMPL_IF NAME="WATCH_DATA">
	    <table width="856" class="myaccountbody">
	      <tr>
		<th class="unifont1" align="left" width="10%">
		  <TMPL_IF NAME="REPORT_MANAGER_SHOW_PREV">
		    <a href="javascript:show_watchdogresults_prev_page(<TMPL_VAR NAME='REPORT_MANAGER_FIRST_RECORD'>, <TMPL_VAR NAME='REPORT_MANAGER_MAX_ITEMS'>, '<TMPL_VAR NAME='ACTION_BATCH'>');">&laquo; Previous</a>
		  <TMPL_ELSE>
		    &nbsp;
		  </TMPL_IF>
		</th>
		<th class="unifont1" align="center">
	        Results: <TMPL_VAR NAME="REPORT_MANAGER_FIRST_RECORD"> to <TMPL_VAR NAME="REPORT_MANAGER_LAST_RECORD"> of <TMPL_VAR NAME="REPORT_MANAGER_TOTAL_COUNT">
		</th>
		<th class="unifont1" align="right" width="10%">
		  <TMPL_IF NAME="REPORT_MANAGER_SHOW_NEXT">
		    <a href="javascript:show_watchdogresults_next_page(<TMPL_VAR NAME='REPORT_MANAGER_LAST_RECORD'>,' <TMPL_VAR NAME='ACTION_BATCH'>');">Next &raquo;</a>
		  <TMPL_ELSE>
		    &nbsp;
		  </TMPL_IF>
		</th>
	      </tr>
	    </table>
	</TMPL_IF>
        <TMPL_IF NAME="POLICE_RECORDS_REPORT_DATA">
	  <table width="856" class="myaccountbody">
	    <tr>
	      <th class="unifont1" align="left" width="10%">
	        <TMPL_IF NAME="REPORT_MANAGER_SHOW_PREV">
	          <a href="javascript:show_police_records_prev_page(<TMPL_VAR NAME='REPORT_MANAGER_FIRST_RECORD'>, <TMPL_VAR NAME='REPORT_MANAGER_MAX_ITEMS'>);">&laquo; Previous</a>
	        <TMPL_ELSE>
	          &nbsp;
	        </TMPL_IF>
	      </th>
	      <th class="unifont1" align="center"">
	      Reports: <TMPL_VAR NAME="REPORT_MANAGER_FIRST_RECORD"> to <TMPL_VAR NAME="REPORT_MANAGER_LAST_RECORD"> of <TMPL_VAR NAME="REPORT_MANAGER_TOTAL_COUNT">
	      </th>
	      <TMPL_IF NAME="PAGE_LINK_LOOP">
	      <th class="unifont1" align="left" width="10%" <TMPL_UNLESS NAME=WRAP_PAGES>nowrap="nowrap"</TMPL_UNLESS>>
	        Page Number:&nbsp;<TMPL_LOOP NAME="PAGE_LINK_LOOP">
	          <TMPL_UNLESS NO_LINK><a href="javascript:show_police_records_next_page(<TMPL_VAR NAME='START_VALUE'>);"><span style="text-decoration: underline;"><TMPL_VAR NAME='PAGE'></span>&nbsp;</a>
                  <TMPL_ELSE>
                    <TMPL_VAR NAME='PAGE'>&nbsp;
                  </TMPL_UNLESS>
                </TMPL_LOOP>
              </th>
              </TMPL_IF>
	      <th class="unifont1" align="right" width="10%">
	        <TMPL_IF NAME="REPORT_MANAGER_SHOW_NEXT">
	          <a href="javascript:show_police_records_next_page(<TMPL_VAR NAME='REPORT_MANAGER_LAST_RECORD'>);">Next &raquo;</a>
	        <TMPL_ELSE>
	          &nbsp;
	        </TMPL_IF>
	      </th>
	    </tr>
	  </table>
        </TMPL_IF>
<!-- END myaccount_order_mgr_nav.tpl -->
