<!DOCTYPE html>
<html>
    <head>
        <title>Report -- Select your report</title>
        <TMPL_INCLUDE NAME="includes_info.tpl">
        <link href="<TMPL_VAR NAME='CSSPATH'>/reports.css" rel="stylesheet" type="text/css">
        <script src="<TMPL_VAR NAME='JSPATH'>/report.js"></script>
        <style>
            .txtWrapper {
                min-width: 960px;
            }
        </style>
    </head>
    <body topmargin="0" leftmargin="0" marginwidth="0" marginheight="0">
    <div id="skiptocontent"><a href="#txtCon" title="skip navigation">Skip Navigation</a></div>
    <TMPL_INCLUDE NAME="header_info.tpl">
        <form name="SHORT_REPORT" action="<TMPL_VAR NAME=ACTION_REPORT>" method="post">
            <TMPL_INCLUDE NAME="common_hidden_input.tpl">        
            <INPUT type=hidden NAME="SKIN_TYPE" VALUE="<TMPL_VAR NAME=SKIN_TYPE>">
            <INPUT type=hidden NAME="APPLICATION_TYPE" VALUE="<TMPL_VAR NAME=APPLICATION_TYPE>">
            <INPUT type=hidden NAME="EVENT" VALUE="REPORT/SAVE_PREFS">
            <INPUT type=hidden NAME="RECID_REPORT" VALUE="<TMPL_VAR NAME="RECID_REPORT">">
                   <INPUT type=hidden NAME="UNIQUEID" VALUE="<TMPL_VAR NAME="UNIQUEID">">
                   <INPUT type=hidden NAME="FULL_NAME" VALUE="<TMPL_VAR NAME="FULL_NAME">">
                   <INPUT type=hidden NAME="FIRST_NAME" VALUE="<TMPL_VAR NAME="FIRST_NAME">">
                   <INPUT type=hidden NAME="ADDRESS" VALUE="<TMPL_VAR NAME="ADDRESS">">
                   <INPUT type=hidden NAME="CSZ" VALUE="<TMPL_VAR NAME="CSZ">">
                   <INPUT type=hidden NAME="AGE" VALUE="<TMPL_VAR NAME="AGE">">
                   <INPUT type=hidden NAME="PHONE" VALUE="<TMPL_VAR NAME="PHONE">">
                   <INPUT type=hidden NAME="LAST_NAME" VALUE="<TMPL_VAR NAME="LAST_NAME">">
                   <INPUT type=hidden NAME="MIDDLE_NAME" VALUE="<TMPL_VAR NAME="MIDDLE_NAME">">
                   <INPUT type=hidden NAME="SUFFIX" VALUE="<TMPL_VAR NAME="SUFFIX">">
                   <INPUT type=hidden NAME="DOB" VALUE="<TMPL_VAR NAME="DOB">">
                   <INPUT type=hidden NAME="CC_XID" VALUE="<TMPL_VAR NAME="CC_XID">">
                   <input type="hidden" name="CC_OPT_IN" value="<TMPL_VAR CC_OPT_IN>"/>
            <input type="hidden" name="PERM" value="<TMPL_VAR PERM>"/>
            <INPUT type=hidden NAME="CURRENT_EVENT" VALUE="<TMPL_VAR NAME=CURRENT_EVENT>">

            <div class="txtWrapper reportCon">
                <div id="txtCon">
                    <div class="lnin-header">Available Reports</div>
                    <table class="reportColumnsTable">
                      <thead class="nodisplay">
                        <tr>
                          <th aria-label="Left Menu">
                            &nbsp;
                          </th>
                          <th aria-label="Center Menu">
                            &nbsp;
                          </th>
                          <th aria-label="Right Menu">
                            &nbsp;
                          </th>
                        </tr>
                      </thead>
                        <tbody>
                            <tr>
                                <td>
                                <TMPL_UNLESS DELETE_SUMMARY_REPORT>
                                    <!-- Start Summary Report Section -->
                                        <div class="reportPopHdr">Summary Report</div>
                                        <div class="reportPop">
                                            <ul>
                                                <li>Address Summary</li>
                                                <li>Others using SSN</li>
                                                <li>Date/Locations where SSN Issued</li>
                                                <li>Census Data</li>
                                                <li>Bankruptcy Indicator</li>
                                                <li>Property Indicator</li>
                                                <li>Corporate Affiliations Indicator</li>
                                            </ul>
                                            <div class="reportPopFooter">
                                                <TMPL_IF NAME="DISABLE_SUMMARY_REPORT">
                                                    <input tabindex="11" class="report-btn disabled-btn" type="button" value="Report Disabled" onClick="void(0);" disabled>
                                                    <TMPL_ELSE>
                                                        <input name="BUTTON" class="report-btn red-btn" tabindex="11" type="button" value="<TMPL_IF REPORT_BUTTON><TMPL_VAR NAME=REPORT_BUTTON><TMPL_ELSE>Request Report</TMPL_IF>" onclick="send_report_selector('REPORT/SUMMARY');" />
                                                </TMPL_IF>
                                            </div>
                                        </div>
                                    <!-- End Summary Report Section -->
                                </TMPL_UNLESS>
                                <TMPL_UNLESS NAME="DELETE_ASSET_REPORT">
                                    <!-- Start Asset Report Section -->
                                        <div class="reportPopHdr">Asset Report</div>
                                        <div class="reportPop">
                                            <ul>

                                                <li>Summary Report<br />
                                                    <span class="subtext" style="margin:0 0 2px 8px;">(Indicators and more)</span></li>
                                                <li>Property Deeds &amp; Assessments</li>
                                                <li>Motor Vehicles</li>
                                                <li>Watercraft</li>

                                                <li>FAA Pilots &amp; FAA Aircraft</li>
                                                <li>UCC Filings</li>
                                            </ul>

                                            <div class="reportPopFooter">
                                                <TMPL_IF NAME="DISABLE_ASSET_REPORT">
                                                    <input tabindex="10" class="report-btn disabled-btn" type="button" value="Report Disabled" onClick="void(0);" disabled>
                                                    <TMPL_ELSE>
                                                        <input name="BUTTON" class="report-btn red-btn" tabindex="9" type="button" value="<TMPL_IF REPORT_BUTTON><TMPL_VAR NAME=REPORT_BUTTON><TMPL_ELSE>Request Report</TMPL_IF>" onclick="send_report_selector('REPORT/ASSET');" />
                                                </TMPL_IF>
                                            </div>
                                        </div>
                                    <!-- End Asset Report Section -->
                                </TMPL_UNLESS>
                                </td>
                                <td>
                                <TMPL_UNLESS NAME="DELETE_PEOPLE_FINDER_REPORT">
                                        <div class="reportPopHdr">Finder Report</div>
                                        <div class="reportPop">
                                            <ul>
                                                <li>Summary Report <br />
                                                    <span class="subtext">(Indicators and more)</span></li>
                                                <li>Phone Summary<br />
                                                    <span>
                                                        &nbsp;- Current Listed Phones<br />
                                                        &nbsp;- Unverified phones<br />
                                                        &nbsp;- Current Neighbor Phones<br />
                                                        &nbsp;- Possible Relatives Phones<br />
                                                        &nbsp;&nbsp;&nbsp;(2 Degrees)<br />
                                                        &nbsp;- Possible Associate Phones<br />
                                                        &nbsp;- Phones at Historical Addresses<br />
                                                    </span>
                                                </li><li>Bankruptcy Filings</li>
                                                <li>Corporate Affiliations</li>
                                            </ul>
                                            <div class="reportPopFooter">
                                                <TMPL_IF NAME="DISABLE_PEOPLE_FINDER_REPORT">
                                                    <input tabindex="2" class="report-btn disabled-btn" type="button" value="Report Disabled" onClick="void(0);" disabled>
                                                    <TMPL_ELSE>
                                                        <input name="BUTTON" class="report-btn red-btn" tabindex="1" type="button" value="<TMPL_IF REPORT_BUTTON><TMPL_VAR NAME=REPORT_BUTTON><TMPL_ELSE>Request Report</TMPL_IF>" onclick="send_report_selector('REPORT/SHORT_PHONE_REPORT');" />
                                                </TMPL_IF>
                                            </div>
                                        </div>
                                </TMPL_UNLESS>

                                <TMPL_UNLESS DELETE_COMP_REPORT>
                                    <!-- Start Custom Comp Report Section -->
                                        <div class="reportPopHdr">Custom Comprehensive Report</div>
                                        <div class="reportPop">
                                            <ul>
                                                <li>Pick and choose your <br />
                                                    report selections</li>
                                            </ul>
                                            <p>&nbsp;</p>

                                            <div class="reportPopFooter">
                                                <TMPL_IF NAME="DISABLE_COMP_REPORT">
                                                    <input tabindex="6" class="report-btn disabled-btn" type="button" value="Report Disabled" onClick="void(0);" disabled>
                                                    <TMPL_ELSE>
                                                        <input name="BUTTON" class="report-btn red-btn" tabindex="5" type="button" value="<TMPL_IF REPORT_BUTTON><TMPL_VAR NAME=REPORT_BUTTON><TMPL_ELSE>Request Report</TMPL_IF>" onclick="send_report_selector('REPORT/SHORT_REPORT');" />
                                                </TMPL_IF>
                                            </div>
                                        </div>
                                    <!-- End Custom Comp Report Section -->
                                </TMPL_UNLESS>

                                </td>
                                <td>
                            <TMPL_UNLESS DELETE_COMPREHENSIVE_REPORT>
                                <!-- Start Comprehensive Report Section -->
                                    <div class="reportPopHdr">Comprehensive Report</div>
                                    <div class="reportPop">
                                        <ul>
                                            <li>Summary Report <br />
                                                <span class="subtext">(Indicators and more)</span></li>
                                            <li>Bankruptcy</li>
                                            <li>Liens and Judgments</li>
                                            <li>UCC Filings</li>
                                            <li>DEA Controlled Substances</li>
                                            <li>People at Work</li>

                                            <li>Driver Licenses</li>
                                            <li>Motor Vehicles</li>
                                            <li>Property</li>
                                            <li>Watercraft</li>
                                            <li>FAA Pilots</li>
                                            <li>FAA Aircraft</li>

                                            <li>Professional Licenses</li>
                                            <TMPL_IF NAME="NAT_ACC_ENABLE">
                                                <li>National Motor Vehicle Accidents</li>
                                                <TMPL_ELSE>
                                                    <li>Florida Accidents</li>
                                            </TMPL_IF>
                                            <li>Voter Registration</li>
                                            <li>Hunting/Fishing Permits</li>
                                            <li>Concealed Weapons Permits</li>
                                            <li>Federal Firearms & Explosives</li>

                                            <li>Criminal Records</li>
                                            <li>Sexual Offenders</li>
                                            <TMPL_UNLESS DELETE_CUSTOM_DA_WIRELESS>
                                                <li>Phones Plus</li>
                                            </TMPL_UNLESS>
                                        </ul>
                                        <div class="reportPopFooter">
                                            <TMPL_IF NAME="DISABLE_COMPREHENSIVE_REPORT">
                                                <input tabindex="4" class="report-btn disabled-btn" type="button" value="Report Disabled" onClick="void(0);" disabled>
                                                <TMPL_ELSE>
                                                    <input name="BUTTON" class="report-btn red-btn" tabindex="3" type="button" value="<TMPL_IF REPORT_BUTTON><TMPL_VAR NAME=REPORT_BUTTON><TMPL_ELSE>Request Report</TMPL_IF>" onclick="send_report_selector('REPORT/COMPREHENSIVE');" />
                                            </TMPL_IF>
                                        </div>
                                    </div>
                                    <!-- End Comprehensive Report Section -->
                            </TMPL_UNLESS>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </form>
        </body>
        </html>
