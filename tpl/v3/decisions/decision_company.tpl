<!-- BEGIN decision_company.tpl -->
<table border="0" cellpadding="5" cellspacing="0" width="600">
<tr>
<td valign="top" id="searchPop" width="300">

<TMPL_IF FCOL_TCOL>
    <div style="margin-left: 20px;"><strong>NON-FCRA Searches</strong></div>
</TMPL_IF>
<ul>

<TMPL_UNLESS DISABLE_BUS>
    <li><a href="javascript:setevent('SEARCH/SEARCH_BUS');submitevent();window.close();"><TMPL_IF FCOL>Find a Business<TMPL_ELSE>Business Search</TMPL_IF></a></li>
</TMPL_UNLESS>

<TMPL_UNLESS DISABLE_PAW>
    <li><a href="javascript:setevent('SEARCH/SEARCH_PAW');submitevent();window.close();"><TMPL_IF FCOL_TCOL>People at Work Locator<TMPL_ELSE>People at Work Search</TMPL_IF></a></li>
</TMPL_UNLESS>

<TMPL_UNLESS DISABLE_CORPORATION>
    <li><a href="javascript:setevent('WS_SEARCH/SEARCH_CORPORATION');submitevent();window.close();"><span id="corporations"></span></a></li>
</TMPL_UNLESS>

<TMPL_UNLESS DISABLE_UCC>
    <li><a href="javascript:setevent('SEARCH2/SEARCH_UCC');submitevent();window.close();">UCC Search</a></li>
</TMPL_UNLESS>

<TMPL_UNLESS DISABLE_D_AND_B>
    <li><a href="javascript:setevent('SEARCH/SEARCH_D_AND_B');submitevent();window.close();">D &amp; B Search</a></li>
</TMPL_UNLESS>

<TMPL_UNLESS DISABLE_DELCO>
    <li><a href="javascript:setevent('SEARCH/SEARCH_DELCO');submitevent();window.close();">Delaware Corporation Search</a></li>
</TMPL_UNLESS>

<TMPL_UNLESS DISABLE_VESSEL>
    <li><a href="javascript:<TMPL_UNLESS IRB>setaction('<TMPL_VAR NAME=ACTION_MISC>');</TMPL_UNLESS>setevent('WS_SEARCH/SEARCH_VESSEL');submitevent();window.close();">Watercraft Search</a></li>
</TMPL_UNLESS>

<TMPL_UNLESS DISABLE_PROF_LICENSE>
    <li><a href="javascript:setevent('SEARCH2/SEARCH_PROF_LICENSE');submitevent();window.close();"><span id="professional_licenses"></span></a></li>
</TMPL_UNLESS>

<TMPL_UNLESS DISABLE_BUS_CREDIT>
    <li><a href="javascript:setevent('SEARCH/SEARCH_BUS_CREDIT');submitevent();window.close();">Business Credit Search</a></li>
</TMPL_UNLESS>


<TMPL_UNLESS DO_NOT_DISPLAY_COMBINED_MVR>
    <TMPL_UNLESS DISABLE_COMBINED_MVR>
            <li><a href="javascript:setevent('SEARCH2/SEARCH_COMBINED_MVR_MV');submitevent();window.close();">Advanced Motor Vehicles</a></li>
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


<TMPL_IF DISABLE_CORPORATION>
    <TMPL_IF DISABLE_UCC>
        <TMPL_IF DISABLE_DA_BASIC>
            <TMPL_IF MVSEARCH_CAP_MET>
                <li><a class="unifont1" href="javascript:window.close();"><b>No Searches Available</b></a></li>
            </TMPL_IF>
        </TMPL_IF>
    </TMPL_IF>
</TMPL_IF>
</ul>
</td>

<td valign="top" id="searchPop" width="300">

<TMPL_IF FCOL_TCOL>
    <div style="margin-left: 20px;"><strong>NON-FCRA Searches</strong></div>
</TMPL_IF>

<ul>

<TMPL_UNLESS DISABLE_FORECLOSURE>
    <li><a href="javascript:setaction('<TMPL_VAR NAME=ACTION_MISC>');setevent('SEARCH/SEARCH_FORECLOSURE');submitevent();window.close();">Foreclosures</a></li>
</TMPL_UNLESS>

<TMPL_UNLESS DISABLE_DEA>
    <li><a href="javascript:setevent('SEARCH/SEARCH_DEA');submitevent();window.close();">DEA Controlled Substances</a></li>
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
    <li><a href="javascript:setevent('SEARCH/SEARCH_PATRIOTACT');submitevent();window.close();">USA PATRIOT Act Search</a></li>
</TMPL_UNLESS>

<TMPL_UNLESS DISABLE_WHOIS>
    <li><a href="javascript:setevent('SEARCH/SEARCH_WHOIS');submitevent();window.close();">Internet Domain Search</a></li>
</TMPL_UNLESS>

<TMPL_UNLESS RESTRICT_LNLP_CONTENT>
    <TMPL_UNLESS DISABLE_SEC>
        <TMPL_IF NAME="IRS">
            <li><a href="javascript:setevent('SEARCH/SEARCH_SEC');submitevent();window.close();">SEC Filings Search</a></li>
        </TMPL_IF>
    </TMPL_UNLESS>
</TMPL_UNLESS>

<TMPL_UNLESS DISABLE_BUS_CREDIT>
    <TMPL_IF NAME="IRS">
        <li><a href="javascript:setevent('SEARCH/SEARCH_EXPERIAN');submitevent();window.close();">Experian Business Search</a></li>
    </TMPL_IF>
</TMPL_UNLESS>

<TMPL_UNLESS RESTRICT_LNLP_CONTENT>
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


<TMPL_IF NAME="INS">
    <TMPL_UNLESS DISABLE_OSHA>
        <li><a href="javascript:setevent('SEARCH/SEARCH_OSHA');submitevent();window.close();">Osha Investigative Reports</a></li>
    </TMPL_UNLESS>
    <TMPL_UNLESS RESTRICT_LNLP_CONTENT>
        <TMPL_UNLESS DISABLE_DBGLOBAL>
            <li><a href="javascript:setevent('SEARCH/SEARCH_DBGLOBAL');submitevent();window.close();">D & B Global Market Identifiers</a></li>
        </TMPL_UNLESS>
    </TMPL_UNLESS>
    <TMPL_UNLESS DISABLE_FED_CIVIL_COURT>
        <li><a href="javascript:setevent('SEARCH/SEARCH_FED_CIVIL_COURT');submitevent();window.close();">Federal Civil Court Records Search</a></li>
    </TMPL_UNLESS>
    <TMPL_UNLESS DISABLE_FED_CRIM_COURT>
        <li><a href="javascript:setevent('SEARCH/SEARCH_FED_CRIM_COURT');submitevent();window.close();">Federal Criminal Court Records Search</a></li>
    </TMPL_UNLESS>
</TMPL_IF>

</ul>
</td>
</tr>
</table>
<script>get_search_labels();</script>
<!-- END decision_company.tpl -->
