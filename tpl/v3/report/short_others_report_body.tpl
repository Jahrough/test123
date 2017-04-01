<!-- begin: $RCSfile: short_others_report_body.tpl,v $ -->
<div class="row-wrapper grey-border">
    <TMPL_UNLESS NAME="HIDE_PRICES">
        <legend><TMPL_VAR NAME="REPORT_NAME"> Price:&nbsp;<TMPL_IF NAME="REPORT_PRICE"><TMPL_VAR NAME="REPORT_PRICE"><TMPL_ELSE>$1.00</TMPL_IF></legend>
    </TMPL_UNLESS>
    <table class="options-table">
        <thead style="display: none">
          <tr>
            <th aria-label="">&nbsp;</th>
          </tr>
        </thead>
        <TMPL_IF NAME="PREFERENCES_ERROR_MESSAGE">
            <tr>
                <td align="center" colspan="3"><b><font color="red"><TMPL_VAR NAME="PREFERENCES_ERROR_MESSAGE"></font></b></td>
            </tr>
        </TMPL_IF>
        <tr>
            <td colspan="3" valign="top">
                <div class="red-divide"></div>
            </td>
        </tr>
        <tr>
            <td colspan="3">
                <table style="width:100%;">
                  <thead style="display: none">
                    <tr>
                      <th aria-label="Checkbox">&nbsp;</th>
                      <th aria-label="Description">&nbsp;</th>
                      <th aria-label="Checkbox">&nbsp;</th>
                      <th aria-label="Description">&nbsp;</th>
                    </tr>
                  </thead>
                
                    <tr>
                        <td class="checkbox-td"><input type="checkbox" name="prompt" id="prompt" value="1" <TMPL_VAR NAME=prompt> ></td>
                        <td class="checkbox-label-td"><label for="prompt">&nbsp;Prompt me for these options for each report.</label></td>
                        <TMPL_IF NAME="ENABLE_SAVE_REPORT">
                            <TMPL_IF NAME="REPORT_MANAGER_OFF">
                                <td class="checkbox-td"  class="disabled_medblack"><input type="checkbox" name="save-report" id="save-report" value="1" <TMPL_VAR NAME="save-report"> readonly onChange="this.checked = !this.checked"></td>
                                <td class="checkbox-label-td"><label for="save-report">&nbsp;(Saving Reports currently not available).</td>
                            <TMPL_ELSE>
                                <td class="checkbox-td"><input type="checkbox" name="save-report" id="save-report" value="1" <TMPL_VAR NAME="save-report"> ></td>
                                <td class="checkbox-label-td"><label for="save-report">&nbsp;Save report for later access.</label></td>
                            </TMPL_IF>
                        </TMPL_IF>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</div>
<!-- end: $RCSfile: short_others_report_body.tpl,v $ -->
