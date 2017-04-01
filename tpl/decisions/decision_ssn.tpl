<!-- BEGIN decision_ssn.tpl -->
<table border="0" cellpadding="5" cellspacing="0" width="600">
  <tr>
    <td class="style2" valign="top" NOWRAP width="300">

    <TMPL_UNLESS IRS>
      <TMPL_UNLESS DISABLE_PERSON>
        <a href="javascript:setevent('SEARCH/SEARCH');submitevent();"><script>write_image('person_pull');</script>&nbsp;PERSON SEARCH</a><br>
      </TMPL_UNLESS>
    </TMPL_UNLESS>

    <TMPL_UNLESS DISABLE_ADV>
      <TMPL_IF NAME="COL">
        <a href="javascript:<TMPL_UNLESS IRB>setaction('<TMPL_VAR NAME=ACTION_MISC>');</TMPL_UNLESS>setevent('SEARCH/SEARCH_ADV');submitevent();"><script>write_image('adv_person');</script>&nbsp;DEEP SKIP SEARCH</a><br>
      <TMPL_ELSE>
        <a href="javascript:<TMPL_UNLESS IRB>setaction('<TMPL_VAR NAME=ACTION_MISC>');</TMPL_UNLESS>setevent('SEARCH/SEARCH_ADV');submitevent();"><script>write_image('adv_person');</script>&nbsp;ADVANCED PEOPLE SEARCH</a><br>
      </TMPL_IF>
    </TMPL_UNLESS>

    <TMPL_IF IRS>
      <TMPL_UNLESS DISABLE_PERSON>
        <a href="javascript:setevent('SEARCH/SEARCH');submitevent();"><script>write_image('person_pull');</script>&nbsp;PERSON SEARCH</a><br>
      </TMPL_UNLESS>
    </TMPL_IF>

	<TMPL_UNLESS DISABLE_PAW>
    <a href="javascript:setevent('SEARCH/SEARCH_PAW');submitevent();"><script>write_image('people_pull');</script>&nbsp;PEOPLE AT WORK SEARCH</a><br>
	</TMPL_UNLESS>

	<TMPL_UNLESS DISABLE_BUS>
    <a href="javascript:setevent('SEARCH/SEARCH_BUS');submitevent()"><script>write_image('bus_search_pull');</script>&nbsp;BUSINESS SEARCH</a><br>
	</TMPL_UNLESS>

	<TMPL_UNLESS DISABLE_MV>
    <a href="javascript:setevent('WS_SEARCH/SEARCH_DL_REG');submitevent();window.close();"><script>write_image('motor_vehicles_pull');</script>&nbsp;MOTOR VEHICLES SEARCH</a><br>
	</TMPL_UNLESS>

	<TMPL_UNLESS DISABLE_DL>
    <a href="javascript:setevent('SEARCH/SEARCH_LICENSE');submitevent();window.close();"><script>write_image('drivers_licenses_pull');</script>&nbsp;DRIVER LICENSES SEARCH</a><br>
	</TMPL_UNLESS>

	<TMPL_UNLESS DISABLE_PROF_LICENSE>
    <a href="javascript:setevent('SEARCH2/SEARCH_PROF_LICENSE');submitevent();"><script>write_image('pro_licenses_pull');</script>&nbsp;PROFESSIONAL LICENSE SEARCH</a><br>
	</TMPL_UNLESS>

	<TMPL_UNLESS DISABLE_HUNTING_LICENSE>
    <a href="javascript:setevent('SEARCH/SEARCH_HUNTING_LICENSE');submitevent();window.close();"><script>write_image('hunting_fishing_pull');</script>&nbsp;HUNTING & FISHING LICENSE SEARCH</a><br>
	</TMPL_UNLESS>

	<TMPL_UNLESS DISABLE_FORECLOSURE>
    <a href="javascript:setaction('<TMPL_VAR NAME=ACTION_MISC>');setevent('SEARCH/SEARCH_FORECLOSURE');submitevent();window.close();"><script>write_image('foreclosure_pull');</script>&nbsp;FORECLOSURES</a><br>
	</TMPL_UNLESS>

       <TMPL_UNLESS GOV>
       <TMPL_UNLESS LE>
        <TMPL_UNLESS DISABLE_EMAIL>
    <a href="javascript:setevent('SEARCH/SEARCH_EMAIL');submitevent();window.close();"><script>write_image('email_pull');</script>&nbsp;EMAIL SEARCH</a><br>
        </TMPL_UNLESS>
       </TMPL_UNLESS>
       </TMPL_UNLESS>

    </td>
    <td class="style2" valign="top" NOWRAP width="300">

	<TMPL_UNLESS DISABLE_CONCEALED_WEAPON>
    <a href="javascript:setaction('<TMPL_VAR NAME=ACTION_MISC>');setevent('SEARCH/SEARCH_CONCEALED_WEAPON');submitevent();window.close();"><script>write_image('concealed_weapons_pull');</script>&nbsp;CONCEALED WEAPON SEARCH</a><br>
	</TMPL_UNLESS>

	<TMPL_UNLESS DISABLE_VOTER_REGISTRATION>
    <a href="javascript:setevent('WS_SEARCH/SEARCH_VOTER_REGISTRATION');submitevent();window.close();"><script>write_image('voter_reg_pull');</script>&nbsp;VOTER REGISTRATION SEARCH</a><br>
	</TMPL_UNLESS>

	<TMPL_UNLESS DISABLE_FIREARMS>
	<a href="javascript:setevent('SEARCH/SEARCH_FIREARMS');submitevent();"><script>write_image('federal_firearms_pull');</script>&nbsp;FEDERAL FIREARMS SEARCH</a><br>
	</TMPL_UNLESS>

	<TMPL_UNLESS DISABLE_DEA>
	<a href="javascript:setevent('SEARCH/SEARCH_DEA');submitevent();"><script>write_image('dea_pull');</script>&nbsp;DEA CONTROLLED SUBSTANCES</a><br>
	</TMPL_UNLESS>

	<TMPL_UNLESS DISABLE_BANKRUPTCY>
    <a href="javascript:setevent('SEARCH/SEARCH_BANKRUPTCY');submitevent();window.close();"><script>write_image('bankruptcy_pull');</script>&nbsp;BANKRUPTCY SEARCH</a><br>
	</TMPL_UNLESS>

	<TMPL_UNLESS DISABLE_LIEN>
	  <a href="javascript:setevent('SEARCH/SEARCH_LIENS');submitevent();window.close();"><script>write_image('liens_judge_pull');</script>&nbsp;LIENS AND JUDGMENTS SEARCH</a><br>
	</TMPL_UNLESS>

	<TMPL_UNLESS DISABLE_CRIM>
    <a href="javascript:setaction('<TMPL_VAR NAME=ACTION_MISC>');setevent('SEARCH/SEARCH_CRIM');submitevent();window.close();"><script>write_image('criminal_conv_pull');</script>&nbsp;CRIMINAL RECORDS</a><br>
	</TMPL_UNLESS>

	<TMPL_UNLESS DISABLE_SEXPREDATOR>
    <a href="javascript:setaction('<TMPL_VAR NAME=ACTION_MISC>');setevent('SEARCH/SEARCH_SEXPREDATOR');submitevent();window.close();"><script>write_image('sexual_offenders_pull');</script>&nbsp;SEXUAL OFFENDERS</a><br>
	</TMPL_UNLESS>

	<TMPL_UNLESS DISABLE_DEATH>
    <a href="javascript:setevent('WS_SEARCH/SEARCH_DEATH');submitevent();window.close();"><script>write_image('deathcert_pull');</script>&nbsp;DEATH RECORDS SEARCH</a><br>
	</TMPL_UNLESS>

	<TMPL_UNLESS DISABLE_UCC>
    <a href="javascript:setevent('SEARCH2/SEARCH_UCC');submitevent();"><script>write_image('ucc_filings_pull');</script>&nbsp;UCC FILINGS SEARCH</a><br>
	</TMPL_UNLESS>

  <TMPL_IF SHOW_RT_PHONE>
    <TMPL_UNLESS DISABLE_RT_PHONE>
      <a href="javascript:setevent('SEARCH/SEARCH_RT_PHONE');submitevent();"><script>write_image('realtime_phones_pull');</script>&nbsp;REAL-TIME PHONES</a><br>
    </TMPL_UNLESS>
  </TMPL_IF>

    </td>
  </tr>	  
</table>
<!-- END decision_ssn.tpl -->
