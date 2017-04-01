<!-- Begin v3/court/search_select.tpl -->
<TMPL_INCLUDE NAME="court_header.tpl">
<script src="<TMPL_VAR NAME='JSPATH'>/court/search_select.js"></script>
<script src="<TMPL_VAR NAME='JSPATH'>/court/step1.js"></script>

    <div class="wizard-content" style="border-radius: 8px;">
        <div>
            <div class="myaccount-section-title">Court Search &mdash; Quick Picks</div>
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
                        <br>
                        <TMPL_IF IRB>IRBsearch<TMPL_ELSE>Accurint</TMPL_IF> has automatically determined the unique list of counties, states and federal districts searches applicable based on your address selections.&nbsp;&nbsp;To proceed with these selections, click the NEXT button.
                    </div>
                    <div class="section-row">
                        To refine your search further, or to add court searches in counties and states not listed, click the CUSTOMIZE button.
                    </div>
                    <div class="section-row">
                        To change your address selections, click the BACK button.
                    </div>
                    <div class="section-row">
                        <table style="width:100%;" class="wizard-grey-table">
                            <tr class="courttableheader">
                                <th style="text-align:left;"><b>County</b> (<TMPL_VAR COUNTY_COUNT> unique County(s) selected)</th>
                                <th style="text-align:center;"><b># of Searches</b></th>
                                <th style="text-align:right;"><b>Unit Price</b></th>
                                <th style="text-align:right;">&nbsp;<TMPL_IF IS_SURCHARGE><b>Surcharge</b></TMPL_IF></th>
                                <th style="text-align:right;"><b>Ext. Price</b></th>
                            </tr>

                            <TMPL_IF COUNTY_LOOP>
                                <TMPL_LOOP COUNTY_LOOP>
                                    <TMPL_UNLESS SKIP_FOR_BUSINESS_CS>
                                        <tr class="ct">
                                            <td align="left">
                                                <TMPL_IF IS_CRIM>
                                                    <TMPL_IF COUNT_MINUS_SURCHARGE>
                                                        <TMPL_IF COUNTY_COUNT>
                                                            <input type="checkbox" class="check-bold-row" name="COUNTY_SEARCH" value="<TMPL_VAR CODE>"<TMPL_IF CHECKED> CHECKED</TMPL_IF> onClick="toggle_search_checkbox(document.forms[0].COUNTY_SEARCH,<TMPL_VAR INDEX>,document.forms[0].COUNTY_PRICES,document.forms[0].TOTAL,document.forms[0].PRE_TOTAL,<TMPL_VAR MODULO>);s2ChangeBackGround(this);setextprice(this,'<TMPL_VAR GROUP_PRICE>','countyprices',<TMPL_VAR INDEX>,<TMPL_VAR MODULO>);"></TMPL_IF>&nbsp;<TMPL_VAR DESC>
                                                    <TMPL_ELSE>
                                                        *&nbsp;[No County Criminal Searches Available]<input type="hidden" name="COUNTY_SEARCH" value="0"&nbsp;<TMPL_VAR DESC>
                                                    </TMPL_IF>
                                                <TMPL_ELSE>
                                                    <TMPL_IF USE_CRIM_SURCHARGE>
                                                        <TMPL_IF COUNTY_CRIM_COUNT><input type="checkbox" class="check-bold-row" name="COUNTY_SEARCH" value="<TMPL_VAR CODE>"<TMPL_IF CHECKED> CHECKED</TMPL_IF> onClick="toggle_search_checkbox(document.forms[0].COUNTY_SEARCH,<TMPL_VAR INDEX>,document.forms[0].COUNTY_PRICES,document.forms[0].TOTAL,document.forms[0].PRE_TOTAL,<TMPL_VAR MODULO>);s2ChangeBackGround(this);setextprice(this,'<TMPL_VAR GROUP_PRICE>','countyprices',<TMPL_VAR INDEX>,<TMPL_VAR MODULO>);"><TMPL_ELSE><input type="hidden" name="COUNTY_SEARCH" value="0"></TMPL_IF>&nbsp;<TMPL_VAR DESC>
                                                    <TMPL_ELSE>
                                                        <TMPL_IF COUNTY_CIVIL_COUNT><input type="checkbox" class="check-bold-row" name="COUNTY_SEARCH" value="<TMPL_VAR CODE>"<TMPL_IF CHECKED> CHECKED</TMPL_IF> onClick="toggle_search_checkbox(document.forms[0].COUNTY_SEARCH,<TMPL_VAR INDEX>,document.forms[0].COUNTY_PRICES,document.forms[0].TOTAL,document.forms[0].PRE_TOTAL,<TMPL_VAR MODULO>);s2ChangeBackGround(this);setextprice(this,'<TMPL_VAR GROUP_PRICE>','countyprices',<TMPL_VAR INDEX>,<TMPL_VAR MODULO>);"><TMPL_ELSE><input type="hidden" name="COUNTY_SEARCH" value="0"></TMPL_IF>&nbsp;<TMPL_VAR DESC>
                                                    </TMPL_IF>
                                                </TMPL_IF>
                                            </td>
                                            <td align="center"><TMPL_IF IS_CRIM><TMPL_VAR COUNT_MINUS_SURCHARGE><TMPL_ELSE><TMPL_IF USE_CRIM_SURCHARGE><TMPL_VAR COUNTY_CRIM_COUNT><TMPL_ELSE><TMPL_VAR COUNTY_CIVIL_COUNT></TMPL_IF></TMPL_IF></td>
                                            <td align="right">$<TMPL_VAR PRICE></td>
                                            <td align="right">&nbsp;<TMPL_IF IS_SURCHARGE><TMPL_UNLESS IS_CRIM>$<TMPL_IF NAME=USE_CRIM_SURCHARGE><TMPL_VAR CRIM_SURCHARGE><TMPL_ELSE><TMPL_IF NAME=USE_CIVIL_SURCHARGE><TMPL_VAR CIVIL_SURCHARGE></TMPL_IF></TMPL_IF></TMPL_UNLESS></TMPL_IF></td>
                                            <script>if (document.getElementById) {document.write('<td class="unifont1" align="right">$<span id="countyprices<TMPL_VAR INDEX>"><TMPL_IF CHECKED><TMPL_VAR GROUP_PRICE><TMPL_ELSE>0.00</TMPL_IF></span></td>');} else {document.write('<td class="unifont1" align="right">$<TMPL_VAR GROUP_PRICE></td>');}</script>
                                            <INPUT TYPE="HIDDEN" NAME="ALL_PRICES" VALUE="<TMPL_VAR GROUP_PRICE>">
                                            <INPUT TYPE="HIDDEN" NAME="COUNTY_PRICES" VALUE="<TMPL_VAR GROUP_PRICE>">
                                        </tr>
                                    </TMPL_UNLESS>
                                </TMPL_LOOP>
                            </TMPL_IF>

                            <TMPL_IF IS_CRIM>
                                <TMPL_UNLESS COUNT_MINUS_SURCHARGE> 
                                    <tr>
                                        <td colspan="5" class="smallfont1">*&nbsp;Note: Criminal county search is only available by running a statewide search.</td>
                                    </tr>
                                </TMPL_UNLESS>
                            </TMPL_IF>

                            <TMPL_UNLESS NAME=BUSINESS_CS>
                                <tr>
                                    <td colspan="5">&nbsp;</td>
                                </tr>
                                <tr>
                                    <th colspan="5" style="text-align:left;"><b>State</b> (<TMPL_VAR STATE_COUNT> State(s) selected are available)</th>
                                </tr>
                                <TMPL_IF STATE_LOOP>
                                    <TMPL_LOOP STATE_LOOP>
                                        <tr class="ct">
                                            <td align="left"><TMPL_IF STATE_COUNT><input type="checkbox" class="check-bold-row" name="STATE_SEARCH" value="<TMPL_VAR CODE>"<TMPL_IF CHECKED> CHECKED</TMPL_IF> onClick="change_total(this,<TMPL_VAR GROUP_PRICE>,document.forms[0].TOTAL,document.forms[0].PRE_TOTAL);s2ChangeBackGround(this);setextprice(this,'<TMPL_VAR GROUP_PRICE>','stateprices',<TMPL_VAR INDEX>)";>&nbsp;<TMPL_VAR DESC><TMPL_ELSE>[No State Searches Available]</TMPL_IF></td>
                                            <td align="center"><TMPL_VAR STATE_COUNT></td>
                                            <td align="right">$<TMPL_VAR BASE_PRICE></td>
                                            <td align="right">&nbsp;<TMPL_IF CRIM_SURCHARGE>$<TMPL_VAR CRIM_SURCHARGE></TMPL_IF></td>
                                            <script>if (document.getElementById) {document.write('<td class="unifont1" align="right">$<span id="stateprices<TMPL_VAR INDEX>"><TMPL_IF CHECKED><TMPL_VAR GROUP_PRICE><TMPL_ELSE>0.00</TMPL_IF></span></td>');} else {document.write('<td class="unifont1" align="right">$<TMPL_VAR GROUP_PRICE></td>');}</script>
                                            <INPUT TYPE="HIDDEN" NAME="ALL_PRICES" VALUE="<TMPL_VAR GROUP_PRICE>">
                                        </tr>
                                    </TMPL_LOOP>
                                </TMPL_IF>
                            </TMPL_UNLESS>
                                            
                            <tr>
                                <td colspan="5">&nbsp;</td>
                            </tr>
                            <tr>
                                <th colspan="5" style="text-align:left;"><b>Federal</b> (<TMPL_VAR FEDERAL_COUNT> unique Federal District(s) selected)</th>
                            </tr>
                            <TMPL_IF FEDERAL_LOOP>
                                <TMPL_LOOP FEDERAL_LOOP>
                                    <TMPL_UNLESS SKIP_FOR_BUSINESS_CS>
                                        <tr class="ct">
                                            <td align="left"><TMPL_IF FEDERAL_COUNT><input type="checkbox" class="check-bold-row" name="FEDERAL_SEARCH" value="<TMPL_VAR CODE>"<TMPL_IF CHECKED> CHECKED</TMPL_IF> onClick="toggle_search_checkbox(document.forms[0].FEDERAL_SEARCH,<TMPL_VAR INDEX>,document.forms[0].FEDERAL_PRICES,document.forms[0].TOTAL,document.forms[0].PRE_TOTAL);s2ChangeBackGround(this);setextprice(this,'<TMPL_VAR GROUP_PRICE>','federalprices',<TMPL_VAR INDEX>);"></TMPL_IF>&nbsp;<TMPL_VAR DESC></td>
                                            <td align="center"><TMPL_VAR FEDERAL_COUNT></td>
                                            <td align="right">$<TMPL_VAR PRICE></td>
                                            <td align="right">&nbsp;<TMPL_IF IS_SURCHARGE>$0.00</TMPL_IF></td>
                                            <script>if (document.getElementById) {document.write('<td class="unifont1" align="right">$<span id="federalprices<TMPL_VAR INDEX>"><TMPL_IF CHECKED><TMPL_VAR GROUP_PRICE><TMPL_ELSE>0.00</TMPL_IF></span></td>');} else {document.write('<td class="unifont1" align="right">$<TMPL_VAR GROUP_PRICE></td>');}</script>
                                            <INPUT TYPE="HIDDEN" NAME="ALL_PRICES" VALUE="<TMPL_VAR GROUP_PRICE>">
                                            <INPUT TYPE="HIDDEN" NAME="FEDERAL_PRICES" VALUE="<TMPL_VAR GROUP_PRICE>">
                                        </tr>
                                    </TMPL_UNLESS>
                                </TMPL_LOOP>
                            </TMPL_IF>
                            <TMPL_INCLUDE NAME="manual_select_detail.tpl">
                            <script>
                                if(document.getElementById) {
                                    document.write('<tr><td colspan="5"><div class="section-row f-red f-14" style="text-align:right;"><b>Total: $<span id="totalprice"><TMPL_VAR TOTAL></span></b><INPUT TYPE="HIDDEN" NAME="TOTAL" VALUE="<TMPL_VAR TOTAL>"></div></td></tr>');
                                } else {
                                    document.write('<tr><td colspan="5"><div class="section-row f-red f-14" style="text-align:right;"><b>Total:</b> $<INPUT TYPE="TEXT" NAME="TOTAL" VALUE="<TMPL_VAR TOTAL>" onFocus="blur();" size="6"></div>');
                                }
                            </script>
                        </table>
                    </div>
                    <INPUT TYPE="HIDDEN" NAME="PRE_TOTAL" VALUE="<TMPL_VAR TOTAL>">
                    <div class="section-row">
                        <table style="width:100%;">
                            <tr>
                                <td style="width:200px;">&nbsp;</td>
                                <td style="text-align:center;">
                                    <input class="btn darkgrey-btn" type="button" name="SUBMIT" value="Customize" onClick="showpw_v3();send_event('COURT/MORE_DETAIL');this.disabled=true">
                                </td>
                                <td style="width:200px;text-align:right;">
                                    <input class="btn white-btn" type="button" name="SUBMIT" value="Back" onClick="showpw_v3();send_event('COURT/STEP1');this.disabled=true">
                                    <input class="btn red-btn" type="button" name="SUBMIT" value="Next" onClick="if(!validatestep2()) {return false;}; showpw_v3();send_event('COURT/SHOW_SUMMARY');this.disabled=true">
                                </td>
                            </tr>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>

<script>s2SetBackGround();</script>
<TMPL_INCLUDE NAME="court_footer.tpl">
<!-- End search_select.tpl -->


