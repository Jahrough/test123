<!-- BEGIN myaccount_order_mgr_nav_fcra.tpl -->
	  <TMPL_IF NAME="MYACCOUNT_ORDER_MGR_REPORTS">
	    <TMPL_IF NAME="REPORT_DATA_FCRA">
	    <table width="856" class="myaccountbody" id="fcra-data-table">
	      <tr>
		<th class="unifont1" align="left" width="10%">
		  <TMPL_IF NAME="REPORT_MANAGER_SHOW_PREV_FCRA">
		    <a href="javascript:prepare_fcra_request();show_reports_prev_page_fcra(<TMPL_IF REPORT_MANAGER_FIRST_RECORD><TMPL_VAR NAME='REPORT_MANAGER_FIRST_RECORD'><TMPL_ELSE>0</TMPL_IF>,0,<TMPL_VAR NAME='REPORT_MANAGER_FIRST_RECORD_FCRA'>,<TMPL_VAR NAME='REPORT_MANAGER_MAX_ITEMS_FCRA'>);">&laquo; Previous</a>
		  <TMPL_ELSE>
		    &nbsp;
		  </TMPL_IF>
		</th>
		<th class="unifont1" align="center">
	        FCRA Reports: <TMPL_VAR NAME="REPORT_MANAGER_FIRST_RECORD_FCRA"> to <TMPL_VAR NAME="REPORT_MANAGER_LAST_RECORD_FCRA"> of <TMPL_VAR NAME="REPORT_MANAGER_TOTAL_COUNT_FCRA">
		</th>
		<th class="unifont1" align="right" width="10%">
		  <TMPL_IF NAME="REPORT_MANAGER_SHOW_NEXT_FCRA">
		    <a href="javascript:prepare_fcra_request();show_reports_next_page_fcra(<TMPL_IF REPORT_MANAGER_FIRST_RECORD><TMPL_VAR NAME='REPORT_MANAGER_FIRST_RECORD'><TMPL_ELSE>0</TMPL_IF>,0,<TMPL_VAR NAME='REPORT_MANAGER_LAST_RECORD_FCRA'>,1);">Next &raquo;</a>
		  <TMPL_ELSE>
		    &nbsp;
		  </TMPL_IF>
		</th>
	      </tr>
	    </table>
            <TMPL_IF FCRA_REQUEST>
            <script>
            $('fcra-data-table').scrollTo();
            </script>
            </TMPL_IF>
	    </TMPL_IF>
	  </TMPL_IF>
<!-- END myaccount_order_mgr_nav_fcra.tpl -->
