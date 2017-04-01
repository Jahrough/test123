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
            <td align="left" class="left-p"><b>Summary Report:</b> <TMPL_UNLESS HIDE_PRICES><b class="red-text">$.50</b></TMPL_UNLESS></td>
        </tr>
        <tr>
            <td class="left-p" valign="top">
                <ul>
                    <li>Address Summary</li>
                    <li>Others using SSN</li>
                    <li>Date/Locations where SSN Issued</li>
                    <li>Census Data</li>
                    <li>Bankruptcy Indicator</li>
                    <li>Property Indicator</li>
                    <li>Corporate Affiliations Indicator</li>
                </ul>
            </td>
        </tr>
        <tr>
            <td colspan="3" valign="top">
                <div class="red-divide"></div>
            </td>
        </tr>
        <tr>
            <td class="45pc left-p" valign="top">
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
            <td></td>
            <td width="54%" class="left-p" valign="top">
                <table border="0" cellpadding="0" cellspacing="0" width="100%">
                    <tr>
                        <TMPL_IF NAME="ENABLE_SAVE_REPORT">
                            <TMPL_IF NAME="REPORT_MANAGER_OFF">
                                <td class="checkbox-td" class="disabled_medblack"><input type="checkbox" name="save-report" id="save-report" value="1" <TMPL_VAR NAME="save-report"> readonly onChange="this.checked = !this.checked"></td>
                                <td align="left" class="disabled_medblack"><label for="save-report">&nbsp;(Saving Reports currently not available).</td>
                            <TMPL_ELSE>
                                <td class="checkbox-td"><input type="checkbox" name="save-report" id="save-report" value="1" <TMPL_VAR NAME="save-report"> ></td>
                                <td class="checkbox-label-td"><label for="save-report">&nbsp;Save report for later access.</label></td>
                            </TMPL_IF>
                        <TMPL_ELSE>
                            <td colspan="2"></td>
                        </TMPL_IF>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</div>
<!-- End short_summary_report_body.tpl-->
