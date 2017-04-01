<!-- Begin short_pre_lit_report_body.tpl -->
<div>
    <TMPL_IF HIDE_PRICES>
        <legend>Pre-Litigation Report</legend>
    <TMPL_ELSE>
        <legend>Pre-Litigation Report: $3.50</legend>
    </TMPL_IF>
</div>
<div class="section-row">
    <ul class="left">
        <TMPL_IF FCOL_TCOL>
            <li>Property Deeds &amp; Assessments</li>
            <li>Watercraft</li>
            <li>Bankruptcies</li>
            <li>Liens and Judgments</li>
        <TMPL_ELSE>
            <li>Summary Report (Indicators and more)</li>
            <li>Address Summary</li>
            <li>Property Deeds &amp; Assessments</li>
            <li>MVR Records</li>
            <li>Watercraft</li>
            <li>UCC Filings</li>
            <li>People at Work</li>
            <li>Bankruptcies</li>
            <li>Liens and Judgments</li>
            <li>Deceased Indicator</li>
            <li>Marriage/Divorce Records</li>
            <li>USA PATRIOT Act Search</li>
            <li>Professional Licenses</li>
        </TMPL_IF>
    </ul>
</div>
<div class="section-row left">
    <div id="lineVertRedDot"></div>
</div>
<div class="section-row">
    <table style="width:100%;">
        <TMPL_IF NAME="PREFERENCES_ERROR_MESSAGE">
            <tr>
                <td align="center"><TMPL_VAR NAME="PREFERENCES_ERROR_MESSAGE"></td>
            </tr>
        </TMPL_IF>
        <tr>
            <td style="width:100%;">
                <table border="0" cellpadding="2" cellspacing="0" width="100%">
                    <tr>
                        <td>
                            <table border="0" cellpadding="0" cellspacing="0">
                                <tr>
                                    <td class="bold font-darkgrey">Select Report Type:&nbsp;</td>
                                    <td>
                                        <select name="report-format">
                                            <option value="html"<TMPL_IF NAME="report-format-html"> SELECTED</TMPL_IF>>Interactive Web Page</option>
                                            <option value="text"<TMPL_IF NAME="report-format-text"> SELECTED</TMPL_IF>>Plain Text Web Page</option>
                                            <option value="word"<TMPL_IF NAME="report-format-word"> SELECTED</TMPL_IF>>Microsoft Word Document</option>
                                            <option value="pdf"<TMPL_IF NAME="report-format-pdf"> SELECTED</TMPL_IF>>PDF Document</option>
                                        </select>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <TMPL_IF NAME="ENABLE_ALSO_FOUND_REPORTS">
                        <tr>
                            <td width="100%" align="center" valign="top" class="smallfont1">
                                <span><input type="checkbox" name="report-content-nav" id="report-content-nav-checkbox" value="1" <TMPL_VAR NAME=report-content-nav>><label for="report-content-nav-checkbox"> Display report navigation bar.</label></span>
                            </td>
                        </tr>
                    </TMPL_IF>
                    <TMPL_IF NAME="ENABLE_SAVE_REPORT">
                        <tr>
                            <td>
                                <span<TMPL_IF NAME="REPORT_MANAGER_OFF"> class="disabled_item"</TMPL_IF>><input type="checkbox" name="save-report" id="save-report-checkbox" value="1" <TMPL_VAR NAME=save-report><TMPL_IF NAME="REPORT_MANAGER_OFF"> readonly onChange="this.checked = !this.checked"</TMPL_IF>><label for="save-report-checkbox"> Save report for later access.</label></span>
                                <TMPL_IF NAME="REPORT_MANAGER_OFF">
                                    &nbsp;(Saving Reports currently not available)
                                </TMPL_IF>
                            </td>
                        </tr>
                    </TMPL_IF>
                </table>
            </td>
        </tr>
    </table>
</div>
<!-- End short_pre_lit_report_body.tpl -->
