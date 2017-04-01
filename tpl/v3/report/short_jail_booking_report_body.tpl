<!-- begin: $RCSfile: short_jail_booking_report_body.tpl,v $ -->
<table style="width:100%;">
    <tr>
        <td>
            <table style="width:100%;">
                <tr>
                    <td>
                        <table style="width:100%;">
                            <tr>
                                <td style="width:50%;">
                                    <input type="checkbox" name="prompt" value="1" <TMPL_VAR NAME=prompt>> Prompt me for these options for each report.
                                </td>
                                <td>
                                    <TMPL_IF NAME="ENABLE_SAVE_REPORT">
                                        <span<TMPL_IF NAME="REPORT_MANAGER_OFF"> class="disabled_item"</TMPL_IF>><input type="checkbox" name="save-report" value="1" <TMPL_VAR NAME=save-report><TMPL_IF NAME="REPORT_MANAGER_OFF"> readonly onChange="this.checked = !this.checked"</TMPL_IF>> Save report for later access.</span>
                                        <TMPL_IF NAME="REPORT_MANAGER_OFF">
                                            &nbsp;(Saving Reports currently not available)
                                        </TMPL_IF>
                                    </TMPL_IF>
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>
        </td>
    </tr>
</table>
<!-- end: $RCSfile: short_others_report_body.tpl,v $ -->
