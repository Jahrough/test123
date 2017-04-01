<!-- Begin short_summary_report_body.tpl-->
<script>
    <!--window.resizeTo(780,680);-->
</script>
<noscript>Your browser does not support JavaScript!</noscript>

<TMPL_IF NAME="PREFERENCES_ERROR_MESSAGE">
    <div class="row-wrapper grey-border">
        <table class="options-table">
            <tr>
                <td align="center" colspan="3"><b><font color="red"><TMPL_VAR NAME="PREFERENCES_ERROR_MESSAGE"></font></b></td>
            </tr>
        </table>
    </div>
</TMPL_IF>

<div class="row-wrapper grey-border margin-for-footer">
    <table class="options-table" style="margin-bottom:10px;">	  
        <tr>
            <td align="left" class="left-p"><b>Asset Report:</b><TMPL_UNLESS HIDE_PRICES><b class="red-text">$2.50</b></TMPL_UNLESS></td>
        </tr>
        <tr>
            <td class="left-p" valign="top">
                <ul>
                    <TMPL_IF FCOL_TCOL>
                        <li>Property Deeds &amp; Assessments</li>
                        <li>Watercraft</li>
                        <li>FAA Pilots &amp; FAA Aircraft</li>
                    <TMPL_ELSE>
                        <li>Summary Report<br/><span class="subtext" style="margin:0 0 2px 8px;">(Indicators and more)</span>
                        </li>
                        <li>Property Deeds &amp; Assessments</li>
                        <li>Motor Vehicles</li>
                        <li>Watercraft</li>
                        <li>FAA Pilots &amp; FAA Aircraft</li>                                                        
                        <li>UCC Filings</li>
                        <TMPL_IF NAME="COL">
                            <li>People at Work</li>
                        </TMPL_IF>
                    </TMPL_IF>
                </ul>
            </td>
        </tr>
        <tr>
            <td colspan="3" valign="top">
                <div class="red-divide"></div>
            </td>
        </tr>
    </table>
    <div class="section-row">
        <table>
            <tr>
                <td>
                    <div class="text-and-select">
                        <div class="tas-text">
                            <label for="report-format">Select Report Type:</label>
                        </div>
                        <div class="tas-select">
                            <select id="report-format" name="report-format">
                                <option value="html"<TMPL_IF NAME="report-format-html"> SELECTED</TMPL_IF>>Interactive Web Page</option>
                                <option value="text"<TMPL_IF NAME="report-format-text"> SELECTED</TMPL_IF>>Plain Text Web Page</option>
                                <option value="word"<TMPL_IF NAME="report-format-word"> SELECTED</TMPL_IF>>Microsoft Word Document</option>
                                <option value="pdf"<TMPL_IF NAME="report-format-pdf"> SELECTED</TMPL_IF>>PDF Document</option>
                            </select>
                        </div>
                    </div>
                </td>
                <TMPL_IF NAME="ENABLE_ALSO_FOUND_REPORTS">
                    <td style="padding-left:15px;">
                        <span><input type="checkbox" name="report-content-nav" id="report-content-nav-checkbox" value="1" <TMPL_VAR NAME=report-content-nav>><label for="report-content-nav-checkbox"> Display report navigation bar.</label></span>
                    </td>
                </TMPL_IF>
                <TMPL_IF NAME="ENABLE_SAVE_REPORT">
                    <td style="padding-left:15px;">
                        <span<TMPL_IF NAME="REPORT_MANAGER_OFF"> class="disabled_item"</TMPL_IF>><input type="checkbox" name="save-report" id="save-report-checkbox" value="1" <TMPL_VAR NAME=save-report><TMPL_IF NAME="REPORT_MANAGER_OFF"> readonly onChange="this.checked = !this.checked"</TMPL_IF>><label for="save-report-checkbox"> Save report for later access.</label></span>
                        <TMPL_IF NAME="REPORT_MANAGER_OFF">
                            &nbsp;(Saving Reports currently not available)
                        </TMPL_IF>
                    </td>
                </TMPL_IF>
            </tr>
        </table>
    </div>
</div>
<!-- End short_asset_report_body.tpl -->
