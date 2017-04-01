<!-- begin: v3/report/short_entitlem_report_body.tpl -->
<div>
    <legend>Report Features:</legend>
</div>
<div class="row-wrapper grey-border">
    <table class="options-table">
        <thead style="display: none">
          <tr>
            <th aria-label="Report Options">&nbsp;</th>
          </tr>
        </thead> 
        <tr>
            <td style="width:30%;">
                <table style="width:100%;">
                  <thead style="display: none">
                    <tr>
                      <th aria-label="Options">&nbsp;</th>
                    </tr>
                  </thead> 
                    <tr>
                        <td class="checkbox-td">&nbsp;</td>
                        <td class="checkbox-label-td">Summary Report</td>
                        <td class="checkbox-td">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="checkbox-td">&nbsp;</td>
                        <td class="checkbox-label-td">Assets</td>
                        <td class="checkbox-td">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="checkbox-td">&nbsp;</td>
                        <td class="checkbox-label-td">Addresses</td>
                        <td class="checkbox-td">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="checkbox-td">&nbsp;</td>
                        <td class="checkbox-label-td">Associates &amp; Relatives</td>
                        <td class="checkbox-td">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="checkbox-td">&nbsp;</td>
                        <td class="checkbox-label-td">Bankruptcy, Liens and Judgments</td>
                        <td class="checkbox-td">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="checkbox-td">&nbsp;</td>
                        <td class="checkbox-label-td">UCC Filings</td>
                        <td class="checkbox-td">&nbsp;</td>
                    </tr>
                </table>
            </td>
            <td>
                <table boder="0" cellpadding="0" cellspacing="0" width="100%">
                  <thead style="display: none">
                    <tr>
                      <th aria-label="Options">&nbsp;</th>
                    </tr>
                  </thead> 
                    <tr>
                        <td class="checkbox-td">&nbsp;</td>
                        <td class="checkbox-label-td">People at Work</td>
                        <td class="checkbox-td">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="checkbox-td">&nbsp;</td>
                        <td class="checkbox-label-td">Driver Licenses</td>
                        <td class="checkbox-td">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="checkbox-td">&nbsp;</td>
                        <td class="checkbox-label-td">Vehicle Registrations</td>
                        <td class="checkbox-td">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="checkbox-td">&nbsp;</td>
                        <td class="checkbox-label-td">Professional Licenses</td>
                        <td class="checkbox-td">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="checkbox-td">&nbsp;</td>
                        <td class="checkbox-label-td">Criminal Records</td>
                        <td class="checkbox-td">&nbsp;</td>
                    </tr>
                    <TMPL_IF DO_SHOW_PHONES_PLUS>
                        <tr>
                            <td class="checkbox-td">&nbsp;</td>
                            <td class="checkbox-label-td">Phones Plus</td>
                            <td class="checkbox-td">&nbsp;</td>
                        </tr>
                    </TMPL_IF>
                </table>
            </td>
        </tr>


        <tr>
            <td>
                <table border="0" cellpadding="0" cellspacing="0" width="100%">
                  <thead style="display: none">
                    <tr>
                      <th aria-label="Options">&nbsp;</th>
                    </tr>
                  </thead> 
                
                    <tr>
                        <td class="left-p"><label for="daterange"><strong>Select Time Frame:&nbsp;</strong></label></td>
                        <td>
                            <select name="daterange" id="daterange">
                                <option value="1"<TMPL_IF NAME="daterange-1"> selected="selected"</TMPL_IF>>Current Only</option>
                                <option value="12"<TMPL_IF NAME="daterange-12"> selected="selected"</TMPL_IF>>Most Recent 12 Months</option>
                                <option value="24"<TMPL_IF NAME="daterange-24"> selected="selected"</TMPL_IF>>Most Recent 24 Months</option>
                                <option value="36"<TMPL_IF NAME="daterange-36"> selected="selected"</TMPL_IF>>Most Recent 36 Months</option>
                                <option value="48"<TMPL_IF NAME="daterange-48"> selected="selected"</TMPL_IF>>Most Recent 48 Months</option>
                                <option value="0"<TMPL_IF NAME="daterange-0"> selected="selected"</TMPL_IF>>All Results</option>
                            </select>
                        </td>
                        <td>
                            <a href="javascript:void(0);" style="cursor: help;" onclick="general_win('http://www.accurint.com/help/bps/entitlements_report_help.html', 'HelpWindow', 780, 490, 1, 1, 1, 1, 1, 0);">
                                <img src="<TMPL_VAR NAME=IMGPATH>/ico_question.gif" alt="More Information" border="0" height="13" hspace="5" width="14"/>
                            </a>
                        </td>
                    </tr>
                </table>
            </td>

            <td>
            </td>
        </tr>

        <tr>
            <td colspan="2" valign="top"><div class="red-divide"></div></td>
        </tr>

        <tr>
            <td colspan="2">
                <table style="width:100%;">
                  <thead style="display: none">
                    <tr>
                      <th aria-label="Options">&nbsp;</th>
                    </tr>
                  </thead> 
                    <tr>
                        <td style="width:150px;padding-left:8px;">
                            <label for="report-format"><strong>Select Report Type:&nbsp;</strong></label>
                        </td>
                        <td>
                            <select name="report-format" id="report-format">
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

        <tr>
            <td>
                <table border="0" cellpadding="0" cellspacing="0" width="100%">
                  <thead style="display: none">
                    <tr>
                      <th aria-label="Options">&nbsp;</th>
                    </tr>
                  </thead> 
                
                    <tr>
                        <td class="checkbox-td"><input type="checkbox" name="prompt" id="prompt" value="1" <TMPL_VAR NAME=prompt> ></td>
                        <td class="checkbox-label-td"><label for="prompt">&nbsp;Prompt me for these options for each report.</label></td>
                    </tr>
                </table>
            </td>

            <td>
                <table border="0" cellpadding="0" cellspacing="0" width="100%">
                  <thead style="display: none">
                    <tr>
                      <th aria-label="Options">&nbsp;</th>
                    </tr>
                  </thead> 
                
                    <tr>
                        <TMPL_IF NAME="ENABLE_SAVE_REPORT">
                            <TMPL_IF NAME="REPORT_MANAGER_OFF">
                                <td class="checkbox-td left-p"><input type="checkbox" name="save-report" id="save-report" value="1" <TMPL_VAR NAME="save-report"> readonly onChange="this.checked = !this.checked"></td>
                                <td align="left" class="disabled_medblack"><label for="relatives">&nbsp;(Saving Reports currently not available).</td>
                            <TMPL_ELSE>
                                <td class="checkbox-td left-p"><input type="checkbox" name="save-report" id="save-report" value="1" <TMPL_VAR NAME="save-report"> ></td>
                                <td class="checkbox-label-td"><label for="save-report">&nbsp;Save report for later access.</label></td>
                            </TMPL_IF>
                        <TMPL_ELSE>
                            <td colspan="2">&nbsp;</td>
                        </TMPL_IF>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
<!-- end: v2/report/short_entitlem_report_body.tpl -->
