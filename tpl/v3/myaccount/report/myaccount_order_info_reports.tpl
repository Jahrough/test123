<!-- begin myaccount/report/myaccount_order_info_reports.tpl -->

           <div class="mgt10 mgb10">
                <TMPL_IF ENABLE_SAVE_REPORT>
                    <TMPL_IF REPORT_DATA>

                        <input type="hidden" name="REPORT_ID" value="">
                        <input type="hidden" name="REPORT_RELATIONSHIP_ID" value="" id="hid_rel_id">
                        <input type="hidden" name="REPORT_DATE" value="">
                        <input type="hidden" name="REPORT_EXTERNAL_ID" value="">
                        <table id="dataTables" class="display" cellspacing="0" width="100%">
                            <thead>
                                  <TR class="myaccountbody">

                                    <TMPL_UNLESS MYACCOUNT_ORDER_MGR_TRIMERGE>
                                        <th id="col_vw_dtl">View Detail</th>
                                    </TMPL_UNLESS>
                                    <th id="col_vw_rpt">View Report</th>
                                    <TMPL_IF MYACCOUNT_ORDER_MGR_TRIMERGE>
                                        <th id="col_ord_id">Order ID</th>
                                    </TMPL_IF>
                                    <th id="col_sub">Subject</th>
                                    <th id="col_rpt_typ">Report Type</th>
                                    <th id="col_dt_crt">Date Created</th>
                                  </TR>
                            </thead>
                            <TMPL_LOOP NAME="REPORT_DATA">
                                <tr>
                                    <TMPL_UNLESS REPORT_TRIMERGE>
                                        <td headers="col_vw_dtl" style="text-align:center;">
                                            <TMPL_IF REPORT_RELATIONSHIP_ID>
                                                <a href="javascript:show_report_detail('<TMPL_VAR REPORT_RELATIONSHIP_ID>', '<TMPL_VAR REPORT_ORDERS_RELATIONSHIP_ID>', '<TMPL_VAR REPORT_DATE>')">
                                                    <img src="<TMPL_VAR IMGPATH>/report_manager_details.gif" border="0" title="Click to view inputs used to run report" alt="Click to view inputs used to run report">
                                                </a>
                                            <TMPL_ELSE>
                                                &nbsp;
                                            </TMPL_IF>
                                        </td>
                                    </TMPL_UNLESS>
                                    <td headers="col_vw_rpt" id="view_col_<TMPL_VAR REPORT_INDEX>" style="text-align:center;">
                                        <TMPL_IF REPORT_TRIMERGE>
                                            <TMPL_IF REPORT_TRIMERGE_ESP>
                                                <TMPL_IF REPORT_STATUS>
                                                    <a href="javascript:show_trimerge_report_detail('<TMPL_VAR REPORT_ORDERS_RELATIONSHIP_ID>', '<TMPL_VAR REPORT_EXTERNAL_ID>', '<TMPL_VAR REPORT_DATE>')">
                                                        <img src="<TMPL_VAR IMGPATH>/view_report.gif" border="0" title="Click to view the report" alt="Click to view the report">
                                                    </a>
                                                <TMPL_ELSE>
                                                    <a class="myaccLnk" href="javascript:build_tip('Open Public Record (OPR)','The requested report contains Open Public Record (OPR) data, usually a Bankruptcy, Lien, or Judgment, for a subject who was once or is a resident of California which must be verified before the report can be released. This is a legal obligation that LexisNexis must comply with.','',0,0,650)">
                                                        &nbsp;<TMPL_VAR REPORT_STATUS_MESSAGE>&nbsp;
                                                    </a>
                                                </TMPL_IF>
                                            <TMPL_ELSE>
                                                &nbsp;
                                            </TMPL_IF>
                                        <TMPL_ELSE>
                                            <TMPL_IF REPORT_ORDERS_RELATIONSHIP_ID>
                                                <a href="javascript:show_saved_report('<TMPL_VAR REPORT_ORDERS_RELATIONSHIP_ID>')">
                                                    <img src="<TMPL_VAR IMGPATH>/view_report.gif" border="0" title="Click to view the report" alt="Click to view the report">
                                                </a>
                                            <TMPL_ELSE>
                                                    &nbsp;
                                            </TMPL_IF>
                                        </TMPL_IF>
                                    </td>
                                    <TMPL_IF MYACCOUNT_ORDER_MGR_TRIMERGE>
                                        <td headers="col_ord_id">
                                            <TMPL_VAR REPORT_ORDERS_RELATIONSHIP_ID>
                                        </td>
                                    </TMPL_IF>
                                    <td headers="col_sub">
                                        <TMPL_IF REPORT_SUBJECT>
                                            <TMPL_VAR REPORT_SUBJECT>
                                        <TMPL_ELSE>
                                            N/A&nbsp;
                                        </TMPL_IF>
                                    </td>
                                    <td headers="col_rpt_typ">
                                        <TMPL_IF REPORT_TYPE>
                                            <TMPL_VAR REPORT_TYPE>
                                        <TMPL_ELSE>
                                                &nbsp;
                                        </TMPL_IF>
                                    </td>
                                    <td headers="col_dt_crt">
                                        <TMPL_IF REPORT_DATE>
                                            <TMPL_VAR REPORT_DATE>
                                        <TMPL_ELSE>
                                            &nbsp;
                                        </TMPL_IF>
                                    </td>
                                </tr>
                            </TMPL_LOOP>
                        </table>

                    <TMPL_ELSE>
                         <table class="display" cellspacing="0" width="100%">
                              <tr>
                                <td class="pd15" id="non_sortable_no_reports" style="padding-top:0" align="center" colspan="8" height="50">
                                    <div class="warningmessage">
                                        <strong>There are no saved <TMPL_IF HAS_FCRA_NON_FCRA> NON-FCRA </TMPL_IF>reports in the last <TMPL_VAR REPORT_LIST_DAYS> days.</strong>
                                    </div>
                                </td>
                              </tr>
                         </table>
                    </TMPL_IF>
                    <TMPL_ELSE>
                      <table class="display" cellspacing="0" width="100%">
                        <tr>
                            <td class="pd15" id="non_sortable_no_report_mgr" style="padding-top:0" align="center" height="50">
                                <div class="warningmessage">
                                    <strong>Online Reports are not available at the moment. Please try again later.</strong>
                                </div>
                            </td>
                        </tr>
                      </table>
                    </TMPL_IF>

            </div>

<TMPL_IF HAS_TRIMERGE>
    <TMPL_INCLUDE accurint_js.tpl>
<script type="text/javascript">//<![CDATA[

    Accurint.Trimerge = (function(I){

      // feature flags
      I.managerReports = <TMPL_VAR HAS_TRIMERGE>;

      return I;

    })(window.Accurint.Trimerge || {});

//]]></script>
<noscript>Your browser does not support JavaScript!</noscript>
<script type="text/javascript" src="<TMPL_VAR JSPATH>/Accurint/Trimerge/Manager.js"></script>
<noscript>Your browser does not support JavaScript!</noscript>
</TMPL_IF>
<!-- end myaccount/report/myaccount_order_info_reports.tpl -->
