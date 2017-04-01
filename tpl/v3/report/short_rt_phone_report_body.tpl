<!-- begin: $RCSfile: short_rt_phone_report_body.tpl,v $ -->
<table style="width:100%;">
    <tr>
        <td style="width:50%;">
            <input type="checkbox" name="prompt" value="1" <TMPL_IF NAME=prompt>checked="checked" </TMPL_IF> />
            Prompt me for these options for each report.
        </td>
        <td style="width:50%;">
            <TMPL_IF NAME="ENABLE_SAVE_REPORT">
                <span<TMPL_IF NAME="REPORT_MANAGER_OFF"> class="disabled_item"</TMPL_IF>>
                    <input type="checkbox" name="save-report" value="1" <TMPL_IF NAME=save-report>checked="checked" </TMPL_IF> <TMPL_IF NAME="REPORT_MANAGER_OFF"> readonly="readonly" onChange="this.checked = !this.checked"</TMPL_IF> />
                    Save report for later access.
                </span>
                <TMPL_IF NAME="REPORT_MANAGER_OFF">
                    &nbsp;(Saving Reports currently not available)
                </TMPL_IF>
            </TMPL_IF>
        </td>
    </tr>
</table>
<!-- end: $RCSfile: short_rt_phone_report_body.tpl,v $ -->
