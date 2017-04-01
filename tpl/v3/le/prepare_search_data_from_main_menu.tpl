<div id="primary_sections_data" style="display:none;">
    <ul id="tablist">
        <TMPL_UNLESS DA_ONLY>
            <li id="myacclinks" <TMPL_IF NAME=IM_ON_MYACCURINT>class="active"</TMPL_IF>>
                <a id="myaccIcon_sprite" href="javascript:myacc_v3('<TMPL_VAR MYA_1_EVT>');">My Accurint</a>
            </li>
        </TMPL_UNLESS>

        <li id="peoplelinks" <TMPL_IF NAME=IM_ON_SEARCH>class="active"</TMPL_IF>>
            <a id="myaccPeopleIcon_sprite" href="javascript:pm_tab_v3('SEARCH/SHOW_ADV');">People</a>
        </li>

        <li id="phoneslinks" <TMPL_IF NAME=IM_ON_DA_SEARCH>class="active"</TMPL_IF>>
            <a id="myaccPhonesIcon_sprite" trackid="tab_phones" href="javascript:pm_tab_v3('SEARCH/<TMPL_IF DELETE_CUSTOM_DA_WIRELESS>SHOW_DA_BASIC<TMPL_ELSE>SHOW_DA_WIRELESS</TMPL_IF>');">Phones</a>
        </li>

        <li id="assetslinks" <TMPL_IF NAME=IM_ON_ASSET_SEARCH>class="active"</TMPL_IF>>
            <a id="myaccAssetsIcon_sprite" trackid="tab_assets" href="javascript:pm_tab_v3('SEARCH2/SHOW_COMBINED_MVR');">Assets</a>
        </li>

        <TMPL_UNLESS DELETE_CUSTOM_ATACRAIDS>
        <TMPL_UNLESS DENY_CJIS_PRODUCTS>
           <TMPL_IF ALLOW_ATACRAIDS_SSO>
                <TMPL_IF DISABLE_ATACRAIDS_SSO>
                    <li id="analysislinks" class="hide_left_icon">
                       <a id="myaccAnalysisIcon_sprite" trackid="tab_analysis" href="javascript:show_post_popup('SEARCH/SHOW_ATACRAIDS_DISCLAIMER','ATACRAIDSWin','900','580',1,1,1,1,1,0);">Analytics</a>
                    </li>
                <TMPL_ELSE>
                    <li id="analysislinks" <TMPL_IF NAME=IM_ON_ANALYSIS_SEARCH>class="active"</TMPL_IF>>
                       <a id="myaccAnalysisIcon_sprite" trackid="tab_analysis" href="javascript:show_post_popup('SEARCH/SHOW_ATACRAIDS_DISCLAIMER','ATACRAIDSWin','900','580',1,1,1,1,1,0);">Analytics</a>
                    </li>
                </TMPL_IF>
           <TMPL_ELSE>
                <li id="analysislinks" <TMPL_IF NAME=IM_ON_ANALYSIS_SEARCH>class="active"</TMPL_IF>>
                   <a id="myaccAnalysisIcon_sprite" trackid="tab_analysis" href="javascript:show_ATACRAIDS_disabled_message();">Analytics</a>
                </li>
           </TMPL_IF>
        </TMPL_UNLESS>
        </TMPL_UNLESS>

        <li id="courtslinks" <TMPL_IF NAME=IM_ON_LEGAL_SEARCH>class="active"</TMPL_IF>>
            <a id="myaccCourtsIcon_sprite" href="javascript:pm_tab_v3('SEARCH/SHOW_CRIM');">Courts</a>
        </li>

        <li id="businesseslinks" <TMPL_IF NAME=IM_ON_BUS_SEARCH>class="active"</TMPL_IF>>
            <a id="myaccBusinessesIcon_sprite" trackid="tab_business" href="javascript:pm_tab_v3('SEARCH/SHOW_BUS');">Businesses</a>
        </li>

        <li id="licenseslinks" <TMPL_IF NAME=IM_ON_LICENSE_SEARCH>class="active"</TMPL_IF>>
            <a id="myaccLicensesIcon_sprite" trackid="tab_licenses" href="javascript:pm_tab_v3('WS_SEARCH/SHOW_LICENSE');">Licenses</a>
        </li>

        <TMPL_UNLESS DELETE_HEALTHCARE_HEADING>
            <TMPL_UNLESS DELETE_CUSTOM_PROVIDER>
                <li id="healthcarelinks" <TMPL_IF NAME=IM_ON_HEALTH_CARE_SEARCH>class="active"</TMPL_IF>>
                    <a id="myaccHealthcareIcon_sprite" href="javascript:pm_tab_v3('SEARCH/SHOW_PROVIDER');" onMouseOver='show_upper_tab_layer(this, "listHealthcareSearches");
                        $("listHealthcareSearches").style.left = findPos(this) + "px";' onMouseOut='hide_upper_tab_layer("listHealthcareSearches");'>Health Care</a>
                </li>
                <TMPL_ELSE>
                    <TMPL_UNLESS DELETE_CUSTOM_SANCTION>
                        <li id="healthcarelinks" <TMPL_IF NAME=IM_ON_HEALTH_CARE_SEARCH>class="active"</TMPL_IF>>
                            <a id="myaccHealthcareIcon_sprite" href="javascript:pm_tab_v3('SEARCH/SHOW_SANCTION');" onMouseOver='show_upper_tab_layer(this, "listHealthcareSearches");
                                $("listHealthcareSearches").style.left = findPos(this) + "px";' onMouseOut='hide_upper_tab_layer("listHealthcareSearches");'>Health Care</a>
                        </li>
                        <TMPL_ELSE>
                            <TMPL_UNLESS DELETE_IND_QUALIFIER_REPORTS>
                                <li id="healthcarelinks" <TMPL_IF NAME=IM_ON_HEALTH_CARE_SEARCH>class="active"</TMPL_IF>>
                                    <a id="myaccHealthcareIcon_sprite" href="javascript:pm_tab_v3('SEARCH/SHOW_IND_QUALIFIER');" onMouseOver='show_upper_tab_layer(this, "listHealthcareSearches");
                                        $("listHealthcareSearches").style.left = findPos(this) + "px";' onMouseOut='hide_upper_tab_layer("listHealthcareSearches");'>Health Care</a>
                                </li>
                                <TMPL_ELSE>
                                    <TMPL_UNLESS DELETE_BUS_QUALIFIER_REPORTS>
                                        <li id="healthcarelinks" <TMPL_IF NAME=IM_ON_HEALTH_CARE_SEARCH>class="active"</TMPL_IF>>
                                            <a id="myaccHealthcareIcon_sprite" href="javascript:pm_tab_v3('SEARCH/SHOW_BUS_QUALIFIER');" onMouseOver='show_upper_tab_layer(this, "listHealthcareSearches");
                                                $("listHealthcareSearches").style.left = findPos(this) + "px";' onMouseOut='hide_upper_tab_layer("listHealthcareSearches");'>Health Care</a>
                                        </li>
                                        <TMPL_ELSE>
                                            <TMPL_UNLESS DELETE_OABMS>
                                                <li id="healthcarelinks" <TMPL_IF NAME=IM_ON_HEALTH_CARE_SEARCH>class="active"</TMPL_IF>>
                                                    <a id="myaccHealthcareIcon_sprite" href="javascript:pm_tab_v3('SEARCH2/SHOW_OABMS');" onMouseOver='show_upper_tab_layer(this, "listHealthcareSearches");
                                                        $("listHealthcareSearches").style.left = findPos(this) + "px";' onMouseOut='hide_upper_tab_layer("listHealthcareSearches");'>Health Care</a>
                                                </li>
                                                <TMPL_ELSE>
                                                    <li id="healthcarelinks" <TMPL_IF NAME=IM_ON_HEALTH_CARE_SEARCH>class="active"</TMPL_IF>>
                                                        <a id="myaccHealthcareIcon_sprite" href="javascript:pm_tab_v3('SEARCH/SHOW_PROVIDER');" onMouseOver='show_upper_tab_layer(this, "listHealthcareSearches");
                                                            $("listHealthcareSearches").style.left = findPos(this) + "px";' onMouseOut='hide_upper_tab_layer("listHealthcareSearches");'>Health Care</a>
                                                    </li>
                                            </TMPL_UNLESS>
                                    </TMPL_UNLESS>
                            </TMPL_UNLESS>
                    </TMPL_UNLESS>
            </TMPL_UNLESS>
        </TMPL_UNLESS>

        <TMPL_UNLESS DELETE_BATCH>
            <li id="batchlinks">
                <TMPL_UNLESS DISABLE_BATCH>
                    <a id="batchIcon" href="javascript:show_post_popup('BATCH/SERVICES','BatchServices',1000,800,0,0,0,1,1,0,'<TMPL_VAR NAME=ACTION_BATCH>');" title="View Online Batch Services">Online Batch Services</a>
                <TMPL_ELSE>Online Batch Services</TMPL_UNLESS>
            </li>
        </TMPL_UNLESS>

        <TMPL_IF SHOW_INTERNATIONAL_SECTION>
            <li id="internationallinks" <TMPL_IF NAME=IM_ON_INTL_DOCKET_SEARCH>class="active"</TMPL_IF>>
                <a id="internationalIcon" trackid="tab_intl" href="javascript:pm_tab_v3('SEARCH/SHOW_INTDOCKETS');" onMouseOver="show_upper_tab_layer(this, 'intlSearches');
                    $('intlSearches').style.left = findPos(this) + 'px';" onMouseOut="hide_upper_tab_layer('intlSearches');">International</a>
            </li>
        </TMPL_IF>

        <TMPL_UNLESS DELETE_TRIMERGE_REPORT>
          <TMPL_UNLESS DISABLE_TRIMERGE_REPORT>
            <li id="fcralinks">
                <TMPL_IF SHOW_TRIMERGE_REPORTS_ESP>
                   <a id="trimergeIcon" href="javascript:show_post_popup('SEARCH/SHOW_TRIMERGE_ESP','TrimergeESPShow',1000,800,0,0,0,1,1,0);">Tri-Merge Credit Report</a>
                <TMPL_ELSE>
                   <TMPL_IF OFFLINE_TRIMERGE_REPORT>Tri-Merge Credit Report<TMPL_ELSE><a id="trimergeIcon" href="javascript:show_post_popup('TM/SHOW','TrimergeReport',1000,722,0,0,0,1,1,0,'<TMPL_VAR ACTION_REPORT>');">Tri-Merge Credit Report</a></TMPL_IF>
                </TMPL_IF>
            </li>
          </TMPL_UNLESS>
        </TMPL_UNLESS>
    </ul>
</div>

<div id="main_menu_data">
    <div id="peoplelinks">
        <ul>
            <TMPL_IF ENABLE_ADVANCED_SEARCH>
                <li id="<TMPL_VAR NAME=IDX_ADV>"<TMPL_IF NAME="ADV_SEARCH"> class="active"</TMPL_IF>>
                    <TMPL_IF DISABLE_ADV>Advanced Person<TMPL_ELSE>
                        <a href="javascript:pm_tab_v3('SEARCH/SHOW_ADV');">Advanced Person</a>
                    </TMPL_IF>
                </li>
            </TMPL_IF>
            <li id="<TMPL_VAR NAME=IDX_DEATH>"<TMPL_IF NAME="DEATH_SEARCH"> class="active"</TMPL_IF>>
                <TMPL_IF DISABLE_DEATH>Death Records<TMPL_ELSE>
                    <a href="javascript:pm_tab_v3('WS_SEARCH/SHOW_DEATH');">Death Records</a>
                </TMPL_IF>
            </li>
            <li id="IDX_D"<TMPL_IF NAME="PERSON_DTR_REPORT"> class="active"</TMPL_IF>>
                <TMPL_IF DISABLE_PERSON_DTR>Direct-to-Report<TMPL_ELSE>
                    <a href="javascript:pm_tab_v3('SEARCH/SHOW_PERSON_DTR');">Direct-to-Report</a>
                </TMPL_IF>
            </li>
            <TMPL_UNLESS DELETE_CUSTOM_EMAIL>
                <li id="<TMPL_VAR NAME=IDX_EMAIL>"<TMPL_IF NAME="EMAIL_SEARCH"> class="active"</TMPL_IF>>
                    <TMPL_IF DISABLE_EMAIL>Email Search<TMPL_ELSE>
                        <a href="javascript:pm_tab_v3('SEARCH/SHOW_EMAIL');">Email Search</a>
                    </TMPL_IF>
                </li>
            </TMPL_UNLESS>
			<TMPL_UNLESS DO_NOT_DISPLAY_KBA>
			<TMPL_UNLESS DELETE_CUSTOM_KBA>
				<li id="<TMPL_VAR NAME=IDX_KBA>"<TMPL_IF NAME="ID_VERIFY"> class="active"</TMPL_IF>>
					<TMPL_IF DISABLE_KBA>ID Verification Report<TMPL_ELSE>
						<a href="javascript:pm_tab_v3('SEARCH/SHOW_ID_VERIFY');">ID Verification Report</a>
					</TMPL_IF>
				</li>
			</TMPL_UNLESS>	
			</TMPL_UNLESS>	

            <TMPL_IF SHOW_LOCATION_REPORT_LINK>
            <li id="<TMPL_VAR NAME=IDX_LOCATION_REPORT>"<TMPL_IF NAME="LOCATION_REPORT_SEARCH"> class="active"</TMPL_IF>>
              <TMPL_UNLESS DELETE_LOCATION_REPORT>
                <TMPL_UNLESS DISABLE_LOCATION_REPORT>
                  <a href="javascript:pm_tab_v3('SEARCH2/SHOW_LOCATION_REPORT');">Law Enforcement Location Report</a>
                <TMPL_ELSE>
                  Law Enforcement Location Report  
                </TMPL_UNLESS>
              <TMPL_ELSE>
                Law Enforcement Location Report
              </TMPL_UNLESS> 
            </li>
            </TMPL_IF>
            
            <TMPL_UNLESS HIDE_PASSPORT_SEARCH>
            <TMPL_UNLESS DELETE_PASSPORT_SEARCH>
                <li id="<TMPL_VAR NAME=IDX_PASSPORT_SEARCH>" <TMPL_IF NAME="PASSPORT_SEARCH">class="active"</TMPL_IF>>
                    <TMPL_IF DISABLE_PASSPORT_SEARCH>Passport Validation Report<TMPL_ELSE>
                        <a href="javascript:pm_tab_v3('SEARCH/SHOW_PASSPORT_VALIDATION');">Passport Validation Report</a>
                    </TMPL_IF>
                </li>
            </TMPL_UNLESS>
            </TMPL_UNLESS>
            
            <li id="<TMPL_VAR NAME=IDX_PAW>"<TMPL_IF NAME="PAW_SEARCH"> class="active"</TMPL_IF>>
                <TMPL_IF DISABLE_PAW>People at Work<TMPL_ELSE>
                    <a href="javascript:pm_tab_v3('SEARCH/SHOW_PAW');">People at Work</a>
                </TMPL_IF>
            </li>
            <TMPL_UNLESS RESTRICT_LNLP_CONTENT>
            <TMPL_UNLESS DONT_SHOW_NEWS>
                <TMPL_UNLESS DELETE_CUSTOM_NEWS>
                    <li id="<TMPL_VAR NAME=IDX_NEWS>"<TMPL_IF NAME="NEWS_SEARCH"> class="active"</TMPL_IF>>
                        <TMPL_IF DISABLE_NEWS>People in the News<TMPL_ELSE>
                            <a href="javascript:pm_tab_v3('SEARCH/SHOW_NEWS');">People in the News</a>
                        </TMPL_IF>
                    </li>
                </TMPL_UNLESS>
            </TMPL_UNLESS>
            </TMPL_UNLESS>

            <TMPL_UNLESS DELETE_POWER_BOOLEAN>
                <li id="<TMPL_VAR NAME=IDX_POWER_BOOLEAN>"<TMPL_IF NAME="POWER_BOOLEAN_SEARCH"> class="active"</TMPL_IF>>
                    <TMPL_IF DISABLE_POWER_BOOLEAN>Power Search<TMPL_ELSE>
                        <a href="javascript:pm_tab_v3('SEARCH2/SHOW_POWER_BOOLEAN');">Power Search</a>
                    </TMPL_IF>
                </li>
            </TMPL_UNLESS>

            <TMPL_UNLESS HIDE_RT_PERSON>
                <TMPL_UNLESS DELETE_CUSTOM_RT_PERSON>
                    <TMPL_UNLESS DELETE_RT_PERSON>
                        <li id="<TMPL_VAR NAME=IDX_RT_PERSON>"<TMPL_IF NAME="REAL_TIME_PERSON_SEARCH"> class="active"</TMPL_IF>>
                            <TMPL_IF DISABLE_RT_PERSON>Real-Time Person Search<TMPL_ELSE>
                                <a href="javascript:pm_tab_v3('SEARCH/SHOW_REAL_TIME_PERSON');">Real-Time Person Search</a>
                            </TMPL_IF>
                        </li>
                    </TMPL_UNLESS>
                </TMPL_UNLESS>
            </TMPL_UNLESS>


            <TMPL_IF SHOW_SM_MONITOR_LINK>
                <TMPL_UNLESS DELETE_CUSTOM_SM_MONITOR>
                    <TMPL_UNLESS DELETE_SM_MONITOR>
                        <li id="<TMPL_VAR NAME=IDX_SM_MONITOR>" hide_in_myaccurint = "1">
                            <TMPL_IF SHOW_SM_MONITOR_ALL>
                                <a href="javascript:show_post_popup('SEARCH/SHOW_SM_MONITOR_DISCLAIMER','SMMonitorWin','900','580',1,1,1,1,1,0);">Accurint&reg; Social Media Analytics</a>
                            <TMPL_ELSE>Accurint&reg; Social Media Analytics</TMPL_IF>
                        </li>
                    </TMPL_UNLESS>
                </TMPL_UNLESS>
            </TMPL_IF>
            <TMPL_IF SHOW_SOCIAL_REPORT>
                <li id="<TMPL_VAR NAME=IDX_SOC_REPORT>"<TMPL_IF NAME="VIRTUAL_ID_SEARCH"> class="active"</TMPL_IF>>
                    <TMPL_IF DISABLE_SOC_REPORT>Virtual Identity<TMPL_ELSE>
                        <a href="javascript:pm_tab_v3('SEARCH/SHOW_VIRTUAL_ID');">Virtual Identity</a>
                    </TMPL_IF>
                </li>
            </TMPL_IF>
            <TMPL_UNLESS DELETE_CUSTOM_WORKPLACE>
                <TMPL_IF SHOW_WORKPLACE_SEARCH>
                    <TMPL_UNLESS DELETE_WORKPLACE>
                        <li id="<TMPL_VAR NAME=IDX_WORKPLACE>"<TMPL_IF NAME="WORKPLACE_SEARCH"> class="active"</TMPL_IF>>
                            <TMPL_IF DISABLE_WORKPLACE>Workplace Locator<TMPL_ELSE>
                                <a href="javascript:pm_tab_v3('SEARCH/SHOW_WORKPLACE');">Workplace Locator</a>
                            </TMPL_IF>
                        </li>
                    </TMPL_UNLESS>
                </TMPL_IF>
            </TMPL_UNLESS>
        </ul>
    </div>

    <div id="phoneslinks">
        <ul>
           <TMPL_UNLESS DELETE_CUSTOM_CANADIAN_PHONES>
                <li id="<TMPL_VAR NAME=IDX_CANADIAN_PHONES>"<TMPL_IF NAME="CANADIAN_PHONES_SEARCH"> class="active"</TMPL_IF>>
                    <TMPL_IF DISABLE_CANADIAN_PHONES>
                        Canadian Phones
                    <TMPL_ELSE>
                        <a href="javascript:cp_modal('Canadian Phones Legal Disclaimer','',0.6,1,1,700);">Canadian Phones</a>
                    </TMPL_IF>
                </li>
            </TMPL_UNLESS>

            <TMPL_IF SHOW_RT_PHONE>
                <TMPL_UNLESS DELETE_CUSTOM_RT_PHONE>
                    <li id="<TMPL_VAR NAME=IDX_RT_PHONE>"<TMPL_IF NAME="RT_PHONE_SEARCH"> class="active"</TMPL_IF>>
                        <TMPL_IF DISABLE_RT_PHONE>Real-Time Phones<TMPL_ELSE>
                            <a href="javascript:pm_tab_v3('SEARCH/SHOW_RT_PHONE');">Real-Time Phones</a>
                        </TMPL_IF>
                    </li>
                </TMPL_UNLESS>
            </TMPL_IF>
        </ul>
    </div>


    <div id="businesseslinks">
        <ul>
            <li id="<TMPL_VAR NAME=IDX_BUS>"<TMPL_IF NAME="BUS_SEARCH"> class="active"</TMPL_IF>>
                <TMPL_IF DISABLE_BUS>Business<TMPL_ELSE>
                    <a href="javascript:pm_tab_v3('SEARCH/SHOW_BUS');">Business</a>
                </TMPL_IF>
            </li>

            <TMPL_UNLESS IS_RESELLER>
                <li id="<TMPL_VAR NAME=IDX_BUS_CREDIT>"<TMPL_IF NAME="BUS_CREDIT_SEARCH"> class="active"</TMPL_IF>>
                    <TMPL_IF DISABLE_BUS_CREDIT>Business Credit<TMPL_ELSE>
                        <a href="javascript:pm_tab_v3('SEARCH/SHOW_BUS_CREDIT');">Business Credit</a>
                    </TMPL_IF>
                </li>
            </TMPL_UNLESS>

            <TMPL_UNLESS RESTRICT_LNLP_CONTENT>
            <TMPL_UNLESS DELETE_CUSTOM_BUS_NEWS>
                <TMPL_UNLESS DONT_SHOW_NEWS>
                    <li id="<TMPL_VAR NAME=IDX_BUS_NEWS>"<TMPL_IF NAME="BUS_NEWS_SEARCH"> class="active"</TMPL_IF>>
                        <TMPL_IF DISABLE_BUS_NEWS>Businesses in the News<TMPL_ELSE>
                            <a href="javascript:pm_tab_v3('SEARCH/SHOW_BUS_NEWS');">Businesses in the News</a>
                        </TMPL_IF>
                    </li>
                </TMPL_UNLESS>
            </TMPL_UNLESS>
            </TMPL_UNLESS>

            <li id="<TMPL_VAR NAME=IDX_CORPORATION>"<TMPL_IF NAME="CORPORATION_SEARCH"> class="active"</TMPL_IF>>
                <TMPL_IF DISABLE_CORPORATION>Corporation Filings<TMPL_ELSE>
                    <a href="javascript:pm_tab_v3('WS_SEARCH/SHOW_CORPORATION');">Corporation Filings</a>
                </TMPL_IF>
            </li>

            <TMPL_UNLESS DELETE_CUSTOM_DELCO>
                <li id="<TMPL_VAR NAME=IDX_DELCO>"<TMPL_IF NAME="DELCO_SEARCH"> class="active"</TMPL_IF>>
                    <TMPL_IF DISABLE_DELCO>Delaware Corporations<TMPL_ELSE>
                        <a href="javascript:pm_tab_v3('SEARCH/SHOW_DELCO');">Delaware  Corporations</a>
                    </TMPL_IF>
                </li>
            </TMPL_UNLESS>
            <TMPL_UNLESS DELETE_CUSTOM_D_AND_B>
                <li id="<TMPL_VAR NAME=IDX_D_AND_B>"<TMPL_IF NAME="D_AND_B_SEARCH"> class="active"</TMPL_IF>>
                    <TMPL_IF DISABLE_D_AND_B>Dun &amp; Bradstreet<TMPL_ELSE>
                        <a href="javascript:pm_tab_v3('SEARCH/SHOW_D_AND_B');">Dun &amp; Bradstreet</a>
                    </TMPL_IF>
                </li>
            </TMPL_UNLESS>

            <li id="<TMPL_VAR NAME=IDX_FEIN>"<TMPL_IF NAME="FEIN_SEARCH"> class="active"</TMPL_IF>>
                <TMPL_IF DISABLE_FEIN>Federal Employer ID Numbers (FEIN)<TMPL_ELSE>
                    <a href="javascript:pm_tab_v3('SEARCH2/SHOW_FEIN');">Federal Employer ID Numbers (FEIN)</a>
                </TMPL_IF>
            </li>

            <li id="<TMPL_VAR NAME=IDX_FICTIOUS>"<TMPL_IF NAME="FICTIOUS_SEARCH"> class="active"</TMPL_IF>>
                <TMPL_UNLESS DISABLE_FICTIOUS>
                    <a href="javascript:pm_tab_v3('SEARCH/SHOW_FICTIOUS');">Fictitious Business Name</a>
                <TMPL_ELSE>Fictitious Business Name</TMPL_UNLESS>
            </li>

            <li id="<TMPL_VAR NAME=IDX_WHOIS>"<TMPL_IF NAME="WHOIS_SEARCH"> class="active"</TMPL_IF>>
                <TMPL_IF DISABLE_WHOIS>Internet Domains<TMPL_ELSE>
                    <a href="javascript:pm_tab_v3('SEARCH/SHOW_WHOIS');">Internet Domains</a>
                </TMPL_IF>
            </li>

            <li id="<TMPL_VAR NAME=IDX_UCC>"<TMPL_IF NAME="UCC_SEARCH"> class="active"</TMPL_IF>>
                <TMPL_IF DISABLE_UCC>National UCC Filings<TMPL_ELSE>
                    <a href="javascript:pm_tab_v3('WS_SEARCH/SHOW_UCC');">National UCC Filings</a>
                </TMPL_IF>
            </li>

        </ul>
    </div>


    <div id="assetslinks">
        <ul>
            <TMPL_UNLESS DO_NOT_DISPLAY_COMBINED_MVR>
            <li id="<TMPL_VAR NAME=IDX_COMBINED_MVR>"<TMPL_IF NAME="COMBINED_MVR_SEARCH"> class="active"</TMPL_IF><TMPL_IF NAME="COMBINED_MVR_MV_SEARCH"> class="active"</TMPL_IF><TMPL_IF NAME="COMBINED_MVR_WC_SEARCH"> class="active"</TMPL_IF>>
                <TMPL_IF DISABLE_COMBINED_MVR>Advanced Motor Vehicles<TMPL_ELSE>
                    <a href="javascript:pm_tab_v3('SEARCH2/SHOW_COMBINED_MVR');">Advanced Motor Vehicles</a>
                </TMPL_IF>
            </li>
            </TMPL_UNLESS>

            <li id="<TMPL_VAR NAME=IDX_AVM>"<TMPL_IF NAME="AVM_SEARCH"> class="active"</TMPL_IF>>
                <TMPL_IF DISABLE_AVM>Automated Valuation Models<TMPL_ELSE>
                    <a href="javascript:pm_tab_v3('SEARCH/SHOW_AVM');">Automated Valuation Models</a>
                </TMPL_IF>
            </li>

            <li id="<TMPL_VAR NAME=IDX_AIRCRAFT>"<TMPL_IF NAME="AIRCRAFT_SEARCH"> class="active"</TMPL_IF>>
                <TMPL_IF DISABLE_AIRCRAFT>FAA Aircraft<TMPL_ELSE>
                    <a href="javascript:pm_tab_v3('SEARCH/SHOW_AIRCRAFT');">FAA Aircraft</a>
                </TMPL_IF>
            </li>

            <li id="<TMPL_VAR NAME=IDX_REAL_PROPERTY>"<TMPL_IF NAME="REAL_PROPERTY_SEARCH"> class="active"</TMPL_IF>>
                <TMPL_IF DISABLE_REAL_PROPERTY>Property (Property Assessments, Deeds &amp; Mortgages)<TMPL_ELSE>
                    <a href="javascript:pm_tab_v3('SEARCH/SHOW_REAL_PROPERTY');">Property (Property Assessments, Deeds &amp; Mortgages)</a>
                </TMPL_IF>
            </li>

            <li id="<TMPL_VAR NAME=IDX_VESSEL>"<TMPL_IF NAME="MERCHANT_VESSEL_SEARCH"> class="active"</TMPL_IF>>
                <TMPL_IF DISABLE_VESSEL>Watercraft<TMPL_ELSE>
                    <a href="javascript:pm_tab_v3('SEARCH/SHOW_VESSEL');">Watercraft</a>
                </TMPL_IF>
            </li>

        </ul>
    </div>

    <TMPL_UNLESS DELETE_CUSTOM_ATACRAIDS>
    <div id="analysislinks">
        <ul>
            <TMPL_IF ALLOW_ATACRAIDS_SSO>
                <TMPL_IF DISABLE_ATACRAIDS_SSO>
                   <li id="<TMPL_VAR NAME=IDX_ATACRAIDS>" class="hide_left_icon"> Accurint&reg; Crime Analysis</li>
                <TMPL_ELSE>
                   <li id="<TMPL_VAR NAME=IDX_ATACRAIDS>"<TMPL_IF NAME="ATACRAIDS"> class="active"</TMPL_IF>>
                      <a id="myaccAnalysisIcon_sprite" trackid="tab_analysis" href="javascript:show_post_popup('SEARCH/SHOW_ATACRAIDS_DISCLAIMER','ATACRAIDSWin','900','580',1,1,1,1,1,0);">Accurint&reg; Crime Analysis</a>
                   </li>
                </TMPL_IF>
            <TMPL_ELSE>
                <li id="<TMPL_VAR NAME=IDX_ATACRAIDS>"<TMPL_IF NAME="ATACRAIDS"> class="active"</TMPL_IF>>
                <TMPL_IF SMM_ONLY>
                	Accurint&reg; Crime Analysis
                <TMPL_ELSE>
                   <a id="myaccAnalysisIcon_sprite" trackid="tab_analysis" href="javascript:show_ATACRAIDS_disabled_message();">Accurint&reg; Crime Analysis</a>
                </TMPL_IF>
                </li>
            </TMPL_IF>

        </ul>
    </div>
    </TMPL_UNLESS>




    <div id="courtslinks">
        <ul>
            <TMPL_IF SHOW_ASOS_BATCH>
              <TMPL_IF ALLOW_ASOS_BATCH>
                <li id="<TMPL_VAR NAME=IDX_ASOS_BATCH>">
                  <TMPL_UNLESS DISABLE_ASOS_BATCH>
                      <a href="javascript:show_post_popup('BATCH/SHOW_ASOS','asosPopupWin','1000','800',0,0,0,1,1,0,'<TMPL_VAR NAME=ACTION_BATCH>','');">Advanced Sex Offender Solution (ASOS)</a>
                  <TMPL_ELSE>
                       Advanced Sex Offender Solution (ASOS)    
                  </TMPL_UNLESS>
                </li>
              </TMPL_IF>
            </TMPL_IF>

            <li id="<TMPL_VAR NAME=IDX_BLJ>"<TMPL_IF NAME="BLJ_SEARCH"> class="active"</TMPL_IF>>
                <TMPL_IF DISABLE_BLJ>Bankruptcies, Liens &amp; Judgments<TMPL_ELSE>
                    <a href="javascript:pm_tab_v3('SEARCH/SHOW_BLJ');">Bankruptcies, Liens &amp; Judgments</a>
                </TMPL_IF>
            </li>


            <li id="<TMPL_VAR NAME=IDX_CIVIL_COURT>"<TMPL_IF NAME="CIVIL_COURT_SEARCH"> class="active"</TMPL_IF>>
                <TMPL_IF DISABLE_CIVIL_COURT>Civil Courts<TMPL_ELSE>
                    <a href="javascript:pm_tab_v3('SEARCH/SHOW_CIVIL_COURT');">Civil Courts</a>
                </TMPL_IF>
            </li>

            <TMPL_UNLESS DELETE_CUSTOM_COURT_WIZARD>
                <TMPL_UNLESS IS_RESELLER>
                    <TMPL_IF SHOW_CS_REPORT>
                        <li id="<TMPL_VAR NAME=IDX_COURT>">
                        <TMPL_IF DISABLE_COURT>
                           <TMPL_IF SMM_ONLY>
                               Court Search Wizard
                           <TMPL_ELSE>
                               <TMPL_IF ATACRAIDS_ONLY>
                                  Court Search Wizard
                               <TMPL_ELSE>
                                  <a href="javascript:show_post_popup('LOGIN/SHOW_POPUP','CourtPopupWin','600','450',0,0,0,1,1,0,'','court_ad');">Court Search Wizard</a>
                               </TMPL_IF>
                            </TMPL_IF>
                        <TMPL_ELSE>
                            <a href="javascript:show_post_popup('LOGIN/SHOW_POPUP','CourtPopupWin','1000','800',0,0,0,1,1,0,'','court_wizard_select_individual');">Court Search Wizard</a>
                        </TMPL_IF>
                        </li>
                    </TMPL_IF>
                </TMPL_UNLESS>
            </TMPL_UNLESS>

            <li id="<TMPL_VAR NAME=IDX_CRIM>"<TMPL_IF NAME="CRIM_SEARCH"> class="active"</TMPL_IF>>
                <TMPL_IF DISABLE_CRIM>Criminal Records<TMPL_ELSE>
                    <a href="javascript:pm_tab_v3('SEARCH/SHOW_CRIM');">Criminal Records</a>
                </TMPL_IF>
            </li>

            <TMPL_UNLESS DO_NOT_DISPLAY_FED_CIVIL_COURT>
            <li id="<TMPL_VAR NAME=IDX_FED_CIVIL_COURT>"<TMPL_IF NAME="FED_CIVIL_COURT_SEARCH"> class="active"</TMPL_IF>>
                <TMPL_IF DISABLE_FED_CIVIL_COURT>Federal Civil Court Records<TMPL_ELSE>
                    <a href="javascript:pm_tab_v3('SEARCH/SHOW_FED_CIVIL_COURT');">Federal Civil Court Records</a>
                </TMPL_IF>
            </li>
            </TMPL_UNLESS>

            <li id="<TMPL_VAR NAME=IDX_FED_CRIM_COURT>"<TMPL_IF NAME="FED_CRIM_COURT_SEARCH"> class="active"</TMPL_IF>>
                <TMPL_UNLESS DISABLE_FED_CRIM_COURT>
                  <a href="javascript:pm_tab_v3('SEARCH/SHOW_FED_CRIM_COURT');">Federal Criminal Court Records</a>
                <TMPL_ELSE>
                  Federal Criminal Court Records
                </TMPL_UNLESS>  
            </li> 

            <li id="<TMPL_VAR NAME=IDX_FORECLOSURE>"<TMPL_IF NAME="FORECLOSURE_SEARCH"> class="active"</TMPL_IF>>
                <TMPL_IF DISABLE_FORECLOSURE>Foreclosures<TMPL_ELSE>
                    <a href="javascript:pm_tab_v3('SEARCH/SHOW_FORECLOSURE');">Foreclosures</a>
                </TMPL_IF>
            </li>


            <TMPL_UNLESS DELETE_CUSTOM_JAILBOOKING>
                <TMPL_IF SHOW_JAIL_BOOKING_SEARCH>
                    <li id="<TMPL_VAR NAME=IDX_JAILBOOKING>"<TMPL_IF NAME="JAILBOOKING_SEARCH"> class="active"</TMPL_IF>>
                        <TMPL_IF DISABLE_JAILBOOKING>Jail Bookings<TMPL_ELSE>
                            <a href="javascript:pm_tab_v3('SEARCH/SHOW_JAILBOOKING');">Jail Bookings</a>
                        </TMPL_IF>
                    </li>
                </TMPL_IF>
            </TMPL_UNLESS>

            <TMPL_IF APPRISS_APPROVED>
                <TMPL_UNLESS DELETE_APPRISS>
                    <li id="<TMPL_VAR NAME=IDX_APPRISS>">
                        <TMPL_IF DISABLE_APPRISS>JusticeXchange<TMPL_ELSE>
                            <a href="javascript:void(0);" onClick="show_post_popup('LOGIN/SHOW_POPUP', 'JusticeXchange', 620, 550, 0, 0, 0, 0, 0, 0, '', 'appriss_go');">JusticeXchange</a>
                        </TMPL_IF>
                    </li>
                </TMPL_UNLESS>
            </TMPL_IF>

            <li id="<TMPL_VAR NAME=IDX_MARRIAGE>"<TMPL_IF NAME="MARRIAGE_SEARCH"> class="active"</TMPL_IF>>
                <TMPL_IF DISABLE_MARRIAGE>Marriages/Divorces<TMPL_ELSE>
                    <a href="javascript:pm_tab_v3('SEARCH/SHOW_MARRIAGE');">Marriages/Divorces</a>
                </TMPL_IF>
            </li>

            <li id="<TMPL_VAR NAME=IDX_ACCIDENT>"<TMPL_IF NAME="ACCIDENT_SEARCH"> class="active"</TMPL_IF>>
                <TMPL_IF DISABLE_ACCIDENT>National Motor Vehicle Accidents<TMPL_ELSE>
                    <a href="javascript:pm_tab_v3('SEARCH/SHOW_ACCIDENT');">National Motor Vehicle Accidents</a>
                </TMPL_IF>
            </li>

            <li id="<TMPL_VAR NAME=IDX_OFFICIAL_RECORDS>"<TMPL_IF NAME="OFFICIAL_RECORDS_SEARCH"> class="active"</TMPL_IF>>
                <TMPL_IF DISABLE_OFFICIAL_RECORDS>Official Records<TMPL_ELSE>
                    <a href="javascript:pm_tab_v3('SEARCH/SHOW_OFFICIAL_RECORDS');">Official Records</a>
                </TMPL_IF>
            </li>

            <li id="<TMPL_VAR NAME=IDX_SEXPREDATOR>"<TMPL_IF NAME="SEXPREDATOR_SEARCH"> class="active"</TMPL_IF>>
                <TMPL_IF DISABLE_SEXPREDATOR>Sexual Offenders<TMPL_ELSE>
                    <a href="javascript:pm_tab_v3('SEARCH/SHOW_SEXPREDATOR');">Sexual Offenders</a>
                </TMPL_IF>
            </li>
          
            <li id="<TMPL_VAR NAME=IDX_PATRIOTACT>"<TMPL_IF NAME="PATRIOTACT_SEARCH"> class="active"</TMPL_IF>>
                <TMPL_IF DISABLE_PATRIOTACT>USA PATRIOT Act<TMPL_ELSE>
                    <a href="javascript:pm_tab_v3('SEARCH/SHOW_PATRIOTACT');">USA PATRIOT Act</a>
                </TMPL_IF>
            </li>

        </ul>
    </div>




    <div id="licenseslinks">
        <ul>
            <li id="<TMPL_VAR NAME=IDX_CONCEALED_WEAPON>"<TMPL_IF NAME="CONCEALED_WEAPON_SEARCH"> class="active"</TMPL_IF>>
                <TMPL_IF DISABLE_CONCEALED_WEAPON>Concealed Weapons Permits<TMPL_ELSE>
                    <a href="javascript:pm_tab_v3('SEARCH/SHOW_CONCEALED_WEAPON');">Concealed Weapons Permits</a>
                </TMPL_IF>
            </li>
            <li id="<TMPL_VAR NAME=IDX_DEA>"<TMPL_IF NAME="DEA_SEARCH"> class="active"</TMPL_IF>>
                <TMPL_IF DISABLE_DEA>DEA Controlled Substances<TMPL_ELSE>
                    <a href="javascript:pm_tab_v3('SEARCH/SHOW_DEA');">DEA Controlled Substances</a>
                </TMPL_IF>
            </li>
            <li id="<TMPL_VAR NAME=IDX_DL>"<TMPL_IF NAME="LICENSE_SEARCH"> class="active"</TMPL_IF>>
                <TMPL_IF DISABLE_DL>Driver Licenses<TMPL_ELSE>
                    <a href="javascript:pm_tab_v3('SEARCH/SHOW_LICENSE');">Driver Licenses</a>
                </TMPL_IF>
            </li>

            <li id="<TMPL_VAR NAME=IDX_FAA_PILOT>"<TMPL_IF NAME="FAA_PILOT_SEARCH"> class="active"</TMPL_IF>>
                <TMPL_IF DISABLE_FAA_PILOT>FAA Pilots<TMPL_ELSE>
                    <a href="javascript:pm_tab_v3('SEARCH/SHOW_FAA_PILOT');">FAA Pilots</a>
                </TMPL_IF>
            </li>
    
            <li id="<TMPL_VAR NAME=IDX_FIREARMS>"<TMPL_IF NAME="FIREARMS_SEARCH"> class="active"</TMPL_IF>>
                <TMPL_IF DISABLE_FIREARMS>Federal Firearms &amp; Explosives<TMPL_ELSE>
                    <a href="javascript:pm_tab_v3('SEARCH/SHOW_FIREARMS');">Federal Firearms &amp; Explosives</a>
                </TMPL_IF>
            </li>

            <li id="<TMPL_VAR NAME=IDX_HUNTING_LICENSE>"<TMPL_IF NAME="HUNTING_LICENSE_SEARCH"> class="active"</TMPL_IF>>
                <TMPL_IF DISABLE_HUNTING_LICENSE>Hunting/Fishing Licenses<TMPL_ELSE>
                    <a href="javascript:pm_tab_v3('SEARCH/SHOW_HUNTING_LICENSE');">Hunting/Fishing Licenses</a>
                </TMPL_IF>
            </li>

            <TMPL_UNLESS DELETE_CUSTOM_MVR>
                <TMPL_UNLESS IS_RESELLER>
                    <li id="<TMPL_VAR NAME=IDX_MVR>"<TMPL_IF NAME="MVR_REPORT"> class="active"</TMPL_IF>>
                        <TMPL_IF DISABLE_MVR>MVR Reports (Driving Records)<TMPL_ELSE>
                            <a href="javascript:pm_tab_v3('SEARCH/SHOW_MVR');">MVR Reports (Driving Records)</a>
                        </TMPL_IF>
                    </li>
                </TMPL_UNLESS>
            </TMPL_UNLESS>

            <li id="<TMPL_VAR NAME=IDX_PROF_LICENSE>"<TMPL_IF NAME="PROF_LICENSE_SEARCH"> class="active"</TMPL_IF>>
                <TMPL_IF DISABLE_PROF_LICENSE>Professional Licenses<TMPL_ELSE>
                    <a href="javascript:pm_tab_v3('SEARCH2/SHOW_PROF_LICENSE');">Professional Licenses</a>
                </TMPL_IF>
            </li>
            <li id="<TMPL_VAR NAME=IDX_VOTER_REGISTRATION>"<TMPL_IF NAME="VOTER_REGISTRATION_SEARCH"> class="active"</TMPL_IF>>
                <TMPL_IF DISABLE_VOTER_REGISTRATION>Voter Registrations<TMPL_ELSE>
                    <a href="javascript:pm_tab_v3('SEARCH/SHOW_VOTER_REGISTRATION');">Voter Registrations</a>
                </TMPL_IF>
            </li>

        </ul>
    </div>

<div id="healthcarelinks">
    <ul>


        <TMPL_UNLESS DELETE_CUSTOM_OABMS>
            <li id="<TMPL_VAR NAME=IDX_OABMS>"<TMPL_IF NAME="OABMS_SEARCH"> class="active"</TMPL_IF>>
                <TMPL_IF DISABLE_OABMS>American Board of Medical Specialties<TMPL_ELSE>
                    <a href="javascript:pm_tab_v3('SEARCH/SHOW_OABMS');">American Board of Medical Specialties</a>
                </TMPL_IF>
            </li>
        </TMPL_UNLESS>

        <TMPL_UNLESS DELETE_CUSTOM_CLIA_SEARCH>
            <li id="<TMPL_VAR NAME=IDX_CLIA_SEARCH>"<TMPL_IF NAME="CLIA_SEARCH"> class="active"</TMPL_IF>>
                <TMPL_IF DISABLE_CLIA_SEARCH>CLIA Certificate Search<TMPL_ELSE>
                    <a href="javascript:pm_tab_v3('SEARCH/SHOW_CLIA');">CLIA Certificate Search</a>
                    <b><font color="#ed1c24">&nbsp;NEW!</font></b>
                </TMPL_IF>
            </li>
        </TMPL_UNLESS>

        <TMPL_UNLESS DELETE_BUS_QUALIFIER_REPORTS>
            <li id="<TMPL_VAR NAME=IDX_BUS_QUALIFIER_REPORT>"<TMPL_IF NAME="BUS_QUALIFIER_REPORT"> class="active"</TMPL_IF>>
                <TMPL_IF DISABLE_BUS_QUALIFIER_REPORTS>Comprehensive Health Care Business Search<TMPL_ELSE>
                    <a href="javascript:pm_tab_v3('SEARCH/SHOW_BUS_QUALIFIER');">Comprehensive Health Care Business Search</a>
                </TMPL_IF>
            </li>
        </TMPL_UNLESS>
        <TMPL_UNLESS DELETE_IND_QUALIFIER_REPORTS>
            <li id="<TMPL_VAR NAME=IDX_IND_QUALIFIER_REPORT>"<TMPL_IF NAME="IND_QUALIFIER_REPORT"> class="active"</TMPL_IF>>
                <TMPL_IF DISABLE_IND_QUALIFIER_REPORTS>Comprehensive Health Care Provider Report<TMPL_ELSE>
                    <a href="javascript:pm_tab_v3('SEARCH/SHOW_IND_QUALIFIER');">Comprehensive Health Care Provider Report</a>
                </TMPL_IF>
            </li>
        </TMPL_UNLESS>

        <TMPL_UNLESS DELETE_CUSTOM_DISCLOSED_ENTITY_REPORT>
            <li id="<TMPL_VAR NAME=IDX_DISCLOSED_ENTITY_REPORT>"<TMPL_IF NAME="DISCLOSED_ENTITY_REPORT"> class="active"</TMPL_IF>>
                <TMPL_IF DISABLE_DISCLOSED_ENTITY_REPORT>Disclosed Entity Report<TMPL_ELSE>
                    <a href="javascript:pm_tab_v3('SEARCH2/SHOW_DISCLOSED_ENTITY');">Disclosed Entity Report</a>
                    <b><font color="#ed1c24">&nbsp;NEW!</font></b>
                </TMPL_IF>
            </li>
        </TMPL_UNLESS>

        <TMPL_UNLESS DELETE_CUSTOM_NCPDP_SEARCH>
            <li id="<TMPL_VAR NAME=IDX_NCPDP_SEARCH>"<TMPL_IF NAME="NCPDP_SEARCH"> class="active"</TMPL_IF>>
                <TMPL_IF DISABLE_NCPDP_SEARCH>NCPDP Search<TMPL_ELSE>
                    <a href="javascript:pm_tab_v3('SEARCH/SHOW_NCPDP');">NCPDP Search</a>
                    <b><font color="#ed1c24">&nbsp;NEW!</font></b>
                </TMPL_IF>
            </li>
        </TMPL_UNLESS>
        <TMPL_UNLESS DELETE_CUSTOM_NPI_SEARCH>
            <li id="<TMPL_VAR NAME=IDX_NPI_SEARCH>"<TMPL_IF NAME="NPI_SEARCH"> class="active"</TMPL_IF>>
                <TMPL_IF DISABLE_NPI_SEARCH>NPI Data Search<TMPL_ELSE>
                    <a href="javascript:pm_tab_v3('SEARCH/SHOW_NPI');">NPI Data Search</a>
                    <b><font color="#ed1c24">&nbsp;NEW!</font></b>
                </TMPL_IF>
            </li>
        </TMPL_UNLESS>

        <TMPL_UNLESS DELETE_CUSTOM_PROVIDER_REPORT_CARD>
            <li id="<TMPL_VAR NAME=IDX_PROVIDER_REPORT_CARD>"<TMPL_IF NAME="PROVIDER_REPORT_CARD"> class="active"</TMPL_IF>>
                <TMPL_IF DISABLE_PROVIDER_REPORT_CARD>Provider Report Card<TMPL_ELSE>
                    <a href="javascript:pm_tab_v3('SEARCH2/SHOW_PROVIDER_REPORT_CARD');">Provider Report Card</a>
                    <b><font color="#ed1c24">&nbsp;NEW!</font></b>
                </TMPL_IF>
            </li>
        </TMPL_UNLESS>

        <TMPL_UNLESS DELETE_CUSTOM_SANCTION>
            <li id="<TMPL_VAR NAME=IDX_SANCTION>"<TMPL_IF NAME="SANCTION_SEARCH"> class="active"</TMPL_IF>>
                <TMPL_IF DISABLE_SANCTION>Provider Sanction Search<TMPL_ELSE>
                    <a href="javascript:pm_tab_v3('SEARCH/SHOW_SANCTION');">Provider Sanction Search</a>
                </TMPL_IF>
            </li>
        </TMPL_UNLESS>
        <TMPL_UNLESS DELETE_CUSTOM_PROVIDER>
            <li id="<TMPL_VAR NAME=IDX_PROVIDER>"<TMPL_IF NAME="PROVIDER_SEARCH"> class="active"</TMPL_IF>>
                <TMPL_IF DISABLE_PROVIDER>Provider Search<TMPL_ELSE>
                    <a href="javascript:pm_tab_v3('SEARCH/SHOW_PROVIDER');">Provider Search</a>
                </TMPL_IF>
            </li>
        </TMPL_UNLESS>

    </ul>
</div>

    <div id="internationallinks">
        <ul>
            <TMPL_IF SHOW_INTDOCKETS_SEARCH>          
                <li id="<TMPL_VAR NAME=IDX_INTDOCKETS>"<TMPL_IF NAME="INTDOCKETS_SEARCH"> class="active"</TMPL_IF>>
                    <TMPL_IF DISABLE_INTDOCKETS>Court Dockets<TMPL_ELSE>
                        <a href="javascript:pm_tab_v3('SEARCH/SHOW_INTDOCKETS');">Court Dockets</a>
                    </TMPL_IF>
                </li>
            </TMPL_IF>            
            <TMPL_IF SHOW_INTPROFLIC_SEARCH>
                <li id="<TMPL_VAR NAME=IDX_INTPROFLIC>"<TMPL_IF NAME="INTPROFLIC_SEARCH"> class="active"</TMPL_IF>>
                    <TMPL_IF DISABLE_INTPROFLIC>Professional Certifications<TMPL_ELSE>
                        <a href="javascript:pm_tab_v3('SEARCH/SHOW_INTPROFLIC');">Professional Certifications</a>
                    </TMPL_IF>
                </li>
            </TMPL_IF>            
        </ul>
    </div>

    <div id="batchlinks">
        <ul>
            <li id="CDX_BATCH">
                <TMPL_UNLESS DISABLE_BATCH>
                    <a href="javascript:show_post_popup('BATCH/SERVICES','BatchServices',1000,800,0,0,0,1,1,0,'<TMPL_VAR NAME=ACTION_BATCH>');" title="View Online Batch Services">Online Batch Services</a>
                <TMPL_ELSE>Online Batch Services</TMPL_UNLESS>
            </li>
        </ul>
    </div>


    <TMPL_UNLESS DELETE_TRIMERGE_REPORT>
      <TMPL_UNLESS DISABLE_TRIMERGE_REPORT>
        <div id="fcralinks">
            <ul>
                <li id="<TMPL_VAR NAME=IDX_TRIMERGE_REPORT>">
                    <TMPL_IF SHOW_TRIMERGE_REPORTS_ESP>
                       <a href="javascript:show_post_popup('SEARCH/SHOW_TRIMERGE_ESP','TrimergeESPShow',1000,800,0,0,0,1,1,0);">Tri-Merge Credit Report</a>
                    <TMPL_ELSE>
                       <TMPL_IF OFFLINE_TRIMERGE_REPORT>Tri-Merge Credit Report<TMPL_ELSE><a href="javascript:show_post_popup('TM/SHOW','TrimergeReport',1000,722,0,0,0,1,1,0,'<TMPL_VAR ACTION_REPORT>');">Tri-Merge Credit Report</a></TMPL_IF>
                    </TMPL_IF>
                </li>
            </ul>
        </div>
      </TMPL_UNLESS>
    </TMPL_UNLESS>

    <div id="myacclinks">
        <ul>
			<TMPL_LOOP SUBTAB_LOOP>
				<TMPL_UNLESS HIDE>
					<li id="IDX_<TMPL_VAR NAME=IDX>"<TMPL_IF ACTIVE> class="active"</TMPL_IF>>
						<TMPL_IF DISABLED>
							<TMPL_VAR LBL>
						<TMPL_ELSE>
							<a href="javascript:myacc_v3('<TMPL_VAR EVT>');"> <TMPL_VAR LBL></a>
						</TMPL_IF>
					</li>
				</TMPL_UNLESS>
			</TMPL_LOOP>
            <TMPL_IF MAIN_MENU>
			<TMPL_LOOP FAV_LOOP>
				<TMPL_UNLESS HIDE>
					<li id="IDX_<TMPL_VAR NAME=IDX>"<TMPL_IF ACTIVE> class="active"</TMPL_IF>>
						<TMPL_IF DISABLED>
							<TMPL_VAR SLABEL>
						<TMPL_ELSE>
							<a href="javascript:myacc_v3('<TMPL_VAR SEVENT>');"> <TMPL_VAR SLABEL></a>
						</TMPL_IF>
					</li>
				</TMPL_UNLESS>
			</TMPL_LOOP>
            </TMPL_IF>
        </ul>
    </div>
</div>
