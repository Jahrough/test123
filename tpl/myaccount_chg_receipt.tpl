<!-- begin myaccount_chg_receipt.tpl -->

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
                                    <td class="myaccounttitle" width="400" colspan="3">Company Edit Receipt<br><br></td>
                                </tr>
                                <tr>
                                    <td class="unifont2" width="400" colspan="3"><font color="#CE0031">Your request was successfully submitted: <TMPL_VAR NAME="TIMESTAMP"></font></td>
                                </tr>
                                <tr>
                                    <td colspan="2" align="center"><img alt="" border="0" with="1" height="10" src="<TMPL_VAR NAME=IMGPATH>/spacer.gif"></td>
                                </tr>
								<tr>
									<td class="unifont2" width="30%"><b>Company ID:</b></td>
									<td class="unifont2"><TMPL_VAR NAME=C_COMPANYID></td>
								</tr>
								<tr>
									<td class="unifont2" width="30%"><b>Company Name: </b></td>
									<td class="nsinputs"><font color="#CE0031"><TMPL_VAR NAME="COMPANYNAME"></font></td>
								</tr>
								<tr>
									<td colspan="2" align="center"><img alt="" border="0" with="1" height="20" src="<TMPL_VAR NAME=IMGPATH>/spacer.gif"></td>
								</tr>
								<tr>
									<td class="unifont2" width="30%" valign="top"><b>Contact Name: </b></td>
									<td class="nsinputs">
										<font color="#CE0031">
											<TMPL_VAR NAME="CONTACT_FIRST_NAME"><br>
											<TMPL_VAR NAME="CONTACT_MIDDLE_NAME"><br>
											<TMPL_VAR NAME="CONTACT_LAST_NAME"><br>
										</font>
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
                                    <td class="unifont2" colspan="2"><span style="font-weight: bold;">Main Address</span></td>
                                </tr>
                                <tr>
                                    <td class="unifont2" width="30%"><b>Address 1: </b></td>
                                    <td class="nsinputs"><font color="#CE0031"><TMPL_VAR NAME="MAIN_ADDR_LINE1"></font></td>
                                </tr>
                                <tr>
                                    <td class="unifont2" width="30%"><b>Address 2: </b></td>
                                    <td class="nsinputs"><font color="#CE0031"><TMPL_VAR NAME="MAIN_ADDR_LINE2"></font></td>
                                </tr>
                                <tr>
                                    <td class="unifont2" width="30%"><b>City: </b></td>
                                    <td class="nsinputs"><font color="#CE0031"><TMPL_VAR NAME="MAIN_ADDR_CITY"></font></td>
                                </tr>
                                <tr>
                                    <td class="unifont2" width="30%"><b>State: </b></td>
                                    <td class="nsinputs"><font color="#CE0031"><TMPL_VAR NAME="MAIN_ADDR_STATE"></font></td>
                                </tr>
                                <tr>
                                    <td class="unifont2" width="30%"><b>Zip: </b></td>
                                    <td class="nsinputs"><font color="#CE0031"><TMPL_VAR NAME="MAIN_ADDR_POSTALCODE"></font></td>
                                </tr>
                                <tr>
                                    <td class="unifont2" width="30%"><b>Phone:</b></td>
                                    <td class="nsinputs"><font color="#CE0031"><TMPL_VAR NAME="MAIN_PHONE_VOICE1"></font></td>
                                </tr>
                                <tr>
                                    <td align="center" colspan="2"><img alt="" border="0" with="1" height="20" src="<TMPL_VAR NAME=IMGPATH>/spacer.gif"></td>
                                </tr>
                                <tr>
                                    <td colspan="2" align="center">
										<a href="javascript:printit()"><img width="87" height="29" border="0" name="print" src="<TMPL_VAR NAME=IMGPATH>/print.gif"></a>&#160;&#160;
                                        <a href="javascript:send_event('MYACCOUNT/SHOW_PROFILE');"><img width="79" height="29" border="0" name="nextadmin" src="<TMPL_VAR NAME=IMGPATH>/next_new.gif"></a>
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

<!-- end myaccount_chg_receipt.tpl -->