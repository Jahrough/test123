<!-- Begin test short_comprehensive_report_body.tpl -->

<div class="row-wrapper grey-border margin-for-footer">
        <table class="options-table">
            <thead style="display: none">
              <tr>
                <th aria-label="Options">&nbsp;</th>
              </tr>
            </thead>
            <tbody>
            <TMPL_IF NAME="PREFERENCES_ERROR_MESSAGE">
              <tr>
                <td><TMPL_VAR NAME="PREFERENCES_ERROR_MESSAGE"></td>
              </tr>
            </TMPL_IF>
          <tr>
            <td class="w45pc bottom-p">
            <table class="options-column-table">
            <thead style="display: none">
              <tr>
                <th aria-label="Check box">&nbsp;</th>
                <th aria-label="Label">&nbsp;</th>
              </tr>
            </thead>
            
                <tbody>
            <TMPL_IF LE>
              <tr class="option-row">
                <td class="checkbox-td"><input type="checkbox" name="report-map" id="report-map" value="10" <TMPL_VAR NAME=report-map>></td>
                <td class="checkbox-label-td"><label for="report-map">Comprehensive Report Summary</label></td>
              </tr>
              <tr class="option-row">
                <td class="checkbox-td"><input type="checkbox" name="address-map" id="address-map" value="10" <TMPL_VAR NAME=address-map>></td>
                <td class="checkbox-label-td"><label for="address-map">Address Summary</label></td>
              </tr>
              <TMPL_IF SHOW_EDUCATION_DETAILS>
                <tr class="option-row">
                  <td class="checkbox-td"><input type="checkbox" name="education-map" id="education-map" value="10" <TMPL_VAR NAME=education-map>></td>
                  <td class="checkbox-label-td"><label for="education-map">Possible Education</label></td>
                </tr>
              </TMPL_IF>
                  <TMPL_UNLESS DELETE_RELATIVES>
              <tr class="option-row">
                <td class="checkbox-td"><input type="checkbox" name="relative-map" id="relative-map" value="10" <TMPL_VAR NAME=relative-map>></td>
                <td class="checkbox-label-td"><label for="relative-map">Relative Summary</label></td>
              </tr>
                  </TMPL_UNLESS>
              <tr class="option-row">
                <td class="checkbox-td"><input type="checkbox" name="imposters" id="imposters" value="2" <TMPL_VAR NAME=imposters>></td>
                <td class="checkbox-label-td"><label for="imposters">Others Using Same SSN</label></td>
              </tr>
              <tr class="option-row">
                <td class="checkbox-td"><input type="checkbox" name="verify-ssns" id="verify-ssns" value="5" <TMPL_VAR NAME=verify-ssns>></td>
                <td class="checkbox-label-td"><label for="verify-ssns">Date and Location where SSN Issued</label></td>
              </tr>
                  <TMPL_UNLESS DELETE_NEIGHBORHOOD>
              <tr class="option-row">
                <td class="checkbox-td"><input type="checkbox" name="census-data" id="census-data" value="5" <TMPL_VAR NAME=census-data>></td>
                <td class="checkbox-label-td"><label for="census-data">Neighborhood Profile (2010 Census)</label></td>
              </tr>
                  </TMPL_UNLESS>
              <tr class="option-row">
                <td class="checkbox-td"><input type="checkbox" name="processed-header" id="processed-header" value="5" <TMPL_VAR NAME=processed-header>></td>
                <td class="checkbox-label-td"><label for="processed-header">Include Company Header</label></td>
              </tr>
            <TMPL_ELSE>
              <tr class="option-row">
                <td class="checkbox-td"><input type="checkbox" name="summary-report-table" id="summary-report-table" value="10" <TMPL_VAR NAME=summary-report-table>></td>
                <td class="checkbox-label-td"><label for="summary-report-table">Summary Report</label></td>
              </tr>
              <tr class="option-row">
                <td class="checkbox-td">&nbsp;</td>
                <td class="checkbox-label-td"><input type="checkbox" name="report-map" id="report-map" value="10" <TMPL_VAR NAME=report-map>>&nbsp;<label for="report-map">Comprehensive Report Summary</label></td>
              </tr>
              <tr class="option-row">
                <td class="checkbox-td">&nbsp;</td>
                <td class="checkbox-label-td"><input type="checkbox" name="address-map" id="address-map" value="10" <TMPL_VAR NAME=address-map>>&nbsp;<label for="address-map">Address Summary</label></td>
              </tr>
              <TMPL_IF SHOW_EDUCATION_DETAILS>
                <tr class="option-row">
                  <td class="checkbox-td">&nbsp;</td>
                  <td class="checkbox-label-td"><input type="checkbox" name="education-map" id="education-map" value="10" <TMPL_VAR NAME=education-map>>&nbsp;<label for="education-map">Possible Education</label></td>
                </tr>
             </TMPL_IF>
                  <TMPL_UNLESS DELETE_RELATIVES>
              <tr class="option-row">
                <td class="checkbox-td">&nbsp;</td>
                <td class="checkbox-label-td"><input type="checkbox" name="relative-map" id="relative-map" value="10" <TMPL_VAR NAME=relative-map>>&nbsp;<label for="relative-map">Relative Summary</label></td>
              </tr>
                  </TMPL_UNLESS>
              <tr class="option-row">
                <td class="checkbox-td">&nbsp;</td>
                <td class="checkbox-label-td"><input type="checkbox" name="imposters" id="imposters" value="2" <TMPL_VAR NAME=imposters>>&nbsp;<label for="imposters">Others Using Same SSN</label></td>
              </tr>
              <tr class="option-row">
                <td class="checkbox-td">&nbsp;</td>
                <td class="checkbox-label-td"><input type="checkbox" name="verify-ssns" id="verify-ssns" value="5" <TMPL_VAR NAME=verify-ssns>>&nbsp;<label for="verify-ssns">Date and Location where SSN Issued</label></td>
              </tr>
                  <TMPL_UNLESS DELETE_NEIGHBORHOOD>
              <tr class="option-row">
                <td class="checkbox-td">&nbsp;</td>
                <td class="checkbox-label-td"><input type="checkbox" name="census-data" id="census-data" value="5" <TMPL_VAR NAME=census-data>>&nbsp;<label for="census-data">Neighborhood Profile (2010 Census)</label></td>
              </tr>
                  </TMPL_UNLESS>
              <tr class="option-row">
                <td class="checkbox-td">&nbsp;</td>
                <td class="checkbox-label-td"><input type="checkbox" name="processed-header" id="processed-header" value="5" <TMPL_VAR NAME=processed-header>>&nbsp;<label for="processed-header">Include Company Header</label></td>
              </tr>
              </TMPL_IF>
              <TMPL_IF DO_NOT_DISPLAY_COMBINED_MVR>
                 <TMPL_UNLESS DO_NOT_DISPLAY_MV>
                 <TMPL_UNLESS DELETE_MV>
                   <tr class="option-row">
                   <TMPL_IF DISABLE_MV>
                       <td class="checkbox-td">&nbsp;</td>
                       <td class="checkbox-label-td-disabled">Include Motor Vehicle(s) Registration (disabled)</td>
                   <TMPL_ELSE>
                       <td class="checkbox-td"><input type="checkbox" name="motor-vehicles" id="motor-vehicles" value="1" <TMPL_VAR NAME=motor-vehicles>></td>
                       <td class="checkbox-label-td"><label for="motor-vehicles">Include Motor Vehicle(s) Registration</label></td>
                   </TMPL_IF>
                   </tr>
                 </TMPL_UNLESS>
                 </TMPL_UNLESS>
              <TMPL_ELSE>
                     <tr class="option-row">
                     <TMPL_IF DISABLE_COMBINED_MVR>
                        <td class="checkbox-td">&nbsp;</td>
                        <td class="checkbox-label-td-disabled">Include Motor Vehicle(s) Registration (disabled)</td>
                     <TMPL_ELSE>
                        <td class="checkbox-td"><input type="checkbox" name="motor-vehicles" id="motor-vehicles" value="1" <TMPL_VAR NAME=motor-vehicles>></td>
                        <td class="checkbox-label-td"><label for="motor-vehicles">Include Motor Vehicle(s) Registration</label></td>
                     </TMPL_IF>
                     </tr>
              </TMPL_IF>
              <tr class="option-row">
            <TMPL_IF DISABLE_ASSESSMENT>
                <td class="checkbox-td">&nbsp;</td>
                <td class="checkbox-label-td-disabled"><TMPL_UNLESS DELETE_ASSESSMENT>Properties (disabled)</TMPL_UNLESS>&nbsp;</td>
            <TMPL_ELSE>
            <TMPL_IF DISABLE_DEEDS>
                <td class="checkbox-td">&nbsp;</td>
                <td class="checkbox-label-td-disabled"><TMPL_UNLESS DELETE_DEEDS>Properties (disabled)</TMPL_UNLESS>&nbsp;</td>
            <TMPL_ELSE>
                <td class="checkbox-td"><input type="checkbox" name="property" id="property" value="11" <TMPL_VAR NAME=property>></td>
                <td class="checkbox-label-td"><label for="property">Properties</label></td>
            </TMPL_IF>
            </TMPL_IF>
              </tr>
              <TMPL_UNLESS DELETE_VARIETY_BUNDLE>
              <tr class="option-row">
              <TMPL_IF DISABLE_VARIETY_BUNDLE>
                <td class="checkbox-td">&nbsp;</td>
                <td class="checkbox-label-td-disabled">Watercraft (disabled)</td>
              <TMPL_ELSE>
                <td class="checkbox-td"><input type="checkbox" name="merchant-vessels" id="merchant-vessels" value="4" <TMPL_VAR NAME=merchant-vessels>></td>
                <td class="checkbox-label-td"><label for="merchant-vessels">Watercraft</label></td>
              </TMPL_IF>
              </tr>
              <tr class="option-row">
              <TMPL_IF DISABLE_VARIETY_BUNDLE>
                <td class="checkbox-td">&nbsp;</td>
                <td class="checkbox-label-td-disabled">FAA Aircraft (disabled)</td>
              <TMPL_ELSE>
                <td class="checkbox-td"><input type="checkbox" name="faa-aircraft" id="faa-aircraft" value="4" <TMPL_VAR NAME=faa-aircraft>></td>
                <td class="checkbox-label-td"><label for="faa-aircraft">FAA Aircraft</label></td>
              </TMPL_IF>
              </tr>
                  </TMPL_UNLESS>
              <TMPL_UNLESS DELETE_ACCIDENT>
                  <tr class="option-row">
              <TMPL_IF DISABLE_ACCIDENT>
                <td class="checkbox-td">&nbsp;</td>
                <TMPL_IF NAME="NAT_ACC_ENABLE">
                    <TMPL_UNLESS INS>
                <td class="checkbox-label-td-disabled">National Motor Vehicle Accidents (disabled)</td>
                    </TMPL_UNLESS>
            <TMPL_ELSE>
                <td class="checkbox-label-td-disabled">Florida Accidents (disabled)</td>
            </TMPL_IF>
              <TMPL_ELSE>
            <TMPL_IF NAME="NAT_ACC_ENABLE">
                <TMPL_UNLESS INS>
                    <td class="checkbox-td"><input type="checkbox" name="accident" id="accident" value="1" <TMPL_VAR NAME="accident">></td>
                    <td class="checkbox-label-td"><label for="accident">National Motor Vehicle Accidents</label></td>
                </TMPL_UNLESS>
                <TMPL_ELSE>
                <td class="checkbox-td"><input type="checkbox" name="accident" id="accident" value="1" <TMPL_VAR NAME="accident">></td>
                <td class="checkbox-label-td"><label for="accident">Florida Accidents</label></td>
            </TMPL_IF>
              </TMPL_IF>
                  </tr>
                  </TMPL_UNLESS>
         <TMPL_IF ENH_FLAT_RATE_COMP>
              <TMPL_UNLESS DELETE_CUSTOM_EMAIL>
              <TMPL_UNLESS DELETE_EMAIL>
              <tr class="option-row">
            <TMPL_IF DISABLE_EMAIL>
                <td class="checkbox-td">&nbsp;</td>
                <td class="checkbox-label-td-disabled">Include Email Addresses (disabled)</td>
            <TMPL_ELSE>
                <td class="checkbox-td"><input type="checkbox" name="email" id="email" value="1" <TMPL_VAR NAME=email>></td>
                <td class="checkbox-label-td"><label for="email">Include Email Addresses</label></td>
              </TMPL_IF>
              </tr>
              </TMPL_UNLESS>
              </TMPL_UNLESS>
              <TMPL_UNLESS DELETE_CUSTOM_JAILBOOKING>
                 <TMPL_IF SHOW_JAIL_BOOKING_SEARCH>
             <TMPL_UNLESS DELETE_JAILBOOKING>
              <tr class="option-row">
            <TMPL_UNLESS DISABLE_JAILBOOKING>
                <td class="checkbox-td"><input type="checkbox" name="jailbooking" id="jailbooking" value="1" <TMPL_VAR NAME=jailbooking>></td>
                <td class="checkbox-label-td"><label for="jailbooking">Include Jail Bookings</label></td>
            <TMPL_ELSE>
                <td class="checkbox-td">&nbsp;</td>
                <td class="checkbox-label-td-disabled">Include Jail Bookings (disabled)</td>
            </TMPL_UNLESS>
              </tr>
              </TMPL_UNLESS>
                  </TMPL_IF>
              </TMPL_UNLESS>
            </TMPL_IF>
              <TMPL_IF DO_SHOW_PHONES_PLUS>
              <TMPL_UNLESS DELETE_CUSTOM_DA_WIRELESS>
                  <tr class="option-row">
              <TMPL_IF DISABLE_DA_WIRELESS>
                <td class="checkbox-td">&nbsp;</td>
                <td class="checkbox-label-td-disabled">Phones Plus (disabled)</td>
              <TMPL_ELSE>
                    <td class="checkbox-td"><input type="checkbox" name="phones-plus" id="phones-plus" value="1" <TMPL_VAR NAME="phones-plus">></td>
                    <td class="checkbox-label-td"><label for="phones-plus">Phones Plus</label></td>
              </TMPL_IF>
                  </tr>
                  </TMPL_UNLESS>
              </TMPL_IF>
              </tbody>
            </table>
            </td>
            <td>&nbsp;</td>
            <td>
            <table class="options-column">
              <thead style="display: none">
                <tr>
                  <th aria-label="Check box">&nbsp;</th>
                  <th aria-label="Label">&nbsp;</th>
                </tr>
              </thead>
            
                <tbody>
              <tr class="option-row">
                <td class="checkbox-td"><input type="checkbox" name="associates" id="associates" value="4" <TMPL_VAR NAME=associates>></td>
                <td class="checkbox-label-td"><label for="associates">Associates</label></td>
              </tr>

              <TMPL_UNLESS DELETE_UCC>
              <tr class="option-row">
              <TMPL_IF DISABLE_UCC>
                <td class="checkbox-td">&nbsp;</td>
                <td class="checkbox-label-td-disabled">UCC Filings (disabled)</td>
              <TMPL_ELSE>
                <td class="checkbox-td"><input type="checkbox" name="uccs" id="uccs" value="1" <TMPL_VAR NAME="uccs">></td>
                <td class="checkbox-label-td"><label for="uccs">UCC Filings</label></td>
              </TMPL_IF>
              </tr>
                  </TMPL_UNLESS>
              <TMPL_UNLESS DELETE_SEXPREDATOR>
              <tr class="option-row">
              <TMPL_IF DISABLE_SEXPREDATOR>
                <td class="checkbox-td">&nbsp;</td>
                <td class="checkbox-label-td-disabled">Sexual Offenses (disabled)</td>
              <TMPL_ELSE>
                <td class="checkbox-td"><input type="checkbox" name="sexpredator" id="sexpredator" value="1" <TMPL_VAR NAME="sexpredator">></td>
                <td class="checkbox-label-td"><label for="sexpredator">Sexual Offenses</label></td>
              </TMPL_IF>
              </tr>
                  </TMPL_UNLESS>
              <TMPL_UNLESS DELETE_CRIM>
              <tr class="option-row">
              <TMPL_IF DISABLE_CRIM>
                <td class="checkbox-td">&nbsp;</td>
                <td class="checkbox-label-td-disabled">Possible Criminal Records (disabled)</td>
              <TMPL_ELSE>
                <td class="checkbox-td"><input type="checkbox" name="criminal-records" id="criminal-records" value="1" <TMPL_VAR NAME="criminal-records">></td>
                <td class="checkbox-label-td"><label for="criminal-records">Possible Criminal Records</label></td>
              </TMPL_IF>
              </tr>
                  </TMPL_UNLESS>
              <TMPL_UNLESS DELETE_BANKRUPTCY>
              <tr class="option-row">
              <TMPL_IF DISABLE_BANKRUPTCY>
                <td class="checkbox-td">&nbsp;</td>
                <td class="checkbox-label-td-disabled">Bankruptcy (disabled)</td>
              <TMPL_ELSE>
                <td class="checkbox-td"><input type="checkbox" name="bankruptcy" id="bankruptcy" value="1" <TMPL_VAR NAME=bankruptcy>></td>
                <td class="checkbox-label-td"><label for="bankruptcy">Bankruptcy</label> </td>
              </TMPL_IF>
              </tr>
                  </TMPL_UNLESS>
              <TMPL_UNLESS DISABLE_DEA_RPT_OPT>
                  <TMPL_UNLESS DELETE_DEA>
                  <tr class="option-row">
                  <TMPL_IF DISABLE_DEA>
                    <td class="checkbox-td">&nbsp;</td>
                    <td class="checkbox-label-td-disabled">DEA Controlled Substances (disabled)</td>
                  <TMPL_ELSE>
                    <td class="checkbox-td"><input type="checkbox" name="dea-substances" id="dea-substances" value="1" <TMPL_VAR NAME=dea-substances>></td>
                    <td class="checkbox-label-td"><label for="dea-substances">DEA Controlled Substances</label> </td>
                  </TMPL_IF>
                  </tr>
                  </TMPL_UNLESS>
              </TMPL_UNLESS>

              <TMPL_UNLESS DISABLE_FED_FIRE_EXP_RPT_OPT>
                  <TMPL_UNLESS DELETE_FIREARMS>
                  <tr class="option-row">
                  <TMPL_IF DISABLE_FIREARMS>
                    <td class="checkbox-td">&nbsp;</td>
                    <td class="checkbox-label-td-disabled">Federal Firearms and Explosives (disabled)</td>
                  <TMPL_ELSE>
                    <td class="checkbox-td"><input type="checkbox" name="firearms" id="firearms" value="1" <TMPL_VAR NAME=firearms>></td>
                    <td class="checkbox-label-td"><label for="firearms">Federal Firearms and Explosives</label> </td>
                  </TMPL_IF>
                  </tr>
                  </TMPL_UNLESS>
              </TMPL_UNLESS>
              <TMPL_UNLESS DELETE_LIEN>
              <tr class="option-row">
              <TMPL_IF DISABLE_LIEN>
                <td class="checkbox-td">&nbsp;</td>
                <td class="checkbox-label-td-disabled">Liens &amp; Judgments (disabled)</td>
              <TMPL_ELSE>
                <td class="checkbox-td"><input type="checkbox" name="liens" id="liens" value="1" <TMPL_VAR NAME=liens>></td>
                <td class="checkbox-label-td"><label for="liens">Liens &amp; Judgments</label> </td>
              </TMPL_IF>
              </tr>
                  </TMPL_UNLESS>
              <TMPL_UNLESS DELETE_PROF_LICENSE>
              <tr class="option-row">
              <TMPL_IF DISABLE_PROF_LICENSE>
                <td class="checkbox-td">&nbsp;</td>
                <td class="checkbox-label-td-disabled">Professional Licenses (disabled)</td>
              <TMPL_ELSE>
                <td class="checkbox-td"><input type="checkbox" name="professional-licenses" id="professional-licenses" value="1" <TMPL_VAR NAME="professional-licenses">></td>
                <td class="checkbox-label-td"><label for="professional-licenses">Professional Licenses</label></td>
              </TMPL_IF>
              </tr>
                  </TMPL_UNLESS>
              <TMPL_UNLESS DELETE_DL>
              <tr class="option-row">
              <TMPL_IF DISABLE_DL>
                <td class="checkbox-td">&nbsp;</td>
                <td class="checkbox-label-td-disabled">Include Driver Licenses Information (disabled)</td>
              <TMPL_ELSE>
                <td class="checkbox-td"><input type="checkbox" name="driver-license" id="driver-license" value="1" <TMPL_VAR NAME=driver-license>></td>
                <td class="checkbox-label-td"><label for="driver-license">Include Driver Licenses Information</label></td>
              </TMPL_IF>
              </tr>
                  </TMPL_UNLESS>
              <TMPL_UNLESS DELETE_VARIETY_BUNDLE>
              <tr class="option-row">
              <TMPL_IF DISABLE_VARIETY_BUNDLE>
                <td class="checkbox-td">&nbsp;</td>
                <td class="checkbox-label-td-disabled">Concealed Weapons Permits (disabled)</td>
              <TMPL_ELSE>
                <td class="checkbox-td"><input type="checkbox" name="weapon-permits" id="weapon-permits" value="4" <TMPL_VAR NAME=weapon-permits>></td>
                <td class="checkbox-label-td"><label for="weapon-permits">Concealed Weapons Permits</label></td>
              </TMPL_IF>
              </tr>
              <tr class="option-row">
              <TMPL_IF DISABLE_VARIETY_BUNDLE>
                <td class="checkbox-td">&nbsp;</td>
                <td class="checkbox-label-td-disabled">Voter Registrations (disabled)</td>
              <TMPL_ELSE>
                <td class="checkbox-td"><input type="checkbox" name="voter-registrations" id="voter-registrations" value="4" <TMPL_VAR NAME=voter-registrations>></td>
                <td class="checkbox-label-td"><label for="voter-registrations">Voter Registrations</label></td>
              </TMPL_IF>
              </tr>
              <tr class="option-row">
              <TMPL_IF DISABLE_VARIETY_BUNDLE>
                <td class="checkbox-td">&nbsp;</td>
                <td class="checkbox-label-td-disabled">Hunting/Fishing Permits (disabled)</td>
              <TMPL_ELSE>
                <td class="checkbox-td"><input type="checkbox" name="hunting-fishing-licenses" id="hunting-fishing-licenses" value="4" <TMPL_VAR NAME=hunting-fishing-licenses>></td>
                <td class="checkbox-label-td"><label for="hunting-fishing-licenses">Hunting/Fishing Permits</label></td>
              </TMPL_IF>
              </tr>
              <tr class="option-row">
              <TMPL_IF DISABLE_VARIETY_BUNDLE>
                <td class="checkbox-td">&nbsp;</td>
                <td class="checkbox-label-td-disabled">FAA Pilots (disabled)</td>
              <TMPL_ELSE>
                <td class="checkbox-td"><input type="checkbox" name="faa-certificates" id="faa-certificates" value="4" <TMPL_VAR NAME=faa-certificates>></td>
                <td class="checkbox-label-td"><label for="faa-certificates">FAA Pilots</label></td>
              </TMPL_IF>
              </tr>
                  </TMPL_UNLESS>
              <TMPL_UNLESS DELETE_PAW>
              <tr class="option-row">
              <TMPL_IF DISABLE_PAW>
                <td class="checkbox-td">&nbsp;</td>
                <td class="checkbox-label-td-disabled">People at Work (disabled)</td>
              <TMPL_ELSE>
                <td class="checkbox-td"><input type="checkbox" name="people-at-work" id="people-at-work" value="4" <TMPL_VAR NAME=people-at-work>></td>
                <td class="checkbox-label-td"><label for="people-at-work">People at Work</label></td>
              </TMPL_IF>
              </tr>
              </TMPL_UNLESS>
              <TMPL_IF NAME="TABLE_BORDERS_OPTION">
              <tr class="option-row">
                <td class="checkbox-td"><input type="checkbox" name="table-borders" id="table-borders" value="4" <TMPL_VAR NAME=table-borders>></td>
                <td class="checkbox-label-td"><label for="table-borders">Display table borders on report</label></td>
              </tr>
              </TMPL_IF>
              <TMPL_IF NAME="ICONS_OPTION">
              <tr class="option-row">
                <td class="checkbox-td"><input type="checkbox" name="section-icons" id="section-icons" value="4" <TMPL_VAR NAME=section-icons>></td>
                <td class="checkbox-label-td"><label for="section-icons">Display icons on report</label></td>
              </tr>
              </TMPL_IF>
              </tbody>
            </table>
            </td>
          </tr>
          <tr>
            <td>
                <table class="checkbox-with-options">
                  <thead style="display: none">
                    <tr>
                      <th aria-label="Check box">&nbsp;</th>
                      <th aria-label="Label">&nbsp;</th>
                    </tr>
                  </thead>
                
                    <tbody>
                        <tr class="option-row">
                            <td class="checkbox-td"><input type="checkbox" name="neighbors" id="neighbors" value="11" <TMPL_VAR NAME=neighbors>></td>
                            <td class="checkbox-label-td"><label for="neighbors">Neighbors</label></td>
                        </tr>
                        <tr class="option-row">
                            <td colspan="2" class="additional-options-td">
                            <label for="neighborhood-count" id="include_neighbors">Include Neighbors for</label>
                            <select id="neighborhood-count" name="neighborhood-count" aria-labelledby="include_neighbors addresses">
                                <option value="1"<TMPL_IF NAME="neighborhood-count-1"> SELECTED</TMPL_IF>>1</option>
                                <option value="2"<TMPL_IF NAME="neighborhood-count-2"> SELECTED</TMPL_IF>>2</option>
                                <option value="3"<TMPL_IF NAME="neighborhood-count-3"> SELECTED</TMPL_IF>>3</option>
                                <option value="4"<TMPL_IF NAME="neighborhood-count-4"> SELECTED</TMPL_IF>>4</option>
                                <option value="5"<TMPL_IF NAME="neighborhood-count-5"> SELECTED</TMPL_IF>>5</option>
                                <option value="6"<TMPL_IF NAME="neighborhood-count-6"> SELECTED</TMPL_IF>>6</option>
                                <option value="7"<TMPL_IF NAME="neighborhood-count-7"> SELECTED</TMPL_IF>>7</option>
                                <option value="8"<TMPL_IF NAME="neighborhood-count-8"> SELECTED</TMPL_IF>>8</option>
                                <option value="9"<TMPL_IF NAME="neighborhood-count-9"> SELECTED</TMPL_IF>>9</option>
                                <option value="10"<TMPL_IF NAME="neighborhood-count-10"> SELECTED</TMPL_IF>>10</option>
                            </select>
                            <span id="addresses">Address(es)</span>
                            <br>
                            <label for="neighbor-count" id="include">Include</label>
                            <select id="neighbor-count" name="neighbor-count" aria-labelledby="include each_address">
                                <option value="2"<TMPL_IF NAME="neighbor-count-2"> SELECTED</TMPL_IF>>2</option>
                                <option value="3"<TMPL_IF NAME="neighbor-count-3"> SELECTED</TMPL_IF>>3</option>
                                <option value="4"<TMPL_IF NAME="neighbor-count-4"> SELECTED</TMPL_IF>>4</option>
                                <option value="5"<TMPL_IF NAME="neighbor-count-5"> SELECTED</TMPL_IF>>5</option>
                                <option value="6"<TMPL_IF NAME="neighbor-count-6"> SELECTED</TMPL_IF>>6</option>
                            </select>
                            <span id="each_address">Neighbors for Each Address</span>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </td>
            <td>&nbsp;</td>
            <td>
                <TMPL_UNLESS DELETE_RELATIVES>
                    <table class="checkbox-with-options">
                      <thead style="display: none">
                        <tr>
                          <th aria-label="Check box">&nbsp;</th>
                          <th aria-label="Label">&nbsp;</th>
                        </tr>
                      </thead>
                    
                        <tbody>
                          <tr class="option-row">
                            <td class="checkbox-td"><input type="checkbox" name="relatives" id="relatives" value="8" <TMPL_VAR NAME=relatives>></td>
                            <td class="checkbox-label-td"><label for="relatives">Relatives</label></td>
                          </tr>
                          <tr class="option-row">
                            <td colspan="2" class="additional-options-td">
                                <div>
                                    <select name="relative-depth" id="relative-depth">
                                        <option value="1"<TMPL_IF NAME="relative-depth-1"> SELECTED</TMPL_IF>>1</option>
                                        <option value="2"<TMPL_IF NAME="relative-depth-2"> SELECTED</TMPL_IF>>2</option>
                                        <option value="3"<TMPL_IF NAME="relative-depth-3"> SELECTED</TMPL_IF>>3</option>
                                    </select>
                                    <label for="relative-depth">Degrees of Separation</label>
                                </div>
                            </td>
                          </tr>
                        </tbody>
                    </table>
                </TMPL_UNLESS>
            </td>
          </tr>

        <TMPL_IF SHOW_ADDED_REPORT_OPTIONS>
          <tr>
            <td colspan="3">
              <table>
                <thead style="display: none">
                  <tr>
                    <td aria-label="">&nbsp;</td>
                    <th aria-label="More Report Options">&nbsp;</th>
                  </tr>
                </thead>
                <tbody>
                  <tr>
                    <td colspan="2" class="smallfont1">More Report Options: <span class="f-red"><i>additional charges apply</i></span></td>
                  </tr>
                  <tr>
                    <TMPL_IF SHOW_ADDED_REPORT_FDN>
                      <td width="49%" valign="top">
                        <table class="checkbox-with-options">
                          <thead style="display: none">
                            <tr>
                              <th aria-label="Check box">&nbsp;</th>
                              <th aria-label="Label">&nbsp;</th>
                            </tr>
                          </thead>
                          <tbody>
                            <tr class="option-row">
                              <td class="checkbox-td"><input type="checkbox" name="fdn-network" id="fdn-network" value="1" <TMPL_IF NAME="MYACCOUNT_PREFERENCES"><TMPL_VAR NAME="fdn-network"> onclick="toggleFDNoptions(this)"<TMPL_ELSE><TMPL_IF NAME="FRAUD_DEFENSE_GLBA_INVALID">disabled="disabled" <TMPL_ELSE><TMPL_VAR NAME="fdn-network"> onclick="toggleFDNoptions(this)"</TMPL_IF></TMPL_IF> ></td>
                              <td class="checkbox-label-td"><label for="fdn-network">Include LexisNexis&reg; Fraud Defense Network</label></td>
                            </tr>
                            <TMPL_UNLESS DO_NOT_DISPLAY_FDN_REPORT_SUBJECT>
                            <TMPL_UNLESS DISABLE_FDN_REPORT_SUBJECT>
                            <tr class="option-row">
                              <td class="checkbox-td">&nbsp;</td>
                              <td class="checkbox-label-td"><input type="checkbox" name="fdn-subjectonly" id="fdn-subjectonly" value="1" <TMPL_IF NAME="MYACCOUNT_PREFERENCES"><TMPL_VAR NAME="fdn-subjectonly"> onclick="checkFDNtopoption(this);" <TMPL_ELSE><TMPL_IF NAME="FRAUD_DEFENSE_GLBA_INVALID">disabled="disabled" <TMPL_ELSE><TMPL_VAR NAME="fdn-subjectonly"> onclick="if(checkFDNtopoption(this)){change_total(document.getElementById('fdn-network'),<TMPL_VAR NAME='fdn-network-price'>,document.forms[0].REPORT_TOTAL,document.forms[0].REPORT_PRE_TOTAL);}" </TMPL_IF></TMPL_IF> >Fraud Defense Network - Subject Only</td>
                            </tr>
                            </TMPL_UNLESS>
                            </TMPL_UNLESS>
                            <TMPL_UNLESS DO_NOT_DISPLAY_FDN_REPORT_ALL>
                            <TMPL_UNLESS DISABLE_FDN_REPORT_ALL>
                            <tr class="option-row">
                              <td class="checkbox-td">&nbsp;</td>
                              <td class="checkbox-label-td"><input type="checkbox" name="fdn-associations" id="fdn-associations" value="1" <TMPL_IF NAME="MYACCOUNT_PREFERENCES"><TMPL_VAR NAME="fdn-associations">  onclick="checkFDNtopoption(this);" <TMPL_ELSE><TMPL_IF NAME="FRAUD_DEFENSE_GLBA_INVALID">disabled="disabled" <TMPL_ELSE><TMPL_VAR NAME="fdn-associations"> onclick="if(checkFDNtopoption(this)){change_total(document.getElementById('fdn-network'),<TMPL_VAR NAME='fdn-network-price'>,document.forms[0].REPORT_TOTAL,document.forms[0].REPORT_PRE_TOTAL);}" </TMPL_IF></TMPL_IF> >Fraud Defense Network - All Associations</td>
                            </tr>
                            </TMPL_UNLESS>
                            </TMPL_UNLESS>
                            <TMPL_UNLESS NAME="MYACCOUNT_PREFERENCES">
                              <TMPL_IF NAME="FRAUD_DEFENSE_GLBA_INVALID">
                                <tr class="option-row">
                                  <td class="checkbox-label-td-disabled" colspan="2">Fraud Defense Network options currently disabled</td>
                                </tr>
                              </TMPL_IF>
                            </TMPL_UNLESS>
                          </tbody>
                        </table>
                      </td>
                    </TMPL_IF>
                    <TMPL_UNLESS DELETE_RT_MVR>
                      <td width="49%" valign="top">
                        <table class="checkbox-with-options">
                          <thead style="display: none">
                            <tr>
                              <th aria-label="Check box">&nbsp;</th>
                              <th aria-label="Label">&nbsp;</th>
                            </tr>
                          </thead>
                          <tbody>
                            <tr class="option-row">
                              <TMPL_IF DISABLE_RT_MVR>
                                <td class="checkbox-td">&nbsp;</td>          
                                <td class="checkbox-label-td-disabled">Include Real-Time Vehicle(s) Registration (disabled)</td> 
                              <TMPL_ELSE>
                                <td class="checkbox-td"><input type="checkbox" name="rt-motor-vehicles" id="rt-motor-vehicles" value="1" <TMPL_VAR NAME=rt-motor-vehicles>></td>          
                                <td class="checkbox-label-td"><label for="rt-motor-vehicles">Include Real-Time Vehicle(s) Registration</label></td>
                              </TMPL_IF>
                            </tr>
                          </tbody>
                        </table>
                      </td>
                    </TMPL_UNLESS>
                  </tr>
                </tbody>
              </table>
            </td>
          </tr>
        </TMPL_IF>

          <tr>
              <td colspan="3">
                  <div class="red-divide"></div>
              </td>
          </tr>
          <tr>
            <td colspan="3">
                <div class="text-and-select">
                    <div class="tas-text">
                        <label for="report-format">Select Report Type:</label>
                    </div>
                    <div class="tas-select">
                        <select id="report-format" name="report-format">
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
            <td>
                <div class="checkbox-and-label">
                    <input type="checkbox" name="prompt" id="prompt" value="1" <TMPL_VAR NAME=prompt>><label for="prompt"> Prompt me for these options for each report.</label>
                </div>
            </td>
            <td>&nbsp;</td>
            <td>
                <TMPL_IF NAME="ENABLE_SAVE_REPORT">
                    <div class="checkbox-and-label<TMPL_IF name=REPORT_MANAGER_OFF> disabled_item</TMPL_IF>">
                        <input type="checkbox" name="save-report" id="save-report" value="1" <TMPL_VAR NAME="save-report"><TMPL_IF NAME="REPORT_MANAGER_OFF"> readonly onChange="this.checked = !this.checked"</TMPL_IF>>
                            <label for="save-report">Save report for later access.</label>
                    </div>
                    <TMPL_IF NAME="REPORT_MANAGER_OFF">(Saving Reports currently not available)</TMPL_IF>
                    <TMPL_ELSE>
                        &nbsp;
                </TMPL_IF>
            </td>
        </tr>
        </tbody>
        </table>
</div>
<!-- End short_comprehensive_report_body.tpl -->
