<!-- BEGIN decision_all.tpl -->
<!-- PLEASE NOTE THAT CURRENTLY ONLY NAME Search IS ON EVERY Search -->
<script>
    window.resizeTo(650,720);
</script>

<table border="0" cellpadding="5" cellspacing="0" width="600">
<tr>
<td valign="top" id="searchPop" width="300">

<TMPL_IF FCOL_TCOL>
    <div style="margin-left: 20px;"><strong>NON-FCRA Searches</strong></div>
</TMPL_IF>
<ul>

<TMPL_IF HEA>
    <TMPL_UNLESS DISABLE_PROVIDER>
        <li><a href="javascript:setevent('SEARCH/SEARCH_PROVIDER');submitevent();window.close();">Provider Search</a></li>
    </TMPL_UNLESS>
</TMPL_IF>
    
<TMPL_UNLESS DO_NOT_DISPLAY_PERSON_SEARCH_PLUS>
    <TMPL_UNLESS DISABLE_PERSON_SEARCH_PLUS>
        <TMPL_IF FCOL>
            <li><a href="javascript:setevent('SEARCH2/SEARCH_PERSON_PLUS_SUBJECT');submitevent();window.close();">Person Search Plus</a></li>
        <TMPL_ELSE>
            <TMPL_IF TCOL>
                <li><a href="javascript:setevent('SEARCH2/SEARCH_PERSON_PLUS_SUBJECT');submitevent();window.close();">Person Search Plus</a></li>
            </TMPL_IF>
        </TMPL_IF>
    </TMPL_UNLESS>
</TMPL_UNLESS>

<TMPL_UNLESS SSN_ONLY_SEARCH>
    <TMPL_UNLESS DISABLE_ADV>
        <li><a href="javascript:<TMPL_UNLESS IRB>setaction('<TMPL_VAR NAME=ACTION_MISC>');</TMPL_UNLESS>setevent('SEARCH/SEARCH_ADV');submitevent();window.close();"><span id="advanced_person"></span></a></li>
    </TMPL_UNLESS>
    <TMPL_IF NAME=INS>
        <TMPL_IF SHOW_SOCIAL_MEDIA_LOCATOR>
            <TMPL_UNLESS DISABLE_SOCIALMEDIA>
                <li><a href="javascript:setevent('SEARCH/SHOW_SOCIALMEDIA');submitevent();window.close();">Social Media Locator</a></li>
            </TMPL_UNLESS>
        </TMPL_IF>
    </TMPL_IF>
</TMPL_UNLESS>

<TMPL_UNLESS DISABLE_PAW>
    <li><a href="javascript:setevent('SEARCH/SEARCH_PAW');submitevent();window.close();"><TMPL_IF FCOL_TCOL>People At Work Locator<TMPL_ELSE>People At Work Search</TMPL_IF></a></li>
</TMPL_UNLESS>

<TMPL_UNLESS DISABLE_BUS>
    <li><a href="javascript:setevent('SEARCH/SEARCH_BUS');submitevent();window.close();"><TMPL_IF FCOL>Find a Business<TMPL_ELSE>Business Search</TMPL_IF></a></li>
</TMPL_UNLESS>

<TMPL_UNLESS DISABLE_CORPORATION>
    <li><a href="javascript:setevent('WS_SEARCH/SEARCH_CORPORATION');submitevent();window.close();"><span id="corporations"></span></a></li>
</TMPL_UNLESS>

<TMPL_UNLESS DISABLE_UCC>
    <li><a href="javascript:setevent('SEARCH2/SEARCH_UCC');submitevent();window.close();">UCC Search</a></li>
</TMPL_UNLESS>

<TMPL_UNLESS RESTRICT_LNLP_CONTENT>
    <TMPL_UNLESS DISABLE_SEC>
        <TMPL_IF NAME="IRS">
            <li><a href="javascript:setevent('SEARCH/SEARCH_SEC');submitevent();window.close();">SEC Filings Search</a></li>
        </TMPL_IF>
    </TMPL_UNLESS>
    <TMPL_UNLESS DISABLE_TRADEMARK>
        <TMPL_IF NAME="IRS">
            <li><a href="javascript:setevent('SEARCH/SEARCH_TRADEMARK');submitevent();window.close();">Trademarks Search</a></li>
         </TMPL_IF>
    </TMPL_UNLESS>
</TMPL_UNLESS>

<TMPL_UNLESS DISABLE_FICTIOUS>
    <TMPL_IF NAME="IRS">
        <li><a href="javascript:setevent('SEARCH/SEARCH_FICTIOUS');submitevent();window.close();">Fictitious Business Name Search</a></li>
    </TMPL_IF>
</TMPL_UNLESS>

<TMPL_UNLESS DO_NOT_DISPLAY_COMBINED_MVR>
    <TMPL_UNLESS DISABLE_COMBINED_MVR>
        <TMPL_UNLESS MVSEARCH_CAP_MET>
            <li><a href="javascript:setevent('SEARCH2/SEARCH_COMBINED_MVR_MV');submitevent();window.close();">Advanced Motor Vehicles</a></li>
        </TMPL_UNLESS>
    </TMPL_UNLESS>
</TMPL_UNLESS>

<TMPL_UNLESS DO_NOT_DISPLAY_MV>
<TMPL_UNLESS HIDE_MV>
    <TMPL_UNLESS DISABLE_MV>
        <TMPL_UNLESS MVSEARCH_CAP_MET>
            <li><a href="javascript:setevent('WS_SEARCH/SEARCH_DL_REG');submitevent();window.close();">Motor Vehicles</a></li>
        </TMPL_UNLESS>
    </TMPL_UNLESS>
</TMPL_UNLESS>
</TMPL_UNLESS>

<TMPL_UNLESS PROPERTYSEARCH_CAP_MET>
    <TMPL_UNLESS DISABLE_ASSESSMENT>
        <TMPL_IF NAME="HYBRID_REAL_PROPERTY">
            <li><a href="javascript:setevent('SEARCH/SEARCH_REAL_PROPERTY_A');submitevent();window.close();"><TMPL_IF FCOL_TCOL>Real Property Locator (Property Assessments)<TMPL_ELSE>Property Assessment</TMPL_IF></a></li>
        <TMPL_ELSE>
            <TMPL_UNLESS NAME="COMBINED_REAL_PROPERTY">
                <li><a href="javascript:setevent('SEARCH/SEARCH_PROP');submitevent();window.close();"><TMPL_IF FCOL_TCOL>Real Property Locator (Property Assessments)<TMPL_ELSE>Property Assessment</TMPL_IF></a></li>
            </TMPL_UNLESS>
        </TMPL_IF>
    </TMPL_UNLESS>
    <TMPL_UNLESS DISABLE_DEEDS>
        <TMPL_IF NAME="HYBRID_REAL_PROPERTY">
            <li><a href="javascript:setevent('SEARCH/SEARCH_REAL_PROPERTY_D');submitevent();window.close();"><TMPL_IF FCOL_TCOL>Real Property Locator (Property Deeds)<TMPL_ELSE>Property Deeds</TMPL_IF></a></li>
        <TMPL_ELSE>
            <TMPL_UNLESS NAME="COMBINED_REAL_PROPERTY">
                <li><a href="javascript:setevent('SEARCH/SEARCH_PROP_DEED');submitevent();window.close();"><TMPL_IF FCOL_TCOL>Real Property Locator (Property Deeds)<TMPL_ELSE>Property Deeds</TMPL_IF></a></li>
            </TMPL_UNLESS>
        </TMPL_IF>
    </TMPL_UNLESS>
    <TMPL_UNLESS DISABLE_REAL_PROPERTY>
        <li><a href="javascript:setevent('SEARCH/SEARCH_REAL_PROPERTY');submitevent();window.close();"><TMPL_IF FCOL_TCOL>Real Property Locator (Property Assessments, Deeds &amp; Mortgages)<TMPL_ELSE><TMPL_UNLESS IRS>Real </TMPL_UNLESS>Property (Property Assessments, Deeds &amp; Mortgages)</TMPL_IF></a></li>
    </TMPL_UNLESS>
</TMPL_UNLESS>

<TMPL_UNLESS DISABLE_VESSEL>
    <li><a href="javascript:<TMPL_UNLESS IRB>setaction('<TMPL_VAR NAME=ACTION_MISC>');</TMPL_UNLESS>setevent('WS_SEARCH/SEARCH_VESSEL');submitevent();window.close();">Watercraft Search</a></li>
</TMPL_UNLESS>

<TMPL_UNLESS DISABLE_AIRCRAFT>
    <li><a href="javascript:setevent('SEARCH/SEARCH_AIRCRAFT');submitevent();window.close();">FAA Aircraft Search</a></li>
</TMPL_UNLESS>

<TMPL_UNLESS DISABLE_DL>
    <li><a href="javascript:setevent('SEARCH/SEARCH_LICENSE');submitevent();window.close();"><span id="driver_licenses"></span></a></li>
</TMPL_UNLESS>

<TMPL_UNLESS DISABLE_PROF_LICENSE>
    <li><a href="javascript:setevent('SEARCH2/SEARCH_PROF_LICENSE');submitevent();window.close();"><span id="professional_licenses"></span></a></li>
</TMPL_UNLESS>

<TMPL_UNLESS DISABLE_FAA_PILOT>
    <li><a href="javascript:setevent('SEARCH/SEARCH_FAA_PILOT');submitevent();window.close();">FAA Pilots</a></li>
</TMPL_UNLESS>

<TMPL_UNLESS DISABLE_HUNTING_LICENSE>
    <li><a href="javascript:setevent('SEARCH/SEARCH_HUNTING_LICENSE');submitevent();window.close();">Hunting & Fishing License Search</a></li>
</TMPL_UNLESS>

<TMPL_UNLESS DISABLE_DEATH>
    <li><a href="javascript:setevent('WS_SEARCH/SEARCH_DEATH');submitevent();window.close();">Death Records Search</a></li>
</TMPL_UNLESS>

<TMPL_UNLESS LE>
    <TMPL_UNLESS GOV>
        <TMPL_UNLESS DISABLE_EMAIL>
            <TMPL_UNLESS EMAILSEARCH_CAP_MET>
                <li><a href="javascript:setevent('SEARCH/SEARCH_EMAIL');submitevent();window.close();">Email Search</a></li>
            </TMPL_UNLESS>
        </TMPL_UNLESS>
    </TMPL_UNLESS>
</TMPL_UNLESS>

<TMPL_IF NAME="INS">
    <TMPL_UNLESS DISABLE_FED_CIVIL_COURT>
        <li><a href="javascript:setevent('SEARCH/SEARCH_FED_CIVIL_COURT');submitevent();window.close();">Federal Civil Court Records Search</a></li>
    </TMPL_UNLESS>
    <TMPL_UNLESS DISABLE_FED_CRIM_COURT>
        <li><a href="javascript:setaction('<TMPL_VAR NAME=ACTION_MISC>');setevent('SEARCH/SEARCH_FED_CRIM_COURT');submitevent();window.close();">Federal Criminal Court Records Search</a></li>
    </TMPL_UNLESS>
</TMPL_IF>

<TMPL_IF LEG>
    <TMPL_UNLESS DISABLE_PROVIDER>
        <li><a href="javascript:setevent('SEARCH/SEARCH_PROVIDER');submitevent();window.close();">Provider Search</a></li>
    </TMPL_UNLESS>
    <TMPL_UNLESS DISABLE_SANCTION>
        <li><a href="javascript:setevent('SEARCH/SEARCH_SANCTION');submitevent();window.close();">Provider Sanction Search</a></li>
    </TMPL_UNLESS>
</TMPL_IF>

<TMPL_UNLESS DISABLE_DEA>
    <li><a href="javascript:setevent('SEARCH/SEARCH_DEA');submitevent();window.close();">DEA Controlled Substances</a></li>
</TMPL_UNLESS>

<TMPL_IF SHOW_VIRTUAL_ID_SEARCH>
    <TMPL_UNLESS DISABLE_SOC_REPORT>
        <li><a href="javascript:setevent('SEARCH/SEARCH_VIRTUAL_ID');submitevent();window.close();">Virtual Identity Search</a></li>
    </TMPL_UNLESS>
</TMPL_IF>

<TMPL_UNLESS RESTRICT_LNLP_CONTENT>
    <TMPL_IF XBPS>
        <TMPL_UNLESS DONT_SHOW_NEWS>
            <TMPL_UNLESS DISABLE_NEWS>    
                <li><a href="javascript:setevent('SEARCH/SHOW_NEWS');submitevent();window.close();">People in the News</a></li>
            </TMPL_UNLESS>
            <TMPL_UNLESS DISABLE_LN_NEGATIVE_NEWS>
                <li><a href="javascript:setevent('SEARCH/SHOW_NEG_NEWS');submitevent();window.close();">Negative News</a></li>
            </TMPL_UNLESS>
            <TMPL_UNLESS DISABLE_DO_NEWS>
                 <li><a href="javascript:setevent('SEARCH/SHOW_DO_NEWS');submitevent();window.close();">Deaths & Obituaries in the News</a></li>
            </TMPL_UNLESS>
            <TMPL_UNLESS DISABLE_ARCHIVED_NEWS>
                <li><a href="javascript:setevent('SEARCH/SHOW_ARCHIVED_NEWS');submitevent();window.close();">Archived News</a></li>
            </TMPL_UNLESS>
        </TMPL_UNLESS>
    </TMPL_IF>
</TMPL_UNLESS>

</ul>
</td>

<td valign="top" id="searchPop" width="300">
<TMPL_IF FCOL_TCOL>
     <div style="margin-left: 20px;"><strong>NON-FCRA Searches</strong></div>
</TMPL_IF>
<ul>
<TMPL_IF HEA>
    <TMPL_UNLESS DISABLE_SANCTION>
        <li><a href="javascript:setevent('SEARCH/SEARCH_SANCTION');submitevent();window.close();">Provider Sanction Search</a></li>
    </TMPL_UNLESS>
</TMPL_IF>

<TMPL_IF INS>
    <TMPL_UNLESS DISABLE_PROVIDER>
        <li><a href="javascript:setevent('SEARCH/SEARCH_PROVIDER');submitevent();window.close();">Provider Search</a></li>
    </TMPL_UNLESS>
    <TMPL_UNLESS DISABLE_SANCTION>
        <li><a href="javascript:setevent('SEARCH/SEARCH_SANCTION');submitevent();window.close();">Provider Sanction Search</a></li>
    </TMPL_UNLESS>
</TMPL_IF>

<TMPL_UNLESS DISABLE_CONCEALED_WEAPON>
    <li><a href="javascript:setaction('<TMPL_VAR NAME=ACTION_MISC>');setevent('SEARCH/SEARCH_CONCEALED_WEAPON');submitevent();window.close();">Concealed Weapon Search</a></li>
</TMPL_UNLESS>

<TMPL_UNLESS DISABLE_VOTER_REGISTRATION>
    <li><a href="javascript:setevent('WS_SEARCH/SEARCH_VOTER_REGISTRATION');submitevent();window.close();"><TMPL_IF FCOL_TCOL>Voter Registration Locator<TMPL_ELSE>Voter Registration Search</TMPL_IF></a></li>
</TMPL_UNLESS>

<TMPL_UNLESS DISABLE_FIREARMS>
    <li><a href="javascript:setevent('SEARCH/SEARCH_FIREARMS');submitevent();window.close();">Federal Firearms Search</a></li>
</TMPL_UNLESS>

<TMPL_IF SHOW_RT_PHONE>
    <TMPL_UNLESS DISABLE_RT_PHONE>
        <li><a href="javascript:setevent('SEARCH/SEARCH_RT_PHONE');submitevent();window.close();">Real-Time Phones</a></li>
    </TMPL_UNLESS>
</TMPL_IF>

<TMPL_UNLESS DISABLE_BANKRUPTCY>
    <TMPL_IF NAME="HYBRID_BLJ">
        <li><a href="javascript:setevent('SEARCH/SEARCH_BLJB');submitevent();window.close();">Bankruptcy Search</a></li>
    <TMPL_ELSE>
        <TMPL_UNLESS NAME="COMBINED_BLJ">
            <li><a href="javascript:setevent('SEARCH/SEARCH_BANKRUPTCY');submitevent();window.close();">Bankruptcy Search</a></li>
        </TMPL_UNLESS>
    </TMPL_IF>
</TMPL_UNLESS>

<TMPL_UNLESS DISABLE_CRIM>
    <li><a href="javascript:setevent('SEARCH/SEARCH_CRIM');submitevent();window.close();">Criminal Records</a></li>
</TMPL_UNLESS>

<TMPL_IF SHOW_JAIL_BOOKING_SEARCH>
    <TMPL_UNLESS DISABLE_JAILBOOKING>
        <li><a href="javascript:setaction('<TMPL_VAR NAME=ACTION_MISC>');setevent('SEARCH/SEARCH_JAILBOOKING');submitevent();window.close();">Jail Bookings</a></li>
    </TMPL_UNLESS>
</TMPL_IF>

<TMPL_UNLESS DISABLE_CIVIL_COURT>
    <li><a href="javascript:setaction('<TMPL_VAR NAME=ACTION_MISC>');setevent('SEARCH/SEARCH_CIVIL_COURT');submitevent();window.close();">Civil Courts Search</a></li>
</TMPL_UNLESS>

<TMPL_UNLESS DISABLE_LIEN>
    <TMPL_IF NAME="HYBRID_BLJ">
        <li><a href="javascript:setevent('SEARCH/SEARCH_BLJL');submitevent();window.close();">Liens and Judgments Search</a></li>
    <TMPL_ELSE>
        <TMPL_UNLESS NAME="COMBINED_BLJ">
            <li><a href="javascript:setevent('SEARCH/SEARCH_LIENS');submitevent();window.close();">Liens and Judgments Search</a></li>
        </TMPL_UNLESS>
    </TMPL_IF>
</TMPL_UNLESS>

<TMPL_UNLESS DISABLE_BLJ>
    <li><a href="javascript:setevent('SEARCH/SEARCH_BLJ');submitevent();window.close();">Bankruptcies, Liens and Judgments Search</a></li>
</TMPL_UNLESS>

<TMPL_UNLESS DISABLE_ACCIDENT>
    <TMPL_IF NAME="NAT_ACC_ENABLE">
        <li><a href="javascript:setevent('SEARCH/SHOW_ACCIDENT');submitevent();window.close();">National Motor Vehicle Accidents</a></li>
    <TMPL_ELSE>
        <li><a href="javascript:setevent('SEARCH/SEARCH_ACCIDENT');submitevent();window.close();">Florida Accidents</a></li>
    </TMPL_IF>
</TMPL_UNLESS>

<TMPL_UNLESS DISABLE_PATRIOTACT>
    <li><a href="javascript:do_patriotact_search_by_name();">USA PATRIOT Act Search</a></li>
</TMPL_UNLESS>

<TMPL_UNLESS DISABLE_SEXPREDATOR>
    <li><a href="javascript:setaction('<TMPL_VAR NAME=ACTION_MISC>');setevent('SEARCH/SEARCH_SEXPREDATOR');submitevent();window.close();">Sexual Offenders</a></li>
</TMPL_UNLESS>

<TMPL_UNLESS DISABLE_FORECLOSURE>
    <li><a href="javascript:setaction('<TMPL_VAR NAME=ACTION_MISC>');setevent('SEARCH/SEARCH_FORECLOSURE');submitevent();window.close();">Foreclosures</a></li>
</TMPL_UNLESS>

<TMPL_UNLESS DISABLE_OFFICIAL_RECORDS>
    <li><a href="javascript:setevent('SEARCH/SEARCH_OFFICIAL_RECORDS');submitevent();window.close();">Official Records</a></li>
</TMPL_UNLESS>

<TMPL_UNLESS DISABLE_MARRIAGE>
    <li><a href="javascript:setevent('SEARCH/SEARCH_MARRIAGE');submitevent();window.close();">Marriages / Divorces</a></li>
</TMPL_UNLESS>

</ul>
</td>
</tr>
</table>
<script>get_search_labels();</script>
<!-- END decision_all.tpl -->
