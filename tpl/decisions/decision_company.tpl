<!-- BEGIN decision_company.tpl -->
<table border="0" cellpadding="0" cellspacing="0" width="250">
  <tr>
    <td class="style2" valign="top" NOWRAP width="300">
	<TMPL_UNLESS DISABLE_BUS>
    <a href="javascript:setevent('SEARCH/SEARCH_BUS');submitevent()"><script>write_image('bus_search_pull');</script>&nbsp;BUSINESS SEARCH</a><br>
	</TMPL_UNLESS>
	
	<TMPL_UNLESS DISABLE_PAW>
    <a href="javascript:setevent('SEARCH/SEARCH_PAW');submitevent();"><script>write_image('people_pull');</script>&nbsp;PEOPLE AT WORK SEARCH</a><br>
	</TMPL_UNLESS>

	<TMPL_UNLESS DISABLE_CORPORATION>
    <a href="javascript:setevent('WS_SEARCH/SEARCH_CORPORATION');submitevent()"><script>write_image('corp_filings_pull');</script>&nbsp;CORPORATIONS</a><br>
	</TMPL_UNLESS>
	
	<TMPL_UNLESS DISABLE_UCC>
    <a href="javascript:setevent('SEARCH2/SEARCH_UCC');submitevent();"><script>write_image('ucc_filings_pull');</script>&nbsp;UCC SEARCH</a><br>
	</TMPL_UNLESS>
	<TMPL_UNLESS DISABLE_D_AND_B>
    <a href="javascript:setevent('SEARCH/SEARCH_D_AND_B');submitevent();"><script>write_image('dnb_pull');</script>&nbsp;D &amp; B SEARCH</a><br>
	</TMPL_UNLESS>

	<TMPL_UNLESS DISABLE_DELCO>
    <a href="javascript:setevent('SEARCH/SEARCH_DELCO');submitevent();"><script>write_image('delaware_corp_pull');</script>&nbsp;DELAWARE CORPORATION SEARCH</a><br>
	</TMPL_UNLESS>

	<TMPL_UNLESS DISABLE_VESSEL>
    <a href="javascript:<TMPL_UNLESS IRB>setaction('<TMPL_VAR NAME=ACTION_MISC>');</TMPL_UNLESS>setevent('WS_SEARCH/SEARCH_VESSEL');submitevent();window.close();"><script>write_image('merch_vessels_pull');</script>&nbsp;WATERCRAFT SEARCH</a><br>
	</TMPL_UNLESS>

	<TMPL_UNLESS DISABLE_PROF_LICENSE>
    <a href="javascript:setevent('SEARCH2/SEARCH_PROF_LICENSE');submitevent();"><script>write_image('pro_licenses_pull');</script>&nbsp;PROFESSIONAL LICENSE SEARCH</a><br>
	</TMPL_UNLESS>

	<TMPL_UNLESS DISABLE_BUS_CREDIT>
        <a href="javascript:setevent('SEARCH/SEARCH_BUS_CREDIT');submitevent();window.close();"><script>write_image('bus_credit_pull');</script>&nbsp;BUSINESS CREDIT SEARCH</a><br>
	</TMPL_UNLESS>

	<TMPL_UNLESS DISABLE_MV>
    <a href="javascript:setevent('WS_SEARCH/SEARCH_DL_REG');submitevent();window.close();"><script>write_image('motor_vehicles_pull');</script>&nbsp;MOTOR VEHICLES SEARCH</a><br>
	</TMPL_UNLESS>


	<TMPL_IF DISABLE_CORPORATION>
	<TMPL_IF DISABLE_UCC>
	<TMPL_IF DISABLE_DA_BASIC>
    	<a class="unifont1" href="javascript:window.close();"><b><li>No Searches Available</b></a><br>
	</TMPL_IF>
	</TMPL_IF>
	</TMPL_IF>
    </td>
    <td class="style2" valign="top" NOWRAP width="300">

	<TMPL_UNLESS DISABLE_FORECLOSURE>
    <a href="javascript:setaction('<TMPL_VAR NAME=ACTION_MISC>');setevent('SEARCH/SEARCH_FORECLOSURE');submitevent();window.close();"><script>write_image('foreclosure_pull');</script>&nbsp;FORECLOSURES</a><br>
	</TMPL_UNLESS>

	<TMPL_UNLESS DISABLE_DEA>
	<a href="javascript:setevent('SEARCH/SEARCH_DEA');submitevent();"><script>write_image('dea_pull');</script>&nbsp;DEA CONTROLLED SUBSTANCES</a><br>
	</TMPL_UNLESS>

	<TMPL_UNLESS DISABLE_DA_BASIC>
    <a href="javascript:setevent('SEARCH/SEARCH_DA_BASIC');submitevent();"><script>write_image('da_pull');</script>&nbsp;DA SEARCH</a><br>
	</TMPL_UNLESS>

  <TMPL_IF SHOW_RT_PHONE>
    <TMPL_UNLESS DISABLE_RT_PHONE>
      <a href="javascript:setevent('SEARCH/SEARCH_RT_PHONE');submitevent();"><script>write_image('realtime_phones_pull');</script>&nbsp;REAL-TIME PHONES</a><br>
    </TMPL_UNLESS>
  </TMPL_IF>

	<TMPL_UNLESS DISABLE_BANKRUPTCY>
    <a href="javascript:setevent('SEARCH/SEARCH_BANKRUPTCY');submitevent();window.close();"><script>write_image('bankruptcy_pull');</script>&nbsp;BANKRUPTCY SEARCH</a><br>
	</TMPL_UNLESS>

	<TMPL_UNLESS DISABLE_CIVIL_COURT>
    <a href="javascript:setaction('<TMPL_VAR NAME=ACTION_MISC>');setevent('SEARCH/SEARCH_CIVIL_COURT');submitevent();window.close();"><script>write_image('civil_court_pull');</script>&nbsp;CIVIL COURTS SEARCH</a><br>
	</TMPL_UNLESS>

	<TMPL_UNLESS DISABLE_LIEN>
	  <a href="javascript:setevent('SEARCH/SEARCH_LIENS');submitevent();window.close();"><script>write_image('liens_judge_pull');</script>&nbsp;LIENS AND JUDGMENTS SEARCH</a><br>
	</TMPL_UNLESS>

	<TMPL_UNLESS DISABLE_ACCIDENT>
    <a href="javascript:setevent('SEARCH/SEARCH_ACCIDENT');submitevent();window.close();"><script>write_image('accidents_pull');</script>&nbsp;FLORIDA ACCIDENTS</a><br>
	</TMPL_UNLESS>

	<TMPL_UNLESS DISABLE_PATRIOTACT>
    <a href="javascript:setevent('SEARCH/SEARCH_PATRIOTACT');submitevent();window.close();"><script>write_image('patriot_act_pull');</script>&nbsp;PATRIOT ACT SEARCH</a><br>
	</TMPL_UNLESS>

	<TMPL_UNLESS DISABLE_WHOIS>
        <a href="javascript:setevent('SEARCH/SEARCH_WHOIS');submitevent();window.close();"><script>write_image('internet_domains_pull');</script>&nbsp;INTERNET DOMAIN SEARCH</a><br>
	</TMPL_UNLESS>

	<TMPL_UNLESS RESTRICT_LNLP_CONTENT>
	<TMPL_UNLESS DISABLE_SEC>
	 <TMPL_IF NAME="IRS">
        <a href="javascript:setevent('SEARCH/SEARCH_SEC');submitevent();window.close();"><script>write_image('sec_pull');</script>&nbsp;SEC FILINGS SEARCH</a><br>
	 </TMPL_IF>
	</TMPL_UNLESS>
	</TMPL_UNLESS>
	
	<TMPL_UNLESS DISABLE_BUS_CREDIT>
	 <TMPL_IF NAME="IRS">
        <a href="javascript:setevent('SEARCH/SEARCH_EXPERIAN');submitevent();window.close();"><script>write_image('experian_pull');</script>&nbsp;EXPERIAN BUSINESS SEARCH</a><br>
	 </TMPL_IF>
	</TMPL_UNLESS>

	<TMPL_UNLESS RESTRICT_LNLP_CONTENT>
	<TMPL_UNLESS DISABLE_TRADEMARK>
	 <TMPL_IF NAME="IRS">
        <a href="javascript:setevent('SEARCH/SEARCH_TRADEMARK');submitevent();window.close();"><script>write_image('trademark_pull');</script>&nbsp;TRADEMARKS SEARCH</a><br>
	 </TMPL_IF>
	</TMPL_UNLESS>
	</TMPL_UNLESS>
    
	<TMPL_UNLESS DISABLE_FICTIOUS>
	 <TMPL_IF NAME="IRS">
        <a href="javascript:setevent('SEARCH/SEARCH_FICTIOUS');submitevent();window.close();"><script>write_image('trademark_pull');</script>&nbsp;FICTITIOUS BUSINESS NAME SEARCH</a><br>
	 </TMPL_IF>
	</TMPL_UNLESS>

	<TMPL_IF NAME="INS">

	<TMPL_UNLESS DISABLE_OSHA>
        <a href="javascript:setevent('SEARCH/SEARCH_OSHA');submitevent();window.close();"><script>write_image('trademark_pull');</script>&nbsp;OSHA INVESTIGATIVE REPORTS</a><br>
	</TMPL_UNLESS>
	
  <TMPL_UNLESS RESTRICT_LNLP_CONTENT>
	<TMPL_UNLESS DISABLE_DBGLOBAL>
        <a href="javascript:setevent('SEARCH/SEARCH_DBGLOBAL');submitevent();window.close();"><script>write_image('trademark_pull');</script>&nbsp;D & B GLOBAL MARKET IDENTIFIERS</a><br>
	</TMPL_UNLESS>
  </TMPL_UNLESS>
	
	<TMPL_UNLESS DISABLE_FED_CIVIL_COURT>
        <a href="javascript:setevent('SEARCH/SEARCH_FED_CIVIL_COURT');submitevent();window.close();"><script>write_image('trademark_pull');</script>&nbsp;FEDERAL CIVIL COURT RECORDS SEARCH</a><br>
	</TMPL_UNLESS>
	
	<TMPL_UNLESS DISABLE_FED_CRIM_COURT>
        <a href="javascript:setevent('SEARCH/SEARCH_FED_CRIM_COURT');submitevent();window.close();"><script>write_image('trademark_pull');</script>&nbsp;FEDERAL CRIMINAL COURT RECORDS SEARCH</a><br>
	</TMPL_UNLESS>

	</TMPL_IF>

    </td>
  </tr>	  
</table>
<!-- END decision_company.tpl -->
