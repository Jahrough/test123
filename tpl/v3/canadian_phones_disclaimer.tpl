<!-- begin canadian_phones_disclaimer.tpl -->
<!--<TMPL_VAR NAME=SERVER_ID>-->
<html>
    <head>
        <title>Legal Disclaimer</title>
        <TMPL_INCLUDE NAME="includes_info.tpl">
        <script>
            function submit_disclaimer(canadian_phones_flag) {
                var myform = document.CANADIAN_PHONES_DISCLAIMER;
                myform.CANADIAN_PHONES_DISCLAIMER.value = 1;

                send_event('SEARCH2/SHOW_CANADIAN_PHONES');

            }
        </script>

			<body>
                <div id="skiptocontent"><a href="#content" title="skip navigation">Skip Navigation</a></div>
			    <TMPL_INCLUDE NAME="header_info.tpl">
				<form name="CANADIAN_PHONES_DISCLAIMER" action="<TMPL_VAR NAME=ACTION>" method="post">
					<TMPL_INCLUDE NAME="common_hidden_input.tpl">
					<input type="hidden" NAME="CURRENT_EVENT" VALUE="<TMPL_VAR NAME=CURRENT_EVENT>">
					<input type="hidden" name="EVENT" value="">
					<INPUT type=hidden NAME="SKIN_TYPE" VALUE="<TMPL_VAR NAME=SKIN_TYPE>">
					<INPUT type=hidden NAME="APPLICATION_TYPE" VALUE="<TMPL_VAR NAME=APPLICATION_TYPE>">
					<INPUT type=hidden NAME="CANADIAN_PHONES_DISCLAIMER" VALUE="">
				   <div id="content" align="center">
						<table width="880" border="0" cellSpacing="0" cellPadding="0">
                            <thead style="display: none">
                              <tr>
                                <th aria-label="Legal Disclaimer">&nbsp;</th>
                              </tr>
                            </thead>
							<tbody>
								<tr>
									<td align="center" vAlign="top">
										<div class="txtWrapper">
											<div id="txtCon">
												<div class="mfa-header">Legal Disclaimer</div>
												<br/>
												<table>
                                                    <thead style="display: none">
                                                      <tr> 
                                                        <th aria-label="Legal Disclaimer">&nbsp;</th>
                                                      </tr>
                                                    </thead>
													<tr>
														<td>
															<b>Customer is not prohibited from accessing the Services provided under this Agreement from a location in Canada, provided however:</b>
															<br><br>
														</td>
													</tr>
													<tr>
														<td>
															<table align="center" width="650">
                                                              <thead style="display: none">
                                                                <tr> 
                                                                  <th aria-label="Legal Disclaimer Details">&nbsp;</th>
                                                                </tr>
                                                               </thead>
																<TMPL_IF IRB>
																	<tr>
																		<td>
																			(i) Customer acknowledges and agrees that such Services are provided to it in the United States at the point where the server facilities are located;
																			<br><br>
																			(ii) Customer&apos;s decision to access the Services from a location in Canada does not alter the fact that the Services are provided to Customer in the United States; and 
																			<br><br>
																			(iii) Customer acknowledges and agrees that IRB and its data providers make no representations regarding the legality of accessing such Services from Canada.
																			<br><br>
																		</td>
																	</tr>
																	<TMPL_ELSE>
																		<tr>
																			<td>
																				(i) Customer acknowledges that such Services are provided to it in the United States at the point at which Customer accesses the LexisNexis server facilities;
																				<br><br>
																				(ii) Customer&apos;s decision to access the Services from a location in Canada does not alter the fact that the Services are provided to Customer in the United States; and 
																				<br><br>
																				(iii) Customer acknowledges that LexisNexis makes no representation regarding the legality of accessing such Services from Canada.
																				<br><br>
																			</td>
																		</tr>
																</TMPL_IF>
															</table>
														</td>
													</tr>
												</table>
												<table border="0" cellpadding="0" cellspacing="0" class="myaccountbody">
                                                    <thead style="display: none">
                                                       <tr> 
                                                           <th aria-label="Buttons">&nbsp;</th>
                                                       </tr>
                                                    </thead>
													<tr>
														<td align="center" valign="middle" height="50">
															<a title="Accept" class="myaccount-btn red-btn" name="accept" href="javascript:submit_disclaimer(1);;" style="float:left;">Accept</a>
															<a title="Back" class="myaccount-btn darkgrey-btn" name="accept" href="javascript:send_event('SEARCH/SHOW_MENU');" style="float:left;">Back</a>                      
														</td>
													</tr>
												</table>
											</div>
										</div>
									</td>
								</tr>
							</tbody>
						</table>
					</div>
				</form> 
			</body>
</html>
<!-- end canadian_phones_disclaimer.tpl -->


