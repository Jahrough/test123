<!-- begin myaccount_order_mgr.tpl -->
<script src="<TMPL_VAR NAME='JSPATH'>/order_mgr.js"></script>
<script src="<TMPL_VAR NAME='JSPATH'>/sorttable.js"></script>
<script>
function refresh_page() {
    send_event('MYACCOUNT/SHOW_ORDER_MGR_REPORTS');
}
</script>
<TMPL_IF NAME="MOBILE_ONLY_USER">
    <TMPL_IF NAME="MYACCOUNT_ORDER_MGR">
        <table border="0" cellpadding="0" cellspacing="0" width="880" class="myaccountborder">
            <tr>
                <td nowrap align="center" valign="middle" class="myaccountborder">
                    <table width="856" cellpadding="0" cellspacing="0" border="0">
                        <tr height="12">
                            <td height="12" width="856" class="unifont1">&nbsp;</td>
                        </tr>
                    </table>
                    <table width="856" cellpadding="0" cellspacing="0" border="0" class="myaccountbody">
                        <tr height="40">
                            <td>
                                <table border="0" width="100%">
                                    <tr>
                                        <TMPL_IF NAME="MYACCOUNT_ORDER_MGR_REPORTS">
                                            <!-- Online Reports -->
                                            <td width="35%" align="center" class="unifont1"><a href="javascript:send_event('MYACCOUNT/SHOW_PREFERENCES')"><b>Time Zone</b></a>: <TMPL_VAR NAME="REPORT_MGR_TZNAME"></td>
                                            <td width="25%" align="center" class="myaccounttitle">Online Reports</td>
                                        </TMPL_IF>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td align="center" class="myaccountborder">
                    <input type="hidden" name="REPORT_MANAGER_START_RECORD" value="">
                    <TMPL_IF NAME="HAS_FCRA_NON_FCRA">
                        <input type="hidden" name="REPORT_MANAGER_START_RECORD_FCRA" value="">
                        <input type="hidden" name="FCRA_REQUEST" value="">
                    </TMPL_IF>

                    <TMPL_INCLUDE NAME="myaccount_order_mgr_nav.tpl">

                    <TMPL_IF NAME="MYACCOUNT_ORDER_MGR_REPORTS">
                        <TMPL_INCLUDE NAME="myaccount_order_info_reports.tpl">
                    </TMPL_IF>

                    <TMPL_INCLUDE NAME="myaccount_order_mgr_nav.tpl">
                    <TMPL_IF HAS_FCRA_NON_FCRA>
                        <TMPL_IF NAME="MYACCOUNT_ORDER_MGR_REPORTS">
                            <TMPL_IF NAME="REPORT_DATA_FCRA">
                                <table width="856" class="myaccountbody">
                                    <tr>
                                        <td>
                                            <div style="padding-bottom:4px;padding-top:8px"><div style="font:0/0 serif;border-bottom:1px dotted #cc0033;"></div></div>
                                        </td>
                                    </tr>
                                </table>
                            </TMPL_IF>
                        </TMPL_IF>
                        <TMPL_INCLUDE NAME="myaccount_order_mgr_nav_fcra.tpl">
                        <TMPL_INCLUDE NAME="myaccount_order_info_reports_fcra.tpl">
                        <TMPL_INCLUDE NAME="myaccount_order_mgr_nav_fcra.tpl">
                    </TMPL_IF>
                </td>
            </tr>
        </table>
        <TMPL_INCLUDE NAME=myaccount_footer.tpl>
    </TMPL_IF>

<TMPL_ELSE>

<TMPL_IF NAME="MYACCOUNT_ORDER_MGR">
    <table border="0" cellpadding="0" cellspacing="0" width="880" class="myaccountborder">
      <tr>
  <td nowrap align="center" valign="middle" class="myaccountborder">
    <table width="856" cellpadding="0" cellspacing="0" border="0">
      <tr height="12">
        <td height="12" width="856" class="unifont1">&nbsp;</td>
      </tr>
    </table>
    <table width="856" cellpadding="0" cellspacing="0" border="0" class="myaccountbody">
      <tr height="40">
        <td>
          <table border="0" width="100%">
      <tr>

  <TMPL_IF NAME="MYACCOUNT_ORDER_MGR_REPORTS">
        <!-- Online Reports -->
       <td width="35%" align="center" class="unifont1"><a href="javascript:send_event('MYACCOUNT/SHOW_PREFERENCES')"><b>Time Zone</b></a>: <TMPL_VAR NAME="REPORT_MGR_TZNAME"></td>
             <td width="25%" align="center" class="myaccounttitle">Online Reports</td>
  </TMPL_IF>

  <TMPL_IF NAME="MYACCOUNT_ORDER_MGR_TRIMERGE">
        <!-- Online Reports -->
       <td width="35%" align="center" class="unifont1"><a href="javascript:send_event('MYACCOUNT/SHOW_PREFERENCES')"><b>Time Zone</b></a>: <TMPL_VAR NAME="REPORT_MGR_TZNAME"></td>
             <td width="25%" align="center" class="myaccounttitle">FCRA TriMerge Reports</td>
  </TMPL_IF>

  <TMPL_IF NAME="MYACCOUNT_ORDER_MGR_COURT">
        <!-- Court Search Reports -->
      <td width="35%" align="center" class="unifont1">&nbsp;</td>
      <td width="25%" align="center" class="myaccounttitle">Court Search Reports</td>
  </TMPL_IF>

  <TMPL_IF NAME="MYACCOUNT_ORDER_MGR_POLICE_RECORDS">
        <!-- Police Records Search Reports -->
      <td width="35%" align="center" class="unifont1">&nbsp;</td>
      <td width="25%" align="center" class="myaccounttitle">Police Records Reports</td>
  </TMPL_IF>

  <TMPL_IF NAME="MYACCOUNT_ORDER_MGR_BATCH">
        <!-- Batch Results -->
       <td width="35%" align="center" class="unifont1"><a href="javascript:send_event('MYACCOUNT/SHOW_PREFERENCES')"><b>Time Zone</b></a>: <TMPL_VAR NAME="REPORT_MGR_TZNAME"></td>
       <td width="25%" align="center" class="myaccounttitle">Batch Results</td>
  </TMPL_IF>

  <TMPL_IF NAME="MYACCOUNT_ORDER_MGR_WATCHDOG">
        <!-- Watchdog Results -->
       <td width="35%" align="center" class="unifont1"><a href="javascript:send_event('MYACCOUNT/SHOW_PREFERENCES')"><b>Time Zone</b></a>: <TMPL_VAR NAME="REPORT_MGR_TZNAME"></td>
       <td width="25%" align="center" class="myaccounttitle">Watchdog Results</td>
  </TMPL_IF>

  <TMPL_IF NAME="MYACCOUNT_ORDER_MGR_ALERTING">
        <!-- Person Alerts -->
    <TMPL_IF NAME="MYACCOUNT_ORDER_MGR_ALERTING_DETAIL">
      <td width="35%" align="center"><a href="javascript:send_event('ALERT/SHOW_ALERTS_MGR');"><img src="<TMPL_VAR NAME=IMGPATH>/previous_page.gif" border="0" height="24" width="65"></a></td>
    <TMPL_ELSE>
      <TMPL_IF NAME="MYACCOUNT_ORDER_MGR_ALERTING_EDIT">
      <td width="35%" align="center"><a href="javascript:send_event('ALERT/SHOW_ALERTS_MGR');"><img src="<TMPL_VAR NAME=IMGPATH>/previous_page.gif" border="0" height="24" width="65"></a></td>
      <TMPL_ELSE>
      <td width="35%" align="center" class="unifont1">&nbsp;</td>
      </TMPL_IF>
    </TMPL_IF>
      <td width="25%" align="center" class="myaccounttitle">Person Alert<TMPL_IF NAME="MYACCOUNT_ORDER_MGR_ALERTING_DETAIL"> Detail<TMPL_ELSE>s</TMPL_IF></td>
  </TMPL_IF>
  <TMPL_IF NAME="MYACCOUNT_ORDER_MGR_GROUP">
        <!-- Group Reports -->
      <td width="35%" align="center" class="unifont1"><a href="javascript:send_event('MYACCOUNT/SHOW_PREFERENCES')"><b>Time Zone</b></a>: <TMPL_VAR NAME="REPORT_MGR_TZNAME"></td>
      <td width="25%" align="center" class="myaccounttitle">Group Admin Reports</td>
  </TMPL_IF>

        <!-- Create Select Pulldowns for Other Enabled Reports -->
      <td width="12%" align="right" class="unifont1"><b><TMPL_UNLESS LOC>Other Reports:</TMPL_UNLESS></b>&nbsp;</td>
  <TMPL_UNLESS LOC>
      <td width="28%" class="unifont1">
      <select class="unifont1" name="TOGGLE_REPORT_MANAGER" onChange="showpw();change_report(this);">
        <option value="" selected>Select Report</option>

    <TMPL_UNLESS NAME="MYACCOUNT_ORDER_MGR_REPORTS">
      <TMPL_IF NAME="SHOW_ONLINE_REPORTS">
        <option value="MYACCOUNT/SHOW_ORDER_MGR_REPORTS">Online Reports</option>
      </TMPL_IF>
    </TMPL_UNLESS>

    <TMPL_UNLESS NAME="MYACCOUNT_ORDER_MGR_COURT">
      <TMPL_IF NAME="SHOW_COURT_REPORTS">
        <option value="MYACCOUNT/SHOW_ORDER_MGR_COURT">Court Search Reports</option>
      </TMPL_IF>
    </TMPL_UNLESS>

    <TMPL_UNLESS NAME="HIDE_POLICE_RECORDS">
      <TMPL_IF NAME="SHOW_POLICE_RECORDS">
      <TMPL_UNLESS NAME="POLICE_RECORDS_USER_ROLES_ORDER_ONLY">
        <option value="MYACCOUNT/SHOW_ORDER_MGR_POLICE_RECORDS">Police Records Reports</option>
      </TMPL_UNLESS>
      </TMPL_IF>
    </TMPL_UNLESS>

    <TMPL_UNLESS NAME="MYACCOUNT_ORDER_MGR_BATCH">
      <TMPL_IF NAME="ALLOW_BATCH_JOBS">
        <option value="MYACCOUNT/SHOW_ORDER_MGR_BATCH,<TMPL_VAR NAME=ACTION_BATCH>">View Batch Results</option>
      </TMPL_IF>
    </TMPL_UNLESS>

    <TMPL_UNLESS NAME="MYACCOUNT_ORDER_MGR_WATCHDOG">
      <TMPL_IF NAME="ALLOW_WATCHDOG">
        <option value="MYACCOUNT/SHOW_ORDER_MGR_WATCHDOG,<TMPL_VAR NAME=ACTION_BATCH>">View Watchdog Results</option>
      </TMPL_IF>
    </TMPL_UNLESS>

    <TMPL_UNLESS CSAML_LOGIN>
    <TMPL_UNLESS NAME="MYACCOUNT_ORDER_MGR_ALERTING">
      <TMPL_IF NAME="SHOW_ALERTING">
        <option value="ALERT/SHOW_ALERTS_MGR">Person Alerts</option>
      </TMPL_IF>
    </TMPL_UNLESS>
    </TMPL_UNLESS>


    <TMPL_UNLESS NAME="MYACCOUNT_ORDER_MGR_TRIMERGE">
      <TMPL_IF NAME="SHOW_TRIMERGE_REPORTS">
        <option value="MYACCOUNT/SHOW_ORDER_TRIMERGE_REPORTS">FCRA TriMerge Reports</option>
      </TMPL_IF>
    </TMPL_UNLESS>

    <TMPL_UNLESS NAME="MYACCOUNT_ORDER_MGR_GROUP">
      <TMPL_IF NAME="SHOW_GROUP_REPORTS">
        <option value="MYACCOUNT/SHOW_ORDER_MGR_GROUP">Group Admin Reports</option>
      </TMPL_IF>
    </TMPL_UNLESS>

  </TMPL_UNLESS>

      </select>
      </td>

      </tr>
    </table>
        </td>
      </tr>
  <TMPL_UNLESS NAME="MYACCOUNT_ORDER_MGR_POLICE_RECORDS">
    <TMPL_IF NAME="REPORT_DATA">
      <tr>
        <td width="856" class="myaccountborder" align="center">
    <div class="unifont1" style="background-color: #fff; margin: 5px 0;">The following reports have been saved. Saved reports are available for <TMPL_VAR NAME="REPORT_LIST_DAYS"> days from the time they were created, and can be reviewed at no additional charge by clicking on corresponding <strong>View Report</strong> icon.</div>
        </td>
      </tr>
    </TMPL_IF>
  </TMPL_UNLESS>
      <TMPL_IF NAME="ONLINEJOBS_DATA">
      <tr>
        <td width="856" class="myaccountborder" align="center">
    <div class="unifont1" style="background-color: #fff; margin: 5px 0;">The following results have been saved. &nbsp;Saved results are available for <TMPL_VAR NAME="RESULT_LIST_DAYS"> days from the time they were created, and can be reviewed at no additional charge by clicking on corresponding <strong>Download Results</strong> icon.</div>
        </td>
      </tr>
      </TMPL_IF>
      <TMPL_IF NAME="WATCH_DATA">
      <tr>
        <td width="856" class="myaccountborder" align="center">
    <div class="unifont1" style="background-color: #fff; margin: 5px 0;">The following results have been saved. &nbsp;Saved results are available for <TMPL_VAR NAME="RESULT_LIST_DAYS"> days from the time they were created, and can be reviewed at no additional charge by clicking on corresponding <strong>Download Results</strong> icon.</div>
        </td>
      </tr>
      </TMPL_IF>
      <TMPL_IF NAME="MYACCOUNT_ORDER_MGR_POLICE_RECORDS">
      <tr>
        <td width="756" class="myaccountborder" align="center">
    <div class="unifont1" style="background-color: #fff; margin: 5px 0;">The following reports have been saved. Saved reports can be reviewed at no additional charge by clicking on corresponding <strong>Order #</strong> link.</div>
        </td>
      </tr>
      </TMPL_IF>
    </table>
      </tr>

      <tr>
  <td align="center" class="myaccountborder">

    <input type="hidden" name="REPORT_MANAGER_START_RECORD" value="">
    <TMPL_IF NAME="HAS_FCRA_NON_FCRA">
    <input type="hidden" name="REPORT_MANAGER_START_RECORD_FCRA" value="">
    <input type="hidden" name="FCRA_REQUEST" value="">
    </TMPL_IF>
	  <input type="hidden" name="DONT_SHOW_POLICE_RECORDS" value="">

    <TMPL_INCLUDE NAME="myaccount_order_mgr_nav.tpl">

    <TMPL_IF NAME="MYACCOUNT_ORDER_MGR_WATCHDOG">
      <TMPL_INCLUDE NAME="myaccount_order_info_watchdog.tpl">
    </TMPL_IF>

    <TMPL_IF NAME="MYACCOUNT_ORDER_MGR_BATCH">
      <TMPL_INCLUDE NAME="myaccount_order_info_batch.tpl">
    </TMPL_IF>

    <TMPL_IF NAME="MYACCOUNT_ORDER_MGR_REPORTS">
      <TMPL_INCLUDE NAME="myaccount_order_info_reports.tpl">
    </TMPL_IF>

    <TMPL_IF NAME="MYACCOUNT_ORDER_MGR_COURT">
      <TMPL_INCLUDE NAME="myaccount_order_info.tpl">
    </TMPL_IF>

    <TMPL_IF NAME="MYACCOUNT_ORDER_MGR_POLICE_RECORDS">
      <TMPL_INCLUDE NAME="myaccount_police_records_orders.tpl">
    </TMPL_IF>

    <TMPL_IF NAME="MYACCOUNT_ORDER_MGR_ALERTING_LIST">
      <TMPL_INCLUDE NAME="alerting/subscription_mgr.tpl">
    </TMPL_IF>

    <TMPL_IF NAME="MYACCOUNT_ORDER_MGR_ALERTING_DETAIL">
      <TMPL_INCLUDE NAME="alerting/subscription_detail.tpl">
    </TMPL_IF>

    <TMPL_IF NAME="MYACCOUNT_ORDER_MGR_ALERTING_EDIT">
      <TMPL_INCLUDE NAME="alerting/subscription_edit.tpl">
    </TMPL_IF>
    <TMPL_IF NAME="MYACCOUNT_ORDER_MGR_TRIMERGE">
      <TMPL_INCLUDE NAME="myaccount_order_info_reports.tpl">
    </TMPL_IF>
    <TMPL_IF NAME="MYACCOUNT_ORDER_MGR_GROUP">
      <TMPL_INCLUDE NAME="myaccount_order_info_reports.tpl">
    </TMPL_IF>
    <TMPL_INCLUDE NAME="myaccount_order_mgr_nav.tpl">
    <TMPL_IF HAS_FCRA_NON_FCRA>
	<TMPL_IF NAME="MYACCOUNT_ORDER_MGR_REPORTS">
	    <TMPL_IF NAME="REPORT_DATA_FCRA">
	    <table width="856" class="myaccountbody">
                <tr>
                    <td>
                    <div style="padding-bottom:4px;padding-top:8px"><div style="font:0/0 serif;border-bottom:1px dotted #cc0033;"></div></div>
                    </td>
                </tr>
            </table>
            </TMPL_IF>
        </TMPL_IF>
        <TMPL_INCLUDE NAME="myaccount_order_mgr_nav_fcra.tpl">
        <TMPL_INCLUDE NAME="myaccount_order_info_reports_fcra.tpl">
        <TMPL_INCLUDE NAME="myaccount_order_mgr_nav_fcra.tpl">
    </TMPL_IF>

  </td>
      </tr>

    </table>

<TMPL_INCLUDE NAME=myaccount_footer.tpl>

</TMPL_IF>
</TMPL_IF>      <!-- Mobile user check -->
<!-- end myaccount_order_mgr.tpl -->
