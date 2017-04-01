<!-- Begin short_bus_qualifier_report_body.tpl-->
<div class="row-wrapper grey-border">
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
                <td colspan="3" class="subsections-hdr">&nbsp;<b>Report Options:</b>&nbsp;</td>
              </tr>
            <tr>
              <td valign="top" class="bottom-p">
                  <table border="0" cellpadding="0" cellspacing="0" width="100%">
                    <thead style="display: none">
                      <tr>
                        <th aria-label="Report Options">&nbsp;</th>
                      </tr>
                    </thead>
                    <tr>
                      <td class="checkbox-td"><input type="checkbox" id="alternate-identities" value="1" name="alternate-identities" <TMPL_VAR NAME="alternate-identities">></td>
                      <td class="checkbox-label-td"><label for="alternate-identities">&nbsp;Name and TIN Variations</label></td>
                      <td>&nbsp;</td>
                    </tr>
                    <tr>
                      <td class="checkbox-td"><input type="checkbox" id="parent-company" value="1" name="parent-company" <TMPL_VAR NAME="parent-company">></td>
                      <td class="checkbox-label-td"><label for="parent-company">&nbsp;Parent Company and Industry Information</label></td>
                      <td>&nbsp;</td>
                    </tr>
              </table>
              </td>
              </tr>
    </table>
</div>


<div class="row-wrapper grey-border margin-for-footer">
      <table class="options-table">
      <thead style="display: none">
        <tr>
          <th aria-label="Options">&nbsp;</th>
        </tr>
      </thead>
      <tr>

        <td class="w50pc left-p">
        <table border="0" cellpadding="0" cellspacing="0" width="100%">
          <thead style="display: none">
            <tr>
              <th aria-label="Business Filing">&nbsp;</th>
            </tr>
          </thead>
        
          <tr>
            <td colspan="3" class="subsections-hdr"><b>Business Filings</b></td>
          </tr>
        <TMPL_UNLESS DELETE_BANKRUPTCY>
        <tr>
        <TMPL_IF DISABLE_BANKRUPTCY>
          <td class="checkbox-td">&nbsp;</td>
          <td class="checkbox-label-td-disabled">Bankrupty&nbsp;(disabled)&nbsp;</td>
          <td>&nbsp;</td>
        <TMPL_ELSE>
          <td class="checkbox-td"><input type="checkbox" id="bankruptcy" value="1" name="bankruptcy" <TMPL_VAR NAME="bankruptcy">></td>
          <td class="checkbox-label-td"><label for="bankruptcy">&nbsp;Bankruptcy</label></td>
          <td >&nbsp;</td>
        </TMPL_IF>
        </tr>
        </TMPL_UNLESS>

        <TMPL_UNLESS DELETE_LIEN>
        <tr>
        <TMPL_IF DISABLE_LIEN>
          <td class="checkbox-td">&nbsp;</td>
          <td class="checkbox-label-td-disabled">Liens &amp; Judgments&nbsp;(disabled)&nbsp;</td>
          <td>&nbsp;</td>
        <TMPL_ELSE>
          <td class="checkbox-td"><input type="checkbox" name="liens" id="liens" value="1" <TMPL_VAR NAME=liens> ></td>
          <td class="checkbox-label-td"><label for="liens">&nbsp;Liens &amp; Judgments</label></td>
          <td>&nbsp;</td>
        </TMPL_IF>
        </tr>
        </TMPL_UNLESS>

        <TMPL_UNLESS DELETE_CORPORATION>
        <tr>
        <TMPL_IF DISABLE_CORPORATION>
          <td class="checkbox-td">&nbsp;</td>
          <td class="checkbox-label-td-disabled">Corporation Filings&nbsp;(disabled)&nbsp;</td>
          <td>&nbsp;</td>
        <TMPL_ELSE>
          <td class="checkbox-td"><input type="checkbox" id="corporate-filings" value="1" name="corporate-filings" <TMPL_VAR NAME="corporate-filings">></td>
          <td class="checkbox-label-td"><label for="corporate-filings">&nbsp;Corporation Filings</label></td>
          <td>&nbsp;</td>
        </TMPL_IF>
        </tr>
        </TMPL_UNLESS>

        <tr>
          <td class="checkbox-td"><input type="checkbox" id="business-registrations" value="1" name="business-registrations" <TMPL_VAR NAME="business-registrations">></td>
          <td class="checkbox-label-td"><label for="business-registrations">&nbsp;Business Registrations</label></td>
          <td>&nbsp;</td>
        </tr>

        <TMPL_UNLESS DELETE_UCC>
        <tr>
        <TMPL_IF DISABLE_UCC>
          <td class="checkbox-td">&nbsp;</td>
          <td class="checkbox-label-td-disabled">UCC Filings&nbsp;(disabled)&nbsp;</td>
          <td>&nbsp;</td>
        <TMPL_ELSE>
          <td class="checkbox-td"><input type="checkbox" id="uccs" value="1" name="uccs" <TMPL_VAR NAME="uccs">></td>
          <td class="checkbox-label-td"><label for="uccs">&nbsp;UCC Filings</label></td>
          <td>&nbsp;</td>
        </TMPL_IF>
        </tr>
        </TMPL_UNLESS>

        <tr>
          <td class="checkbox-td"><input type="checkbox" id="associated-businesses" value="1" name="associated-businesses" <TMPL_VAR NAME="associated-businesses">></td>
          <td class="checkbox-label-td"><label for="associated-businesses">&nbsp;Associated Businesses</label></td>
          <td>&nbsp;</td>
        </tr>

        <tr>
          <td class="checkbox-td"><input type="checkbox" id="contacts" value="1" name="contacts" <TMPL_VAR NAME="contacts">></td>
          <td class="checkbox-label-td"><label for="contacts">&nbsp;Associated People</label></td>
          <td>&nbsp;</td>
        </tr>

        <tr>
          <td class="checkbox-td"><input type="checkbox" id="reverse-phone" value="1" name="reverse-phone" <TMPL_VAR NAME="reverse-phone">></td>
          <td class="checkbox-label-td"><label for="reverse-phone">&nbsp;Business Phone Matches</label></td>
          <td>&nbsp;</td>
        </tr>        
        </table>
        </td>

        <td width="2%" nowrap class="unifont1"></td>
        

        <!-- COLUMN2 -->
        <td class="w45pc left-p" >
        <table border="0" cellpadding="0" cellspacing="0" width="100%">
          <thead style="display: none">
            <tr>
              <th aria-label="Assets">&nbsp;</th>
            </tr>
          </thead>

          <tr>
            <td class="subsections-hdr" colspan="3">&nbsp;<b>Assets</b>&nbsp;</td>
          </tr>
          
        <TMPL_IF DISABLE_ASSESSMENT>
        <TMPL_UNLESS DELETE_ASSESSMENT>
        <tr>
          <td class="checkbox-td">&nbsp;</td>
          <td class="checkbox-label-td-disabled">Properties&nbsp;(disabled)&nbsp;</td>
          <td>&nbsp;</td>
        </tr>
        </TMPL_UNLESS>
        <TMPL_ELSE>
        <TMPL_IF DISABLE_DEEDS>
        <TMPL_UNLESS DELETE_DEEDS>
        <tr>
          <td class="checkbox-td">&nbsp;</td>
          <td class="checkbox-label-td-disabled">Properties&nbsp;(disabled)&nbsp;</td>
          <td >&nbsp;</td>
        </tr>
        </TMPL_UNLESS>
        <TMPL_ELSE>
        <tr>
          <td class="checkbox-td"><input type="checkbox" id="properties" value="1" name="properties" <TMPL_VAR NAME="properties">></td>
          <td class="checkbox-label-td"><label for="properties">&nbsp;Properties</label></td>
          <td>&nbsp;</td>
        </tr>
        </TMPL_IF>
        </TMPL_IF>

        <TMPL_IF DO_NOT_DISPLAY_COMBINED_MVR>
        <TMPL_UNLESS DO_NOT_DISPLAY_MV>
        <TMPL_UNLESS DELETE_MV>
        <tr>
        <TMPL_IF DISABLE_MV>
          <td class="checkbox-td">&nbsp;</td>
          <td class="checkbox-label-td-disabled">Motor Vehicles&nbsp;(disabled)&nbsp;</td>
          <td&nbsp;</td>
        <TMPL_ELSE>
          <td class="checkbox-td"><input type="checkbox" id="motor-vehicles" value="1" name="motor-vehicles" <TMPL_VAR NAME="motor-vehicles">></td>
          <td class="checkbox-label-td"><label for="motor-vehicles">&nbsp;Motor Vehicles</label></td>
          <td >&nbsp;</td>
        </TMPL_IF>
        </tr>
        </TMPL_UNLESS>
        </TMPL_UNLESS>
        <TMPL_ELSE>
        <tr>
        <TMPL_IF DISABLE_MV>
          <td class="checkbox-td">&nbsp;</td>
          <td class="checkbox-label-td-disabled">Motor Vehicles&nbsp;(disabled)&nbsp;</td>
          <td&nbsp;</td>
        <TMPL_ELSE>
          <td class="checkbox-td"><input type="checkbox" id="motor-vehicles" value="1" name="motor-vehicles" <TMPL_VAR NAME="motor-vehicles">></td>
          <td class="checkbox-label-td"><label for="motor-vehicles">&nbsp;Motor Vehicles</label></td>
          <td >&nbsp;</td>
        </TMPL_IF>
        </tr>
        </TMPL_IF>

        <TMPL_UNLESS DELETE_AIRCRAFT>
        <tr>
        <TMPL_IF DISABLE_AIRCRAFT>
          <td class="checkbox-td">&nbsp;</td>
          <td class="checkbox-label-td-disabled">FAA Aircraft&nbsp;(disabled)&nbsp;</td>
          <td>&nbsp;</td>
        <TMPL_ELSE>
          <td class="checkbox-td"><input type="checkbox" id="faa-aircraft" value="1" name="faa-aircraft" <TMPL_VAR NAME="faa-aircraft">></td>
          <td class="checkbox-label-td"><label for="faa-aircraft">&nbsp;FAA Aircraft</label></td>
          <td>&nbsp;</td>
        </TMPL_IF>
        </tr>
        </TMPL_UNLESS>

        <TMPL_UNLESS DELETE_VESSEL>
        <tr>
        <TMPL_IF DISABLE_VESSEL>
          <td class="checkbox-td">&nbsp;</td>
          <td class="checkbox-label-td-disabled">Watercraft&nbsp;(disabled)&nbsp;</td>
          <td>&nbsp;</td>
        <TMPL_ELSE>
          <td class="checkbox-td"><input type="checkbox" id="merchant-vessels" value="1" name="merchant-vessels" <TMPL_VAR NAME="merchant-vessels">></td>
          <td class="checkbox-label-td"><label for="merchant-vessels">&nbsp;Watercraft</label></td>
          <td>&nbsp;</td>
        </TMPL_IF>
        </tr>
        </TMPL_UNLESS>

        <TMPL_UNLESS DELETE_WHOIS>
        <tr>
        <TMPL_IF DISABLE_WHOIS>
          <td class="checkbox-td">&nbsp;</td>
          <td class="checkbox-label-td-disabled">Internet Domain Names&nbsp;(disabled)&nbsp;</td>
          <td>&nbsp;</td>
        <TMPL_ELSE>
          <td class="checkbox-td"><input type="checkbox" id="domains" value="1" name="domains" <TMPL_VAR NAME="domains">></td>
          <td class="checkbox-label-td"><label for="domains">&nbsp;Internet Domain Names</label></td>
          <td>&nbsp;</td>
        </TMPL_IF>
        </tr>
        </TMPL_UNLESS>

        <TMPL_UNLESS DELETE_CUSTOM_D_AND_B>
        <TMPL_UNLESS HIDE_D_AND_B>
        <tr>
        <TMPL_IF DISABLE_D_AND_B>
          <td class="checkbox-td">&nbsp;</td>
          <td class="checkbox-label-td-disabled">Dun &amp; Bradstreet Records&nbsp;(disabled)&nbsp;</td>
          <td>&nbsp;</td>
        <TMPL_ELSE>
          <td class="checkbox-td"><input type="checkbox" id="d_and_b" value="1" name="d_and_b" <TMPL_VAR NAME="d_and_b">></td>
          <td class="checkbox-label-td"><label for="d_and_b">&nbsp;Dun &amp; Bradstreet Records</label></td>
          <td>&nbsp;</td>
        </TMPL_IF>
        </tr>
        </TMPL_UNLESS>
        </TMPL_UNLESS>

        <tr>
          <td class="checkbox-td"><input type="checkbox" id="irs-5500" value="1" name="irs-5500" <TMPL_VAR NAME="irs-5500">></td>
          <td class="checkbox-label-td"><label for="irs-5500">&nbsp;IRS5500</label></td>
          <td>&nbsp;</td>
        </tr>

        <tr>
          <td class="checkbox-td"><input type="checkbox" id="sanctions" value="1" name="sanctions" <TMPL_VAR NAME="sanctions">></td>
          <td class="checkbox-label-td"><label for="sanctions">&nbsp;Sanctions</label></td>
          <td>&nbsp;</td>
        </tr>
        </table>
        </td>

    </tr>

    <tr>
      <td colspan="3" valign="top">
        <div class="red-divide"></div>
      </td>
    </tr>

    <tr>
      <td class="45pc left-p" valign="top">
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
      <td></td>

      <td></td>

      <td width="54%" class="left-p" valign="top">
          <table border="0" cellpadding="0" cellspacing="0" width="100%">
          <thead style="display: none">
            <tr>
              <th aria-label="More options">&nbsp;</th>
            </tr>
          </thead>
          <tr>
            <td class="checkbox-td"><input type="checkbox" name="prompt" id="prompt" value="1" <TMPL_VAR NAME=prompt> ></td>
            <td class="checkbox-label-td"><label for="prompt">&nbsp;Prompt me for these options for each report.</label> </td>
          </tr>

          <tr>
                   <TMPL_IF NAME="ENABLE_SAVE_REPORT">
                      <TMPL_IF NAME="REPORT_MANAGER_OFF">
                <td class="checkbox-td" class="disabled_medblack"><input type="checkbox" name="save-report" id="save-report" value="1" <TMPL_VAR NAME="save-report"> readonly onChange="this.checked = !this.checked"></td>
                <td align="left" class="disabled_medblack"><label for="relatives">&nbsp;(Saving Reports currently not available).</td>
              <TMPL_ELSE>
                <td class="checkbox-td"><input type="checkbox" name="save-report" id="save-report" value="1" <TMPL_VAR NAME="save-report"> ></td>
                <td align="left" class="medblack"><label for="save-report">&nbsp;Save report for later access.</label></td>
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

<!-- End short_bus_qualifier_report_body.tpl-->
