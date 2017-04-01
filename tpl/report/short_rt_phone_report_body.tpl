<!-- begin: $RCSfile: short_rt_phone_report_body.tpl,v $ -->
              <table border="0" cellpadding="2" cellspacing="0" width="640">
                <tr>
                  <td width="49%" class="smallfont1" valign="top"><input type="checkbox" name="prompt"
                   value="1" <TMPL_IF NAME=prompt>checked="checked" </TMPL_IF> />
                    Prompt me for these options for each report.
                  </td>
                  <td width="2%" nowrap="nowrap" class="unifont1">&nbsp;&nbsp;&nbsp;&nbsp;</td>
                  <td width="49%" class="smallfont1">
  <TMPL_IF NAME="ENABLE_SAVE_REPORT">
                    <span<TMPL_IF NAME="REPORT_MANAGER_OFF"> class="disabled_item"</TMPL_IF>>
                      <input type="checkbox" name="save-report" value="1" 
  <TMPL_IF NAME=save-report>checked="checked" </TMPL_IF>
  <TMPL_IF NAME="REPORT_MANAGER_OFF"> readonly="readonly" onChange="this.checked = !this.checked"</TMPL_IF> />
                      Save report for later access.
                    </span>
    <TMPL_IF NAME="REPORT_MANAGER_OFF">
                    &nbsp;(Saving Reports currently not available)
    </TMPL_IF>
  </TMPL_IF>
                  </td>
                </tr>
                <!-- <tr>
                  <td colspan="3" class="smallfont1" valign="top" align="center">
                    <input type="checkbox" name="port_info" value="1" <TMPL_VAR NAME=port_info>/>
                    Historical Porting Information.
                  </td>
                </tr> -->
              </table>
<!-- end: $RCSfile: short_rt_phone_report_body.tpl,v $ -->
