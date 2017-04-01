<!-- Begin short_provider_report_body.tpl-->
<div><legend>Report Options</legend></div>

<div class="row-wrapper grey-border margin-for-footer">
	<table class="options-table">
        <thead style="display:none">
          <tr>
            <th aria-label="Provider License Report">&nbsp;</th>
          </tr>
        </thead>
		<TMPL_IF NAME="PREFERENCES_ERROR_MESSAGE">
			<tr>
				<td align="center" colspan="3"><TMPL_VAR NAME="PREFERENCES_ERROR_MESSAGE"></td>
			</tr>
		</TMPL_IF>
		<tr>
			<td width="100%" valign="top">
				<table class="options-table">
					<TMPL_UNLESS NAME="HIDE_PRICES">
						<tr>
							<td class="smallfont1"><br>&nbsp;Provider License Report Price:&nbsp;&nbsp;</span><span class="reportprices">$ 5.00</span><br><br></td>
						</tr>
						<tr>
							<td colspan="3" valign="top">
								<div class="red-divide"></div>
							</td>
						</tr>					
					</TMPL_UNLESS>
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
							<table width="100%">
                                <thead style="display:none">
                                  <tr>
                                    <th aria-label="Provider License Report">&nbsp;</th>
                                  </tr>
                                </thead>
              
								<tr>
									<TMPL_UNLESS NAME="HIDE_PRICES">
										<td>
											Maximum Report Price:&nbsp;$ 5.00
										</td>
									</TMPL_UNLESS>
									<td align="right">
										<table>
                                          <thead style="display:none">
                                            <tr>
                                              <th aria-label="Provider License Report">&nbsp;</th>
                                            </tr>
                                          </thead>
                    
											<tr>
												<td>
													<TMPL_IF NAME="ENABLE_SAVE_REPORT">
														<span<TMPL_IF NAME="REPORT_MANAGER_OFF"> class="disabled_item"</TMPL_IF>><input type="checkbox" name="save-report" id="save-report" value="1" <TMPL_VAR NAME=save-report><TMPL_IF NAME="REPORT_MANAGER_OFF"> readonly onChange="this.checked = !this.checked"</TMPL_IF>> <label for="save-report">Save report for later access.</label></span>
														<TMPL_IF NAME="REPORT_MANAGER_OFF">
															&nbsp;(Saving Reports currently not available)
														</TMPL_IF>
													</TMPL_IF>
												</td>
											</tr>
											<tr>
												<td>
													<input type="checkbox" name="prompt" id="prompt" value="1" <TMPL_VAR NAME=prompt>><label for="prompt">Prompt me for these options for each report.</label>
												</td>
											</tr>
										</table>
									</td>
								</tr>
							</table>
						</td>
					</tr>
				</table>
			</td>
		</tr>	
	</table>
</div>
    <input type=hidden name="ADDR_PRE_TOTAL" value="<TMPL_VAR NAME=ADDR_PRE_TOTAL>">

<!-- End short_provider_report_body.tpl-->
