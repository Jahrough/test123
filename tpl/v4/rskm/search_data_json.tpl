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
                <TMPL_IF NAME=IM_ON_MYACCURINT>"active":1,</TMPL_IF>
                "href":"javascript:myacc_v3('<TMPL_VAR MYA_1_EVT>');",
                "label":"Favorite"
            },
            </TMPL_UNLESS>
            {
                "id":"myfreqlinks_ps",
                "icon":"fa-freq",
                <TMPL_IF NAME=IM_ON_MYACCURINT>"active":1,</TMPL_IF>
                "href":"javascript:myacc_v3('<TMPL_VAR MYA_1_EVT>');",
                "label":"Frequent"
            },
            {
                "id":"mytasklinks_ps",
                "icon":"fa-fav",
                <TMPL_IF NAME=IM_ON_MYACCURINT>"active":1,</TMPL_IF>
                "href":"javascript:myacc_v3('<TMPL_VAR MYA_1_EVT>');",
                "label":"myTasks"
            },
            {
                "id":"peoplelinks_ps",
                "icon":"person_icon",
                <TMPL_IF NAME=IM_ON_SEARCH>"active":1,</TMPL_IF>
                "href":"javascript:pm_tab_v3('SEARCH2/SHOW_FAP');",
                "label":"People"
            },
            {
                "id":"businesseslinks_ps",
                "icon":"bus_icon",
                <TMPL_IF NAME=IM_ON_BUS_SEARCH>"active":1,</TMPL_IF>
                "href":"javascript:pm_tab_v3('SEARCH2/SHOW_FAB');",
                "label":"Business"
            },
            {
                "id":"assetslinks_ps",
                "icon":"property_icon",
                <TMPL_IF NAME=IM_ON_ASSET_SEARCH>"active":1,</TMPL_IF>
                "href":"javascript:pm_tab_v3('SEARCH2/SHOW_DL_REG');",
                "label":"Property &amp; Assets"
            },
            {
                "id":"authserviceslinks_ps",
                "icon":"authentication_services_icon",
                "href":"javascript:pm_tab_v3('SEARCH2/SHOW_ID_VERIFY');",
                "label":"Authentication Services"
            },
            {
                "id":"courtslinks_ps",
                "icon":"court_icon",
                <TMPL_IF NAME=IM_ON_LEGAL_SEARCH>"active":1,</TMPL_IF>
                "href":"javascript:pm_tab_v3('SEARCH2/SHOW_CRIM');",
                "label":"Court &amp; Admin Filings"
            },
            {
                "id":"directtosource_ps",
                "icon":"direct_to_source_icon",
                "href":"",
                "label":"Direct-to-Source"
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
                <TMPL_IF NAME=IM_ON_INTL_DOCKET_SEARCH>"active":1,</TMPL_IF>
                "href":"javascript:pm_tab_v3('SEARCH2/SHOW_INTDOCKETS');",
                "label":"International"
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
                        "label":"<TMPL_VAR SLABEL>"
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
                        "id":"myfreqs_IDX_<TMPL_VAR NAME=IDX>",
                        "href":"javascript:pm_tab_v3('<TMPL_VAR SEVENT>');",
                        "label":"<TMPL_VAR SLABEL>"
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
                        "label":"<TMPL_VAR name>"
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
        "deleted":"<TMPL_VAR NAME="DELETE_FDW_FIRST_PURSUIT_EQUIFAX">",
        "disabled":"<TMPL_VAR NAME="DISABLE_FDW_FIRST_PURSUIT_EQUIFAX">",
        "id":"people_<TMPL_VAR NAME=IDX_FDW_FIRST_PURSUIT_EQUIFAX>",
        "menu-show-group":1,
        <TMPL_IF NAME="PURSUIT_REPORT_SEARCH">"active":1,</TMPL_IF>
        "icon":"person_icon",
        "href":"javascript:pm_tab_v3('SEARCH2/SHOW_PURSUIT_REPORT');",
        "label":"LexisNexis<sup class='sup-reg-symbol'>&reg;</sup> FirstPursuit<sup class='sup-reg-symbol'>&reg;</sup>"
    });
    searchesJSON.push({
        "deleted":"<TMPL_VAR NAME="DELETE_DA_WIRELESS">",
        "disabled":"<TMPL_VAR NAME="DISABLE_DA_WIRELESS">",
        "icon":"phone_icon",
        "id":"people_<TMPL_VAR NAME=IDX_DA_WIRELESS>",
        "menu-show-group":1,
        <TMPL_IF NAME="SEARCH_DA_WIRELESS">"active":1,</TMPL_IF>
        "href":"javascript:pm_tab_v3('SEARCH2/SHOW_DA_WIRELESS');",
        "label":"Phones Plus"
    });
    searchesJSON.push({
        "deleted":"<TMPL_VAR NAME="DELETE_PHONE_FINDER_REPORT">",
        "disabled":"<TMPL_VAR NAME="DISABLE_PHONE_FINDER_REPORT">",
        "icon":"phone_icon",
        "id":"people_<TMPL_VAR NAME=IDX_PHONE_FINDER_REPORT>",
        "menu-show-group":1,
        <TMPL_IF NAME="PHONE_FINDER_REPORT_SEARCH">"active":1,</TMPL_IF>
        "href":"javascript:pm_tab_v3('SEARCH2/SHOW_PHONE_FINDER')",
        "label":"LexisNexis<sup class='sup-reg-symbol'>&reg;</sup> Phone Finder"
    });
    searchesJSON.push({
        "deleted":"<TMPL_VAR NAME="DELETE_CASE_AUDIT">",
        "disabled":"<TMPL_VAR NAME="DISABLE_CASE_AUDIT">",
        "id":"people_<TMPL_VAR NAME=IDX_CASE_AUDIT>",
        "menu-show-group":1,
        <TMPL_IF NAME="CASE_AUDIT">"active":1,</TMPL_IF>
        "icon":"person_icon",
        "href":"javascript:pm_tab_v3('SEARCH2/SHOW_IDENTITY_REPORT');",
        "label":"LexisNexis<sup class='sup-reg-symbol'>&reg;</sup> Identity Report"
    });
    searchesJSON.push({
        "deleted":"<TMPL_VAR NAME="DELETE_PROF_LICENSE">",
        "disabled":"<TMPL_VAR NAME="DISABLE_PROF_LICENSE">",
        "id":"people_<TMPL_VAR NAME=IDX_PROF_LICENSE>",
        "menu-show-group":1,
        <TMPL_IF NAME="PROF_LICENSE_SEARCH">"active":1,</TMPL_IF>
        "icon":"person_icon",
        "href":"javascript:pm_tab_v3('SEARCH2/SHOW_PROF_LICENSE');",
        "label":"Professional Licenses"
    });
    searchesJSON.push({
        "deleted":"<TMPL_VAR NAME="DELETE_INSTANT_ID">",
        "disabled":"<TMPL_VAR NAME="DISABLE_INSTANT_ID">",
        "id":"people_<TMPL_VAR NAME=IDX_INSTANT_ID>",
        "menu-show-group":1,
        <TMPL_IF NAME="INSTANT_ID_REPORT">"active":1,</TMPL_IF>
        "icon":"person_icon",
        "href":"javascript:pm_tab_v3('SEARCH2/SHOW_INSTANT_ID');",
        "label":"InstantID<sup class='sup-reg-symbol'>&reg;</sup> Consumer Verification"
    });
    searchesJSON.push({
        "deleted":"<TMPL_VAR NAME="DELETE_INSTANT_ID_RF">",
        "disabled":"<TMPL_VAR NAME="DISABLE_INSTANT_ID_RF">",
        "id":"people_<TMPL_VAR NAME=IDX_INSTANT_ID_RF>",
        "menu-show-group":1,
        <TMPL_IF NAME="INSTANT_IDRF_REPORT">"active":1,</TMPL_IF>
        "icon":"person_icon",
        "href":"javascript:pm_tab_v3('SEARCH2/SHOW_INSTANT_IDRF');",
        "label":"InstantID<sup class='sup-reg-symbol'>&reg;</sup> Consumer Verification with Red Flags Rule Report"
    });
    <TMPL_IF ALLOW_LNFP>
        searchesJSON.push({
            "deleted":"<TMPL_VAR NAME="DELETE_INSTANT_ID_FP">",
            "disabled":"<TMPL_VAR NAME="DISABLE_INSTANT_ID_FP">",
            "id":"people_<TMPL_VAR NAME=IDX_INSTANT_ID_FP>",
            "menu-show-group":1,
            <TMPL_IF NAME="INSTANT_IDFP_REPORT">"active":1,</TMPL_IF>
            "icon":"person_icon",
            "href":"javascript:pm_tab_v3('SEARCH2/SHOW_INSTANT_IDFP');",
            "label":"InstantID<sup class='sup-reg-symbol'>&reg;</sup> Consumer Verification with FraudPoint<sup class='sup-reg-symbol'>&reg;</sup> Score"
        });
        searchesJSON.push({
            "deleted":"<TMPL_VAR NAME="DELETE_INSTANT_ID_RFFP">",
            "disabled":"<TMPL_VAR NAME="DISABLE_INSTANT_ID_RFFP">",
            "id":"people_<TMPL_VAR NAME=IDX_INSTANT_ID_RFFP>",
            "menu-show-group":1,
            <TMPL_IF NAME="INSTANT_IDRFFP_REPORT">"active":1,</TMPL_IF>
            "icon":"person_icon",
            "href":"javascript:pm_tab_v3('SEARCH2/SHOW_INSTANT_IDRFFP');",
            "label":"InstantID<sup class='sup-reg-symbol'>&reg;</sup> Consumer Verification with Red Flags &amp; FraudPoint<sup class='sup-reg-symbol'>&reg;</sup> Score"
        });
    </TMPL_IF>
    searchesJSON.push({
        "deleted":"<TMPL_VAR NAME="DELETE_PAW">",
        "disabled":"<TMPL_VAR NAME="DISABLE_PAW">",
        "id":"people_<TMPL_VAR NAME=IDX_PAW>",
        "menu-show-group":1,
        <TMPL_IF NAME="PAW_SEARCH">"active":1,</TMPL_IF>
        "icon":"person_icon",
        "href":"javascript:pm_tab_v3('SEARCH/SHOW_PAW');",
        "label":"People At Work"
    });
    <TMPL_IF ALLOW_LNFP>
        searchesJSON.push({
            "deleted":"<TMPL_VAR NAME="DELETE_FRAUDPOINT_RF">",
            "disabled":"<TMPL_VAR NAME="DISABLE_FRAUDPOINT_RF">",
            "id":"people_<TMPL_VAR NAME=IDX_FRAUDPOINT_RF>",
            "menu-show-group":1,
            <TMPL_IF NAME="FRAUDPOINT_SCORE_WITH_REDFLAGS_REPORT">"active":1,</TMPL_IF>
            "icon":"person_icon",
            "href":"javascript:pm_tab_v3('SEARCH2/SHOW_FRAUDPOINT_SCORE_WITH_REDFLAGS');",
            "label":"FraudPoint<sup class='sup-reg-symbol'>&reg;</sup> Score with Red Flags Rule Report"
        });
        searchesJSON.push({
            "deleted":"<TMPL_VAR NAME="DELETE_FRAUDPOINT_REPORT">",
            "disabled":"<TMPL_VAR NAME="DISABLE_FRAUDPOINT_REPORT">",
            "id":"people_<TMPL_VAR NAME=IDX_FRAUDPOINT_REPORT>",
            "menu-show-group":1,
            <TMPL_IF NAME="FRAUDPOINT_SCORE_REPORT">"active":1,</TMPL_IF>
            "icon":"person_icon",
            "href":"javascript:pm_tab_v3('SEARCH2/SHOW_FRAUDPOINT_SCORE');",
            "label":"FraudPoint<sup class='sup-reg-symbol'>&reg;</sup> Score"
        });
    </TMPL_IF>
    searchesJSON.push({
        "deleted":"<TMPL_VAR NAME="DELETE_DL">",
        "disabled":"<TMPL_VAR NAME="DISABLE_DL">",
        "id":"people_<TMPL_VAR NAME=IDX_DL>",
        "menu-show-group":1,
        <TMPL_IF NAME="LICENSE_SEARCH">"active":1,</TMPL_IF>
        "icon":"person_icon",
        "href":"javascript:pm_tab_v3('SEARCH2/SHOW_LICENSE');",
        "label":"Driver Licenses"
    });
    searchesJSON.push({
        "deleted":"<TMPL_VAR NAME="DELETE_EMAIL">",
        "disabled":"<TMPL_VAR NAME="DISABLE_EMAIL">",
        "id":"people_<TMPL_VAR NAME=IDX_EMAIL>",
        "menu-show-group":1,
        <TMPL_IF NAME="EMAIL_SEARCH">"active":1,</TMPL_IF>
        "icon":"person_icon",
        "href":"javascript:pm_tab_v3('SEARCH2/SHOW_EMAIL');",
        "label":"Email Address/Social Network Report"
    });
    searchesJSON.push({
        "deleted":"<TMPL_VAR NAME="DELETE_CONCEALED_WEAPON">",
        "disabled":"<TMPL_VAR NAME="DISABLE_CONCEALED_WEAPON">",
        "id":"people_<TMPL_VAR NAME=IDX_CONCEALED_WEAPON>",
        "menu-hide-group":1,
        <TMPL_IF NAME="CONCEALED_WEAPON_SEARCH">"active":1,</TMPL_IF>
        "icon":"person_icon",
        "href":"javascript:pm_tab_v3('SEARCH2/SHOW_CONCEALED_WEAPON');",
        "label":"Concealed Weapon Permits"
    });
    searchesJSON.push({
        "deleted":"<TMPL_VAR NAME="DELETE_DEA">",
        "disabled":"<TMPL_VAR NAME="DISABLE_DEA">",
        "id":"people_<TMPL_VAR NAME=IDX_DEA>",
        "menu-hide-group":1,
        <TMPL_IF NAME="DEA_SEARCH">"active":1,</TMPL_IF>
        "icon":"person_icon",
        "href":"javascript:pm_tab_v3('SEARCH2/SHOW_DEA');",
        "label":"Drug Enforcement Administration Registrants"
    });
    searchesJSON.push({
        "deleted":"<TMPL_VAR NAME="DELETE_FAA_PILOT">",
        "disabled":"<TMPL_VAR NAME="DISABLE_FAA_PILOT">",
        "id":"people_<TMPL_VAR NAME=IDX_FAA_PILOT>",
        "menu-hide-group":1,
        <TMPL_IF NAME="FAA_PILOT_SEARCH">"active":1,</TMPL_IF>
        "icon":"person_icon",
        "href":"javascript:pm_tab_v3('SEARCH2/SHOW_FAA_PILOT');",
        "label":"FAA Pilot Licenses"
    });
    searchesJSON.push({
        "deleted":"<TMPL_VAR NAME="DELETE_FIREARMS">",
        "disabled":"<TMPL_VAR NAME="DISABLE_FIREARMS">",
        "id":"people_<TMPL_VAR NAME=IDX_FIREARMS>",
        "menu-hide-group":1,
        <TMPL_IF NAME="FIREARMS_SEARCH">"active":1,</TMPL_IF>
        "icon":"person_icon",
        "href":"javascript:pm_tab_v3('SEARCH2/SHOW_FIREARMS');",
        "label":"Federal Firearms &amp; Explosives Licenses"
    });
    searchesJSON.push({
        "deleted":"<TMPL_VAR NAME="DELETE_FRAUDPOINT_ATO">",
        "disabled":"<TMPL_VAR NAME="DISABLE_FRAUDPOINT_ATO">",
        "id":"people_<TMPL_VAR NAME=IDX_FRAUDPOINT_ATO>",
        "menu-hide-group":1,
        <TMPL_IF NAME="FRAUDPOINT_ATO_SCORE">"active":1,</TMPL_IF>
        "icon":"person_icon",
        "href":"javascript:pm_tab_v3('SEARCH2/SHOW_FRAUDPOINT_ATO');",
        "label":"FraudPoint<sup class='sup-reg-symbol'>&reg;</sup> ATO Score"
    });
    searchesJSON.push({
        "deleted":"<TMPL_VAR NAME="DELETE_HUNTING_LICENSE">",
        "disabled":"<TMPL_VAR NAME="DISABLE_HUNTING_LICENSE">",
        "id":"people_<TMPL_VAR NAME=IDX_HUNTING_LICENSE>",
        "menu-hide-group":1,
        <TMPL_IF NAME="HUNTING_LICENSE_SEARCH">"active":1,</TMPL_IF>
        "icon":"person_icon",
        "href":"javascript:pm_tab_v3('SEARCH2/SHOW_HUNTING_LICENSE');",
        "label":"Hunting &amp; Fishing Licenses"
    });
    searchesJSON.push({
        "deleted":"<TMPL_VAR NAME="DELETE_SSA_VERIFY">",
        "disabled":"<TMPL_VAR NAME="DISABLE_SSA_VERIFY">",
        "id":"people_<TMPL_VAR NAME=IDX_SSA_VERIFY>",
        "menu-hide-group":1,
        <TMPL_IF NAME="SEARCH_SSA_VERIFY">"active":1,</TMPL_IF>
        "icon":"person_icon",
        "href":"javascript:pm_tab_v3('SEARCH/SHOW_SSA_VERIFY');",
        "label":"SSA Verify"
    });
    searchesJSON.push({
        "deleted":"<TMPL_VAR NAME="DELETE_MARRIAGE">",
        "disabled":"<TMPL_VAR NAME="DISABLE_MARRIAGE">",
        "id":"people_<TMPL_VAR NAME=IDX_MARRIAGE>",
        "menu-hide-group":1,
        <TMPL_IF NAME="MARRIAGE_SEARCH">"active":1,</TMPL_IF>
        "icon":"person_icon",
        "href":"javascript:pm_tab_v3('SEARCH2/SHOW_MARRIAGE');",
        "label":"Marriage &amp; Divorce Records"
    });
    searchesJSON.push({
        "deleted":"<TMPL_VAR NAME="DELETE_MILITARY_PERSONNEL">",
        "disabled":"<TMPL_VAR NAME="DISABLE_MILITARY_PERSONNEL">",
        "id":"people_<TMPL_VAR NAME=IDX_MILITARY_PERSONNEL>",
        "menu-hide-group":1,
        <TMPL_IF NAME="MILITARY_PERSONNEL_SEARCH">"active":1,</TMPL_IF>
        "icon":"person_icon",
        "href":"javascript:pm_tab_v3('SEARCH2/SHOW_MILITARY_PERSONNEL')",
        "label":"Military Personnel (Archive)"
    });
    searchesJSON.push({
        "deleted":"<TMPL_VAR NAME="DELETE_PATRIOTACT">",
        "disabled":"<TMPL_VAR NAME="DISABLE_PATRIOTACT">",
        "id":"people_<TMPL_VAR NAME=IDX_PATRIOTACT>",
        "menu-hide-group":1,
        <TMPL_IF NAME="OFAC_SEARCH">"active":1,</TMPL_IF>
        "icon":"person_icon",
        "href":"javascript:pm_tab_v3('SEARCH2/SHOW_OFAC');",
        "label":"OFAC &amp; Other Watch Lists"
    });
    searchesJSON.push({
        "deleted":"<TMPL_VAR NAME="DELETE_DA_BASIC">",
        "disabled":"<TMPL_VAR NAME="DISABLE_DA_BASIC">",
        "id":"people_<TMPL_VAR NAME=IDX_DA_BASIC>",
        "menu-hide-group":1,
        <TMPL_IF NAME="SEARCH_PHONE_LOOKUP">"active":1,</TMPL_IF>
        "icon":"phone_icon",
        "href":"javascript:pm_tab_v3('SEARCH2/SHOW_PHONE_LOOKUP');",
        "label":"Phone Lookup"
    });
    searchesJSON.push({
        "deleted":"<TMPL_VAR NAME="DELETE_STATEWIDE_PERSON">",
        "disabled":"<TMPL_VAR NAME="DISABLE_STATEWIDE_PERSON">",
        "id":"people_<TMPL_VAR NAME=IDX_STATEWIDE_PERSON>",
        "menu-hide-group":1,
        <TMPL_IF NAME="STATEWIDE_PERSON_SEARCH">"active":1,</TMPL_IF>
        "icon":"person_icon",
        "href":"javascript:pm_tab_v3('SEARCH2/SHOW_STATEWIDE_PERSON');",
        "label":"Statewide Public Records Person Search"
    });
    searchesJSON.push({
        "deleted":"<TMPL_VAR NAME="DELETE_VOTER_REGISTRATION">",
        "disabled":"<TMPL_VAR NAME="DISABLE_VOTER_REGISTRATION">",
        "id":"people_<TMPL_VAR NAME=IDX_VOTER_REGISTRATION>",
        "menu-hide-group":1,
        <TMPL_IF NAME="VOTER_REGISTRATION_SEARCH">"active":1,</TMPL_IF>
        "icon":"person_icon",
        "href":"javascript:pm_tab_v3('SEARCH2/SHOW_VOTER_REGISTRATION');",
        "label":"Voter Registrations"
    });
    sectionsJSON2.push({"sid":"businesseslinks", "li-prefix":"business"});
    searchesJSON.push({
        "deleted":"<TMPL_VAR NAME="DELETE_BUS">",
        "disabled":"<TMPL_VAR NAME="DISABLE_BUS">",
        "id":"business_<TMPL_VAR NAME=IDX_BUS>",
        "menu-show-group":1,
        <TMPL_IF NAME="FAB_SEARCH">"active":1,</TMPL_IF>
        "icon":"bus_icon",
        "href":"javascript:pm_tab_v3('SEARCH2/SHOW_FAB');",
        "label":"Find a Business"
    });
    searchesJSON.push({
        "deleted":"<TMPL_VAR NAME="DELETE_BUS_INSTANT_ID_FD">",
        "disabled":"<TMPL_VAR NAME="DISABLE_BUS_INSTANT_ID_FD">",
        "id":"business_<TMPL_VAR NAME=IDX_BUS_INSTANT_ID_FD>",
        "menu-show-group":1,
        <TMPL_IF NAME="BUS_INSTANT_IDFD_REPORT">"active":1,</TMPL_IF>
        "icon":"bus_icon",
        "href":"javascript:pm_tab_v3('SEARCH2/SHOW_BUS_INSTANT_IDFD')",
        "label":"InstantID<sup class='sup-reg-symbol'>&reg;</sup> Business Verification with FraudDefender<sup class='sup-reg-symbol'>&reg;</sup>"
    });
    searchesJSON.push({
        "deleted":"<TMPL_VAR NAME="DELETE_BUS_INSTANT_ID">",
        "disabled":"<TMPL_VAR NAME="DISABLE_BUS_INSTANT_ID">",
        "id":"business_<TMPL_VAR NAME=IDX_BUS_INSTANT_ID>",
        "menu-show-group":1,
        <TMPL_IF NAME="BUS_INSTANT_ID">"active":1,</TMPL_IF>
        "icon":"bus_icon",
        "href":"javascript:pm_tab_v3('SEARCH2/SHOW_BUS_INSTANT_ID')",
        "label":"InstantID<sup class='sup-reg-symbol'>&reg;</sup> Business Verification"
    });
    searchesJSON.push({
        "deleted":"<TMPL_VAR NAME="DELETE_CORPORATION">",
        "disabled":"<TMPL_VAR NAME="DISABLE_CORPORATION">",
        "id":"business_<TMPL_VAR NAME=IDX_CORPORATION>",
        "menu-show-group":1,
        <TMPL_IF NAME="CORPORATION">"active":1,</TMPL_IF>
        "icon":"bus_icon",
        "href":"javascript:pm_tab_v3('SEARCH2/SHOW_SOS_FILINGS');",
        "label":"Secretary of State Filings"
    });
    searchesJSON.push({
        "deleted":"<TMPL_VAR NAME="DELETE_SMALLBUSRISK_SEARCH_INDEX">",
        "disabled":"<TMPL_VAR NAME="DISABLE_SMALLBUSRISK_SEARCH_INDEX">",
        "id":"business_<TMPL_VAR NAME=IDX_SMALLBUSRISK_SEARCH_INDEX>",
        "menu-show-group":1,
        <TMPL_IF NAME="SMALL_BUSINESS_RISK_SCORE_REPORT">"active":1,</TMPL_IF>
        "icon":"bus_icon",
        "href":"javascript:portal_disclaimer_v3('SEARCH2/SHOW_SMALL_BUSINESS_RISK_SCORE');",
        "label":"LexisNexis<sup class='sup-reg-symbol'>&reg;</sup> Small Business Risk Score"
    });
    searchesJSON.push({
        "deleted":"<TMPL_VAR NAME="DELETE_STATEWIDE_BUSINESS">",
        "disabled":"<TMPL_VAR NAME="DISABLE_STATEWIDE_BUSINESS">",
        "id":"business_<TMPL_VAR NAME=IDX_STATEWIDE_BUSINESS>",
        "menu-show-group":1,
        <TMPL_IF NAME="STATEWIDE_BUSINESS_SEARCH">"active":1,</TMPL_IF>
        "icon":"bus_icon",
        "href":"javascript:pm_tab_v3('SEARCH2/SHOW_STATEWIDE_BUSINESS');",
        "label":"Statewide Public Records Business Search"
    });
    searchesJSON.push({
        "deleted":"<TMPL_VAR NAME="DELETE_FEIN">",
        "disabled":"<TMPL_VAR NAME="DISABLE_FEIN">",
        "id":"business_<TMPL_VAR NAME=IDX_FEIN>",
        "menu-show-group":1,
        <TMPL_IF NAME="FEIN_SEARCH">"active":1,</TMPL_IF>
        "icon":"bus_icon",
        "href":"javascript:pm_tab_v3('SEARCH2/SHOW_FEIN');",
        "label":"D&amp;B FEIN"
    });
    searchesJSON.push({
        "deleted":"<TMPL_VAR NAME="DELETE_FICTIOUS">",
        "disabled":"<TMPL_VAR NAME="DISABLE_FICTIOUS">",
        "id":"business_<TMPL_VAR NAME=IDX_FICTIOUS>",
        "menu-show-group":1,
        <TMPL_IF NAME="FICTIOUS_SEARCH">"active":1,</TMPL_IF>
        "icon":"bus_icon",
        "href":"javascript:pm_tab_v3('SEARCH2/SHOW_FICTIOUS');",
        "label":"Fictitious Business Names/DBA"	
    });
    searchesJSON.push({
        "deleted":"<TMPL_VAR NAME="DELETE_DELCO">",
        "disabled":"<TMPL_VAR NAME="DISABLE_DELCO">",
        "id":"business_<TMPL_VAR NAME=IDX_DELCO>",
        "menu-show-group":1,
        <TMPL_IF NAME="DELCO_SEARCH">"active":1,</TMPL_IF>
        "icon":"bus_icon",
        "href":"javascript:pm_tab_v3('SEARCH2/SHOW_PORTAL_DELCO');",
        "label":"Secretary of State - State of Delaware"
    });
    searchesJSON.push({
        "deleted":"<TMPL_VAR NAME="DELETE_DBGLOBAL">",
        "disabled":"<TMPL_VAR NAME="DISABLE_DBGLOBAL">",
        "id":"business_<TMPL_VAR NAME=IDX_DBGLOBAL>",
        "menu-show-group":1,
        <TMPL_IF NAME="DBGLOBAL_SEARCH">"active":1,</TMPL_IF>
        "icon":"bus_icon",
        "href":"javascript:pm_tab_v3('SEARCH/SHOW_DBGLOBAL');",
        "label":"D&amp;B Global Market Identifiers"
    });
    searchesJSON.push({
        "deleted":"<TMPL_VAR NAME="DELETE_LN_THOMSON_DIRECTORIES">",
        "disabled":"<TMPL_VAR NAME="DISABLE_LN_THOMSON_DIRECTORIES">",
        "id":"business_<TMPL_VAR NAME=IDX_LN_THOMSON_DIRECTORIES>",
        "menu-hide-group":1,
        <TMPL_IF NAME="THOMSON_DIRECTORIES_SEARCH">"active":1,</TMPL_IF>
        "icon":"bus_icon",
        "href":"javascript:pm_tab_v3('SEARCH2/SHOW_THOMSON_DIRECTORIES');",
        "label":"Combined Banking Directories"
    });
    searchesJSON.push({
        "deleted":"<TMPL_VAR NAME="DELETE_LN_D_AND_B_MINORITY_AND_WOMEN_OWNER_BUSINESSES">",
        "disabled":"<TMPL_VAR NAME="DISABLE_LN_D_AND_B_MINORITY_AND_WOMEN_OWNER_BUSINESSES">",
        "id":"business_<TMPL_VAR NAME=IDX_LN_D_AND_B_MINORITY_AND_WOMEN_OWNER_BUSINESSES>",
        "menu-hide-group":1,
        <TMPL_IF NAME="LN_D_AND_B_MINORITY_AND_WOMEN_OWNER_BUSINESSES_SEARCH">"active":1,</TMPL_IF>
        "icon":"bus_icon",
        "href":"javascript:pm_tab_v3('SEARCH2/SHOW_LN_DAND_B_MINORITY_AND_WOMEN_OWNER_BUSINESSES');",
        "label":"D&amp;B DUNS Minority &amp; Women-Owned Businesses"
    });
    searchesJSON.push({
        "deleted":"<TMPL_VAR NAME="DELETE_LN_D_AND_B_PRIV_COMP">",
        "disabled":"<TMPL_VAR NAME="DISABLE_LN_D_AND_B_PRIV_COMP">",
        "id":"business_<TMPL_VAR NAME=IDX_LN_D_AND_B_PRIV_COMP>",
        "menu-hide-group":1,
        <TMPL_IF NAME="LN_D_AND_B_PRIV_COMP_SEARCH">"active":1,</TMPL_IF>
        "icon":"bus_icon",
        "href":"javascript:pm_tab_v3('SEARCH2/SHOW_LN_DAND_B_PRIVATE_COMPANY_INSIGHTS');",
        "label":"D&amp;B Private Company Insights"
    });
    searchesJSON.push({
        "deleted":"<TMPL_VAR NAME="DELETE_EXPERIAN">",
        "disabled":"<TMPL_VAR NAME="DISABLE_EXPERIAN">",
        "id":"business_<TMPL_VAR NAME=IDX_EXPERIAN>",
        "menu-hide-group":1,
        <TMPL_IF NAME="EXPERIAN_BUSINESS">"active":1,</TMPL_IF>
        "icon":"bus_icon",
        "href":"javascript:pm_tab_v3('SEARCH2/SHOW_EXPERIAN_BUSINESS');",
        "label":"Experian Business Data"
    });
    searchesJSON.push({
        "deleted":"<TMPL_VAR NAME="DELETE_GUIDESTAR_SEARCH_INDEX">",
        "disabled":"<TMPL_VAR NAME="DISABLE_GUIDESTAR_SEARCH_INDEX">",
        "id":"business_<TMPL_VAR NAME=IDX_GUIDESTAR_SEARCH_INDEX>",
        "menu-hide-group":1,
        <TMPL_IF NAME="GUIDESTAR_SEARCH">"active":1,</TMPL_IF>
        "icon":"bus_icon",
        "href":"javascript:portal_disclaimer_v3('SEARCH2/SHOW_GUIDESTAR');",
        "label":"GuideStar"
    });
    searchesJSON.push({
        "deleted":"<TMPL_VAR NAME="DELETE_LN_HOOVER">",
        "disabled":"<TMPL_VAR NAME="DISABLE_LN_HOOVER">",
        "id":"business_<TMPL_VAR NAME=IDX_LN_HOOVER>",
        "menu-hide-group":1,
        <TMPL_IF NAME="HOOVER_COMPANY_CAPSULES_SEARCH">"active":1,</TMPL_IF>
        "icon":"bus_icon",
        "href":"javascript:pm_tab_v3('SEARCH2/SHOW_HOOVER_COMPANY_CAPSULES');",
        "label":"Hoover's Company Capsules"
    });
    searchesJSON.push({
        "deleted":"<TMPL_VAR NAME="DELETE_LN_CORP_AFFILIATIONS">",
        "disabled":"<TMPL_VAR NAME="DISABLE_LN_CORP_AFFILIATIONS">",
        "id":"business_<TMPL_VAR NAME=IDX_LN_CORP_AFFILIATIONS>",
        "menu-hide-group":1,
        <TMPL_IF NAME="LN_CORP_AFFILIATIONS_SEARCH">"active":1,</TMPL_IF>
        "icon":"bus_icon",
        "href":"javascript:pm_tab_v3('SEARCH2/SHOW_LN_CORP_AFFILIATIONS');",
        "label":"LexisNexis<sup class='sup-reg-symbol'>&reg;</sup> Corporate Affiliations&#8482;"
    });
    searchesJSON.push({
        "deleted":"<TMPL_VAR NAME="DELETE_LN_MERGERSTAT">",
        "disabled":"<TMPL_VAR NAME="DISABLE_LN_MERGERSTAT">",
        "id":"business_<TMPL_VAR NAME=IDX_LN_MERGERSTAT>",
        "menu-hide-group":1,
        <TMPL_IF NAME="LN_MERGERSTAT_SEARCH">"active":1,</TMPL_IF>
        "icon":"bus_icon",
        "href":"javascript:pm_tab_v3('SEARCH2/SHOW_MERGERSTAT');",
        "label":"Mergerstat"
    });
    searchesJSON.push({
        "deleted":"<TMPL_VAR NAME="DELETE_SEC">",
        "disabled":"<TMPL_VAR NAME="DISABLE_SEC">",
        "id":"business_<TMPL_VAR NAME=IDX_SEC>",
        "menu-hide-group":1,
        <TMPL_IF NAME="SEC_SEARCH">"active":1,</TMPL_IF>
        "icon":"bus_icon",
        "href":"javascript:pm_tab_v3('SEARCH2/SHOW_SEC');",
        "label":"SEC Filings"
    });
    searchesJSON.push({
        "deleted":"<TMPL_VAR NAME="DELETE_LN_S_AND_P_CORP_DECISIONS">",
        "disabled":"<TMPL_VAR NAME="DISABLE_LN_S_AND_P_CORP_DECISIONS">",
        "id":"business_<TMPL_VAR NAME=IDX_LN_S_AND_P_CORP_DECISIONS>",
        "menu-hide-group":1,
        <TMPL_IF NAME="LN_S_AND_P_CORP_DECISIONS_SEARCH">"active":1,</TMPL_IF>
        "icon":"bus_icon",
        "href":"javascript:pm_tab_v3('SEARCH2/SHOW_S_AND_P_CORP_DECISIONS');",
        "label":"Standard &amp; Poor's Corporate Descriptions plus News"
    });
    sectionsJSON2.push({"sid":"assetslinks", "li-prefix":"assets"});
    searchesJSON.push({
        "deleted":"<TMPL_VAR NAME="DELETE_REAL_PROPERTY">",
        "disabled":"<TMPL_VAR NAME="DISABLE_REAL_PROPERTY">",
        "id":"assets_<TMPL_VAR NAME=IDX_REAL_PROPERTY>",
        <TMPL_IF NAME="REAL_PROPERTY_SEARCH">"active":1,</TMPL_IF>
        "icon":"property_icon",
        "href":"javascript:pm_tab_v3('SEARCH2/SHOW_REAL_PROPERTY');",
        "label":"Real Property (Property Assessments, Deeds &amp; Mortgages)"
    });
    searchesJSON.push({
        "deleted":"<TMPL_VAR NAME="DELETE_MV">",
        "disabled":"<TMPL_VAR NAME="DISABLE_MV">",
        "id":"assets_<TMPL_VAR NAME=IDX_MV>",
        <TMPL_IF NAME="DL_REG_SEARCH">"active":1,</TMPL_IF>
        "icon":"property_icon",
        "href":"javascript:pm_tab_v3('SEARCH2/SHOW_DL_REG');",
        "label":"Motor Vehicle Registrations"
    });
    searchesJSON.push({
        "deleted":"<TMPL_VAR NAME="DELETE_LOCATION">",
        "disabled":"<TMPL_VAR NAME="DISABLE_LOCATION">",
        "id":"assets_<TMPL_VAR NAME=IDX_LOCATION>",
        <TMPL_IF NAME="LOCATION_SEARCH">"active":1,</TMPL_IF>
        "icon":"property_icon",
        "href":"javascript:pm_tab_v3('SEARCH2/SHOW_PORTAL_LOCATION');",
        "label":"Find a Location"
    });
    searchesJSON.push({
        "deleted":"<TMPL_VAR NAME="DELETE_PROPHIST_PLUS">",
        "disabled":"<TMPL_VAR NAME="DISABLE_PROPHIST_PLUS">",
        "id":"assets_<TMPL_VAR NAME=IDX_PROPHIST_PLUS>",
        <TMPL_IF NAME="PROP_HISTORY_SEARCH_FORM_NAME">"active":1,</TMPL_IF>
        "icon":"property_icon",
        "href":"javascript:pm_tab_v3('SEARCH2/SHOW_PROP_HISTORY_PLUS_REPORT');",
        "label":"Property History Plus"
    });
    searchesJSON.push({
        "deleted":"<TMPL_VAR NAME="DELETE_PROPHIST_SEARCH_INDEX">",
        "disabled":"<TMPL_VAR NAME="DISABLE_PROPHIST_SEARCH_INDEX">",
        "id":"assets_<TMPL_VAR NAME=IDX_PROPHIST_SEARCH_INDEX>",
        <TMPL_IF NAME="PROP_HISTORY_REPORT_SEARCH">"active":1,</TMPL_IF>
        "icon":"property_icon",
        "href":"javascript:pm_tab_v3('SEARCH2/SHOW_PROP_HISTORY_REPORT');",
        "label":"Property History"
    });
    searchesJSON.push({
        "deleted":"<TMPL_VAR NAME="DELETE_VERIFICATION_OF_OCCUPANCY">",
        "disabled":"<TMPL_VAR NAME="DISABLE_VERIFICATION_OF_OCCUPANCY">",
        "id":"assets_<TMPL_VAR NAME=IDX_VERIFICATION_OF_OCCUPANCY>",
        <TMPL_IF NAME="VERIFICATION_OF_OCCUPANCY_REPORT">"active":1,</TMPL_IF>
        "icon":"property_icon",
        "href":"javascript:pm_tab_v3('SEARCH2/SHOW_VERIFICATION_OF_OCCUPANCY');",
        "label":"Verification of Occupancy"
    });
    searchesJSON.push({
        "deleted":"<TMPL_VAR NAME="DELETE_MORTGAGE_FRAUD_REPORT">",
        "disabled":"<TMPL_VAR NAME="DISABLE_MORTGAGE_FRAUD_REPORT">",
        "id":"assets_<TMPL_VAR NAME=IDX_MORTGAGE_FRAUD_REPORT>",
        <TMPL_IF NAME="MORTGAGE_FRAUD_REPORT">"active":1,</TMPL_IF>
        "icon":"property_icon",
        "href":"javascript:pm_tab_v3('SEARCH2/SHOW_MORTGAGEFRAUD_REPORT');",
        "label":"Mortgage Fraud Report"
    });
    searchesJSON.push({
        "deleted":"<TMPL_VAR NAME="DELETE_AIRCRAFT">",
        "disabled":"<TMPL_VAR NAME="DISABLE_AIRCRAFT">",
        "id":"assets_<TMPL_VAR NAME=IDX_AIRCRAFT>",
        <TMPL_IF NAME="AIRCRAFT_SEARCH">"active":1,</TMPL_IF>
        "icon":"property_icon",
        "href":"javascript:pm_tab_v3('SEARCH2/SHOW_AIRCRAFT');",
        "label":"Aircraft Registrations"
    });
    searchesJSON.push({
        "deleted":"<TMPL_VAR NAME="DELETE_VESSEL">",
        "disabled":"<TMPL_VAR NAME="DISABLE_VESSEL">",
        "id":"assets_<TMPL_VAR NAME=IDX_VESSEL>",
        <TMPL_IF NAME="MERCHANT_VESSEL_SEARCH">"active":1,</TMPL_IF>
        "icon":"property_icon",
        "href":"javascript:pm_tab_v3('SEARCH2/SHOW_VESSEL');",
        "label":"Boat Registrations"
    });
    sectionsJSON2.push({"sid":"courtslinks", "li-prefix":"courts"});
    searchesJSON.push({
        "deleted":"<TMPL_VAR NAME="DELETE_UCC">",
        "disabled":"<TMPL_VAR NAME="DISABLE_UCC">",
        "id":"courts_<TMPL_VAR NAME=IDX_UCC>",
        <TMPL_IF NAME="UCC_SEARCH">"active":1,</TMPL_IF>
        "icon":"court_icon",
        "href":"javascript:pm_tab_v3('SEARCH2/SHOW_UCC');",
        "label":"UCC Liens"
    });
    searchesJSON.push({
        "deleted":"<TMPL_VAR NAME="DELETE_BLJ">",
        "disabled":"<TMPL_VAR NAME="DISABLE_BLJ">",
        "id":"courts_<TMPL_VAR NAME=IDX_BLJ>",
        <TMPL_IF NAME="BLJ_SEARCH">"active":1,</TMPL_IF>
        "icon":"court_icon",
        "href":"javascript:pm_tab_v3('SEARCH2/SHOW_BLJ');","label":"Bankruptcies, Judgments &amp; Liens"
    });
    searchesJSON.push({
        "deleted":"<TMPL_VAR NAME="DELETE_BANKRUPTCY">",
        "disabled":"<TMPL_VAR NAME="DISABLE_BANKRUPTCY">",
        "id":"courts_<TMPL_VAR NAME=IDX_BANKRUPTCY>",
        <TMPL_IF NAME="BANKRUPTCY_SEARCH">"active":1,</TMPL_IF>
        "icon":"court_icon",
        "href":"javascript:pm_tab_v3('SEARCH2/SHOW_BANKRUPTCY');",
        "label":"Bankruptcies"
    });
    searchesJSON.push({
        "deleted":"<TMPL_VAR NAME="DELETE_LIEN">",
        "disabled":"<TMPL_VAR NAME="DISABLE_LIEN">",
        "id":"courts_<TMPL_VAR NAME=IDX_LIEN>",
        <TMPL_IF NAME="LIEN_SEARCH">"active":1,</TMPL_IF>
        "icon":"court_icon",
        "href":"javascript:pm_tab_v3('SEARCH2/SHOW_LIENS');",
        "label":"Judgments &amp; Tax Liens"
    });
    searchesJSON.push({
        "deleted":"<TMPL_VAR NAME="DELETE_US_CIVIL_CRIMINAL_FILINGS">",
        "disabled":"<TMPL_VAR NAME="DISABLE_US_CIVIL_CRIMINAL_FILINGS">",
        "id":"courts_<TMPL_VAR NAME=IDX_US_CIVIL_CRIMINAL_FILINGS>",
        <TMPL_IF NAME="US_CIVIL_CRIMINAL_FILINGS_SEARCH">"active":1,</TMPL_IF>
        "icon":"court_icon",
        "href":"javascript:pm_tab_v3('SEARCH2/SHOW_US_CRIMINAL');",
        "label":"Federal Civil &amp; Criminal Docket Summaries"
    });
    searchesJSON.push({
        "deleted":"<TMPL_VAR NAME="DELETE_STATE_CIVIL_CRIMINAL_FILINGS">",
        "disabled":"<TMPL_VAR NAME="DISABLE_STATE_CIVIL_CRIMINAL_FILINGS">",
        "id":"courts_<TMPL_VAR NAME=IDX_STATE_CIVIL_CRIMINAL_FILINGS>",
        <TMPL_IF NAME="STATE_CIVIL_CRIMINAL_FILINGS_SEARCH">"active":1,</TMPL_IF>
        "icon":"court_icon",
        "href":"javascript:pm_tab_v3('SEARCH2/SHOW_STATE_CRIMINAL');",
        "label":"State Civil &amp; Criminal Filings"
    });
    searchesJSON.push({
        "deleted":"<TMPL_VAR NAME="DELETE_CRIM">",
        "disabled":"<TMPL_VAR NAME="DISABLE_CRIM">",
        "id":"courts_<TMPL_VAR NAME=IDX_CRIM>",
        <TMPL_IF NAME="CRIM_SEARCH">"active":1,</TMPL_IF>
        "icon":"court_icon",
        "href":"javascript:pm_tab_v3('SEARCH2/SHOW_CRIM');",
        "label":"Criminal Records"
    });
    searchesJSON.push({
        "deleted":"<TMPL_VAR NAME="DELETE_JURY_VERDICTS_AND_SETTLEMENTS">",
        "disabled":"<TMPL_VAR NAME="DISABLE_JURY_VERDICTS_AND_SETTLEMENTS">",
        "id":"courts_<TMPL_VAR NAME=IDX_JURY_VERDICTS_AND_SETTLEMENTS>",
        <TMPL_IF NAME="JURY_VERDICTS_AND_SETTLEMENTS_SEARCH">"active":1,</TMPL_IF>
        "icon":"court_icon",
        "href":"javascript:pm_tab_v3('SEARCH2/SHOW_JURY_VERDICT');",
        "label":"Jury Verdicts &amp; Settlements"
    });
    searchesJSON.push({
        "deleted":"<TMPL_VAR NAME="DELETE_FORECLOSURE">",
        "disabled":"<TMPL_VAR NAME="DISABLE_FORECLOSURE">",
        "id":"courts_<TMPL_VAR NAME=IDX_FORECLOSURE>",
        <TMPL_IF NAME="FORECLOSURE_SEARCH">"active":1,</TMPL_IF>
        "icon":"court_icon",
        "href":"javascript:pm_tab_v3('SEARCH2/SHOW_FORECLOSURE');",
        "label":"Foreclosures"
    });
    searchesJSON.push({
        "deleted":"<TMPL_VAR NAME="DELETE_ACCIDENT">",
        "disabled":"<TMPL_VAR NAME="DISABLE_ACCIDENT">",
        "id":"courts_<TMPL_VAR NAME=IDX_ACCIDENT>",
        <TMPL_IF NAME="ACCIDENT_SEARCH">"active":1,</TMPL_IF>
        "icon":"court_icon",
        "href":"javascript:pm_tab_v3('SEARCH2/SHOW_ACCIDENT');",
        "label":"Florida Accidents"
    });
    searchesJSON.push({
        "deleted":"<TMPL_VAR NAME="DELETE_FINANCIAL_SANCTION">",
        "disabled":"<TMPL_VAR NAME="DISABLE_FINANCIAL_SANCTION">",
        "id":"courts_<TMPL_VAR NAME=IDX_FINANCIAL_SANCTION>",
        <TMPL_IF NAME="PORTAL_SANCTIONS_SEARCH">"active":1,</TMPL_IF>
        "icon":"court_icon",
        "href":"javascript:pm_tab_v3('SEARCH2/SHOW_PORTAL_SANCTIONS');",
        "label":"Mortgage &amp; Financial Service Sanctions"
    });
    searchesJSON.push({
        "deleted":"<TMPL_VAR NAME="DELETE_SEXPREDATOR">",
        "disabled":"<TMPL_VAR NAME="DISABLE_SEXPREDATOR">",
        "id":"courts_<TMPL_VAR NAME=IDX_SEXPREDATOR>",
        <TMPL_IF NAME="SEXPREDATOR_SEARCH">"active":1,</TMPL_IF>
        "icon":"court_icon",
        "href":"javascript:pm_tab_v3('SEARCH2/SHOW_SEXPREDATOR');",
        "label":"Sexual Offenders"
    });
    sectionsJSON2.push({"sid":"internationallinks", "li-prefix":"inter"});
    searchesJSON.push({
        "deleted":"<TMPL_VAR NAME="DELETE_CANADIAN_PHONES">",
        "disabled":"<TMPL_VAR NAME="DISABLE_CANADIAN_PHONES">",
        "id":"inter_<TMPL_VAR NAME=IDX_CANADIAN_PHONES>",
        <TMPL_IF NAME="CANADIAN_PHONES_SEARCH">"active":1,</TMPL_IF>
        "icon":"international_icon",
        "href":"javascript:portal_disclaimer_v3('SEARCH2/SHOW_CANADIAN_PHONE');",
        "label":"Canadian Phones"
    });
    searchesJSON.push({
        "deleted":"<TMPL_VAR NAME="DELETE_INSTANTID_INTERNATIONAL">",
        "disabled":"<TMPL_VAR NAME="DISABLE_INSTANTID_INTERNATIONAL">",
        "id":"inter_<TMPL_VAR NAME=IDX_INSTANTID_INTERNATIONAL>",
        <TMPL_IF NAME="INTL_INSTANTID">"active":1,</TMPL_IF>
        "icon":"international_icon",
        "href":"javascript:pm_tab_v3('SEARCH2/SHOW_INTL_INSTANTID');",
        "label":"InstantID<sup class='sup-reg-symbol'>&reg;</sup> International"
    });
    searchesJSON.push({
        "deleted":"<TMPL_VAR NAME="DELETE_ALLCOMPANY_SEARCH_INDEX">",
        "disabled":"<TMPL_VAR NAME="DISABLE_ALLCOMPANY_SEARCH_INDEX">",
        "id":"inter_<TMPL_VAR NAME=IDX_ALLCOMPANY_SEARCH_INDEX>",
        <TMPL_IF NAME="ALLCOMPANY_SEARCH">"active":1,</TMPL_IF>
        "icon":"international_icon",
        "href":"javascript:pm_tab_v3('SEARCH2/SHOW_ALLCOMPANY');",
        "label":"All Company Information (excluding Investext &amp; D&amp;B)"
    });
    searchesJSON.push({
        "deleted":"<TMPL_VAR NAME="DELETE_PASSPORT_SEARCH">",
        "disabled":"<TMPL_VAR NAME="DISABLE_PASSPORT_SEARCH">",
        "id":"inter_<TMPL_VAR NAME=IDX_PASSPORT_SEARCH>",
        <TMPL_IF NAME="PASSPORT_SEARCH">"active":1,</TMPL_IF>
        "icon":"international_icon",
        "href":"javascript:pm_tab_v3('SEARCH2/SHOW_PASSPORT_VALIDATION');",
        "label":"Passport Validation"
    });
    searchesJSON.push({
        "deleted":"<TMPL_VAR NAME="DELETE_WORLDCHECK_SEARCH_INDEX">",
        "disabled":"<TMPL_VAR NAME="DISABLE_WORLDCHECK_SEARCH_INDEX">",
        "id":"inter_<TMPL_VAR NAME=IDX_WORLDCHECK_SEARCH_INDEX>",
        <TMPL_IF NAME="WORLDCHECK_SEARCH">"active":1,</TMPL_IF>
        "icon":"international_icon",
        "href":"javascript: void window.open('https://members.worldcompliance.com/Signin.aspx', 'wc', '');",
        "label":"WorldCompliance"                    
    });
    sectionsJSON2.push({"sid":"newslinks", "li-prefix":"news"});
    searchesJSON.push({
        "deleted":"<TMPL_VAR NAME="DELETE_NEWS">",
        "disabled":"<TMPL_VAR NAME="DISABLE_NEWS">",
        "id":"news_<TMPL_VAR NAME=IDX_NEWS>",
        <TMPL_IF NAME="NEWS_SEARCH">"active":1,</TMPL_IF>
        "icon":"news_icon",
        "href":"javascript:pm_tab_v3('SEARCH2/SHOW_PORTAL_NEWS');",
        "label":"News"
    });
    searchesJSON.push({
        "deleted":"<TMPL_VAR NAME="DELETE_LN_NEGATIVE_NEWS">",
        "disabled":"<TMPL_VAR NAME="DISABLE_LN_NEGATIVE_NEWS">",
        "id":"news_<TMPL_VAR NAME=IDX_LN_NEGATIVE_NEWS>",
        <TMPL_IF NAME="NEG_NEWS_SEARCH">"active":1,</TMPL_IF>
        "icon":"news_icon",
        "href":"javascript:pm_tab_v3('SEARCH2/SHOW_NEG_NEWS');",
        "label":"Negative News"
    });
    searchesJSON.push({
        "deleted":"<TMPL_VAR NAME="DELETE_NEWS_TRENDS">",
        "disabled":"<TMPL_VAR NAME="DISABLE_NEWS_TRENDS">",
        "id":"news_<TMPL_VAR NAME=IDX_NEWS_TRENDS>",
        <TMPL_IF NAME="NEWS_TRENDS_SEARCH">"active":1,</TMPL_IF>
        "icon":"news_icon",
        "href":"javascript:pm_tab_v3('SEARCH2/SHOW_NEWS_TRENDS');",
        "label":"News Trends"
    });
    searchesJSON.push({
        "deleted":"<TMPL_VAR NAME="DELETE_DO_NEWS">",
        "disabled":"<TMPL_VAR NAME="DISABLE_DO_NEWS">",
        "id":"news_<TMPL_VAR NAME=IDX_DO_NEWS>",
        <TMPL_IF NAME="DO_NEWS_SEARCH">"active":1,</TMPL_IF>
        "icon":"news_icon",
        "href":"javascript:pm_tab_v3('SEARCH2/SHOW_DO_NEWS');",
        "label":"Deaths &amp; Obituaries in the News"
    });
    searchesJSON.push({
        "deleted":"<TMPL_VAR NAME="DELETE_LN_BANKERS_NEWS">",
        "disabled":"<TMPL_VAR NAME="DISABLE_LN_BANKERS_NEWS">",
        "id":"news_<TMPL_VAR NAME=IDX_LN_BANKERS_NEWS>",
        <TMPL_IF NAME="BANK_NEWS_SEARCH">"active":1,</TMPL_IF>
        "icon":"news_icon",
        "href":"javascript:pm_tab_v3('SEARCH2/SHOW_BANK_NEWS');",
        "label":"Bankers' News"
    });
    sectionsJSON2.push({"sid":"directtosource", "li-prefix":"direct"});
    searchesJSON.push({
        "deleted":"<TMPL_VAR NAME="DELETE_BUSINESS_ASSURANCE">",
        "disabled":"<TMPL_VAR NAME="DISABLE_BUSINESS_ASSURANCE">",
        "id":"direct_<TMPL_VAR NAME=IDX_BUSINESS_ASSURANCE>",
        <TMPL_IF NAME="BUSINESS_ASSURANCE_SEARCH">"active":1,</TMPL_IF>
        "href":"javascript:pm_tab_v3('SEARCH2/SHOW_BUSINESS_ASSURANCE');",
        "label":"Business Assurance"
    });
    searchesJSON.push({
        "deleted":"<TMPL_VAR NAME="DELETE_OFFLINE_CIV_CRIM">",
        "disabled":"<TMPL_VAR NAME="DISABLE_OFFLINE_CIV_CRIM">",
        "id":"direct_<TMPL_VAR NAME=IDX_OFFLINE_CIV_CRIM>",
        <TMPL_IF NAME="OFFLINE_CIV_CRIM">"active":1,</TMPL_IF>
        "href":"javascript:pm_tab_v3('SEARCH2/SHOW_OCCCR');",
        "label":"Offline Civil &amp; Criminal Court Records (OCCCR)"
    });

    searchesJSON.push({
        "deleted":<TMPL_IF DELETE_OFFLINE_CIV_CRIM><TMPL_IF DELETE_BUSINESS_ASSURANCE>1<TMPL_ELSE>0</TMPL_IF><TMPL_ELSE>0</TMPL_IF>,
        "disabled":<TMPL_IF DISABLE_OFFLINE_CIV_CRIM><TMPL_IF DISABLE_BUSINESS_ASSURANCE>1<TMPL_ELSE>0</TMPL_IF><TMPL_ELSE>0</TMPL_IF>,
        "id":"direct_<TMPL_VAR NAME=IDX_OFFLINE_CIV_CRIM>0",
        "active":1,
        "href":"javascript:pm_tab_v3('SEARCH2/SHOW_OCCCR_RESULTS');",
        "label":"Direct-to-Source Results"
    });
    sectionsJSON2.push({"sid":"authserviceslinks", "li-prefix":"auth"});
    searchesJSON.push({
        "deleted":"<TMPL_VAR NAME="DELETE_KBA">",
        "disabled":"<TMPL_VAR NAME="DISABLE_KBA">",
        "id":"auth_<TMPL_VAR NAME=IDX_KBA>",
        <TMPL_IF NAME="ID_VERIFY">"active":1,</TMPL_IF>
        "icon":"authentication_services_icon",
        "href":"javascript:pm_tab_v3('SEARCH2/SHOW_ID_VERIFY');",
        "label":"InstantID<sup class='sup-reg-symbol'>&reg;</sup> Q&amp;A"
    });
    searchesJSON.push({
        "deleted":"<TMPL_VAR NAME="DELETE_OTP">",
        "disabled":"<TMPL_VAR NAME="DISABLE_OTP">",
        "id":"auth_<TMPL_VAR NAME=IDX_OTP>",
        <TMPL_IF NAME="ID_VERIFY">"active":1,</TMPL_IF>
        "icon":"authentication_services_icon",
        "href":"javascript:pm_tab_v3('SEARCH2/SHOW_PORTAL_OTP');",
        "label":"One Time Password"
    });
</script>
<TMPL_INCLUDE NAME="../search_data_scripts.tpl">
