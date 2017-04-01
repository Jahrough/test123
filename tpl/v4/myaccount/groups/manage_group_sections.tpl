                <div class="group_section_data group_fade1">
                    <a name="kyc"></a>
                    <div class="group_section">
                        <strong><span class="person_icon svg-icon-normal sect_01">People</span></strong>
                        <span class="fl_right"><i class="fa fa-14 fa-chevron-up fa-fw"></i> <i style="display: none;" class="fa fa-14 fa-chevron-down fa-fw"></i></span><span class="clear"></span>
                    </div>
                    <div class="group_section_content">
                             <TMPL_IF COMPANY_DISABLE_PERSON>
                                 <INPUT TYPE=HIDDEN NAME="DISABLE_PERSON" VALUE="<TMPL_IF DISABLE_PERSON>1<TMPL_ELSE>0</TMPL_IF>">
                             <TMPL_ELSE>
                                 <input id="PERSON" class="disablesearchmapbit" NAME="DISABLE_PERSON" type="checkbox" <TMPL_UNLESS NAME=DISABLE_PERSON>CHECKED</TMPL_UNLESS>> <label for="PERSON">Find a Person (GLBA) (DPPA) (<a href="javascript:void(0);" class="source-link" data-helpid="SHOW_FAP">source</a>)</label><br>
                             </TMPL_IF>

                             <TMPL_IF COMPANY_DISABLE_INSTANT_ID>
                               <INPUT TYPE=HIDDEN NAME="DISABLE_INSTANT_ID" VALUE="<TMPL_IF DISABLE_INSTANT_ID>1<TMPL_ELSE>0</TMPL_IF>">
                             <TMPL_ELSE>
                               <input id="instant_verify" class="disablesearchmapbit toggle" NAME="DISABLE_INSTANT_ID" type="checkbox" <TMPL_UNLESS NAME=DISABLE_INSTANT_ID>CHECKED</TMPL_UNLESS>> <label for="instant_verify">InstantID<sup class="sup-reg-symbol">&reg;</sup> Consumer Verification (GLBA) (DPPA) (<a href="javascript:void(0);" class="source-link" data-helpid="SHOW_INSTANT_ID">source</a>)</label>
                               <span title="Select checkbox for more options." class="more_group_sub_input_instant_verify" style="display: none;">(<i class="fa fa-14 fa-indent pos_1 fa-fw redtxt"></i> Select checkbox for more options.)</span><br>
                             
                               <div class="sub_input_instant_verify group_sub_input" style="display: block;">
                                 <input id="instantid_cl_override" name="INSTANTID_CL_OVERRIDE" class="tagtable" type="checkbox" <TMPL_IF NAME=INSTANTID_CL_OVERRIDE>CHECKED</TMPL_IF>> <label for="instantid_cl_override">Include CL Override</label><br>
                                 <input id="instantid_ms_override" name="INSTANTID_MS_OVERRIDE" class="tagtable" type="checkbox" <TMPL_IF NAME=INSTANTID_MS_OVERRIDE>CHECKED</TMPL_IF>> <label for="instantid_ms_override">Include MS Override</label><br>
                                 <input id="include_mi_override" name="INCLUDE_MI_OVERRIDE" class="tagtable" type="checkbox" <TMPL_IF NAME=INCLUDE_MI_OVERRIDE>CHECKED</TMPL_IF>> <label for="include_mi_override">Include MI Override</label><br>                                 
                                 <input id="include_dl_override" name="INCLUDE_DL_VERIFICATION" class="tagtable" type="checkbox" <TMPL_IF NAME=INCLUDE_DL_VERIFICATION>CHECKED</TMPL_IF>> <label for="include_dl_override">Include DL Verification</label><br>
                                 <label for="dob_math_type">DOB Match Type</label>
                                 <select name="DOB_MATCHTYPE" id="dob_math_type">
                                   <option value="FuzzyCCYYMMDD|0">Fuzzy CCYYMMDD</option>
                                   <option value="FuzzyCCYYMM|0">Fuzzy CCYYMM</option>
                                   <option value="ExactCCYYMMDD|0">Exact CCYYMMDD</option>
                                   <option value="ExactCCYYMM|0">Exact CCYYMM</option>
                                   <option value="RadiusCCYY|0">Exact CCYY</option>
                                   <option value="RadiusCCYY|1">CCYY Within 1 year</option>
                                   <option value="RadiusCCYY|2">CCYY Within 2 years</option>
                                   <option value="RadiusCCYY|3">CCYY Within 3 years</option>
                                 </select><br>
                                                                 
                                 <input id="instantid_include_all_risk_ind" name="INSTANTID_INCLUDE_ALL_RISK_IND" class="tagtable" type="checkbox" <TMPL_IF NAME=INSTANTID_INCLUDE_ALL_RISK_IND>CHECKED</TMPL_IF>> <label for="instantid_include_all_risk_ind">Include All Risk Indicators</label><br>
                                 Exact Match:
                                 <div class="sub_input_instant_verify group_sub_input" style="display: block;">
                                 <input id="exact_last_name" name="EXACT_LAST_NAME" class="tagtable" type="checkbox" <TMPL_IF NAME=EXACT_LAST_NAME>CHECKED</TMPL_IF>> <label for="exact_last_name">Exact Last Name</label><br>
                                 <input id="exact_first_name" name="EXACT_FIRST_NAME" class="tagtable" type="checkbox" <TMPL_IF NAME=EXACT_FIRST_NAME>CHECKED</TMPL_IF>> <label for="exact_first_name">Exact First Name</label><br>
                                 <input id="exact_first_nick_name" name="EXACT_FIRST_NICK_NAME" class="tagtable" type="checkbox" <TMPL_IF NAME=EXACT_FIRST_NICK_NAME>CHECKED</TMPL_IF>> <label for="exact_first_nick_name">Exact First Name or Nickname</label><br>
                                 <input id="exact_home_phone" name="EXACT_HOME_PHONE" class="tagtable" type="checkbox" <TMPL_IF NAME=EXACT_HOME_PHONE>CHECKED</TMPL_IF>> <label for="exact_home_phone">Exact Home Phone</label><br>
                                 <input id="exact_ssn" name="EXACT_SSN" class="tagtable" type="checkbox" <TMPL_IF NAME=EXACT_SSN>CHECKED</TMPL_IF>> <label for="exact_ssn">Exact SSN</label><br>
                                 </div>
                        
                                 <label for="LAST_SEEN_THRESHOLD">Last Seen Threshold (in months)</label> 
                                 <select name="IID_LAST_SEEN_THRESHOLD" id="LAST_SEEN_THRESHOLD">
                                   <option value="12">12</option>
                                   <option value="18">18</option>
                                   <option value="24">24</option>
                                   <option value="30">30</option>
                                   <option value="36">36</option>
                                 </select><br>
                        
                                 <label for="GLOBAL_WATCH_THRESHOLD">Global Watchlist Threshold</label> 
                                 <select name="IID_GLOBAL_WATCH_THRESHOLD" id="GLOBAL_WATCH_THRESHOLD">
                                   <option value="1">100%</option>
                                   <option value="0.98">98%</option>
                                   <option value="0.96">96%</option>
                                   <option value="0.94">94%</option>
                                   <option value="0.92">92%</option>
                                   <option value="0.90">90%</option>
                                   <option value="0.88">88%</option>
                                   <option value="0.86">86%</option>
                                   <option value="0.84" selected>84%</option>
                                   <option value="0.82">82%</option>
                                   <option value="0.80">80%</option>
                                 </select><br>
                        
                                 <label for="IID_SELECT_VERSION">Version Number</label> 
                                 <select name="IID_SELECT_VERSION" id="IID_SELECT_VERSION">
                                   <TMPL_LOOP NAME="IID_VERSION_LOOP">
                                     <option value="<TMPL_VAR VALUE>" <TMPL_IF SELECTED>SELECTED</TMPL_IF>> <TMPL_VAR VALUE> </option>
                                   </TMPL_LOOP>
                                 </select><br>
                                 <input id="instantid_disab_customer_ntwk" name="INSTANTID_DISAB_CUSTOMER_NTWK" class="tagtable" type="checkbox" <TMPL_IF NAME=INSTANTID_DISAB_CUSTOMER_NTWK>CHECKED</TMPL_IF>> <label for="instantid_disab_customer_ntwk">Disable Customer Network</label><br>
                                 <input id="instantid_cvi_include_dob" name="INSTANTID_CVI_INCLUDE_DOB" class="tagtable" type="checkbox" <TMPL_IF NAME=INSTANTID_CVI_INCLUDE_DOB>CHECKED</TMPL_IF>> <label for="instantid_cvi_include_dob">CVI Include DOB</label><br>
                                 <input id="instantid_cvi_include_dl" name="INSTANTID_CVI_INCLUDE_DL" class="tagtable" type="checkbox" <TMPL_IF NAME=INSTANTID_CVI_INCLUDE_DL>CHECKED</TMPL_IF>> <label for="instantid_cvi_include_dl">CVI Include DL</label>
                               </div>
                             </TMPL_IF>
                             <TMPL_IF COMPANY_DISABLE_INSTANT_ID_RF>
                                 <INPUT TYPE=HIDDEN NAME="DISABLE_INSTANT_ID_RF" VALUE="<TMPL_IF DISABLE_INSTANT_ID_RF>1<TMPL_ELSE>0</TMPL_IF>">
                             <TMPL_ELSE>
                                 <input id="INSTANT_ID_RF"  class="disablesearchmapbit" NAME="DISABLE_INSTANT_ID_RF" type="checkbox" <TMPL_UNLESS NAME=DISABLE_INSTANT_ID_RF>CHECKED</TMPL_UNLESS>> <label for="INSTANT_ID_RF">InstantID<sup class="sup-reg-symbol">&reg;</sup> Consumer Verification with Red Flags Rule Report (GLBA) (DPPA) (<a href="javascript:void(0);" class="source-link" data-helpid="SHOW_INSTANT_ID">source</a>)</label><br>
                             </TMPL_IF>
                             <TMPL_IF ALLOW_LNFP>
                             <TMPL_IF COMPANY_DISABLE_INSTANT_ID_FP>
                                 <INPUT TYPE=HIDDEN NAME="DISABLE_INSTANT_ID_FP" VALUE="<TMPL_IF DISABLE_INSTANT_ID_FP>1<TMPL_ELSE>0</TMPL_IF>">
                             <TMPL_ELSE>
                                 <input id="INSTANT_ID_FP"  class="disablesearchmapbit" NAME="DISABLE_INSTANT_ID_FP" type="checkbox" <TMPL_UNLESS NAME=DISABLE_INSTANT_ID_FP>CHECKED</TMPL_UNLESS>> <label for="INSTANT_ID_FP">InstantID<sup class="sup-reg-symbol">&reg;</sup> Consumer Verification with FraudPoint<sup class="sup-reg-symbol">&reg;</sup> Score</label><br>
                             </TMPL_IF>

                             <TMPL_IF COMPANY_DISABLE_INSTANT_ID_RFFP>
                                 <INPUT TYPE=HIDDEN NAME="DISABLE_INSTANT_ID_RFFP" VALUE="<TMPL_IF DISABLE_INSTANT_ID_RFFP>1<TMPL_ELSE>0</TMPL_IF>">
                             <TMPL_ELSE>
                                 <input id="INSTANT_ID_RFFP"  class="disablesearchmapbit" NAME="DISABLE_INSTANT_ID_RFFP" type="checkbox" <TMPL_UNLESS NAME=DISABLE_INSTANT_ID_RFFP>CHECKED</TMPL_UNLESS>> <label for="INSTANT_ID_RFFP">InstantID<sup class="sup-reg-symbol">&reg;</sup> Consumer Verification with Red Flags &amp; FraudPoint<sup class="sup-reg-symbol">&reg;</sup> Score</label><br>
                             </TMPL_IF>
                             </TMPL_IF>
                             <!-- this is for future release, when time come please remove below if & follow requirements -->
                             <TMPL_IF THIS_IS_FOR_FUTURE_RELEASE>
                             <TMPL_IF COMPANY_DISABLE_ARCHIVE_RRPORT>
                                 <INPUT TYPE=HIDDEN NAME="DISABLE_ARCHIVE_RRPORT" VALUE="<TMPL_IF DISABLE_ARCHIVE_RRPORT>1<TMPL_ELSE>0</TMPL_IF>">
                             <TMPL_ELSE>
                                 <input id="archive_report"  class="disablesearchmapbit toggle" NAME="DISABLE_ARCHIVE_RRPORT" type="checkbox" <TMPL_UNLESS NAME=DISABLE_ARCHIVE_RRPORT>CHECKED</TMPL_UNLESS>> <label for="archive_report">InstantID<sup class="sup-reg-symbol">&reg;</sup> Archive Reporting</label>
                                 <span title="Select checkbox for more options." class="more_group_sub_input_archive_report" style="display: none;">(<i class="fa fa-14 fa-indent pos_1 fa-fw redtxt"></i> Select checkbox for more options.)</span><br>
                             
                                 <div class="sub_input_archive_report group_sub_input" style="display: block;">
                                   <label for="comp_id_num">Company ID Number</label>
                                   <select id="comp_id_num" name="IID_ARCHIVE_COMPANY_ID">
                                     <TMPL_LOOP NAME=BILLGROUPLOOP>
                                       <option value="<TMPL_VAR NAME=CompanyId>" <TMPL_IF NAME=Selected>selected</TMPL_IF>><TMPL_VAR NAME=CompanyId></option>
                                     </TMPL_LOOP>
                                   </select><br>
                                   <input id="instant_id" name="INSTANT_ID" class="tagtable" type="checkbox" <TMPL_IF NAME=INSTANT_ID>CHECKED</TMPL_IF>> <label for="instant_id">Instant ID</label><br>
                                   <input id="instant_id_inter" name="INSTANT_ID_INTERNATIONAL" class="tagtable" type="checkbox" <TMPL_IF NAME=INSTANT_ID_INTERNATIONAL>CHECKED</TMPL_IF>> <label for="instant_id_inter">Instant ID International</label><br>
                                   <input id="flex" name="FLEX_ID" class="tagtable" type="checkbox" <TMPL_IF NAME=FLEX_ID>CHECKED</TMPL_IF>> <label for="flex">Flex ID</label><br>
                                   <input id="fraudpoint" name="FRAUD_POINT" class="tagtable" type="checkbox" <TMPL_IF NAME=FRAUD_POINT>CHECKED</TMPL_IF>> <label for="fraudpoint">FraudPoint</label><br>                                   
                                   <input id="redflags" name="RED_FLAGS" class="tagtable" type="checkbox" <TMPL_IF NAME=RED_FLAGS>CHECKED</TMPL_IF>> <label for="redflags">Red Flags</label><br>                                   
                                 </div>
                                 
                             </TMPL_IF>
                             </TMPL_IF>

                             <TMPL_IF COMPANY_DISABLE_CASE_AUDIT>
                                 <INPUT TYPE=HIDDEN NAME="DISABLE_CASE_AUDIT" VALUE="<TMPL_IF DISABLE_CASE_AUDIT>1<TMPL_ELSE>0</TMPL_IF>">
                             <TMPL_ELSE>
                                 <input id="DISABLE_CASE_AUDIT"  class="disablesearchmapbit" NAME="DISABLE_CASE_AUDIT" type="checkbox" <TMPL_UNLESS NAME=DISABLE_CASE_AUDIT>CHECKED</TMPL_UNLESS>> <label for="DISABLE_CASE_AUDIT">LexisNexis<sup class="sup-reg-symbol">&reg;</sup> Identity Report (GLBA) (DPPA) (<a href="javascript:void(0);" class="source-link" data-helpid="SHOW_IDENTITY_REPORT">source</a>)</label><br>
                             </TMPL_IF>
                             <TMPL_IF ALLOW_LNFP> 
                             <TMPL_IF COMPANY_DISABLE_FRAUDPOINT_REPORT>
                                 <INPUT TYPE=HIDDEN NAME="DISABLE_FRAUDPOINT_REPORT" VALUE="<TMPL_IF DISABLE_FRAUDPOINT_REPORT>1<TMPL_ELSE>0</TMPL_IF>">
                             <TMPL_ELSE>
                                 <input id="FRAUDPOINT_REPORT"  class="disablesearchmapbit" NAME="DISABLE_FRAUDPOINT_REPORT" type="checkbox" <TMPL_UNLESS NAME=DISABLE_FRAUDPOINT_REPORT>CHECKED</TMPL_UNLESS>> <label for="FRAUDPOINT_REPORT">FraudPoint<sup class="sup-reg-symbol">&reg;</sup> Score</label><br>
                             </TMPL_IF>

                             <TMPL_IF COMPANY_DISABLE_FRAUDPOINT_RF>
                                 <INPUT TYPE=HIDDEN NAME="DISABLE_FRAUDPOINT_RF" VALUE="<TMPL_IF DISABLE_FRAUDPOINT_RF>1<TMPL_ELSE>0</TMPL_IF>">
                             <TMPL_ELSE>
                                 <input id="FRAUDPOINT_RF"  class="disablesearchmapbit" NAME="DISABLE_FRAUDPOINT_RF" type="checkbox" <TMPL_UNLESS NAME=DISABLE_FRAUDPOINT_RF>CHECKED</TMPL_UNLESS>> <label for="FRAUDPOINT_RF">FraudPoint<sup class="sup-reg-symbol">&reg;</sup> Score with Red Flags Rule Report</label><br>
                             </TMPL_IF>
                             </TMPL_IF>
                             <TMPL_IF COMPANY_DISABLE_SSA_VERIFY>
                                 <INPUT TYPE=HIDDEN NAME="DISABLE_SSA_VERIFY" VALUE="<TMPL_IF DISABLE_SSA_VERIFY>1<TMPL_ELSE>0</TMPL_IF>">
                             <TMPL_ELSE>
                                 <input id="SSA_VERIFY"  class="disablesearchmapbit" NAME="DISABLE_SSA_VERIFY" type="checkbox" <TMPL_UNLESS NAME=DISABLE_SSA_VERIFY>CHECKED</TMPL_UNLESS>> <label for="SSA_VERIFY">SSA Verify (<a href="javascript:void(0);" class="source-link" data-helpid="SHOW_SSA_VERIFY">source</a>)</label><br>
                             </TMPL_IF>

<!--                              <TMPL_IF COMPANY_DISABLE_IRS_VERIFY>
                                 <INPUT TYPE=HIDDEN NAME="DISABLE_IRS_VERIFY" VALUE="<TMPL_IF DISABLE_IRS_VERIFY>1<TMPL_ELSE>0</TMPL_IF>">
                             <TMPL_ELSE>
                                 <input id="IRS_VERIFY"  class="disablesearchmapbit" NAME="DISABLE_IRS_VERIFY" type="checkbox" <TMPL_UNLESS NAME=DISABLE_IRS_VERIFY>CHECKED</TMPL_UNLESS>> <label for="IRS_VERIFY">IRS Verify (<a href="javascript:void(0);" class="source-link" data-helpid="SHOW_IRS_VERIFY">source</a>)</label><br>
                             </TMPL_IF> -->
                             <TMPL_IF COMPANY_DISABLE_DA_BASIC>
                                 <INPUT TYPE=HIDDEN NAME="DISABLE_DA_BASIC" VALUE="<TMPL_IF DISABLE_DA_BASIC>1<TMPL_ELSE>0</TMPL_IF>">
                             <TMPL_ELSE>
                                 <input id="PHONE_LOOKUP" class="disablesearchmapbit" NAME="DISABLE_DA_BASIC" type="checkbox" <TMPL_UNLESS NAME=DISABLE_DA_BASIC>CHECKED</TMPL_UNLESS>> <label for="PHONE_LOOKUP">Phone Lookup (<a href="javascript:void(0);" class="source-link" data-helpid="SHOW_PHONE_LOOKUP">source</a>)</label><br>
                             </TMPL_IF>
                             <TMPL_IF COMPANY_DISABLE_DA_WIRELESS>
                                 <INPUT TYPE=HIDDEN NAME="DISABLE_DA_WIRELESS" VALUE="<TMPL_IF DISABLE_DA_WIRELESS>1<TMPL_ELSE>0</TMPL_IF>">
                             <TMPL_ELSE>
                                 <input id="da_wireless" class="disablesearchmapbit toggle" NAME="DISABLE_DA_WIRELESS" type="checkbox" <TMPL_UNLESS NAME=DISABLE_DA_WIRELESS>CHECKED</TMPL_UNLESS>> <label for="da_wireless">Phones Plus (GLBA) (DPPA) (<a href="javascript:void(0);" class="source-link" data-helpid="SHOW_DA_WIRELESS">source</a>)</label>
                                 <span title="Select checkbox for more options." class="more_group_sub_input_da_wireless" style="display: none;">(<i class="fa fa-14 fa-indent pos_1 fa-fw redtxt"></i> Select checkbox for more options.)</span><br>
                             
                                 <div class="sub_input_da_wireless group_sub_input" style="display: block;">
                                   <input id="phones_plus_directory_asst" name="PHONES_PLUS_DIRECTORY_ASST" class="tagtable" type="checkbox" <TMPL_IF NAME=PHONES_PLUS_DIRECTORY_ASST>CHECKED</TMPL_IF>> <label for="phones_plus_directory_asst">Always include 'Directory Assistance' in a Phones Plus search</label><br>
                                   <TMPL_IF SHOW_RT_PHONE>
                                   <TMPL_UNLESS COMPANY_DISABLE_RT_PHONE>
                                   <input id="phones_plus_rt_phones" name="PHONES_PLUS_RT_PHONES" class="tagtable" type="checkbox" <TMPL_IF NAME=PHONES_PLUS_RT_PHONES>CHECKED</TMPL_IF>> <label for="phones_plus_rt_phones">Always include 'Real Time Phones' in a Phones Plus search</label><br>
                                   </TMPL_UNLESS>
                                   </TMPL_IF>
                                 </div>
                             </TMPL_IF>

                             <TMPL_IF COMPANY_DISABLE_PATRIOTACT>
                                 <INPUT TYPE=HIDDEN NAME="DISABLE_PATRIOTACT" VALUE="<TMPL_IF DISABLE_PATRIOTACT>1<TMPL_ELSE>0</TMPL_IF>">
                             <TMPL_ELSE>
                                 <input id="PATRIOTACT"  class="disablesearchmapbit" NAME="DISABLE_PATRIOTACT" type="checkbox" <TMPL_UNLESS NAME=DISABLE_PATRIOTACT>CHECKED</TMPL_UNLESS>> <label for="PATRIOTACT">OFAC &amp; Other Watch Lists (<a href="javascript:void(0);" class="source-link" data-helpid="SHOW_OFAC">source</a>)</label><br>
                             </TMPL_IF>

                             <TMPL_IF COMPANY_DISABLE_STATEWIDE_PERSON>
                                 <INPUT TYPE=HIDDEN NAME="DISABLE_STATEWIDE_PERSON" VALUE="<TMPL_IF DISABLE_STATEWIDE_PERSON>1<TMPL_ELSE>0</TMPL_IF>">
                             <TMPL_ELSE>
                                 <input id="STATEWIDE_PERSON"  class="disablesearchmapbit" NAME="DISABLE_STATEWIDE_PERSON" type="checkbox" <TMPL_UNLESS NAME=DISABLE_STATEWIDE_PERSON>CHECKED</TMPL_UNLESS>> <label for="STATEWIDE_PERSON">Statewide Public Records Person Search (GLBA) (DPPA) (<a href="javascript:void(0);" class="source-link" data-helpid="SHOW_STATEWIDE_PERSON">source</a>)</label><br>
                             </TMPL_IF>

                             <TMPL_IF COMPANY_DISABLE_DL>
                                 <INPUT TYPE=HIDDEN NAME="DISABLE_DL" VALUE="<TMPL_IF DISABLE_DL>1<TMPL_ELSE>0</TMPL_IF>">
                             <TMPL_ELSE>
                                 <input id="DL"  class="disablesearchmapbit" NAME="DISABLE_DL" type="checkbox" <TMPL_UNLESS NAME=DISABLE_DL>CHECKED</TMPL_UNLESS>> <label for="DL">Driver Licenses (DPPA) (<a href="javascript:void(0);" class="source-link" data-helpid="SHOW_LICENSE">source</a>)</label><br>
                             </TMPL_IF>

                             <TMPL_IF COMPANY_DISABLE_CONCEALED_WEAPON>
                                 <INPUT TYPE=HIDDEN NAME="DISABLE_CONCEALED_WEAPON" VALUE="<TMPL_IF DISABLE_CONCEALED_WEAPON>1<TMPL_ELSE>0</TMPL_IF>">
                             <TMPL_ELSE>
                                 <input id="CONCEALED_WEAPON"  class="disablesearchmapbit" NAME="DISABLE_CONCEALED_WEAPON" type="checkbox" <TMPL_UNLESS NAME=DISABLE_CONCEALED_WEAPON>CHECKED</TMPL_UNLESS>> <label for="CONCEALED_WEAPON">Concealed Weapons Permits</label><br>
                             </TMPL_IF>

                             <TMPL_IF COMPANY_DISABLE_DEA>
                                 <INPUT TYPE=HIDDEN NAME="DISABLE_DEA" VALUE="<TMPL_IF DISABLE_DEA>1<TMPL_ELSE>0</TMPL_IF>">
                             <TMPL_ELSE>
                                 <input id="DEA"  class="disablesearchmapbit" NAME="DISABLE_DEA" type="checkbox" <TMPL_UNLESS NAME=DISABLE_DEA>CHECKED</TMPL_UNLESS>> <label for="DEA">Drug Enforcement Administration Registrants</label><br>
                             </TMPL_IF>

                             <TMPL_IF COMPANY_DISABLE_FAA_PILOT>
                                 <INPUT TYPE=HIDDEN NAME="DISABLE_FAA_PILOT" VALUE="<TMPL_IF DISABLE_FAA_PILOT>1<TMPL_ELSE>0</TMPL_IF>">
                             <TMPL_ELSE>
                                 <input id="FAA_PILOT"  class="disablesearchmapbit" NAME="DISABLE_FAA_PILOT" type="checkbox" <TMPL_UNLESS NAME=DISABLE_FAA_PILOT>CHECKED</TMPL_UNLESS>> <label for="FAA_PILOT">FAA Pilot Licenses</label><br>
                             </TMPL_IF>

                             <TMPL_IF COMPANY_DISABLE_FIREARMS>
                                 <INPUT TYPE=HIDDEN NAME="DISABLE_FIREARMS" VALUE="<TMPL_IF DISABLE_FIREARMS>1<TMPL_ELSE>0</TMPL_IF>">
                             <TMPL_ELSE>
                                 <input id="FIREARMS"  class="disablesearchmapbit" NAME="DISABLE_FIREARMS" type="checkbox" <TMPL_UNLESS NAME=DISABLE_FIREARMS>CHECKED</TMPL_UNLESS>> <label for="FIREARMS">Federal Firearms &amp; Explosives Licenses</label><br>
                             </TMPL_IF>

                             <TMPL_IF COMPANY_DISABLE_HUNTING_LICENSE>
                                 <INPUT TYPE=HIDDEN NAME="DISABLE_HUNTING_LICENSE" VALUE="<TMPL_IF DISABLE_HUNTING_LICENSE>1<TMPL_ELSE>0</TMPL_IF>">
                             <TMPL_ELSE>
                                 <input id="HUNTING_LICENSE"  class="disablesearchmapbit" NAME="DISABLE_HUNTING_LICENSE" type="checkbox" <TMPL_UNLESS NAME=DISABLE_HUNTING_LICENSE>CHECKED</TMPL_UNLESS>> <label for="HUNTING_LICENSE">Hunting &amp; Fishing Licenses</label><br>
                             </TMPL_IF>

                             <TMPL_IF COMPANY_DISABLE_MARRIAGE>
                                 <INPUT TYPE=HIDDEN NAME="DISABLE_MARRIAGE" VALUE="<TMPL_IF DISABLE_MARRIAGE>1<TMPL_ELSE>0</TMPL_IF>">
                             <TMPL_ELSE>
                                 <input id="marriage" class="disablesearchmapbit" NAME="DISABLE_MARRIAGE" type="checkbox" <TMPL_UNLESS NAME=DISABLE_MARRIAGE>CHECKED</TMPL_UNLESS>> <label for="marriage">Marriage &amp; Divorce Records (<a href="javascript:void(0);" class="source-link" data-helpid="SHOW_MARRIAGE">source</a>)</label><br>
                             </TMPL_IF>

                             <TMPL_IF COMPANY_DISABLE_FDW_FIRST_PURSUIT_EQUIFAX>
                                 <INPUT TYPE=HIDDEN NAME="DISABLE_FDW_FIRST_PURSUIT_EQUIFAX" VALUE="<TMPL_IF DISABLE_FDW_FIRST_PURSUIT_EQUIFAX>1<TMPL_ELSE>0</TMPL_IF>">
                             <TMPL_ELSE>
                                 <input id="FDW_FIRST_PURSUIT_EQUIFAX"  class="disablesearchmapbit" NAME="DISABLE_FDW_FIRST_PURSUIT_EQUIFAX" type="checkbox" <TMPL_UNLESS NAME=DISABLE_FDW_FIRST_PURSUIT_EQUIFAX>CHECKED</TMPL_UNLESS>> <label for="FDW_FIRST_PURSUIT_EQUIFAX">LexisNexis<sup class="sup-reg-symbol">&reg;</sup> FirstPursuit<sup class="sup-reg-symbol">&reg;</sup> - Equifax (GLBA) (<a href="javascript:void(0);" class="source-link" data-helpid="SHOW_PURSUIT_REPORT">source</a>)</label><br>
                             </TMPL_IF>

                             <TMPL_IF COMPANY_DISABLE_MILITARY_PERSONNEL>
                                 <INPUT TYPE=HIDDEN NAME="DISABLE_MILITARY_PERSONNEL" VALUE="<TMPL_IF DISABLE_MILITARY_PERSONNEL>1<TMPL_ELSE>0</TMPL_IF>">
                             <TMPL_ELSE>
                                 <input id="MILITARY_PERSONNEL"  class="disablesearchmapbit" NAME="DISABLE_MILITARY_PERSONNEL" type="checkbox" <TMPL_UNLESS NAME=DISABLE_MILITARY_PERSONNEL>CHECKED</TMPL_UNLESS>> <label for="MILITARY_PERSONNEL">Military Personnel (Archive)</label><br>
                             </TMPL_IF>

                             <TMPL_IF COMPANY_DISABLE_PAW>
                                 <INPUT TYPE=HIDDEN NAME="DISABLE_PAW" VALUE="<TMPL_IF DISABLE_PAW>1<TMPL_ELSE>0</TMPL_IF>">
                             <TMPL_ELSE>
                                 <input id="PAW"  class="disablesearchmapbit" NAME="DISABLE_PAW" type="checkbox" <TMPL_UNLESS NAME=DISABLE_PAW>CHECKED</TMPL_UNLESS>> <label for="PAW">People At Work (<a href="javascript:void(0);" class="source-link" data-helpid="SHOW_PAW">source</a>)</label><br>
                             </TMPL_IF>

                             <TMPL_IF COMPANY_DISABLE_BIOGRAPHIES_SEARCH>
                                 <INPUT TYPE=HIDDEN NAME="DISABLE_BIOGRAPHIES_SEARCH" VALUE="<TMPL_IF DISABLE_BIOGRAPHIES_SEARCH>1<TMPL_ELSE>0</TMPL_IF>">
                             <TMPL_ELSE>
                                 <input id="BIOGRAPHIES_SEARCH"  class="disablesearchmapbit" NAME="DISABLE_BIOGRAPHIES_SEARCH" type="checkbox" <TMPL_UNLESS NAME=DISABLE_BIOGRAPHIES_SEARCH>CHECKED</TMPL_UNLESS>> <label for="BIOGRAPHIES_SEARCH">Business Executive and Political Biographies (<a href="javascript:void(0);" class="source-link" data-helpid="SHOW_BUSINESS_EXECUTIVE_AND_POLITICAL_BIOGRAPHIES">source</a>)</label><br>
                             </TMPL_IF>

                             <TMPL_IF COMPANY_DISABLE_PROF_LICENSE>
                                 <INPUT TYPE=HIDDEN NAME="DISABLE_PROF_LICENSE" VALUE="<TMPL_IF DISABLE_PROF_LICENSE>1<TMPL_ELSE>0</TMPL_IF>">
                             <TMPL_ELSE>
                                 <input id="PROF_LICENSE"  class="disablesearchmapbit" NAME="DISABLE_PROF_LICENSE" type="checkbox" <TMPL_UNLESS NAME=DISABLE_PROF_LICENSE>CHECKED</TMPL_UNLESS>> <label for="PROF_LICENSE">Professional Licenses (<a href="javascript:void(0);" class="source-link" data-helpid="SHOW_PROF_LICENSE">source</a>)</label><br>
                             </TMPL_IF>

                             <TMPL_IF COMPANY_DISABLE_VOTER_REGISTRATION>
                                 <INPUT TYPE=HIDDEN NAME="DISABLE_VOTER_REGISTRATION" VALUE="<TMPL_IF DISABLE_VOTER_REGISTRATION>1<TMPL_ELSE>0</TMPL_IF>">
                             <TMPL_ELSE>
                                 <input id="VOTER_REGISTRATION"  class="disablesearchmapbit" NAME="DISABLE_VOTER_REGISTRATION" type="checkbox" <TMPL_UNLESS NAME=DISABLE_VOTER_REGISTRATION>CHECKED</TMPL_UNLESS>> <label for="VOTER_REGISTRATION">Voter Registrations (<a href="javascript:void(0);" class="source-link" data-helpid="SHOW_VOTER_REGISTRATION">source</a>)</label><br>
                             </TMPL_IF>

                             <TMPL_IF COMPANY_DISABLE_EMAIL>
                                 <INPUT TYPE=HIDDEN NAME="DISABLE_EMAIL" VALUE="<TMPL_IF DISABLE_EMAIL>1<TMPL_ELSE>0</TMPL_IF>">
                             <TMPL_ELSE>
                                 <input id="EMAIL"  class="disablesearchmapbit" NAME="DISABLE_EMAIL" type="checkbox" <TMPL_UNLESS NAME=DISABLE_EMAIL>CHECKED</TMPL_UNLESS>> <label for="EMAIL">Email Address/Social Network Report (<a href="javascript:void(0);" class="source-link" data-helpid="SHOW_EMAIL">source</a>)</label><br>
                             </TMPL_IF>

                             <TMPL_IF COMPANY_DISABLE_ESRI_MAPPING>
                                 <INPUT TYPE=HIDDEN NAME="DISABLE_ESRI_MAPPING" VALUE="<TMPL_IF DISABLE_ESRI_MAPPING>1<TMPL_ELSE>0</TMPL_IF>">
                             <TMPL_ELSE>
                                 <input id="ESRI_MAPPING"  class="disablesearchmapbit" NAME="DISABLE_ESRI_MAPPING" type="checkbox" <TMPL_UNLESS NAME=DISABLE_ESRI_MAPPING>CHECKED</TMPL_UNLESS>> <label for="ESRI_MAPPING">Mapping - Address Locations</label><br>
                             </TMPL_IF>

                             <TMPL_IF COMPANY_DISABLE_NEIGHBORS_SEARCH>
                                 <INPUT TYPE=HIDDEN NAME="DISABLE_NEIGHBORS_SEARCH" VALUE="<TMPL_IF DISABLE_NEIGHBORS_SEARCH>1<TMPL_ELSE>0</TMPL_IF>">
                             <TMPL_ELSE>
                                 <input id="NEIGHBORS_SEARCH"  class="disablesearchmapbit" NAME="DISABLE_NEIGHBORS_SEARCH" type="checkbox" <TMPL_UNLESS NAME=DISABLE_NEIGHBORS_SEARCH>CHECKED</TMPL_UNLESS>> <label for="NEIGHBORS_SEARCH">Find a Neighbor (<a href="javascript:void(0);" class="source-link" data-helpid="SHOW_FAP">source</a>)</label><br>
                             </TMPL_IF>

                             <TMPL_IF COMPANY_DISABLE_COMPREHENSIVE_REPORT>
                                 <INPUT TYPE=HIDDEN NAME="DISABLE_COMPREHENSIVE_REPORT" VALUE="<TMPL_IF DISABLE_COMPREHENSIVE_REPORT>1<TMPL_ELSE>0</TMPL_IF>">
                             <TMPL_ELSE>
                                 <input id="COMPREHENSIVE_REPORT"  class="disablesearchmapbit" NAME="DISABLE_COMPREHENSIVE_REPORT" type="checkbox" <TMPL_UNLESS NAME=DISABLE_COMPREHENSIVE_REPORT>CHECKED</TMPL_UNLESS>> <label for="COMPREHENSIVE_REPORT">SmartLinx<sup class="sup-reg-symbol">&reg;</sup> Person Report (<a href="javascript:void(0);" class="source-link" data-helpid="SHOW_FAP">source</a>)</label><br>
                             </TMPL_IF>

                             <TMPL_IF RA_SHOW_PHONE_FINDER_BASIC>
                             <input id="PHONE_FINDER_BASIC" class="tagtable toggle" NAME="ALLOW_PHONEFINDER_BASIC" type="checkbox" <TMPL_IF MANAGE_UPDATE_GROUP><TMPL_IF NAME=ALLOW_PHONEFINDER_BASIC>CHECKED</TMPL_IF><TMPL_ELSE>CHECKED</TMPL_IF>> <label for="PHONE_FINDER_BASIC">Phone Finder Basic (<a href="javascript:void(0);" class="source-link" data-helpid="SHOW_PHONE_FINDER">source</a>)</label><br>
                             <div class="group_sub_input sub_input_PHONE_FINDER_BASIC" style="display: block;">
                               <input id="basic_disab_deceased_ind" name="PF_BASIC_DISAB_DECEASED_IND" class="tagtable" type="checkbox" <TMPL_IF NAME=PF_BASIC_DISAB_DECEASED_IND>CHECKED</TMPL_IF>> <label for="basic_disab_deceased_ind">Disable Deceased Indicator</label><br>
                             </div>
                             </TMPL_IF>
                             <TMPL_IF RA_SHOW_PHONE_FINDER_PREMIUM>
                             <input id="PHONE_FINDER_PREMIUM" class="tagtable toggle" NAME="ALLOW_PHONEFINDER_PREMIUM" type="checkbox" <TMPL_IF MANAGE_UPDATE_GROUP><TMPL_IF NAME=ALLOW_PHONEFINDER_PREMIUM>CHECKED</TMPL_IF><TMPL_ELSE>CHECKED</TMPL_IF>> <label for="PHONE_FINDER_PREMIUM">Phone Finder Premium (<a href="javascript:void(0);" class="source-link" data-helpid="SHOW_PHONE_FINDER">source</a>)</label><br>
                             <div class="group_sub_input sub_input_PHONE_FINDER_PREMIUM" style="display: block;">
                               <input id="premium_disab_deceased_ind" name="PF_PREMIUM_DISAB_DECEASED_IND" class="tagtable" type="checkbox" <TMPL_IF NAME=PF_PREMIUM_DISAB_DECEASED_IND>CHECKED</TMPL_IF>> <label for="premium_disab_deceased_ind">Disable Deceased Indicator</label><br>
                             </div>
                             </TMPL_IF>
                             <TMPL_IF RA_SHOW_PHONE_FINDER_ULTIMATE>                             
                             <input id="PHONE_FINDER_ULTIMATE" class="tagtable toggle" NAME="ALLOW_PHONEFINDER_ULTIMATE" type="checkbox" <TMPL_IF MANAGE_UPDATE_GROUP><TMPL_IF NAME=ALLOW_PHONEFINDER_ULTIMATE>CHECKED</TMPL_IF><TMPL_ELSE>CHECKED</TMPL_IF>> <label for="PHONE_FINDER_ULTIMATE">Phone Finder Ultimate (<a href="javascript:void(0);" class="source-link" data-helpid="SHOW_PHONE_FINDER">source</a>)</label><br>
                             <div class="group_sub_input sub_input_PHONE_FINDER_ULTIMATE" style="display: block;">
                               <input id="ultimate_disab_deceased_ind" name="PF_ULTIMATE_DISAB_DECEASED_IND" class="tagtable" type="checkbox" <TMPL_IF NAME=PF_ULTIMATE_DISAB_DECEASED_IND>CHECKED</TMPL_IF>> <label for="ultimate_disab_deceased_ind">Disable Deceased Indicator</label><br>
                             </div>
                             </TMPL_IF>
                             <TMPL_IF IS_RSKM>
                             <TMPL_UNLESS RA_HIDE_FRAUDPOINT_ATO>
                             <input id="ALLOW_FRAUDPOINT_ATO"  class="tagtable" NAME="ALLOW_FRAUDPOINT_ATO" type="checkbox" <TMPL_IF MANAGE_UPDATE_GROUP><TMPL_IF NAME=ALLOW_FRAUDPOINT_ATO>CHECKED</TMPL_IF><TMPL_ELSE>CHECKED</TMPL_IF>> <label for="ALLOW_FRAUDPOINT_ATO">FraudPoint ATO score</label><br>
                             </TMPL_UNLESS>
                             </TMPL_IF>                        
                        
                        <div class="fl_right"><a href="#top"><i class="fa fa-14 fa-angle-up pos_1 fa-fw redtxt"></i> Top</a></div>
                        <div class="clear"></div>

                    </div>
                </div>
                
                <div class="group_section_data group_fade2">
                    <a name="business"></a>
                    <div class="group_section">
                        <strong><span class="bus_icon svg-icon-normal sect_02">Business</span></strong>
                        <span class="fl_right"><i class="fa fa-14 fa-chevron-up fa-fw"></i> <i style="display: none;" class="fa fa-14 fa-chevron-down fa-fw"></i></span><span class="clear"></span>
                    </div>

                    <div class="group_section_content">
                                <TMPL_IF COMPANY_DISABLE_BUS>
                                    <INPUT TYPE=HIDDEN NAME="DISABLE_BUS" VALUE="<TMPL_IF DISABLE_BUS>1<TMPL_ELSE>0</TMPL_IF>">
                                <TMPL_ELSE>
                                    <input id="BUS" class="disablesearchmapbit" NAME="DISABLE_BUS" type="checkbox" <TMPL_UNLESS NAME=DISABLE_BUS>CHECKED</TMPL_UNLESS>> <label for="BUS">Find a Business (GLBA) (DPPA) (<a href="javascript:void(0);" class="source-link" data-helpid="SHOW_FAB">source</a>)</label><br>
                                </TMPL_IF>

                                <TMPL_IF COMPANY_DISABLE_BUS_INSTANT_ID>
                                    <INPUT TYPE=HIDDEN NAME="DISABLE_BUS_INSTANT_ID" VALUE="<TMPL_IF DISABLE_BUS_INSTANT_ID>1<TMPL_ELSE>0</TMPL_IF>">
                                <TMPL_ELSE>
                                    <input id="BUS_INSTANT_ID" class="disablesearchmapbit" NAME="DISABLE_BUS_INSTANT_ID" type="checkbox" <TMPL_UNLESS NAME=DISABLE_BUS_INSTANT_ID>CHECKED</TMPL_UNLESS>> <label for="BUS_INSTANT_ID">InstantID<sup class="sup-reg-symbol">&reg;</sup> Business Verification (GLBA) (DPPA) (<a href="javascript:void(0);" class="source-link" data-helpid="SHOW_INSTANT_ID">source</a>)</label><br>
                                </TMPL_IF>

                                <TMPL_IF COMPANY_DISABLE_BUS_INSTANT_ID_FD>
                                    <INPUT TYPE=HIDDEN NAME="DISABLE_BUS_INSTANT_ID_FD" VALUE="<TMPL_IF DISABLE_BUS_INSTANT_ID_FD>1<TMPL_ELSE>0</TMPL_IF>">
                                <TMPL_ELSE>
                                    <input id="BUS_INSTANT_ID_FD" class="disablesearchmapbit" NAME="DISABLE_BUS_INSTANT_ID_FD" type="checkbox" <TMPL_UNLESS NAME=DISABLE_BUS_INSTANT_ID_FD>CHECKED</TMPL_UNLESS>> <label for="BUS_INSTANT_ID_FD">InstantID<sup class="sup-reg-symbol">&reg;</sup> Business Verification with FraudDefender<sup class="sup-reg-symbol">&reg;</sup> (GLBA) (DPPA) (<a href="javascript:void(0);" class="source-link" data-helpid="SHOW_INSTANT_ID">source</a>)</label><br>
                                </TMPL_IF>

                                <TMPL_IF COMPANY_DISABLE_DBGLOBAL>
                                    <INPUT TYPE=HIDDEN NAME="DISABLE_DBGLOBAL" VALUE="<TMPL_IF DISABLE_DBGLOBAL>1<TMPL_ELSE>0</TMPL_IF>">
                                <TMPL_ELSE>
                                    <input id="DBGLOBAL" class="disablesearchmapbit" NAME="DISABLE_DBGLOBAL" type="checkbox" <TMPL_UNLESS NAME=DISABLE_DBGLOBAL>CHECKED</TMPL_UNLESS>> <label for="DBGLOBAL">D&amp;B Global Market Identifiers (<a href="javascript:void(0);" class="source-link" data-helpid="SHOW_DBGLOBAL">source</a>)</label><br>
                                </TMPL_IF>

                                <TMPL_IF COMPANY_DISABLE_EXPERIAN>
                                    <INPUT TYPE=HIDDEN NAME="DISABLE_EXPERIAN" VALUE="<TMPL_IF DISABLE_EXPERIAN>1<TMPL_ELSE>0</TMPL_IF>">
                                <TMPL_ELSE>
                                    <input id="EXPERIAN" class="disablesearchmapbit" NAME="DISABLE_EXPERIAN" type="checkbox" <TMPL_UNLESS NAME=DISABLE_EXPERIAN>CHECKED</TMPL_UNLESS>> <label for="EXPERIAN">Experian Business Data (<a href="javascript:void(0);" class="source-link" data-helpid="SHOW_EXPERIAN_BUSINESS">source</a>)</label><br>
                                </TMPL_IF>

                                <TMPL_IF COMPANY_DISABLE_STATEWIDE_BUSINESS>
                                    <INPUT TYPE=HIDDEN NAME="DISABLE_STATEWIDE_BUSINESS" VALUE="<TMPL_IF DISABLE_STATEWIDE_BUSINESS>1<TMPL_ELSE>0</TMPL_IF>">
                                <TMPL_ELSE>
                                    <input id="STATEWIDE_BUSINESS" class="disablesearchmapbit" NAME="DISABLE_STATEWIDE_BUSINESS" type="checkbox" <TMPL_UNLESS NAME=DISABLE_STATEWIDE_BUSINESS>CHECKED</TMPL_UNLESS>> <label for="STATEWIDE_BUSINESS">Statewide Public Records Business Search (GLBA) (DPPA) (<a href="javascript:void(0);" class="source-link" data-helpid="SHOW_STATEWIDE_BUSINESS">source</a>)</label><br>
                                </TMPL_IF>

                                <TMPL_IF COMPANY_DISABLE_FEIN>
                                    <INPUT TYPE=HIDDEN NAME="DISABLE_FEIN" VALUE="<TMPL_IF DISABLE_FEIN>1<TMPL_ELSE>0</TMPL_IF>">
                                <TMPL_ELSE>
                                    <input id="FEIN" class="disablesearchmapbit" NAME="DISABLE_FEIN" type="checkbox" <TMPL_UNLESS NAME=DISABLE_FEIN>CHECKED</TMPL_UNLESS>> <label for="FEIN">D&amp;B FEIN (<a href="javascript:void(0);" class="source-link" data-helpid="SHOW_FEIN">source</a>)</label><br>
                                </TMPL_IF>

                                <TMPL_IF COMPANY_DISABLE_LN_D_AND_B_MINORITY_AND_WOMEN_OWNER_BUSINESSES>
                                    <INPUT TYPE=HIDDEN NAME="DISABLE_LN_D_AND_B_MINORITY_AND_WOMEN_OWNER_BUSINESSES" VALUE="<TMPL_IF DISABLE_LN_D_AND_B_MINORITY_AND_WOMEN_OWNER_BUSINESSES>1<TMPL_ELSE>0</TMPL_IF>">
                                <TMPL_ELSE>
                                    <input id="LN_D_AND_B_MINORITY_AND_WOMEN_OWNER_BUSINESSES" class="disablesearchmapbit" NAME="DISABLE_LN_D_AND_B_MINORITY_AND_WOMEN_OWNER_BUSINESSES" type="checkbox" <TMPL_UNLESS NAME=DISABLE_LN_D_AND_B_MINORITY_AND_WOMEN_OWNER_BUSINESSES>CHECKED</TMPL_UNLESS>> <label for="LN_D_AND_B_MINORITY_AND_WOMEN_OWNER_BUSINESSES">D&amp;B DUNS Minority &amp; Women-Owned Businesses (<a href="javascript:void(0);" class="source-link" data-helpid="SHOW_LN_DAND_B_MINORITY_AND_WOMEN_OWNER_BUSINESSES">source</a>)</label><br>
                                </TMPL_IF>                        

                                <TMPL_IF COMPANY_DISABLE_LN_D_AND_B_PRIV_COMP>
                                    <INPUT TYPE=HIDDEN NAME="DISABLE_LN_D_AND_B_PRIV_COMP" VALUE="<TMPL_IF DISABLE_LN_D_AND_B_PRIV_COMP>1<TMPL_ELSE>0</TMPL_IF>">
                                <TMPL_ELSE>
                                    <input id="LN_D_AND_B_PRIV_COMP" class="disablesearchmapbit" NAME="DISABLE_LN_D_AND_B_PRIV_COMP" type="checkbox" <TMPL_UNLESS NAME=DISABLE_LN_D_AND_B_PRIV_COMP>CHECKED</TMPL_UNLESS>> <label for="LN_D_AND_B_PRIV_COMP">D&amp;B Private Company Insights (<a href="javascript:void(0);" class="source-link" data-helpid="SHOW_LN_DAND_B_PRIVATE_COMPANY_INSIGHTS">source</a>)</label><br>
                                </TMPL_IF>

                                <TMPL_IF COMPANY_DISABLE_LN_CORP_AFFILIATIONS>
                                    <INPUT TYPE=HIDDEN NAME="DISABLE_LN_CORP_AFFILIATIONS" VALUE="<TMPL_IF DISABLE_LN_CORP_AFFILIATIONS>1<TMPL_ELSE>0</TMPL_IF>">
                                <TMPL_ELSE>
                                    <input id="LN_CORP_AFFILIATIONS" class="disablesearchmapbit" NAME="DISABLE_LN_CORP_AFFILIATIONS" type="checkbox" <TMPL_UNLESS NAME=DISABLE_LN_CORP_AFFILIATIONS>CHECKED</TMPL_UNLESS>> <label for="LN_CORP_AFFILIATIONS">LexisNexis<sup class="sup-reg-symbol">&reg;</sup> Corporate Affiliations<sup>TM</sup> (<a href="javascript:void(0);" class="source-link" data-helpid="SHOW_LN_CORP_AFFILIATIONS">source</a>)</label><br>
                                </TMPL_IF>

                                <TMPL_IF COMPANY_DISABLE_LN_HOOVER>
                                    <INPUT TYPE=HIDDEN NAME="DISABLE_LN_HOOVER" VALUE="<TMPL_IF DISABLE_LN_HOOVER>1<TMPL_ELSE>0</TMPL_IF>">
                                <TMPL_ELSE>
                                    <input id="LN_HOOVER" class="disablesearchmapbit" NAME="DISABLE_LN_HOOVER" type="checkbox" <TMPL_UNLESS NAME=DISABLE_LN_HOOVER>CHECKED</TMPL_UNLESS>> <label for="LN_HOOVER">Hoover's Company Capsules (<a href="javascript:void(0);" class="source-link" data-helpid="SHOW_HOOVER_COMPANY_CAPSULES">source</a>)</label><br>
                                </TMPL_IF>

                                <TMPL_IF COMPANY_DISABLE_LN_MERGERSTAT>
                                    <INPUT TYPE=HIDDEN NAME="DISABLE_LN_MERGERSTAT" VALUE="<TMPL_IF DISABLE_LN_MERGERSTAT>1<TMPL_ELSE>0</TMPL_IF>">
                                <TMPL_ELSE>
                                    <input id="LN_MERGERSTAT" class="disablesearchmapbit" NAME="DISABLE_LN_MERGERSTAT" type="checkbox" <TMPL_UNLESS NAME=DISABLE_LN_MERGERSTAT>CHECKED</TMPL_UNLESS>> <label for="LN_MERGERSTAT">Mergerstat (<a href="javascript:void(0);" class="source-link" data-helpid="SHOW_MERGERSTAT">source</a>)</label><br>
                                </TMPL_IF>

                                <TMPL_IF COMPANY_DISABLE_SEC>
                                    <INPUT TYPE=HIDDEN NAME="DISABLE_SEC" VALUE="<TMPL_IF DISABLE_SEC>1<TMPL_ELSE>0</TMPL_IF>">
                                <TMPL_ELSE>
                                    <input id="SEC" class="disablesearchmapbit" NAME="DISABLE_SEC" type="checkbox" <TMPL_UNLESS NAME=DISABLE_SEC>CHECKED</TMPL_UNLESS>> <label for="SEC">SEC Filings (<a href="javascript:void(0);" class="source-link" data-helpid="SHOW_SEC">source</a>)</label><br>
                                </TMPL_IF>

                                <TMPL_IF COMPANY_DISABLE_CORPORATION>
                                    <INPUT TYPE=HIDDEN NAME="DISABLE_CORPORATION" VALUE="<TMPL_IF DISABLE_CORPORATION>1<TMPL_ELSE>0</TMPL_IF>">
                                <TMPL_ELSE>
                                    <input id="CORPORATION" class="disablesearchmapbit" NAME="DISABLE_CORPORATION" type="checkbox" <TMPL_UNLESS NAME=DISABLE_CORPORATION>CHECKED</TMPL_UNLESS>> <label for="CORPORATION">Secretary of State Filings (<a href="javascript:void(0);" class="source-link" data-helpid="SHOW_SEC">source</a>)</label><br>
                                </TMPL_IF>

                                <TMPL_IF COMPANY_DISABLE_FICTIOUS>
                                    <INPUT TYPE=HIDDEN NAME="DISABLE_FICTIOUS" VALUE="<TMPL_IF DISABLE_FICTIOUS>1<TMPL_ELSE>0</TMPL_IF>">
                                <TMPL_ELSE>
                                    <input id="FICTIOUS" class="disablesearchmapbit" NAME="DISABLE_FICTIOUS" type="checkbox" <TMPL_UNLESS NAME=DISABLE_FICTIOUS>CHECKED</TMPL_UNLESS>> <label for="FICTIOUS">Fictitious Business Names/DBA (<a href="javascript:void(0);" class="source-link" data-helpid="SHOW_FICTIOUS">source</a>)</label><br>
                                </TMPL_IF>

                                <TMPL_IF COMPANY_DISABLE_DELCO>
                                    <INPUT TYPE=HIDDEN NAME="DISABLE_DELCO" VALUE="<TMPL_IF DISABLE_DELCO>1<TMPL_ELSE>0</TMPL_IF>">
                                <TMPL_ELSE>
                                    <input id="DELCO" class="disablesearchmapbit" NAME="DISABLE_DELCO" type="checkbox" <TMPL_UNLESS NAME=DISABLE_DELCO>CHECKED</TMPL_UNLESS>> <label for="DELCO">DE Secretary of State (<a href="javascript:void(0);" class="source-link" data-helpid="SHOW_PORTAL_DELCO">source</a>)</label><br>
                                </TMPL_IF>

                                <TMPL_IF COMPANY_DISABLE_LN_S_AND_P_CORP_DECISIONS>
                                    <INPUT TYPE=HIDDEN NAME="DISABLE_LN_S_AND_P_CORP_DECISIONS" VALUE="<TMPL_IF DISABLE_LN_S_AND_P_CORP_DECISIONS>1<TMPL_ELSE>0</TMPL_IF>">
                                <TMPL_ELSE>
                                    <input id="LN_S_AND_P_CORP_DECISIONS" class="disablesearchmapbit" NAME="DISABLE_LN_S_AND_P_CORP_DECISIONS" type="checkbox" <TMPL_UNLESS NAME=DISABLE_LN_S_AND_P_CORP_DECISIONS>CHECKED</TMPL_UNLESS>> <label for="LN_S_AND_P_CORP_DECISIONS">Standard &amp; Poor's Corporate Descriptions plus News (<a href="javascript:void(0);" class="source-link" data-helpid="SHOW_S_AND_P_CORP_DECISIONS">source</a>)</label><br>
                                </TMPL_IF>

                                <TMPL_IF COMPANY_DISABLE_SMALLBUSRISK_SEARCH_INDEX>
                                    <INPUT TYPE=HIDDEN NAME="DISABLE_SMALLBUSRISK_SEARCH_INDEX" VALUE="<TMPL_IF DISABLE_SMALLBUSRISK_SEARCH_INDEX>1<TMPL_ELSE>0</TMPL_IF>">
                                <TMPL_ELSE>
                                    <input id="SMALLBUSRISK_SEARCH_INDEX" class="disablesearchmapbit" NAME="DISABLE_SMALLBUSRISK_SEARCH_INDEX" type="checkbox" <TMPL_UNLESS NAME=DISABLE_SMALLBUSRISK_SEARCH_INDEX>CHECKED</TMPL_UNLESS>> <label for="SMALLBUSRISK_SEARCH_INDEX">LexisNexis<sup class="sup-reg-symbol">&reg;</sup> Small Business Risk Score (GLBA) (DPPA) (<a href="javascript:void(0);" class="source-link" data-helpid="SHOW_SMALL_BUSINESS_RISK_SCORE">source</a>)</label><br>
                                </TMPL_IF>

                                <TMPL_IF COMPANY_DISABLE_GUIDESTAR_SEARCH_INDEX>
                                    <INPUT TYPE=HIDDEN NAME="DISABLE_GUIDESTAR_SEARCH_INDEX" VALUE="<TMPL_IF DISABLE_GUIDESTAR_SEARCH_INDEX>1<TMPL_ELSE>0</TMPL_IF>">
                                <TMPL_ELSE>
                                    <input id="GUIDESTAR_SEARCH_INDEX" class="disablesearchmapbit" NAME="DISABLE_GUIDESTAR_SEARCH_INDEX" type="checkbox" <TMPL_UNLESS NAME=DISABLE_GUIDESTAR_SEARCH_INDEX>CHECKED</TMPL_UNLESS>> <label for="GUIDESTAR_SEARCH_INDEX">GuideStar (<a href="javascript:void(0);" class="source-link" data-helpid="SHOW_GUIDESTAR">source</a>)</label><br>
                                </TMPL_IF>

                                <TMPL_IF COMPANY_DISABLE_LN_THOMSON_DIRECTORIES>
                                    <INPUT TYPE=HIDDEN NAME="DISABLE_LN_THOMSON_DIRECTORIES" VALUE="<TMPL_IF DISABLE_LN_THOMSON_DIRECTORIES>1<TMPL_ELSE>0</TMPL_IF>">
                                <TMPL_ELSE>
                                    <input id="LN_THOMSON_DIRECTORIES" class="disablesearchmapbit" NAME="DISABLE_LN_THOMSON_DIRECTORIES" type="checkbox" <TMPL_UNLESS NAME=DISABLE_LN_THOMSON_DIRECTORIES>CHECKED</TMPL_UNLESS>> <label for="LN_THOMSON_DIRECTORIES">Combined Banking Directories (<a href="javascript:void(0);" class="source-link" data-helpid="SHOW_THOMSON_DIRECTORIES">source</a>)</label><br>
                                </TMPL_IF>
                                <TMPL_IF COMPANY_DISABLE_BUS_REPORT>
                                    <INPUT TYPE=HIDDEN NAME="DISABLE_BUS_REPORT" VALUE="<TMPL_IF DISABLE_BUS_REPORT>1<TMPL_ELSE>0</TMPL_IF>">
                                <TMPL_ELSE>
                                    <input id="BUS_REPORT" class="disablesearchmapbit" NAME="DISABLE_BUS_REPORT" type="checkbox" <TMPL_UNLESS NAME=DISABLE_BUS_REPORT>CHECKED</TMPL_UNLESS>> <label for="BUS_REPORT">SmartLinx<sup class="sup-reg-symbol">&reg;</sup> Business Report (<a href="javascript:void(0);" class="source-link" data-helpid="SHOW_FAB">source</a>)</label><br>
                                </TMPL_IF>
								
                                <!--

                                <TMPL_IF COMPANY_DISABLE_BUS_NEWS>
                                    <INPUT TYPE=HIDDEN NAME="DISABLE_BUS_NEWS" VALUE="<TMPL_IF DISABLE_BUS_NEWS>1<TMPL_ELSE>0</TMPL_IF>">
                                <TMPL_ELSE>
                                    <input id="BUS_NEWS" class="disablesearchmapbit" NAME="DISABLE_BUS_NEWS" type="checkbox" <TMPL_UNLESS NAME=DISABLE_BUS_NEWS>CHECKED</TMPL_UNLESS>> <label for="BUS_NEWS">Businesses in the News</label><br>
                                </TMPL_IF>

                                <TMPL_IF COMPANY_DISABLE_BUS_CREDIT>
                                    <INPUT TYPE=HIDDEN NAME="DISABLE_BUS_CREDIT" VALUE="<TMPL_IF DISABLE_BUS_CREDIT>1<TMPL_ELSE>0</TMPL_IF>">
                                <TMPL_ELSE>
                                    <input id="BUS_CREDIT" class="disablesearchmapbit" NAME="DISABLE_BUS_CREDIT" type="checkbox" <TMPL_UNLESS NAME=DISABLE_BUS_CREDIT>CHECKED</TMPL_UNLESS>> <label for="BUS_CREDIT">Business Credit</label><br>
                                </TMPL_IF>

                                <TMPL_IF COMPANY_DISABLE_WHOIS>
                                    <INPUT TYPE=HIDDEN NAME="DISABLE_WHOIS" VALUE="<TMPL_IF DISABLE_WHOIS>1<TMPL_ELSE>0</TMPL_IF>">
                                <TMPL_ELSE>
                                    <input id="WHOIS" class="disablesearchmapbit" NAME="DISABLE_WHOIS" type="checkbox" <TMPL_UNLESS NAME=DISABLE_WHOIS>CHECKED</TMPL_UNLESS>> <label for="WHOIS">Internet Domains</label><br>
                                </TMPL_IF>                        
                                -->
                        
                        <div class="fl_right"><a href="#top"><i class="fa fa-14 fa-angle-up pos_1 fa-fw redtxt"></i> Top</a></div>
                        <div class="clear"></div>

                    </div>
                </div>
                
                <div class="group_section_data group_fade3">
                    <a name="property"></a>
                    <div class="group_section">
                        <strong><span class="property_icon svg-icon-normal sect_03">Property &amp; Assets</span></strong> 
                        <span class="fl_right"><i class="fa fa-14 fa-chevron-up fa-fw"></i> <i style="display: none;" class="fa fa-14 fa-chevron-down fa-fw"></i></span><span class="clear"></span>
                    </div>
                    <div class="group_section_content">
                            <TMPL_IF COMPANY_DISABLE_LOCATION>
                                <INPUT TYPE=HIDDEN NAME="DISABLE_LOCATION" VALUE="<TMPL_IF DISABLE_LOCATION>1<TMPL_ELSE>0</TMPL_IF>">
                            <TMPL_ELSE>
                                <input id="LOCATION" class="disablesearchmapbit" NAME="DISABLE_LOCATION" type="checkbox" <TMPL_UNLESS NAME=DISABLE_LOCATION>CHECKED</TMPL_UNLESS>> <label for="LOCATION">Find a Location (GLBA) (DPPA) (<a href="javascript:void(0);" class="source-link" data-helpid="SHOW_PORTAL_LOCATION">source</a>)</label><br>
                            </TMPL_IF>

                            <TMPL_IF COMPANY_DISABLE_REAL_PROPERTY>
                                <INPUT TYPE=HIDDEN NAME="DISABLE_REAL_PROPERTY" VALUE="<TMPL_IF DISABLE_REAL_PROPERTY>1<TMPL_ELSE>0</TMPL_IF>">
                            <TMPL_ELSE>
                                <input id="REAL_PROPERTY" class="disablesearchmapbit" NAME="DISABLE_REAL_PROPERTY" type="checkbox" <TMPL_UNLESS NAME=DISABLE_REAL_PROPERTY>CHECKED</TMPL_UNLESS>> <label for="REAL_PROPERTY">Real Property (Property Assessments, Deeds &amp; Mortgages) (<a href="javascript:void(0);" class="source-link" data-helpid="SHOW_REAL_PROPERTY">source</a>)</label><br>
                            </TMPL_IF>
                            <TMPL_IF RA_ALLOW_PROPERTYHISTORYPLUS> 
                            <TMPL_IF COMPANY_DISABLE_PROPHIST_PLUS>
                                <INPUT TYPE=HIDDEN NAME="DISABLE_PROPHIST_PLUS" VALUE="<TMPL_IF DISABLE_PROPHIST_PLUS>1<TMPL_ELSE>0</TMPL_IF>">
                            <TMPL_ELSE>
                                <input id="PROPHIST_PLUS" class="disablesearchmapbit" NAME="DISABLE_PROPHIST_PLUS" type="checkbox" <TMPL_UNLESS NAME=DISABLE_PROPHIST_PLUS>CHECKED</TMPL_UNLESS>> <label for="PROPHIST_PLUS">Property History Plus (GLBA) (DPPA) (<a href="javascript:void(0);" class="source-link" data-helpid="SHOW_PROP_HISTORY_PLUS_REPORT">source</a>)</label><br>
                            </TMPL_IF>
                            </TMPL_IF>
                            <TMPL_IF COMPANY_DISABLE_PROPHIST_SEARCH_INDEX>
                                <INPUT TYPE=HIDDEN NAME="DISABLE_PROPHIST_SEARCH_INDEX" VALUE="<TMPL_IF DISABLE_PROPHIST_SEARCH_INDEX>1<TMPL_ELSE>0</TMPL_IF>">
                            <TMPL_ELSE>
                                <input id="PROPHIST_SEARCH_INDEX" class="disablesearchmapbit" NAME="DISABLE_PROPHIST_SEARCH_INDEX" type="checkbox" <TMPL_UNLESS NAME=DISABLE_PROPHIST_SEARCH_INDEX>CHECKED</TMPL_UNLESS>> <label for="PROPHIST_SEARCH_INDEX">Property History (GLBA) (DPPA) (<a href="javascript:void(0);" class="source-link" data-helpid="SHOW_PROP_HISTORY_REPORT">source</a>)</label><br>
                            </TMPL_IF>

                            <TMPL_IF COMPANY_DISABLE_VERIFICATION_OF_OCCUPANCY>
                                <INPUT TYPE=HIDDEN NAME="DISABLE_VERIFICATION_OF_OCCUPANCY" VALUE="<TMPL_IF DISABLE_VERIFICATION_OF_OCCUPANCY>1<TMPL_ELSE>0</TMPL_IF>">
                            <TMPL_ELSE>
                                <input id="VERIFICATION_OF_OCCUPANCY" class="disablesearchmapbit" NAME="DISABLE_VERIFICATION_OF_OCCUPANCY" type="checkbox" <TMPL_UNLESS NAME=DISABLE_VERIFICATION_OF_OCCUPANCY>CHECKED</TMPL_UNLESS>> <label for="VERIFICATION_OF_OCCUPANCY">Verification of Occupancy (GLBA) (DPPA)</label><br>
                            </TMPL_IF>

                            <TMPL_IF COMPANY_DISABLE_MORTGAGE_FRAUD_REPORT>
                                <INPUT TYPE=HIDDEN NAME="DISABLE_MORTGAGE_FRAUD_REPORT" VALUE="<TMPL_IF DISABLE_MORTGAGE_FRAUD_REPORT>1<TMPL_ELSE>0</TMPL_IF>">
                            <TMPL_ELSE>
                                <input id="MORTGAGE_FRAUD_REPORT" class="disablesearchmapbit" NAME="DISABLE_MORTGAGE_FRAUD_REPORT" type="checkbox" <TMPL_UNLESS NAME=DISABLE_MORTGAGE_FRAUD_REPORT>CHECKED</TMPL_UNLESS>> <label for="MORTGAGE_FRAUD_REPORT">Mortgage Fraud Report (GLBA) (DPPA) (<a href="javascript:void(0);" class="source-link" data-helpid="SHOW_MORTGAGEFRAUD_REPORT">source</a>)</label><br>
                            </TMPL_IF>

                            <TMPL_IF COMPANY_DISABLE_MV>
                                <INPUT TYPE=HIDDEN NAME="DISABLE_MV" VALUE="<TMPL_IF DISABLE_MV>1<TMPL_ELSE>0</TMPL_IF>">
                            <TMPL_ELSE>
                                <input id="MV" class="disablesearchmapbit" NAME="DISABLE_MV" type="checkbox" <TMPL_UNLESS NAME=DISABLE_MV>CHECKED</TMPL_UNLESS>> <label for="MV">Motor Vehicle Registrations (DPPA) (<a href="javascript:void(0);" class="source-link" data-helpid="SHOW_DL_REG">source</a>)</label><br>
                            </TMPL_IF>

                            <TMPL_IF COMPANY_DISABLE_AIRCRAFT>
                                <INPUT TYPE=HIDDEN NAME="DISABLE_AIRCRAFT" VALUE="<TMPL_IF DISABLE_AIRCRAFT>1<TMPL_ELSE>0</TMPL_IF>">
                            <TMPL_ELSE>
                                <input id="AIRCRAFT" class="disablesearchmapbit" NAME="DISABLE_AIRCRAFT" type="checkbox" <TMPL_UNLESS NAME=DISABLE_AIRCRAFT>CHECKED</TMPL_UNLESS>> <label for="AIRCRAFT">Aircraft Registrations (<a href="javascript:void(0);" class="source-link" data-helpid="SHOW_AIRCRAFT">source</a>)</label><br>
                            </TMPL_IF>

                            <TMPL_IF COMPANY_DISABLE_VESSEL>
                                <INPUT TYPE=HIDDEN NAME="DISABLE_VESSEL" VALUE="<TMPL_IF DISABLE_VESSEL>1<TMPL_ELSE>0</TMPL_IF>">
                            <TMPL_ELSE>
                                <input id="VESSEL" class="disablesearchmapbit" NAME="DISABLE_VESSEL" type="checkbox" <TMPL_UNLESS NAME=DISABLE_VESSEL>CHECKED</TMPL_UNLESS>> <label for="VESSEL">Boat Registrations (DPPA) (<a href="javascript:void(0);" class="source-link" data-helpid="SHOW_VESSEL">source</a>)</label><br>
                            </TMPL_IF>

                            <TMPL_IF COMPANY_DISABLE_LOCATOR_REPORT>
                                <INPUT TYPE=HIDDEN NAME="DISABLE_LOCATOR_REPORT" VALUE="<TMPL_IF DISABLE_LOCATOR_REPORT>1<TMPL_ELSE>0</TMPL_IF>">
                            <TMPL_ELSE>
                                <input id="LOCATION_REPORT" class="disablesearchmapbit" NAME="DISABLE_LOCATOR_REPORT" type="checkbox" <TMPL_UNLESS NAME=DISABLE_LOCATOR_REPORT>CHECKED</TMPL_UNLESS>> <label for="LOCATION_REPORT">SmartLinx<sup class="sup-reg-symbol">&reg;</sup> Location Report (<a href="javascript:void(0);" class="source-link" data-helpid="SHOW_PORTAL_LOCATION">source</a>)</label><br>
                            </TMPL_IF>

                        <div class="fl_right"><a href="#top"><i class="fa fa-14 fa-angle-up pos_1 fa-fw redtxt"></i> Top</a></div>
                        <div class="clear"></div>
                    </div>
                </div>
                
                <div class="group_section_data group_fade4">
                    <a name="court"></a>
                    <div class="group_section">
                        <strong><span class="court_icon svg-icon-normal sect_04">Court &amp; Admin Filings</span></strong> 
                        <span class="fl_right"><i class="fa fa-14 fa-chevron-up fa-fw"></i> <i style="display: none;" class="fa fa-14 fa-chevron-down fa-fw"></i></span><span class="clear"></span>
                    </div>
                    <div class="group_section_content">

                            <TMPL_IF COMPANY_DISABLE_BLJ>
                                <INPUT TYPE=HIDDEN NAME="DISABLE_BLJ" VALUE="<TMPL_IF DISABLE_BLJ>1<TMPL_ELSE>0</TMPL_IF>">
                            <TMPL_ELSE>
                                <input id="BLJ" class="disablesearchmapbit" NAME="DISABLE_BLJ" type="checkbox" <TMPL_UNLESS NAME=DISABLE_BLJ>CHECKED</TMPL_UNLESS>> <label for="BLJ">Bankruptcies, Judgments &amp; Liens (<a href="javascript:void(0);" class="source-link" data-helpid="SHOW_BLJ">source</a>)</label><br>
                            </TMPL_IF>

                            <TMPL_IF COMPANY_DISABLE_BANKRUPTCY>
                                <INPUT TYPE=HIDDEN NAME="DISABLE_BANKRUPTCY" VALUE="<TMPL_IF DISABLE_BANKRUPTCY>1<TMPL_ELSE>0</TMPL_IF>">
                            <TMPL_ELSE>
                                <input id="BANKRUPTCY" class="disablesearchmapbit" NAME="DISABLE_BANKRUPTCY" type="checkbox" <TMPL_UNLESS NAME=DISABLE_BANKRUPTCY>CHECKED</TMPL_UNLESS>> <label for="BANKRUPTCY">Bankruptcies (<a href="javascript:void(0);" class="source-link" data-helpid="SHOW_BANKRUPTCY">source</a>)</label><br>
                            </TMPL_IF>

                            <TMPL_IF COMPANY_DISABLE_LIEN>
                                <INPUT TYPE=HIDDEN NAME="DISABLE_LIEN" VALUE="<TMPL_IF DISABLE_LIEN>1<TMPL_ELSE>0</TMPL_IF>">
                            <TMPL_ELSE>
                                <input id="LIEN" class="disablesearchmapbit" NAME="DISABLE_LIEN" type="checkbox" <TMPL_UNLESS NAME=DISABLE_LIEN>CHECKED</TMPL_UNLESS>> <label for="LIEN">Judgments &amp; Tax Liens (<a href="javascript:void(0);" class="source-link" data-helpid="SHOW_LIENS">source</a>)</label><br>
                            </TMPL_IF>

                            <TMPL_IF COMPANY_DISABLE_UCC>
                                <INPUT TYPE=HIDDEN NAME="DISABLE_UCC" VALUE="<TMPL_IF DISABLE_UCC>1<TMPL_ELSE>0</TMPL_IF>">
                            <TMPL_ELSE>
                                <input id="UCC" class="disablesearchmapbit" NAME="DISABLE_UCC" type="checkbox" <TMPL_UNLESS NAME=DISABLE_UCC>CHECKED</TMPL_UNLESS>> <label for="UCC">UCC Liens (<a href="javascript:void(0);" class="source-link" data-helpid="SHOW_UCC">source</a>)</label><br>
                            </TMPL_IF>

                            <TMPL_IF COMPANY_DISABLE_US_CIVIL_CRIMINAL_FILINGS>
                                <INPUT TYPE=HIDDEN NAME="DISABLE_US_CIVIL_CRIMINAL_FILINGS" VALUE="<TMPL_IF DISABLE_US_CIVIL_CRIMINAL_FILINGS>1<TMPL_ELSE>0</TMPL_IF>">
                            <TMPL_ELSE>
                                <input id="US_CIVIL_CRIMINAL_FILINGS" class="disablesearchmapbit" NAME="DISABLE_US_CIVIL_CRIMINAL_FILINGS" type="checkbox" <TMPL_UNLESS NAME=DISABLE_US_CIVIL_CRIMINAL_FILINGS>CHECKED</TMPL_UNLESS>> <label for="US_CIVIL_CRIMINAL_FILINGS">Federal Civil &amp; Criminal Docket Summaries (<a href="javascript:void(0);" class="source-link" data-helpid="SHOW_US_CRIMINAL">source</a>)</label><br>
                            </TMPL_IF>

                            <TMPL_IF COMPANY_DISABLE_STATE_CIVIL_CRIMINAL_FILINGS>
                                <INPUT TYPE=HIDDEN NAME="DISABLE_STATE_CIVIL_CRIMINAL_FILINGS" VALUE="<TMPL_IF DISABLE_STATE_CIVIL_CRIMINAL_FILINGS>1<TMPL_ELSE>0</TMPL_IF>">
                            <TMPL_ELSE>
                                <input id="STATE_CIVIL_CRIMINAL_FILINGS" class="disablesearchmapbit" NAME="DISABLE_STATE_CIVIL_CRIMINAL_FILINGS" type="checkbox" <TMPL_UNLESS NAME=DISABLE_STATE_CIVIL_CRIMINAL_FILINGS>CHECKED</TMPL_UNLESS>> <label for="STATE_CIVIL_CRIMINAL_FILINGS">State Civil &amp; Criminal Filings (<a href="javascript:void(0);" class="source-link" data-helpid="SHOW_STATE_CRIMINAL">source</a>)</label><br>
                            </TMPL_IF>

                            <TMPL_IF COMPANY_DISABLE_CRIM>
                                <INPUT TYPE=HIDDEN NAME="DISABLE_CRIM" VALUE="<TMPL_IF DISABLE_CRIM>1<TMPL_ELSE>0</TMPL_IF>">
                            <TMPL_ELSE>
                                <input id="CRIM" class="disablesearchmapbit" NAME="DISABLE_CRIM" type="checkbox" <TMPL_UNLESS NAME=DISABLE_CRIM>CHECKED</TMPL_UNLESS>> <label for="CRIM">Criminal Records (<a href="javascript:void(0);" class="source-link" data-helpid="SHOW_CRIM">source</a>)</label><br>
                            </TMPL_IF>

                            <TMPL_IF COMPANY_DISABLE_FORECLOSURE>
                                <INPUT TYPE=HIDDEN NAME="DISABLE_FORECLOSURE" VALUE="<TMPL_IF DISABLE_FORECLOSURE>1<TMPL_ELSE>0</TMPL_IF>">
                            <TMPL_ELSE>
                                <input id="FORECLOSURE" class="disablesearchmapbit" NAME="DISABLE_FORECLOSURE" type="checkbox" <TMPL_UNLESS NAME=DISABLE_FORECLOSURE>CHECKED</TMPL_UNLESS>> <label for="FORECLOSURE">Foreclosures (<a href="javascript:void(0);" class="source-link" data-helpid="SHOW_FORECLOSURE">source</a>)</label><br>
                            </TMPL_IF>

                            <TMPL_IF COMPANY_DISABLE_JURY_VERDICTS_AND_SETTLEMENTS>
                                <INPUT TYPE=HIDDEN NAME="DISABLE_JURY_VERDICTS_AND_SETTLEMENTS" VALUE="<TMPL_IF DISABLE_JURY_VERDICTS_AND_SETTLEMENTS>1<TMPL_ELSE>0</TMPL_IF>">
                            <TMPL_ELSE>
                                <input id="JURY_VERDICTS_AND_SETTLEMENTS" class="disablesearchmapbit" NAME="DISABLE_JURY_VERDICTS_AND_SETTLEMENTS" type="checkbox" <TMPL_UNLESS NAME=DISABLE_JURY_VERDICTS_AND_SETTLEMENTS>CHECKED</TMPL_UNLESS>> <label for="JURY_VERDICTS_AND_SETTLEMENTS">Jury Verdicts &amp; Settlements (<a href="javascript:void(0);" class="source-link" data-helpid="SHOW_JURY_VERDICT">source</a>)</label><br>
                            </TMPL_IF>

                            <TMPL_IF COMPANY_DISABLE_CASE_LAW_SEARCH>
                                <INPUT TYPE=HIDDEN NAME="DISABLE_CASE_LAW_SEARCH" VALUE="<TMPL_IF DISABLE_CASE_LAW_SEARCH>1<TMPL_ELSE>0</TMPL_IF>">
                            <TMPL_ELSE>
                                <input id="CASE_LAW_SEARCH" class="disablesearchmapbit" NAME="DISABLE_CASE_LAW_SEARCH" type="checkbox" <TMPL_UNLESS NAME=DISABLE_CASE_LAW_SEARCH>CHECKED</TMPL_UNLESS>> <label for="CASE_LAW_SEARCH">Case Law (<a href="javascript:void(0);" class="source-link" data-helpid="SHOW_CASE_LAW">source</a>)</label><br>
                            </TMPL_IF>

                            <TMPL_IF COMPANY_DISABLE_ACCIDENT>
                                <INPUT TYPE=HIDDEN NAME="DISABLE_ACCIDENT" VALUE="<TMPL_IF DISABLE_ACCIDENT>1<TMPL_ELSE>0</TMPL_IF>">
                            <TMPL_ELSE>
                                <input id="ACCIDENT" class="disablesearchmapbit" NAME="DISABLE_ACCIDENT" type="checkbox" <TMPL_UNLESS NAME=DISABLE_ACCIDENT>CHECKED</TMPL_UNLESS>> <label for="ACCIDENT">Florida Accidents (<a href="javascript:void(0);" class="source-link" data-helpid="SHOW_ACCIDENT">source</a>)</label><br>
                            </TMPL_IF>


                            <TMPL_IF COMPANY_DISABLE_FINANCIAL_SANCTION>
                                <INPUT TYPE=HIDDEN NAME="DISABLE_FINANCIAL_SANCTION" VALUE="<TMPL_IF DISABLE_FINANCIAL_SANCTION>1<TMPL_ELSE>0</TMPL_IF>">
                            <TMPL_ELSE>
                                <input id="FINANCIAL_SANCTION" class="disablesearchmapbit" NAME="DISABLE_FINANCIAL_SANCTION" type="checkbox" <TMPL_UNLESS NAME=DISABLE_FINANCIAL_SANCTION>CHECKED</TMPL_UNLESS>> <label for="FINANCIAL_SANCTION">Mortgage &amp; Financial Service Sanctions (<a href="javascript:void(0);" class="source-link" data-helpid="SHOW_PORTAL_SANCTIONS">source</a>)</label><br>
                            </TMPL_IF>

                            <TMPL_IF COMPANY_DISABLE_SEXPREDATOR>
                                <INPUT TYPE=HIDDEN NAME="DISABLE_SEXPREDATOR" VALUE="<TMPL_IF DISABLE_SEXPREDATOR>1<TMPL_ELSE>0</TMPL_IF>">
                            <TMPL_ELSE>
                                <input id="SEXPREDATOR" class="disablesearchmapbit" NAME="DISABLE_SEXPREDATOR" type="checkbox" <TMPL_UNLESS NAME=DISABLE_SEXPREDATOR>CHECKED</TMPL_UNLESS>> <label for="SEXPREDATOR">Sexual Offenders (<a href="javascript:void(0);" class="source-link" data-helpid="SHOW_SEXPREDATOR">source</a>)</label><br>
                            </TMPL_IF>

                        <div class="fl_right"><a href="#top"><i class="fa fa-14 fa-angle-up pos_1 fa-fw redtxt"></i> Top</a></div>
                        <div class="clear"></div>
                    </div>
                </div>
                
                <div class="group_section_data group_fade5">
                    <a name="news"></a>
                    <div class="group_section">
                        <strong><span class="news_icon svg-icon-normal sect_05">News</span></strong> 
                        <span class="fl_right"><i class="fa fa-14 fa-chevron-up fa-fw"></i> <i style="display: none;" class="fa fa-14 fa-chevron-down fa-fw"></i></span><span class="clear"></span>
                    </div>
                    <div class="group_section_content">
                      <TMPL_UNLESS RESTRICT_LNLP_CONTENT>
                        <TMPL_UNLESS DONT_SHOW_NEWS>
                            <TMPL_IF COMPANY_DISABLE_NEWS>
                              <INPUT TYPE=HIDDEN NAME="DISABLE_NEWS" VALUE="<TMPL_IF DISABLE_NEWS>1<TMPL_ELSE>0</TMPL_IF>">
                            <TMPL_ELSE>
                              <input id="NEWS" class="disablesearchmapbit" NAME="DISABLE_NEWS" type="checkbox" <TMPL_UNLESS NAME=DISABLE_NEWS>CHECKED</TMPL_UNLESS>> <label for="NEWS">News (<a href="javascript:void(0);" class="source-link" data-helpid="SHOW_PORTAL_NEWS">source</a>)</label><br>
                            </TMPL_IF>
                            <TMPL_IF COMPANY_DISABLE_LN_NEGATIVE_NEWS>
                              <INPUT TYPE=HIDDEN NAME="DISABLE_LN_NEGATIVE_NEWS" VALUE="<TMPL_IF DISABLE_LN_NEGATIVE_NEWS>1<TMPL_ELSE>0</TMPL_IF>">
                            <TMPL_ELSE>
                              <input id="LN_NEGATIVE_NEWS" class="disablesearchmapbit" NAME="DISABLE_LN_NEGATIVE_NEWS" type="checkbox" <TMPL_UNLESS NAME=DISABLE_LN_NEGATIVE_NEWS>CHECKED</TMPL_UNLESS>> <label for="LN_NEGATIVE_NEWS">Negative News (<a href="javascript:void(0);" class="source-link" data-helpid="SHOW_NEG_NEWS">source</a>)</label><br>
                            </TMPL_IF>
                            <TMPL_IF COMPANY_DISABLE_DO_NEWS>
                              <INPUT TYPE=HIDDEN NAME="DISABLE_DO_NEWS" VALUE="<TMPL_IF DISABLE_DO_NEWS>1<TMPL_ELSE>0</TMPL_IF>">
                            <TMPL_ELSE>
                              <input id="DO_NEWS" class="disablesearchmapbit" NAME="DISABLE_DO_NEWS" type="checkbox" <TMPL_UNLESS NAME=DISABLE_DO_NEWS>CHECKED</TMPL_UNLESS>> <label for="DO_NEWS">Deaths & Obituaries in the News (<a href="javascript:void(0);" class="source-link" data-helpid="SHOW_DO_NEWS">source</a>)</label><br>
                            </TMPL_IF>
                            <TMPL_IF COMPANY_DISABLE_LN_BANKERS_NEWS>
                              <INPUT TYPE=HIDDEN NAME="DISABLE_LN_BANKERS_NEWS" VALUE="<TMPL_IF DISABLE_LN_BANKERS_NEWS>1<TMPL_ELSE>0</TMPL_IF>">
                            <TMPL_ELSE>
                              <input id="LN_BANKERS_NEWS" class="disablesearchmapbit" NAME="DISABLE_LN_BANKERS_NEWS" type="checkbox" <TMPL_UNLESS NAME=DISABLE_LN_BANKERS_NEWS>CHECKED</TMPL_UNLESS>> <label for="LN_BANKERS_NEWS">Bankers' News (<a href="javascript:void(0);" class="source-link" data-helpid="SHOW_BANK_NEWS">source</a>)</label><br>
                            </TMPL_IF>
                        </TMPL_UNLESS>
                      </TMPL_UNLESS>  
                        
                        <div class="fl_right"><a href="#top"><i class="fa fa-14 fa-angle-up pos_1 fa-fw redtxt"></i> Top</a></div>
                        <div class="clear"></div>
                    </div>
                </div>
                
                <div class="group_section_data group_fade6">
                    <a name="dtsource"></a>
                    <div class="group_section">
                        <strong><span class="direct_to_source_icon svg-icon-normal sect_06">Direct-to-Source Records</span></strong> 
                        <span class="fl_right"><i class="fa fa-14 fa-chevron-up fa-fw"></i> <i style="display: none;" class="fa fa-14 fa-chevron-down fa-fw"></i></span><span class="clear"></span>
                    </div>
                    <div class="group_section_content">
                     <TMPL_IF COMPANY_DISABLE_BUSINESS_ASSURANCE>
                       <INPUT TYPE=HIDDEN NAME="DISABLE_BUSINESS_ASSURANCE" VALUE="<TMPL_IF DISABLE_BUSINESS_ASSURANCE>1<TMPL_ELSE>0</TMPL_IF>">
                     <TMPL_ELSE> 
                        <input id="BUSINESS_ASSURANCE" class="disablesearchmapbit" NAME="DISABLE_BUSINESS_ASSURANCE" type="checkbox" <TMPL_UNLESS NAME=DISABLE_BUSINESS_ASSURANCE>CHECKED</TMPL_UNLESS>> <label for="BUSINESS_ASSURANCE">Business Assurance (<a href="javascript:void(0);" class="source-link" data-helpid="SHOW_BUSINESS_ASSURANCE">source</a>)</label><br>
                     </TMPL_IF>   
                       <!--   <input id="NEWSEARCH" class="disablesearchmapbit" NAME="NEWSEARCH" type="checkbox" disabled="disabled" <TMPL_UNLESS NAME=NEWSEARCH>CHECKED</TMPL_UNLESS>> <label for="NEWSEARCH">Business Assurance Results --- NEW SEARCH -ADD IN Disable Search Map?</label><br> -->                        
                      <TMPL_IF COMPANY_DISABLE_OFFLINE_CIV_CRIM>
                        <INPUT TYPE=HIDDEN NAME="DISABLE_OFFLINE_CIV_CRIM" VALUE="<TMPL_IF DISABLE_OFFLINE_CIV_CRIM>1<TMPL_ELSE>0</TMPL_IF>">
                      <TMPL_ELSE>
                        <input id="OFFLINE_CIV_CRIM" class="disablesearchmapbit" NAME="DISABLE_OFFLINE_CIV_CRIM" type="checkbox" <TMPL_UNLESS NAME=DISABLE_OFFLINE_CIV_CRIM>CHECKED</TMPL_UNLESS>> <label for="OFFLINE_CIV_CRIM">Offline Civil &amp; Criminal Court Records (OCCCR) (<a href="javascript:void(0);" class="source-link" data-helpid="SHOW_OCCCR">source</a>)</label><br>
                      </TMPL_IF>

                        <!-- <input id="NEWSEARCH" class="disablesearchmapbit" NAME="NEWSEARCH" type="checkbox" disabled="disabled" <TMPL_UNLESS NAME=NEWSEARCH>CHECKED</TMPL_UNLESS>> <label for="NEWSEARCH">OCCCR Results --- NEW SEARCH -ADD IN Disable Search Map?</label><br> -->
                        
                        <div class="fl_right"><a href="#top"><i class="fa fa-14 fa-angle-up pos_1 fa-fw redtxt"></i> Top</a></div>
                        <div class="clear"></div>
                    </div>
                </div>
                <TMPL_IF SHOW_REG_COMPLIANCE>
                <div class="group_section_data group_fade7">
                    <a name="regulations"></a>
                    <div class="group_section">
                        <strong><span class="regulations_icon svg-icon-normal sect_07">Regulations &amp; Compliance</span></strong> 
                        <span class="fl_right"><i class="fa fa-14 fa-chevron-up fa-fw"></i> <i style="display: none;" class="fa fa-14 fa-chevron-down fa-fw"></i></span><span class="clear"></span>
                    </div>
                    <div class="group_section_content">
                      
                      <TMPL_IF COMPANY_DISABLE_LN_ADMIN_LAW_DECISIONS>
                        <INPUT TYPE=HIDDEN NAME="DISABLE_LN_ADMIN_LAW_DECISIONS" VALUE="<TMPL_IF DISABLE_LN_ADMIN_LAW_DECISIONS>1<TMPL_ELSE>0</TMPL_IF>">
                      <TMPL_ELSE>
                        <input id="LN_ADMIN_LAW_DECISIONS" class="disablesearchmapbit" NAME="DISABLE_LN_ADMIN_LAW_DECISIONS" type="checkbox" <TMPL_UNLESS NAME=DISABLE_LN_ADMIN_LAW_DECISIONS>CHECKED</TMPL_UNLESS>> <label for="LN_ADMIN_LAW_DECISIONS">Administrative Law Judge Decisions (<a href="javascript:void(0);" class="source-link" data-helpid="SHOW_ADMIN_LAW_DECISIONS">source</a>)</label><br>
                      </TMPL_IF>
                      
                      <TMPL_IF COMPANY_DISABLE_AGENCY_OPINIONS_SEARCH>
                        <INPUT TYPE=HIDDEN NAME="DISABLE_AGENCY_OPINIONS_SEARCH" VALUE="<TMPL_IF DISABLE_AGENCY_OPINIONS_SEARCH>1<TMPL_ELSE>0</TMPL_IF>">
                      <TMPL_ELSE>
                        <input id="AGENCY_OPINIONS_SEARCH" class="disablesearchmapbit" NAME="DISABLE_AGENCY_OPINIONS_SEARCH" type="checkbox" <TMPL_UNLESS NAME=DISABLE_AGENCY_OPINIONS_SEARCH>CHECKED</TMPL_UNLESS>> <label for="AGENCY_OPINIONS_SEARCH">Agency Opinions (<a href="javascript:void(0);" class="source-link" data-helpid="SHOW_AGENCY_OPINIONS">source</a>)</label><br>
                      </TMPL_IF>
                      
                      <TMPL_IF COMPANY_DISABLE_LN_FED_BANKING_CODE>
                        <INPUT TYPE=HIDDEN NAME="DISABLE_LN_FED_BANKING_CODE" VALUE="<TMPL_IF DISABLE_LN_FED_BANKING_CODE>1<TMPL_ELSE>0</TMPL_IF>">
                      <TMPL_ELSE>
                        <input id="LN_FED_BANKING_CODE" class="disablesearchmapbit" NAME="DISABLE_LN_FED_BANKING_CODE" type="checkbox" <TMPL_UNLESS NAME=DISABLE_LN_FED_BANKING_CODE>CHECKED</TMPL_UNLESS>> <label for="LN_FED_BANKING_CODE">Code of Federal Regulations - Banking Titles 12 & 31 (<a href="javascript:void(0);" class="source-link" data-helpid="SHOW_USCS_BANKS">source</a>)</label><br>
                      </TMPL_IF>
                      
                      <TMPL_IF COMPANY_DISABLE_LN_FED_REGISTER>
                        <INPUT TYPE=HIDDEN NAME="DISABLE_LN_FED_REGISTER" VALUE="<TMPL_IF DISABLE_LN_FED_REGISTER>1<TMPL_ELSE>0</TMPL_IF>">
                      <TMPL_ELSE>
                        <input id="LN_FED_REGISTER" class="disablesearchmapbit" NAME="DISABLE_LN_FED_REGISTER" type="checkbox" <TMPL_UNLESS NAME=DISABLE_LN_FED_REGISTER>CHECKED</TMPL_UNLESS>> <label for="LN_FED_REGISTER">Code of Federal Regulations &amp; Federal Register (<a href="javascript:void(0);" class="source-link" data-helpid="SHOW_FED_REGISTER">source</a>)</label><br>
                      </TMPL_IF>
                      
                      <TMPL_IF COMPANY_DISABLE_LN_CONG_RECORD>
                        <INPUT TYPE=HIDDEN NAME="DISABLE_LN_CONG_RECORD" VALUE="<TMPL_IF DISABLE_LN_CONG_RECORD>1<TMPL_ELSE>0</TMPL_IF>">
                      <TMPL_ELSE>
                        <input id="LN_CONG_RECORD" class="disablesearchmapbit" NAME="DISABLE_LN_CONG_RECORD" type="checkbox" <TMPL_UNLESS NAME=DISABLE_LN_CONG_RECORD>CHECKED</TMPL_UNLESS>> <label for="LN_CONG_RECORD">Congressional Record (<a href="javascript:void(0);" class="source-link" data-helpid="SHOW_CONG_RECORD">source</a>)</label><br>
                      </TMPL_IF>
                      
                      <TMPL_IF COMPANY_DISABLE_LN_FDIC_RES_TRUST_CORP>
                        <INPUT TYPE=HIDDEN NAME="DISABLE_LN_FDIC_RES_TRUST_CORP" VALUE="<TMPL_IF DISABLE_LN_FDIC_RES_TRUST_CORP>1<TMPL_ELSE>0</TMPL_IF>">
                      <TMPL_ELSE>
                        <input id="LN_FDIC_RES_TRUST_CORP" class="disablesearchmapbit" NAME="DISABLE_LN_FDIC_RES_TRUST_CORP" type="checkbox" <TMPL_UNLESS NAME=DISABLE_LN_FDIC_RES_TRUST_CORP>CHECKED</TMPL_UNLESS>> <label for="LN_FDIC_RES_TRUST_CORP">FDIC &amp; Resolution Trust Corp (<a href="javascript:void(0);" class="source-link" data-helpid="SHOW_FDIC">source</a>)</label><br>
                      </TMPL_IF>
                      
                      <TMPL_IF COMPANY_DISABLE_LN_FEDERAL_RESERVE>
                        <INPUT TYPE=HIDDEN NAME="DISABLE_LN_FEDERAL_RESERVE" VALUE="<TMPL_IF DISABLE_LN_FEDERAL_RESERVE>1<TMPL_ELSE>0</TMPL_IF>">
                      <TMPL_ELSE>
                        <input id="LN_FEDERAL_RESERVE" class="disablesearchmapbit" NAME="DISABLE_LN_FEDERAL_RESERVE" type="checkbox" <TMPL_UNLESS NAME=DISABLE_LN_FEDERAL_RESERVE>CHECKED</TMPL_UNLESS>> <label for="LN_FEDERAL_RESERVE">Federal Reserve (<a href="javascript:void(0);" class="source-link" data-helpid="SHOW_LN_FEDERAL_RESERVE">source</a>)</label><br>
                      </TMPL_IF>
                      
                      <TMPL_IF COMPANY_DISABLE_LN_GAO_REPORTS>
                        <INPUT TYPE=HIDDEN NAME="DISABLE_LN_GAO_REPORTS" VALUE="<TMPL_IF DISABLE_LN_GAO_REPORTS>1<TMPL_ELSE>0</TMPL_IF>">
                      <TMPL_ELSE>
                        <input id="LN_GAO_REPORTS" class="disablesearchmapbit" NAME="DISABLE_LN_GAO_REPORTS" type="checkbox" <TMPL_UNLESS NAME=DISABLE_LN_GAO_REPORTS>CHECKED</TMPL_UNLESS>> <label for="LN_GAO_REPORTS">GAO Reports &amp; Testimonies (<a href="javascript:void(0);" class="source-link" data-helpid="SHOW_LN_GAO_REPORTS">source</a>)</label><br>
                      </TMPL_IF>
                      
                      <TMPL_IF COMPANY_DISABLE_LN_COMP_CURRENCY>
                        <INPUT TYPE=HIDDEN NAME="DISABLE_LN_COMP_CURRENCY" VALUE="<TMPL_IF DISABLE_LN_COMP_CURRENCY>1<TMPL_ELSE>0</TMPL_IF>">
                      <TMPL_ELSE>
                        <input id="LN_COMP_CURRENCY" class="disablesearchmapbit" NAME="DISABLE_LN_COMP_CURRENCY" type="checkbox" <TMPL_UNLESS NAME=DISABLE_LN_COMP_CURRENCY>CHECKED</TMPL_UNLESS>> <label for="LN_COMP_CURRENCY">Office of the Comptroller of the Currency (<a href="javascript:void(0);" class="source-link" data-helpid="SHOW_LN_COMPTROLLER_CURRENCY">source</a>)</label><br>
                      </TMPL_IF>
                      
                      <TMPL_IF COMPANY_DISABLE_LN_THRIFT_SUPERVISION>
                        <INPUT TYPE=HIDDEN NAME="DISABLE_LN_THRIFT_SUPERVISION" VALUE="<TMPL_IF DISABLE_LN_THRIFT_SUPERVISION>1<TMPL_ELSE>0</TMPL_IF>">
                      <TMPL_ELSE>
                        <input id="LN_THRIFT_SUPERVISION" class="disablesearchmapbit" NAME="DISABLE_LN_THRIFT_SUPERVISION" type="checkbox" <TMPL_UNLESS NAME=DISABLE_LN_THRIFT_SUPERVISION>CHECKED</TMPL_UNLESS>> <label for="LN_THRIFT_SUPERVISION">Office of Thrift Supervision (Archive) (<a href="javascript:void(0);" class="source-link" data-helpid="SHOW_OFFICE_THRIFT_SUPERVISIONS">source</a>)</label><br>
                      </TMPL_IF>
                      
                      <TMPL_IF COMPANY_DISABLE_LN_US_PUBLIC_LAWS>
                        <INPUT TYPE=HIDDEN NAME="DISABLE_LN_US_PUBLIC_LAWS" VALUE="<TMPL_IF DISABLE_LN_US_PUBLIC_LAWS>1<TMPL_ELSE>0</TMPL_IF>">
                      <TMPL_ELSE>
                        <input id="LN_US_PUBLIC_LAWS" class="disablesearchmapbit" NAME="DISABLE_LN_US_PUBLIC_LAWS" type="checkbox" <TMPL_UNLESS NAME=DISABLE_LN_US_PUBLIC_LAWS>CHECKED</TMPL_UNLESS>> <label for="LN_US_PUBLIC_LAWS">US Public Laws (<a href="javascript:void(0);" class="source-link" data-helpid="SHOW_LN_US_PUBLIC_LAWS">source</a>)</label><br>
                      </TMPL_IF>
                      
                      <TMPL_IF COMPANY_DISABLE_LN_BANKS_TITLE_12>
                        <INPUT TYPE=HIDDEN NAME="DISABLE_LN_BANKS_TITLE_12" VALUE="<TMPL_IF DISABLE_LN_BANKS_TITLE_12>1<TMPL_ELSE>0</TMPL_IF>">
                      <TMPL_ELSE>
                        <input id="LN_BANKS_TITLE_12" class="disablesearchmapbit" NAME="DISABLE_LN_BANKS_TITLE_12" type="checkbox" <TMPL_UNLESS NAME=DISABLE_LN_BANKS_TITLE_12>CHECKED</TMPL_UNLESS>> <label for="LN_BANKS_TITLE_12">USCS - Banks & Banking - Title 12 (<a href="javascript:void(0);" class="source-link" data-helpid="SHOW_USCS_BANKS">source</a>)</label><br>
                      </TMPL_IF>
                      
                      <div class="fl_right"><a href="#top"><i class="fa fa-14 fa-angle-up pos_1 fa-fw redtxt"></i> Top</a></div>
                      <div class="clear"></div>
                    </div>
                </div>
                </TMPL_IF>
                <div class="group_section_data group_fade8">
                    <a name="international"></a>
                    <div class="group_section">
                        <strong><span class="international_icon svg-icon-normal sect_08">International</span></strong> 
                        <span class="fl_right"><i class="fa fa-14 fa-chevron-up fa-fw"></i> <i style="display: none;" class="fa fa-14 fa-chevron-down fa-fw"></i></span><span class="clear"></span>
                    </div>
                    <div class="group_section_content">
                      <TMPL_IF COMPANY_DISABLE_ALLCOMPANY_SEARCH_INDEX>
                        <INPUT TYPE=HIDDEN NAME="DISABLE_ALLCOMPANY_SEARCH_INDEX" VALUE="<TMPL_IF DISABLE_ALLCOMPANY_SEARCH_INDEX>1<TMPL_ELSE>0</TMPL_IF>">
                      <TMPL_ELSE>
                        <input id="ALLCOMPANY_SEARCH_INDEX" class="disablesearchmapbit" NAME="DISABLE_ALLCOMPANY_SEARCH_INDEX" type="checkbox" <TMPL_UNLESS NAME=DISABLE_ALLCOMPANY_SEARCH_INDEX>CHECKED</TMPL_UNLESS>> <label for="ALLCOMPANY_SEARCH_INDEX">All Company Information (excluding Investext &amp; D&amp;B) (<a href="javascript:void(0);" class="source-link" data-helpid="SHOW_ALLCOMPANY">source</a>)</label><br>
                      </TMPL_IF>

                      <TMPL_IF COMPANY_DISABLE_CANADIAN_PHONES>
                        <INPUT TYPE=HIDDEN NAME="DISABLE_CANADIAN_PHONES" VALUE="<TMPL_IF DISABLE_CANADIAN_PHONES>1<TMPL_ELSE>0</TMPL_IF>">
                      <TMPL_ELSE>
                        <input id="CANADIAN_PHONES" class="disablesearchmapbit" NAME="DISABLE_CANADIAN_PHONES" type="checkbox" <TMPL_UNLESS NAME=DISABLE_CANADIAN_PHONES>CHECKED</TMPL_UNLESS>> <label for="CANADIAN_PHONES">Canadian Phones (<a href="javascript:void(0);" class="source-link" data-helpid="SHOW_CANADIAN_PHONE">source</a>)</label><br>
                      </TMPL_IF>

                      <TMPL_IF COMPANY_DISABLE_COUNTRY_RISK_REPORT>
                        <INPUT TYPE=HIDDEN NAME="DISABLE_COUNTRY_RISK_REPORT" VALUE="<TMPL_IF DISABLE_COUNTRY_RISK_REPORT>1<TMPL_ELSE>0</TMPL_IF>">
                      <TMPL_ELSE>
                        <input id="COUNTRY_RISK_REPORT" class="disablesearchmapbit" NAME="DISABLE_COUNTRY_RISK_REPORT" type="checkbox" <TMPL_UNLESS NAME=DISABLE_COUNTRY_RISK_REPORT>CHECKED</TMPL_UNLESS>> <label for="COUNTRY_RISK_REPORT">Country Risk Reports (<a href="javascript:void(0);" class="source-link" data-helpid="SHOW_COUNTRY_RISK_REPORT">source</a>)</label><br>
                      </TMPL_IF>

                      <TMPL_IF RA_ENABLE_IIDI>
                        <input id="INSTANTID_INTERNATIONAL" class="disablesearchmapbit" NAME="DISABLE_INSTANTID_INTERNATIONAL" type="checkbox" <TMPL_UNLESS NAME=DISABLE_INSTANTID_INTERNATIONAL>CHECKED</TMPL_UNLESS>> <label for="INSTANTID_INTERNATIONAL">InstantID<sup class="sup-reg-symbol">&reg;</sup> International</label><br>
                      </TMPL_IF>

                      <TMPL_UNLESS HIDE_PASSPORT_SEARCH> 
                        <TMPL_IF COMPANY_DISABLE_PASSPORT_SEARCH>
                          <INPUT TYPE=HIDDEN NAME="DISABLE_PASSPORT_SEARCH" VALUE="<TMPL_IF DISABLE_PASSPORT_SEARCH>1<TMPL_ELSE>0</TMPL_IF>">
                        <TMPL_ELSE>
                          <input id="PASSPORT_SEARCH" class="disablesearchmapbit" NAME="DISABLE_PASSPORT_SEARCH" type="checkbox" <TMPL_UNLESS NAME=DISABLE_PASSPORT_SEARCH>CHECKED</TMPL_UNLESS>> <label for="PASSPORT_SEARCH">Passport Validation (GLBA) (DPPA) (<a href="javascript:void(0);" class="source-link" data-helpid="SHOW_PASSPORT_VALIDATION">source</a>)</label><br>
                        </TMPL_IF>
                      </TMPL_UNLESS>

                      <TMPL_IF RA_ALLOW_PORTAL_WORLD_COMPLIANCE>
                         <input id="WORLDCHECK_SEARCH_INDEX" class="disablesearchmapbit" NAME="DISABLE_WORLDCHECK_SEARCH_INDEX" type="checkbox" <TMPL_UNLESS NAME=DISABLE_WORLDCHECK_SEARCH_INDEX>CHECKED</TMPL_UNLESS>> <label for="WORLDCHECK_SEARCH_INDEX">WorldCompliance</label><br>
                      <TMPL_ELSE>
                        <INPUT TYPE=HIDDEN NAME="DISABLE_WORLDCHECK_SEARCH_INDEX" VALUE="<TMPL_IF DISABLE_WORLDCHECK_SEARCH_INDEX>1<TMPL_ELSE>0</TMPL_IF>">
                      </TMPL_IF>
                      
                      <div class="fl_right"><a href="#top"><i class="fa fa-14 fa-angle-up pos_1 fa-fw redtxt"></i> Top</a></div>
                      <div class="clear"></div>
                    </div>
                </div>
                
                <div class="group_section_data group_fade9">
                    <a name="authentication"></a>
                    <div class="group_section">
                        <strong><span class="authentication_services_icon svg-icon-normal sect_09">Authentications Services</span></strong> 
                        <span class="fl_right"><i class="fa fa-14 fa-chevron-up fa-fw"></i> <i style="display: none;" class="fa fa-14 fa-chevron-down fa-fw"></i></span><span class="clear"></span>
                    </div>
                    <div class="group_section_content">
                      <TMPL_IF RA_ENABLE_PORTAL_IIDQA>
                      <TMPL_IF COMPANY_DISABLE_KBA>
                        <INPUT TYPE=HIDDEN NAME="DISABLE_KBA" VALUE="<TMPL_IF DISABLE_KBA>1<TMPL_ELSE>0</TMPL_IF>">
                      <TMPL_ELSE>
                        <input id="KBA" class="disablesearchmapbit" NAME="DISABLE_KBA" type="checkbox" <TMPL_UNLESS NAME=DISABLE_KBA>CHECKED</TMPL_UNLESS>> <label for="KBA">InstantID<sup class="sup-reg-symbol">&reg;</sup> Q&amp;A</label><br>
                      </TMPL_IF>
                      </TMPL_IF>
                      <TMPL_IF RA_ENABLE_PORTAL_OTP>
                        <TMPL_IF COMPANY_DISABLE_OTP>
                          <INPUT TYPE=HIDDEN NAME="DISABLE_OTP" VALUE="<TMPL_IF DISABLE_OTP>1<TMPL_ELSE>0</TMPL_IF>">
                        <TMPL_ELSE>
                          <input id="OTP" class="disablesearchmapbit" NAME="DISABLE_OTP" type="checkbox" <TMPL_UNLESS NAME=DISABLE_OTP>CHECKED</TMPL_UNLESS>> <label for="OTP">One Time Password</label><br>
                        </TMPL_IF>
                      </TMPL_IF>
                        <div class="fl_right"><a href="#top"><i class="fa fa-14 fa-angle-up pos_1 fa-fw redtxt"></i> Top</a></div>
                        <div class="clear"></div>
                    </div>
                </div>
                <TMPL_IF ENABLE_CREDIT_PURSUIT>                
                <div class="group_section_data group_fade10">
                    <a name="optional"></a>
                    <div class="group_section">
                        <i class="fa fa-20 fa-credit-card pos2 fa-fw"></i> <strong><span class="sect_10">LexisNexis® Credit Pursuit (FCRA)</span></strong> 
                        <span class="fl_right"><i class="fa fa-14 fa-chevron-up fa-fw"></i> <i style="display: none;" class="fa fa-14 fa-chevron-down fa-fw"></i></span><span class="clear"></span>
                    </div>
                    <div class="group_section_content">
                        <TMPL_IF COMPANY_DISABEL_FDW_FCRA_CREDIT_PURSUIT_EQUIFAX_FULL>
                          <INPUT TYPE=HIDDEN NAME="DISABLE_FDW_FCRA_CREDIT_PURSUIT_EQUIFAX_FULL" VALUE="<TMPL_IF DISABLE_FDW_FCRA_CREDIT_PURSUIT_EQUIFAX_FULL>1<TMPL_ELSE>0</TMPL_IF>">
                        <TMPL_ELSE>
                          <input id="FDW_FCRA_CREDIT_PURSUIT_EQUIFAX_FULL" class="disablesearchmapbit" NAME="DISABLE_FDW_FCRA_CREDIT_PURSUIT_EQUIFAX_FULL" type="checkbox" <TMPL_UNLESS NAME=DISABLE_FDW_FCRA_CREDIT_PURSUIT_EQUIFAX_FULL>CHECKED</TMPL_UNLESS>> <label for="FDW_FCRA_CREDIT_PURSUIT_EQUIFAX_FULL">Equifax<sup class="sup-reg-symbol">&reg;</sup></label><br>
                        </TMPL_IF>
                        
                        <TMPL_IF COMPANY_DISABLE_FDW_FCRA_CREDIT_PURSUIT_EQUIFAX_CONDENSED>
                          <INPUT TYPE=HIDDEN NAME="DISABLE_FDW_FCRA_CREDIT_PURSUIT_EQUIFAX_CONDENSED" VALUE="<TMPL_IF DISABLE_FDW_FCRA_CREDIT_PURSUIT_EQUIFAX_CONDENSED>1<TMPL_ELSE>0</TMPL_IF>">
                        <TMPL_ELSE>
                          <input id="FDW_FCRA_CREDIT_PURSUIT_EQUIFAX_CONDENSED" class="disablesearchmapbit" NAME="DISABLE_FDW_FCRA_CREDIT_PURSUIT_EQUIFAX_CONDENSED" type="checkbox" <TMPL_UNLESS NAME=DISABLE_FDW_FCRA_CREDIT_PURSUIT_EQUIFAX_CONDENSED>CHECKED</TMPL_UNLESS>> <label for="FDW_FCRA_CREDIT_PURSUIT_EQUIFAX_CONDENSED">Equifax<sup class="sup-reg-symbol">&reg;</sup> Condensed Credit</label><br>
                        </TMPL_IF>

                        <TMPL_IF COMPANY_DISABLE_FDW_FCRA_CREDIT_PURSUIT_FULL>
                          <INPUT TYPE=HIDDEN NAME="DISABLE_FDW_FCRA_CREDIT_PURSUIT_FULL" VALUE="<TMPL_IF DISABLE_FDW_FCRA_CREDIT_PURSUIT_FULL>1<TMPL_ELSE>0</TMPL_IF>">
                        <TMPL_ELSE>
                          <input id="FDW_FCRA_CREDIT_PURSUIT_FULL" class="disablesearchmapbit" NAME="DISABLE_FDW_FCRA_CREDIT_PURSUIT_FULL" type="checkbox" <TMPL_UNLESS NAME=DISABLE_FDW_FCRA_CREDIT_PURSUIT_FULL>CHECKED</TMPL_UNLESS>> <label for="FDW_FCRA_CREDIT_PURSUIT_FULL">TransUnion<sup class="sup-reg-symbol">&reg;</sup></label><br>
                        </TMPL_IF>

                        <TMPL_IF COMPANY_DISABLE_FDW_FCRA_CREDIT_PURSUIT_CONDENSED>
                          <INPUT TYPE=HIDDEN NAME="DISABLE_FDW_FCRA_CREDIT_PURSUIT_CONDENSED" VALUE="<TMPL_IF DISABLE_FDW_FCRA_CREDIT_PURSUIT_CONDENSED>1<TMPL_ELSE>0</TMPL_IF>">
                        <TMPL_ELSE>
                          <input id="FDW_FCRA_CREDIT_PURSUIT_CONDENSED" class="disablesearchmapbit" NAME="DISABLE_FDW_FCRA_CREDIT_PURSUIT_CONDENSED" type="checkbox" <TMPL_UNLESS NAME=DISABLE_FDW_FCRA_CREDIT_PURSUIT_CONDENSED>CHECKED</TMPL_UNLESS>> <label for="FDW_FCRA_CREDIT_PURSUIT_CONDENSED">TransUnion<sup class="sup-reg-symbol">&reg;</sup> Condensed Credit</label><br>
                        </TMPL_IF>

                      <div class="fl_right"><a href="#top"><i class="fa fa-14 fa-angle-up pos_1 fa-fw redtxt"></i> Top</a></div>
                      <div class="clear"></div>
                    </div>
                </div>
                </TMPL_IF>                
                <div class="group_section_data group_fade11">
                    <a name="optional"></a>
                    <div class="group_section">
                        <strong><span class="optional_group_icon svg-icon-normal sect_11">Optional Group Selections</span></strong>
                        <span class="fl_right"><i class="fa fa-14 fa-chevron-up fa-fw"></i> <i style="display: none;" class="fa fa-14 fa-chevron-down fa-fw"></i></span><span class="clear"></span>
                    </div>
                    <div class="group_section_content">

                      <div class="group_section_dppa"><label id="dppa_text" for="dppa_option">DPPA:</label></div>
                      <TMPL_IF DPPA_WARNING>
                      <br>
                      <div class="group_section_dppa"><span class="redtxt"><TMPL_VAR DPPA_WARNING></span></div>
                      </TMPL_IF>
                      <select id="dppa_option" aria-labelledby="dppa_text dppa_hint" name="DPPA_GRP">
                        <option value="">Selection</option>
                        <TMPL_LOOP WEB20_DPPA_LOOP>
                          <option value="<TMPL_VAR WEB20_DPPA_PURPOSE>"><TMPL_VAR DPPA_SEQUENCE>. <TMPL_VAR DPPA_DESC></option>
                        </TMPL_LOOP>
                      </select> <span id="dppa_hint">(Make a selection to enforce a DPPA option for this group.)</span><br>
              
                      <div class="group_section_dppa"><label for="glba_option" id="glba_text">GLBA:</label></div>
                      <TMPL_IF GLBA_WARNING>
                      <br>
                      <div class="group_section_dppa"><span class="redtxt"><TMPL_VAR GLBA_WARNING></span></div>
                      </TMPL_IF>
                      <select id="glba_option" aria-labelledby="glba_text glba_hint" name="GLBA_GRP">
                        <option value="">Selection</option>
                        <TMPL_LOOP WEB20_GLB_LOOP>
                          <option value="<TMPL_VAR WEB20_GLB_PURPOSE>"><TMPL_VAR GLB_SEQUENCE>. <TMPL_VAR GLB_DESC></option>
                        </TMPL_LOOP>
                      </select> 
                      <span id="glba_hint">(Make a selection to enforce a GLBA option for this group.)</span><br>
                      <TMPL_IF SHOW_DMF_PURPOSE>
                      <div class="group_section_dppa"><label for="dmf_option" id="dmf_text">DMF:</label></div>
                      <TMPL_IF DMF_WARNING>
                      <br>
                      <div class="group_section_dppa"><span class="redtxt"><TMPL_VAR DMF_WARNING></span></div>
                      </TMPL_IF>
                      <select id="dmf_option" aria-labelledby="dmf_text dmf_hint" name="DMF_GRP">
                        <option value="">Selection</option>
                        
                          <TMPL_IF DMF_PURPOSE_LEVEL_11>
                            <option value="10">1. Fraud Prevention Interest</option>
                            <option value="01">2. Business Purpose</option>
                          <TMPL_ELSE>
                            <TMPL_IF DMF_PURPOSE_LEVEL_10>
                              <option value="10">1. Fraud Prevention Interest</option>
                            </TMPL_IF>  
                            <TMPL_IF DMF_PURPOSE_LEVEL_01>
                              <option value="01">2. Business Purpose</option>
                            </TMPL_IF>  
                          </TMPL_IF>
                      </select> <span id="dmf_hint">(Make a selection to enforce a DMF option for this group.)</span><br>
                      </TMPL_IF>              
                      <div class="group_section_dppa"><label for="ref_id">Reference ID:</label></div> 
                      <input id="ref_id" name="REFERENCE_ID" value="<TMPL_VAR NAME=REFERENCE_ID>" type="text"><br>
              
                      <div class="group_section_dppa"><label for="ref_max_length">Reference ID Max Length:</label></div>
                      <select<TMPL_IF REFERENCE_ID> disabled="disabled"</TMPL_IF> class="reference_group" id="ref_max_length" name="REF_ID_MAX_LENGTH" onChange="set_min_length()">
                        <TMPL_LOOP NAME=REF_ID_MAX_LOOP>
                         <option value="<TMPL_VAR REF_ID_VALUE>" <TMPL_IF REF_ID_SELECTED>SELECTED="selected"</TMPL_IF>><TMPL_VAR REF_ID_TEXT></option>
                        </TMPL_LOOP>
                      </select><br>

                      <div class="group_section_dppa"><label for="ref_min_length">Reference ID Min Length:</label></div>
                      <select<TMPL_IF REFERENCE_ID> disabled="disabled"</TMPL_IF> class="reference_group" id="ref_min_length" name="REF_ID_MIN_LENGTH">
                        <TMPL_LOOP NAME=REF_ID_MIN_LOOP>
                         <option value="<TMPL_VAR REF_ID_VALUE>" <TMPL_IF REF_ID_SELECTED>SELECTED="selected"</TMPL_IF>><TMPL_VAR REF_ID_TEXT></option>
                        </TMPL_LOOP>
                      </select><br>

                      <div class="group_section_dppa"><label for="ref_type">Reference ID Type:</label></div>
                      <select<TMPL_IF REFERENCE_ID> disabled="disabled"</TMPL_IF> class="reference_group" id="ref_type" name="REFERENCE_CODE_ID_TYPE">
                         <option value="1">Any Valid Character</option>
                         <option value="2">Can use any letter A-Z and a-z</option>
                         <option value="3">Can use any numeric digit 0-9</option>
                         <option value="4">Any letter or number A-Z, a-z, and 0-9</option>
                      </select><br>
                      <div class="group_section_dppa"><span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></div>
                      <input<TMPL_IF REFERENCE_ID> disabled="disabled"</TMPL_IF> id="require_ref" name="REQUIRE_REF_CODE" class="tagtable reference_group" type="checkbox" <TMPL_IF NAME=REQUIRE_REF_CODE>CHECKED</TMPL_IF>> <label for="require_ref">Reference ID Mandatory</label><br>
                      <input id="downgrd_usr" name="DOWNGRADE_USER_TO_5B" class="tagtable" type="checkbox" <TMPL_IF NAME=DOWNGRADE_USER_TO_5B>CHECKED</TMPL_IF>> <label for="downgrd_usr">Downgrade 5A to 5B</label><br>
                      <input id="instant_po_box" name="INSTANT_ID_PO_BOX" class="tagtable" type="checkbox" <TMPL_IF NAME=INSTANT_ID_PO_BOX>CHECKED</TMPL_IF>> <label for="instant_po_box">Instant ID PO Box Compliance</label><br>
                      <input id="non_gov_dl_ds" name="NON_GOV_DL_DATA_SOURCES" class="tagtable" type="checkbox" <TMPL_IF MANAGE_UPDATE_GROUP><TMPL_IF NAME=NON_GOV_DL_DATA_SOURCES>CHECKED</TMPL_IF><TMPL_ELSE>CHECKED</TMPL_IF>> <label for="non_gov_dl_ds">Non-Governmental DL Data Sources (<a href="javascript:void(0);" class="source-link" data-helpid="SHOW_DL_REG">source</a>)</label><br>                      
                      <input id="SEARCH_BANKRUPTCIES" name="SEARCH_BANKRUPTCIES" class="tagtable" type="checkbox" <TMPL_IF MANAGE_UPDATE_GROUP><TMPL_IF NAME=SEARCH_BANKRUPTCIES>CHECKED</TMPL_IF><TMPL_ELSE>CHECKED</TMPL_IF>> <label for="SEARCH_BANKRUPTCIES">Search Bankruptcies (<a href="javascript:void(0);" class="source-link" data-helpid="SHOW_BANKRUPTCY">source</a>)</label><br>
                      <input id="INCLUDE_BANKRUPTCY_CHECK" name="INCLUDE_BANKRUPTCY_CHECK" class="tagtable" type="checkbox" <TMPL_IF NAME=INCLUDE_BANKRUPTCY_CHECK>CHECKED</TMPL_IF>> <label for="INCLUDE_BANKRUPTCY_CHECK">Unconditionally Include Bankruptcy Check (<a href="javascript:void(0);" class="source-link" data-helpid="SHOW_BANCKRUPTCY">source</a>)</label><br>                      
                      <input id="SHOW_HIDDEN_SEARCHES" name="SHOW_HIDDEN_SEARCHES" class="tagtable" type="checkbox" <TMPL_IF MANAGE_UPDATE_GROUP><TMPL_IF NAME=SHOW_HIDDEN_SEARCHES>CHECKED</TMPL_IF><TMPL_ELSE>CHECKED</TMPL_IF>> <label for="SHOW_HIDDEN_SEARCHES">Show Hidden Searches to Users</label><br>                     
                      <input id="WAF_FROM_SEARCH_RESULTS" name="WAF_FROM_SEARCH_RESULTS" class="tagtable" type="checkbox" <TMPL_IF MANAGE_UPDATE_GROUP><TMPL_IF NAME=WAF_FROM_SEARCH_RESULTS>CHECKED</TMPL_IF><TMPL_ELSE>CHECKED</TMPL_IF>> <label for="WAF_FROM_SEARCH_RESULTS">Enable We Also Found from some search results</label><br>                       
                      <input id="DISPLAY_SAMPLE_REPORTS" name="DISPLAY_SAMPLE_REPORTS" class="tagtable" type="checkbox" <TMPL_IF MANAGE_UPDATE_GROUP><TMPL_IF NAME=DISPLAY_SAMPLE_REPORTS>CHECKED</TMPL_IF><TMPL_ELSE>CHECKED</TMPL_IF>> <label for="DISPLAY_SAMPLE_REPORTS">Enable display sample reports</label><br>
<!--                  Per PORTAL-12857, commenting out this fraud alert code until release 2
                       <div class="group_section_dppa"><label for="frd_alert">Fraud Alerts:</label></div>
                      <select id="frd_alert" name="LN_FRAUD_ALERTS">
                         <option value="Hide Fraud Alert Checkbox">Hide Fraud Alert Checkbox</option>
                         <option value="Show Fraud Alert Checkbox">Show Fraud Alert Checkbox</option>
                         <option value="Always Include Fraud Alerts">Always Include Fraud Alerts</option>
                      </select><br> -->
                      <TMPL_IF IS_SSO_ALLOWED>                      
                      <input id="FORCE_SSO" name="FORCE_SSO" class="tagtable" type="checkbox" <TMPL_IF NAME=FORCE_SSO>CHECKED</TMPL_IF>> <label for="FORCE_SSO">Force SSO</label><br>                      
                      <div class="group_section_dppa"><label for="force_sso_dt">Force SSO Date:</label></div> 
                      <input id="force_sso_dt" placeholder="MM/DD/YYYY" name="FORCE_SSO_DATE" value="<TMPL_VAR NAME=FORCE_SSO_DATE>" type="text"><br>
                      </TMPL_IF>
                      <TMPL_UNLESS COMPANY_SUPPRESSPERSONALMEDICAL>
                      <input id="SUPPRESSPERSONALMEDICAL" name="SUPPRESSPERSONALMEDICAL" class="tagtable" type="checkbox" <TMPL_IF NAME=SUPPRESSPERSONALMEDICAL>CHECKED</TMPL_IF>> <label for="SUPPRESSPERSONALMEDICAL">Suppress Personal/Medical Info about Person</label><br>
                      </TMPL_UNLESS>
                      <div class="fl_right"><a href="#top"><i class="fa fa-14 fa-angle-up pos_1 fa-fw redtxt"></i> Top</a></div>
                      <div class="clear"></div>

                    </div>
                </div>
                
                <div class="group_section_data group_fade12">
                    <a name="reports"></a>
                    <div class="group_section">
                        <strong><span class="document-icon svg-icon-normal sect_12">Reports</span></strong>
                        <span class="fl_right"><i class="fa fa-14 fa-chevron-up fa-fw"></i> <i style="display: none;" class="fa fa-14 fa-chevron-down fa-fw"></i></span><span class="clear"></span>
                    </div>
                    <div class="group_section_content">
                        <TMPL_IF RA_ENABLE_SOCIAL_NETWORK_REPORT>
                          <TMPL_IF COMPANY_DISABLE_SOC_REPORT>
                            <INPUT TYPE=HIDDEN NAME="DISABLE_SOC_REPORT" VALUE="<TMPL_IF DISABLE_SOC_REPORT>1<TMPL_ELSE>0</TMPL_IF>">
                          <TMPL_ELSE>
                            <input id="SOC_REPORT" class="disablesearchmapbit" NAME="DISABLE_SOC_REPORT" type="checkbox" <TMPL_UNLESS NAME=DISABLE_SOC_REPORT>CHECKED</TMPL_UNLESS>> <label for="SOC_REPORT">Social Network Report (<a href="javascript:void(0);" class="source-link" data-helpid="SHOW_EMAIL">source</a>)</label><br>
                          </TMPL_IF>
                        </TMPL_IF>
                        <div class="fl_right"><a href="#top"><i class="fa fa-14 fa-angle-up pos_1 fa-fw redtxt"></i> Top</a></div>
                        <div class="clear"></div>
                    </div>
                </div>
