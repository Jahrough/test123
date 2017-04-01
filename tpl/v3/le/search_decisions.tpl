<div id="search_decisions" style="display:none;">
     <ul>
    <TMPL_IF HEA>
	<TMPL_UNLESS DISABLE_PROVIDER>
    <li id="<TMPL_VAR NAME=IDX_PROVIDER>"><a href="javascript:srchDecisionEvt('SEARCH/SEARCH_PROVIDER');">Provider</a></li>
	</TMPL_UNLESS>
    </TMPL_IF>

  <TMPL_UNLESS SSN_ONLY_SEARCH>

    <!-- TODO comment out person search for All now, but later add LE Vertical check
    <TMPL_UNLESS DISABLE_PERSON>
      <li id="<TMPL_VAR NAME=IDX_PERSON>"><a href="javascript:srchDecisionEvt('SEARCH/SEARCH');">Person</a></li>
    </TMPL_UNLESS>
    -->

    <TMPL_UNLESS DISABLE_ADV>
		<li id="<TMPL_VAR NAME=IDX_ADV>"><a href="javascript:<TMPL_UNLESS IRB>setaction('<TMPL_VAR NAME=ACTION_MISC>');</TMPL_UNLESS>setevent('SEARCH/SEARCH_ADV');submitevent();">Advanced Person</a></li>
    </TMPL_UNLESS>

  </TMPL_UNLESS>

	<TMPL_UNLESS DISABLE_PAW>
    <li id="<TMPL_VAR NAME=IDX_PAW>"><a href="javascript:srchDecisionEvt('SEARCH/SEARCH_PAW');"><TMPL_IF TCOL>People At Work Locator<TMPL_ELSE>People At Work</TMPL_IF></a></li>
	</TMPL_UNLESS>

	<TMPL_UNLESS DISABLE_BUS>
    <li id="<TMPL_VAR NAME=IDX_BUS>"><a href="javascript:srchDecisionEvt('SEARCH/SEARCH_BUS');submitevent();">Business</a></li>
	</TMPL_UNLESS>

	<TMPL_UNLESS DISABLE_CORPORATION>
    <li id="<TMPL_VAR NAME=IDX_CORPORATION>"><a href="javascript:srchDecisionEvt('WS_SEARCH/SEARCH_CORPORATION');submitevent();">Corporation Filings</a></li>
	</TMPL_UNLESS>

	<TMPL_UNLESS DISABLE_UCC>
    <li id="<TMPL_VAR NAME=IDX_UCC>"><a href="javascript:srchDecisionEvt('SEARCH2/SEARCH_UCC');">UCC</a></li>
	</TMPL_UNLESS>

  <TMPL_UNLESS RESTRICT_LNLP_CONTENT>
	<TMPL_UNLESS DISABLE_SEC>
	 <TMPL_IF NAME="IRS">
        <li id="<TMPL_VAR NAME=IDX_SEC>"><a href="javascript:srchDecisionEvt('SEARCH/SEARCH_SEC');">SEC Filings</a></li>
	 </TMPL_IF>
	</TMPL_UNLESS>

	<TMPL_UNLESS DISABLE_TRADEMARK>
	 <TMPL_IF NAME="IRS">
        <li id="<TMPL_VAR NAME=IDX_TRADEMARK>"><a href="javascript:srchDecisionEvt('SEARCH/SEARCH_TRADEMARK');">Trademarks</a></li>
	 </TMPL_IF>
	</TMPL_UNLESS>
  </TMPL_UNLESS>

	<TMPL_UNLESS DISABLE_FICTIOUS>
        <li id="<TMPL_VAR NAME=IDX_FICTIOUS>"><a href="javascript:srchDecisionEvt('SEARCH/SEARCH_FICTIOUS');">Fictitious Business Name</a></li>
	</TMPL_UNLESS>

  <TMPL_UNLESS DO_NOT_DISPLAY_COMBINED_MVR>
	<TMPL_UNLESS DISABLE_COMBINED_MVR>
    <li id="<TMPL_VAR NAME=IDX_COMBINED_MVR>"><a href="javascript:srchDecisionEvt('SEARCH2/SEARCH_COMBINED_MVR');">Advanced Motor Vehicles</a></li>
	</TMPL_UNLESS>
  </TMPL_UNLESS>

	<TMPL_UNLESS DISABLE_ASSESSMENT>
	    <TMPL_IF NAME="HYBRID_REAL_PROPERTY">
	    <li id="<TMPL_VAR NAME=IDX_ASSESSMENT>"><a href="javascript:srchDecisionEvt('SEARCH/SEARCH_REAL_PROPERTY_A');submitevent();"><TMPL_IF TCOL>Real Property Locator (Property Assessments)<TMPL_ELSE>Property Assessment</TMPL_IF></a></li>
	    <TMPL_ELSE>
	    <TMPL_UNLESS NAME="COMBINED_REAL_PROPERTY">
	    <li id="<TMPL_VAR NAME=IDX_ASSESSMENT>"><a href="javascript:srchDecisionEvt('SEARCH/SEARCH_PROP');submitevent();"><TMPL_IF TCOL>Real Property Locator (Property Assessments)<TMPL_ELSE>Property Assessment</TMPL_IF></a></li>
	    </TMPL_UNLESS>
	    </TMPL_IF>
	</TMPL_UNLESS>

	<TMPL_UNLESS DISABLE_DEEDS>
	    <TMPL_IF NAME="HYBRID_REAL_PROPERTY">
	    <li id="<TMPL_VAR NAME=IDX_DEEDS>"><a href="javascript:srchDecisionEvt('SEARCH/SEARCH_REAL_PROPERTY_D');submitevent();"><TMPL_IF TCOL>Real Property Locator (Property Deeds)<TMPL_ELSE>Property Deeds</TMPL_IF></a></li>
	    <TMPL_ELSE>
	    <TMPL_UNLESS NAME="COMBINED_REAL_PROPERTY">
	    <li id="<TMPL_VAR NAME=IDX_DEEDS>"><a href="javascript:srchDecisionEvt('SEARCH/SEARCH_PROP_DEED');submitevent();"><TMPL_IF TCOL>Real Property Locator (Property Deeds)<TMPL_ELSE>Property Deeds</TMPL_IF></a></li>
	    </TMPL_UNLESS>
	    </TMPL_IF>
	</TMPL_UNLESS>

	<TMPL_UNLESS DISABLE_REAL_PROPERTY>
    <li id="<TMPL_VAR NAME=IDX_REAL_PROPERTY>"><a href="javascript:srchDecisionEvt('SEARCH/SEARCH_REAL_PROPERTY');submitevent();"><TMPL_IF TCOL>Real Property Locator (Property Assessments, Deeds &amp; Mortgages)<TMPL_ELSE>Property (Property Assessments, Deeds &amp; Mortgages)</TMPL_IF></a></li>
	</TMPL_UNLESS>

	<TMPL_UNLESS DISABLE_VESSEL>
    <li id="<TMPL_VAR NAME=IDX_VESSEL>"><a href="javascript:<TMPL_UNLESS IRB>setaction('<TMPL_VAR NAME=ACTION_MISC>');</TMPL_UNLESS>srchDecisionEvt('WS_SEARCH/SEARCH_VESSEL');">Watercraft</a></li>
	</TMPL_UNLESS>

	<TMPL_UNLESS DISABLE_AIRCRAFT>
    <li id="<TMPL_VAR NAME=IDX_AIRCRAFT>"><a href="javascript:srchDecisionEvt('SEARCH/SEARCH_AIRCRAFT');">FAA Aircraft</a></li>
	</TMPL_UNLESS>

        <TMPL_UNLESS DENY_CJIS_PRODUCTS>
        <TMPL_IF ALLOW_ATACRAIDS_SSO>
	<TMPL_UNLESS DISABLE_ATACRAIDS_SSO>
    <li id="<TMPL_VAR NAME=IDX_ATACRAIDS>"><a href="javascript:srchDecisionEvt('SEARCH/SHOW_ATACRAIDS_DISCLAIMER');">Accurint&reg; Crime Analysis</a></li>
	</TMPL_UNLESS>
        </TMPL_IF>
        </TMPL_UNLESS>

	<TMPL_UNLESS DISABLE_DL>
    <li id="<TMPL_VAR NAME=IDX_DL>"><a href="javascript:srchDecisionEvt('SEARCH/SEARCH_LICENSE');">Driver Licenses</a></li>
	</TMPL_UNLESS>

	<TMPL_UNLESS DISABLE_PROF_LICENSE>
    <li id="<TMPL_VAR NAME=IDX_PROF_LICENSE>"><a href="javascript:srchDecisionEvt('SEARCH2/SEARCH_PROF_LICENSE');">Professional Licenses</span></a></li>
	</TMPL_UNLESS>

	<TMPL_UNLESS DISABLE_FAA_PILOT>
    <li id="<TMPL_VAR NAME=IDX_FAA_PILOT>"><a href="javascript:srchDecisionEvt('SEARCH/SEARCH_FAA_PILOT');">FAA Pilots</a></li>
	</TMPL_UNLESS>

	<TMPL_UNLESS DISABLE_HUNTING_LICENSE>
    <li id="<TMPL_VAR NAME=IDX_HUNTING_LICENSE>"><a href="javascript:srchDecisionEvt('SEARCH/SEARCH_HUNTING_LICENSE');">Hunting & Fishing License</a></li>
	</TMPL_UNLESS>

    <TMPL_UNLESS DISABLE_DEATH>
        <li id="<TMPL_VAR NAME=IDX_DEATH>"><a href="javascript:srchDecisionEvt('WS_SEARCH/SEARCH_DEATH');">Death Records</a></li>
    </TMPL_UNLESS>

    <TMPL_UNLESS DISABLE_EMAIL>
    <TMPL_UNLESS EMAILSEARCH_CAP_MET>
        <li id="<TMPL_VAR NAME=IDX_EMAIL>"><a href="javascript:srchDecisionEvt('SEARCH/SEARCH_EMAIL');">Email</a></li>
    </TMPL_UNLESS>
    </TMPL_UNLESS>

	<TMPL_IF NAME="INS">
	<TMPL_UNLESS DISABLE_FED_CIVIL_COURT>
	<li id="<TMPL_VAR NAME=IDX_FED_CIVIL_COURT>"><a href="javascript:srchDecisionEvt('SEARCH/SEARCH_FED_CIVIL_COURT');">Federal Civil Court Records</a></li>
	</TMPL_UNLESS>

	<TMPL_UNLESS DISABLE_FED_CRIM_COURT>
	<li id="<TMPL_VAR NAME=IDX_FED_CRIM_COURT>"><a href="javascript:setaction('<TMPL_VAR NAME=ACTION_MISC>');setevent('SEARCH/SEARCH_FED_CRIM_COURT');">Federal Criminal Court Records</a></li>
	</TMPL_UNLESS>

	</TMPL_IF>

	<TMPL_IF LEG>
	<TMPL_UNLESS DISABLE_PROVIDER>
	<li id="<TMPL_VAR NAME=IDX_PROVIDER>"><a href="javascript:srchDecisionEvt('SEARCH/SEARCH_PROVIDER');">Provider</a></li>
	</TMPL_UNLESS>
	<TMPL_UNLESS DISABLE_SANCTION>
	<li id="<TMPL_VAR NAME=IDX_SANCTION>"><a href="javascript:srchDecisionEvt('SEARCH/SEARCH_SANCTION');">Provider Sanction</a></li>
	</TMPL_UNLESS>
	</TMPL_IF>


  <TMPL_UNLESS DISABLE_DEA>
      <li id="<TMPL_VAR NAME=IDX_DEA>"><a href="javascript:srchDecisionEvt('SEARCH/SEARCH_DEA');">DEA Controlled Substances</a></li>
  </TMPL_UNLESS>

  <TMPL_IF SHOW_VIRTUAL_ID_SEARCH>
    <TMPL_UNLESS DISABLE_SOC_REPORT>
      <li id="<TMPL_VAR NAME=IDX_SOC_REPORT>"><a href="javascript:srchDecisionEvt('SEARCH/SEARCH_VIRTUAL_ID');">Virtual Identity</a></li>
    </TMPL_UNLESS>
  </TMPL_IF>

  <TMPL_UNLESS RESTRICT_LNLP_CONTENT>
    <TMPL_IF XBPS>
       <TMPL_UNLESS DONT_SHOW_NEWS>
         <TMPL_UNLESS DISABLE_NEWS>    
            <li id="<TMPL_VAR NAME=IDX_NEWS>"><a href="javascript:srchDecisionEvt('SEARCH/SHOW_NEWS');">People in the News</a></li>
         </TMPL_UNLESS>
         <TMPL_UNLESS DISABLE_LN_NEGATIVE_NEWS>
            <li id="<TMPL_VAR NAME=IDX_LN_NEGATIVE_NEWS>"><a href="javascript:srchDecisionEvt('SEARCH/SHOW_NEG_NEWS');">Negative News</a></li>
         </TMPL_UNLESS>
         <TMPL_UNLESS DISABLE_DO_NEWS>
            <li id="<TMPL_VAR NAME=IDX_DO_NEWS>"><a href="javascript:srchDecisionEvt('SEARCH/SHOW_DO_NEWS');">Deaths & Obituaries in the News</a></li>
         </TMPL_UNLESS>
         <TMPL_UNLESS DISABLE_ARCHIVED_NEWS>
            <li id="<TMPL_VAR NAME=IDX_ARCHIVED_NEWS>"><a href="javascript:srchDecisionEvt('SEARCH/SHOW_ARCHIVED_NEWS');">Archived News</a></li>
         </TMPL_UNLESS>
       </TMPL_UNLESS>
    </TMPL_IF>
  </TMPL_UNLESS>

    <TMPL_IF HEA>
	<TMPL_UNLESS DISABLE_SANCTION>
    <li id="<TMPL_VAR NAME=IDX_SANCTION>"><a href="javascript:srchDecisionEvt('SEARCH/SEARCH_SANCTION');">Provider Sanction</a></li>
	</TMPL_UNLESS>
    </TMPL_IF>
    <TMPL_IF INS>
	<TMPL_UNLESS DISABLE_PROVIDER>
    <li id="<TMPL_VAR NAME=IDX_PROVIDER>"><a href="javascript:srchDecisionEvt('SEARCH/SEARCH_PROVIDER');">Provider</a></li>
	</TMPL_UNLESS>
	<TMPL_UNLESS DISABLE_SANCTION>
    <li id="<TMPL_VAR NAME=IDX_SANCTION>"><a href="javascript:srchDecisionEvt('SEARCH/SEARCH_SANCTION');">Provider Sanction</a></li>
	</TMPL_UNLESS>
    </TMPL_IF>

  <TMPL_UNLESS DISABLE_CONCEALED_WEAPON>
    <li id="<TMPL_VAR NAME=IDX_CONCEALED_WEAPON>"><a href="javascript:srchDecisionEvt('SEARCH/SEARCH_CONCEALED_WEAPON');">Concealed Weapon</a></li>
	</TMPL_UNLESS>

	<TMPL_UNLESS DISABLE_VOTER_REGISTRATION>
    <li id="<TMPL_VAR NAME=IDX_VOTER_REGISTRATION>"><a href="javascript:srchDecisionEvt('WS_SEARCH/SEARCH_VOTER_REGISTRATION');"><TMPL_IF TCOL>Voter Registration Locator<TMPL_ELSE>Voter Registration</TMPL_IF></a></li>
	</TMPL_UNLESS>

	<TMPL_UNLESS DISABLE_FIREARMS>
	<li id="<TMPL_VAR NAME=IDX_FIREARMS>"><a href="javascript:srchDecisionEvt('SEARCH/SEARCH_FIREARMS');">Federal Firearms</a></li>
	</TMPL_UNLESS>
  
  <TMPL_IF SHOW_RT_PHONE>
    <TMPL_UNLESS DISABLE_RT_PHONE>
            <li id="<TMPL_VAR NAME=IDX_RT_PHONE>"><a href="javascript:srchDecisionEvt('SEARCH/SEARCH_RT_PHONE');">Real-Time Phones</a></li>
    </TMPL_UNLESS>
  </TMPL_IF>

	<TMPL_UNLESS DISABLE_BANKRUPTCY>
	    <TMPL_IF NAME="HYBRID_BLJ">
	    <li id="<TMPL_VAR NAME=IDX_BANKRUPTCY>"><a href="javascript:srchDecisionEvt('SEARCH/SEARCH_BLJB');">Bankruptcy</a></li>
	    <TMPL_ELSE>
	    <TMPL_UNLESS NAME="COMBINED_BLJ">
	    <li id="<TMPL_VAR NAME=IDX_BANKRUPTCY>"><a href="javascript:srchDecisionEvt('SEARCH/SEARCH_BANKRUPTCY');">Bankruptcy</a></li>
	    </TMPL_UNLESS>
	    </TMPL_IF>
	</TMPL_UNLESS>

    <TMPL_UNLESS DISABLE_LIEN>
        <TMPL_IF NAME="HYBRID_BLJ">
        <li id="<TMPL_VAR NAME=IDX_LIEN>"><a href="javascript:srchDecisionEvt('SEARCH/SEARCH_BLJL');">Liens and Judgments</a></li>
        <TMPL_ELSE>
        <TMPL_UNLESS NAME="COMBINED_BLJ">
        <li id="<TMPL_VAR NAME=IDX_LIEN>"><a href="javascript:srchDecisionEvt('SEARCH/SEARCH_LIENS');">Liens and Judgments</a></li>
        </TMPL_UNLESS>
        </TMPL_IF>
    </TMPL_UNLESS>
    
    <TMPL_UNLESS DISABLE_BLJ>
        <li id="<TMPL_VAR NAME=IDX_BLJ>"><a href="javascript:srchDecisionEvt('SEARCH/SEARCH_BLJ');">Bankruptcies, Liens and Judgments</a></li>
    </TMPL_UNLESS>
    
	<TMPL_UNLESS DISABLE_CRIM>
    <li id="<TMPL_VAR NAME=IDX_CRIM>"><a href="javascript:srchDecisionEvt('SEARCH/SEARCH_CRIM');">Criminal Records</a></li>
	</TMPL_UNLESS>

        <TMPL_IF SHOW_JAIL_BOOKING_SEARCH>
              <TMPL_UNLESS DISABLE_JAILBOOKING>
                   <li id="<TMPL_VAR NAME=IDX_JAILBOOKING>"><a href="javascript:setaction('<TMPL_VAR NAME=ACTION_MISC>');setevent('SEARCH/SEARCH_JAILBOOKING');">Jail Bookings</a></li>
              </TMPL_UNLESS>
        </TMPL_IF>

	<TMPL_UNLESS DISABLE_CIVIL_COURT>
    <li id="<TMPL_VAR NAME=IDX_CIVIL_COURT>"><a href="javascript:srchDecisionEvt('SEARCH/SEARCH_CIVIL_COURT');">Civil Courts</a></li>
	</TMPL_UNLESS>

	<TMPL_UNLESS DISABLE_LIEN>
	    <TMPL_IF NAME="HYBRID_BLJ">
	    <li id="<TMPL_VAR NAME=IDX_LIEN>"><a href="javascript:srchDecisionEvt('SEARCH/SEARCH_BLJL');">Liens and Judgments</a></li>
	    <TMPL_ELSE>
	    <TMPL_UNLESS NAME="COMBINED_BLJ">
	    <li id="<TMPL_VAR NAME=IDX_LIEN>"><a href="javascript:srchDecisionEvt('SEARCH/SEARCH_LIENS');">Liens and Judgments</a></li>
	    </TMPL_UNLESS>
	    </TMPL_IF>
	</TMPL_UNLESS>

        <TMPL_UNLESS DISABLE_BLJ>
	    <li id="<TMPL_VAR NAME=IDX_BLJ>"><a href="javascript:srchDecisionEvt('SEARCH/SEARCH_BLJ');">Bankruptcies, Liens and Judgments</a></li>
	</TMPL_UNLESS>

	<TMPL_UNLESS DISABLE_ACCIDENT>
		<TMPL_IF NAME="NAT_ACC_ENABLE">
			<li id="<TMPL_VAR NAME=IDX_ACCIDENT>"><a href="javascript:srchDecisionEvt('SEARCH/SHOW_ACCIDENT');">National Motor Vehicle Accidents</a></li>
		<TMPL_ELSE>
	    	<li id="<TMPL_VAR NAME=IDX_ACCIDENT>"><a href="javascript:srchDecisionEvt('SEARCH/SEARCH_ACCIDENT');">Florida Accidents</a></li>
	   	</TMPL_IF>
	</TMPL_UNLESS>

	<TMPL_UNLESS DISABLE_PATRIOTACT>
    <li id="<TMPL_VAR NAME=IDX_PATRIOTACT>"><a href="javascript:do_patriotact_search_by_name();">USA PATRIOT Act</a></li>
	</TMPL_UNLESS>

	<TMPL_UNLESS DISABLE_SEXPREDATOR>
    <li id="<TMPL_VAR NAME=IDX_SEXPREDATOR>"><a href="javascript:srchDecisionEvt('SEARCH/SEARCH_SEXPREDATOR');">Sexual Offenders</a></li>
	</TMPL_UNLESS>

	<TMPL_UNLESS DISABLE_FORECLOSURE>
    <li id="<TMPL_VAR NAME=IDX_FORECLOSURE>"><a href="javascript:srchDecisionEvt('SEARCH/SEARCH_FORECLOSURE');">Foreclosures</a></li>
	</TMPL_UNLESS>

	<TMPL_UNLESS DISABLE_OFFICIAL_RECORDS>
    <li id="<TMPL_VAR NAME=IDX_OFFICIAL_RECORDS>"><a href="javascript:srchDecisionEvt('SEARCH/SEARCH_OFFICIAL_RECORDS');">Official Records</a></li>
	</TMPL_UNLESS>

	<TMPL_UNLESS DISABLE_MARRIAGE>
    <li id="<TMPL_VAR NAME=IDX_MARRIAGE>"><a href="javascript:srchDecisionEvt('SEARCH/SEARCH_MARRIAGE');">Marriages / Divorces</a></li>
	</TMPL_UNLESS>

	<TMPL_UNLESS DISABLE_D_AND_B>
            <li id="<TMPL_VAR NAME=IDX_D_AND_B>">><a href="javascript:srchDecisionEvt('SEARCH/SEARCH_D_AND_B');">D &amp; B</a></li>
	</TMPL_UNLESS>

	<TMPL_UNLESS DISABLE_BUS_CREDIT>
            <li id="<TMPL_VAR NAME=IDX_BUS_CREDIT>"><a href="javascript:srchDecisionEvt('SEARCH/SEARCH_BUS_CREDIT');">Business Credit</a></li>
	</TMPL_UNLESS>
    
    <TMPL_UNLESS DISABLE_DELCO>
        <li id="<TMPL_VAR NAME=IDX_DELCO>"><a href="javascript:srchDecisionEvt('SEARCH/SEARCH_DELCO');">Delaware Corporation</a></li>
    </TMPL_UNLESS>
    
    <TMPL_UNLESS DISABLE_BLJ>
        <li id="<TMPL_VAR NAME=IDX_BLJ>"><a href="javascript:srchDecisionEvt('SEARCH/SEARCH_BLJ');">Bankruptcies, Liens and Judgments</a></li>
    </TMPL_UNLESS>
    
    <TMPL_UNLESS DISABLE_WHOIS>
        <li id="<TMPL_VAR NAME=IDX_WHOIS>"><a href="javascript:srchDecisionEvt('SEARCH/SEARCH_WHOIS');">Internet Domain</a></li>
    </TMPL_UNLESS>  
    
    <TMPL_UNLESS DISABLE_BUS>
        <li id="<TMPL_VAR NAME=IDX_BUS>"><a href="javascript:srchDecisionEvt('SEARCH/SEARCH_BUS');"><TMPL_IF FCOL>Find a Business<TMPL_ELSE>Business</TMPL_IF></a></li>
    </TMPL_UNLESS>
    
    <TMPL_UNLESS DISABLE_AVM>
        <li id="<TMPL_VAR NAME=IDX_AVM>"><a href="javascript:srchDecisionEvt('SEARCH/SHOW_AVM');">Automated Valuation Models</a></li>
    </TMPL_UNLESS>
   
	<TMPL_UNLESS HIDE_WORKPLACE>
      <TMPL_UNLESS DISABLE_WORKPLACE>
      <TMPL_UNLESS WORKPLACE_SEARCH_CAP_MET>
      <li id="<TMPL_VAR NAME=IDX_WORKPLACE>"><a href="javascript:srchDecisionEvt('SEARCH/SEARCH_WORKPLACE');">Workplace Locator</a></li>
      </TMPL_UNLESS>
      </TMPL_UNLESS>
	</TMPL_UNLESS>

    <TMPL_UNLESS HIDE_PASSPORT_SEARCH>
    <TMPL_UNLESS DISABLE_PASSPORT_SEARCH>
        <li id="<TMPL_VAR NAME=IDX_PASSPORT_SEARCH>"><a href="javascript:srchDecisionEvt('SEARCH/SHOW_PASSPORT_VALIDATION');">Passport Validation</a></li>
    </TMPL_UNLESS>
    </TMPL_UNLESS>

    <TMPL_UNLESS DISABLE_PERSON_DTR>
      <TMPL_UNLESS DISABLE_DIRECT_TO_REPORT>
        <li id="IDX_DTR"><a href="javascript:srchDecisionEvt('SEARCH/SHOW_PERSON_DTR');">Direct-To-Report</a></li>
      </TMPL_UNLESS>
    </TMPL_UNLESS>
    
    <TMPL_UNLESS DISABLE_CANADIAN_PHONES>
        <li id="<TMPL_VAR NAME=IDX_CANADIAN_PHONES>"><a href="javascript:setaction('<TMPL_VAR NAME=ACTION_MISC>');javascript:srchDecisionEvt('SEARCH2/SEARCH_CANADIAN_PHONES');">Canadian Phones</a></li>
    </TMPL_UNLESS>  

    <TMPL_UNLESS DISABLE_WHOIS>
        <li id="IDX_999">
            <a href="javascript:general_win('http://www.google.com','GotoWindow','','',1,1,1,1,1,1);void(0);">Go to Website</a>
        </li>
    </TMPL_UNLESS>  
</ul>
</div>

<TMPL_IF ADV_SEARCH>
<div id="sample_reports" style="display:none;">
    <div class="researchDisplay showMore">
        <a href="javascript:void(0);" onclick="general_win('<TMPL_VAR NAME=HTMLPATH>/v3/le_sample_reports.html','HelpWindow',790,600,1,1,1,1,1,0);void(0);">See report type examples</a>
    </div>
</div>
</TMPL_IF>
<TMPL_IF SANCTION_SEARCH>
<div id="sample_reports" style="display:none;">
    <div class="researchDisplay showMore">
        <a href="javascript:void(0);" onclick="general_win('<TMPL_VAR NAME=HTMLPATH>/v3/le_hc_pack_sample_reports.html','HelpWindow',790,600,1,1,1,1,1,0);void(0);">See report type examples</a>
    </div>
</div>
</TMPL_IF>
<TMPL_IF CLIA_SEARCH>
<div id="sample_reports" style="display:none;">
    <div class="researchDisplay showMore">
        <a href="javascript:void(0);" onclick="general_win('<TMPL_VAR NAME=HTMLPATH>/v3/le_hc_pack_sample_reports.html','HelpWindow',790,600,1,1,1,1,1,0);void(0);">See report type examples</a>
    </div>
</div>
</TMPL_IF>
<TMPL_IF NCPDP_SEARCH>
<div id="sample_reports" style="display:none;">
    <div class="researchDisplay showMore">
        <a href="javascript:void(0);" onclick="general_win('<TMPL_VAR NAME=HTMLPATH>/v3/le_hc_pack_sample_reports.html','HelpWindow',790,600,1,1,1,1,1,0);void(0);">See report type examples</a>
    </div>
</div>
</TMPL_IF>
<TMPL_IF NPI_SEARCH>
<div id="sample_reports" style="display:none;">
    <div class="researchDisplay showMore">
        <a href="javascript:void(0);" onclick="general_win('<TMPL_VAR NAME=HTMLPATH>/v3/le_hc_pack_sample_reports.html','HelpWindow',790,600,1,1,1,1,1,0);void(0);">See report type examples</a>
    </div>
</div>
</TMPL_IF>
<TMPL_IF OABMS_SEARCH>
<div id="sample_reports" style="display:none;">
    <div class="researchDisplay showMore">
        <a href="javascript:void(0);" onclick="general_win('<TMPL_VAR NAME=HTMLPATH>/v3/le_hc_pack_sample_reports.html','HelpWindow',790,600,1,1,1,1,1,0);void(0);">See report type examples</a>
    </div>
</div>
</TMPL_IF>
<TMPL_IF DEA_SEARCH>
<div id="sample_reports" style="display:none;">
    <div class="researchDisplay showMore">
        <a href="javascript:void(0);" onclick="general_win('<TMPL_VAR NAME=HTMLPATH>/v3/le_sample_reports.html','HelpWindow',790,600,1,1,1,1,1,0);void(0);">See report type examples</a>
    </div>
</div>
</TMPL_IF>
<TMPL_IF PROVIDER_SEARCH>
<div id="sample_reports" style="display:none;">
    <div class="researchDisplay showMore">
        <a href="javascript:void(0);" onclick="general_win('<TMPL_VAR NAME=HTMLPATH>/v3/le_hc_pack_sample_reports.html','HelpWindow',790,600,1,1,1,1,1,0);void(0);">See report type examples</a>
    </div>
</div>
</TMPL_IF>
