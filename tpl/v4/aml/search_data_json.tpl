<div id="main_menu_data" class="no-print">
    <ul data-sid="myfavlinks" data-li-prefix="myfavs">
        <TMPL_IF FAV_LOOP>
            <TMPL_LOOP FAV_LOOP>
                <TMPL_IF SEVENT>
                    <TMPL_UNLESS DISABLED>
                        <li data-id="myfavs_IDX_<TMPL_VAR NAME=IDX>" data-dummy='1'>
                            <a href="javascript:pm_tab_v3('<TMPL_VAR NAME="SEVENT">');"><TMPL_VAR NAME="SLABEL"></a>
                        </li>
                    </TMPL_UNLESS>	
                </TMPL_IF>
            </TMPL_LOOP>
        </TMPL_IF>
    </ul>
    <ul data-sid="myfreqlinks" data-li-prefix="myfreqs">
        <TMPL_IF FREQ_LOOP>
            <TMPL_LOOP FREQ_LOOP>
                <TMPL_IF SEVENT>
                    <TMPL_UNLESS DISABLED>
                        <li data-id="myfreqs_IDX_<TMPL_VAR NAME=IDX>">
                            <a href="javascript:pm_tab_v3('<TMPL_VAR NAME="SEVENT">');"><TMPL_VAR NAME="SLABEL"></a>
                        </li>
                    </TMPL_UNLESS>	
                </TMPL_IF>
            </TMPL_LOOP>
        </TMPL_IF>
    </ul>
    <ul data-sid="mytasklinks" data-li-prefix="mytask">
        <TMPL_IF MTASK_LOOP>
            <TMPL_LOOP MTASK_LOOP>
                <TMPL_IF name>
                    <TMPL_UNLESS DISABLED>
                        <li data-id="mytask_IDX_<TMPL_VAR NAME=index>">
                            <a href="javascript:show_mytask('MYTASK/SHOW_RUN', <TMPL_VAR NAME="index">);"><TMPL_VAR NAME="name"></a>
                        </li>
                    </TMPL_UNLESS>	
                </TMPL_IF>
            </TMPL_LOOP>
        </TMPL_IF>
    </ul>
</div>
<TMPL_UNLESS FROM_PREP_ICON>
    <script>
        var enable_search_data_json_tpl = 1;
        var sectionsJSON = [
            <TMPL_UNLESS DA_ONLY>
            {
                "id":"myfavlinks_ps", 
                "icon":"fa-fav",
                <TMPL_IF IM_ON_MYACCURINT>"active":1,</TMPL_IF>
                "href":"javascript:myacc_v3('<TMPL_VAR MYA_1_EVT>');", 
                "label":"Favorite"
            },
            </TMPL_UNLESS>
            {
                "id":"myfreqlinks_ps", 
                "icon":"fa-freq",
                <TMPL_IF IM_ON_MYACCURINT>"active":1,</TMPL_IF>
                "href":"javascript:myacc_v3('<TMPL_VAR MYA_1_EVT>');", 
                "label":"Frequent"
            },
            {
                "id":"mytasklinks_ps", 
                "icon":"fa-fav",
                <TMPL_IF IM_ON_MYACCURINT>"active":1,</TMPL_IF>
                "href":"javascript:myacc_v3('<TMPL_VAR MYA_1_EVT>');", 
                "label":"myTasks"
            },
            {
                "id":"peoplelinks_ps", 
                "icon":"person_icon",
                <TMPL_IF IM_ON_SEARCH>"active":1,</TMPL_IF>
                "href":"javascript:pm_tab_v3('SEARCH2/SHOW_FAP');", 
                "label":"People"
            },
            {
                "id":"businesseslinks_ps", 
                "icon":"bus_icon",
                <TMPL_IF IM_ON_BUS_SEARCH>"active":1,</TMPL_IF>
                "href":"javascript:pm_tab_v3('SEARCH2/SHOW_FAB');", 
                "label":"Business"
            },
            {
                "id":"assetslinks_ps", 
                "icon":"property_icon",
                <TMPL_IF IM_ON_ASSET_SEARCH>"active":1,</TMPL_IF>
                "href":"javascript:pm_tab_v3('SEARCH2/SHOW_DL_REG');", 
                "label":"Property & Assets"
            },
            {
                "id":"courtslinks_ps", 
                "icon":"court_icon",
                <TMPL_IF IM_ON_LEGAL_SEARCH>"active":1,</TMPL_IF>
                "href":"javascript:pm_tab_v3('SEARCH2/SHOW_CRIM');", 
                "label":"Court & Admin Filings"
            },
            {
                "id":"newslinks_ps", 
                "icon":"news_icon",
                "href":"", 
                "label":"News"
            },
            {
                "id":"internationallinks_ps", 
                "icon":"international_icon",
                <TMPL_IF IM_ON_INTL_DOCKET_SEARCH>"active":1,</TMPL_IF>
                "href":"javascript:pm_tab_v3('SEARCH2/SHOW_INTDOCKETS');", 
                "label":"International"
            },
            {
                "id":"regcompliancelinks_ps", 
                "icon":"regulations_icon",
                "href":"",
                "label":"Regulations & Compliance"
            },
            {
                "id":"directtosource_ps", 
                "icon":"direct_to_source_icon",
                "href":"",
                "label":"Direct-to-Source"
            },
            {
                "id":"authserviceslinks_ps", 
                "icon":"authentication_services_icon",
                "href":"javascript:pm_tab_v3('SEARCH2/SHOW_ID_VERIFY');", 
                "label":"Authentication Services"
            }
        ];
    </script>
</TMPL_UNLESS>


<script>
    var searchesJSON = [];
    var sectionsJSON2 = [];
    sectionsJSON2.push({"sid":"myfavlinks", "li-prefix":"myfavs"});
    <TMPL_IF FAV_LOOP>
        <TMPL_LOOP FAV_LOOP>
            <TMPL_IF SEVENT>
                <TMPL_UNLESS DISABLED>
                    searchesJSON.push({
                        "id":"myfavs_IDX_<TMPL_VAR IDX>",
                        "dummy":'1',
                        "href":"javascript:pm_tab_v3('<TMPL_VAR SEVENT>');", 
                        "label":"<TMPL_VAR SLABEL>",
                    });
                </TMPL_UNLESS>	
            </TMPL_IF>
        </TMPL_LOOP>
    </TMPL_IF>
    
    sectionsJSON2.push({"sid":"myfreqlinks", "li-prefix":"myfreqs"});
    <TMPL_IF FREQ_LOOP>
        <TMPL_LOOP FREQ_LOOP>
            <TMPL_IF SEVENT>
                <TMPL_UNLESS DISABLED>
                    searchesJSON.push({
                        "id":"myfreqs_IDX_<TMPL_VAR IDX>",
                        "href":"javascript:pm_tab_v3('<TMPL_VAR SEVENT>');", 
                        "label":"<TMPL_VAR SLABEL>",
                    });
                </TMPL_UNLESS>	
            </TMPL_IF>
        </TMPL_LOOP>
    </TMPL_IF>
    
    sectionsJSON2.push({"sid":"mytasklinks", "li-prefix":"mytask"});
    <TMPL_IF MTASK_LOOP>
        <TMPL_LOOP MTASK_LOOP>
            <TMPL_IF name>
                <TMPL_UNLESS DISABLED>
                    searchesJSON.push({
                        "id":"mytask_IDX_<TMPL_VAR index>",
                        "href":"javascript:show_mytask('MYTASK/SHOW_RUN', <TMPL_VAR index>);", 
                        "label":"<TMPL_VAR name>",
                    });
                </TMPL_UNLESS>	
            </TMPL_IF>
        </TMPL_LOOP>
    </TMPL_IF>
    
    sectionsJSON2.push({"sid":"peoplelinks", "li-prefix":"people"});
    searchesJSON.push({
        "deleted":"<TMPL_VAR DELETE_PERSON>", 
        "disabled":"<TMPL_VAR DISABLE_PERSON>", 
        "id":"people_<TMPL_VAR IDX_PERSON>", 
        "menu-show-group":1,
        <TMPL_IF FAP_SEARCH>"active":1,</TMPL_IF>
        "icon":"person_icon",
        "href":"javascript:pm_tab_v3('SEARCH2/SHOW_FAP');", 
        "label":"Find a Person"
    });
    searchesJSON.push({
        "deleted":"<TMPL_VAR DELETE_INSTANT_ID>", 
        "disabled":"<TMPL_VAR DISABLE_INSTANT_ID>", 
        "id":"people_<TMPL_VAR IDX_INSTANT_ID>", 
        "menu-show-group":1,
        <TMPL_IF INSTANT_ID_REPORT>"active":1,</TMPL_IF>
        "icon":"person_icon",
        "href":"javascript:pm_tab_v3('SEARCH2/SHOW_INSTANT_ID');", 
        "label":"InstantID<sup class='sup-reg-symbol'>®</sup> Consumer Verification"
    });
    searchesJSON.push({
        "deleted":"<TMPL_VAR DELETE_INSTANT_ID_RF>", 
        "disabled":"<TMPL_VAR DISABLE_INSTANT_ID_RF>", 
        "id":"people_<TMPL_VAR IDX_INSTANT_ID_RF>", 
        "menu-show-group":1,
        <TMPL_IF INSTANT_IDRF_REPORT>"active":1,</TMPL_IF>
        "icon":"person_icon",
        "href":"javascript:pm_tab_v3('SEARCH2/SHOW_INSTANT_IDRF');", 
        "label":"InstantID<sup class='sup-reg-symbol'>®</sup> Consumer Verification with Red Flags Rule Report"
    });
    <TMPL_IF ALLOW_LNFP>
        searchesJSON.push({
            "deleted":"<TMPL_VAR DELETE_INSTANT_ID_FP>", 
            "disabled":"<TMPL_VAR DISABLE_INSTANT_ID_FP>", 
            "id":"people_<TMPL_VAR IDX_INSTANT_ID_FP>", 
            "menu-show-group":1,
            <TMPL_IF INSTANT_IDFP_REPORT>"active":1,</TMPL_IF>
            "icon":"person_icon",
            "href":"javascript:pm_tab_v3('SEARCH2/SHOW_INSTANT_IDFP');", 
            "label":"InstantID<sup class='sup-reg-symbol'>®</sup> Consumer Verification with FraudPoint<sup class='sup-reg-symbol'>®</sup> Score"
        });
        searchesJSON.push({
            "deleted":"<TMPL_VAR DELETE_INSTANT_ID_RFFP>", 
            "disabled":"<TMPL_VAR DISABLE_INSTANT_ID_RFFP>", 
            "id":"people_<TMPL_VAR IDX_INSTANT_ID_RFFP>", 
            "menu-show-group":1,
            <TMPL_IF INSTANT_IDRFFP_REPORT>"active":1,</TMPL_IF>
            "icon":"person_icon",
            "href":"javascript:pm_tab_v3('SEARCH2/SHOW_INSTANT_IDRFFP');", 
            "label":"InstantID<sup class='sup-reg-symbol'>®</sup> Consumer Verification with Red Flags & FraudPoint<sup class='sup-reg-symbol'>®</sup> Score"
        });
    </TMPL_IF>
    searchesJSON.push({
        "deleted":"<TMPL_VAR DELETE_CASE_AUDIT>", 
        "disabled":"<TMPL_VAR DISABLE_CASE_AUDIT>", 
        "id":"people_<TMPL_VAR IDX_CASE_AUDIT>", 
        "menu-show-group":1,
        <TMPL_IF CASE_AUDIT>"active":1,</TMPL_IF>
        "icon":"person_icon",
        "href":"javascript:pm_tab_v3('SEARCH2/SHOW_IDENTITY_REPORT');", 
        "label":"LexisNexis<sup class='sup-reg-symbol'>®</sup> Identity Report"
    });
    <TMPL_IF ALLOW_LNFP>
        searchesJSON.push({
            "deleted":"<TMPL_VAR DELETE_FRAUDPOINT_REPORT>", 
            "disabled":"<TMPL_VAR DISABLE_FRAUDPOINT_REPORT>", 
            "id":"people_<TMPL_VAR IDX_FRAUDPOINT_REPORT>", 
            "menu-show-group":1,
            <TMPL_IF FRAUDPOINT_SCORE_REPORT>"active":1,</TMPL_IF>
            "icon":"person_icon",
            "href":"javascript:pm_tab_v3('SEARCH2/SHOW_FRAUDPOINT_SCORE');", 
            "label":"FraudPoint<sup class='sup-reg-symbol'>®</sup> Score"
        });
        searchesJSON.push({
            "deleted":"<TMPL_VAR DELETE_FRAUDPOINT_RF>", 
            "disabled":"<TMPL_VAR DISABLE_FRAUDPOINT_RF>", 
            "id":"people_<TMPL_VAR IDX_FRAUDPOINT_RF>", 
            "menu-show-group":1,
            <TMPL_IF FRAUDPOINT_SCORE_WITH_REDFLAGS_REPORT>"active":1,</TMPL_IF>
            "icon":"person_icon",
            "href":"javascript:pm_tab_v3('SEARCH2/SHOW_FRAUDPOINT_SCORE_WITH_REDFLAGS');", 
            "label":"FraudPoint<sup class='sup-reg-symbol'>®</sup> Score with Red Flags Rule Report"
        });
    </TMPL_IF>
    searchesJSON.push({
        "deleted":"<TMPL_VAR DELETE_PHONE_FINDER_REPORT>", 
        "disabled":"<TMPL_VAR DISABLE_PHONE_FINDER_REPORT>", 
        "icon":"phone_icon", 
        "id":"people_<TMPL_VAR IDX_PHONE_FINDER_REPORT>", 
        "menu-show-group":1,
        <TMPL_IF PHONE_FINDER_REPORT_SEARCH>"active":1,</TMPL_IF>
        "href":"javascript:pm_tab_v3('SEARCH2/SHOW_PHONE_FINDER')",
        "label":"LexisNexis<sup class='sup-reg-symbol'>®</sup> Phone Finder"
    });
    searchesJSON.push({
        "deleted":"<TMPL_VAR DELETE_DA_WIRELESS>", 
        "disabled":"<TMPL_VAR DISABLE_DA_WIRELESS>", 
        "icon":"phone_icon", 
        "id":"people_<TMPL_VAR IDX_DA_WIRELESS>", 
        "menu-show-group":1,
        <TMPL_IF SEARCH_DA_WIRELESS>"active":1,</TMPL_IF>
        "href":"javascript:pm_tab_v3('SEARCH2/SHOW_DA_WIRELESS');", 
        "label":"Phones Plus"
    });
    searchesJSON.push({
        "deleted":"<TMPL_VAR DELETE_DA_BASIC>", 
        "disabled":"<TMPL_VAR DISABLE_DA_BASIC>", 
        "icon":"phone_icon", 
        "id":"people_<TMPL_VAR IDX_DA_BASIC>", 
        "menu-show-group":1,
        <TMPL_IF SEARCH_PHONE_LOOKUP>"active":1,</TMPL_IF>
        "href":"javascript:pm_tab_v3('SEARCH2/SHOW_PHONE_LOOKUP');", 
        "label":"Phone Lookup"
    });
    searchesJSON.push({
        "deleted":"<TMPL_VAR DELETE_BIOGRAPHIES_SEARCH>", 
        "disabled":"<TMPL_VAR DISABLE_BIOGRAPHIES_SEARCH>", 
        "id":"people_<TMPL_VAR IDX_BIOGRAPHIES_SEARCH>",
        "menu-hide-group":1,
        <TMPL_IF BUSINESS_EXECUTIVE_AND_POLITICAL_BIOGRAPHIES_SEARCH>"active":1,</TMPL_IF>
        "icon":"person_icon",
        "href":"javascript:pm_tab_v3('SEARCH2/SHOW_BUSINESS_EXECUTIVE_AND_POLITICAL_BIOGRAPHIES');", 
        "label":"Business Executive and Political Biographies"
    });
    searchesJSON.push({
        "deleted":"<TMPL_VAR DELETE_DL>", 
        "disabled":"<TMPL_VAR DISABLE_DL>", 
        "id":"people_<TMPL_VAR IDX_DL>",
        "menu-hide-group":1,
        <TMPL_IF LICENSE_SEARCH>"active":1,</TMPL_IF>
        "icon":"person_icon",
        "href":"javascript:pm_tab_v3('SEARCH2/SHOW_LICENSE');", 
        "label":"Driver Licenses"
    });
    searchesJSON.push({
        "deleted":"<TMPL_VAR DELETE_EMAIL>", 
        "disabled":"<TMPL_VAR DISABLE_EMAIL>", 
        "id":"people_<TMPL_VAR IDX_EMAIL>",
        "menu-hide-group":1,
        <TMPL_IF EMAIL_SEARCH>"active":1,</TMPL_IF>
        "icon":"person_icon",
        "href":"javascript:pm_tab_v3('SEARCH2/SHOW_EMAIL');", 
        "label":"Email Address/Social Network Report"
    });
    searchesJSON.push({
        "deleted":"<TMPL_VAR DELETE_SSA_VERIFY>", 
        "disabled":"<TMPL_VAR DISABLE_SSA_VERIFY>", 
        "id":"people_<TMPL_VAR IDX_SSA_VERIFY>",
        "menu-hide-group":1,
        <TMPL_IF SEARCH_SSA_VERIFY>"active":1,</TMPL_IF>
        "href":"javascript:pm_tab_v3('SEARCH/SHOW_SSA_VERIFY');", 
        "label":"SSA Verify"
    });
    searchesJSON.push({
        "deleted":"<TMPL_VAR DELETE_MARRIAGE>", 
        "disabled":"<TMPL_VAR DISABLE_MARRIAGE>", 
        "id":"people_<TMPL_VAR IDX_MARRIAGE>",
        "menu-hide-group":1,
        <TMPL_IF MARRIAGE_SEARCH>"active":1,</TMPL_IF>
        "icon":"person_icon",
        "href":"javascript:pm_tab_v3('SEARCH2/SHOW_MARRIAGE');", 
        "label":"Marriage & Divorce Records"
    });
    searchesJSON.push({
        "deleted":"<TMPL_VAR DELETE_PATRIOTACT>", 
        "disabled":"<TMPL_VAR DISABLE_PATRIOTACT>", 
        "id":"people_<TMPL_VAR IDX_PATRIOTACT>",
        "menu-hide-group":1,
        <TMPL_IF OFAC_SEARCH>"active":1,</TMPL_IF>
        "icon":"person_icon",
        "href":"javascript:pm_tab_v3('SEARCH2/SHOW_OFAC');", 
        "label":"OFAC & Other Watch Lists"
    });
    searchesJSON.push({
        "deleted":"<TMPL_VAR DELETE_PAW>", 
        "disabled":"<TMPL_VAR DISABLE_PAW>", 
        "id":"people_<TMPL_VAR IDX_PAW>",
        "menu-hide-group":1,
        <TMPL_IF PAW_SEARCH>"active":1,</TMPL_IF>
        "icon":"person_icon",
        "href":"javascript:pm_tab_v3('SEARCH/SHOW_PAW');", 
        "label":"People At Work"
    });
    searchesJSON.push({
        "deleted":"<TMPL_VAR DELETE_PROF_LICENSE>", 
        "disabled":"<TMPL_VAR DISABLE_PROF_LICENSE>", 
        "id":"people_<TMPL_VAR IDX_PROF_LICENSE>",
        "menu-hide-group":1,
        <TMPL_IF PROF_LICENSE_SEARCH>"active":1,</TMPL_IF>
        "icon":"person_icon",
        "href":"javascript:pm_tab_v3('SEARCH2/SHOW_PROF_LICENSE');", 
        "label":"Professional Licenses"
    });
    searchesJSON.push({
        "deleted":"<TMPL_VAR DELETE_STATEWIDE_PERSON>", 
        "disabled":"<TMPL_VAR DISABLE_STATEWIDE_PERSON>", 
        "id":"people_<TMPL_VAR IDX_STATEWIDE_PERSON>",
        "menu-hide-group":1,
        <TMPL_IF STATEWIDE_PERSON_SEARCH>"active":1,</TMPL_IF>
        "icon":"person_icon",
        "href":"javascript:pm_tab_v3('SEARCH2/SHOW_STATEWIDE_PERSON');", 
        "label":"Statewide Public Records Person Search"
    });
    searchesJSON.push({
        "deleted":"<TMPL_VAR DELETE_VOTER_REGISTRATION>", 
        "disabled":"<TMPL_VAR DISABLE_VOTER_REGISTRATION>", 
        "id":"people_<TMPL_VAR IDX_VOTER_REGISTRATION>",
        "menu-hide-group":1,
        <TMPL_IF VOTER_REGISTRATION_SEARCH>"active":1,</TMPL_IF>
        "icon":"person_icon",
        "href":"javascript:pm_tab_v3('SEARCH2/SHOW_VOTER_REGISTRATION');", 
        "label":"Voter Registrations"
    });

    <TMPL_IF DO_NOT_WRITE_TO_CLIENT>
        ======================================================================================
        THESE SEARCHES ARE DISABLED.
        THESE ITEMS SHOULD NOT BE WRITTEN TO THE CLIENT.
        DO NOT MOVE OUT OF THIS BLOCK UNTIL READY.
        ======================================================================================

        searchesJSON.push({
            "deleted":"<TMPL_VAR DELETE_CONCEALED_WEAPON>", 
            "disabled":"<TMPL_VAR DISABLE_CONCEALED_WEAPON>", 
            "id":"people_<TMPL_VAR IDX_CONCEALED_WEAPON>",
            <TMPL_IF CONCEALED_WEAPON_SEARCH>"active":1,</TMPL_IF>
            "icon":"person_icon",
            "href":"javascript:pm_tab_v3('SEARCH2/SHOW_CONCEALED_WEAPON');", 
            "label":"Concealed Weapons Permits"
        });
        searchesJSON.push({
            "deleted":"<TMPL_VAR DELETE_DEA>", 
            "disabled":"<TMPL_VAR DISABLE_DEA>", 
            "id":"people_<TMPL_VAR IDX_DEA>",
            <TMPL_IF DEA_SEARCH>"active":1,</TMPL_IF>
            "icon":"person_icon",
            "href":"javascript:pm_tab_v3('SEARCH2/SHOW_DEA');", 
            "label":"Drug Enforcement Administration Registrants"
        });
        searchesJSON.push({
            "deleted":"<TMPL_VAR DELETE_FAA_PILOT>", 
            "disabled":"<TMPL_VAR DISABLE_FAA_PILOT>", 
            "id":"people_<TMPL_VAR IDX_FAA_PILOT>",
            <TMPL_IF FAA_PILOT_SEARCH>"active":1,</TMPL_IF>
            "icon":"person_icon",
            "href":"javascript:pm_tab_v3('SEARCH2/SHOW_FAA_PILOT');", 
            "label":"FAA Pilot Licenses"
        });
        searchesJSON.push({
            "deleted":"<TMPL_VAR DELETE_FIREARMS>", 
            "disabled":"<TMPL_VAR DISABLE_FIREARMS>", 
            "id":"people_<TMPL_VAR IDX_FIREARMS>",
            <TMPL_IF FIREARMS_SEARCH>"active":1,</TMPL_IF>
            "icon":"person_icon",
            "href":"javascript:pm_tab_v3('SEARCH2/SHOW_FIREARMS');", 
            "label":"Federal Firearms & Explosives Licenses"
        });
        searchesJSON.push({
            "deleted":"<TMPL_VAR DELETE_HUNTING_LICENSE>", 
            "disabled":"<TMPL_VAR DISABLE_HUNTING_LICENSE>", 
            "id":"people_<TMPL_VAR IDX_HUNTING_LICENSE>",
            <TMPL_IF HUNTING_LICENSE_SEARCH>"active":1,</TMPL_IF>
            "icon":"person_icon",
            "href":"javascript:pm_tab_v3('SEARCH2/SHOW_HUNTING_LICENSE');", 
            "label":"Hunting & Fishing Licenses"
        });
        searchesJSON.push({
            "deleted":"<TMPL_VAR DELETE_MILITARY_PERSONNEL>", 
            "disabled":"<TMPL_VAR DISABLE_MILITARY_PERSONNEL>", 
            "id":"people_<TMPL_VAR IDX_MILITARY_PERSONNEL>",
            <TMPL_IF MILITARY_PERSONNEL_SEARCH>"active":1,</TMPL_IF>
            "icon":"person_icon",
            "href":"javascript:pm_tab_v3('SEARCH2/SHOW_MILITARY_PERSONNEL')">Military Personnel (Archived)"
        });
    </TMPL_IF>

    sectionsJSON2.push({"sid":"businesseslinks", "li-prefix":"business"});
    searchesJSON.push({
        "deleted":"<TMPL_VAR DELETE_BUS>", 
        "disabled":"<TMPL_VAR DISABLE_BUS>", 
        "id":"business_<TMPL_VAR IDX_BUS>", 
        "menu-show-group":1,
        <TMPL_IF FAB_SEARCH>"active":1,</TMPL_IF>
        "icon":"bus_icon",
        "href":"javascript:pm_tab_v3('SEARCH2/SHOW_FAB');", 
        "label":"Find a Business"
    });
    searchesJSON.push({
        "deleted":"<TMPL_VAR DELETE_BUS_INSTANT_ID>", 
        "disabled":"<TMPL_VAR DISABLE_BUS_INSTANT_ID>", 
        "id":"business_<TMPL_VAR IDX_BUS_INSTANT_ID>", 
        "menu-show-group":1,
        <TMPL_IF BUS_INSTANT_ID>"active":1,</TMPL_IF>
        "icon":"bus_icon",
        "href":"javascript:pm_tab_v3('SEARCH2/SHOW_BUS_INSTANT_ID')",
        "label":"InstantID<sup class='sup-reg-symbol'>®</sup> Business Verification"
    });
    searchesJSON.push({
        "deleted":"<TMPL_VAR DELETE_BUS_INSTANT_ID_FD>", 
        "disabled":"<TMPL_VAR DISABLE_BUS_INSTANT_ID_FD>", 
        "id":"business_<TMPL_VAR IDX_BUS_INSTANT_ID_FD>", 
        "menu-show-group":1,
        <TMPL_IF BUS_INSTANT_IDFD_REPORT>"active":1,</TMPL_IF>
        "icon":"bus_icon",
        "href":"javascript:pm_tab_v3('SEARCH2/SHOW_BUS_INSTANT_IDFD')",
        "label":"InstantID<sup class='sup-reg-symbol'>®</sup> Business Verification with FraudDefender<sup class='sup-reg-symbol'>®</sup>"
    });
    searchesJSON.push({
        "deleted":"<TMPL_VAR DELETE_DBGLOBAL>", 
        "disabled":"<TMPL_VAR DISABLE_DBGLOBAL>", 
        "id":"business_<TMPL_VAR IDX_DBGLOBAL>", 
        "menu-show-group":1,
        <TMPL_IF DBGLOBAL_SEARCH>"active":1,</TMPL_IF>
        "icon":"bus_icon",
        "href":"javascript:pm_tab_v3('SEARCH/SHOW_DBGLOBAL');", 
        "label":"D&B Global Market Identifiers"
    });
    searchesJSON.push({
        "deleted":"<TMPL_VAR DELETE_EXPERIAN>", 
        "disabled":"<TMPL_VAR DISABLE_EXPERIAN>", 
        "id":"business_<TMPL_VAR IDX_EXPERIAN>", 
        "menu-show-group":1,
        <TMPL_IF EXPERIAN_BUSINESS>"active":1,</TMPL_IF>
        "icon":"bus_icon",
        "href":"javascript:pm_tab_v3('SEARCH2/SHOW_EXPERIAN_BUSINESS');", 
        "label":"Experian Business Data"
    });
    searchesJSON.push({
        "deleted":"<TMPL_VAR DELETE_FICTIOUS>", 
        "disabled":"<TMPL_VAR DISABLE_FICTIOUS>", 
        "id":"business_<TMPL_VAR IDX_FICTIOUS>", 
        "menu-show-group":1,
        <TMPL_IF FICTIOUS_SEARCH>"active":1,</TMPL_IF>
        "icon":"bus_icon",
        "href":"javascript:pm_tab_v3('SEARCH2/SHOW_FICTIOUS');", 
        "label":"Fictitious Business Names/DBA"
    });
    searchesJSON.push({
        "deleted":"<TMPL_VAR DELETE_GUIDESTAR_SEARCH_INDEX>", 
        "disabled":"<TMPL_VAR DISABLE_GUIDESTAR_SEARCH_INDEX>", 
        "id":"business_<TMPL_VAR IDX_GUIDESTAR_SEARCH_INDEX>", 
        "menu-show-group":1,
        <TMPL_IF GUIDESTAR_SEARCH>"active":1,</TMPL_IF>
        "icon":"bus_icon",
        "href":"javascript:portal_disclaimer_v3('SEARCH2/SHOW_GUIDESTAR');", 
        "label":"GuideStar"
    });
    searchesJSON.push({
        "deleted":"<TMPL_VAR DELETE_LN_CORP_AFFILIATIONS>", 
        "disabled":"<TMPL_VAR DISABLE_LN_CORP_AFFILIATIONS>", 
        "id":"business_<TMPL_VAR IDX_LN_CORP_AFFILIATIONS>", 
        "menu-show-group":1,
        <TMPL_IF LN_CORP_AFFILIATIONS_SEARCH>"active":1,</TMPL_IF>
        "icon":"bus_icon",
        "href":"javascript:pm_tab_v3('SEARCH2/SHOW_LN_CORP_AFFILIATIONS');", 
        "label":"LexisNexis<sup class='sup-reg-symbol'>®</sup> Corporate Affiliations™"
    });
    searchesJSON.push({
        "deleted":"<TMPL_VAR DELETE_CORPORATION>", 
        "disabled":"<TMPL_VAR DISABLE_CORPORATION>", 
        "id":"business_<TMPL_VAR IDX_CORPORATION>", 
        "menu-show-group":1,
        <TMPL_IF CORPORATION>"active":1,</TMPL_IF>
        "icon":"bus_icon",
        "href":"javascript:pm_tab_v3('SEARCH2/SHOW_SOS_FILINGS');", 
        "label":"Secretary of State Filings"
    });
    searchesJSON.push({
        "deleted":"<TMPL_VAR DELETE_DELCO>", 
        "disabled":"<TMPL_VAR DISABLE_DELCO>", 
        "id":"business_<TMPL_VAR IDX_DELCO>", 
        "menu-show-group":1,
        <TMPL_IF DELCO_SEARCH>"active":1,</TMPL_IF>
        "icon":"bus_icon",
        "href":"javascript:pm_tab_v3('SEARCH2/SHOW_PORTAL_DELCO');", 
        "label":"Secretary of State - State of Delaware"
    });
    searchesJSON.push({
        "deleted":"<TMPL_VAR DELETE_LN_THOMSON_DIRECTORIES>", 
        "disabled":"<TMPL_VAR DISABLE_LN_THOMSON_DIRECTORIES>", 
        "id":"business_<TMPL_VAR IDX_LN_THOMSON_DIRECTORIES>",
        "menu-hide-group":1,
        <TMPL_IF THOMSON_DIRECTORIES_SEARCH>"active":1,</TMPL_IF>
        "icon":"bus_icon",
        "href":"javascript:pm_tab_v3('SEARCH2/SHOW_THOMSON_DIRECTORIES');", 
        "label":"Combined Banking Directories"
    });
    searchesJSON.push({
        "deleted":"<TMPL_VAR DELETE_LN_D_AND_B_MINORITY_AND_WOMEN_OWNER_BUSINESSES>", 
        "disabled":"<TMPL_VAR DISABLE_LN_D_AND_B_MINORITY_AND_WOMEN_OWNER_BUSINESSES>", 
        "id":"business_<TMPL_VAR IDX_LN_D_AND_B_MINORITY_AND_WOMEN_OWNER_BUSINESSES>",
        "menu-hide-group":1,
        <TMPL_IF LN_D_AND_B_MINORITY_AND_WOMEN_OWNER_BUSINESSES_SEARCH>"active":1,</TMPL_IF>
        "icon":"bus_icon",
        "href":"javascript:pm_tab_v3('SEARCH2/SHOW_LN_DAND_B_MINORITY_AND_WOMEN_OWNER_BUSINESSES');", 
        "label":"D&B DUNS Minority & Women-Owned Businesses"
    });
    searchesJSON.push({
        "deleted":"<TMPL_VAR DELETE_FEIN>", 
        "disabled":"<TMPL_VAR DISABLE_FEIN>", 
        "id":"business_<TMPL_VAR IDX_FEIN>",
        "menu-hide-group":1,
        <TMPL_IF FEIN_SEARCH>"active":1,</TMPL_IF>
        "icon":"bus_icon",
        "href":"javascript:pm_tab_v3('SEARCH2/SHOW_FEIN');", 
        "label":"D&B FEIN"
    });
    searchesJSON.push({
        "deleted":"<TMPL_VAR DELETE_LN_D_AND_B_PRIV_COMP>", 
        "disabled":"<TMPL_VAR DISABLE_LN_D_AND_B_PRIV_COMP>", 
        "id":"business_<TMPL_VAR IDX_LN_D_AND_B_PRIV_COMP>",
        "menu-hide-group":1,
        <TMPL_IF LN_D_AND_B_PRIV_COMP_SEARCH>"active":1,</TMPL_IF>
        "icon":"bus_icon",
        "href":"javascript:pm_tab_v3('SEARCH2/SHOW_LN_DAND_B_PRIVATE_COMPANY_INSIGHTS');", 
        "label":"D&B Private Company Insights"
    });
    searchesJSON.push({
        "deleted":"<TMPL_VAR DELETE_LN_HOOVER>", 
        "disabled":"<TMPL_VAR DISABLE_LN_HOOVER>", 
        "id":"business_<TMPL_VAR IDX_LN_HOOVER>",
        "menu-hide-group":1,
        <TMPL_IF HOOVER_COMPANY_CAPSULES_SEARCH>"active":1,</TMPL_IF>
        "icon":"bus_icon",
        "href":"javascript:pm_tab_v3('SEARCH2/SHOW_HOOVER_COMPANY_CAPSULES');", 
        "label":"Hoover's Company Capsules"
    });
    searchesJSON.push({
        "deleted":"<TMPL_VAR DELETE_SMALLBUSRISK_SEARCH_INDEX>", 
        "disabled":"<TMPL_VAR DISABLE_SMALLBUSRISK_SEARCH_INDEX>", 
        "id":"business_<TMPL_VAR IDX_SMALLBUSRISK_SEARCH_INDEX>",
        "menu-hide-group":1,
        <TMPL_IF SMALL_BUSINESS_RISK_SCORE_REPORT>"active":1,</TMPL_IF>
        "icon":"bus_icon",
        "href":"javascript:portal_disclaimer_v3('SEARCH2/SHOW_SMALL_BUSINESS_RISK_SCORE');", 
        "label":"LexisNexis<sup class='sup-reg-symbol'>®</sup> Small Business Risk Score"
    });
    searchesJSON.push({
        "deleted":"<TMPL_VAR DELETE_LN_MERGERSTAT>", 
        "disabled":"<TMPL_VAR DISABLE_LN_MERGERSTAT>", 
        "id":"business_<TMPL_VAR IDX_LN_MERGERSTAT>",
        "menu-hide-group":1,
        <TMPL_IF LN_MERGERSTAT_SEARCH>"active":1,</TMPL_IF>
        "icon":"bus_icon",
        "href":"javascript:pm_tab_v3('SEARCH2/SHOW_MERGERSTAT');", 
        "label":"Mergerstat"
    });
    searchesJSON.push({
        "deleted":"<TMPL_VAR DELETE_SEC>", 
        "disabled":"<TMPL_VAR DISABLE_SEC>", 
        "id":"business_<TMPL_VAR IDX_SEC>",
        "menu-hide-group":1,
        <TMPL_IF SEC_SEARCH>"active":1,</TMPL_IF>
        "icon":"bus_icon",
        "href":"javascript:pm_tab_v3('SEARCH2/SHOW_SEC');", 
        "label":"SEC Filings"
    });
    searchesJSON.push({
        "deleted":"<TMPL_VAR DELETE_LN_S_AND_P_CORP_DECISIONS>", 
        "disabled":"<TMPL_VAR DISABLE_LN_S_AND_P_CORP_DECISIONS>", 
        "id":"business_<TMPL_VAR IDX_LN_S_AND_P_CORP_DECISIONS>",
        "menu-hide-group":1,
        <TMPL_IF LN_S_AND_P_CORP_DECISIONS_SEARCH>"active":1,</TMPL_IF>
        "icon":"bus_icon",
        "href":"javascript:pm_tab_v3('SEARCH2/SHOW_S_AND_P_CORP_DECISIONS');", 
        "label":"Standard & Poor's Corporate Descriptions plus News"
    });
    searchesJSON.push({
        "deleted":"<TMPL_VAR DELETE_STATEWIDE_BUSINESS>", 
        "disabled":"<TMPL_VAR DISABLE_STATEWIDE_BUSINESS>", 
        "id":"business_<TMPL_VAR IDX_STATEWIDE_BUSINESS>",
        "menu-hide-group":1,
        <TMPL_IF STATEWIDE_BUSINESS_SEARCH>"active":1,</TMPL_IF>
        "icon":"bus_icon",
        "href":"javascript:pm_tab_v3('SEARCH2/SHOW_STATEWIDE_BUSINESS');", 
        "label":"Statewide Public Records Business Search"
    });

    <TMPL_IF DO_NOT_WRITE_TO_CLIENT>
        ======================================================================================
        THESE SEARCHES ARE DISABLED.
        THESE ITEMS SHOULD NOT BE WRITTEN TO THE CLIENT.
        DO NOT MOVE OUT OF THIS BLOCK UNTIL READY.
        ======================================================================================

        <!-- Not part of phase 1 release. -->
        searchesJSON.push({
            "deleted":"<TMPL_VAR DELETE_SUPPLIER_RISK_BUSINESS>", 
            "disabled":"<TMPL_VAR DISABLE_SUPPLIER_RISK_BUSINESS>", 
            "id":"business_<TMPL_VAR IDX_SUPPLIER_RISK_BUSINESS>", 
            "menu-show-group":1,
            <TMPL_IF BUS_RISK_COMPLIANCE_REPORT>"active":1,</TMPL_IF>
            "icon":"bus_icon",
            Business Risk Compliance Report
        });
    </TMPL_IF>			
    sectionsJSON2.push({"sid":"assetslinks", "li-prefix":"assets"});
    searchesJSON.push({
        "deleted":"<TMPL_VAR DELETE_LOCATION>", 
        "disabled":"<TMPL_VAR DISABLE_LOCATION>", 
        "id":"assets_<TMPL_VAR IDX_LOCATION>",
        <TMPL_IF LOCATION_SEARCH>"active":1,</TMPL_IF>
        "icon":"property_icon",
        "href":"javascript:pm_tab_v3('SEARCH2/SHOW_PORTAL_LOCATION');", 
        "label":"Find a Location"
    });
    searchesJSON.push({
        "deleted":"<TMPL_VAR DELETE_REAL_PROPERTY>", 
        "disabled":"<TMPL_VAR DISABLE_REAL_PROPERTY>", 
        "id":"assets_<TMPL_VAR IDX_REAL_PROPERTY>",
        <TMPL_IF REAL_PROPERTY_SEARCH>"active":1,</TMPL_IF>
        "icon":"property_icon",
        "href":"javascript:pm_tab_v3('SEARCH2/SHOW_REAL_PROPERTY');", 
        "label":"Real Property (Property Assessments, Deeds & Mortgages)"
    });
    searchesJSON.push({
        "deleted":"<TMPL_VAR DELETE_AIRCRAFT>", 
        "disabled":"<TMPL_VAR DISABLE_AIRCRAFT>", 
        "id":"assets_<TMPL_VAR IDX_AIRCRAFT>",
        <TMPL_IF AIRCRAFT_SEARCH>"active":1,</TMPL_IF>
        "icon":"property_icon",
        "href":"javascript:pm_tab_v3('SEARCH2/SHOW_AIRCRAFT');", 
        "label":"Aircraft Registrations"
    });
    searchesJSON.push({
        "deleted":"<TMPL_VAR DELETE_VESSEL>", 
        "disabled":"<TMPL_VAR DISABLE_VESSEL>", 
        "id":"assets_<TMPL_VAR IDX_VESSEL>",
        <TMPL_IF MERCHANT_VESSEL_SEARCH>"active":1,</TMPL_IF>
        "icon":"property_icon",
        "href":"javascript:pm_tab_v3('SEARCH2/SHOW_VESSEL');", 
        "label":"Boat Registrations"
    });
    searchesJSON.push({
        "deleted":"<TMPL_VAR DELETE_MORTGAGE_FRAUD_REPORT>", 
        "disabled":"<TMPL_VAR DISABLE_MORTGAGE_FRAUD_REPORT>", 
        "id":"assets_<TMPL_VAR IDX_MORTGAGE_FRAUD_REPORT>",
        <TMPL_IF MORTGAGE_FRAUD_REPORT>"active":1,</TMPL_IF>
        "icon":"property_icon",
        "href":"javascript:pm_tab_v3('SEARCH2/SHOW_MORTGAGEFRAUD_REPORT');", 
        "label":"Mortgage Fraud Report"
    });
    searchesJSON.push({
        "deleted":"<TMPL_VAR DELETE_MV>", 
        "disabled":"<TMPL_VAR DISABLE_MV>", 
        "id":"assets_<TMPL_VAR IDX_MV>",
        <TMPL_IF DL_REG_SEARCH>"active":1,</TMPL_IF>
        "icon":"property_icon",
        "href":"javascript:pm_tab_v3('SEARCH2/SHOW_DL_REG');", 
        "label":"Motor Vehicle Registrations"
    });
    searchesJSON.push({
        "deleted":"<TMPL_VAR DELETE_PROPHIST_SEARCH_INDEX>", 
        "disabled":"<TMPL_VAR DISABLE_PROPHIST_SEARCH_INDEX>", 
        "id":"assets_<TMPL_VAR IDX_PROPHIST_SEARCH_INDEX>",
        <TMPL_IF PROP_HISTORY_REPORT_SEARCH>"active":1,</TMPL_IF>
        "icon":"property_icon",
        "href":"javascript:pm_tab_v3('SEARCH2/SHOW_PROP_HISTORY_REPORT');", 
        "label":"Property History"
    });
    searchesJSON.push({
        "deleted":"<TMPL_VAR DELETE_PROPHIST_PLUS>", 
        "disabled":"<TMPL_VAR DISABLE_PROPHIST_PLUS>", 
        "id":"assets_<TMPL_VAR IDX_PROPHIST_PLUS>",
        <TMPL_IF PROP_HISTORY_SEARCH_FORM_NAME>"active":1,</TMPL_IF>
        "icon":"property_icon",
        "href":"javascript:pm_tab_v3('SEARCH2/SHOW_PROP_HISTORY_PLUS_REPORT');", 
        "label":"Property History Plus"
    });
    searchesJSON.push({
        "deleted":"<TMPL_VAR DELETE_VERIFICATION_OF_OCCUPANCY>", 
        "disabled":"<TMPL_VAR DISABLE_VERIFICATION_OF_OCCUPANCY>", 
        "id":"assets_<TMPL_VAR IDX_VERIFICATION_OF_OCCUPANCY>",
        <TMPL_IF VERIFICATION_OF_OCCUPANCY_REPORT>"active":1,</TMPL_IF>
        "icon":"property_icon",
        "href":"javascript:pm_tab_v3('SEARCH2/SHOW_VERIFICATION_OF_OCCUPANCY');", 
        "label":"Verification of Occupancy"
    });
    sectionsJSON2.push({"sid":"courtslinks", "li-prefix":"courts"});
    searchesJSON.push({
        "deleted":"<TMPL_VAR DELETE_BLJ>", 
        "disabled":"<TMPL_VAR DISABLE_BLJ>", 
        "id":"courts_<TMPL_VAR IDX_BLJ>",
        <TMPL_IF BLJ_SEARCH>"active":1,</TMPL_IF>
        "icon":"court_icon",
        "href":"javascript:pm_tab_v3('SEARCH2/SHOW_BLJ');", 
        "label":"Bankruptcies, Judgments & Liens"
    });
    searchesJSON.push({
        "deleted":"<TMPL_VAR DELETE_BANKRUPTCY>", 
        "disabled":"<TMPL_VAR DISABLE_BANKRUPTCY>", 
        "id":"courts_<TMPL_VAR IDX_BANKRUPTCY>",
        <TMPL_IF BANKRUPTCY_SEARCH>"active":1,</TMPL_IF>
        "icon":"court_icon",
        "href":"javascript:pm_tab_v3('SEARCH2/SHOW_BANKRUPTCY');", 
        "label":"Bankruptcies"
    });
    searchesJSON.push({
        "deleted":"<TMPL_VAR DELETE_UCC>", 
        "disabled":"<TMPL_VAR DISABLE_UCC>", 
        "id":"courts_<TMPL_VAR IDX_UCC>",
        <TMPL_IF UCC_SEARCH>"active":1,</TMPL_IF>
        "icon":"court_icon",
        "href":"javascript:pm_tab_v3('SEARCH2/SHOW_UCC');", 
        "label":"UCC Liens"
    });
    searchesJSON.push({
        "deleted":"<TMPL_VAR DELETE_LIEN>", 
        "disabled":"<TMPL_VAR DISABLE_LIEN>", 
        "id":"courts_<TMPL_VAR IDX_LIEN>",
        <TMPL_IF LIEN_SEARCH>"active":1,</TMPL_IF>
        "icon":"court_icon",
        "href":"javascript:pm_tab_v3('SEARCH2/SHOW_LIENS');", 
        "label":"Judgments & Tax Liens"
    });
    searchesJSON.push({
        "deleted":"<TMPL_VAR DELETE_US_CIVIL_CRIMINAL_FILINGS>", 
        "disabled":"<TMPL_VAR DISABLE_US_CIVIL_CRIMINAL_FILINGS>", 
        "id":"courts_<TMPL_VAR IDX_US_CIVIL_CRIMINAL_FILINGS>",
        <TMPL_IF US_CIVIL_CRIMINAL_FILINGS_SEARCH>"active":1,</TMPL_IF>
        "icon":"court_icon",
        "href":"javascript:pm_tab_v3('SEARCH2/SHOW_US_CRIMINAL');", 
        "label":"Federal Civil & Criminal Docket Summaries"
    });
    searchesJSON.push({
        "deleted":"<TMPL_VAR DELETE_STATE_CIVIL_CRIMINAL_FILINGS>", 
        "disabled":"<TMPL_VAR DISABLE_STATE_CIVIL_CRIMINAL_FILINGS>", 
        "id":"courts_<TMPL_VAR IDX_STATE_CIVIL_CRIMINAL_FILINGS>",
        <TMPL_IF STATE_CIVIL_CRIMINAL_FILINGS_SEARCH>"active":1,</TMPL_IF>
        "icon":"court_icon",
        "href":"javascript:pm_tab_v3('SEARCH2/SHOW_STATE_CRIMINAL');", 
        "label":"State Civil & Criminal Filings"
    });
    searchesJSON.push({
        "deleted":"<TMPL_VAR DELETE_CRIM>", 
        "disabled":"<TMPL_VAR DISABLE_CRIM>", 
        "id":"courts_<TMPL_VAR IDX_CRIM>",
        <TMPL_IF CRIM_SEARCH>"active":1,</TMPL_IF>
        "icon":"court_icon",
        "href":"javascript:pm_tab_v3('SEARCH2/SHOW_CRIM');", 
        "label":"Criminal Records"
    });
    searchesJSON.push({
        "deleted":"<TMPL_VAR DELETE_CASE_LAW_SEARCH>", 
        "disabled":"<TMPL_VAR DISABLE_CASE_LAW_SEARCH>", 
        "id":"courts_<TMPL_VAR IDX_CASE_LAW_SEARCH>",
        <TMPL_IF CASE_LAW_SEARCH>"active":1,</TMPL_IF>
        "icon":"court_icon",
        "href":"javascript:pm_tab_v3('SEARCH2/SHOW_CASE_LAW');", 
        "label":"Case Law"
    });
    searchesJSON.push({
        "deleted":"<TMPL_VAR DELETE_ACCIDENT>", 
        "disabled":"<TMPL_VAR DISABLE_ACCIDENT>", 
        "id":"courts_<TMPL_VAR IDX_ACCIDENT>",
        <TMPL_IF ACCIDENT_SEARCH>"active":1,</TMPL_IF>
        "icon":"court_icon",
        "href":"javascript:pm_tab_v3('SEARCH2/SHOW_ACCIDENT');", 
        "label":"Florida Accidents"
    });
    searchesJSON.push({
        "deleted":"<TMPL_VAR DELETE_FORECLOSURE>", 
        "disabled":"<TMPL_VAR DISABLE_FORECLOSURE>", 
        "id":"courts_<TMPL_VAR IDX_FORECLOSURE>",
        <TMPL_IF FORECLOSURE_SEARCH>"active":1,</TMPL_IF>
        "icon":"court_icon",
        "href":"javascript:pm_tab_v3('SEARCH2/SHOW_FORECLOSURE');", 
        "label":"Foreclosures"
    });
    searchesJSON.push({
        "deleted":"<TMPL_VAR DELETE_JURY_VERDICTS_AND_SETTLEMENTS>", 
        "disabled":"<TMPL_VAR DISABLE_JURY_VERDICTS_AND_SETTLEMENTS>", 
        "id":"courts_<TMPL_VAR IDX_JURY_VERDICTS_AND_SETTLEMENTS>",
        <TMPL_IF JURY_VERDICTS_AND_SETTLEMENTS_SEARCH>"active":1,</TMPL_IF>
        "icon":"court_icon",
        "href":"javascript:pm_tab_v3('SEARCH2/SHOW_JURY_VERDICT');", 
        "label":"Jury Verdicts & Settlements"
    });
    searchesJSON.push({
        "deleted":"<TMPL_VAR DELETE_FINANCIAL_SANCTION>", 
        "disabled":"<TMPL_VAR DISABLE_FINANCIAL_SANCTION>", 
        "id":"courts_<TMPL_VAR IDX_FINANCIAL_SANCTION>",
        <TMPL_IF PORTAL_SANCTIONS_SEARCH>"active":1,</TMPL_IF>
        "icon":"court_icon",
        "href":"javascript:pm_tab_v3('SEARCH2/SHOW_PORTAL_SANCTIONS');", 
        "label":"Mortgage & Financial Service Sanctions"
    });
    searchesJSON.push({
        "deleted":"<TMPL_VAR DELETE_SEXPREDATOR>", 
        "disabled":"<TMPL_VAR DISABLE_SEXPREDATOR>", 
        "id":"courts_<TMPL_VAR IDX_SEXPREDATOR>",
        <TMPL_IF SEXPREDATOR_SEARCH>"active":1,</TMPL_IF>
        "icon":"court_icon",
        "href":"javascript:pm_tab_v3('SEARCH2/SHOW_SEXPREDATOR');", 
        "label":"Sexual Offenders"
    });
    sectionsJSON2.push({"sid":"newslinks", "li-prefix":"news"});
    searchesJSON.push({
        "deleted":"<TMPL_VAR DELETE_NEWS>", 
        "disabled":"<TMPL_VAR DISABLE_NEWS>", 
        "id":"news_<TMPL_VAR IDX_NEWS>",
        <TMPL_IF NEWS_SEARCH>"active":1,</TMPL_IF>
        "icon":"news_icon",
        "href":"javascript:pm_tab_v3('SEARCH2/SHOW_PORTAL_NEWS');", 
        "label":"News"
    });
    searchesJSON.push({
        "deleted":"<TMPL_VAR DELETE_LN_NEGATIVE_NEWS>", 
        "disabled":"<TMPL_VAR DISABLE_LN_NEGATIVE_NEWS>", 
        "id":"news_<TMPL_VAR IDX_LN_NEGATIVE_NEWS>",
        <TMPL_IF NEG_NEWS_SEARCH>"active":1,</TMPL_IF>
        "icon":"news_icon",
        "href":"javascript:pm_tab_v3('SEARCH2/SHOW_NEG_NEWS');", 
        "label":"Negative News"
    });
    searchesJSON.push({
        "deleted":"<TMPL_VAR DELETE_NEWS_TRENDS>", 
        "disabled":"<TMPL_VAR DISABLE_NEWS_TRENDS>", 
        "icon":"news_icon", 
        "id":"news_<TMPL_VAR IDX_NEWS_TRENDS>",
        <TMPL_IF NEWS_TRENDS_SEARCH>"active":1,</TMPL_IF>
        "icon":"news_icon",
        "href":"javascript:pm_tab_v3('SEARCH2/SHOW_NEWS_TRENDS');", 
        "label":"News Trends"
    });
    searchesJSON.push({
        "deleted":"<TMPL_VAR DELETE_DO_NEWS>", 
        "disabled":"<TMPL_VAR DISABLE_DO_NEWS>", 
        "id":"news_<TMPL_VAR IDX_DO_NEWS>",
        <TMPL_IF DO_NEWS_SEARCH>"active":1,</TMPL_IF>
        "icon":"news_icon",
        "href":"javascript:pm_tab_v3('SEARCH2/SHOW_DO_NEWS');", 
        "label":"Deaths & Obituaries in the News"
    });
    searchesJSON.push({
        "deleted":"<TMPL_VAR DELETE_LN_BANKERS_NEWS>", 
        "disabled":"<TMPL_VAR DISABLE_LN_BANKERS_NEWS>", 
        "id":"news_<TMPL_VAR IDX_LN_BANKERS_NEWS>",
        <TMPL_IF BANK_NEWS_SEARCH>"active":1,</TMPL_IF>
        "icon":"news_icon",
        "href":"javascript:pm_tab_v3('SEARCH2/SHOW_BANK_NEWS');", 
        "label":"Bankers' News"
    });
    sectionsJSON2.push({"sid":"internationallinks", "li-prefix":"inter"});
    searchesJSON.push({
        "deleted":"<TMPL_VAR DELETE_ALLCOMPANY_SEARCH_INDEX>", 
        "disabled":"<TMPL_VAR DISABLE_ALLCOMPANY_SEARCH_INDEX>", 
        "id":"inter_<TMPL_VAR IDX_ALLCOMPANY_SEARCH_INDEX>",
        <TMPL_IF ALLCOMPANY_SEARCH>"active":1,</TMPL_IF>
        "icon":"international_icon",
        "href":"javascript:pm_tab_v3('SEARCH2/SHOW_ALLCOMPANY');", 
        "label":"All Company Information (excluding Investext & D&B)"
    });
    searchesJSON.push({
        "deleted":"<TMPL_VAR DELETE_CANADIAN_PHONES>", 
        "disabled":"<TMPL_VAR DISABLE_CANADIAN_PHONES>", 
        "id":"inter_<TMPL_VAR IDX_CANADIAN_PHONES>",
        <TMPL_IF CANADIAN_PHONES_SEARCH>"active":1,</TMPL_IF>
        "icon":"international_icon",
        "href":"javascript:portal_disclaimer_v3('SEARCH2/SHOW_CANADIAN_PHONE');", 
        "label":"Canadian Phones"
    });
    searchesJSON.push({
        "deleted":"<TMPL_VAR DELETE_COUNTRY_RISK_REPORT>", 
        "disabled":"<TMPL_VAR DISABLE_COUNTRY_RISK_REPORT>", 
        "id":"inter_<TMPL_VAR IDX_COUNTRY_RISK_REPORT>",
        <TMPL_IF COUNTRY_RISK_REPORT_SEARCH>"active":1,</TMPL_IF>
        "icon":"international_icon",
        "href":"javascript:pm_tab_v3('SEARCH2/SHOW_COUNTRY_RISK_REPORT');", 
        "label":"Country Risk Reports"
    });
    searchesJSON.push({
        "deleted":"<TMPL_VAR DELETE_INSTANTID_INTERNATIONAL>", 
        "disabled":"<TMPL_VAR DISABLE_INSTANTID_INTERNATIONAL>", 
        "id":"inter_<TMPL_VAR IDX_INSTANTID_INTERNATIONAL>",
        <TMPL_IF INTL_INSTANTID>"active":1,</TMPL_IF>
        "icon":"international_icon",
        "href":"javascript:pm_tab_v3('SEARCH2/SHOW_INTL_INSTANTID');", 
        "label":"InstantID<sup class='sup-reg-symbol'>®</sup> International"
    });
    searchesJSON.push({
        "deleted":"<TMPL_VAR DELETE_PASSPORT_SEARCH>", 
        "disabled":"<TMPL_VAR DISABLE_PASSPORT_SEARCH>", 
        "id":"inter_<TMPL_VAR IDX_PASSPORT_SEARCH>", 
        <TMPL_IF PASSPORT_SEARCH>"active":1,</TMPL_IF>
        "icon":"international_icon",
        "href":"javascript:pm_tab_v3('SEARCH2/SHOW_PASSPORT_VALIDATION');", 
        "label":"Passport Validation"
    });
    searchesJSON.push({
        "deleted":"<TMPL_VAR DELETE_WORLDCHECK_SEARCH_INDEX>", 
        "disabled":"<TMPL_VAR DISABLE_WORLDCHECK_SEARCH_INDEX>", 
        "id":"inter_<TMPL_VAR IDX_WORLDCHECK_SEARCH_INDEX>",
        <TMPL_IF WORLDCHECK_SEARCH>"active":1,</TMPL_IF>
        "icon":"international_icon",
        "href":"javascript: void window.open('https://members.worldcompliance.com/Signin.aspx', 'wc', '');", 
        "label":"WorldCompliance"                    
    });
    sectionsJSON2.push({"sid":"regcompliancelinks", "li-prefix":"regs"}); 
    searchesJSON.push({
        "deleted":"<TMPL_VAR DELETE_LN_ADMIN_LAW_DECISIONS>", 
        "disabled":"<TMPL_VAR DISABLE_LN_ADMIN_LAW_DECISIONS>", 
        "id":"regs_<TMPL_VAR IDX_LN_ADMIN_LAW_DECISIONS>",
        <TMPL_IF LN_ADMIN_LAW_DECISIONS>"active":1,</TMPL_IF>
        "icon":"regulations_icon",
        "href":"javascript:pm_tab_v3('SEARCH2/SHOW_ADMIN_LAW_DECISIONS');", 
        "label":"Administrative Law Judge Decisions"
    });
    searchesJSON.push({
        "deleted":"<TMPL_VAR DELETE_AGENCY_OPINIONS_SEARCH>", 
        "disabled":"<TMPL_VAR DISABLE_AGENCY_OPINIONS_SEARCH>", 
        "id":"regs_<TMPL_VAR IDX_AGENCY_OPINIONS_SEARCH>",
        <TMPL_IF AGENCY_OPINIONS_SEARCH>"active":1,</TMPL_IF>
        "icon":"regulations_icon",
        "href":"javascript:pm_tab_v3('SEARCH2/SHOW_AGENCY_OPINIONS');", 
        "label":"Agency Opinions"
    });
    searchesJSON.push({
        "deleted":"<TMPL_VAR DELETE_LN_FED_BANKING_CODE>", 
        "disabled":"<TMPL_VAR DISABLE_LN_FED_BANKING_CODE>", 
        "id":"regs_<TMPL_VAR IDX_LN_FED_BANKING_CODE>",
        <TMPL_IF LN_FED_BANKING_CODE>"active":1,</TMPL_IF>
        "icon":"regulations_icon",
        "href":"javascript:pm_tab_v3('SEARCH2/SHOW_FED_BANKING_CODE');", 
        "label":"Code of Federal Regulations - Banking Titles 12 & 31"
    });
    searchesJSON.push({
        "deleted":"<TMPL_VAR DELETE_LN_FED_REGISTER>", 
        "disabled":"<TMPL_VAR DISABLE_LN_FED_REGISTER>", 
        "id":"regs_<TMPL_VAR IDX_LN_FED_REGISTER>",
        <TMPL_IF FED_REGISTER_SEARCH>"active":1,</TMPL_IF>
        "icon":"regulations_icon",
        "href":"javascript:pm_tab_v3('SEARCH2/SHOW_FED_REGISTER');", 
        "label":"Code of Federal Regulations & Federal Register"
    });
    searchesJSON.push({
        "deleted":"<TMPL_VAR DELETE_LN_CONG_RECORD>", 
        "disabled":"<TMPL_VAR DISABLE_LN_CONG_RECORD>",
        "active":1,
        "id":"regs_<TMPL_VAR IDX_LN_CONG_RECORD>", 
        "icon":"regulations_icon",
        "href":"javascript:pm_tab_v3('SEARCH2/SHOW_CONG_RECORD');", 
        "label":"Congressional Record"
    });
    searchesJSON.push({
        "deleted":"<TMPL_VAR DELETE_LN_FDIC_RES_TRUST_CORP>", 
        "disabled":"<TMPL_VAR DELETE_LN_FDIC_RES_TRUST_CORP>",
        "active":1,
        "id":"regs_<TMPL_VAR IDX_LN_FDIC_RES_TRUST_CORP>", 
        "icon":"regulations_icon",
        "href":"javascript:pm_tab_v3('SEARCH2/SHOW_FDIC');", 
        "label":"FDIC & Resolution Trust Corp"
    });
    searchesJSON.push({
        "deleted":"<TMPL_VAR DELETE_LN_FEDERAL_RESERVE>", 
        "disabled":"<TMPL_VAR DELETE_LN_FEDERAL_RESERVE>",
        "active":1,
        "id":"regs_<TMPL_VAR IDX_LN_FEDERAL_RESERVE>", 
        "icon":"regulations_icon",
        "href":"javascript:pm_tab_v3('SEARCH2/SHOW_LN_FEDERAL_RESERVE');", 
        "label":"Federal Reserve"                    
    });
    searchesJSON.push({
        "deleted":"<TMPL_VAR DELETE_LN_GAO_REPORTS>", 
        "disabled":"<TMPL_VAR DELETE_LN_GAO_REPORTS>",
        "active":1,
        "id":"regs_<TMPL_VAR IDX_LN_GAO_REPORTS>", 
        "icon":"regulations_icon",
        "href":"javascript:pm_tab_v3('SEARCH2/SHOW_LN_GAO_REPORTS');", 
        "label":"GAO Reports & Testimonies"
    });
    searchesJSON.push({
        "deleted":"<TMPL_VAR DELETE_LN_COMP_CURRENCY>", 
        "disabled":"<TMPL_VAR DELETE_LN_COMP_CURRENCY>",
        "active":1,
        "id":"regs_<TMPL_VAR IDX_LN_COMP_CURRENCY>", 
        "icon":"regulations_icon",
        "href":"javascript:pm_tab_v3('SEARCH2/SHOW_LN_COMPTROLLER_CURRENCY');", 
        "label":"Office of the Comptroller of the Currency"
    });
    searchesJSON.push({
        "deleted":"<TMPL_VAR DELETE_LN_THRIFT_SUPERVISION>", 
        "disabled":"<TMPL_VAR DELETE_LN_THRIFT_SUPERVISION>",
        "active":1,
        "id":"regs_<TMPL_VAR IDX_LN_THRIFT_SUPERVISION>", 
        "icon":"regulations_icon",
        "href":"javascript:pm_tab_v3('SEARCH2/SHOW_OFFICE_THRIFT_SUPERVISIONS');", 
        "label":"Office of Thrift Supervision (Archive)"
    });
    searchesJSON.push({
        "deleted":"<TMPL_VAR DELETE_LN_US_PUBLIC_LAWS>", 
        "disabled":"<TMPL_VAR DELETE_LN_US_PUBLIC_LAWS>",
        "active":1,
        "id":"regs_<TMPL_VAR IDX_LN_US_PUBLIC_LAWS>", 
        "icon":"regulations_icon",
        "href":"javascript:pm_tab_v3('SEARCH2/SHOW_LN_US_PUBLIC_LAWS');", 
        "label":"US Public Laws"
    });
    searchesJSON.push({
        "deleted":"<TMPL_VAR DELETE_LN_BANKS_TITLE_12>", 
        "disabled":"<TMPL_VAR DELETE_LN_BANKS_TITLE_12>",
        "active":1,
        "id":"regs_<TMPL_VAR IDX_LN_BANKS_TITLE_12>", 
        "icon":"regulations_icon",
        "href":"javascript:pm_tab_v3('SEARCH2/SHOW_USCS_BANKS');", 
        "label":"USCS - Banks & Banking - Title 12"
    });
    sectionsJSON2.push({"sid":"directtosource", "li-prefix":"direct"});
    searchesJSON.push({
        "deleted":"<TMPL_VAR DELETE_BUSINESS_ASSURANCE>", 
        "disabled":"<TMPL_VAR DISABLE_BUSINESS_ASSURANCE>", 
        "id":"direct_<TMPL_VAR IDX_BUSINESS_ASSURANCE>",
        <TMPL_IF BUSINESS_ASSURANCE_SEARCH>"active":1,</TMPL_IF>
        "href":"javascript:pm_tab_v3('SEARCH2/SHOW_BUSINESS_ASSURANCE');", 
        "label":"Business Assurance"
    });
    searchesJSON.push({
        "deleted":"<TMPL_VAR DELETE_OFFLINE_CIV_CRIM>", 
        "disabled":"<TMPL_VAR DISABLE_OFFLINE_CIV_CRIM>", 
        "id":"direct_<TMPL_VAR IDX_OFFLINE_CIV_CRIM>",
        <TMPL_IF OCCCR_SEARCH>"active":1,</TMPL_IF>
        "href":"javascript:pm_tab_v3('SEARCH2/SHOW_OCCCR');", 
        "label":"Offline Civil & Criminal Court Records (OCCCR)"
    });
    searchesJSON.push({
        "deleted":<TMPL_IF DELETE_OFFLINE_CIV_CRIM><TMPL_IF DELETE_BUSINESS_ASSURANCE>1<TMPL_ELSE>0</TMPL_IF><TMPL_ELSE>0</TMPL_IF>, 
        "disabled":<TMPL_IF DISABLE_OFFLINE_CIV_CRIM><TMPL_IF DISABLE_BUSINESS_ASSURANCE>1<TMPL_ELSE>0</TMPL_IF><TMPL_ELSE>0</TMPL_IF>, 
        "id":"direct_<TMPL_VAR IDX_OFFLINE_CIV_CRIM>0",
        "active":1,
        "href":"javascript:pm_tab_v3('SEARCH2/SHOW_OCCCR_RESULTS');", 
        "label":"Direct-to-Source Results"
    });
    sectionsJSON2.push({"sid":"authserviceslinks", "li-prefix":"auth"});
    searchesJSON.push({
        "deleted":"<TMPL_VAR DELETE_KBA>", 
        "disabled":"<TMPL_VAR DISABLE_KBA>", 
        "id":"auth_<TMPL_VAR IDX_KBA>",
        "active":1,
        "icon":"authentication_services_icon",
        "href":"javascript:pm_tab_v3('SEARCH2/SHOW_ID_VERIFY');", 
        "label":"InstantID<sup class='sup-reg-symbol'>®</sup> Q&A"
    });
    searchesJSON.push({
        "deleted":"<TMPL_VAR DELETE_OTP>", 
        "disabled":"<TMPL_VAR DISABLE_OTP>", 
        "id":"auth_<TMPL_VAR IDX_OTP>",
        <TMPL_IF ID_VERIFY>"active":1,</TMPL_IF> 
        "icon":"authentication_services_icon",
        "href":"javascript:pm_tab_v3('SEARCH2/SHOW_PORTAL_OTP');", 
        "label":"One Time Password"
    });
    
    
</script>
<TMPL_INCLUDE NAME="../search_data_scripts.tpl">

