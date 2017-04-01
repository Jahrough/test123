<!-- Begin v3/court/request_submitted.tpl -->
<TMPL_INCLUDE NAME="court_header.tpl">

    <div class="wizard-content" style="border-radius: 8px;">
        <div>
            <div align="center" class="unifont1">  
            <TMPL_IF SUCCESS>
                <b>Thank You<BR><br>
                Your order (#<TMPL_VAR SUCCESS>) has been submitted<TMPL_UNLESS NAME="COURT_NONPREPAID"> and your credit card has been charged $<TMPL_VAR TOTAL></TMPL_UNLESS><br><br>
                Please use your web browser's print option to print a copy of this page for your records</b>
                <P>

            <TMPL_IF IDENTITY_LOOP>
                <TMPL_LOOP IDENTITY_LOOP>
                    <table border="0" width="600" cellspacing="0">
                        <tr>
                            <td class="unifont1" align="center">
                                <table><tr><td class="unifont1"><TMPL_INCLUDE NAME="identity.tpl"></td></tr></table>
                            </td>
                        </tr>
                    </table>
                </TMPL_LOOP>
            </TMPL_IF>
            </div>

            <div class="section-row" style="padding:10px 55px;">
                <table class="wizard-grey-table">
                    <TMPL_IF RESULTS>
                        <TMPL_LOOP RESULTS>
                            <tr>
                                <td colspan="3" style="background:#fff;">
                                    <div class="fieldset-title">State: <TMPL_VAR STATE_NAME></div>
                                </td>
                            </tr>

                            <TMPL_IF COUNTIES>
                                <TMPL_LOOP COUNTIES>
                                    <tr>
                                        <th class="unifont1" colspan="3"><b><TMPL_VAR COUNTY> COUNTY ADDRESSES</b></th>
                                    </tr>
                                    <TMPL_IF ADDRESSES>
                                        <TMPL_LOOP ADDRESSES>
                                            <tr>
                                                <td colspan="3"><TMPL_INCLUDE NAME="build_address.tpl"></td>
                                            </tr>
                                        </TMPL_LOOP>
                                    </TMPL_IF>
                                    <tr>
                                        <td colspan="3">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <th class="unifont1" width="400"><b><TMPL_VAR COUNTY_DSP> County Searches</b></th>
                                        <th class="unifont1" width="200"><b>Est. Return</b></th>
                                        <th class="unifont1" width="140" align="right"><b>Ext. Price</b></th>
                                    </tr>
                                    <TMPL_IF SEARCHES>
                                        <TMPL_LOOP SEARCHES>
                                            <TMPL_IF HIDE_COUNTY_SEARCH>
                                                <tr>
                                                    <td class="unifont1" width="600" colspan="2">[Search not Currently Available]</td>
                                                    <td width="140" align="right">$0.00</td>
                                                </tr>
                                            <TMPL_ELSE>
                                                <tr>
                                                    <td width="400"><TMPL_VAR DESC></td>
                                                    <td width="200">5-14</td>
                                                    <td width="140" align="right"><TMPL_IF IS_SURCHARGE>(Incl Surchg) </TMPL_IF>$<TMPL_VAR PRICE></td>
                                                </tr>
                                            </TMPL_IF>
                                        </TMPL_LOOP>
                                    <TMPL_ELSE>
                                        <tr>
                                            <td class="unifont1" width="600" colspan="2">[No Searches Selected]</td>
                                            <td width="140" align="right">$0.00</td>
                                        </tr>
                                    </TMPL_IF>
                                </TMPL_LOOP>
                            </TMPL_IF>

                            <TMPL_UNLESS BUSINESS_CS>
                                <tr>
                                    <td colspan="3">&nbsp;</td>
                                </tr>
                                <tr>
                                    <th class="unifont1" colspan="3"><b>STATE - <TMPL_VAR STATE_NAME></b></th>
                                </tr>
                                <TMPL_IF STATE_SEARCHES>
                                    <TMPL_LOOP STATE_SEARCHES>
                                        <TMPL_IF SEARCHES>
                                            <TMPL_LOOP SEARCHES>
                                                <tr>
                                                    <td width="400"><TMPL_VAR DESC></td>
                                                    <td width="200">5-14</td>
                                                    <td width="140" align="right"><TMPL_IF HAS_SURCHARGE>(Incl Surchg) </TMPL_IF>$<TMPL_VAR PRICE></td>
                                                </tr>
                                            </TMPL_LOOP>
                                        <TMPL_ELSE>
                                            <tr>
                                                <td class="unifont1" width="600" colspan="2">[No Searches Selected]</td>
                                                <td width="140" align="right">$0.00</td>
                                            </tr>
                                        </TMPL_IF>
                                    </TMPL_LOOP>
                                <TMPL_ELSE>
                                    <tr>
                                        <td class="unifont1" width="600" colspan="2">[No State Searches Available]</td>
                                        <td width="140" align="right">$0.00</td>
                                    </tr>
                                </TMPL_IF>
                            </TMPL_UNLESS>

                            <TMPL_IF FEDERAL>
                                <TMPL_LOOP FEDERAL>
                                    <tr>
                                        <td colspan="3">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <th class="unifont1" colspan="3"><b>FEDERAL - <TMPL_VAR DISTRICT></b></th>
                                    </tr>
                                    <TMPL_IF SEARCHES>
                                        <TMPL_LOOP SEARCHES>
                                            <tr>
                                                <td width="400"><TMPL_VAR DESC></td>
                                                <td width="200">5-14</td>
                                                <td width="140" align="right">$<TMPL_VAR PRICE></td>
                                            </tr>
                                        </TMPL_LOOP>
                                    <TMPL_ELSE>
                                        <tr>
                                            <td class="unifont1" width="600" colspan="2">[No Searches Selected]</td>
                                            <td width="140" align="right">$0.00</td>
                                        </tr>
                                    </TMPL_IF>
                                </TMPL_LOOP>
                            </TMPL_IF>
                        </TMPL_LOOP>
                    </TMPL_IF>

                    <TMPL_IF NAME=MANUAL_SELECT_STATE_LOOP>
                        <tr>
                            <td colspan="3">&nbsp;</td>
                        </tr>
                        <tr class="courttableheader">
                            <th width="100%" class="unifont1" colspan="3" align="center"><b>Custom State Searches</b></th>
                        </tr>
                        <TMPL_LOOP NAME=MANUAL_SELECT_STATE_LOOP>
                            <tr class="ct">
                                <td nowrap="1"><TMPL_VAR NAME=DESC></td>
                                <td>5-14 DAYS</td>
                                <td align="right"><TMPL_IF SURCHARGE>(Incl Surchg) </TMPL_IF>$<TMPL_VAR PRICE></td>
                            </tr>
                        </TMPL_LOOP>
                    </TMPL_IF>
                    <TMPL_IF NAME=MANUAL_SELECT_COUNTY_LOOP>
                        <tr class="courttableheader">
                            <th width="100%" class="unifont1" colspan="3" align="center"><b>Custom County Searches</b></th>
                        </tr>
                        <TMPL_LOOP NAME=MANUAL_SELECT_COUNTY_LOOP>
                            <tr class="ct">
                                <td nowrap="1"><TMPL_VAR NAME=DESC></td>
                                <td>5-14 DAYS</td>
                                <td align="right"><TMPL_IF SURCHARGE>(Incl Surchg) </TMPL_IF>$<TMPL_VAR PRICE></td>
                            </tr>
                        </TMPL_LOOP>
                    </TMPL_IF>
                    <TMPL_IF NAME=MANUAL_SELECT_FEDERAL_LOOP>
                        <tr class="courttableheader">
                            <th width="100%" class="unifont1" colspan="3" align="center"><b>Custom Federal District Searches</b></th>
                        </tr>
                        <TMPL_LOOP NAME=MANUAL_SELECT_FEDERAL_LOOP>
                            <tr class="ct">
                                <td nowrap="1"><TMPL_VAR NAME=DESC></td>
                                <td>5-14 DAYS</td>
                                <td align="right">$<TMPL_VAR PRICE></td>
                            </tr>
                        </TMPL_LOOP>
                    </TMPL_IF>

                    <tr>
                        <td class="f-red f-14" colspan="3" style="text-align:right;">
                            <b>Total: $<TMPL_VAR TOTAL></b>
                            <INPUT TYPE=HIDDEN NAME="TOTAL_UNFORMATTED" VALUE="<TMPL_VAR TOTAL>">
                        </td>
                    </tr>
                </table>
            <TMPL_ELSE>
                <TMPL_IF NAME="ERROR_MSG">
                    <b><TMPL_VAR NAME="ERROR_MSG"><BR><br>

                    <form name="TU" action="<TMPL_VAR ACTION_COURT>" method="POST">
                        <TMPL_INCLUDE NAME="common_hidden_input.tpl">
                        <INPUT type=HIDDEN NAME="EVENT" VALUE="">
                        <input type="BUTTON" name="PREVIOUS_BUTTON" value="CHANGE CARD" onClick="showpw_v3();send_event('MANAGE/COURT_MANAGE_CARDS');">
                    </form>
                <TMPL_ELSE>
                    <b>We are unable to process you request at this time.<BR><br>
                    Please try again in a few minutes.</b>
                </TMPL_IF>
            </TMPL_IF>

            <P>

            <div>
        </div>
    </div>
    <script>
        function cancel_order_conf() {
            var title = 'Cancellation Confirmation';
            var bdy = '<table style="width:100%;"><tr><td class="unifont1" valign="top" align="center">If you cancel your order now, <b>your selections will be lost</b> and this window will close.<br><br>To make changes or place this order, return to the Court Wizard.<br><br></td></tr><tr><td><input class="btn darkgrey-btn" name="CANCEL_COURT" type="button" value="Cancel Order Now" onclick="window.close();"><input class="btn red-btn right" name="CONTINUE_COURT" type="button" value="Return to Court Wizard" onclick="toggle_modal();"></td></tr></table>';
            new_modal(title,bdy,500);
        }
    </script>

<TMPL_INCLUDE NAME="court_footer.tpl">
<!-- End v3/court/request_submitted.tpl -->