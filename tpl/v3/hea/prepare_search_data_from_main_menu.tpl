<div id="primary_sections_data" style="display:none;">

    <ul id="tablist">
        <TMPL_UNLESS DA_ONLY>
            <li id="myacclinks" <TMPL_IF NAME=IM_ON_MYACCURINT>class="active"</TMPL_IF>>
                <a id="myaccIcon_sprite" href="javascript:myacc_v3('<TMPL_VAR MYA_1_EVT>');">My Accurint</a>
            </li>
        </TMPL_UNLESS>

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
        
        <li id="businesseslinks" <TMPL_IF NAME=IM_ON_BUS_SEARCH>class="active"</TMPL_IF>>
            <a id="myaccBusinessesIcon_sprite" trackid="tab_business" href="javascript:pm_tab_v3('SEARCH/SHOW_BUS');">Businesses</a>
        </li>
        
        <li id="licenseslinks" <TMPL_IF NAME=IM_ON_LICENSE_SEARCH>class="active"</TMPL_IF>>
            <a id="myaccLicensesIcon_sprite" trackid="tab_licenses" href="javascript:pm_tab_v3('WS_SEARCH/SHOW_LICENSE');">Licenses</a>
        </li>
        
        <li id="courtslinks" <TMPL_IF NAME=IM_ON_LEGAL_SEARCH>class="active"</TMPL_IF>>
            <a id="myaccCourtsIcon_sprite" href="javascript:pm_tab_v3('SEARCH/SHOW_CRIM');">Courts</a>
        </li>
        
        <li id="peoplelinks" <TMPL_IF NAME=IM_ON_SEARCH>class="active"</TMPL_IF>>
            <a id="myaccPeopleIcon_sprite" href="javascript:pm_tab_v3('SEARCH/SHOW_ADV');">People</a>
        </li>
        
        <li id="newslinks" <TMPL_IF NAME=IM_ON_NEWS_SEARCH>class="active"</TMPL_IF>>
            <a id="myaccLicensesIcon_sprite" trackid="tab_news" href="javascript:pm_tab_v3('SEARCH/SHOW_NEWS');">News</a>
        </li>
        
        <li id="assetslinks" <TMPL_IF NAME=IM_ON_ASSET_SEARCH>class="active"</TMPL_IF>>
            <a id="myaccAssetsIcon_sprite" trackid="tab_assets" href="javascript:pm_tab_v3('WS_SEARCH/SHOW_DL_REG');">Assets</a>
        </li>
        
        <li id="phoneslinks" <TMPL_IF NAME=IM_ON_DA_SEARCH>class="active"</TMPL_IF>>
            <a id="myaccPhonesIcon_sprite" trackid="tab_phones" href="javascript:pm_tab_v3('SEARCH/<TMPL_IF DELETE_CUSTOM_DA_WIRELESS>SHOW_DA_BASIC<TMPL_ELSE>SHOW_DA_WIRELESS</TMPL_IF>');">Phones</a>
        </li>
        
        <li id="sirislinks">
            <a id="myaccLicensesIcon_sprite" trackid="tab_siris" href="javascript:general_win('https://nhcaa.lexisnexis.com','SIRIS','','',1,1,1,1,1,1); void(0);">SIRIS</a>
        </li>

        <TMPL_IF SHOW_IDM_ANALYSIS_SECTION>
            <li id="analysislinks" <TMPL_IF NAME=IM_ON_ANALYSIS_SEARCH>class="active"</TMPL_IF>>
                <a id="myaccAnalysisIcon_sprite" trackid="tab_analysis" href="javascript:show_post_popup('SEARCH/SHOW_IDM_VISUALIZATION','IDMVisualizationWin',850,650,1,1,1,1,1,0);">Analytics</a>
            </li>
        </TMPL_IF>
        
        <li id="recordretrievallinks">
           <a id="myaccLicensesIcon_sprite" trackid="tab_recordretrieval" href="javascript:show_post_popup('LOGIN/SHOW_POPUP','EnableWindow',620,620,0,0,0,0,0,0,'','emsi_enable_main');">Record Retrieval</a>
        </li>
        
        <li id="batchinglinks">
            <a id="batchIcon" trackid="tab_batching" href="javascript:show_post_popup('BATCH/START_BATCH','BatchWin',800,650,0,0,0,1,1,0,'<TMPL_VAR NAME=ACTION_BATCH>');">Batching</a>
        </li>
    </ul>
</div>

<div id="main_menu_data">
    <div id="peoplelinks">
        <ul>         
			<li id="<TMPL_VAR NAME=IDX_PERSON>"<TMPL_IF NAME="PERSON_SEARCH"> class="active"</TMPL_IF>>
				<TMPL_IF DISABLE_PERSON>Person Search<TMPL_ELSE>
					<a href="javascript:pm_tab_v3('SEARCH/SHOW_SEARCH');">Person Search</a>
				</TMPL_IF>
			</li>
            <TMPL_IF ENABLE_ADVANCED_SEARCH>
                <li id="<TMPL_VAR NAME=IDX_ADV>"<TMPL_IF NAME="ADV_SEARCH"> class="active"</TMPL_IF>>
                    <TMPL_IF DISABLE_ADV>Advanced Person<TMPL_ELSE>
                        <a href="javascript:pm_tab_v3('SEARCH/SHOW_ADV');">Advanced Person</a>
                    </TMPL_IF>
                </li>
            </TMPL_IF>
            <li id="<TMPL_VAR NAME=IDX_PAW>"<TMPL_IF NAME="PAW_SEARCH"> class="active"</TMPL_IF>>
                <TMPL_IF DISABLE_PAW>People at Work<TMPL_ELSE>
                    <a href="javascript:pm_tab_v3('SEARCH/SHOW_PAW');">People at Work</a>
                </TMPL_IF>
            </li>    
            <TMPL_UNLESS HIDE_CARRIER_DISCOVERY_CONTRIBUTOR>
				<li id="<TMPL_VAR NAME=IDX_CARRIER_DISCOVERY>"<TMPL_IF NAME="CARRIER_DISCOVERY_SEARCH"> class="active"</TMPL_IF>>
					<TMPL_IF DISABLE_CARRIER_DISCOVERY>Carrier Discovery<TMPL_ELSE>
						<a href="javascript:pm_tab_v3('SEARCH/SHOW_CARRIER_DISCOVERY');">Carrier Discovery</a>
					</TMPL_IF>
				</li>
			</TMPL_UNLESS>
			<li id="<TMPL_VAR NAME=IDX_INSTANT_ID>" <TMPL_IF NAME="INSTANT_ID_REPORT"> class="active"</TMPL_IF>><TMPL_IF DISABLE_INSTANT_ID>InstantID<TMPL_ELSE><a href="javascript:placeholder_clear();pm_tab_v3('SEARCH/SHOW_INSTANT_ID');">InstantID</a></TMPL_IF></li>
            <li id="<TMPL_VAR NAME=IDX_PATRIOTACT>"<TMPL_IF NAME="PATRIOTACT_SEARCH"> class="active"</TMPL_IF>>
                <TMPL_IF DISABLE_PATRIOTACT>USA PATRIOT Act<TMPL_ELSE>
                    <a href="javascript:pm_tab_v3('SEARCH/SHOW_PATRIOTACT');">USA PATRIOT Act</a>
                </TMPL_IF>
            </li>
            <li id="<TMPL_VAR NAME=IDX_VOTER_REGISTRATION>"<TMPL_IF NAME="VOTER_REGISTRATION_SEARCH"> class="active"</TMPL_IF>>
                <TMPL_IF DISABLE_VOTER_REGISTRATION>Voter Registrations<TMPL_ELSE>
                    <a href="javascript:pm_tab_v3('SEARCH/SHOW_VOTER_REGISTRATION');">Voter Registrations</a>
                </TMPL_IF>
            </li>
            <li id="<TMPL_VAR NAME=IDX_SEXPREDATOR>"<TMPL_IF NAME="SEXPREDATOR_SEARCH"> class="active"</TMPL_IF>>
                <TMPL_IF DISABLE_SEXPREDATOR>Sexual Offenders<TMPL_ELSE>
                    <a href="javascript:pm_tab_v3('SEARCH/SHOW_SEXPREDATOR');">Sexual Offenders</a>
                </TMPL_IF>
            </li>
            <li id="<TMPL_VAR NAME=IDX_DEATH>"<TMPL_IF NAME="DEATH_SEARCH"> class="active"</TMPL_IF>>
                <TMPL_IF DISABLE_DEATH>Death Records<TMPL_ELSE>
                    <a href="javascript:pm_tab_v3('WS_SEARCH/SHOW_DEATH');">Death Records</a>
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
            <TMPL_IF SHOW_SOCIAL_REPORT>
                <li id="<TMPL_VAR NAME=IDX_SOC_REPORT>"<TMPL_IF NAME="SOC_REPORT"> class="active"</TMPL_IF>>
                    <TMPL_IF DISABLE_SOC_REPORT>Social Network Report<TMPL_ELSE>
                        <a href="javascript:pm_tab_v3('SEARCH/SHOW_SOC');">Social Network Report</a>
                    </TMPL_IF>
                </li>
            </TMPL_IF>
            
<!--
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
-->
        </ul>
    </div>

    <div id="phoneslinks">
        <ul>
            <li><TMPL_IF DISABLE_DA_WIRELESS>Phones Plus<TMPL_ELSE><a href="javascript:send_event('SEARCH/SHOW_DA_WIRELESS');">Phones Plus</a></TMPL_IF></li>
            <li><TMPL_IF DISABLE_DA_BASIC>Basic Lookup<TMPL_ELSE><a href="javascript:send_event('SEARCH/SHOW_DA_BASIC');">Basic Lookup</a></TMPL_IF></li>
            <li><TMPL_IF DISABLE_DA_REVERSE>Reverse Lookup<TMPL_ELSE><a href="javascript:send_event('SEARCH/SHOW_DA_REVERSE');">Reverse Lookup</a></TMPL_IF></li>
            <li><TMPL_IF DISABLE_CANADIAN_PHONES>Canadian Phones<TMPL_ELSE><a href="cp_modal('Canadian Phones Legal Disclaimer','',0.6,1,1,700);">Canadian Phones</a></TMPL_IF></li>
            
            
			<li id="<TMPL_VAR NAME=IDX_DA_WIRELESS>"<TMPL_IF NAME="DA_WIRELESS_SEARCH"> class="active"</TMPL_IF>>
				<TMPL_IF DISABLE_DA_WIRELESS>
					Phones Plus
				<TMPL_ELSE>
					<a href="javascript:pm_tab_v3('SEARCH/SHOW_DA_WIRELESS');">Phones Plus</a>
				</TMPL_IF>
			</li>
			<li id="<TMPL_VAR NAME=IDX_DA_BASIC>"<TMPL_IF NAME="DA_BASIC_SEARCH"> class="active"</TMPL_IF>>
				<TMPL_IF DISABLE_DA_BASIC>
					Basic Lookup
				<TMPL_ELSE>
					<a href="javascript:pm_tab_v3('SEARCH/SHOW_DA_BASIC');">Basic Lookup</a>
				</TMPL_IF>
			</li>
			<li id="<TMPL_VAR NAME=IDX_DA_REVERSE>"<TMPL_IF NAME="DA_REVERSE_SEARCH"> class="active"</TMPL_IF>>
				<TMPL_IF DISABLE_DA_REVERSE>
					Reverse Lookup
				<TMPL_ELSE>
					<a href="javascript:pm_tab_v3('SEARCH/SHOW_DA_REVERSE');">Reverse Lookup</a>
				</TMPL_IF>
			</li>
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

    <div id="newslinks">
        <ul>
            <TMPL_UNLESS RESTRICT_LNLP_CONTENT>
            <TMPL_UNLESS DONT_SHOW_NEWS>
                <TMPL_UNLESS DELETE_CUSTOM_NEWS>
                    <li id="<TMPL_VAR NAME=IDX_NEWS>"<TMPL_IF NAME="NEWS_SEARCH"> class="active"</TMPL_IF>>
                        <TMPL_IF DISABLE_NEWS>People in the News<TMPL_ELSE>
                            <a href="javascript:pm_tab_v3('SEARCH/SHOW_NEWS');">People in the News</a>
                        </TMPL_IF>
                    </li>
                </TMPL_UNLESS>
				<TMPL_UNLESS DELETE_CUSTOM_BUS_NEWS>
					<li id="<TMPL_VAR NAME=IDX_BUS_NEWS>"<TMPL_IF NAME="BUS_NEWS_SEARCH"> class="active"</TMPL_IF>>
						<TMPL_IF DISABLE_BUS_NEWS>Businesses in the News<TMPL_ELSE>
							<a href="javascript:pm_tab_v3('SEARCH/SHOW_BUS_NEWS');">Businesses in the News</a>
						</TMPL_IF>
					</li>
				</TMPL_UNLESS>
				<TMPL_UNLESS DELETE_CUSTOM_INSTOPICS_NEWS>
					<li id="<TMPL_VAR NAME=IDX_INSTOPICS_NEWS>"<TMPL_IF NAME="INSTOPICS_NEWS_SEARCH"> class="active"</TMPL_IF>>
						<TMPL_IF DISABLE_INSTOPICS_NEWS>Insurance Topics in the News<TMPL_ELSE>
							<a href="javascript:pm_tab_v3('SEARCH/SHOW_INSTOPICS_NEWS');">Insurance Topics in the News</a>
						</TMPL_IF>
					</li>
				</TMPL_UNLESS>
				<TMPL_UNLESS DELETE_CUSTOM_DO_NEWS>
					<li id="<TMPL_VAR NAME=IDX_DO_NEWS>"<TMPL_IF NAME="DO_NEWS_SEARCH"> class="active"</TMPL_IF>>
						<TMPL_IF DISABLE_DO_NEWS>Deaths & Obituaries in the News<TMPL_ELSE>
							<a href="javascript:pm_tab_v3('SEARCH/SHOW_DO_NEWS');">Deaths & Obituaries in the News</a>
						</TMPL_IF>
					</li>
				</TMPL_UNLESS>
				<TMPL_UNLESS DELETE_CUSTOM_ARCHIVED_NEWS>
					<li id="<TMPL_VAR NAME=IDX_ARCHIVED_NEWS>"<TMPL_IF NAME="ARCHIVED_NEWS_SEARCH"> class="active"</TMPL_IF>>
						<TMPL_IF DISABLE_ARCHIVED_NEWS>Archived News<TMPL_ELSE>
							<a href="javascript:pm_tab_v3('SEARCH/SHOW_ARCHIVED_NEWS');">Archived News</a>
						</TMPL_IF>
					</li>
				</TMPL_UNLESS>
				<TMPL_UNLESS DELETE_CUSTOM_LN_NEGATIVE_NEWS>
					<li id="<TMPL_VAR NAME=IDX_LN_NEGATIVE_NEWS>"<TMPL_IF NAME="NEG_NEWS_SEARCH"> class="active"</TMPL_IF>>
						<TMPL_IF LN_NEGATIVE_NEWS>Negative News<TMPL_ELSE>
							<a href="javascript:pm_tab_v3('SEARCH/SHOW_NEG_NEWS');">Negative News</a>
						</TMPL_IF>
					</li>
				</TMPL_UNLESS>
            </TMPL_UNLESS>
            </TMPL_UNLESS>
            

        </ul>
    </div>

    <div id="recordretrievallinks">
        <ul>
           <TMPL_IF NAME="EMSI_APPROVED">
           <li id ="<TMPL_VAR NAME=IDX_EMSI>"><TMPL_IF DISABLE_EMSI>Medical, Employment and Business Records<TMPL_ELSE><a href=" javascript:med_win('<TMPL_VAR NAME=ACTION>?EVENT=SEARCH/SHOW_EMSI&SESSION_ID=<TMPL_VAR NAME=SESSION_ID>&CSRF_TOKEN=<TMPL_VAR NAME=CSRF_TOKEN>','MedWin');" >Medical, Employment and Business Records</a></TMPL_IF></li>
           <TMPL_ELSE>
           <li id ="<TMPL_VAR NAME=IDX_EMSI>"><a href="javascript:show_post_popup('LOGIN/SHOW_POPUP','EnableWindow',620,620,0,0,0,0,0,0,'','emsi_enable_main');">Medical, Employment and Business Records</a></li>
           </TMPL_IF>
        </ul>
    </div>
    
    <div id="batchinglinks">
        <ul>      
	  		<TMPL_UNLESS IS_RESELLER>
        	    <li id="CDX_PEOPLE"><TMPL_UNLESS DISABLE_BATCH><a href="javascript:show_post_popup('BATCH/START_BATCH','BatchWin',800,650,0,0,0,1,1,0,'<TMPL_VAR NAME=ACTION_BATCH>');">People Batch</a><TMPL_ELSE>People Batch</TMPL_UNLESS></li>
			</TMPL_UNLESS>
			<li id="CDX_PHONE"><TMPL_UNLESS DISABLE_BATCH><a href="javascript:show_post_popup('PHONEBATCH/START_BATCH','BatchWin',800,650,0,0,0,1,1,0,'<TMPL_VAR NAME=ACTION_BATCH>');">Waterfall Phones & Addresses</a><TMPL_ELSE>Waterfall Phones & Addresses</TMPL_UNLESS></li>
			<TMPL_IF IS_BATCH_ADMIN>
				<li id="CDX_SURE"><TMPL_UNLESS DISABLE_BATCH><a href="javascript:show_post_popup('SURECONTACTBATCH/START_BATCH','BatchWin',800,650,0,0,0,1,1,0,'<TMPL_VAR NAME=ACTION_BATCH>');">SureContact Batch</a><TMPL_ELSE>SureContact Batch</TMPL_UNLESS></li>
				<li id="CDX_WATCH"><TMPL_UNLESS DISABLE_WATCHDOG><a href="javascript:show_post_popup('WATCHDOG/START','BatchWin',800,650,0,0,0,1,1,0,'<TMPL_VAR NAME=ACTION_BATCH>');">Accurint Watchdog</a><TMPL_ELSE><a href="javascript:general_win('<TMPL_VAR NAME=HTMLPATH>/watchdog/watchdog_ad.html','WatchDogPopupWin','550','',0,0,0,1,1,0);void(0);")>Accurint Watchdog</a></TMPL_UNLESS></li>
				<li id="CDX_INSTANT"><TMPL_UNLESS DISABLE_BATCH><a href="javascript:show_post_popup('INSTANTIDBATCH/START_BATCH','BatchWin',800,650,0,0,0,1,1,0,'<TMPL_VAR NAME=ACTION_BATCH>');">InstantID</a><TMPL_ELSE>InstantID</TMPL_UNLESS></li>
				<li id="CDX_PLUS"><TMPL_UNLESS DISABLE_BATCH><a href="javascript:show_post_popup('PHONESPLUSBATCH/START_BATCH','BatchWin',800,650,0,0,0,1,1,0,'<TMPL_VAR NAME=ACTION_BATCH>');">Phones Plus</a><TMPL_ELSE>Phones Plus</TMPL_UNLESS></li>
				<li id="CDX_OFAC"><TMPL_UNLESS DISABLE_BATCH><a href="javascript:show_post_popup('OFACBATCH/START_BATCH','BatchWin',800,650,0,0,0,1,1,0,'<TMPL_VAR NAME=ACTION_BATCH>');">USA PATRIOT Act</a><TMPL_ELSE>USA PATRIOT Act</TMPL_UNLESS></li>
				<li id="CDX_INSTANT_BUS"><TMPL_UNLESS DISABLE_BATCH><a href="javascript:show_post_popup('INSTANTIDBATCH/START_BATCH','BatchWin',800,650,0,0,0,1,1,0,'<TMPL_VAR NAME=ACTION_BATCH>');">Business InstantID</a><TMPL_ELSE>Business InstantID</TMPL_UNLESS></li>
				<li id="CDX_BUS"><TMPL_UNLESS DISABLE_BATCH><a href="javascript:show_post_popup('BATCH/BUS_START_BATCH','BatchWin',800,650,0,0,0,1,1,0,'<TMPL_VAR NAME=ACTION_BATCH>');">Business</a><TMPL_ELSE>Business</TMPL_UNLESS></li>
				<li id="CDX_BUS_COL"><TMPL_UNLESS DISABLE_BATCH><a href="javascript:show_post_popup('BATCH/BUS_DUEX_START_BATCH','BatchWin',800,650,0,0,0,1,1,0,'<TMPL_VAR NAME=ACTION_BATCH>');">Business Collectors</a><TMPL_ELSE>Business Collectors</TMPL_UNLESS></li>
			</TMPL_IF>
            <TMPL_IF ALLOW_CDM>
               <INPUT type=hidden NAME="CDM_COMPANY_ID" VALUE="">
               <li id="CDX_CDM"><a href="javascript:show_post_popup('CDM/START_CDM','Core_Data_Management',1150,800,1,1,1,1,1,0);">Core Data Management</a></li>
            </TMPL_IF>
        </ul>
    </div>
    
    <div id="sirislinks">
        <ul>
			<li id="">
				<a href="javascript:general_win('https://nhcaa.lexisnexis.com','SIRIS','','',1,1,1,1,1,1); void(0);">SIRIS</a>
			</li>
        </ul>
    </div>
    
    <div id="businesseslinks">
        <ul>
            <li id="<TMPL_VAR NAME=IDX_BUS>"<TMPL_IF NAME="BUS_SEARCH"> class="active"</TMPL_IF>>
                <TMPL_IF DISABLE_BUS>Business<TMPL_ELSE>
                    <a href="javascript:pm_tab_v3('SEARCH/SHOW_BUS');">Business</a>
                </TMPL_IF>
            </li>
            <li id="<TMPL_VAR NAME=IDX_CORPORATION>"<TMPL_IF NAME="CORPORATION_SEARCH"> class="active"</TMPL_IF>>
                <TMPL_IF DISABLE_CORPORATION>Corporation Filings<TMPL_ELSE>
                    <a href="javascript:pm_tab_v3('WS_SEARCH/SHOW_CORPORATION');">Corporation Filings</a>
                </TMPL_IF>
            </li>
            <li id="<TMPL_VAR NAME=IDX_UCC>"<TMPL_IF NAME="UCC_SEARCH"> class="active"</TMPL_IF>>
                <TMPL_IF DISABLE_UCC>National UCC Filings<TMPL_ELSE>
                    <a href="javascript:pm_tab_v3('WS_SEARCH/SHOW_UCC');">National UCC Filings</a>
                </TMPL_IF>
            </li>
            <li id="<TMPL_VAR NAME=IDX_WHOIS>"<TMPL_IF NAME="WHOIS_SEARCH"> class="active"</TMPL_IF>>
                <TMPL_IF DISABLE_WHOIS>Internet Domains<TMPL_ELSE>
                    <a href="javascript:pm_tab_v3('SEARCH/SHOW_WHOIS');">Internet Domains</a>
                </TMPL_IF>
            </li>
            <TMPL_UNLESS DELETE_CUSTOM_D_AND_B>
                <li id="<TMPL_VAR NAME=IDX_D_AND_B>"<TMPL_IF NAME="D_AND_B_SEARCH"> class="active"</TMPL_IF>>
                    <TMPL_IF DISABLE_D_AND_B>Dun &amp; Bradstreet<TMPL_ELSE>
                        <a href="javascript:pm_tab_v3('SEARCH/SHOW_D_AND_B');">Dun &amp; Bradstreet</a>
                    </TMPL_IF>
                </li>
            </TMPL_UNLESS>
            <TMPL_UNLESS DELETE_CUSTOM_DELCO>
                <li id="<TMPL_VAR NAME=IDX_DELCO>"<TMPL_IF NAME="DELCO_SEARCH"> class="active"</TMPL_IF>>
                    <TMPL_IF DISABLE_DELCO>Delaware Corporations<TMPL_ELSE>
                        <a href="javascript:pm_tab_v3('SEARCH/SHOW_DELCO');">Delaware  Corporations</a>
                    </TMPL_IF>
                </li>
            </TMPL_UNLESS>
            <TMPL_UNLESS IS_RESELLER>
                <li id="<TMPL_VAR NAME=IDX_BUS_CREDIT>"<TMPL_IF NAME="BUS_CREDIT_SEARCH"> class="active"</TMPL_IF>>
                    <TMPL_IF DISABLE_BUS_CREDIT>Business Credit<TMPL_ELSE>
                        <a href="javascript:pm_tab_v3('SEARCH/SHOW_BUS_CREDIT');">Business Credit</a>
                    </TMPL_IF>
                </li>
            </TMPL_UNLESS>

           <li id="<TMPL_VAR NAME=IDX_BUS_INSTANT_ID>"<TMPL_IF NAME="BUS_INSTANT_ID_REPORT"> class="active"</TMPL_IF>>
                <TMPL_IF DISABLE_BUS_INSTANT_ID>
                    Business InstantID
                <TMPL_ELSE>
                <a href="javascript:pm_tab_v3('SEARCH/SHOW_BUS_INSTANT_ID');">Business InstantID</a>
                </TMPL_IF>
            </li>

            <li id="<TMPL_VAR NAME=IDX_FEIN>"<TMPL_IF NAME="FEIN_SEARCH"> class="active"</TMPL_IF>>
                <TMPL_IF DISABLE_FEIN>Federal Employer ID Numbers (FEIN)<TMPL_ELSE>
                    <a href="javascript:pm_tab_v3('SEARCH2/SHOW_FEIN');">Federal Employer ID Numbers (FEIN)</a>
                </TMPL_IF>
            </li>
            <TMPL_UNLESS RESTRICT_LNLP_CONTENT>
                <li id="<TMPL_VAR NAME=IDX_DBGLOBAL>"<TMPL_IF NAME="DBGLOBAL_SEARCH"> class="active"</TMPL_IF>>
                    <TMPL_IF DISABLE_DBGLOBAL>D & B Global Market Identifiers<TMPL_ELSE>
                        <a href="javascript:pm_tab_v3('SEARCH/SHOW_DBGLOBAL');">D & B Global Market Identifiers</a>
                    </TMPL_IF>
                </li>
            </TMPL_UNLESS>
            <TMPL_UNLESS RESTRICT_LNLP_CONTENT>
                <li id="<TMPL_VAR NAME=IDX_SEC>"<TMPL_IF NAME="SEC_SEARCH"> class="active"</TMPL_IF>>
                    <TMPL_IF DISABLE_SEC>SEC Filings Search<TMPL_ELSE>
                        <a href="javascript:pm_tab_v3('SEARCH/SHOW_SEC');">SEC Filings Search</a>
                    </TMPL_IF>
                </li>
            </TMPL_UNLESS>
            <li id="<TMPL_VAR NAME=IDX_OSHA>"<TMPL_IF NAME="OSHA_SEARCH"> class="active"</TMPL_IF>>
                <TMPL_IF DISABLE_OSHA>OSHA Investigative Reports<TMPL_ELSE>
                    <a href="javascript:pm_tab_v3('SEARCH2/SHOW_OSHA');">OSHA Investigative Reports</a>
                </TMPL_IF>
            </li>		            
            <li id="<TMPL_VAR NAME=IDX_FICTIOUS>"<TMPL_IF NAME="FICTIOUS_SEARCH"> class="active"</TMPL_IF>>
                <TMPL_UNLESS DISABLE_FICTIOUS>
                    <a href="javascript:pm_tab_v3('SEARCH/SHOW_FICTIOUS');">Fictitious Business Name</a>
                <TMPL_ELSE>Fictitious Business Name</TMPL_UNLESS>
            </li>

        </ul>
        
    </div>


    <div id="assetslinks">
        <ul>
            <li id="<TMPL_VAR NAME=IDX_MV>"<TMPL_IF NAME="DL_REG_SEARCH"> class="active"</TMPL_IF>>
                <TMPL_IF DISABLE_MV>Motor Vehicles<TMPL_ELSE>
                    <a href="javascript:pm_tab_v3('SEARCH/SHOW_DL_REG');">Motor Vehicles</a>
                </TMPL_IF>
            </li>
            <TMPL_UNLESS DELETE_CUSTOM_RT_MVR>
                <TMPL_UNLESS HIDE_RT_MVR>
                    <li id="<TMPL_VAR NAME=IDX_RT_MVR>"<TMPL_IF NAME="RT_MVR_SEARCH"> class="active"</TMPL_IF>>
                        <TMPL_IF DISABLE_RT_MVR>Real-Time Vehicle Registration<TMPL_ELSE>
                            <a class="mainmenu" href="javascript:pm_tab_v3('SEARCH/SHOW_RT_MVR');">Real-Time Vehicle Registration</a>
                        </TMPL_IF>
                    </li>
                </TMPL_UNLESS>
            </TMPL_UNLESS>
            <li id="<TMPL_VAR NAME=IDX_ASSESSMENT>"<TMPL_IF NAME="PROPERTY_SEARCH"> class="active"</TMPL_IF>>
                <TMPL_IF DISABLE_ASSESSMENT>Property Assessments<TMPL_ELSE>
                    <a href="javascript:pm_tab_v3('SEARCH/SHOW_PROP');">Property Assessments</a>
                </TMPL_IF>
            </li>
            <li id="<TMPL_VAR NAME=IDX_DEEDS>"<TMPL_IF NAME="PROPERTY_DEED_SEARCH"> class="active"</TMPL_IF>>
                <TMPL_IF DISABLE_DEEDS>Property Deeds<TMPL_ELSE>
                    <a href="javascript:pm_tab_v3('SEARCH/SHOW_PROP_DEED');">Property Deeds</a>
                </TMPL_IF>
            </li>
            <li id="<TMPL_VAR NAME=IDX_VESSEL>"<TMPL_IF NAME="MERCHANT_VESSEL_SEARCH"> class="active"</TMPL_IF>>
                <TMPL_IF DISABLE_VESSEL>Watercraft<TMPL_ELSE>
                    <a href="javascript:pm_tab_v3('SEARCH/SHOW_VESSEL');">Watercraft</a>
                </TMPL_IF>
            </li>
            <li id="<TMPL_VAR NAME=IDX_AIRCRAFT>"<TMPL_IF NAME="AIRCRAFT_SEARCH"> class="active"</TMPL_IF>>
                <TMPL_IF DISABLE_AIRCRAFT>FAA Aircraft<TMPL_ELSE>
                    <a href="javascript:pm_tab_v3('SEARCH/SHOW_AIRCRAFT');">FAA Aircraft</a>
                </TMPL_IF>
            </li>
        </ul>
    </div>

    <div id="courtslinks">
        <ul>
           <li id="<TMPL_VAR NAME=IDX_BANKRUPTCY>"<TMPL_IF NAME="BANKRUPTCY_SEARCH"> class="active"</TMPL_IF>>
                <TMPL_IF DISABLE_BANKRUPTCY>Bankruptcy<TMPL_ELSE>
                    <a href="javascript:pm_tab_v3('SEARCH/SHOW_BANKRUPTCY');">Bankruptcy</a>
                </TMPL_IF>
            </li>            
           <li id="<TMPL_VAR NAME=IDX_CRIM>"<TMPL_IF NAME="CRIM_SEARCH"> class="active"</TMPL_IF>>
                <TMPL_IF DISABLE_CRIM>State & Local Criminal Records<TMPL_ELSE>
                    <a href="javascript:pm_tab_v3('SEARCH/SHOW_CRIM');">State & Local Criminal Records</a>
                </TMPL_IF>
            </li>            
           <li id="<TMPL_VAR NAME=IDX_CIVIL_COURT>"<TMPL_IF NAME="CIVIL_COURT_SEARCH"> class="active"</TMPL_IF>>
                <TMPL_IF DISABLE_CIVIL_COURT>State Civil Courts<TMPL_ELSE>
                    <a href="javascript:pm_tab_v3('SEARCH/SHOW_CIVIL_COURT');">State Civil Courts</a>
                </TMPL_IF>
            </li>            
            <TMPL_UNLESS DELETE_CUSTOM_COURT_WIZARD>
                <TMPL_UNLESS IS_RESELLER>
                    <TMPL_IF SHOW_CS_REPORT>
                        <li id="<TMPL_VAR NAME=IDX_COURT>">
                        <TMPL_IF DISABLE_COURT>
				<a href="javascript:show_post_popup('LOGIN/SHOW_POPUP','CourtPopupWin','600','450',0,0,0,1,1,0,'','court_ad');">Court Search Wizard</a>
                            <TMPL_ELSE>
                                <a href="javascript:show_post_popup('LOGIN/SHOW_POPUP','CourtPopupWin','600','600',0,0,0,1,1,0,'','court_wizard_select_individual');">Court Search Wizard</a>
                        </TMPL_IF>
                        </li>
                    </TMPL_IF>
                </TMPL_UNLESS>
            </TMPL_UNLESS>            
            <li id="<TMPL_VAR NAME=IDX_OFFICIAL_RECORDS>"<TMPL_IF NAME="OFFICIAL_RECORDS_SEARCH"> class="active"</TMPL_IF>>
                <TMPL_IF DISABLE_OFFICIAL_RECORDS>Official Records<TMPL_ELSE>
                    <a href="javascript:pm_tab_v3('SEARCH/SHOW_OFFICIAL_RECORDS');">Official Records</a>
                </TMPL_IF>
            </li>
            <li id="<TMPL_VAR NAME=IDX_MARRIAGE>"<TMPL_IF NAME="MARRIAGE_SEARCH"> class="active"</TMPL_IF>>
                <TMPL_IF DISABLE_MARRIAGE>Marriages/Divorces<TMPL_ELSE>
                    <a href="javascript:pm_tab_v3('SEARCH/SHOW_MARRIAGE');">Marriages/Divorces</a>
                </TMPL_IF>
            </li>
            <li id="<TMPL_VAR NAME=IDX_FORECLOSURE>"<TMPL_IF NAME="FORECLOSURE_SEARCH"> class="active"</TMPL_IF>>
                <TMPL_IF DISABLE_FORECLOSURE>Foreclosures<TMPL_ELSE>
                    <a href="javascript:pm_tab_v3('SEARCH/SHOW_FORECLOSURE');">Foreclosures</a>
                </TMPL_IF>
            </li>
            <li id="<TMPL_VAR NAME=IDX_LIEN>"<TMPL_IF NAME="LIEN_SEARCH"> class="active"</TMPL_IF>>
                <TMPL_IF DISABLE_LIEN>Liens &amp; Judgments<TMPL_ELSE>
                    <a href="javascript:pm_tab_v3('SEARCH/SHOW_LIENS');">Liens &amp; Judgments</a>
                </TMPL_IF>
            </li>
			<li id="<TMPL_VAR NAME=IDX_FED_CRIM_COURT>"<TMPL_IF NAME="FED_CRIM_COURT_SEARCH"> class="active"</TMPL_IF>>
                <TMPL_UNLESS DISABLE_FED_CRIM_COURT>
                  <a href="javascript:pm_tab_v3('SEARCH/SHOW_FED_CRIM_COURT');">Federal Criminal Court Records</a>
                <TMPL_ELSE>
                  Federal Criminal Court Records
                </TMPL_UNLESS>  
            </li> 
            <li id="<TMPL_VAR NAME=IDX_FED_CIVIL_COURT>"<TMPL_IF NAME="FED_CIVIL_COURT_SEARCH"> class="active"</TMPL_IF>>
                <TMPL_IF DISABLE_FED_CIVIL_COURT>Federal Civil Court Records<TMPL_ELSE>
                    <a href="javascript:pm_tab_v3('SEARCH/SHOW_FED_CIVIL_COURT');">Federal Civil Court Records</a>
                </TMPL_IF>
            </li>
            <li id="<TMPL_VAR NAME=IDX_ACCIDENT>"<TMPL_IF NAME="ACCIDENT_SEARCH"> class="active"</TMPL_IF>>
                <TMPL_IF DISABLE_ACCIDENT>National Motor Vehicle Accidents<TMPL_ELSE>
                    <a href="javascript:pm_tab_v3('SEARCH/SHOW_ACCIDENT');">National Motor Vehicle Accidents</a>
                </TMPL_IF>
            </li>
        </ul>
    </div>

    <div id="licenseslinks">
        <ul>           
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
            <li id="<TMPL_VAR NAME=IDX_HUNTING_LICENSE>"<TMPL_IF NAME="HUNTING_LICENSE_SEARCH"> class="active"</TMPL_IF>>
                <TMPL_IF DISABLE_HUNTING_LICENSE>Hunting/Fishing Licenses<TMPL_ELSE>
                    <a href="javascript:pm_tab_v3('SEARCH/SHOW_HUNTING_LICENSE');">Hunting/Fishing Licenses</a>
                </TMPL_IF>
            </li>
            <li id="<TMPL_VAR NAME=IDX_CONCEALED_WEAPON>"<TMPL_IF NAME="CONCEALED_WEAPON_SEARCH"> class="active"</TMPL_IF>>
                <TMPL_IF DISABLE_CONCEALED_WEAPON>Concealed Weapons Permits<TMPL_ELSE>
                    <a href="javascript:pm_tab_v3('SEARCH/SHOW_CONCEALED_WEAPON');">Concealed Weapons Permits</a>
                </TMPL_IF>
            </li>
            <li id="<TMPL_VAR NAME=IDX_FIREARMS>"<TMPL_IF NAME="FIREARMS_SEARCH"> class="active"</TMPL_IF>>
                <TMPL_IF DISABLE_FIREARMS>Federal Firearms &amp; Explosives<TMPL_ELSE>
                    <a href="javascript:pm_tab_v3('SEARCH/SHOW_FIREARMS');">Federal Firearms &amp; Explosives</a>
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
        </ul>
    </div>

<div id="healthcarelinks">
    <ul>
        <TMPL_UNLESS DELETE_CUSTOM_PROVIDER>
            <li id="<TMPL_VAR NAME=IDX_PROVIDER>"<TMPL_IF NAME="PROVIDER_SEARCH"> class="active"</TMPL_IF>>
                <TMPL_IF DISABLE_PROVIDER>Provider Search<TMPL_ELSE>
                    <a href="javascript:pm_tab_v3('SEARCH/SHOW_PROVIDER');">Provider Search</a>
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
        <TMPL_UNLESS DELETE_CUSTOM_DEA>
            <li id="<TMPL_VAR NAME=IDX_DEA>"<TMPL_IF NAME="DEA_SEARCH"> class="active"</TMPL_IF>>
                <TMPL_IF DISABLE_DEA>DEA Controlled Substances<TMPL_ELSE>
                    <a href="javascript:pm_tab_v3('SEARCH/SHOW_DEA');">DEA Controlled Substances</a>
                </TMPL_IF>
            </li>
        </TMPL_UNLESS>
        <TMPL_UNLESS DELETE_CUSTOM_OABMS>
            <li id="<TMPL_VAR NAME=IDX_OABMS>"<TMPL_IF NAME="OABMS_SEARCH"> class="active"</TMPL_IF>>
                <TMPL_IF DISABLE_OABMS>American Board of Medical Specialties<TMPL_ELSE>
                    <a href="javascript:pm_tab_v3('SEARCH/SHOW_OABMS');">American Board of Medical Specialties</a>
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
        <TMPL_UNLESS DELETE_CUSTOM_NPI_SEARCH>
            <li id="<TMPL_VAR NAME=IDX_NPI_SEARCH>"<TMPL_IF NAME="NPI_SEARCH"> class="active"</TMPL_IF>>
                <TMPL_IF DISABLE_NPI_SEARCH>NPI Data Search<TMPL_ELSE>
                    <a href="javascript:pm_tab_v3('SEARCH/SHOW_NPI');">NPI Data Search</a>
                    <b><font color="#ed1c24">&nbsp;NEW!</font></b>
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
        <TMPL_UNLESS DELETE_CUSTOM_NCPDP_SEARCH>
            <li id="<TMPL_VAR NAME=IDX_NCPDP_SEARCH>"<TMPL_IF NAME="NCPDP_SEARCH"> class="active"</TMPL_IF>>
                <TMPL_IF DISABLE_NCPDP_SEARCH>NCPDP Search<TMPL_ELSE>
                    <a href="javascript:pm_tab_v3('SEARCH/SHOW_NCPDP');">NCPDP Search</a>
                    <b><font color="#ed1c24">&nbsp;NEW!</font></b>
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
        <TMPL_UNLESS DELETE_CUSTOM_PROVIDER_REPORT_CARD>
            <li id="<TMPL_VAR NAME=IDX_PROVIDER_REPORT_CARD>"<TMPL_IF NAME="PROVIDER_REPORT_CARD"> class="active"</TMPL_IF>>
                <TMPL_IF DISABLE_PROVIDER_REPORT_CARD>Provider Report Card<TMPL_ELSE>
                    <a href="javascript:pm_tab_v3('SEARCH2/SHOW_PROVIDER_REPORT_CARD');">Provider Report Card</a>
                    <b><font color="#ed1c24">&nbsp;NEW!</font></b>
                </TMPL_IF>
            </li>
        </TMPL_UNLESS>
    </ul>
</div>

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

    <TMPL_IF SHOW_IDM_ANALYSIS_SECTION>
    <div id="analysislinks">
      <ul>
        <TMPL_IF SHOW_IDM_VISUALIZATION>
          <li id="idmvisualization"<TMPL_IF ACTIVE> class="active"</TMPL_IF> >
            <a id="myaccAnalysisIcon_sprite" href="javascript:show_post_popup('SEARCH/SHOW_IDM_VISUALIZATION','IDMVisualizationWin',850,650,1,1,1,1,1,0);">Identity Management Dashboard</a>
          </li>
        </TMPL_IF>
        <TMPL_IF SHOW_BIZ_ANALYTICS_HOLD>  <!-- hold on first release -->
          <li id="busanalytics" <TMPL_IF ACTIVE> class="active"</TMPL_IF>>
            <a id="myaccAnalysisIcon_sprite" href="javascript:show_post_popup('SEARCH/SHOW_BIZ_ANALYTICS','BusAnalyticsWin',850,650,1,1,1,1,1,0);">Business Analytics Dashboard</a>
          </li>
        </TMPL_IF>
      </ul>
    </div>
    </TMPL_IF>

</div>
