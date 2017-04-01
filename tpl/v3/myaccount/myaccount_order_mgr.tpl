<!-- begin myaccount_order_mgr.tpl -->
<TMPL_IF NAME="MYACCOUNT_ORDER_MGR_REPORTS">
    <!-- Online Reports -->
    <div class="myaccount-section-title">Online Reports</div>
</TMPL_IF>

<TMPL_IF NAME="MYACCOUNT_ORDER_MGR_TRIMERGE">
    <!-- Online Reports -->
    <div class="myaccount-section-title">FCRA TriMerge Reports</div>
</TMPL_IF>

<TMPL_IF NAME="MYACCOUNT_ORDER_MGR_COURT">
    <!-- Court Search Reports -->
    <div class="myaccount-section-title">Court Search Reports</div>
</TMPL_IF>

<TMPL_IF NAME="MYACCOUNT_ORDER_MGR_POLICE_RECORDS">
    <!-- Police Records Search Reports -->
    <div class="myaccount-section-title">Police Records Reports</div>
</TMPL_IF>

<TMPL_IF NAME="MYACCOUNT_ORDER_MGR_BATCH">
    <!-- Batch Results -->
    <div class="myaccount-section-title">Batch Results</div>
</TMPL_IF>

<TMPL_IF NAME="MYACCOUNT_ORDER_MGR_WATCHDOG">
    <!-- Watchdog Results -->
    <div class="myaccount-section-title">Watchdog Results</div>
</TMPL_IF>

<TMPL_IF NAME="MYACCOUNT_ORDER_MGR_ALERTING">
    <!-- Person Alerts -->
    <div class="myaccount-section-title">Person Alert<TMPL_IF NAME="MYACCOUNT_ORDER_MGR_ALERTING_DETAIL"> Detail<TMPL_ELSE>s</TMPL_IF></div>
</TMPL_IF>

<TMPL_IF NAME="MYACCOUNT_ORDER_MGR_GROUP">
    <!-- Group Reports -->
    <div class="myaccount-section-title">Group Admin Reports</div>
</TMPL_IF>

<div class="myaccount-containers">
    <div class="sections">
        <TMPL_IF NAME="MYACCOUNT_ORDER_MGR">
            <div class="section-row">
                <fieldset style="padding:15px;">
                    <div class="section-row">
                        <div class="section-row">
                            <TMPL_UNLESS LOC>
                                <div class="left mgl15 bold"><label for="othr_reports">Other Reports:</label></div>
                                <div class="left mgl6">
                                    <select id="othr_reports" class="unifont1" name="TOGGLE_REPORT_MANAGER" onChange="showpw();change_report(this);">
                                        <option value="" selected>Select Report</option>
										<TMPL_IF NAME="MOBILE_ONLY_USER">
											<TMPL_UNLESS NAME="MYACCOUNT_ORDER_MGR_REPORTS">
												<TMPL_IF NAME="SHOW_ONLINE_REPORTS">
													<option value="MYACCOUNT/SHOW_ORDER_MGR_REPORTS">Online Reports</option>
												</TMPL_IF>
											</TMPL_UNLESS>
										<TMPL_ELSE>
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
													<option value="MYACCOUNT/SHOW_ORDER_MGR_POLICE_RECORDS">Police Records Reports</option>
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
										</TMPL_IF>
                                    </select>
                                </div>
                            </TMPL_UNLESS>
                            <div class="right mgl15">
                                <TMPL_IF NAME="MYACCOUNT_ORDER_MGR_REPORTS">
                                    <a class="myaccLnk" href="javascript:send_event('MYACCOUNT/SHOW_PREFERENCES')"><b>Time Zone</b></a>: <TMPL_VAR NAME="REPORT_MGR_TZNAME">
                                </TMPL_IF>
                                <TMPL_IF NAME="MYACCOUNT_ORDER_MGR_TRIMERGE">
                                    <a class="myaccLnk" href="javascript:send_event('MYACCOUNT/SHOW_PREFERENCES')"><b>Time Zone</b></a>: <TMPL_VAR NAME="REPORT_MGR_TZNAME">
                                </TMPL_IF>
                                <TMPL_IF NAME="MYACCOUNT_ORDER_MGR_BATCH">
                                    <a class="myaccLnk" href="javascript:send_event('MYACCOUNT/SHOW_PREFERENCES')"><b>Time Zone</b></a>: <TMPL_VAR NAME="REPORT_MGR_TZNAME">
                                </TMPL_IF>
                                <TMPL_IF NAME="MYACCOUNT_ORDER_MGR_WATCHDOG">
                                    <a class="myaccLnk" href="javascript:send_event('MYACCOUNT/SHOW_PREFERENCES')"><b>Time Zone</b></a>: <TMPL_VAR NAME="REPORT_MGR_TZNAME">
                                </TMPL_IF>
                                <TMPL_IF NAME="MYACCOUNT_ORDER_MGR_ALERTING">
                                    <TMPL_IF NAME="MYACCOUNT_ORDER_MGR_ALERTING_DETAIL">
                                        <a class="btn darkgrey-btn" href="javascript:send_event('ALERT/SHOW_ALERTS_MGR');">
                                            &lt; Back
                                        </a>
                                    <TMPL_ELSE>
                                        <TMPL_IF NAME="MYACCOUNT_ORDER_MGR_ALERTING_EDIT">
                                            <a class="btn darkgrey-btn" href="javascript:send_event('ALERT/SHOW_ALERTS_MGR');">
                                                &lt; Back
                                            </a>
                                        </TMPL_IF>
                                    </TMPL_IF>
                                </TMPL_IF>
                                <TMPL_IF NAME="MYACCOUNT_ORDER_MGR_GROUP">
                                    <a class="myaccLnk" href="javascript:send_event('MYACCOUNT/SHOW_PREFERENCES')"><b>Time Zone</b></a>: <TMPL_VAR NAME="REPORT_MGR_TZNAME">
                                </TMPL_IF>
                            </div>
                        </div>
                    </div>
                </fieldset>
                <fieldset style="padding:15px;">
                    <TMPL_UNLESS NAME="MYACCOUNT_ORDER_MGR_POLICE_RECORDS">
                        <TMPL_IF NAME="REPORT_DATA">
                            <div class="section-row pd15">
                                <div class="warningmessage pd5 mgt5">The following reports have been saved. Saved reports are available for <TMPL_VAR NAME="REPORT_LIST_DAYS"> days from the time they were created, and can be reviewed at no additional charge by clicking on corresponding <strong>View Report</strong> icon.</div>
                            </div>
                        </TMPL_IF>
                    </TMPL_UNLESS>
                    <TMPL_IF NAME="ONLINEJOBS_DATA">
                        <div class="section-row pd15">
                            <div class="warningmessage pd5 mgt5">The following results have been saved. &nbsp;Saved results are available for <TMPL_VAR NAME="RESULT_LIST_DAYS"> days from the time they were created, and can be reviewed at no additional charge by clicking on corresponding <strong>Download Results</strong> icon.</div>
                        </div>
                    </TMPL_IF>
                    <TMPL_IF NAME="WATCH_DATA">
                        <div class="section-row pd15">
                            <div class="warningmessage pd5 mgt5" >The following results have been saved. &nbsp;Saved results are available for <TMPL_VAR NAME="RESULT_LIST_DAYS"> days from the time they were created, and can be reviewed at no additional charge by clicking on corresponding <strong>Download Results</strong> icon.</div>
                        </div>
                    </TMPL_IF>
                    <TMPL_IF NAME="MYACCOUNT_ORDER_MGR_POLICE_RECORDS">
                        <div class="section-row pd15">
                            <div class="warningmessage pd5 mgt5">The following reports have been saved. Saved reports can be reviewed at no additional charge by clicking on corresponding <strong>Order #</strong> link.</div>
                        </div>
                    </TMPL_IF>

                    <input type="hidden" name="REPORT_MANAGER_START_RECORD" value="">
                    <TMPL_IF NAME="HAS_FCRA_NON_FCRA">
                        <input type="hidden" name="REPORT_MANAGER_START_RECORD_FCRA" value="">
                        <input type="hidden" name="FCRA_REQUEST" value="">
                    </TMPL_IF>
                    <input type="hidden" name="DONT_SHOW_POLICE_RECORDS" value="">

                    <TMPL_INCLUDE NAME="myaccount/report/myaccount_order_mgr_nav.tpl">

                    <TMPL_IF NAME="MYACCOUNT_ORDER_MGR_WATCHDOG">
                        <TMPL_INCLUDE NAME="myaccount/report/myaccount_order_info_watchdog.tpl">
                    </TMPL_IF>

                    <TMPL_IF NAME="MYACCOUNT_ORDER_MGR_BATCH">
                        <TMPL_INCLUDE NAME="myaccount/report/myaccount_order_info_batch.tpl">
                    </TMPL_IF>

                    <TMPL_IF NAME="MYACCOUNT_ORDER_MGR_REPORTS">
                        <TMPL_INCLUDE NAME="myaccount/report/myaccount_order_info_reports.tpl">
                    </TMPL_IF>

                    <TMPL_IF NAME="MYACCOUNT_ORDER_MGR_COURT">
                        <TMPL_INCLUDE NAME="myaccount_order_info.tpl">
                    </TMPL_IF>

                    <TMPL_IF NAME="MYACCOUNT_ORDER_MGR_POLICE_RECORDS">
                        <TMPL_INCLUDE NAME="myaccount/report/myaccount_police_records_orders.tpl">
                    </TMPL_IF>

                    <TMPL_IF NAME="MYACCOUNT_ORDER_MGR_ALERTING_LIST">
                        <TMPL_INCLUDE NAME="myaccount/report/alerting/subscription_mgr.tpl">
                    </TMPL_IF>

                    <TMPL_IF NAME="MYACCOUNT_ORDER_MGR_ALERTING_DETAIL">
                        <TMPL_INCLUDE NAME="myaccount/report/alerting/subscription_detail.tpl">
                    </TMPL_IF>

                    <TMPL_IF NAME="MYACCOUNT_ORDER_MGR_ALERTING_EDIT">
                        <TMPL_INCLUDE NAME="myaccount/report/alerting/subscription_edit.tpl">
                    </TMPL_IF>
                    <TMPL_IF NAME="MYACCOUNT_ORDER_MGR_TRIMERGE">
                        <TMPL_INCLUDE NAME="myaccount/report/myaccount_order_info_reports.tpl">
                    </TMPL_IF>
                    <TMPL_IF NAME="MYACCOUNT_ORDER_MGR_GROUP">
                        <TMPL_INCLUDE NAME="myaccount/report/myaccount_order_info_reports.tpl">
                    </TMPL_IF>
                    <TMPL_INCLUDE NAME="myaccount/report/myaccount_order_mgr_nav.tpl">
                    <TMPL_IF HAS_FCRA_NON_FCRA>
                        <TMPL_IF NAME="MYACCOUNT_ORDER_MGR_REPORTS">
                            <TMPL_IF NAME="REPORT_DATA_FCRA">
                                <table style="width:100%;">
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
                </fieldset>
            </div>
        </div>
    </div>
    <TMPL_INCLUDE NAME=myaccount_footer.tpl>
</TMPL_IF>
<!-- end myaccount_order_mgr.tpl -->
