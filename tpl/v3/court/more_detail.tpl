<!-- Begin v3/court/more_detail.tpl -->
<TMPL_INCLUDE NAME="court_header.tpl">
<script src="<TMPL_VAR NAME='JSPATH'>/court/search_select.js"></script>

<div class="wizard-content" style="border-radius: 8px;">
    <div>
        <div class="myaccount-section-title">Court Search &mdash; Customize</div>
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
                    <TMPL_UNLESS BUSINESS_CS>
                        <input type="button" class="btn darkgrey-btn" name="SUBMIT" value="Custom State Searches" onClick="if(!validatestep2()) {return false;}; showpw_v3();send_event('COURT/CUSTOM_STATES');this.disabled=true">
                    </TMPL_UNLESS>
                    <input type="button" class="btn darkgrey-btn" name="SUBMIT" value="Custom County Searches" onClick="if(!validatestep2()) {return false;}; showpw_v3();send_event('COURT/CUSTOM_COUNTYS');this.disabled=true">
                    <input type="button" class="btn darkgrey-btn" name="SUBMIT" value="Custom Federal District Searches" onClick="if(!validatestep2()) {return false;}; showpw_v3();send_event('COURT/CUSTOM_FEDERAL');this.disabled=true">
                </div>
                <div class="section-row">
                    Changes can be made to the search selections by clicking the check box to the left of the Court Search desired.
                </div>
                <div class="section-row">
                    Once your selections have been made, click the NEXT button below.
                </div>
                <div class="section-row">
                    If you desire to modify your address selections, click the BACK button below.
                </div>
                <div class="section-row">
                    <table class="wizard-grey-table">
                        <TMPL_IF RESULTS>
                            <TMPL_LOOP RESULTS>
                                <tr>
                                    <td colspan="5" style="background:#fff;">
                                        <div class="fieldset-title">State: <TMPL_VAR STATE_NAME></div>
                                    </td>
                                </tr>
                                <TMPL_IF COUNTIES>
                                    <TMPL_LOOP COUNTIES>
                                        <tr>
                                            <th colspan="5"><TMPL_VAR INDENT><b><TMPL_VAR COUNTY> COUNTY ADDRESSES</b></th>
                                        </tr>
                                        <TMPL_IF ADDRESSES>
                                            <TMPL_LOOP ADDRESSES>
                                                <tr>
                                                    <td colspan="5"><TMPL_VAR INDENT><TMPL_INCLUDE NAME="build_address.tpl"></td>
                                                </tr>
                                            </TMPL_LOOP>
                                        </TMPL_IF>
                                        <tr><td colspan="5">&nbsp;</td></tr>
                                        <TMPL_IF SEARCHES>
                                            <tr>
                                                <th><TMPL_VAR INDENT><b><TMPL_VAR COUNTY_DSP> County Searches</b></th>
                                                <th align="center" nowrap="1"><b>Est. Return</b></th>
                                                <th align="right" nowrap="1"><b>Unit Price</b></th>
                                                <th align="right"><b>Surcharge</b></th>
                                                <th align="right" nowrap="1"><b>Ext. Price</b></th>
                                            </tr>
                                            <TMPL_LOOP SEARCHES>
                                                <TMPL_UNLESS SKIP_FOR_BUSINESS_CS>
                                                    <tr>
                                                        <TMPL_IF IS_CRIM>
                                                            <td><TMPL_VAR INDENT><input type="hidden" name="COUNTY_SEARCH" value="">*&nbsp;<TMPL_VAR DESC></td>
                                                            <td colspan="3">[Search not Currently Available]</td>
                                                            <script>
                                                                if (document.getElementById) {
                                                                    document.write('<td align="right"><TMPL_VAR INDENT>$<span id="countyprices<TMPL_VAR INDEX>">0.00</span></td>');
                                                                } else {
                                                                    document.write('<td align="right"><TMPL_VAR INDENT>$<TMPL_VAR PRICE></td>');
                                                                }
                                                            </script>
                                                        <TMPL_ELSE>
                                                            <TMPL_IF HIDE_COUNTY_SEARCH>
                                                                <td><TMPL_VAR INDENT><input type="hidden" name="COUNTY_SEARCH" value=""><font face="Verdana,Arial" color="#cc0000" size="2"><b>*</b></font>&nbsp;<TMPL_VAR DESC></td>
                                                                <td colspan="3">[Search not Currently Available]</td>
                                                            <TMPL_ELSE>
                                                                <td><TMPL_VAR INDENT><input type="checkbox" class="check-bold-row" name="COUNTY_SEARCH" value="<TMPL_VAR CODE>_<TMPL_VAR COUNTY_CODE>"<TMPL_IF CHECKED> CHECKED</TMPL_IF> onClick="toggle_search_checkbox(document.forms[0].COUNTY_SEARCH,<TMPL_VAR INDEX>,document.forms[0].COUNTY_PRICES,document.forms[0].TOTAL,document.forms[0].PRE_TOTAL,<TMPL_VAR MODULO>);s2ChangeBackGround(this);setextprice(this,'<TMPL_VAR PRICE>','countyprices',<TMPL_VAR INDEX>,<TMPL_VAR MODULO>);"><TMPL_VAR DESC></td>
                                                                <td align="center"><TMPL_VAR INDENT>5-14</td>
                                                                <td align="right"><TMPL_VAR INDENT>$<TMPL_VAR BASE_PRICE></td>
                                                                <td align="right"><TMPL_VAR INDENT>$<TMPL_IF NAME=USE_CRIM_SURCHARGE><TMPL_VAR CRIM_SURCHARGE><TMPL_ELSE><TMPL_IF NAME=USE_CIVIL_SURCHARGE><TMPL_VAR CIVIL_SURCHARGE></TMPL_IF></TMPL_IF></td>
                                                                <script>if (document.getElementById) {document.write('<td align="right"><TMPL_VAR INDENT>$<span id="countyprices<TMPL_VAR INDEX>"><TMPL_IF CHECKED><TMPL_VAR PRICE><TMPL_ELSE>0.00</TMPL_IF></span></td>');} else {document.write('<td align="right"><TMPL_VAR INDENT>$<TMPL_VAR PRICE></td>');}</script>
                                                            </TMPL_IF>
                                                        </TMPL_IF>
                                                        <INPUT TYPE="HIDDEN" NAME="ALL_PRICES" VALUE="<TMPL_VAR PRICE>">
                                                        <INPUT TYPE="HIDDEN" NAME="COUNTY_PRICES" VALUE="<TMPL_VAR PRICE>">
                                                    </tr>
                                                </TMPL_UNLESS>
                                            </TMPL_LOOP>
                                        </TMPL_IF>
                                        <TMPL_IF IS_CRIM>
                                            <TMPL_IF COUNTY_HAS_SURCHARGE>
                                                <tr>
                                                    <td colspan="5" class="smallfont1">*&nbsp;Note: Criminal county search is only available by running a statewide search.</td>
                                                </tr>
                                            </TMPL_IF>
                                        </TMPL_IF>
                                    </TMPL_LOOP>
                                </TMPL_IF>
                                <TMPL_UNLESS NAME=BUSINESS_CS>
                                    <tr><td colspan="5">&nbsp;</td></tr>
                                    <tr>
                                        <th colspan="5"><TMPL_VAR INDENT><b>State - <TMPL_VAR STATE_NAME></b></th>
                                    </tr>
                                    <TMPL_IF STATE_SEARCHES>
                                        <TMPL_LOOP STATE_SEARCHES>
                                            <TMPL_IF SEARCHES>
                                                <TMPL_LOOP SEARCHES>
                                                    <tr>
                                                        <td><TMPL_VAR INDENT><input type="checkbox" class="check-bold-row" name="STATE_SEARCH" value="<TMPL_VAR CODE>_<TMPL_VAR NAME>"<TMPL_IF CHECKED> CHECKED</TMPL_IF> onClick="change_total(this,<TMPL_VAR PRICE>,document.forms[0].TOTAL,document.forms[0].PRE_TOTAL);s2ChangeBackGround(this);setextprice(this,'<TMPL_VAR PRICE>','stateprices','<TMPL_VAR INDEX>');"><TMPL_VAR DESC></td>
                                                        <td align="center"><TMPL_VAR INDENT>5-14</td>
                                                        <td align="right"><TMPL_VAR INDENT>$<TMPL_VAR BASE_PRICE></td>
                                                        <td align="right"><TMPL_VAR INDENT>$<TMPL_VAR CRIM_SURCHARGE></td>
                                                        <script>if (document.getElementById) {document.write('<td align="right"><TMPL_VAR INDENT>$<span id="stateprices<TMPL_VAR INDEX>"><TMPL_IF CHECKED><TMPL_VAR PRICE><TMPL_ELSE>0.00</TMPL_IF></span></td>');} else {document.write('<td align="right"><TMPL_VAR INDENT>$<TMPL_VAR PRICE></td>');}</script>
                                                        <INPUT TYPE="HIDDEN" NAME="ALL_PRICES" VALUE="<TMPL_VAR PRICE>">
                                                    </tr>
                                                </TMPL_LOOP>
                                            <TMPL_ELSE>
                                                <tr>
                                                    <td colspan="4"><TMPL_VAR INDENT><TMPL_VAR INDENT>[No State Searches Available]</td>
                                                    <td align="right"><TMPL_VAR INDENT>$0.00</td>
                                                </tr>
                                            </TMPL_IF>
                                        </TMPL_LOOP>
                                    <TMPL_ELSE>
                                        <tr>
                                            <td colspan="4"><TMPL_VAR INDENT><TMPL_VAR INDENT>[No State Searches Available]</td>
                                            <td align="right"><TMPL_VAR INDENT>$0.00</td>
                                        </tr>
                                    </TMPL_IF>
                                </TMPL_UNLESS>
                                <TMPL_IF FEDERAL>
                                    <TMPL_LOOP FEDERAL>
                                        <tr><td colspan="5">&nbsp;</td></tr>
                                        <tr>
                                            <th colspan="5"><TMPL_VAR INDENT><b>Federal - <TMPL_VAR DISTRICT></b></th>
                                        </tr>
                                        <TMPL_IF SEARCHES>
                                            <TMPL_LOOP SEARCHES>
                                                <TMPL_UNLESS SKIP_FOR_BUSINESS_CS>
                                                    <tr>
                                                        <td><TMPL_VAR INDENT><input type="checkbox" class="check-bold-row" name="FEDERAL_SEARCH" value="<TMPL_VAR CODE>_<TMPL_VAR DISTRICT_CODE>"<TMPL_IF CHECKED> CHECKED</TMPL_IF> onClick="toggle_search_checkbox(document.forms[0].FEDERAL_SEARCH,<TMPL_VAR INDEX>,document.forms[0].FEDERAL_PRICES,document.forms[0].TOTAL,document.forms[0].PRE_TOTAL);s2ChangeBackGround(this);setextprice(this,'<TMPL_VAR PRICE>','federalprices',<TMPL_VAR INDEX>);"><TMPL_VAR DESC></td>
                                                        <td align="center"><TMPL_VAR INDENT>5-14</td>
                                                        <td align="right"><TMPL_VAR INDENT>$<TMPL_VAR PRICE></td>
                                                        <td align="right"><TMPL_VAR INDENT>$0.00</td>
                                                        <script>
                                                            if (document.getElementById) {
                                                                document.write('<td align="right"><TMPL_VAR INDENT>$<span id="federalprices<TMPL_VAR INDEX>"><TMPL_IF CHECKED><TMPL_VAR PRICE><TMPL_ELSE>0.00</TMPL_IF></span></td>');
                                                            } else {
                                                                document.write('<td align="right"><TMPL_VAR INDENT>$<TMPL_VAR PRICE></td>');
                                                            }
                                                        </script>
                                                        <INPUT TYPE="HIDDEN" NAME="ALL_PRICES" VALUE="<TMPL_VAR PRICE>">
                                                        <INPUT TYPE="HIDDEN" NAME="FEDERAL_PRICES" VALUE="<TMPL_VAR PRICE>">
                                                    </tr>
                                                </TMPL_UNLESS>
                                            </TMPL_LOOP>
                                        </TMPL_IF>
                                    </TMPL_LOOP>
                                </TMPL_IF>
                                <tr><td colspan="5">&nbsp;</td></tr>
                            </TMPL_LOOP>
                        </TMPL_IF>
                        <TMPL_INCLUDE NAME="manual_select_detail.tpl">
                        <tr>
                            <script>
                                if (document.getElementById) {
                                    document.write('<td colspan="5" align="right" class="f-red f-14"><b>Total: $<span id="totalprice"><TMPL_VAR TOTAL></span></b><INPUT type="hidden" NAME="TOTAL" VALUE="<TMPL_VAR TOTAL>"></td>');
                                    } else {
                                    document.write('<td colspan="5" align="right" class="f-red f-14"><b>Total:</b> $<INPUT type="text" NAME="TOTAL" VALUE="<TMPL_VAR TOTAL>" onFocus="blur();" size="6"></td>');
                                }
                            </script>
                            <INPUT TYPE="HIDDEN" NAME="PRE_TOTAL" VALUE="<TMPL_VAR TOTAL>">
                        </tr>
                    </table>
                </div>
                <div class="section-row t-right">
                    <input class="btn white-btn" type="button" name="SUBMIT" value="Back" onClick="showpw_v3();send_event('COURT/STEP1');this.disabled=true">
                    <input class="btn red-btn" type="button" name="SUBMIT" value="Next" onClick="if(!validatestep2()) {return false;}; showpw_v3();send_event('COURT/SHOW_DETAIL_SUMMARY');this.disabled=true">
                </div>
            </div>
        </div>
    </div>
</div>









<script>s2SetBackGround();</script>
<TMPL_INCLUDE NAME="court_footer.tpl">
<!-- End more_detail.tpl -->
