<!-- Begin short_comprehensive_report_body.tpl -->

<table border="0" cellpadding="0" cellspacing="0" width="640">
<TMPL_IF NAME="PREFERENCES_ERROR_MESSAGE">
  <tr>
    <td align="center" colspan="3"><TMPL_VAR NAME="PREFERENCES_ERROR_MESSAGE"></td>
  </tr>
</TMPL_IF>
  <tr height="10">
    <td height="10" class="unifont2pt">&nbsp;</td>
  </tr>
  <tr>
    <td width="640"valign="top">
    <table border="0" cellpadding="2" cellspacing="0" width="100%" class="myaccountborder">
      <tr>
        <td valign="top">
	<table border="0" cellpadding="2" cellspacing="0" width="100%" class="reportselectbody">
	  <tr>
	    <td width="47%" valign="top">
	    <table border="0" cellpadding="0" cellspacing="0" width="100%">
	    <TMPL_IF LE>
	      <tr>
	        <td width="1%"><input type="checkbox" name="report-map" id="report-map" value="10" <TMPL_VAR NAME=report-map>></td>
	        <td class="smallfont1"><label for="report-map">Comprehensive Report Summary</label>&nbsp;</td>
	        <td align="right" class="smallfont1">&nbsp;</td>
	      </tr>
	      <tr>
	        <td width="1%"><input type="checkbox" name="address-map" id="address-map" value="10" <TMPL_VAR NAME=address-map>></td>
	        <td class="smallfont1"><label for="address-map">Address Summary</label>&nbsp;</td>
	        <td align="right" class="smallfont1">&nbsp;</td>
	      </tr>
          <TMPL_IF SHOW_EDUCATION_DETAILS>
            <tr>
              <td width="1%"><input type="checkbox" name="education-map" id="education-map" value="10" <TMPL_VAR NAME=education-map>></td>
              <td align="left" class="smallfont1"><label for="education-map">Possible Education</label>&nbsp;</td>
              <td align="right" class="smallfont1">&nbsp;</td>
            </tr>
          </TMPL_IF>
              <TMPL_UNLESS DELETE_RELATIVES>
	      <tr>
	        <td width="1%"><input type="checkbox" name="relative-map" value="10" <TMPL_VAR NAME=relative-map>></td>
	        <td class="smallfont1"><label for="relative-map">Relative Summary</label>&nbsp;</td>
	        <td align="right" class="smallfont1">&nbsp;</td>
	      </tr>
              </TMPL_UNLESS>
	      <tr>
	        <td width="1%"><input type="checkbox" name="imposters" id="imposters" value="2" <TMPL_VAR NAME=imposters>></td>
	        <td class="smallfont1"><label for="imposters">Others Using Same SSN</label>&nbsp;</td>
	        <td align="right" class="smallfont1">&nbsp;</td>
	      </tr>
	      <tr>
	        <td width="1%"><input type="checkbox" name="verify-ssns" id="verify-ssns" value="5" <TMPL_VAR NAME=verify-ssns>></td>
	        <td class="smallfont1"><label for="verify-ssns">Date and Location where SSN Issued</label>&nbsp;</td>
	        <td align="right" class="smallfont1">&nbsp;</td>
	      </tr>
              <TMPL_UNLESS DELETE_NEIGHBORHOOD>
	      <tr>
	        <td width="1%"><input type="checkbox" name="census-data" id="census-data" value="5" <TMPL_VAR NAME=census-data>></td>
	        <td class="smallfont1"><label for="census-data">Neighborhood Profile (2010 Census)</label>&nbsp;</td>
	        <td align="right" class="smallfont1">&nbsp;</td>
	      </tr>
              </TMPL_UNLESS>
	      <tr>
	        <td width="1%"><input type="checkbox" name="processed-header" id="processed-header" value="5" <TMPL_VAR NAME=processed-header>></td>
	        <td class="smallfont1"><label for="processed-header">Include Company Header</label>&nbsp;</td>
	        <td align="right" class="smallfont1">&nbsp;</td>
	      </tr>

	    <TMPL_ELSE>
	      <tr>
	        <td width="1%"><input type="checkbox" name="summary-report-table" id="summary-report-table" value="10" <TMPL_VAR NAME=summary-report-table>></td>
	        <td class="smallfont1"><label for="summary-report-table">Summary Report</label>&nbsp;&nbsp;</td>
	        <td align="right" class="smallfont1">&nbsp;</td>
	      </tr>
	      <tr>
	        <td width="1%">&nbsp;</td>
	        <td class="smallfont1">&nbsp;<input type="checkbox" name="report-map" id="report-map" value="10" <TMPL_VAR NAME=report-map>>&nbsp;<label for="report-map">Comprehensive Report Summary</label>&nbsp;</td>
	        <td align="right" class="smallfont1">&nbsp;</td>
	      </tr>
	      <tr>
	        <td width="1%">&nbsp;</td>
	        <td class="smallfont1">&nbsp;<input type="checkbox" name="address-map" id="address-map" value="10" <TMPL_VAR NAME=address-map>>&nbsp;<label for="address-map">Address Summary</label>&nbsp;</td>
	        <td align="right" class="smallfont1">&nbsp;</td>
	      </tr>
          <TMPL_IF SHOW_EDUCATION_DETAILS>
            <tr>
              <td width="1%">&nbsp;</td>
              <td align="left" class="smallfont1">&nbsp;<input type="checkbox" name="education-map" id="education-map" value="10" <TMPL_VAR NAME=education-map>>&nbsp;<label for="education-map">Possible Education</label>&nbsp;</td>
              <td align="right" class="smallfont1">&nbsp;</td>
            </tr>
         </TMPL_IF>
              <TMPL_UNLESS DELETE_RELATIVES>
	      <tr>
	        <td width="1%">&nbsp;</td>
	        <td class="smallfont1">&nbsp;<input type="checkbox" name="relative-map" id="relative-map" value="10" <TMPL_VAR NAME=relative-map>>&nbsp;<label for="relative-map">Relative Summary</label>&nbsp;</td>
	        <td align="right" class="smallfont1">&nbsp;</td>
	      </tr>
              </TMPL_UNLESS>
	      <tr>
	        <td width="1%">&nbsp;</td>
	        <td class="smallfont1">&nbsp;<input type="checkbox" name="imposters" id="imposters" value="2" <TMPL_VAR NAME=imposters>>&nbsp;<label for="imposters">Others Using Same SSN</label>&nbsp;</td>
	        <td align="right" class="smallfont1">&nbsp;</td>
	      </tr>
	      <tr>
	        <td width="1%">&nbsp;</td>
	        <td class="smallfont1">&nbsp;<input type="checkbox" name="verify-ssns" id="verify-ssns" value="5" <TMPL_VAR NAME=verify-ssns>>&nbsp;<label for="verify-ssns">Date and Location where SSN Issued</label>&nbsp;</td>
	        <td align="right" class="smallfont1">&nbsp;</td>
	      </tr>
              <TMPL_UNLESS DELETE_NEIGHBORHOOD>
	      <tr>
	        <td width="1%">&nbsp;</td>
	        <td class="smallfont1">&nbsp;<input type="checkbox" name="census-data" id="census-data" value="5" <TMPL_VAR NAME=census-data>>&nbsp;<label for="census-data">Neighborhood Profile (2010 Census)</label>&nbsp;</td>
	        <td align="right" class="smallfont1">&nbsp;</td>
	      </tr>
              </TMPL_UNLESS>
	      <tr>
	        <td width="1%">&nbsp;</td>
	        <td class="smallfont1">&nbsp;<input type="checkbox" name="processed-header" id="processed-header" value="5" <TMPL_VAR NAME=processed-header>>&nbsp;<label for="processed-header">Include Company Header</label>&nbsp;</td>
	        <td align="right" class="smallfont1">&nbsp;</td>
	      </tr>
	      </TMPL_IF>


	      <TMPL_UNLESS DELETE_MV>
	      <tr>
		<TMPL_IF DISABLE_MV>
	        <td width="1%">&nbsp;</td>
			<td class="disabled_small">Include Motor Vehicle(s) Registration&nbsp;(disabled)&nbsp;</td>
			<td align="right" class="disabled_small">&nbsp;</td>
		<TMPL_ELSE>
	        <td width="1%"><input type="checkbox" name="motor-vehicles" id="motor-vehicles" value="1" <TMPL_VAR NAME=motor-vehicles> ></td>
			<td class="smallfont1"><label for="motor-vehicles">Include Motor Vehicle(s) Registration</label></td>
			<td align="right" class="smallfont1">&nbsp;</td>
	      </TMPL_IF>
	      </tr>
	      </TMPL_UNLESS>

	      <tr>
		<TMPL_IF DISABLE_ASSESSMENT>
	        <td width="1%">&nbsp;</td>
			<td class="disabled_small"><TMPL_UNLESS DELETE_ASSESSMENT>Properties&nbsp;(disabled)&nbsp;</TMPL_UNLESS></td>
			<td align="right" class="disabled_small">&nbsp;</td>
		<TMPL_ELSE>
		<TMPL_IF DISABLE_DEEDS>
	        <td width="1%">&nbsp;</td>
			<td class="disabled_small"><TMPL_UNLESS DELETE_DEEDS>Properties&nbsp;(disabled)&nbsp;</TMPL_UNLESS></td>
			<td align="right" class="disabled_small">&nbsp;</td>
		<TMPL_ELSE>
	        <td width="1%"><input type="checkbox" name="property" id="property" value="11" <TMPL_VAR NAME=property> ></td>
			<td class="smallfont1"><label for="property">Properties</label>&nbsp;&nbsp;</td>
			<td align="right" class="smallfont1">&nbsp;</td>
		</TMPL_IF>
		</TMPL_IF>
	      </tr>

	      <TMPL_UNLESS DELETE_VARIETY_BUNDLE>
	      <tr>
	      <TMPL_IF DISABLE_VARIETY_BUNDLE>
	        <td width="1%">&nbsp;</td>
			<td class="disabled_small">Watercraft&nbsp;(disabled)&nbsp;</td>
			<td align="right" class="disabled_small">&nbsp;</td>
	      <TMPL_ELSE>
	        <td width="1%"><input type="checkbox" name="merchant-vessels" id="merchant-vessels" value="4" <TMPL_VAR NAME=merchant-vessels> ></td>
	        <td class="smallfont1"><label for="merchant-vessels">Watercraft</label>&nbsp;&nbsp;</td>
	        <td align="right" class="smallfont1">&nbsp;</td>
	      </TMPL_IF>
	      </tr>

	      <tr>
	      <TMPL_IF DISABLE_VARIETY_BUNDLE>
	        <td width="1%">&nbsp;</td>
			<td class="disabled_small">FAA Aircraft&nbsp;(disabled)&nbsp;</td>
			<td align="right" class="disabled_small">&nbsp;</td>
	      <TMPL_ELSE>
	        <td width="1%"><input type="checkbox" name="faa-aircraft" id="faa-aircraft" value="4" <TMPL_VAR NAME=faa-aircraft> ></td>
	        <td class="smallfont1"><label for="faa-aircraft">FAA Aircraft</label>&nbsp;&nbsp;</td>
	        <td align="right" class="smallfont1">&nbsp;</td>
	      </TMPL_IF>
	      </tr>
              </TMPL_UNLESS>

	      <TMPL_UNLESS DELETE_ACCIDENT>
              <tr>
	      <TMPL_IF DISABLE_ACCIDENT>
	        <td width="1%">&nbsp;</td>
       		<TMPL_IF NAME="NAT_ACC_ENABLE">
                <TMPL_UNLESS INS>
		    <td align="left" class="disabled_small">National Motor Vehicle Accidents&nbsp;(disabled)&nbsp;</td>
                </TMPL_UNLESS>
		<TMPL_ELSE>
		    <td align="left" class="disabled_small">Florida Accidents&nbsp;(disabled)&nbsp;</td>
		</TMPL_IF>
		<td align="right" class="disabled_small">&nbsp;</td>
	      <TMPL_ELSE>
		<TMPL_IF NAME="NAT_ACC_ENABLE">
                <TMPL_UNLESS INS>
                    <td width="1%"><input type="checkbox" name="accident" id="accident" value="1" <TMPL_VAR NAME="accident"> ></td>
		    <td align="left" class="smallfont1"><label for="accident">National Motor Vehicle Accidents</label>&nbsp;</td>
                </TMPL_UNLESS>
	        <TMPL_ELSE>
                    <td width="1%"><input type="checkbox" name="accident" id="accident" value="1" <TMPL_VAR NAME="accident"> ></td>
		    <td align="left" class="smallfont1"><label for="accident">Florida Accidents</label>&nbsp;</td>
		</TMPL_IF>
		<td align="right" class="smallfont1">&nbsp;</td>
	      </TMPL_IF>
              </tr>
              </TMPL_UNLESS>

     <TMPL_IF ENH_FLAT_RATE_COMP>
          <TMPL_UNLESS DELETE_CUSTOM_EMAIL>
          <TMPL_UNLESS DELETE_EMAIL>
          <tr>
        <TMPL_IF DISABLE_EMAIL>
            <td width="1%">&nbsp;</td>
            <td align="left" class="disabled_small">&nbsp;Include Email Addresses&nbsp;(disabled)&nbsp;</td>
            <td align="right" class="disabled_small">&nbsp;</td>
        <TMPL_ELSE>
            <td width="1%"><input type="checkbox" name="email" id="email" value="1" <TMPL_VAR NAME=email> ></td>
            <td align="left" class="smallfont1"><label for="email">&nbsp;Include Email Addresses</label></td>
            <td align="right" class="smallfont1">&nbsp;</td>
          </TMPL_IF>
          </tr>
          </TMPL_UNLESS>
          </TMPL_UNLESS>

          <TMPL_UNLESS DELETE_CUSTOM_JAILBOOKING>
             <TMPL_IF SHOW_JAIL_BOOKING_SEARCH>
         <TMPL_UNLESS DELETE_JAILBOOKING>
          <tr>
        <TMPL_UNLESS DISABLE_JAILBOOKING>
            <td width="1%"><input type="checkbox" name="jailbooking" id="jailbooking" value="1" <TMPL_VAR NAME=jailbooking> ></td>
            <td align="left" class="smallfont1"><label for="jailbooking">&nbsp;Include Jail Bookings</label></td>
            <td align="right" class="smallfont1">&nbsp;</td>
        <TMPL_ELSE>
            <td width="1%">&nbsp;</td>
            <td align="left" class="disabled_small">&nbsp;Include Jail Bookings&nbsp;(disabled)&nbsp;</td>
            <td align="right" class="disabled_small">&nbsp;</td>
        </TMPL_UNLESS>
          </tr>
          </TMPL_UNLESS>
              </TMPL_IF>
          </TMPL_UNLESS>
        </TMPL_IF>

          <TMPL_IF DO_SHOW_PHONES_PLUS>
          <TMPL_UNLESS DELETE_CUSTOM_DA_WIRELESS>
              <tr>
          <TMPL_IF DISABLE_DA_WIRELESS>
            <td width="1%">&nbsp;</td>
            <td align="left" class="disabled_small">&nbsp;Phones Plus&nbsp;(disabled)&nbsp;</td>
            <td align="right" class="disabled_small">&nbsp;</td>
          <TMPL_ELSE>
                <td width="1%"><input type="checkbox" name="phones-plus" id="phones-plus" value="1" <TMPL_VAR NAME="phones-plus"> ></td>
                        <td align="left" class="smallfont1"><label for="phones-plus">&nbsp;Phones Plus</label>&nbsp;</td>
                        <td align="right" class="smallfont1">&nbsp;</td>
          </TMPL_IF>
              </tr>
              </TMPL_UNLESS>
          </TMPL_IF>
	    </table>
	    </td>
	    <td width="1%" nowrap class="unifont1">&nbsp;&nbsp;&nbsp;&nbsp;</td>
	    <td width="52%" valign="top">
	    <table border="0" cellpadding="0" cellspacing="0" width="100%">
	      <tr>
	        <td width="1%"><input type="checkbox" name="associates" id="associates" value="4" <TMPL_VAR NAME=associates> ></td>
	        <td class="smallfont1"><label for="associates">Associates</label>&nbsp;&nbsp;</td>
	        <td align="right" class="smallfont1">&nbsp;</td>
	      </tr>

	      <TMPL_UNLESS DELETE_UCC>
	      <tr>
	      <TMPL_IF DISABLE_UCC>
	        <td width="1%">&nbsp;</td>
			<td class="disabled_small">UCC Filings&nbsp;(disabled)&nbsp;</td>
			<td align="right" class="disabled_small">&nbsp;</td>
	      <TMPL_ELSE>
	        <td width="1%"><input type="checkbox" name="uccs" id="uccs" value="1" <TMPL_VAR NAME="uccs"> ></td>
			<td class="smallfont1"><label for="uccs">UCC Filings</label></td>
			<td align="right" class="smallfont1">&nbsp;</td>
	      </TMPL_IF>
	      </tr>
              </TMPL_UNLESS>

	      <TMPL_UNLESS DELETE_SEXPREDATOR>
	      <tr>
	      <TMPL_IF DISABLE_SEXPREDATOR>
	        <td width="1%">&nbsp;</td>
			<td class="disabled_small">Sexual Offenses&nbsp;(disabled)&nbsp;</td>
			<td align="right" class="disabled_small">&nbsp;</td>
	      <TMPL_ELSE>
	        <td width="1%"><input type="checkbox" name="sexpredator" id="sexpredator" value="1" <TMPL_VAR NAME="sexpredator"> ></td>
			<td class="smallfont1"><label for="sexpredator">Sexual Offenses</label></td>
			<td align="right" class="smallfont1">&nbsp;</td>
	      </TMPL_IF>
	      </tr>
              </TMPL_UNLESS>

	      <TMPL_UNLESS DELETE_CRIM>
	      <tr>
	      <TMPL_IF DISABLE_CRIM>
	        <td width="1%">&nbsp;</td>
			<td class="disabled_small">Possible Criminal Records&nbsp;(disabled)&nbsp;</td>
			<td align="right" class="disabled_small">&nbsp;</td>
	      <TMPL_ELSE>
	        <td width="1%"><input type="checkbox" name="criminal-records" id="criminal-records" value="1" <TMPL_VAR NAME="criminal-records"> ></td>
			<td class="smallfont1"><label for="criminal-records">Possible Criminal Records</label></td>
			<td align="right" class="smallfont1">&nbsp;</td>
	      </TMPL_IF>
	      </tr>
              </TMPL_UNLESS>

	      <TMPL_UNLESS DELETE_BANKRUPTCY>
	      <tr>
	      <TMPL_IF DISABLE_BANKRUPTCY>
	        <td width="1%">&nbsp;</td>
			<td class="disabled_small">Bankruptcy&nbsp;(disabled)&nbsp;</td>
			<td align="right" class="disabled_small">&nbsp;</td>
	      <TMPL_ELSE>
	        <td width="1%"><input type="checkbox" name="bankruptcy" id="bankruptcy" value="1" <TMPL_VAR NAME=bankruptcy> ></td>
			<td class="smallfont1"><label for="bankruptcy">Bankruptcy</label> </td>
			<td align="right" class="smallfont1">&nbsp;</td>
	      </TMPL_IF>
	      </tr>
              </TMPL_UNLESS>

		  <TMPL_UNLESS DISABLE_DEA_RPT_OPT>
			  <TMPL_UNLESS DELETE_DEA>
			  <tr>
			  <TMPL_IF DISABLE_DEA>
				<td width="1%">&nbsp;</td>
				<td class="disabled_small">&nbsp;DEA Controlled Substances&nbsp;(disabled)&nbsp;</td>
				<td align="right" class="disabled_small">&nbsp;</td>
			  <TMPL_ELSE>
				<td width="1%"><input type="checkbox" name="dea-substances" id="dea-substances" value="1" <TMPL_VAR NAME=dea-substances> ></td>
				<td class="smallfont1"><label for="dea-substances">&nbsp;DEA Controlled Substances</label> </td>
				<td align="right" class="smallfont1">&nbsp;</td>
			  </TMPL_IF>
			  </tr>
			  </TMPL_UNLESS>
          </TMPL_UNLESS>

		  <TMPL_UNLESS DISABLE_FED_FIRE_EXP_RPT_OPT>
			  <TMPL_UNLESS DELETE_FIREARMS>
			  <tr>
			  <TMPL_IF DISABLE_FIREARMS>
				<td width="1%">&nbsp;</td>
				<td class="disabled_small">&nbsp;Federal Firearms and Explosives&nbsp;(disabled)&nbsp;</td>
				<td align="right" class="disabled_small">&nbsp;</td>
			  <TMPL_ELSE>
				<td width="1%"><input type="checkbox" name="firearms" id="firearms" value="1" <TMPL_VAR NAME=firearms> ></td>
				<td class="smallfont1"><label for="firearms">&nbsp;Federal Firearms and Explosives</label> </td>
				<td align="right" class="smallfont1">&nbsp;</td>
			  </TMPL_IF>
			  </tr>
			  </TMPL_UNLESS>
          </TMPL_UNLESS>

	      <TMPL_UNLESS DELETE_LIEN>
	      <tr>
	      <TMPL_IF DISABLE_LIEN>
	        <td width="1%">&nbsp;</td>
			<td class="disabled_small">Liens &amp; Judgments&nbsp;(disabled)&nbsp;</td>
			<td align="right" class="disabled_small">&nbsp;</td>
	      <TMPL_ELSE>
	        <td width="1%"><input type="checkbox" name="liens" id="liens" value="1" <TMPL_VAR NAME=liens> ></td>
			<td class="smallfont1"><label for="liens">Liens &amp; Judgments</label> </td>
			<td align="right" class="smallfont1">&nbsp;</td>
	      </TMPL_IF>
	      </tr>
              </TMPL_UNLESS>

	      <TMPL_UNLESS DELETE_PROF_LICENSE>
	      <tr>
	      <TMPL_IF DISABLE_PROF_LICENSE>
	        <td width="1%">&nbsp;</td>
			<td class="disabled_small">Professional Licenses&nbsp;(disabled)&nbsp;</td>
			<td align="right" class="disabled_small">&nbsp;</td>
	      <TMPL_ELSE>
	        <td width="1%"><input type="checkbox" name="professional-licenses" id="professional-licenses" value="1" <TMPL_VAR NAME="professional-licenses"> ></td>
			<td class="smallfont1"><label for="professional-licenses">Professional Licenses</label>&nbsp;</td>
			<td align="right" class="smallfont1">&nbsp;</td>
	      </TMPL_IF>
	      </tr>
              </TMPL_UNLESS>

	      <TMPL_UNLESS DELETE_DL>
	      <tr>
	      <TMPL_IF DISABLE_DL>
	        <td width="1%">&nbsp;</td>
			<td class="disabled_small">Include Driver Licenses Information&nbsp;(disabled)&nbsp;</td>
			<td align="right" class="disabled_small">&nbsp;</td>
	      <TMPL_ELSE>
	        <td width="1%"><input type="checkbox" name="driver-license" id="driver-license" value="1" <TMPL_VAR NAME=driver-license> ></td>
			<td class="smallfont1"><label for="driver-license">Include Driver Licenses Information</label></td>
			<td align="right" class="smallfont1">&nbsp;</td>
	      </TMPL_IF>
	      </tr>
              </TMPL_UNLESS>

	      <TMPL_UNLESS DELETE_VARIETY_BUNDLE>
	      <tr>
	      <TMPL_IF DISABLE_VARIETY_BUNDLE>
	        <td width="1%">&nbsp;</td>
			<td class="disabled_small">Concealed Weapons Permits&nbsp;(disabled)&nbsp;</td>
			<td align="right" class="disabled_small">&nbsp;</td>
	      <TMPL_ELSE>
	        <td width="1%"><input type="checkbox" name="weapon-permits" id="weapon-permits" value="4" <TMPL_VAR NAME=weapon-permits> ></td>
	        <td class="smallfont1"><label for="weapon-permits">Concealed Weapons Permits</label>&nbsp;&nbsp;</td>
	        <td align="right" class="smallfont1">&nbsp;</td>
	      </TMPL_IF>
	      </tr>

	      <tr>
	      <TMPL_IF DISABLE_VARIETY_BUNDLE>
	        <td width="1%">&nbsp;</td>
			<td class="disabled_small">Voter Registrations&nbsp;(disabled)&nbsp;</td>
			<td align="right" class="disabled_small">&nbsp;</td>
	      <TMPL_ELSE>
	        <td width="1%"><input type="checkbox" name="voter-registrations" id="voter-registrations" value="4" <TMPL_VAR NAME=voter-registrations> ></td>
	        <td class="smallfont1"><label for="voter-registrations">Voter Registrations</label>&nbsp;&nbsp;</td>
	        <td align="right" class="smallfont1">&nbsp;</td>
	      </TMPL_IF>
	      </tr>

	      <tr>
	      <TMPL_IF DISABLE_VARIETY_BUNDLE>
	        <td width="1%">&nbsp;</td>
			<td class="disabled_small">Hunting/Fishing Permits&nbsp;(disabled)&nbsp;</td>
			<td align="right" class="disabled_small">&nbsp;</td>
	      <TMPL_ELSE>
	        <td width="1%"><input type="checkbox" name="hunting-fishing-licenses" id="hunting-fishing-licenses" value="4" <TMPL_VAR NAME=hunting-fishing-licenses> ></td>
	        <td class="smallfont1"><label for="hunting-fishing-licenses">Hunting/Fishing Permits</label>&nbsp;&nbsp;</td>
	        <td align="right" class="smallfont1">&nbsp;</td>
	      </TMPL_IF>
	      </tr>

	      <tr>
	      <TMPL_IF DISABLE_VARIETY_BUNDLE>
	        <td width="1%">&nbsp;</td>
			<td class="disabled_small">FAA Pilots&nbsp;(disabled)&nbsp;</td>
			<td align="right" class="disabled_small">&nbsp;</td>
	      <TMPL_ELSE>
	        <td width="1%"><input type="checkbox" name="faa-certificates" id="faa-certificates" value="4" <TMPL_VAR NAME=faa-certificates> ></td>
	        <td class="smallfont1"><label for="faa-certificates">FAA Pilots</label>&nbsp;&nbsp;</td>
	        <td align="right" class="smallfont1">&nbsp;</td>
	      </TMPL_IF>
	      </tr>
              </TMPL_UNLESS>

	      <TMPL_UNLESS DELETE_PAW>
	      <tr>
	      <TMPL_IF DISABLE_PAW>
	        <td width="1%">&nbsp;</td>
			<td class="disabled_small">People at Work&nbsp;(disabled)&nbsp;</td>
			<td align="right" class="disabled_small">&nbsp;</td>
	      <TMPL_ELSE>
	        <td width="1%"><input type="checkbox" name="people-at-work" id="people-at-work" value="4" <TMPL_VAR NAME=people-at-work> ></td>
	        <td class="smallfont1"><label for="people-at-work">People at Work</label>&nbsp;&nbsp;</td>
	        <td align="right" class="smallfont1">&nbsp;</td>
	      </TMPL_IF>
	      </tr>
              </TMPL_UNLESS>


	      <TMPL_IF NAME="TABLE_BORDERS_OPTION">
		  <tr>
		    <td width="1%"><input type="checkbox" name="table-borders" id="table-borders" value="4" <TMPL_VAR NAME=table-borders> ></td>
		    <td class="smallfont1"><label for="table-borders">Display table borders on report</label>&nbsp;&nbsp;</td>
		    <td align="right" class="smallfont1">&nbsp;</td>
		  </tr>
	      </TMPL_IF>
	      <TMPL_IF NAME="ICONS_OPTION">
		  <tr>
		    <td width="1%"><input type="checkbox" name="section-icons" id="section-icons" value="4" <TMPL_VAR NAME=section-icons> ></td>
		    <td class="smallfont1"><label for="section-icons">Display icons on report</label>&nbsp;&nbsp;</td>
		    <td align="right" class="smallfont1">&nbsp;</td>
		  </tr>
	      </TMPL_IF>
	    </table>
	    </td>
	  </tr>
	  <tr>
	    <td width="47%" valign="top">
	    <table border="1" cellpadding="0" cellspacing="0" width="100%">
	      <tr>
	        <td>
	        <table border="0" cellpadding="0" cellspacing="0" width="100%">
		  <tr>
		    <td width="1%"><input type="checkbox" name="neighbors" id="neighbors" value="11" <TMPL_VAR NAME=neighbors> ></td>
		    <td class="smallfont1"><label for="neighbors">Neighbors</label></td>
		    <td align="right" class="smallfont1">&nbsp;</td>
		  </tr>
		  <tr>
		    <td colspan="3" class="smallfont1">
		    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Include Neighbors for
		    <select name="neighborhood-count">
		    <option value="1"<TMPL_IF NAME="neighborhood-count-1"> SELECTED</TMPL_IF>>1</option>
		    <option value="2"<TMPL_IF NAME="neighborhood-count-2"> SELECTED</TMPL_IF>>2</option>
		    <option value="3"<TMPL_IF NAME="neighborhood-count-3"> SELECTED</TMPL_IF>>3</option>
		    <option value="4"<TMPL_IF NAME="neighborhood-count-4"> SELECTED</TMPL_IF>>4</option>
		    <option value="5"<TMPL_IF NAME="neighborhood-count-5"> SELECTED</TMPL_IF>>5</option>
		    <option value="6"<TMPL_IF NAME="neighborhood-count-6"> SELECTED</TMPL_IF>>6</option>
		    <option value="7"<TMPL_IF NAME="neighborhood-count-7"> SELECTED</TMPL_IF>>7</option>
		    <option value="8"<TMPL_IF NAME="neighborhood-count-8"> SELECTED</TMPL_IF>>8</option>
		    <option value="9"<TMPL_IF NAME="neighborhood-count-9"> SELECTED</TMPL_IF>>9</option>
		    <option value="10"<TMPL_IF NAME="neighborhood-count-10"> SELECTED</TMPL_IF>>10</option>
		    </select>
		    Address(es)
		    <br>
		    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Include
		    <select name="neighbor-count">
		    <option value="2"<TMPL_IF NAME="neighbor-count-2"> SELECTED</TMPL_IF>>2</option>
		    <option value="3"<TMPL_IF NAME="neighbor-count-3"> SELECTED</TMPL_IF>>3</option>
		    <option value="4"<TMPL_IF NAME="neighbor-count-4"> SELECTED</TMPL_IF>>4</option>
		    <option value="5"<TMPL_IF NAME="neighbor-count-5"> SELECTED</TMPL_IF>>5</option>
		    <option value="6"<TMPL_IF NAME="neighbor-count-6"> SELECTED</TMPL_IF>>6</option>
		    </select>
		    Neighbors for each Address
		    </td>
		  </tr>
		</table>
		</td>
              </tr>
            </table>
	    </td>
	    <td width="1%" nowrap class="unifont1">&nbsp;&nbsp;&nbsp;&nbsp;</td>
	    <td width="52%" valign="top">
            <TMPL_UNLESS DELETE_RELATIVES>
            <table border="1" cellpadding="0" cellspacing="0" width="100%">
              <tr>
	        <td>
		<table border="0" cellpadding="0" cellspacing="0" width="100%">
		  <tr>
		    <td width="1%"><input type="checkbox" name="relatives" id="relatives" value="8" <TMPL_VAR NAME=relatives>></td>
		    <td class="smallfont1"><label for="relatives">Relatives</label></td>
		    <td align="right" class="smallfont1">&nbsp;</td>
		  </tr>
		  <tr>
		    <td colspan="3" class="smallfont1">
		    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		    <select name="relative-depth">
		    <option value="1"<TMPL_IF NAME="relative-depth-1"> SELECTED</TMPL_IF>>1</option>
		    <option value="2"<TMPL_IF NAME="relative-depth-2"> SELECTED</TMPL_IF>>2</option>
		    <option value="3"<TMPL_IF NAME="relative-depth-3"> SELECTED</TMPL_IF>>3</option>
		    </select>
		    Degrees of Separation
		    </td>
		  </tr>
		</table>
		<br>
		</td>
	      </tr>
            </table>
            </TMPL_UNLESS>
	    </td>
	  </tr>

          <TMPL_IF SHOW_ADDED_REPORT_OPTIONS>
	  <tr>
	    <td colspan=3 align="center">
	      <table border="0" cellpadding="0" cellspacing="0" width="100%">
	        <tr>
	          <td colspan=2 align="center">
	            <hr width="98%" align="center">
	          </td>
	        </tr>
	        <tr>
	          <td colspan=2 align="left" class="smallfont1">
	            Additional Report Options: <i>additional charges apply</i>
	          </td>
	        </tr>
	        <tr>
                <TMPL_IF SHOW_ADDED_REPORT_FDN>
                    <td width="49%" valign="top">
                      <table border="0" cellpadding="0" cellspacing="0" width="100%">
                        <tr>
                          <td width="1%"><input type="checkbox" name="fdn-network" id="fdn-network" value="1" <TMPL_IF NAME="MYACCOUNT_PREFERENCES"><TMPL_VAR NAME="fdn-network"> onclick="toggleFDNoptions(this)"<TMPL_ELSE><TMPL_IF NAME="FRAUD_DEFENSE_GLBA_INVALID">disabled="disabled" <TMPL_ELSE><TMPL_VAR NAME="fdn-network"> onclick="toggleFDNoptions(this)"</TMPL_IF></TMPL_IF> ></td>
                          <td align="left" colspan="2" class="smallfont1"><label for="fdn-network">&nbsp;Include LexisNexis&reg; Fraud Defense Network</label></td>
                          <td align="right" class="smallfont1">&nbsp;</td>
                        </tr>
                        <TMPL_UNLESS DO_NOT_DISPLAY_FDN_REPORT_SUBJECT>
                        <TMPL_UNLESS DISABLE_FDN_REPORT_SUBJECT>
                        <tr>
                          <td width="1%">&nbsp;&nbsp;&nbsp;&nbsp;</td>
                          <td width="1%"><input type="checkbox" name="fdn-subjectonly" id="fdn-subjectonly" value="1" <TMPL_IF NAME="MYACCOUNT_PREFERENCES"><TMPL_VAR NAME="fdn-subjectonly"> onclick="checkFDNtopoption(this)" <TMPL_ELSE><TMPL_IF NAME="FRAUD_DEFENSE_GLBA_INVALID">disabled="disabled" <TMPL_ELSE><TMPL_VAR NAME="fdn-subjectonly"> onclick="checkFDNtopoption(this)" </TMPL_IF></TMPL_IF> ></td>
                          <td align="left" class="smallfont1"><label for="fdn-subjectonly">&nbsp;Fraud Defense Network - Subject Only</label></td>
                          <td align="right" class="smallfont1">&nbsp;</td>
                        </tr>
                        </TMPL_UNLESS>
                        </TMPL_UNLESS>
                        <TMPL_UNLESS DO_NOT_DISPLAY_FDN_REPORT_ALL>
                        <TMPL_UNLESS DISABLE_FDN_REPORT_ALL>
                        <tr>
                          <td width="1%">&nbsp;&nbsp;&nbsp;&nbsp;</td>
                          <td width="1%"><input type="checkbox" name="fdn-associations" id="fdn-associations" value="1" <TMPL_IF NAME="MYACCOUNT_PREFERENCES"><TMPL_VAR NAME="fdn-associations"> onclick="checkFDNtopoption(this)" <TMPL_ELSE><TMPL_IF NAME="FRAUD_DEFENSE_GLBA_INVALID">disabled="disabled" <TMPL_ELSE><TMPL_VAR NAME="fdn-associations"> onclick="checkFDNtopoption(this)" </TMPL_IF></TMPL_IF> ></td>
                          <td align="left" class="smallfont1"><label for="fdn-associations">&nbsp;Fraud Defense Network - All Associations</label></td>
                          <td align="right" class="smallfont1">&nbsp;</td>
                        </tr>
                        </TMPL_UNLESS>
                        </TMPL_UNLESS>
                      </table>
                    </td>
                </TMPL_IF>
		<TMPL_UNLESS DELETE_RT_MVR>
		  <TMPL_IF DISABLE_RT_MVR>
		    <td width="1%">&nbsp;</td>
		    <td class="disabled_small">&nbsp;Include Real-Time Vehicle(s) Registration&nbsp;(disabled)&nbsp;</td>
		  <TMPL_ELSE>
		    <td width="1%"><input type="checkbox" name="rt-motor-vehicles" id="rt-motor-vehicles" value="1" <TMPL_VAR NAME=rt-motor-vehicles> ></td>
		    <td class="smallfont1"><label for="rt-motor-vehicles">Include Real-Time Vehicle(s) Registration</label></td>
		  </TMPL_IF>
		</TMPL_UNLESS>
                </tr>
	        <tr>
	          <td colspan=2 align="center">
	            &nbsp;
	          </td>
	        </tr>
	      </table>
	    </td>
	  </tr>
	  </TMPL_IF>
	</table>
        </td>
      </tr>
    </table>
    </td>
  </tr>
  <tr height="10">
    <td height="10" class="unifont2pt">&nbsp;</td>
  </tr>
  <tr>
    <td width="640" valign="top">
    <table border="0" cellpadding="2" cellspacing="0" width="100%">
      <tr>
	<td colspan="2" width="100%" valign="top" align="left">
        <table border="0" cellpadding="0" cellspacing="0">
	  <tr>
	    <td nowrap class="smallfont1">Select Report Type:&nbsp;</td>
	    <td>
	    <select name="report-format">
	    <option value="html"<TMPL_IF NAME="report-format-html"> SELECTED</TMPL_IF>>Interactive Web Page</option>
	    <option value="text"<TMPL_IF NAME="report-format-text"> SELECTED</TMPL_IF>>Plain Text Web Page</option>
	    <option value="word"<TMPL_IF NAME="report-format-word"> SELECTED</TMPL_IF>>Microsoft Word Document</option>
	    <option value="pdf"<TMPL_IF NAME="report-format-pdf"> SELECTED</TMPL_IF>>PDF Document</option>
	    </select>
	    </td>
	  </tr>
	</table>
	</td>
      </tr>
      <tr>
	<td width="50%" class="smallfont1" valign="top" align="left"><input type="checkbox" name="prompt" id="prompt" value="1" <TMPL_VAR NAME=prompt>><label for="prompt"> Prompt me for these options for each report.</label></td>
	<td width="50%" class="smallfont1" valign="top" align="left">
	  <TMPL_IF NAME="ENABLE_SAVE_REPORT">
	    <span<TMPL_IF NAME="REPORT_MANAGER_OFF"> class="disabled_item"</TMPL_IF>>
	      <input type="checkbox" name="save-report" id="save-report" value="1" <TMPL_VAR NAME="save-report"><TMPL_IF NAME="REPORT_MANAGER_OFF"> readonly onChange="this.checked = !this.checked"</TMPL_IF>>
		<label for="save-report">Save report for later access.</label>
	    </span>
	    <TMPL_IF NAME="REPORT_MANAGER_OFF">
	      &nbsp;(Saving Reports currently not available)
	    </TMPL_IF>
	  <TMPL_ELSE>&nbsp;</TMPL_IF>
	</td>
      </tr>
    </table>
    </td>
  </tr>
</table>



<!-- End short_comprehensive_report_body.tpl -->

