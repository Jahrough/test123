<!-- Begin short_skiptrace_report_body.tpl -->
<TMPL_IF NAME="PREFERENCES_ERROR_MESSAGE">
    <div class="row-wrapper grey-border">
        <table class="options-table">
            <thead style="display: none">
              <tr>
                 <th aria-label="Error Message">&nbsp;</th>
              </tr>
            </thead>
            <tr>
                <td align="center" colspan="3"><TMPL_VAR NAME="PREFERENCES_ERROR_MESSAGE"></td>
            </tr>
        </table>
    </div>
</TMPL_IF>

<div class="row-wrapper grey-border margin-for-footer">
    <table class="options-table" style="margin-bottom:10px;">
        <thead style="display: none">
              <tr>
                 <th aria-label="Finder Report">&nbsp;</th>
              </tr>
        </thead>
    
        <tr>
            <td align="left" class="left-p"><strong>Finder Report:</strong> <TMPL_UNLESS HIDE_PRICES><strong class="red-text">$2.50</strong></TMPL_UNLESS></td>
        </tr>
        <tr>
            <td>
                <ul>
                    <li>Summary Report</li>
                    <li>Phone Summary
                        <ul>
                            <li>Current Listed Phones</li>
                            <li>Unverified phones </li>
                            <li>Current Neighbor Phones</li>
                            <li>Possible Relatives Phones - (2 Degrees)</li>
                            <li>Possible Associate Phones</li>
                            <li>Phones at Historical Addresses</li>
                        </ul>
                    </li>
                    <TMPL_UNLESS FCOL_TCOL>
                        <li>Bankruptcy Filings</li>
                    </TMPL_UNLESS>
                    <li>Corporate Affiliations</li>
                </ul>
            </td>
        </tr>
        <tr>
            <td colspan="3" valign="top">
                <div class="red-divide"></div>
            </td>
        </tr>
    </table>
    <table class="w100pc">
        <thead style="display: none">
              <tr>
                 <th aria-label="Report Type selection">&nbsp;</th>
              </tr>
        </thead>
        <tr>
            <td colspan="2">
                <div class="text-and-select">
                    <div class="tas-text" style="color: #6D6E71;font-size:14px;">
                        <label for="report-format">Select Report Type:</label>
                    </div>
                    <div class="tas-select">
                        <select name="report-format" id="report-format">
                            <option value="html"<TMPL_IF NAME="report-format-html"> SELECTED</TMPL_IF>>Interactive Web Page</option>
                            <option value="text"<TMPL_IF NAME="report-format-text"> SELECTED</TMPL_IF>>Plain Text Web Page</option>
                            <option value="word"<TMPL_IF NAME="report-format-word"> SELECTED</TMPL_IF>>Microsoft Word Document</option>
                            <option value="pdf"<TMPL_IF NAME="report-format-pdf"> SELECTED</TMPL_IF>>PDF Document</option>
                        </select>
                    </div>
                </div>
            </td>
        </tr>
        <tr>
            <td style="padding:10px;">
                <table border="0" cellpadding="0" cellspacing="0">
                   <thead style="display: none">
                     <tr>
                       <th aria-label="Report Type selection" colspan="2">&nbsp;</th>
                     </tr>
                   </thead>
                    <tr>
                        <TMPL_IF NAME="ENABLE_SAVE_REPORT">
                            <TMPL_IF NAME="REPORT_MANAGER_OFF">
                                <td class="checkbox-td"><input type="checkbox" name="save-report" id="save-report" value="1" <TMPL_VAR NAME="save-report"> readonly onChange="this.checked = !this.checked"></td>
                                <td class="checkbox-label-td-disabled"><label for="save-report">&nbsp;(Saving Reports currently not available).</td>
                            <TMPL_ELSE>
                                <td class="checkbox-td"><input type="checkbox" name="save-report" id="save-report" value="1" <TMPL_VAR NAME="save-report"> ></td>
                                <td class="checkbox-label-td"><label for="save-report">&nbsp;Save report for later access.</label></td>
                            </TMPL_IF>
                         <TMPL_ELSE>
                            <td colspan="2"></td>
                        </TMPL_IF>
                    </tr>
                    <TMPL_IF NAME="ENABLE_ALSO_FOUND_REPORTS">
                        <tr>
                            <td class="checkbox-td"><input type="checkbox" name="report-content-nav" id="report-content-nav-checkbox" value="1" <TMPL_VAR NAME=report-content-nav> ></td>
                            <td class="checkbox-label-td"><label for="report-content-nav-checkbox">&nbsp;Display report navigation bar.</label></td>
                        </tr>
                    </TMPL_IF>
                </table>
            </td>
            <td width="54%" style="padding:10px;">
                <table border="0" cellpadding="0" cellspacing="0">
                   <thead style="display: none">
                     <tr>
                       <th aria-label="Report Type selection" colspan="2">&nbsp;</th>
                     </tr>
                   </thead>
                    <tr>
                        <td class="checkbox-td"><input type="checkbox" name="prompt" id="prompt" value="1" <TMPL_VAR NAME=prompt> ></td>
                        <td class="checkbox-label-td"><label for="prompt">&nbsp;Prompt me for these options for each report.</label></td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</div>
<!-- End short_skiptrace_report_body.tpl -->
