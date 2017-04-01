<!-- begin:  $RCSFile: $ -->
    <TMPL_INCLUDE NAME="alerts_top.tpl">
    <br>

<div class="batch-status-title">Alert Saved</div>
<fieldset class="batchFieldset">
	<table>
        <thead style="display: none">
          <tr>
            <th aria-label="Dummy">&nbsp;</th>
          </tr>
        </thead>
		<tr>
			<td>
				<table>
                  <thead style="display: none">
                    <tr>
                      <th aria-label="Dummy">&nbsp;</th>
                    </tr>
                  </thead>
        
				  <tr>
					<td>
						Thank you for setting up a new alert. You have selected to be notified when any of the following sections change:
					</td>
				  </tr>
				  <tr>
					<td style="font-weight:bold;">
					<TMPL_VAR NAME=ALERT_OPTIONS>
					</td>
					<td align="right">&nbsp;</td>
				  </tr>
				</table		
			</td>
		</tr>
		<tr>
			<td>
				<table>
                   <thead style="display: none">
                     <tr>
                       <th aria-label="Dummy">&nbsp;</th>
                     </tr>
                   </thead>
        
					<tr>
						<td style="white-space:nowrap;padding-right:12px;"><strong>Name of Alert:</strong></td>
						<td><TMPL_VAR NAME=ALERT_NAME></td>
					</tr>
				</table>
			</td>
		</tr>
		<tr>
			<td>
				<TMPL_IF NAME="ALERT_EXPIRATION_DATE">
					<table class="alert_new">
                      <thead style="display: none">
                        <tr>
                          <th aria-label="Dummy">&nbsp;</th>
                        </tr>
                      </thead>
          
						<tr>
							<td class="unifont1 label_cell" style="white-space:nowrap;padding-right:12px;"><strong>Alert End Date:</strong>&nbsp;&nbsp;</td>
							<td class="unifont1" valign="top"><TMPL_VAR NAME="ALERT_EXPIRATION_DATE"></td>
						</tr>
					</table>
					<TMPL_ELSE>
					<table class="alert_new">
                      <thead style="display: none">
                        <tr>
                          <th aria-label="Dummy">&nbsp;</th>
                        </tr>
                      </thead>
          
                        <tr>
                            <td class="unifont1 label_cell" style="white-space:nowrap;padding-right:12px;"><strong>Duration of Alert:</strong>&nbsp;&nbsp;</td>
                            <td class="unifont1" valign="top">
                                <TMPL_IF NAME="ALERT_LENGTH_1">Perpetual</TMPL_IF>
                                <TMPL_IF NAME="ALERT_LENGTH_30">30 Days</TMPL_IF>
                                <TMPL_IF NAME="ALERT_LENGTH_60">60 Days</TMPL_IF>
                                <TMPL_IF NAME="ALERT_LENGTH_90">90 Days</TMPL_IF>
                            </td>
                        </tr>
					</table>
				</TMPL_IF>
			</td>
		</tr>
		<tr>
			<td>
				<table>
                    <thead style="display: none">
                      <tr>
                        <th aria-label="Dummy">&nbsp;</th>
                      </tr>
                    </thead>
        
					<tr>
                        <td class="unifont1 label_cell" style="white-space:nowrap;padding-right:12px;"><strong>Reference: </strong></td>
                        <td class="unifont1"><TMPL_VAR NAME=REFERENCE_CODE></td>
					</tr>
				</table>
			</td>
		</tr>
		<tr>

			<td>
				<TMPL_IF NAME="ALERT_EMAIL">
					<br/><hr><br/><span><legend>Email Notifications</legend></span><br/>
					<table>
                        <thead style="display: none">
                          <tr>
                            <th aria-label="Dummy">&nbsp;</th>
                          </tr>
                        </thead>
          
						<tr>
							<td class="unifont1 label_cell" valign="top" width="75"><strong>Delivery:<font color="#ff0000">*</font></strong></td>
							<td class="unifont1"></td>
							<td align="left">
								<table border="0" cellpadding="0" cellspacing="0">
                                  <thead style="display: none">
                                    <tr>
                                      <th aria-label="Dummy">&nbsp;</th>
                                    </tr>
                                  </thead>
                
									<tr>
										<td class="unifont1" colspan="2">
											<TMPL_IF NAME="ALERT_EMAIL">Send Email alert</TMPL_IF>
										</td>
									</tr>
									<tr>
										<td class="unifont1" colspan="2">
											<TMPL_IF NAME="ALERT_EMAIL_ZERO_RESULTS">Alert me if there are no new results</TMPL_IF>
										</td>
									</tr>
									<tr>
										<td class="unifont1" colspan="2">&nbsp;</td>
									</tr>
									<tr>
										<td class="unifont1" valign="top" nowrap="nowrap">
											Email To:&nbsp;
										</td>
										<td class="unifont1">
											<TMPL_VAR NAME=ALERT_DELIVERY_EMAIL>
										</td>
									</tr>
									<tr>
										<td class="unifont1" colspan="2">&nbsp;</td>
									</tr>
									<TMPL_IF NAME="ALERT_NOTE">
										<tr>
											<td class="unifont1" valign="top" nowrap="nowrap">
												Add a Note:&nbsp;
											</td>
											<td class="unifont1">
												<TMPL_VAR NAME=ALERT_NOTE>
											</td>
										</tr>
									</TMPL_IF>
									<tr>
										<td class="unifont1" colspan="2">&nbsp;</td>
									</tr>
									<TMPL_IF NAME="ALERT_SUBJECT_LINE">
										<tr>
											<td class="unifont1" valign="top" nowrap="nowrap">
												Subject Line:&nbsp;
											</td>
											<td class="unifont1">
												<TMPL_VAR NAME=ALERT_SUBJECT_LINE>
											</td>
										</tr>
									</TMPL_IF>
								</table>
							</td>
						</tr>
					</table>
				</TMPL_IF>
			</td>
		</tr>
		<tr>
			<td class="batchfilealert batchsmallfont" colspan="2" nowrap="nowrap">
				<font color="#ff0000">*</font>&nbsp;Alerts are run weekly
			</td>
		</tr>
	</table>
</fieldset>

<div class="section-row child-divs-right">
	<div>
		<input class="btn red-btn" name="VIEW_MGR" value="View My Alerts" onclick="window.opener.show_post_popup('ALERT/SHOW_ALERTS_MGR','MyAccountWin','','',1,1,1,1,1,0);window.close();" type="button" >
		<input class="btn grey-btn" name="CLOSE" value="Close" onclick="window.close();" type="button">
	</div>
</div>
    <TMPL_INCLUDE NAME="alerts_bottom.tpl">
<!-- end:  $RCSFile: $ -->
