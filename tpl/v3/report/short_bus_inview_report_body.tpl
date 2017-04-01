<!-- Begin short_bus_inview_report_body.tpl-->
<div>
    <legend><TMPL_UNLESS HIDE_PRICES>Base Report Price:&nbsp;&nbsp;<TMPL_IF NAME="REPORT_PRICE"><TMPL_VAR NAME="REPORT_PRICE"><TMPL_ELSE>$6.00</TMPL_IF><TMPL_ELSE>Base Report Features:</TMPL_UNLESS></legend>
</div>
<table style="width:100%;">
    <TMPL_IF NAME="PREFERENCES_ERROR_MESSAGE">
        <tr>
            <td align="center"><TMPL_VAR NAME="PREFERENCES_ERROR_MESSAGE"></td>
        </tr>
    </TMPL_IF>
    <tr>
        <td>
            <table style="width:100%;">
                <tr>
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
<!-- End short_bus_inview_report_body.tpl-->
