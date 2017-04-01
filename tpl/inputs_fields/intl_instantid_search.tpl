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
            <td>&nbsp;<b>Report By Country<font color = "red">*</font></b></td>
          </tr>
          <tr>
            <td>
                <select id="COUNTRY_REF" size="1" tabindex="1" onchange="javascript:update_search_form();">
                    <option value="select">Select</option>
                    <TMPL_LOOP SELECT_COUNTRY_LOOP>
                        <option value="<TMPL_VAR NAME=country_opt_val>"><TMPL_VAR NAME=country></option>
                    </TMPL_LOOP>
                </select>
                &nbsp;<b><label id="single_multi_ref">Multi-Source Verified -</label></b>&nbsp;<a href="#_" onClick="javascript:iiid_verification_tip();">Verification Guidance</a>
            </td>
          </tr>
        </table>
        <span id="iid_search_form" style="display:none;">
            <table border="0" cellpadding="2" cellspacing="0">
              <tr>
                <td>&nbsp;<b>Last Name</b><span class=unifont1boldred>*</span></td>
                <td>&nbsp;<b>First Name</b><span class=unifont1boldred>*</span></td>
                <td>&nbsp;<b>Middle Name</b></td>
                <td></td>
              </tr>
              <tr>
                <td class="nsinputs"><input type="text" name="last_name" id="LAST_NAME" tabindex="2" size="15" value="<TMPL_VAR NAME=LAST_NAME>" maxlength=255 onBlur="this.value=this.value.toUpperCase()"></td>
                <td class="nsinputs"><input type="text" name="first_name" id="FIRST_NAME" tabindex="3" size="15" value="<TMPL_VAR NAME=FIRST_NAME>" maxlength=255 onBlur="this.value=this.value.toUpperCase()"></td>
                <td class="nsinputs"><input type="text" name="middle_name" id="MI" tabindex="4" size="15" value="<TMPL_VAR NAME=MI>" maxlength=255 onBlur="this.value=this.value.toUpperCase()"></td>
                <td></td>
              </tr>
              <tr>
                <td>&nbsp;<b>DOB</b><label id="dob_req"><span class=unifont1boldred>*</span></label></td>
                <td>&nbsp;<b>Gender</b></td>
                <td></td>
                <td></td>
              </tr>
              <tr>
                <td class="nsinputs"><input type="text" name="dob" id="DOB" tabindex="5" size="14" value="<TMPL_VAR NAME=DOB>" autocomplete="off" maxlength=255 onBlur="this.value=this.value.toUpperCase()"></td>
                <td>
                    <select name="gender" id="GENDER" size="1" tabindex="6">
                        <option value="">Select Gender</option>
                        <option value="male">Male</option>
                        <option value="female">Female</option>
                    </select>
                </td>
                <td></td>
                <td></td>
              </tr>
            </table>
            <table border="0" cellpadding="2" cellspacing="0">
              <tr>
                <td>&nbsp;<b>Bldg.#</b><label id="bldg_num_req"><span class=unifont1boldred>*</span></label></td>
                <td>&nbsp;<b>Street Name</b><label id="street_name_req"><span class=unifont1boldred>*</span></label></td>
                <td>&nbsp;<b><label id="street_type_ref">Street Type</label></b></td>
                <td>&nbsp;<b><label id="apt_num_ref">Apt.#</label></b></td>
              </tr>
              <tr>
                <td class="nsinputs"><input type="text" name="BLDG_NUM" id="BLDG_NUM" tabindex="7" size="15" value="<TMPL_VAR NAME=BLDG_NUM>" maxlength=50 onBlur="this.value=this.value.toUpperCase()"></td>
                <td class="nsinputs"><input type="text" name="STREET_NAME" id="STREET_NAME" tabindex="8" size="15" value="<TMPL_VAR NAME=STREET_NAME>" maxlength=50 onBlur="this.value=this.value.toUpperCase()"></td>
                <td class="nsinputs"><input type="text" name="STREET_TYPE" id="STREET_TYPE" tabindex="9" size="15" maxlength="30" value="<TMPL_VAR NAME=STREET_TYPE>" onBlur="this.value=this.value.toUpperCase()"></td>
                <td class="nsinputs"><input type="text" name="APT_NUM" id="APT_NUM" tabindex="10" size="6" maxlength="10" value="<TMPL_VAR NAME=APT_NUM>"></td>
              </tr>
              <tr>
                <td>&nbsp;<b>City or Town</b><label id="city_req"><span class=unifont1boldred>*</span></label></td>
                <td>&nbsp;<b><label id="province_ref">State or District</label></b><label id="province_req"><span class=unifont1boldred>*</span></label>&nbsp<label  id="province_select"><a href="#_" onClick="javascript:state_list('PROVINCE','CAONLY');"><img src="<TMPL_VAR NAME=IMGPATH>/ico_information.gif" alt="More Information" height="13" hspace="5" width="14"></a></td>
                <td>&nbsp;<b>Postal Code</b><label id="postal_req"><span class=unifont1boldred>*</span></label></td>
                <td>&nbsp;<b>Phone</b></td>
              </tr>
              <tr>
                <td class="nsinputs"><input type="text" name="CITY" id="CITY" tabindex="11" size="15" value="<TMPL_VAR NAME=CITY>" maxlength=30 onBlur="this.value=this.value.toUpperCase()"></td>
                <td class="nsinputs"><input type="text" name="PROVINCE" id="PROVINCE" tabindex="12" size="15" value="<TMPL_VAR NAME=PROVINCE>" maxlength=255 onBlur="this.value=this.value.toUpperCase()"></td>
                <td class="nsinputs"><input type="text" name="POSTAL_CODE" id="POSTAL_CODE" tabindex="13" size="10" maxlength="15" value="<TMPL_VAR NAME=POSTAL_CODE>" onBlur="this.value=this.value.toUpperCase()"></td>
                <td class="nsinputs"><input type="text" name="PHONE" id="PHONE" tabindex="14" size="12" maxlength="12" value="<TMPL_VAR NAME=PHONE>" onBlur="this.value=this.value.toUpperCase()"></td>
              </tr>
            </table>
            <table border="0" cellpadding="2" cellspacing="0">
              <tr>
                <br />
                <hr width ="400" />
                <br />
                <td><b>Validating:&nbsp;<input type="radio" name="pass_p_only" id="PASS_P_ONLY" value="3" tabindex="15" CHECKED onClick="javascript:toggle_valid_section(1);">Passport Only</b>&nbsp;</td>
                <td>&nbsp;<b><input type="radio" name="visa_only" id="VISA_ONLY" value="2" tabindex="16" onClick="javascript:toggle_valid_section(2);">Visa Only</b>&nbsp;</td>
                <td>&nbsp;<b><input type="radio" name="pass_visa" id="PASS_VISA" value="1" tabindex="17"  onClick="javascript:toggle_valid_section(3);">Passport & Visa</b></td> 
              </tr>   
            </table>   
            <table border="0" cellpadding="2" cellspacing="0">    
              <tr>
                 <td>
                    <label id="passport_upper_ref">Passport</label> upper line (Format validated only)
                 </td>
              </tr> 
            </table>   
            <table border="0" cellpadding="2" cellspacing="0">    
              <tr>
                <td class="nsinputs"><input type="text" name="passport_p" id="PASSPORT_P" tabindex="18" size="2" value="<TMPL_VAR NAME=PASSPORT_P>" maxlength=2 onBlur="this.value=this.value.toUpperCase()"></td>
                <td class="nsinputs"><input type="text" name="passport_uto" id="PASSPORT_UTO" tabindex="19" size="3" value="<TMPL_VAR NAME=PASSPORT_UTO>" maxlength=3 onBlur="this.value=this.value.toUpperCase()"></td>
                <td class="nsinputs"><input type="text" name="passport_comp" id="PASSPORT_COMP" tabindex="20" size="15" value="<TMPL_VAR NAME=PASSPORT_COMP>" maxlength=30 onBlur="this.value=this.value.toUpperCase()"></td>
                <td class="nsinputs"><input type="text" name="passport_full" id="PASSPORT_FULL" tabindex="21" size="25" value="<TMPL_VAR NAME=PASSPORT_FULL>" maxlength=30 onBlur="this.value=this.value.toUpperCase()"></td>
              </tr>   
              <tr>
                <td>&nbsp;<b>P</b></td>
                <td>&nbsp;<b>UTO</b></td>
                <td>&nbsp;<b>ERIKSSON</b></td>
                <td>&nbsp;<b>ANNA MARIA</b></td>
              </tr>
            </table>  
            <table border="0" cellpadding="2" cellspacing="0">    
              <tr>
                 <td>
                    <label id="passport_lower_ref">Passport</label> lower line (Format validated only)
                 </td>
              </tr> 
            </table>   
            <table border="0" cellpadding="2" cellspacing="0">    
              <tr>
                <td class="nsinputs"><input type="text" name="passport_f_one" id="PASSPORT_F_ONE" tabindex="22" size="7" value="<TMPL_VAR NAME=PASSPORT_F_ONE>" maxlength=9 onBlur="this.value=this.value.toUpperCase()"></td>
                <td class="nsinputs"><input type="text" name="passport_f_two" id="PASSPORT_F_TWO" tabindex="23" size="1" value="<TMPL_VAR NAME=PASSPORT_F_TWO>" maxlength=1 onBlur="this.value=this.value.toUpperCase()"></td>
                <td class="nsinputs"><input type="text" name="passport_f_three" id="PASSPORT_F_THREE" tabindex="24" size="5" value="<TMPL_VAR NAME=PASSPORT_F_THREE>" maxlength=3 onBlur="this.value=this.value.toUpperCase()"></td>
                <td class="nsinputs"><input type="text" name="passport_f_four" id="PASSPORT_F_FOUR" tabindex="25" size="5" value="<TMPL_VAR NAME=PASSPORT_F_FOUR>" maxlength=6 onBlur="this.value=this.value.toUpperCase()"></td>
                <td class="nsinputs"><input type="text" name="passport_f_five" id="PASSPORT_F_FIVE" tabindex="26" size="1" value="<TMPL_VAR NAME=PASSPORT_F_FIVE>" maxlength=1 onBlur="this.value=this.value.toUpperCase()"></td>
                <td class="nsinputs"><input type="text" name="passport_f_six" id="PASSPORT_F_SIX" tabindex="27" size="1" value="<TMPL_VAR NAME=PASSPORT_F_SIX>" maxlength=1 onBlur="this.value=this.value.toUpperCase()"></td>
                <td class="nsinputs"><input type="text" name="passport_f_sev" id="PASSPORT_F_SEV" tabindex="28" size="5" value="<TMPL_VAR NAME=PASSPORT_F_SEV>" maxlength=6 onBlur="this.value=this.value.toUpperCase()"></td>
                <td class="nsinputs"><input type="text" name="passport_f_eight" id="PASSPORT_F_EIGHT" tabindex="29" size="1" value="<TMPL_VAR NAME=PASSPORT_F_EIGHT>" maxlength=1 onBlur="this.value=this.value.toUpperCase()"></td>
                <td class="nsinputs"><input type="text" name="passport_f_nine" id="PASSPORT_F_NINE" tabindex="30" size="12" value="<TMPL_VAR NAME=PASSPORT_F_NINE>" maxlength=14 onBlur="this.value=this.value.toUpperCase()"></td>
                <td class="nsinputs"><input type="text" name="passport_f_ten" id="PASSPORT_F_TEN" tabindex="31" size="1" value="<TMPL_VAR NAME=PASSPORT_F_TEN>" maxlength=1 onBlur="this.value=this.value.toUpperCase()"></td>
                <td class="nsinputs"><input type="text" name="passport_f_ele" id="PASSPORT_F_ELE" tabindex="32" size="1" value="<TMPL_VAR NAME=PASSPORT_F_ELE>" maxlength=1 onBlur="this.value=this.value.toUpperCase()"></td>
              </tr>   
              <tr>
                <td>&nbsp;<b>L898902C</b></td>
                <td>&nbsp;<b>3</b></td>
                <td>&nbsp;<b>UTO</b></td>
                <td>&nbsp;<b>690806</b></td>
                <td>&nbsp;<b>1</b></td>
                <td>&nbsp;<b>F</b></td>
                <td>&nbsp;<b>940623</b></td>
                <td>&nbsp;<b>6</b></td>
                <td>&nbsp;<b>ZE184226B</b></td>
                <td>&nbsp;<b>1</b></td>
                <td>&nbsp;<b>4</b></td>
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
                    <td class="nsinputs"><input type="text" name="visa_p" id="VISA_P" tabindex="33" size="2" value="<TMPL_VAR NAME=VISA_P>" maxlength=2 onBlur="this.value=this.value.toUpperCase()"></td>
                    <td class="nsinputs"><input type="text" name="visa_uto" id="VISA_UTO" tabindex="34" size="3" value="<TMPL_VAR NAME=VISA_UTO>" maxlength=3 onBlur="this.value=this.value.toUpperCase()"></td>
                    <td class="nsinputs"><input type="text" name="visa_comp" id="VISA_COMP" tabindex="35" size="15" value="<TMPL_VAR NAME=VISA_COMP>" maxlength=30 onBlur="this.value=this.value.toUpperCase()"></td>
                    <td class="nsinputs"><input type="text" name="visa_full" id="VISA_FULL" tabindex="36" size="25" value="<TMPL_VAR NAME=VISA_FULL>" maxlength=30 onBlur="this.value=this.value.toUpperCase()"></td>
                  </tr>   
                  <tr>
                    <td>&nbsp;<b>P</b></td>
                    <td>&nbsp;<b>UTO</b></td>
                    <td>&nbsp;<b>ERIKSSON</b></td>
                    <td>&nbsp;<b>ANNA MARIA</b></td>
                  </tr>
                </table>  
                <table border="0" cellpadding="2" cellspacing="0">    
                  <tr>
                     <td>
                        Visa lower line (Format validated only)
                     </td>
                  </tr> 
                </table>   
                <table border="0" cellpadding="2" cellspacing="0">    
                  <tr>
                    <td class="nsinputs"><input type="text" name="visa_f_one" id="VISA_F_ONE" tabindex="37" size="7" value="<TMPL_VAR NAME=VISA_F_ONE>" maxlength=9 onBlur="this.value=this.value.toUpperCase()"></td>
                    <td class="nsinputs"><input type="text" name="visa_f_two" id="VISA_F_TWO" tabindex="38" size="1" value="<TMPL_VAR NAME=VISA_F_TWO>" maxlength=1 onBlur="this.value=this.value.toUpperCase()"></td>
                    <td class="nsinputs"><input type="text" name="visa_f_three" id="VISA_F_THREE" tabindex="39" size="3" value="<TMPL_VAR NAME=VISA_F_THREE>" maxlength=3 onBlur="this.value=this.value.toUpperCase()"></td>
                    <td class="nsinputs"><input type="text" name="visa_f_four" id="VISA_F_FOUR" tabindex="40" size="5" value="<TMPL_VAR NAME=VISA_F_FOUR>" maxlength=6 onBlur="this.value=this.value.toUpperCase()"></td>
                    <td class="nsinputs"><input type="text" name="visa_f_five" id="VISA_F_FIVE" tabindex="41" size="1" value="<TMPL_VAR NAME=VISA_F_FIVE>" maxlength=1 onBlur="this.value=this.value.toUpperCase()"></td>
                    <td class="nsinputs"><input type="text" name="visa_f_six" id="VISA_F_SIX" tabindex="42" size="1" value="<TMPL_VAR NAME=VISA_F_SIX>" maxlength=1 onBlur="this.value=this.value.toUpperCase()"></td>
                    <td class="nsinputs"><input type="text" name="visa_f_sev" id="VISA_F_SEV" tabindex="43" size="5" value="<TMPL_VAR NAME=VISA_F_SEV>" maxlength=6 onBlur="this.value=this.value.toUpperCase()"></td>
                    <td class="nsinputs"><input type="text" name="visa_f_eight" id="VISA_F_EIGHT" tabindex="44" size="1" value="<TMPL_VAR NAME=VISA_F_EIGHT>" maxlength=1 onBlur="this.value=this.value.toUpperCase()"></td>
                    <td class="nsinputs"><input type="text" name="visa_f_nine" id="VISA_F_NINE" tabindex="45" size="12" value="<TMPL_VAR NAME=VISA_F_NINE>" maxlength=14 onBlur="this.value=this.value.toUpperCase()"></td>
                    <td class="nsinputs"><input type="text" name="visa_f_ten" id="VISA_F_TEN" tabindex="46" size="1" value="<TMPL_VAR NAME=VISA_F_TEN>" maxlength=1 onBlur="this.value=this.value.toUpperCase()"></td>
                    <td class="nsinputs"><input type="text" name="visa_f_ele" id="VISA_F_ELE" tabindex="47" size="1" value="<TMPL_VAR NAME=VISA_F_ELE>" maxlength=1 onBlur="this.value=this.value.toUpperCase()"></td>
                  </tr>   
                  <tr>
                    <td>&nbsp;<b>L898902C</b></td>
                    <td>&nbsp;<b>3</b></td>
                    <td>&nbsp;<b>UTO</b></td>
                    <td>&nbsp;<b>690806</b></td>
                    <td>&nbsp;<b>1</b></td>
                    <td>&nbsp;<b>F</b></td>
                    <td>&nbsp;<b>940623</b></td>
                    <td>&nbsp;<b>6</b></td>
                    <td>&nbsp;<b>ZE184226B</b></td>
                    <td>&nbsp;<b>1</b></td>
                    <td>&nbsp;<b>4</b></td>
                  </tr>
                </table>
            </span>
            <br />
            <hr align="left" width ="400" />
            <br />
            <table border="0" cellpadding="2" cellspacing="0">    
              <tr>
                <td><b>National ID</b><label id="nat_id_req"><span class=unifont1boldred>*</span></label></td>
                <td class="nsinputs"><input type="text" name="nat_id" id="NAT_ID" tabindex="48" size="20" value="<TMPL_VAR NAME=NAT_ID>" maxlength=30 onBlur="this.value=this.value.toUpperCase()"></td>
            </table>
            <table border="0" cellpadding="2" cellspacing="0">    
              <tr>
                <td><b>WatchLists</b></td>
                <td>Search:&nbsp;<input type="radio" name="watch_list_opt" id="WATCH_LIST_OFAC" value="1" tabindex="49" CHECKED onClick="javascript:toggle_watchlist_section(1)">OFAC&nbsp;</td>
                <td>&nbsp;<input type="radio" name="watch_list_opt" id="WATCH_LIST_OFAC_GLOB" value="2" tabindex="50" onClick="javascript:toggle_watchlist_section(2)">OFAC & Global Sanctions Lists&nbsp;</td>
                <td>&nbsp;<input type="radio" name="watch_list_opt" id="WATCH_LIST_FARA" value="3" tabindex="51" onClick="javascript:toggle_watchlist_section(3)">FARA & PEP&nbsp;</td>
                <td>&nbsp;<input type="radio" name="watch_list_opt" id="WATCH_LIST_NONE" value="4" tabindex="52" onClick="javascript:toggle_watchlist_section(4)">None</td>
            </table>
            <span id="watchlist_fara"  style="display:none;">
                <br />
                <table border="2" cellpadding="2" cellspacing="0">    
                  <tr>
                    <td><b>FARA & PEP Watchlists:</b></td>
                  </tr>  
                  <tr>
                    <td><input type="checkbox" name="pep_check" id="PEP_CHECK" CHECKED value="1" tabindex="53">&nbsp;Politically Exposed Persons</td>
                  </tr>  
                  <tr>
                    <td><input type="checkbox" name="far_check" id="FAR_CHECK" CHECKED value="1" tabindex="54">&nbsp;Foriegn Agent Registrations</td>
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
                    <td><input type="checkbox" name="glob_fbi" id="GLOB_FBI" value="1" tabindex="55" CHECKED>&nbsp; <b>Federal Bureau of Investigations (FBI) Lists</b></td>
                    <td><input type="checkbox" name="glob_most_wanted" id="GLOB_MOST_WANTED" value="1" tabindex="56" CHECKED>&nbsp;<b>International Police Most Wanted and Red Alerts</b></td>
                  </tr>
                  <tr border="2">
                    <td><input type="checkbox" name="glob_majesty" id="GLOB_MAJESTY" value="1" tabindex="57" CHECKED>&nbsp;<b>Her Majesty's Treasury's Consolidated List of Financial Sanctions Targets (formerly known as Bank of England Consolidated Sanctions)</b></td>
                    <td><input type="checkbox" name="glob_osfi" id="GLOB_OSFI" value="1" tabindex="58" CHECKED>&nbsp;<b>OSFI - Canada</b></td>
                  </tr>
                  <tr>
                    <td><input type="checkbox" name="glob_commo" id="GLOB_COMMO" value="1" tabindex="59" CHECKED>&nbsp;<b>Commodity Futures Trading Commission List of Regulatory & Self-Regulatory Authorities</b></td>
                    <td><input type="checkbox" name="glob_terror" id="GLOB_TERROR" value="1" tabindex="60" CHECKED>&nbsp;<b>State Department Terrorist Exclusions</b></td>
                  </tr>
                  <tr>
                    <td><input type="checkbox" name="glob_dtc" id="GLOB_DTC" value="1" tabindex="61" CHECKED>&nbsp;<b>Defense Trade Controls (DTC) Debarred Parties</b></td>
                    <td><input type="checkbox" name="glob_unnt" id="GLOB_UNNT" value="1" tabindex="62" CHECKED>&nbsp;<b>United Nations Named Terrorists</b></td>
                  </tr>
                  <tr>
                    <td><input type="checkbox" name="glob_eudt" id="GLOB_EUDT" value="1" tabindex="63" CHECKED>&nbsp;<b>European Union Designated Terrorists</b></td>
                    <td><input type="checkbox" name="glob_usis" id="GLOB_USIS" value="1" tabindex="64" CHECKED>&nbsp;<b>US Bureau of Industry & Security</b></td>
                  </tr>
                  <tr>
                    <td><input type="checkbox" name="glob_fcen" id="GLOB_FCEN" value="1" tabindex="65" CHECKED>&nbsp;<b>Financial Crimes Enforcement Network Special Alert List (FCEN)</b></td>
                    <td><input type="checkbox" name="glob_firms" id="GLOB_FIRMS" value="1" tabindex="66" CHECKED>&nbsp;<b>World Bank Ineligible Firms</b></td>
                  </tr>
                  <tr>
                    <td><input type="checkbox" name="glob_controller" id="GLOB_CONTROLLER" value="1" tabindex="67" CHECKED>&nbsp;<b>Office of Controller of Currency - Unauthorized Banks</b></td>
                    <td><input type="checkbox" name="glob_pep" id="GLOB_PEP" value="1" tabindex="68" CHECKED>&nbsp;<b>Politically Exposed Persons</b></td>
                  </tr>
                </table>
                <br />
            </span>
            <span id="watchlist_span">
                <br />
                <table border="0" cellpadding="2" cellspacing="0">    
                  <tr>
                    <td><input type="checkbox" name="limit_by_yr" id="LIMIT_BY_YR" value="1" tabindex="69" onClick="javascript:allow_radius();">&nbsp; Limit by Year of Birth </td>
                    <td>
                        - <a href="#_" onClick="javascript:iiid_radius_tip();">Radius</a>:
                       <select id="LBY_RADIUS_REF" size="1" tabindex="70" disabled="disabled">
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
                <td><b>IPAddress</b></td>
                <td class="nsinputs"><input type="text" name="ip_add" id="IP_ADD" tabindex="71" size="20" value="<TMPL_VAR NAME=IP_ADD>" maxlength=30 onBlur="this.value=this.value.toUpperCase()"></td>
              </tr>   
            </table>  
        </span>
        </td>
      </tr>
<!-- end inputs_fields/intl_instantid_search.tpl -->
