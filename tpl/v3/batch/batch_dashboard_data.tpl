<!-- BEGIN v3/batch/batch_dashboard_data.tpl -->
<table>
<tr>
<td width="50%">

<div class="dashboard_con left">
    <h2>Chart</h2>
    <table class="batch_tbl" align="center" valign="top">
     <tr>
       <td>
          <label for="landingzone1">Landing Zone:</label><br /> 
          <select class="multi" name="landingzone1" id="landingzone1" size="3" onChange="drawChart(1)" multiple="multiple">
             <TMPL_LOOP LANDINGZONE_LOOP>
               <option value="<TMPL_VAR VALUE>"<TMPL_IF SELECTED> SELECTED</TMPL_IF>><TMPL_VAR DESC></option>
             </TMPL_LOOP>
           </select>
       </td>
       <td>
       <label for="chart_period1">Period:</label><br />
           <select name="chart_period1" id="chart_period1" onChange="selectYear(this, 1);drawChart(1)" <TMPL_IF NAME=DISABLE_CHARTS>disabled=1</TMPL_IF>>
             <option value='current_month'>Current Month</option>
             <option value='quarterly'>Quarterly</option>
             <option value='previous_six_months'>Previous 6 Months</option>
             <option value='year'>Year</option>
            </select>
       </td>
       <td>
       <label for="year1">Year:</label><br />
            <span id="yearspan1"></span>
       </td>
       <td>
       <label for="chart_type1">Type:</label><br />
            <select name="chart_type1" id="chart_type1" onChange="drawChart(1)" <TMPL_IF NAME=DISABLE_CHARTS>disabled=1</TMPL_IF>>
             <option value='bars'>Bar</option>
             <option value='line'>Line</option>
            </select>
       </td>
     </tr>
    </table>
    <table border="0" cellspacing="2" cellpadding="6" align="center" width="440">
     <tr>
       <td colspan="4" >
         <div id="waiting" style="display:none;">
           <img id="loading" src="/bps/images/v2/bg_processing.gif" border="0" width="300" height="65" alt=""></img>
         </div>
         <div id="chart1div" style="width:330px; height:240; text-align:right;">
           <IMG id="chartimg1" name="chartimg1" src="" height="230" width="380" alt="">
         </div>
       </td>
     </tr>
    </table>
</div>

<div class="dashboard_con left">
    <h2>Chart</h2>
    <table class="batch_tbl" align="center" valign="top">
    <tr>
       <td>
          <label for="landingzone2">Landing Zone:</label><br /> 
          <select class="multi" name="landingzone2" id="landingzone2" size="3" onChange="drawChart(2)" multiple="multiple">
             <TMPL_LOOP LANDINGZONE_LOOP>
               <option value="<TMPL_VAR VALUE>"<TMPL_IF SELECTED> SELECTED</TMPL_IF>><TMPL_VAR DESC></option>
             </TMPL_LOOP>
           </select>
       </td>
       <td>
       <label for="chart_period2">Period:</label><br />
           <select name="chart_period2" id="chart_period2" onChange="selectYear(this, 2);drawChart(2)" 
           <TMPL_IF NAME=DISABLE_CHARTS>disabled=1</TMPL_IF>>
             <option value='current_month'>Current Month</option>
             <option value='quarterly'>Quarterly</option>
             <option value='previous_six_months'>Previous 6 Months</option>
             <option value='year'>Year</option>
            </select>
       </td>
       <td>
       <label for="year2">Year:</label><br />
            <span id="yearspan2"></span>
       </td>
       <td>
       <label for="chart_type2">Type:</label><br />
            <select name="chart_type2" id="chart_type2" onChange="drawChart(2)" <TMPL_IF NAME=DISABLE_CHARTS>disabled=1</TMPL_IF>>
             <option value='bars'>Bar</option>
             <option value='line'>Line</option>
            </select>
       </td>
     </tr>
   </table>
   <table border="0" cellspacing="2" cellpadding="6" align="center" width="440">
     <tr>
       <td colspan="4" >
         <div id="waiting" style="display:none;">
           <img id="loading" src="/bps/images/v2/bg_processing.gif" border="0" width="300" height="65" alt=""></img>
         </div>
         <div id="chart2div" style="width:330px; height:240; text-align:right;">
           <IMG alt="" id="chartimg2" name="chartimg2" src="" height="230" width="380">
         </div>
       </td>
     </tr>
   </table>

</div>

</td>


    <td width="50%">
        <div class="dashboard_con report_con left">
            <h2>Report</h2>
            <table class="batch_tbl" align="center" valign="top">

          <tr>
            <td colspan="2">
                    <p><span id="sel_rpt_typ">1. Select Report Type:</span> </p>
                    <p><input aria-labelledby="sel_rpt_typ" type=radio name="report_type" id="report_type1" value="HIGH_DETAIL"<TMPL_IF CHECKED_HIGH_DETAIL> CHECKED</TMPL_IF> onClick="checkbox_set(this);"><label for="report_type1"> Billing Detail Report - High Detail</label></p>
                    <p><input aria-labelledby="sel_rpt_typ" type=radio name="report_type" id="report_type2" value="MEDIUM_DETAIL"<TMPL_IF CHECKED_MEDIUM_DETAIL> CHECKED</TMPL_IF> onClick="checkbox_set(this);"><label for="report_type2"> Billing Detail Report - Medium Detail</label></p>
                    <p><input aria-labelledby="sel_rpt_typ" type=radio name="report_type"  id="report_type3" value="LOW_DETAIL"<TMPL_IF CHECKED_LOW_DETAIL> CHECKED</TMPL_IF> onClick="checkbox_set(this);"><label for="report_type3"> Billing Detail Report - Low Detail</label></p>
            </td>
          </tr>


          <tr>
            <td nowrap="nowrap">
               <p class="indent1"><label for="SELECT_REPORT_BILLGROUP">2. Select Report Billgroup*:</label> </p>
            </td>
            <td class="unifont1" nowrap="nowrap">
              <select class="multi" name="SELECT_REPORT_BILLGROUP" id="SELECT_REPORT_BILLGROUP" onClick="clearIdSelection(this);" multiple="true" size="3" onChange="">
                <TMPL_LOOP BILL_GROUP_LOOP>
                  <option value="<TMPL_VAR VALUE>"<TMPL_IF SELECTED> SELECTED</TMPL_IF>><TMPL_VAR DESC></option>
                </TMPL_LOOP>
              </select>
            </td>
          </tr>

          <tr>
            <td nowrap="nowrap">
               <span class="indent3">-- or --</span>
               <br />
            </td>
          </tr>

          <tr>
            <td nowrap="nowrap">
               <p class="indent1">&nbsp;&nbsp;&nbsp;&nbsp;<label for="LANDINGZONE3">Select Report Landing Zone*:</label> </p>
            </td>
            <td class="unifont1" nowrap="nowrap">
                <select class="multi" name="LANDINGZONE3" id="LANDINGZONE3" size="3" onClick="clearIdSelection(this);" multiple="true">
                  <TMPL_LOOP LANDINGZONE_LOOP>
                    <option value="<TMPL_VAR VALUE>"<TMPL_IF SELECTED> SELECTED</TMPL_IF>><TMPL_VAR DESC></option>
                  </TMPL_LOOP>
                </select>
            </td>
          </tr>

            <tr>
                <td colspan="2">
                     <p class="indent1"><label for="date_range">3. Select Report Date Range:</label> </p>
                </td>
            </tr>

            <tr>
                <td colspan="2">
                    <p><input type=radio name="date_range" id="date_range" value="BILLING_PERIOD"<TMPL_IF BILLING_PERIOD> CHECKED</TMPL_IF> OnClick="checkbox_set(this);"> <label for="BILLING_PERIOD">Billing Period:</label>
                    <span class="indent3">
                       <select name="BILLING_PERIOD" id="BILLING_PERIOD" onChange=""> 
                       <TMPL_LOOP BILLING_CUTOFF_LOOP>
                         <option value="<TMPL_VAR VALUE>"<TMPL_IF SELECTED> SELECTED</TMPL_IF>><TMPL_VAR DESC></option>
                       </TMPL_LOOP>
                       </select>
                    </span>
                    </p>

                    <p><input type=radio name="date_range" id="date_range" value="CURRENT_MONTH_TO_DATE" <TMPL_IF CURRENT_MONTH_TO_DATE> CHECKED</TMPL_IF> OnClick="checkbox_set(this);"><label for="date_range"> Current Month-To-Date</label> </p>
                </td>
            </tr>

            <tr>
                <td colspan="2">
                    <p>* Multi-Select</p>
                    <div align="center"><input type=button value="Report" <TMPL_IF NAME=DISABLE_REPORTS>class="btn darkgrey-btn disabled" disabled=1<TMPL_ELSE>class="btn redBtn"</TMPL_IF> onclick="get_batch_dashboard_report('MYACCOUNT/SHOW_BATCH_REPORTING_DASHBOARD_PDF');"></div>

                    <TMPL_IF PROVIDER_SCREENING_REPORTING>
                        <h3>Provider Integrity Scan Reports</h3>
                        <div>
                        <table border="0" width="450px">
                           <tr>
                            <td nowrap="nowrap">
                                <p class="indent1"><br /><span id="sel_rpt">1. Select Report:</span> </p>
                                <TMPL_IF ENABLE_PROVIDER_SCREENING_SCORING>
                                <p><input aria-labelledby="sel_rpt" type=radio name="report_select" id="report_select_score" value="SCORE_REPORT"<TMPL_IF CHECKED_SCORE_REPORT> CHECKED</TMPL_IF> onClick="setProviderScreenReports();"> <label for="report_select_score">Provider Score Report</label> </p>
                                </TMPL_IF>
                                <p><input aria-labelledby="sel_rpt" type=radio name="report_select" id="report_select_attrib" value="ATTRIBUTE_REPORT"<TMPL_IF CHECKED_ATTRIBUTE_REPORT> CHECKED</TMPL_IF> onClick="setProviderScreenReports();"> <label for="report_select_attrib">Provider Integrity Scan Attribute and Record Report</label></p>
                                <p><input aria-labelledby="sel_rpt" type=radio name="report_select"  id="report_select_compare" value="COMPARISON_REPORT"<TMPL_IF CHECKED_COMPARISON_REPORT> CHECKED</TMPL_IF> onClick="setProviderScreenReports();"> <label for="report_select_compare">Comparison Trend Report</label></p>
                            </td>
                          </tr>
                        </table>
                        </div>
                    </TMPL_IF>
                </td>
            </tr>

            <tr>
                <td colspan="2">
                    <div id="score_div" style="display: none" >
                      <table border="0" width="450px">
                        <tr>
                        <td nowrap="nowrap" colspan="2"><p class="indent1"><span id="sel_scr_rpt_jbid">2. Select Score Report Jobid:</span></p></td>
                        </tr>
                        <tr>
                          <td nowrap="nowrap"><p><span id="jbid_flnm_dt">Jobid - Filename - Date:</span></p></td>
                        </tr>
                        <tr>
                          <td nowrap="nowrap" colspan="2"><p>
                             <label for="SCORE_FILE_SELECT" style="display: none">dummy</label>
                             <select aria-labelledby="sel_scr_rpt_jbid jbid_flnm_dt" name="SCORE_FILE_SELECT" id="SCORE_FILE_SELECT" onChange=""> 
                                <TMPL_LOOP JOB_ID_LOOP>
                                    <option value="<TMPL_VAR VALUE>"<TMPL_IF SELECTED> SELECTED</TMPL_IF>><TMPL_VAR DESC></option>
                                </TMPL_LOOP>
                             </select>
                             </p>
                          </td>
                        </tr>
                      </table>
                      <br />
                      <div align="center"><input class="btn redBtn" type=button value="        Score Report        " onclick="get_batch_dashboard_report('MYACCOUNT/SHOW_PROVIDER_SCREENING_SCORE_REPORT');"></div>
                    </div>
                </td>
            </tr>

            <tr>
                <td colspan="2">
                    <div id="attrib_div" style="display: none" >
                      <table border="0" width="450px">
                        <tr>
                        <td nowrap="nowrap" colspan="2">
                            <label for="ATTRIB_FILE_SELECT"><p>2. Select Screening Attribue and Record Report File:</p>
                            <p>Jobid - Filename - Date:</p></label>
                        </td>
                        </tr>

                        <tr>
                          <td nowrap="nowrap">
                          <p>
                             <select name="ATTRIB_FILE_SELECT" id="ATTRIB_FILE_SELECT" onChange=""> 
                                <TMPL_LOOP JOB_ID_LOOP>
                                    <option value="<TMPL_VAR VALUE>"<TMPL_IF SELECTED> SELECTED</TMPL_IF>><TMPL_VAR DESC></option>
                                </TMPL_LOOP>
                             </select>
                          </p>
                          </td>
                        </tr>
                      </table> 
                      <br />
                      <div align="center"><input class="btn redBtn" type=button value="Screening Attribute and Record Report" onclick="get_batch_dashboard_report('MYACCOUNT/SHOW_PROVIDER_SCREENING_ATTRIB_REPORT');"></div>
                    </div>
                </td>
            </tr>

            <tr>
                <td colspan="2">
                    <div id="compare_div" style="display: none" >
                      <table border="0" width="450px">
                        <tr>
                        <td nowrap="nowrap" colspan="2"><p class="indent1">2. Select Comparison Trend Report Attribute and JobId:</p></td>
                        </tr>
                        <tr>
                          <td nowrap="nowrap">
                          <p><label for="ATTRIB_SELECT">Attribute:</label></p></td>
                        </tr>
                        <tr>
                          <td nowrap="nowrap">
                          <p>
                            <select name="ATTRIB_SELECT" id="ATTRIB_SELECT" onChange=""> 
                               <option value="BKT">Bankruptcy Record</option>
                               <option value="CRIM">Criminal Record</option>
                               <option value="DCD">Deceased Record</option>
                               <option value="DISIP">Disciplinary Sanction</option>
                               <option value="GSABUS">GSA Business Sanction</option>
                               <option value="GSAIND">GSA Individual Sanction</option>
                               <option value="INCARC">Incarceration Record</option>
                               <option value="JUDGLEIN">Judgment & Lien Record</option>
                               <option value="SEXOFF">Sex Offense Record</option>
                             </select>
                          </p>
                          </td>
                        </tr>
                        <tr>
                          <td nowrap="nowrap"><p><label for="COMPARE_FILE_SELECT">Jobid - Filename - Date:</label></p></td>
                        </tr>
                        <tr>
                          <td nowrap="nowrap">
                          <p>
                             <select class="multi" name="COMPARE_FILE_SELECT" id="COMPARE_FILE_SELECT" onChange="" multiple="multiple">
                                <TMPL_LOOP JOB_ID_LOOP>
                                    <option value="<TMPL_VAR VALUE>"<TMPL_IF SELECTED> SELECTED</TMPL_IF>><TMPL_VAR DESC></option>
                                </TMPL_LOOP>
                             </select>
                          </p>
                          </td>
                        </tr>
                      </table>
                      <br />
                      <div align="center"><input class="btn redBtn" type=button value="Comparison Trend Report" onclick="if(! validate_compare(this)){return false};get_batch_dashboard_report('MYACCOUNT/SHOW_PROVIDER_SCREENING_COMPARE_REPORT');"></div>
                     </div>

                </td>
            </tr>

           </table>
        </div>
    </td>

</tr>
</table>
<!-- END v3/batch/batch_dashboard_data.tpl -->
