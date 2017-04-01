<!-- Begin short_provider_card_report_body.tpl-->
    <div><legend>Report Options</legend></div>
    <div class="row-wrapper grey-border margin-for-footer">
        <table class="options-table">
            <thead style="display:none">
              <tr>
                <th aria-label="Dummy">&nbsp;</th>
              </tr>
            </thead>
			<TMPL_IF NAME="PREFERENCES_ERROR_MESSAGE">
				<tr>
					<td align="center" colspan="3" class="left-p"><TMPL_VAR NAME="PREFERENCES_ERROR_MESSAGE"></td>
				</tr>
			</TMPL_IF>
            <tr>
                <td>
                    <div class="text-and-select">
                        <div class="tas-text">
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
                <td>
                    <table>
                      <thead style="display:none">
                        <tr>
                          <th aria-label="Dummy">&nbsp;</th>
                        </tr>
                      </thead>
                    
                        <tr>
                            <td class="checkbox-td"><input type="checkbox" name="prov-card-prompt" id="prov-card-prompt" value="1" <TMPL_VAR NAME=prov-card-prompt> ></td>
                            <td class="checkbox-label-td"><label for="prov-card-prompt">&nbsp;Prompt me for these options for each report.</label> </td>
                        </tr>
                        <tr>
                            <TMPL_IF NAME="ENABLE_SAVE_REPORT">
                                <TMPL_IF NAME="REPORT_MANAGER_OFF">
                                    <td width="1%"  class="disabled_medblack"><input type="checkbox" name="save-report" id="save-report" value="1" <TMPL_VAR NAME="save-report"> readonly onChange="this.checked = !this.checked"></td>
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

<!-- End short_provider_card_report_body.tpl-->
