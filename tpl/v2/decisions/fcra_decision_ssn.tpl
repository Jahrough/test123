<!-- BEGIN decision_ssn.tpl -->
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
        <li><a href="javascript:setevent('SEARCH2/SEARCH_PERSON_PLUS_SUBJECT');submitevent();">Person Search Plus</a></li>
        <TMPL_ELSE>
        <TMPL_IF TCOL>
        <li><a href="javascript:setevent('SEARCH2/SEARCH_PERSON_PLUS_SUBJECT');submitevent();">Person Search Plus</a></li>
        </TMPL_IF>
        </TMPL_IF>
    </TMPL_UNLESS>
    </TMPL_UNLESS>

    <TMPL_UNLESS ENABLE_MYACC_V3>
        <TMPL_UNLESS DISABLE_PERSON>
              <li><a href="javascript:setevent('SEARCH/SEARCH');submitevent();window.close();"><TMPL_IF FCOL>Find a Person<TMPL_ELSE>Person Search</TMPL_IF></a></li>
        </TMPL_UNLESS>
	</TMPL_UNLESS>

<TMPL_UNLESS DELETE_CONTACT_PLUS>
  <TMPL_UNLESS DISABLE_CONTACT_PLUS>
  <TMPL_UNLESS CONTACTPLUS_CAP_MET>
    <li><a href="javascript:setevent('SEARCH2/SHOW_CONTACT_PLUS');submitevent();">Contact Plus Search</a></li>
  </TMPL_UNLESS>
  </TMPL_UNLESS>
</TMPL_UNLESS>

	<TMPL_UNLESS DISABLE_ADV>
	  <li><a href="javascript:<TMPL_UNLESS IRB>setaction('<TMPL_VAR NAME=ACTION_MISC>');</TMPL_UNLESS>setevent('SEARCH/SEARCH_ADV');submitevent();window.close();"><span id="advanced_person"></span></a></li>
	</TMPL_UNLESS>

	<TMPL_UNLESS DISABLE_PAW>
		<li><a href="javascript:setevent('SEARCH/SEARCH_PAW');submitevent();window.close();"><TMPL_IF FCOL_TCOL>People At Work Locator<TMPL_ELSE>People At Work Search</TMPL_IF></a></li>
	</TMPL_UNLESS>

	<TMPL_UNLESS HIDE_WORKPLACE>
      <TMPL_UNLESS DISABLE_WORKPLACE>
      <TMPL_UNLESS WORKPLACE_SEARCH_CAP_MET>
      <li><a href="javascript:setevent('SEARCH/SEARCH_WORKPLACE');submitevent();">Workplace Locator</a></li>
      </TMPL_UNLESS>
      </TMPL_UNLESS>
	</TMPL_UNLESS>

	<TMPL_UNLESS DISABLE_BUS>
    <li><a href="javascript:setevent('SEARCH/SEARCH_BUS');submitevent();window.close();"><TMPL_IF FCOL>Find a Business<TMPL_ELSE>Business Search</TMPL_IF></a></li>
	</TMPL_UNLESS>

  <TMPL_UNLESS HIDE_MV>
	<TMPL_UNLESS DISABLE_MV>
	<TMPL_UNLESS MVSEARCH_CAP_MET>
    <li><a href="javascript:setevent('WS_SEARCH/SEARCH_DL_REG');submitevent();window.close();">Motor Vehicles</a></li>
	</TMPL_UNLESS>
	</TMPL_UNLESS>
  </TMPL_UNLESS>

	<TMPL_UNLESS DISABLE_DL>
    <li><a href="javascript:setevent('SEARCH/SEARCH_LICENSE');submitevent();window.close();"><span id="driver_licenses"></span></a></li>
	</TMPL_UNLESS>

	<TMPL_UNLESS DISABLE_PROF_LICENSE>
    <li><a href="javascript:setevent('SEARCH2/SEARCH_PROF_LICENSE');submitevent();"><span id="professional_licenses"></span></a></li>
	</TMPL_UNLESS>

	<TMPL_UNLESS DISABLE_FORECLOSURE>
    <li><a href="javascript:setaction('<TMPL_VAR NAME=ACTION_MISC>');setevent('SEARCH/SEARCH_FORECLOSURE');submitevent();window.close();">Foreclosures</a></li>
	</TMPL_UNLESS>

       <TMPL_UNLESS GOV>
       <TMPL_UNLESS LE>
        <TMPL_UNLESS DISABLE_EMAIL>
        <TMPL_UNLESS EMAILSEARCH_CAP_MET>
    <li><a href="javascript:setevent('SEARCH/SEARCH_EMAIL');submitevent();window.close();">Email Search</a></li>
        </TMPL_UNLESS>
        </TMPL_UNLESS>
       </TMPL_UNLESS>
       </TMPL_UNLESS>
    
    <TMPL_IF FCOL_TCOL>
      <TMPL_UNLESS HIDE_RT_MVR>
      <TMPL_UNLESS DISABLE_RT_MVR>
      <TMPL_UNLESS MVSEARCH_CAP_MET>
        <li><a href="javascript:setevent('SEARCH/SEARCH_RT_MVR');submitevent();window.close();"><span id="rt_mvr"></span></a></li>
      </TMPL_UNLESS>
      </TMPL_UNLESS>
      </TMPL_UNLESS>
    </TMPL_IF>

  <TMPL_IF SHOW_RT_PHONE>
    <TMPL_UNLESS DISABLE_RT_PHONE>
            <li><a href="javascript:setevent('SEARCH/SEARCH_RT_PHONE');submitevent();window.close();">Real-Time Phones</a></li>
    </TMPL_UNLESS>
  </TMPL_IF>

  <TMPL_IF SHOW_VIRTUAL_ID_SEARCH>
    <TMPL_UNLESS DISABLE_SOC_REPORT>
      <li><a href="javascript:setevent('SEARCH/SEARCH_VIRTUAL_ID');submitevent();">Virtual Identity Search</a></li>
    </TMPL_UNLESS>
  </TMPL_IF>

	<TMPL_UNLESS DISABLE_VOTER_REGISTRATION>
    <li><a href="javascript:setevent('WS_SEARCH/SEARCH_VOTER_REGISTRATION');submitevent();window.close();"><TMPL_IF FCOL_TCOL>Voter Registration Locator<TMPL_ELSE>Voter Registration Search</TMPL_IF></a></li>
	</TMPL_UNLESS>

	<TMPL_UNLESS DISABLE_DEA>
	<li><a href="javascript:setevent('SEARCH/SEARCH_DEA');submitevent();window.close();">Dea Controlled Substances</a></li>
	</TMPL_UNLESS>

	<TMPL_UNLESS DISABLE_DEATH>
    <li><a href="javascript:setevent('WS_SEARCH/SEARCH_DEATH');submitevent();window.close();">Death Records Search</a></li>
	</TMPL_UNLESS>

	<TMPL_UNLESS DISABLE_UCC>
	    <li><a href="javascript:setevent('SEARCH2/SEARCH_UCC');submitevent();">UCC Filings Search</a></li>
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

    <TMPL_UNLESS PROPERTYSEARCH_CAP_MET>
	<TMPL_UNLESS DISABLE_FCRA_ASSESSMENT>
	    <TMPL_IF NAME="HYBRID_REAL_PROPERTY">
	    <li><a href="javascript:setevent('SEARCH/SEARCH_FCRA_REAL_PROPERTY_A');submitevent()">Property Assessment</a></li>
	    </TMPL_IF>
	</TMPL_UNLESS>

	<TMPL_UNLESS DISABLE_FCRA_DEEDS>
	    <TMPL_IF NAME="HYBRID_REAL_PROPERTY">
	    <li><a href="javascript:setevent('SEARCH/SEARCH_FCRA_REAL_PROPERTY_D');submitevent()">Property Deeds</a></li>
	    </TMPL_IF>
	</TMPL_UNLESS>

	<TMPL_UNLESS DISABLE_FCRA_REAL_PROPERTY>
    <li><a href="javascript:setevent('SEARCH/SEARCH_FCRA_REAL_PROPERTY');submitevent()">Real Property (Property Assessments, Deeds &amp; Mortgages)</a></li>
	</TMPL_UNLESS>
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
            <li><a href="javascript:setevent('SEARCH/SEARCH_FCRA_FAA_PILOT');submitevent();">FAA Pilots</a></li>
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
<!-- END decision_ssn.tpl -->
