<!-- begin myaccount_profile_edit.tpl -->

	<script src="<TMPL_VAR NAME='JSPATH'>/search_javascript.js"></script>

	<table border="0" cellpadding="0" cellspacing="0" width="880" class="myaccountborder">
		<tr>
			<td align="center">
				<table border="0" cellpadding="0" cellspacing="0" width="856" class="myaccountbody">
					<tr height="12">
						<td height="12" width="856" class="myaccountborder"><img alt="" height="12" width="856" border="0" src="<TMPL_VAR NAME=IMGPATH>/spacer.gif"></td>
					</tr>
					<tr>
						<td align="center">
							<table border="0" cellpadding="0" cellspacing="0" width="640" class="myaccountbody">
								<tr>
									<td colspan="2" align="center"><img alt="" border="0" with="1" height="20" src="<TMPL_VAR NAME=IMGPATH>/spacer.gif"></td>
								</tr>
								<tr>
									<td class="myaccounttitle" width="400" colspan="3">Company Edit Options<br><br></td>
								</tr>
								<tr>
									<td class="unifont2" width="640" colspan="3"><font color="#CE0031">Please be advised that other Administrators on the account also have the ability to submit change requests.  You should allow 1-2 business days for your request to be processed.  You can email <a href="mailto:LNPOC.request@lexisnexis.com">LNPOC.request@lexisnexis.com</a> and check the status if your request is not processed within the 1-2 business day timeframe.</font></td>
								</tr>
								<tr>
									<td colspan="2" align="center"><img alt="" border="0" with="1" height="10" src="<TMPL_VAR NAME=IMGPATH>/spacer.gif"></td>
								</tr>
								<tr>
									<td class="unifont2" width="40%"><b>Company ID:</b></td>
									<td class="unifont2"><TMPL_VAR NAME=C_COMPANYID></td>
								</tr>
								<tr>
									<td class="unifont2" width="40%"><b>Company Name: </b><TMPL_VAR NAME=C_COMPANYNAME></td>
									<td class="nsinputs"><input type="text" name="COMPANYNAME"></td>
								</tr>
								<tr>
									<td colspan="2" align="center"><img alt="" border="0" with="1" height="20" src="<TMPL_VAR NAME=IMGPATH>/spacer.gif"></td>
								</tr>
								<tr>
									<td class="unifont2" width="40%" valign="top"><b>Contact Name: </b><TMPL_VAR NAME=C_MAINNAME></td>
									<td class="nsinputs">
										<input type="text" name="CONTACT_FIRST_NAME">&#160;&#160;First<br>
										<input type="text" name="CONTACT_MIDDLE_NAME">&#160;&#160;Middle<br>
										<input type="text" name="CONTACT_LAST_NAME">&#160;&#160;Last<br>
									</td>
								</tr>
								<tr>
									<td colspan="2" align="center"><img alt="" border="0" with="1" height="20" src="<TMPL_VAR NAME=IMGPATH>/spacer.gif"></td>
								</tr>
							</table>
						</td>
					</tr>
					<tr>
						<td align="center">
							<table border="0" cellpadding="0" cellspacing="0" width="640" class="myaccountbody">
								<tr>
									<td class="unifont2" colspan="2"><span style="font-weight: bold;">Physical Address</span></td>
								</tr>
								<tr>
									<td class="unifont2" width="40%"><b>Address 1: </b><TMPL_VAR NAME='C_ADDR_LINE1'></td>
									<td class="nsinputs"><input type="text" name="MAIN_ADDR_LINE1"></td>
								</tr>
								<tr>
									<td class="unifont2" width="40%"><b>Address 2: </b><TMPL_VAR NAME='C_ADDR_LINE2'></td>
									<td class="nsinputs"><input type="text" name="MAIN_ADDR_LINE2"></td>
								</tr>
								<tr>
									<td class="unifont2" width="40%"><b>City: </b><TMPL_VAR NAME=C_ADDR_CITY></td>
									<td class="nsinputs"><input type="text" name="MAIN_ADDR_CITY"></td>
								</tr>
								<tr>
									<td class="unifont2" width="40%"><b>State: </b><TMPL_VAR NAME=C_ADDR_STATE></td>
									<td class="nsinputs"><input type="text" name="MAIN_ADDR_STATE" size="2" maxlength="2"></td>
								</tr>
								<tr>
									<td class="unifont2" width="40%"><b>Zip: </b><TMPL_VAR NAME=C_ADDR_POSTALCODE></td>
									<td class="nsinputs"><input type="text" name="MAIN_ADDR_POSTALCODE"></td>
								</tr>
								<tr>
									<td class="unifont2" width="40%"><b>Phone:</b> <TMPL_VAR NAME=C_PHONE_VOICE1></td>
									<td class="nsinputs"><input type="text" name="MAIN_PHONE_VOICE1"></td>
								</tr>
								<tr>
									<td align="center" colspan="2"><img alt="" border="0" with="1" height="20" src="<TMPL_VAR NAME=IMGPATH>/spacer.gif"></td>
								</tr>
								<tr>
									<td colspan="2" align="center">
										<a href="javascript:send_event('MYACCOUNT/SHOW_PROFILE');"><img width="65" height="24" border="0" name="backadmin" src="<TMPL_VAR NAME=IMGPATH>/previous_page.gif"></a>&#160;&#160;
										<a href="javascript:send_event('MYACCOUNT/UPDATE_PROFILE');" onClick="return validate();"><img width="81" height="24" border="0" name="update_summary" src="<TMPL_VAR NAME=IMGPATH>/submit.gif"></a>&#160;&#160;
										<a href="javascript:document.MYACCOUNT.reset()"><img width="65" height="24" border="0" name="clear" src="<TMPL_VAR NAME=IMGPATH>/clear_button.gif"></a>
									</td>
								</tr>
							</table>
						</td>
					</tr>
					<tr heignt="12">
						<td height="12" width="856" class="myaccountbody">
							<img alt="" height="12" width="856" border="0" src="<TMPL_VAR NAME=IMGPATH>/spacer.gif">
						</td>
					</tr>
					<tr>
						<td>
							<input type="hidden" name="NEW_CONTACT" value="<TMPL_IF NAME=C_MAINNAME>0<TMPL_ELSE>1</TMPL_IF>">
						</td>
					</tr>
				</table>
			</td>
		</tr>
	</table>

<TMPL_INCLUDE NAME=myaccount_footer.tpl>

<!-- end myaccount_profile_edit.tpl -->
