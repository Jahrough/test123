<!-- Begin show_summary.tpl -->
<TMPL_INCLUDE NAME="court_header.tpl">
<script src="<TMPL_VAR NAME='JSPATH'>/court/summary.js"></script>

    <div class="wizard-content" style="border-radius: 8px;">
        <div>
            <div class="myaccount-section-title">Court Search &mdash; Order Summary</div>
            <div class="myaccount-containers">
                <div class="sections">
                    <div class="section-row">
                        <br>
                        <div class="wizard-font-16px bold">Subject Information</div>
                    </div>
                    <TMPL_IF IDENTITY_LOOP>
                        <TMPL_LOOP IDENTITY_LOOP>
                            <div class="section-row">
                                <TMPL_INCLUDE NAME="identity.tpl">
                            </div>
                        </TMPL_LOOP>
                    </TMPL_IF>
                    <div class="section-row">
                        To make modifications to your Court Search order, click the BACK button below.
                    </div>
                    <div class="section-row">
                        If this Order Summary is correct, proceed to the payment screen by clicking the NEXT button below.
                    </div>
                    <div class="section-row">
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
                                        <INPUT TYPE=HIDDEN NAME="TOTAL_UNFORMATTED" VALUE="<TMPL_VAR TOTAL_UNFORMATTED>">
                                    </td>
                                </tr>
                            </table>
                    </div>
                    <div class="section-row">
                        <table style="width:100%;">
                            <tr>
                                <td style="text-align:right;">
                                    <input class="btn white-btn" type="button" name="SUBMIT" value="Back" onClick="<TMPL_IF FROM_SUMMARY>showpw_v3();send_event('COURT/SHOW_SEARCH_SELECT');<TMPL_ELSE>showpw_v3();send_event('COURT/MORE_DETAIL_RETURN');</TMPL_IF>this.disabled=true">
                                    <input class="btn red-btn" type="button" name="SUBMIT" value="Next" onClick="if(!validate3()) {return false;}; showpw_v3();send_event('MANAGE/COURT_MANAGE_CARDS');this.disabled=true">
                                </td>
                            </tr>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>


<INPUT TYPE="HIDDEN" NAME="FROM_SUMMARY" VALUE="<TMPL_VAR FROM_SUMMARY>">
<INPUT TYPE="HIDDEN" NAME="FROM_DETAIL" VALUE="<TMPL_VAR FROM_DETAIL>">

<TMPL_INCLUDE NAME="court_footer.tpl">
<!-- End show_summary.tpl -->
