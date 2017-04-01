<!-- begin inputs_fields/intl_instantid_search.tpl -->
<script src="<TMPL_VAR NAME='JSPATH'>/intl_instantid.js"></script>
<input type="hidden" name="ACTION_REPORT" value="<TMPL_VAR NAME=ACTION_REPORT>">

      <tr>
        <td valign="top" align="left">
        <span class="moreSearchesHeader" id="title_text"></span>
        <script>write_search_title('<TMPL_VAR NAME=PAGE_TITLE>');</script>
        </td>
      </tr>
      
      <tr>
        <td valign="top" align="left">
        <table border="0" cellpadding="2" cellspacing="0">
          <tr>
            <td>&nbsp;<b><label for="COUNTRY_REF">Report By Country<font color = "red">*</font></b></label></td>
          </tr>
          <tr>
            <td>
                <select id="COUNTRY_REF" size="1" tabindex="1" onchange="javascript:update_search_form();">
                    <option value="select">Select</option>
                    <TMPL_LOOP SELECT_COUNTRY_LOOP>
                        <option value="<TMPL_VAR NAME=country_opt_val>"><TMPL_VAR NAME=country></option>
                    </TMPL_LOOP>
                </select>
                &nbsp;<b><span id="single_multi_ref">Multi-Source Verified -</span></b>&nbsp;<a href="#_" onClick="javascript:iiid_verification_tip();">Verification Guidance</a>
            </td>
          </tr>
        </table>
        <span id="iid_search_form" style="display:none;">
            <table border="0" cellpadding="2" cellspacing="0">
              <tr>
                <td><label for="LAST_NAME">&nbsp;<b><span id="last_name_label">Last Name</span></b><span class=unifont1boldred>*</span></label></td>
                <td><label for="FIRST_NAME">&nbsp;<b><span id="first_name_label">First Name</span></b><span id="first_name_req" style="display:none;" class=unifont1boldred>*</span></label></td>
                <td>&nbsp;<b><label for="MI" id="middle_name_label">Middle Name</b></label></td>
                <td></td>
              </tr>
              <tr>
                <td class="nsinputs"><input type="text" name="last_name" id="LAST_NAME" tabindex="2" size="15" value="<TMPL_VAR NAME=LAST_NAME>" maxlength=255 onBlur="this.value=this.value.toUpperCase()"></td>
                <td class="nsinputs"><input type="text" name="first_name" id="FIRST_NAME" tabindex="3" size="15" value="<TMPL_VAR NAME=FIRST_NAME>" maxlength=255 onBlur="this.value=this.value.toUpperCase()"></td>
                <td class="nsinputs"><input type="text" name="middle_name" id="MI" tabindex="4" size="15" value="<TMPL_VAR NAME=MI>" maxlength=255 onBlur="this.value=this.value.toUpperCase()"></td>
                <td></td>
              </tr>
              <tr>
                <td><b><label for="NAT_ID" id="nat_id_label">Social Insurance #</b></label></td>
                <td>&nbsp;<b><label for="STATE_OF_BIRTH" id="state_of_birth_label">State of Birth</label></b></td>
                <td></td>
                <td></td>
              </tr>
              <tr>
                <td class="nsinputs"><input type="text" name="nat_id" id="NAT_ID" tabindex="5" size="20" value="<TMPL_VAR NAME=NAT_ID>" maxlength=30 onBlur="this.value=this.value.toUpperCase()"></td>
                <td class="nsinputs"><input type="text" name="STATE_OF_BIRTH" id="STATE_OF_BIRTH" tabindex="6" size="15" value="<TMPL_VAR NAME=STATE_OF_BIRTH>" maxlength=255 onBlur="this.value=this.value.toUpperCase()"></td>
                <td></td>
                <td></td>
              </tr>
              <tr>
                <td><label for="DOB">&nbsp;<b>DOB</b><span id="dob_req" style="display:none;" class=unifont1boldred>*</span></label></td>
                <td><label for="GENDER">&nbsp;<b>Gender</b></label></td>
                <td></td>
                <td></td>
              </tr>
              <tr>
                <td class="nsinputs"><input onClick="displayDatePicker('dob');" type="text" name="dob" id="DOB" tabindex="7" size="14" value="<TMPL_VAR NAME=DOB>" maxlength=255 onBlur="this.value=this.value.toUpperCase()"></td>
                <td class="nsinputs">
                    <select name="gender" id="GENDER" size="1" tabindex="8">
                        <option value="">Select Gender</option>
                        <option value="M">Male</option>
                        <option value="F">Female</option>
                    </select>
                </td>
                <td></td>
                <td></td>
              </tr>
            </table>
            <table border="0" cellpadding="2" cellspacing="0">
              <tr>
                <td>&nbsp;<b><label for="CIVIC_NUM" id="civic_num_label">Civic #</b></label></td>
                <td>&nbsp;<b><label for="APT_NUM" id="apt_num_ref">Apt.#</label></b></td>
                <td>&nbsp;<b><label for="BLDG_NAME" id="bldg_name_label">Building Name</b></label></td>
                <td>&nbsp;<b><label for="BLDG_NUM" id="bldg_num_label">Bldg.#</b><span class=unifont1boldred>*</span></label></td>
                <td>&nbsp;<b><label for="STREET_NAME" id="street_name_label">Street Name</b></label></td>
                <td>&nbsp;<b><label for="STREET_TYPE" id="street_type_ref">Street Type</label></b></td>
                <td>&nbsp;<b><label for="STREET_ADDRESS" id="street_addr_label">Street Address</label></b></td>
              </tr>
              <tr>
                <td class="nsinputs"><input type="text" name="CIVIC_NUM" id="CIVIC_NUM" tabindex="9" size="15" value="<TMPL_VAR NAME=CIVIC_NUM>" maxlength=50 onBlur="this.value=this.value.toUpperCase()"></td>
                <td class="nsinputs"><input type="text" name="APT_NUM" id="APT_NUM" tabindex="10" size="6" maxlength="10" value="<TMPL_VAR NAME=APT_NUM>"></td>
                <td class="nsinputs"><input type="text" name="BLDG_NAME" id="BLDG_NAME" tabindex="11" size="15" value="<TMPL_VAR NAME=BLDG_NAME>" maxlength=10 onBlur="this.value=this.value.toUpperCase()"></td>
                <td class="nsinputs"><input type="text" name="BLDG_NUM" id="BLDG_NUM" tabindex="12" size="15" value="<TMPL_VAR NAME=BLDG_NUM>" maxlength=50 onBlur="this.value=this.value.toUpperCase()"></td>
                <td class="nsinputs"><input type="text" name="STREET_NAME" id="STREET_NAME" tabindex="13" size="15" value="<TMPL_VAR NAME=STREET_NAME>" maxlength=50 onBlur="this.value=this.value.toUpperCase()"></td>
                <td class="nsinputs"><input type="text" name="STREET_TYPE" id="STREET_TYPE" tabindex="14" size="15" maxlength="30" value="<TMPL_VAR NAME=STREET_TYPE>" onBlur="this.value=this.value.toUpperCase()"></td>
                <td class="nsinputs"><input type="text" name="STREET_ADDRESS" id="STREET_ADDRESS" tabindex="15" size="50" maxlength="50" value="<TMPL_VAR NAME=STREET_ADDRESS>" onBlur="this.value=this.value.toUpperCase()"></td>
              </tr>
            </table>
            <table border="0" cellpadding="2" cellspacing="0">
              <tr>
                <td>&nbsp;<b><label for="CITY" id="city_label">City</b></label></td>
                <td>&nbsp;<b><label for="PROVINCE" id="province_ref">State</label></b><span id="province_req" style="display:none;" class=unifont1boldred >*</span>&nbsp;<a id="province_select" href="#_" onClick="javascript:state_list('PROVINCE','CAONLY');"><img src="<TMPL_VAR NAME=IMGPATH>/ico_information.gif" alt="More Information" height="13" hspace="5" width="14"></a></td>
                <td><label for="POSTAL_CODE">&nbsp;<b>Postal Code</b><span class=unifont1boldred>*</span></label></td>
                <td><label for="PHONE">&nbsp;<b>Telephone</b></label></td>
              </tr>
              <tr>
                <td class="nsinputs"><input type="text" name="CITY" id="CITY" tabindex="16" size="15" value="<TMPL_VAR NAME=CITY>" maxlength=30 onBlur="this.value=this.value.toUpperCase()"></td>
                <td class="nsinputs"><input type="text" name="PROVINCE" id="PROVINCE" tabindex="17" size="15" value="<TMPL_VAR NAME=PROVINCE>" maxlength=255 onBlur="this.value=this.value.toUpperCase()"></td>
                <td class="nsinputs"><input type="text" name="POSTAL_CODE" id="POSTAL_CODE" tabindex="18" size="10" maxlength="15" value="<TMPL_VAR NAME=POSTAL_CODE>" onBlur="this.value=this.value.toUpperCase()"></td>
                <td class="nsinputs"><input type="text" name="PHONE" id="PHONE" tabindex="19" size="12" maxlength="12" value="<TMPL_VAR NAME=PHONE>" onBlur="this.value=this.value.toUpperCase()"></td>
              </tr>
            </table>
            <table border="0" cellpadding="2" cellspacing="0">
              <tr>
                <br />
                <hr width ="400" />
                <br />
                <td><b>Validating:&nbsp;<input type="radio" name="pass_p_only" id="PASS_P_ONLY" value="3" tabindex="20" CHECKED onClick="javascript:toggle_valid_section(1);"><label for="PASS_P_ONLY">Passport Only</label></b>&nbsp;</td>
                <td>&nbsp;<b><input type="radio" name="visa_only" id="VISA_ONLY" value="2" tabindex="21" onClick="javascript:toggle_valid_section(2);"><label for="VISA_ONLY">Visa Only</label></b>&nbsp;</td>
                <td>&nbsp;<b><input type="radio" name="pass_visa" id="PASS_VISA" value="1" tabindex="22" onClick="javascript:toggle_valid_section(3);"><label for="PASS_VISA">Passport &amp; Visa</label></b>&nbsp;</td>
              </tr>   
            </table>   
            <table border="0" cellpadding="2" cellspacing="0">    
              <tr>
                 <td>
                    <span id="passport_upper_ref">Passport</span> upper line (Format validated only)
                 </td>
              </tr> 
            </table>   
            <table border="0" cellpadding="2" cellspacing="0">    
              <tr>
                <td class="nsinputs"><input type="text" name="MACHINE_READONE" id="MACHINE_READONE" tabindex="23" size="72" value="" maxlength=44 onBlur="this.value=this.value.toUpperCase()"></td>
              </tr>   
              <tr>
                <td><label for="MACHINE_READONE">&nbsp;<b>P&lt;UTOERIKSSON&lt;&lt;ANNA&lt;MARIA&lt;&lt;&lt;&lt;&lt;&lt;&lt;&lt;&lt;&lt;&lt;&lt;&lt;&lt;&lt;&lt;&lt;&lt;&lt;</b></label></td>
              </tr>
            </table>  
            <table border="0" cellpadding="2" cellspacing="0">    
              <tr>
                 <td>
                    <span id="passport_lower_ref">Passport</span> lower line (Format validated only)
                 </td>
              </tr> 
            </table>   
            <table border="0" cellpadding="2" cellspacing="0">    
              <tr>
                <td class="nsinputs"><input type="text" name="MACHINE_READTWO" id="MACHINE_READTWO" tabindex="24" size="72" value="" maxlength=44 onBlur="this.value=this.value.toUpperCase()"></td>
              </tr>   
              <tr>
                <td><label for="MACHINE_READTWO">&nbsp;<b>L898902C&lt;3UTO6908061F9406236ZE184226B&lt;&lt;&lt;&lt;&lt;14</b></label></td>
              </tr>
            </table>  
            <span id="visa_span" style="display:none;">
                <table border="0" cellpadding="2" cellspacing="0">    
                  <tr>
                     <br />
                     <hr align="left" width="100" />
                     <br />
                     <td>
                        Visa upper line (Format validated only)
                     </td>
                  </tr> 
                </table>   
            <table border="0" cellpadding="2" cellspacing="0">    
              <tr>
                <td class="nsinputs"><input type="text" name="VISA_MACHINE_READONE" id="VISA_MACHINE_READONE" tabindex="25" size="72" value="" maxlength=44 onBlur="this.value=this.value.toUpperCase()"></td>
              </tr>   
              <tr>
                <td><label for="VISA_MACHINE_READONE">&nbsp;<b>P&lt;UTOERIKSSON&lt;&lt;ANNA&lt;MARIA&lt;&lt;&lt;&lt;&lt;&lt;&lt;&lt;&lt;&lt;&lt;&lt;&lt;&lt;&lt;&lt;&lt;&lt;&lt;</b></label></td>
              </tr>
            </table>  
            <table border="0" cellpadding="2" cellspacing="0">    
              <tr>
                 <td>
                    <span id="passport_lower_ref">Visa</span> lower line (Format validated only)
                 </td>
              </tr> 
            </table>   
            <table border="0" cellpadding="2" cellspacing="0">    
              <tr>
                <td class="nsinputs"><input type="text" name="VISA_MACHINE_READTWO" id="VISA_MACHINE_READTWO" tabindex="26" size="72" value="" maxlength=44 onBlur="this.value=this.value.toUpperCase()"></td>
              </tr>   
              <tr>
                <td><label for="VISA_MACHINE_READTWO">&nbsp;<b>L898902C&lt;3UTO6908061F9406236ZE184226B&lt;&lt;&lt;&lt;&lt;14</b></label></td>
              </tr>
            </table>  
            </span>
            <br />
            <hr align="left" width ="400" />
            <br />
            <table border="0" cellpadding="2" cellspacing="0">    
              <tr>
                <td><b>WatchLists</b></td>
                <td>Search:&nbsp;<input type="radio" name="watch_list_opt" id="WATCH_LIST_OFAC" value="1" tabindex="27" CHECKED onClick="javascript:toggle_watchlist_section(1)"><label for="WATCH_LIST_OFAC">OFAC&nbsp;</label></td>
                <td>&nbsp;<input type="radio" name="watch_list_opt" id="WATCH_LIST_OFAC_GLOB" value="2" tabindex="28" onClick="javascript:toggle_watchlist_section(2)"><label for="WATCH_LIST_OFAC_GLOB">OFAC & Global Sanctions Lists&nbsp;</label></td>
                <td>&nbsp;<input type="radio" name="watch_list_opt" id="WATCH_LIST_FARA" value="3" tabindex="29" onClick="javascript:toggle_watchlist_section(3)"><label for="WATCH_LIST_FARA">FARA & PEP&nbsp;</label></td>
                <td>&nbsp;<input type="radio" name="watch_list_opt" id="WATCH_LIST_NONE" value="4" tabindex="30" onClick="javascript:toggle_watchlist_section(4)"><label for="WATCH_LIST_NONE">None</label></td>
            </table>
            <span id="watchlist_fara"  style="display:none;">
                <br />
                <table border="2" cellpadding="2" cellspacing="0">    
                  <tr>
                    <td><b>FARA & PEP Watchlists:</b></td>
                  </tr>  
                  <tr>
                    <td><input type="checkbox" name="pep_check" id="PEP_CHECK" CHECKED value="1" tabindex="31"><label for="PEP_CHECK">&nbsp;Politically Exposed Persons</label></td>
                  </tr>  
                  <tr>
                    <td><input type="checkbox" name="far_check" id="FAR_CHECK" CHECKED value="1" tabindex="32"><label for="FAR_CHECK">&nbsp;Foreign Agent Registrations</label></td>
                  </tr>  
                </table>
                <br />
            </span>
            <span id="watchlist_global" style="display:none;">
                <br />                
                <table border="1" cellpadding="2" cellspacing="2">  
                  <tr>
                    <td><b>OFAC & Global Sanctions Watchlists:</b> <a href="#_" onClick="javascript:watchlist_check_all(1);">Select All</a>  | <a href="#_" onClick="javascript:watchlist_check_all(2);">Clear All</a></td>
                    <td></td>
                  </tr>
                  <tr border="2">
                    <td><input type="checkbox" name="glob_fbi" id="GLOB_FBI" value="1" tabindex="33" CHECKED><label for ="GLOB_FBI">&nbsp; <b>Federal Bureau of Investigations (FBI) Lists</b></label></td>
                    <td><input type="checkbox" name="glob_most_wanted" id="GLOB_MOST_WANTED" value="1" tabindex="34" CHECKED><label for ="GLOB_MOST_WANTED">&nbsp;<b>International Police Most Wanted and Red Alerts</b></label></td>
                  </tr>
                  <tr border="2">
                    <td><input type="checkbox" name="glob_majesty" id="GLOB_MAJESTY" value="1" tabindex="35" CHECKED><label for ="GLOB_MAJESTY">&nbsp;<b>Her Majesty's Treasury's Consolidated List of Financial Sanctions Targets (formerly known as Bank of England Consolidated Sanctions)</b></label></td>
                    <td><input type="checkbox" name="glob_osfi" id="GLOB_OSFI" value="1" tabindex="36" CHECKED><label for ="GLOB_OSFI">&nbsp;<b>OSFI - Canada</b></label></td>
                  </tr>
                  <tr>
                    <td><input type="checkbox" name="glob_commo" id="GLOB_COMMO" value="1" tabindex="37" CHECKED><label for ="GLOB_COMMO">&nbsp;<b>Commodity Futures Trading Commission List of Regulatory & Self-Regulatory Authorities</b></label></td>
                    <td><input type="checkbox" name="glob_terror" id="GLOB_TERROR" value="1" tabindex="38" CHECKED><label for ="GLOB_TERROR">&nbsp;<b>State Department Terrorist Exclusions</b></label></td>
                  </tr>
                  <tr>
                    <td><input type="checkbox" name="glob_dtc" id="GLOB_DTC" value="1" tabindex="39" CHECKED><label for ="GLOB_DTC">&nbsp;<b>Defense Trade Controls (DTC) Debarred Parties</b></label></td>
                    <td><input type="checkbox" name="glob_unnt" id="GLOB_UNNT" value="1" tabindex="40" CHECKED><label for ="GLOB_UNNT">&nbsp;<b>United Nations Named Terrorists</b></label></td>
                  </tr>
                  <tr>
                    <td><input type="checkbox" name="glob_eudt" id="GLOB_EUDT" value="1" tabindex="41" CHECKED><label for ="GLOB_EUDT">&nbsp;<b>European Union Designated Terrorists</b></label></td>
                    <td><input type="checkbox" name="glob_usis" id="GLOB_USIS" value="1" tabindex="42" CHECKED><label for ="GLOB_USIS">&nbsp;<b>US Bureau of Industry & Security</b></label></td>
                  </tr>
                  <tr>
                    <td><input type="checkbox" name="glob_fcen" id="GLOB_FCEN" value="1" tabindex="43" CHECKED><label for ="GLOB_FCEN">&nbsp;<b>Financial Crimes Enforcement Network Special Alert List (FCEN)</b></label></td>
                    <td><input type="checkbox" name="glob_firms" id="GLOB_FIRMS" value="1" tabindex="44" CHECKED><label for ="GLOB_FIRMS">&nbsp;<b>World Bank Ineligible Firms</b></label></td>
                  </tr>
                  <tr>
                    <td><input type="checkbox" name="glob_controller" id="GLOB_CONTROLLER" value="1" tabindex="45" CHECKED><label for ="GLOB_CONTROLLER">&nbsp;<b>Office of Controller of Currency - Unauthorized Banks</b></label></td>
                    <td><input type="checkbox" name="glob_pep" id="GLOB_PEP" value="1" tabindex="46" CHECKED><label for ="GLOB_PEP">&nbsp;<b>Politically Exposed Persons</b></label></td>
                  </tr>
                </table>
                <br />
            </span>
            <span id="watchlist_span">
                <br />
                <table border="0" cellpadding="2" cellspacing="0">    
                  <tr>
                    <td><input type="checkbox" name="limit_by_yr" id="LIMIT_BY_YR" value="1" tabindex="47" onClick="javascript:allow_radius();"><label for="LIMIT_BY_YR">&nbsp; Limit by Year of Birth&nbsp;</label></td>
                    <td>
                        - <a href="#_" onClick="javascript:iiid_radius_tip();">Radius</a>:
                       <select id="LBY_RADIUS_REF" size="1" tabindex="48" disabled="disabled">
                            <option value="0">0 year</option>
                            <option value="1">+/- 1 year</option>
                            <option value="2">+/- 2 years</option>
                            <option value="3">+/- 3 years</option>
                            <option value="4">+/- 4 years</option>
                            <option value="5">+/- 5 years</option>
                        </select>
                    </td>
                </table>
            </span>
            <table border="0" cellpadding="2" cellspacing="0">    
              <br />
              <hr align="left" width="100" />
              <br />
              <tr>
                <td><label for="IP_ADD"><b>IPAddress</b></label></td>
                <td class="nsinputs"><input type="text" name="ip_add" id="IP_ADD" tabindex="49" size="20" value="<TMPL_VAR NAME=IP_ADD>" maxlength=30 onBlur="this.value=this.value.toUpperCase()"></td>
              </tr>   
            </table>  
        </span>
        </td>
      </tr>
<!-- end inputs_fields/intl_instantid_search.tpl -->
