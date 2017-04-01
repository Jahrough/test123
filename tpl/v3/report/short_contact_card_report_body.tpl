<!-- Begin short_contact_card_report_body.tpl-->
<TMPL_IF NAME="PREFERENCES_ERROR_MESSAGE">
    <div class="row-wrapper grey-border">
        <table class="options-table">
            <thead style="display: none">
              <tr>
                 <th aria-label="Error Message">&nbsp;</th>
              </tr>
            </thead>
            <tr>
                <td align="center" colspan="3"><TMPL_VAR NAME="PREFERENCES_ERROR_MESSAGE"></td>
            </tr>
        </table>
    </div>
</TMPL_IF>


<div class="row-wrapper grey-border mgb0">
    <legend><TMPL_UNLESS HIDE_PRICES>Base Report Price:&nbsp;&nbsp;<span class="red-text">$<TMPL_VAR NAME="base-contact-card-price"></span><TMPL_ELSE>Base Report Features:</TMPL_UNLESS></legend>
    <table class="options-table">
        <thead style="display: none">
          <tr>
            <th aria-label="Report Options" colspan="3">&nbsp;</th>
          </tr>
        </thead>
        <TMPL_IF NAME="PREFERENCES_ERROR_MESSAGE">
            <tr>
                <td align="center" colspan="3"><b><font color="red"><TMPL_VAR NAME="PREFERENCES_ERROR_MESSAGE"></font></b></td>
            </tr>
        </TMPL_IF>

        <tr>
            <td class="left-p" colspan="3" valign="top" style="padding-bottom:10px">
                <table style="width:62%;">
                   <thead style="display: none">
                     <tr>
                       <th aria-label="Report Options">&nbsp;</th>
                     </tr>
                   </thead>
					<TMPL_UNLESS DISABLE_DA_WIRELESS>
						<TMPL_UNLESS DELETE_DA_WIRELESS>
							<tr>
								<td class="tas-text"><input type="checkbox" id="phones-plus-data" name="phones-plus-data" value="1" <TMPL_VAR NAME="phones-plus-data"> onClick="change_total(this, <TMPL_VAR NAME="phones-plus-data-price">, document.forms[0].CONTACT_CARD_TOTAL,document.forms[0].CONTACT_CARD_PRE_TOTAL)"><label for="phones-plus-data">Phones Plus</label><TMPL_UNLESS HIDE_CONTACT_CARD_PRICE><TMPL_UNLESS HIDE_PRICES>&nbsp;&nbsp;&nbsp;$<TMPL_VAR NAME="phones-plus-data-price"></TMPL_UNLESS></TMPL_UNLESS></td>
							</tr>
						</TMPL_UNLESS> 	
					</TMPL_UNLESS>							
					<tr>
						<td class="w80pc checkbox-label-td" align="left" class="smallblack">
                            <label for="relatives">&nbsp;Relatives</label>
							&nbsp;&nbsp;
							<select id="relative-depth" name="relative-depth" onChange="if(relatives.checked){change_depth_total(<TMPL_VAR NAME='relatives-price'>, this.selectedIndex + 1,document.forms[0].REPORT_TOTAL,document.forms[0].REPORT_PRE_TOTAL)}">
                            <TMPL_IF LE_ALLOW_REL_DEPTH_0>
							    <option value="0"<TMPL_IF NAME="relative-depth-0"> SELECTED</TMPL_IF>>0</option>
							</TMPL_IF>
							<option value="1"<TMPL_IF NAME="relative-depth-1"> SELECTED</TMPL_IF>>1</option>
							<option value="2"<TMPL_IF NAME="relative-depth-2"> SELECTED</TMPL_IF>>2</option>
							<option value="3"<TMPL_IF NAME="relative-depth-3"> SELECTED</TMPL_IF>>3</option>
							</select>
							<label for="relative-depth">Degrees of Separation</label>
						</td>
					</tr>
				</table>
				<table style="width:100%;">
					<thead>
					  <tr>
						<th aria-label="Other Report Options" colspan="3">&nbsp;</th>
					  </tr>
					</thead>
					<tr>
						<td colspan="3" valign="top">
							<div class="red-divide"></div>
							<br />
						</td>
					</tr>
					<tr>
						<td class="w80pc checkbox-label-td" colspan="3">
							<div class="text-and-select">
								<div class="tas-text" style="color: #6D6E71;font-size:14px;left-padding:5px;">
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
						<td class="left-p" style="width:100%;" valign="top" colspan="3">
							<TMPL_UNLESS HIDE_PRICES>
								<div class="text-and-select" style="padding-left:0;">
									<div class="tas-text mgl0">
									<label for="CONTACT_CARD_TOTAL">Maximum Report Price:</label>&nbsp;
									</div>
									<div class="tas-select red-text" style="margin-top:-2px;margin-left:1px;">
									$<input class="tot-price" type="text" id="CONTACT_CARD_TOTAL" name="CONTACT_CARD_TOTAL" size="5" value="<TMPL_VAR NAME='CONTACT_CARD_TOTAL'>" onFocus="this.blur();">
									</div>
								</div>
							<TMPL_ELSE>
								<input type="hidden" name="CONTACT_CARD_TOTAL" size="5" value="<TMPL_VAR NAME='CONTACT_CARD_TOTAL'>" onFocus="this.blur();">
							</TMPL_UNLESS>
						</td>
					</tr>


					<tr>
						<td class="w45pc left-p" valign="top">
							<table border="0" cellpadding="0" cellspacing="0" width="100%">
							  <thead style="display: none">
								<tr>
								  <th aria-label="Note">&nbsp;</th>
								</tr>
							  </thead>

								<tr>
									<td width="100%" class="lbl-note">
										<TMPL_UNLESS HIDE_PRICES><b>NOTE:</b>&nbsp;&nbsp;
											This is the maximum possible cost for this report.&nbsp;&nbsp;You will not be charged for options returning no results except those marked with <img src="<TMPL_VAR NAME='IMGPATH'>/star.gif" border="0" width="11" height="10" alt="Max. Cost"><img src="<TMPL_VAR NAME='IMGPATH'>/star.gif" border="0" width="11" height="10" alt="Max. Cost"> where search charge applies with or without results. No results will be returned for options which contain more than 1,000 records<TMPL_ELSE>&nbsp;
										</TMPL_UNLESS>
									</td>
								</tr>
							</table>
						</td>
						<td>&nbsp;</td>
						<td class="w45pc left-p" valign="top">
							<table border="0" cellpadding="0" cellspacing="0" width="100%">
							  <thead style="display: none">
								<tr>
								  <th aria-label="Options" colspan="2">&nbsp;</th>
								</tr>
							  </thead>

								<tr>
									<td class="checkbox-td"><input type="checkbox" name="prompt" id="prompt" value="1" <TMPL_VAR NAME=prompt> ></td>
									<td class="checkbox-label-td"><label for="prompt">&nbsp;Prompt me for these options for each report.</label></td>
								</tr>

								<tr>
									<TMPL_IF NAME="ENABLE_SAVE_REPORT">
										<TMPL_IF NAME="REPORT_MANAGER_OFF">
											<td class="checkbox-td"><input type="checkbox" name="save-report" id="save-report" value="1" <TMPL_VAR NAME="save-report"> readonly onChange="this.checked = !this.checked"></td>
											<td align="left" class="disabled_medblack"><label for="save-report">&nbsp;(Saving Reports currently not available).</td>
										<TMPL_ELSE>
											<td class="checkbox-td"><input type="checkbox" name="save-report" id="save-report" value="1" <TMPL_VAR NAME="save-report"> ></td>
											<td align="left"><label for="save-report">&nbsp;Save report for later access.</label></td>
										</TMPL_IF>
									<TMPL_ELSE>
										<td colspan="2"></td>
									</TMPL_IF>
								</tr>
								<TMPL_IF NAME="ENABLE_ALSO_FOUND_REPORTS">
									<tr>
										<td class="checkbox-td"><input type="checkbox" name="report-content-nav" id="report-content-nav-checkbox" value="1" <TMPL_VAR NAME=report-content-nav> ></td>
										<td class="checkbox-label-td"><label for="report-content-nav-checkbox">&nbsp;Display report navigation bar.</label></td>
									</tr>
								</TMPL_IF>
							</table>
						</td>
					</tr>
                </table>
            </td>
        </tr>
    </table>
    <input type=hidden name="CONTACT_CARD_PRE_TOTAL" value="<TMPL_VAR NAME=CONTACT_CARD_PRE_TOTAL>">
</div>
<!-- End short_contact_card_report_body.tpl-->
