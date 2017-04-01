<!-- Begin short_mvr_report_body.tpl-->
<table border="0" cellpadding="0" cellspacing="0" width="100%">
<thead class="nodisplay">
  <tr>
    <th aria-label="Your options">&nbsp;</th>
  </tr>
</thead>
<TMPL_IF NAME="INVALID_DL_NUMBER">
  <tr>
    <td class="smallfont1" align="center">
    <div class="message warningmessage"><b><TMPL_VAR NAME="INVALID_DL_NUMBER"></b></div>
    <br>
    </td>
  </tr>
<TMPL_ELSE>
    <TMPL_IF NAME="PREFERENCES_ERROR_MESSAGE">
      <tr>
        <td align="center" colspan="3"><div class="message warningmessage"><TMPL_VAR NAME="PREFERENCES_ERROR_MESSAGE"></div></td>
      </tr>
    </TMPL_IF>
  <tr>
    <td width="100%" valign="top">
    
    <div class="row-wrapper grey-border mgb0">
        <TMPL_UNLESS NAME="HIDE_MVR_PRICES"><legend>MVR Reports Price:&nbsp;&nbsp;<span class="red-text">$<TMPL_VAR NAME="MVR_STATE_PRICE"></legend></TMPL_UNLESS>

             <table class="options-table">
               <thead class="nodisplay">
                 <tr>
                   <th colspan="2" aria-label="Options">&nbsp;</th>
                 </tr>
               </thead>
                  
                    <tr>
                        <td colspan="2" valign="top"><div class="red-divide"></div></td>
                    </tr>

                    <tr>
                        <td colspan="2">
                            <table style="width:100%;">
                              <thead class="nodisplay">
                                <tr>
                                  <th aria-label="Report Type">&nbsp;</th>
                                  <td></td>
                                </tr>
                              </thead>
                            
                                <tr>
                                    <td style="width:150px;padding-left:8px;">
                                        <b>Select Report Type:&nbsp;</b>
                                    </td>
                                    <td>
                                        <label class="nodisplay" for="report-format">Report Format</label>
                                        <select id="report-format" name="report-format">
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
                              <thead class="nodisplay">
                                <tr>
                                  <th aria-label="Check box">&nbsp;</th>
                                  <th aria-label="Description">&nbsp;</th>
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

                        <td>

                        </td>
                    </tr>
                </table>
    </div>

    </td>
  </tr>
  <tr>
  <tr>
    <td colspan="3"><input type=hidden name="ADDR_PRE_TOTAL" value="<TMPL_VAR NAME=ADDR_PRE_TOTAL>"></td>
  </tr>
  </tr>
</TMPL_IF>
</table>
<!-- End short_mvr_report_body.tpl-->
