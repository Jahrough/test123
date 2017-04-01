<!-- Begin short_bus_report_body.tpl-->
<div><legend><TMPL_UNLESS HIDE_PRICES>Base Report Price:&nbsp;&nbsp;$<TMPL_VAR NAME="base-bus-price"><TMPL_ELSE>Base Report Features:</TMPL_UNLESS></legend></div>
<div class="row-wrapper grey-border margin-for-footer">
    <table class="options-table">
        <thead style="display: none">
          <tr>
             <th aria-label="Report Options">&nbsp;</th>
          </tr>
        </thead>
        <TMPL_IF NAME="PREFERENCES_ERROR_MESSAGE">
            <tr>
                <td align="center" colspan="3" class="left-p"><TMPL_VAR NAME="PREFERENCES_ERROR_MESSAGE"></td>
            </tr>
        </TMPL_IF>
        <tr>
            <td valign="top" class="bottom-p">
                <table class="w100pc">
                    <thead style="display: none">
                      <tr>
                        <th aria-label="Checkbox">&nbsp;</th>
                        <th aria-label="Label">&nbsp;</th>
                        <TMPL_UNLESS NAME="HIDE_PRICES">                        
                        <th aria-label="Price">&nbsp;</th>
                        </TMPL_UNLESS>                        
                      </tr>
                    </thead>
                
                    <tr>
                        <td class="checkbox-td"><input type="checkbox" id="alternate-identities" name="alternate-identities" value="2" <TMPL_VAR NAME="alternate-identities">></td>
                        <td class="checkbox-label-td"><label for="alternate-identities">&nbsp;Name, and TIN Variations&nbsp;&nbsp;</label></td>
                        <TMPL_UNLESS NAME="HIDE_PRICES">
                            <td class="checkbox-label-td lbl-price">Included in Base Price&nbsp;&nbsp;</td>
                        </TMPL_UNLESS>
                    </tr>
                    <tr>
                        <td class="checkbox-td"><input type="checkbox" id="parent-company" name="parent-company" value="2" <TMPL_VAR NAME="parent-company">></td>
                        <td class="checkbox-label-td"><label for="parent-company">&nbsp;Parent Company and Industry Information&nbsp;&nbsp;</label></td>
                        <TMPL_UNLESS NAME="HIDE_PRICES">
                            <td class="checkbox-label-td lbl-price">Included in Base Price&nbsp;&nbsp;</td>
                        </TMPL_UNLESS>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</div>
    <div><legend>Additional Report Options</legend></div>
    <div class="row-wrapper grey-border margin-for-footer">
        <table class="options-table">
          <thead style="display: none">
            <tr>
               <th aria-label="Additional Options" colspan="3">&nbsp;</th>
            </tr>
          </thead>
        
            <tr>
                <td class="w50pc left-p">
                    <table class="w100pc">
                        <thead style="display: none">
                          <tr>
                            <th aria-label="Business Filings" colspan="3">&nbsp;</th>
                          </tr>
                        </thead>
                        <tr>
                            <td colspan="3" class="subsections-hdr"><strong>Business Filings</strong></td>
                        </tr>

                        <TMPL_UNLESS DELETE_BANKRUPTCY>
                            <tr>
                                <TMPL_UNLESS DISABLE_BANKRUPTCY>
                                    <td class="checkbox-td"><input type="checkbox" id="bankruptcy" name="bankruptcy" value="1" <TMPL_VAR NAME="bankruptcy"> onClick="change_total(this, <TMPL_VAR NAME='bankruptcy-price'>, document.forms[0].BUS_TOTAL,document.forms[0].BUS_PRE_TOTAL)"></td>
                                    <td class="checkbox-label-td">&nbsp;<label for="bankruptcy">Bankruptcy<TMPL_UNLESS HIDE_PRICES> <img src="<TMPL_VAR NAME='IMGPATH'>/star.gif" border="0" width="11" height="10" alt="See Note Below Regarding Charges"><img src="<TMPL_VAR NAME='IMGPATH'>/star.gif" border="0" width="11" height="10" alt="See Note Below Regarding Charges"></TMPL_UNLESS></label></td>
                                    <td class="checkbox-label-td lbl-price"><TMPL_UNLESS HIDE_PRICES>$<TMPL_VAR NAME="bankruptcy-price"></TMPL_UNLESS>&nbsp;</td>
                                <TMPL_ELSE>
                                    <td class="checkbox-td">&nbsp;</td>
                                    <td class="checkbox-label-td-disabled">&nbsp;Bankruptcy (disabled)</td>
                                    <td class="checkbox-label-td-disabled lbl-small"><TMPL_UNLESS HIDE_PRICES>$<TMPL_VAR NAME="bankruptcy-price"></TMPL_UNLESS>&nbsp;</td>
                                </TMPL_UNLESS>
                            </tr>
                        </TMPL_UNLESS>

                        <TMPL_UNLESS DELETE_LIEN>
                            <tr>
                                <TMPL_IF NAME="DISABLE_LIEN">
                                    <td class="checkbox-td">&nbsp;</td>
                                    <td class="checkbox-label-td-disabled">&nbsp;Liens &amp; Judgments (disabled)</td>
                                    <td class="checkbox-label-td-disabled lbl-small"><TMPL_UNLESS HIDE_PRICES>$<TMPL_VAR NAME="liens-price"></TMPL_UNLESS>&nbsp;</td>
                                <TMPL_ELSE>
                                    <td class="checkbox-td"><input type="checkbox" id="liens" name="liens" value="1" <TMPL_VAR NAME="liens"> onClick="change_total(this, <TMPL_VAR NAME='liens-price'>, document.forms[0].BUS_TOTAL,document.forms[0].BUS_PRE_TOTAL)"></td>
                                    <td class="checkbox-label-td">&nbsp;<label for="liens">Liens &amp; Judgments<TMPL_UNLESS HIDE_PRICES> <img src="<TMPL_VAR NAME='IMGPATH'>/star.gif" border="0" width="11" height="10" alt="See Note Below Regarding Charges"><img src="<TMPL_VAR NAME='IMGPATH'>/star.gif" border="0" width="11" height="10" alt="See Note Below Regarding Charges"></TMPL_UNLESS></label></td>
                                    <td class="checkbox-label-td lbl-price"><TMPL_UNLESS HIDE_PRICES>$<TMPL_VAR NAME="liens-price"></TMPL_UNLESS>&nbsp;</td>
                                </TMPL_IF>
                            </tr>
                        </TMPL_UNLESS>

                        <TMPL_UNLESS DELETE_CORPORATION>
                            <tr>
                                <TMPL_UNLESS DISABLE_CORPORATION>
                                    <td class="checkbox-td"><input type="checkbox" id="corporate-filings" name="corporate-filings" value="1" <TMPL_VAR NAME="corporate-filings"> onClick="change_total(this, <TMPL_VAR NAME='corporate-filings-price'>, document.forms[0].BUS_TOTAL,document.forms[0].BUS_PRE_TOTAL)"></td>
                                    <td class="checkbox-label-td">&nbsp;<label for="corporate-filings">Corporation Filings</label>&nbsp;</td>
                                    <td class="checkbox-label-td lbl-price"><TMPL_UNLESS HIDE_PRICES>$<TMPL_VAR NAME="corporate-filings-price"></TMPL_UNLESS>&nbsp;</td>
                                <TMPL_ELSE>
                                    <td class="checkbox-td">&nbsp;</td>
                                    <td class="checkbox-label-td-disabled">&nbsp;Corporation Filings (disabled)</td>
                                    <td class="checkbox-label-td-disabled lbl-small"><TMPL_UNLESS HIDE_PRICES>$<TMPL_VAR NAME="corporate-filings-price"></TMPL_UNLESS>&nbsp;</td>
                                </TMPL_UNLESS>
                            </tr>
                        </TMPL_UNLESS>

                        <tr>
                            <td class="checkbox-td"><input type="checkbox" id="business-registrations" name="business-registrations" value="1" <TMPL_VAR NAME="business-registrations"> onClick="change_total(this, <TMPL_VAR NAME='business-registrations-price'>, document.forms[0].BUS_TOTAL,document.forms[0].BUS_PRE_TOTAL)"></td>
                            <td class="checkbox-label-td">&nbsp;<label for="business-registrations">Business Registrations</label></td>
                            <td class="checkbox-label-td lbl-price"><TMPL_UNLESS HIDE_PRICES>$<TMPL_VAR NAME="business-registrations-price"></TMPL_UNLESS>&nbsp;</td>
                        </tr>

                        <TMPL_UNLESS DELETE_UCC>
                            <tr>
                                <TMPL_UNLESS DISABLE_UCC>
                                    <td class="checkbox-td"><input type="checkbox" id="uccs" name="uccs" value="1" <TMPL_VAR NAME="uccs"> onClick="change_total(this, <TMPL_VAR NAME='uccs-price'>, document.forms[0].BUS_TOTAL,document.forms[0].BUS_PRE_TOTAL)"></td>
                                    <td class="checkbox-label-td">&nbsp;<label for="uccs">UCC Filings</label></td>
                                    <td class="checkbox-label-td lbl-price"><TMPL_UNLESS HIDE_PRICES>$<TMPL_VAR NAME="uccs-price"></TMPL_UNLESS>&nbsp;</td>
                                <TMPL_ELSE>
                                    <td class="checkbox-td">&nbsp;</td>
                                    <td class="checkbox-label-td-disabled">&nbsp;UCC Filings (disabled)</td>
                                    <td class="checkbox-label-td-disabled lbl-small"><TMPL_UNLESS HIDE_PRICES>$<TMPL_VAR NAME="uccs-price"></TMPL_UNLESS>&nbsp;</td>
                                </TMPL_UNLESS>
                            </tr>
                        </TMPL_UNLESS>

                        <tr>
                            <td class="checkbox-td"><input type="checkbox" id="associated-businesses" name="associated-businesses" value="1" <TMPL_VAR NAME="associated-businesses"> onClick="change_total(this, <TMPL_VAR NAME='associated-businesses-price'>, document.forms[0].BUS_TOTAL,document.forms[0].BUS_PRE_TOTAL)"></td>
                            <td class="checkbox-label-td"><label for="associated-businesses">&nbsp;Associated Businesses</label></td>
                            <td class="checkbox-label-td lbl-price"><TMPL_UNLESS HIDE_PRICES>$<TMPL_VAR NAME="associated-businesses-price"></TMPL_UNLESS>&nbsp;</td>
                        </tr>

                        <TMPL_UNLESS DELETE_CORPORATION>
                            <tr>
                                <TMPL_UNLESS DISABLE_CORPORATION>
                                    <td class="checkbox-td"><input type="checkbox" id="contacts" name="contacts" value="1" <TMPL_VAR NAME="contacts"> onClick="change_total(this, <TMPL_VAR NAME='contacts-price'>, document.forms[0].BUS_TOTAL,document.forms[0].BUS_PRE_TOTAL)"></td>
                                    <td class="checkbox-label-td"><label for="contacts">&nbsp;Associated People</label></td>
                                    <td class="checkbox-label-td lbl-price"><TMPL_UNLESS HIDE_PRICES>$<TMPL_VAR NAME="contacts-price"></TMPL_UNLESS>&nbsp;</td>
                                <TMPL_ELSE>
                                    <td class="checkbox-td">&nbsp;</td>
                                    <td class="checkbox-label-td-disabled">&nbsp;Associated People (disabled)</td>
                                    <td class="checkbox-label-td-disabled lbl-small"><TMPL_UNLESS HIDE_PRICES>$<TMPL_VAR NAME="contacts-price"></TMPL_UNLESS>&nbsp;</td>
                                </TMPL_UNLESS>
                            </tr>
                        </TMPL_UNLESS>

                        <TMPL_IF NAME="IRS">
                            <TMPL_UNLESS HIDE_BUS_CREDIT>
                                <tr>
                                    <td class="checkbox-label-td" colspan="3">&nbsp;<strong>Experian Business Report</strong>&nbsp;</td>
                                </tr>
                                <TMPL_UNLESS DELETE_BUS_CREDIT_REPORT>
                                    <tr>
                                        <TMPL_UNLESS DISABLE_BUS_CREDIT_REPORT>
                                            <td class="checkbox-td"><input type="checkbox" name="experian-br" value="1" id="experian-br" <TMPL_VAR NAME=experian-br> onClick="change_total(this, <TMPL_VAR NAME=experian-br-price>,document.forms[0].BUS_TOTAL,document.forms[0].BUS_PRE_TOTAL)"></td>
                                            <td class="checkbox-label-td"><label for="experian-br">Order Experian Business Report</label></td>
                                            <td class="checkbox-label-td lbl-price"><TMPL_UNLESS HIDE_PRICES>$<TMPL_VAR NAME=experian-br-price></TMPL_UNLESS>&nbsp;</td>
                                        <TMPL_ELSE>
                                            <td class="checkbox-td">&nbsp;</td>
                                            <td class="checkbox-label-td-disabled">&nbsp;Experian Business Reports (disabled)</td>
                                            <td class="checkbox-label-td-disabled lbl-small"><TMPL_UNLESS HIDE_PRICES>$<TMPL_VAR NAME="experian-br-price"></TMPL_UNLESS>&nbsp;</td>
                                        </TMPL_UNLESS>
                                    </tr>
                                </TMPL_UNLESS>
                            </TMPL_UNLESS>
                        </TMPL_IF>
                    </table>
                </td>
                <!-- COLUMN2 -->
                <td class="w50pc left-p" colspan="2">
                    <table class="w100pc">
                        <thead style="display: none">
                          <tr>
                            <th aria-label="Assets" colspan="3">&nbsp;</th>
                          </tr>
                        </thead>
                        <tr>
                            <td class="subsections-hdr" colspan="3">&nbsp;<strong>Assets</strong>&nbsp;</td>
                        </tr>

                        <TMPL_IF DISABLE_ASSESSMENT>
                            <TMPL_UNLESS DELETE_ASSESSMENT>
                                <tr>
                                    <!-- TODO: Are these variables correct? -->
                                    <td class="checkbox-td">&nbsp;</td>
                                    <td class="checkbox-label-td-disabled">&nbsp;Properties (disabled)</td>
                                    <td class="checkbox-label-td-disabled lbl-small"><TMPL_UNLESS HIDE_PRICES>$<TMPL_VAR NAME="properties-price"></TMPL_UNLESS>&nbsp;</td>
                                </tr>
                            </TMPL_UNLESS>
                        <TMPL_ELSE>
                            <TMPL_IF DISABLE_DEEDS>
                                <TMPL_UNLESS DELETE_DEEDS>
                                    <tr>
                                        <!-- TODO: Are these variables correct? -->
                                        <td class="checkbox-td">&nbsp;</td>
                                        <td class="checkbox-label-td-disabled">&nbsp;Properties (disabled)</td>
                                        <td class="checkbox-label-td-disabled lbl-small"><TMPL_UNLESS HIDE_PRICES>$<TMPL_VAR NAME="properties-price"></TMPL_UNLESS>&nbsp;</td>
                                    </tr>
                                </TMPL_UNLESS>   
                            <TMPL_ELSE>
                                <tr>
                                    <!-- TODO: Are these variables correct? -->
                                    <td class="checkbox-td"><input type="checkbox" id="properties" name="properties" value="1" <TMPL_VAR NAME="properties"> onClick="change_total(this, <TMPL_VAR NAME='properties-price'>, document.forms[0].BUS_TOTAL,document.forms[0].BUS_PRE_TOTAL)"></td>
                                    <td class="checkbox-label-td">&nbsp;<label for="properties">Properties</label></td>
                                    <td class="checkbox-label-td lbl-price"><TMPL_UNLESS HIDE_PRICES>$<TMPL_VAR NAME="bankruptcy-price"></TMPL_UNLESS>&nbsp;</td>
                                </tr>
                            </TMPL_IF>
                        </TMPL_IF>

                        <TMPL_IF DO_NOT_DISPLAY_COMBINED_MVR>
                           <TMPL_UNLESS DO_NOT_DISPLAY_MV>
                           <TMPL_UNLESS DELETE_MV>
                               <tr>
                                   <TMPL_UNLESS DISABLE_MV>
                                       <td class="checkbox-td"><input type="checkbox" id="motor-vehicles" name="motor-vehicles" value="1" <TMPL_VAR NAME="motor-vehicles"> onClick="change_total(this, <TMPL_VAR NAME='motor-vehicles-price'>, document.forms[0].BUS_TOTAL,document.forms[0].BUS_PRE_TOTAL)"></td>
                                       <td class="checkbox-label-td">&nbsp;<label for="motor-vehicles">Motor Vehicles</label></td>
                                       <td class="checkbox-label-td lbl-price"><TMPL_UNLESS HIDE_PRICES>$<TMPL_VAR NAME="motor-vehicles-price"></TMPL_UNLESS>&nbsp;</td>
                                   <TMPL_ELSE>
                                       <TMPL_IF RT_MVR_ENABLED>
                                           <td class="checkbox-td"><input type="checkbox" id="motor-vehicles" name="motor-vehicles" value="1" <TMPL_VAR NAME="motor-vehicles"> onClick="change_total(this, <TMPL_VAR NAME='motor-vehicles-price'>, document.forms[0].BUS_TOTAL,document.forms[0].BUS_PRE_TOTAL)"></td>
                                           <td class="checkbox-label-td">&nbsp;<label for="motor-vehicles">Motor Vehicles</label></td>
                                           <td class="checkbox-label-td lbl-price"><TMPL_UNLESS HIDE_PRICES>$<TMPL_VAR NAME="motor-vehicles-price"></TMPL_UNLESS>&nbsp;</td>
                                       <TMPL_ELSE>
                                           <td class="checkbox-td">&nbsp;</td>
                                           <td class="checkbox-label-td-disabled">&nbsp;Motor Vehicles (disabled)</td>
                                           <td class="checkbox-label-td-disabled lbl-small"><TMPL_UNLESS HIDE_PRICES>$<TMPL_VAR NAME="motor-vehicles-price"></TMPL_UNLESS>&nbsp;</td>
                                       </TMPL_IF>
                                   </TMPL_UNLESS>
                               </tr>
                           </TMPL_UNLESS>
                           </TMPL_UNLESS>
                        <TMPL_ELSE> 
                               <tr>
                                  <TMPL_UNLESS DISABLE_COMBINED_MVR>
                                      <td class="checkbox-td"><input type="checkbox" id="motor-vehicles" name="motor-vehicles" value="1" <TMPL_VAR NAME="motor-vehicles"> onClick="change_total(this, <TMPL_VAR NAME='motor-vehicles-price'>, document.forms[0].BUS_TOTAL,document.forms[0].BUS_PRE_TOTAL)"></td>
                                      <td class="checkbox-label-td">&nbsp;<label for="motor-vehicles">Motor Vehicles</label></td>
                                      <td class="checkbox-label-td lbl-price"><TMPL_UNLESS HIDE_PRICES>$<TMPL_VAR NAME="motor-vehicles-price"></TMPL_UNLESS>&nbsp;</td>
                                  <TMPL_ELSE>
                                      <td class="checkbox-td">&nbsp;</td>
                                      <td class="checkbox-label-td-disabled">&nbsp;Motor Vehicles (disabled)</td>
                                      <td class="checkbox-label-td-disabled lbl-small"><TMPL_UNLESS HIDE_PRICES>$<TMPL_VAR NAME="motor-vehicles-price"></TMPL_UNLESS>&nbsp;</td>
                                  </TMPL_UNLESS>
                               </tr>
                        </TMPL_IF>

                        <TMPL_UNLESS DELETE_AIRCRAFT>
                            <tr>
                                <TMPL_UNLESS DISABLE_AIRCRAFT>
                                    <td class="checkbox-td"><input type="checkbox" id="faa-aircraft" name="faa-aircraft" value="1" <TMPL_VAR NAME="faa-aircraft"> onClick="change_total(this, <TMPL_VAR NAME='faa-aircraft-price'>, document.forms[0].BUS_TOTAL,document.forms[0].BUS_PRE_TOTAL)"></td>
                                    <td class="checkbox-label-td">&nbsp;<label for="faa-aircraft">FAA Aircraft</label></td>
                                    <td class="checkbox-label-td lbl-price"><TMPL_UNLESS HIDE_PRICES>$<TMPL_VAR NAME="faa-aircraft-price"></TMPL_UNLESS>&nbsp;</td>
                                <TMPL_ELSE>
                                    <td class="checkbox-td">&nbsp;</td>
                                    <td class="checkbox-label-td-disabled">&nbsp;FAA Aircraft (disabled)</td>
                                    <td class="checkbox-label-td-disabled lbl-small"><TMPL_UNLESS HIDE_PRICES>$<TMPL_VAR NAME="faa-aircraft-price"></TMPL_UNLESS>&nbsp;</td>
                                </TMPL_UNLESS>
                            </tr>
                        </TMPL_UNLESS>

                        <TMPL_UNLESS DELETE_VESSEL>
                            <tr>
                                <TMPL_UNLESS DISABLE_VESSEL>
                                    <td class="checkbox-td"><input type="checkbox" id="merchant-vessels" name="merchant-vessels" value="1" <TMPL_VAR NAME="merchant-vessels"> onClick="change_total(this, <TMPL_VAR NAME='merchant-vessels-price'>, document.forms[0].BUS_TOTAL,document.forms[0].BUS_PRE_TOTAL)"></td>
                                    <td class="checkbox-label-td">&nbsp;<label for="merchant-vessels">Watercraft</label></td>
                                    <td class="checkbox-label-td lbl-price"><TMPL_UNLESS HIDE_PRICES>$<TMPL_VAR NAME="merchant-vessels-price"></TMPL_UNLESS>&nbsp;</td>
                                <TMPL_ELSE>
                                    <td class="checkbox-td">&nbsp;</td>
                                    <td class="checkbox-label-td-disabled">&nbsp;Watercraft (disabled)</td>
                                    <td class="checkbox-label-td-disabled lbl-small"><TMPL_UNLESS HIDE_PRICES>$<TMPL_VAR NAME="merchant-vessels-price"></TMPL_UNLESS>&nbsp;</td>
                                </TMPL_UNLESS>
                            </tr>
                        </TMPL_UNLESS>

                        <TMPL_UNLESS DELETE_WHOIS>
                            <tr>
                                <TMPL_UNLESS DISABLE_WHOIS>
                                    <td class="checkbox-td"><input type="checkbox" id="domains" name="domains" value="1" <TMPL_VAR NAME="domains"> onClick="change_total(this, <TMPL_VAR NAME='domains-price'>, document.forms[0].BUS_TOTAL,document.forms[0].BUS_PRE_TOTAL)"></td>
                                    <td class="checkbox-label-td"><label for="domains">&nbsp;Internet Domain Names</label></td>
                                    <td class="checkbox-label-td lbl-price"><TMPL_UNLESS HIDE_PRICES>$<TMPL_VAR NAME="domains-price"></TMPL_UNLESS>&nbsp;</td>
                                <TMPL_ELSE>
                                    <td class="checkbox-td">&nbsp;</td>
                                    <td class="checkbox-label-td-disabled">&nbsp;Internet Domain Names (disabled)</td>
                                    <td class="checkbox-label-td-disabled lbl-small"><TMPL_UNLESS HIDE_PRICES>$<TMPL_VAR NAME="domains-price"></TMPL_UNLESS>&nbsp;</td>
                                </TMPL_UNLESS>
                            </tr>
                        </TMPL_UNLESS>

                        <TMPL_UNLESS DELETE_CUSTOM_D_AND_B>
                            <TMPL_UNLESS HIDE_D_AND_B>
                                <tr>
                                    <TMPL_UNLESS DISABLE_D_AND_B>
                                        <td class="checkbox-td"><input type="checkbox" id="d_and_b" name="d_and_b" value="1" <TMPL_VAR NAME="d_and_b"> onClick="change_total(this, <TMPL_VAR NAME='d_and_b-price'>, document.forms[0].BUS_TOTAL,document.forms[0].BUS_PRE_TOTAL)"></td>
                                        <td class="checkbox-label-td"><label for="d_and_b">&nbsp;Dun &amp; Bradstreet Records</label></td>
                                        <td class="checkbox-label-td lbl-price"><TMPL_UNLESS HIDE_PRICES>$<TMPL_VAR NAME="d_and_b-price"></TMPL_UNLESS>&nbsp;</td>
                                    <TMPL_ELSE>
                                        <td class="checkbox-td">&nbsp;</td>
                                        <td class="checkbox-label-td-disabled">&nbsp;Dun &amp; Bradstreet Records (disabled)</td>
                                        <td class="checkbox-label-td-disabled lbl-small"><TMPL_UNLESS HIDE_PRICES>$<TMPL_VAR NAME="d_and_b-price"></TMPL_UNLESS>&nbsp;</td>
                                    </TMPL_UNLESS> 
                                </tr>
                            </TMPL_UNLESS> 
                        </TMPL_UNLESS> 

                        <tr>
                            <td class="checkbox-td"><input type="checkbox" id="irs-5500" name="irs-5500" value="1" <TMPL_VAR NAME="irs-5500"> onClick="change_total(this, <TMPL_VAR NAME='irs-5500-price'>, document.forms[0].BUS_TOTAL,document.forms[0].BUS_PRE_TOTAL)"></td>
                            <td class="checkbox-label-td"><label for="irs-5500">&nbsp;IRS5500</label></td>
                            <td class="checkbox-label-td lbl-price"><TMPL_UNLESS HIDE_PRICES>$<TMPL_VAR NAME="irs-5500-price"></TMPL_UNLESS>&nbsp;</td>
                        </tr>

                    </table>
                </td>
            </tr>

            <tr>
                <td colspan="3">
                    <div class="red-divide"></div>
                </td>
            </tr>

            <tr>
                <td colspan="2">
                    <TMPL_UNLESS HIDE_PRICES>
                        <div class="text-and-select" style="padding-left:0;">
                            <div class="tas-text mgl0"><label for="BUS_TOTAL">Maximum Report Price:</label>&nbsp;</div>
                            <div class="tas-select">$<input type="text" id="BUS_TOTAL" name="BUS_TOTAL" size="5" value="<TMPL_VAR NAME='BUS_TOTAL'>" onFocus="this.blur();"></div>
                        </div>
                    </TMPL_UNLESS>
                </td>
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
                <td colspan="2">
                    <table width="100%">
                        <thead style="display: none">
                          <tr>
                            <th aria-label="Note">&nbsp;</th>
                          </tr>
                        </thead>
                    
                        <tr>
                            <td width="100%" class="lbl-note bottom-p">
                                <TMPL_UNLESS HIDE_PRICES>
                                    <strong>NOTE:</strong>&nbsp;&nbsp;
                                    This is the maximum possible cost for this report.&nbsp;&nbsp;You will not be charged for options returning no results except those marked with <img src="<TMPL_VAR NAME='IMGPATH'>/star.gif" border="0" width="11" height="10" alt="Max. Cost"><img src="<TMPL_VAR NAME='IMGPATH'>/star.gif" border="0" width="11" height="10" alt="Max. Cost"> where search charge applies with or without results.<TMPL_ELSE>&nbsp;
                                </TMPL_UNLESS>
                            </td>
                        </tr>
                    </table>
                </td>
                <td>
                    <table>
                        <thead style="display: none">
                          <tr>
                            <th aria-label="Assets" colspan="2">&nbsp;</th>
                          </tr>
                        </thead>
                        <tr>
                            <td class="checkbox-td"><input type="checkbox" name="bus-prompt" id="bus-prompt" value="1" <TMPL_VAR NAME=bus-prompt> ></td>
                            <td class="checkbox-label-td"><label for="bus-prompt">&nbsp;Prompt me for these options for each report.</label> </td>
                        </tr>
                        <tr>
                            <TMPL_IF NAME="ENABLE_SAVE_REPORT">
                                <TMPL_IF NAME="REPORT_MANAGER_OFF">
                                    <td width="1%"  class="disabled_medblack"><input type="checkbox" name="save-report" id="save-report" value="1" <TMPL_VAR NAME="save-report"> readonly onChange="this.checked = !this.checked"></td>
                                    <td align="left" class="disabled_medblack"><label for="save-report">&nbsp;(Saving Reports currently not available).</td>
                                <TMPL_ELSE>
                                    <td class="checkbox-td"><input type="checkbox" name="save-report" id="save-report" value="1" <TMPL_VAR NAME="save-report"> ></td>
                                    <td class="checkbox-label-td"><label for="save-report">&nbsp;Save report for later access.</label></td>
                                </TMPL_IF>
                            <TMPL_ELSE>
                                <td colspan="2"></td>
                            </TMPL_IF>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
    </div>
    <input type=hidden name="BUS_PRE_TOTAL" value="<TMPL_VAR NAME=BUS_PRE_TOTAL>">

<!-- End short_bus_report_body.tpl-->
