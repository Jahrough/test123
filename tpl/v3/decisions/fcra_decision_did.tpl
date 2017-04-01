<!-- BEGIN decision_did.tpl -->
<script>
window.resizeTo(600,720);
</script>
<table border="0" cellpadding="5" cellspacing="0" width="600">
<tr>
<td valign="top" id="searchPop" width="300">
<div style="margin-left: 20px;"><strong>NON-FCRA Searches</strong></div>
<ul>

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

<TMPL_UNLESS DISABLE_ADV>
    <li><a href="javascript:<TMPL_UNLESS IRB>setaction('<TMPL_VAR NAME=ACTION_MISC>');</TMPL_UNLESS>setevent('SEARCH/SEARCH_ADV');submitevent();window.close();"><span id="advanced_person"></span></a></li>
</TMPL_UNLESS>

<TMPL_UNLESS DELETE_CONTACT_PLUS>
    <TMPL_UNLESS DISABLE_CONTACT_PLUS>
        <TMPL_UNLESS CONTACTPLUS_CAP_MET>
            <li><a href="javascript:setevent('SEARCH2/SEARCH_CONTACT_PLUS');submitevent();window.close();">Contact Plus Search</a></li>
        </TMPL_UNLESS>
    </TMPL_UNLESS>
</TMPL_UNLESS>

<TMPL_UNLESS DISABLE_COMPSEARCH>
    <TMPL_UNLESS COMPREPORT_CAP_MET>
        <TMPL_IF SHOW_COMP_SEARCH>
            <li><a href="javascript:setevent('SEARCH/SEARCH_COMPSEARCH_ADL');submitevent();;window.close();">Comprehensive Person Search</a></li>
        </TMPL_IF>
    </TMPL_UNLESS>
</TMPL_UNLESS>

<TMPL_UNLESS DISABLE_PAW>
    <li><a href="javascript:setevent('SEARCH/SEARCH_PAW');submitevent();window.close();"><TMPL_IF FCOL_TCOL>People At Work Locator<TMPL_ELSE>People At Work Search</TMPL_IF></a></li>
</TMPL_UNLESS>

<TMPL_UNLESS HIDE_WORKPLACE>
    <TMPL_UNLESS DISABLE_WORKPLACE>
        <TMPL_UNLESS WORKPLACE_SEARCH_CAP_MET>
            <li><a href="javascript:setevent('SEARCH/SEARCH_WORKPLACE');submitevent();window.close();">Workplace Locator</a></li>
        </TMPL_UNLESS>
    </TMPL_UNLESS>
</TMPL_UNLESS>

<TMPL_UNLESS DISABLE_EMAIL>
    <TMPL_UNLESS EMAILSEARCH_CAP_MET>
        <li><a href="javascript:setevent('SEARCH/SEARCH_EMAIL');submitevent();window.close();">Email Search</a></li>
    </TMPL_UNLESS>
</TMPL_UNLESS>

<TMPL_UNLESS DISABLE_DEATH>
    <li><a href="javascript:setevent('WS_SEARCH/SEARCH_DEATH');submitevent();window.close();">Death Records Search</a></li>
</TMPL_UNLESS>

<TMPL_UNLESS DISABLE_MARRIAGE>
    <li><a href="javascript:setevent('SEARCH/SEARCH_MARRIAGE');submitevent();window.close();">Marriages / Divorces</a></li>
</TMPL_UNLESS>

<TMPL_UNLESS DISABLE_DL>
    <li><a href="javascript:setevent('SEARCH/SEARCH_LICENSE');submitevent();window.close();"><span id="driver_licenses"></span></a></li>
</TMPL_UNLESS>

<TMPL_UNLESS DISABLE_BANKRUPTCY>
    <TMPL_IF NAME="HYBRID_BLJ">
        <li><a href="javascript:setevent('SEARCH/SEARCH_BLJB');submitevent();window.close();">Bankruptcy Search</a></li>
    <TMPL_ELSE>
        <TMPL_UNLESS NAME="COMBINED_BLJ">
            <li><a href="javascript:setevent('SEARCH/SEARCH_BANKRUPTCY');submitevent();window.close();">Bankruptcy Search</a></li>
        </TMPL_UNLESS>
    </TMPL_IF>
</TMPL_UNLESS>

<TMPL_IF SHOW_RT_PHONE>
    <TMPL_UNLESS DISABLE_RT_PHONE>
        <li><a href="javascript:setevent('SEARCH/SEARCH_RT_PHONE');submitevent();window.close();">Real-Time Phones</a></li>
    </TMPL_UNLESS>
</TMPL_IF>

<TMPL_IF SHOW_VIRTUAL_ID_SEARCH>
    <TMPL_UNLESS DISABLE_SOC_REPORT>
        <li><a href="javascript:setevent('SEARCH/SEARCH_VIRTUAL_ID');submitevent();window.close();">Virtual Identity Search</a></li>
    </TMPL_UNLESS>
</TMPL_IF>

<TMPL_UNLESS PROPERTYSEARCH_CAP_MET>
    <TMPL_UNLESS DISABLE_ASSESSMENT>
        <TMPL_IF NAME="HYBRID_REAL_PROPERTY">
            <li><a href="javascript:setevent('SEARCH/SEARCH_REAL_PROPERTY_A');submitevent();window.close();">Real Property Locator (Property Assessments)</a></li>
        <TMPL_ELSE>
            <TMPL_UNLESS NAME="COMBINED_REAL_PROPERTY">
                <li><a href="javascript:setevent('SEARCH/SEARCH_PROP');submitevent();window.close();">Real Property Locator (Property Assessments)</a></li>
            </TMPL_UNLESS>
    </TMPL_IF>
</TMPL_UNLESS>

<TMPL_UNLESS DISABLE_DEEDS>
    <TMPL_IF NAME="HYBRID_REAL_PROPERTY">
        <li><a href="javascript:setevent('SEARCH/SEARCH_REAL_PROPERTY_D');submitevent();window.close();">Real Property Locator (Property Deeds)</a></li>
    <TMPL_ELSE>
        <TMPL_UNLESS NAME="COMBINED_REAL_PROPERTY">
            <li><a href="javascript:setevent('SEARCH/SEARCH_PROP_DEED');submitevent();window.close();">Real Property Locator (Property Deeds)</a></li>
        </TMPL_UNLESS>
    </TMPL_IF>
</TMPL_UNLESS>

<TMPL_UNLESS DISABLE_REAL_PROPERTY>
    <li><a href="javascript:setevent('SEARCH/SEARCH_REAL_PROPERTY');submitevent();window.close();">Real Property Locator (Property Assessments, Deeds &amp; Mortgages)</a></li>
</TMPL_UNLESS>

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

<TMPL_UNLESS DISABLE_PERSON_DTR>
    <TMPL_UNLESS DISABLE_DIRECT_TO_REPORT>
        <li><a href="javascript:setevent('SEARCH/SHOW_PERSON_DTR');submitevent();window.close();">Direct-To-Report</a></li>
    </TMPL_UNLESS>
</TMPL_UNLESS>

</ul>
</td>
<td valign="top" id="searchPop" width="300">
<div style="margin-left: 20px;"><strong>FCRA Searches</strong></div>
<ul>

<TMPL_UNLESS DISABLE_FCRA_BANKRUPTCY>
    <TMPL_UNLESS NAME="COMBINED_BLJ">
        <li><a href="javascript:setevent('SEARCH/SEARCH_FCRA_BANKRUPTCY');submitevent();window.close();">Bankruptcy Search</a></li>
    </TMPL_UNLESS>
</TMPL_UNLESS>

<TMPL_UNLESS DISABLE_FCRA_LIEN>
    <li><a href="javascript:setevent('SEARCH/SEARCH_FCRA_LIENS');submitevent();window.close();">Liens and Judgments Search</a></li>
</TMPL_UNLESS>

<TMPL_UNLESS DISABLE_FCRA_MARRIAGE>
    <li><a href="javascript:setevent('SEARCH/SEARCH_FCRA_MARRIAGE');submitevent();window.close();">Marriages / Divorces</a></li>
</TMPL_UNLESS>

<TMPL_UNLESS DISABLE_FCRA_SEXPREDATOR>
    <li><a href="javascript:setaction('<TMPL_VAR NAME=ACTION_MISC>');setevent('SEARCH/SEARCH_FCRA_SEXPREDATOR');submitevent();window.close();">Sexual Offenders</a></li>
</TMPL_UNLESS>

<TMPL_UNLESS DISABLE_FCRA_CRIM>
    <li><a href="javascript:setaction('<TMPL_VAR NAME=ACTION_MISC>');setevent('SEARCH/SEARCH_FCRA_CRIM');submitevent();window.close();">Criminal Records</a></li>
</TMPL_UNLESS>

<TMPL_UNLESS DISABLE_FCRA_ASSESSMENT>
    <TMPL_IF NAME="HYBRID_REAL_PROPERTY">
        <li><a href="javascript:setevent('SEARCH/SEARCH_FCRA_REAL_PROPERTY_A');submitevent();window.close();">Property Assessment</a></li>
    </TMPL_IF>
</TMPL_UNLESS>

<TMPL_UNLESS DISABLE_FCRA_DEEDS>
    <TMPL_IF NAME="HYBRID_REAL_PROPERTY">
        <li><a href="javascript:setevent('SEARCH/SEARCH_FCRA_REAL_PROPERTY_D');submitevent();window.close();">Property Deeds</a></li>
    </TMPL_IF>
</TMPL_UNLESS>

<TMPL_UNLESS DISABLE_FCRA_REAL_PROPERTY>
    <li><a href="javascript:setevent('SEARCH/SEARCH_FCRA_REAL_PROPERTY');submitevent();window.close();">Real Property (Property Assessments, Deeds &amp; Mortgages)</a></li>
</TMPL_UNLESS>

<TMPL_UNLESS DISABLE_FCRA_VESSEL>
    <li><a href="javascript:<TMPL_UNLESS IRB>setaction('<TMPL_VAR NAME=ACTION_MISC>');</TMPL_UNLESS>setevent('SEARCH2/SEARCH_FCRA_VESSEL');submitevent();window.close();">Watercraft Search</a></li>
</TMPL_UNLESS>

<TMPL_UNLESS DISABLE_FCRA_AIRCRAFT>
    <li><a href="javascript:setevent('SEARCH/SEARCH_FCRA_AIRCRAFT');submitevent();window.close();">FAA Aircraft Search</a></li>
</TMPL_UNLESS>

<TMPL_UNLESS DISABLE_FCRA_HUNTING_LICENSE>
    <li><a href="javascript:setevent('SEARCH/SEARCH_FCRA_HUNTING_LICENSE');submitevent();window.close();">Hunting & Fishing License Search</a></li>
</TMPL_UNLESS>

<TMPL_UNLESS DISABLE_FCRA_CONCEALED_WEAPON>
    <li><a href="javascript:setaction('<TMPL_VAR NAME=ACTION_MISC>');setevent('SEARCH/SEARCH_FCRA_CONCEALED_WEAPON');submitevent();window.close();">Concealed Weapon Search</a></li>
</TMPL_UNLESS>

<TMPL_UNLESS DISABLE_FCRA_FAA_PILOT>
    <li><a href="javascript:setevent('SEARCH/SEARCH_FCRA_FAA_PILOT');submitevent();window.close();">FAA Pilots</a></li>
</TMPL_UNLESS>

<TMPL_UNLESS DISABLE_FCRA_FIREARMS>
    <li><a href="javascript:setevent('SEARCH/SEARCH_FCRA_FIREARMS');submitevent();window.close();">Federal Firearms Search</a></li>
</TMPL_UNLESS>

<TMPL_IF DISABLE_FCRA_BANKRUPTCY>
    <TMPL_IF DISABLE_FCRA_LIEN>
        <TMPL_IF DISABLE_FCRA_MARRIAGE>
            <TMPL_IF DISABLE_FCRA_SEXPREDATOR>
                <TMPL_IF DISABLE_FCRA_CRIM>
                    <TMPL_IF DISABLE_FCRA_ASSESSMENT>
                        <TMPL_IF DISABLE_FCRA_DEEDS>
                            <TMPL_IF DISABLE_FCRA_REAL_PROPERTY>
                                <TMPL_IF DISABLE_FCRA_VESSEL>
                                    <TMPL_IF DISABLE_FCRA_AIRCRAFT>
                                        <TMPL_IF DISABLE_FCRA_HUNTING_LICENSE>
                                            <TMPL_IF DISABLE_FCRA_CONCEALED_WEAPON>
                                                <TMPL_IF DISABLE_FCRA_FAA_PILOT>
                                                    <TMPL_IF DISABLE_FCRA_FIREARMS>
                                                        <li><b>No FCRA Searches Available</b></li>
                                                    </TMPL_IF>
                                                </TMPL_IF>
                                            </TMPL_IF>
                                        </TMPL_IF>
                                    </TMPL_IF>
                                </TMPL_IF>
                            </TMPL_IF>
                        </TMPL_IF>
                    </TMPL_IF>
                </TMPL_IF>
            </TMPL_IF>
        </TMPL_IF>
    </TMPL_IF>
</TMPL_IF>

</ul>

</td>
</tr>
</table>
<script>get_search_labels();</script>
<!-- END decision_did.tpl -->
