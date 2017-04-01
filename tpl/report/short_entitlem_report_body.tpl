<!-- begin: $RCSfile: short_entitlem_report_body.tpl,v $ -->
              <table border="0" cellpadding="2" cellspacing="0" align="center">
                <tr>
                  <td>
                    <TMPL_INCLUDE NAME="report_selector_entitlem.tpl">
                  </td>
                </tr>
                <tr>
                  <td nowrap="nowrap" class="smallfont1">Select Time Frame:</td>
                </tr>
                <tr>
                  <td>
                    <select name="daterange">
                      <option value="1"<TMPL_IF
                       NAME="daterange-1"> selected="selected"</TMPL_IF>>Current Only</option>
                      <option value="12"<TMPL_IF
                       NAME="daterange-12"> selected="selected"</TMPL_IF>>Most Recent 12 Months</option>
                      <option value="24"<TMPL_IF
                       NAME="daterange-24"> selected="selected"</TMPL_IF>>Most Recent 24 Months</option>
                      <option value="36"<TMPL_IF
                       NAME="daterange-36"> selected="selected"</TMPL_IF>>Most Recent 36 Months</option>
                      <option value="48"<TMPL_IF
                       NAME="daterange-48"> selected="selected"</TMPL_IF>>Most Recent 48 Months</option>
                      <option value="0"<TMPL_IF
                       NAME="daterange-0"> selected="selected"</TMPL_IF>>All Results</option>
                    </select>
                  </td>
                </tr>
                <tr>
                  <td nowrap="nowrap" class="smallfont1">Select Report Type:</td>
                </tr>
                <tr>
                  <td>
                    <select name="report-format">
                      <option value="html"<TMPL_IF
                       NAME="report-format-html"> selected="selected"</TMPL_IF>>Interactive Web Page</option>
                      <option value="text"<TMPL_IF
                       NAME="report-format-text"> selected="selected"</TMPL_IF>>Plain Text Web Page</option>
                      <option value="word"<TMPL_IF
                       NAME="report-format-word"> selected="selected"</TMPL_IF>>Microsoft Word Document</option>
                      <option value="pdf"<TMPL_IF
                       NAME="report-format-pdf"> selected="selected"</TMPL_IF>>PDF Document</option>
                    </select>
                  </td>
                </tr>
                <tr>
                  <td class="smallfont1">
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
                <tr>
                  <td class="smallfont1" valign="top">
                    <input type="checkbox" name="prompt"
                     value="1" <TMPL_IF NAME=prompt>checked="checked" </TMPL_IF> />
                    Prompt me for these options for each report.
                  </td>
                </tr>
              </table>
<!-- end: $RCSfile: short_entitlem_report_body.tpl,v $ -->
