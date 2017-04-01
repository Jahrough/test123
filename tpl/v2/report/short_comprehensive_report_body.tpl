<!-- Begin short_comprehensive_report_body.tpl -->

  <table width="740" align="center" cellpadding="2" border="0" cellspacing="4" style="background-color:#F4F0DE; border: solid #ccc 1px;">
<TMPL_IF NAME="PREFERENCES_ERROR_MESSAGE">
  <tr>
    <td align="center" colspan="4"><TMPL_VAR NAME="PREFERENCES_ERROR_MESSAGE"></td>
  </tr>
</TMPL_IF>
  <tr height="10">
    <td height="10" colspan="4">&nbsp;</td>
  </tr>

    <tr>
      <td width="49%" valign="top">
          <table border="0" cellpadding="0" cellspacing="0" width="100%">
	    <TMPL_IF LE>
	      <tr>
	        <td width="1%"><input type="checkbox" name="report-map" id="report-map" value="10" <TMPL_VAR NAME=report-map>></td>
	        <td  align="left" class="medblack"><label for="report-map">&nbsp;Comprehensive Report Summary</label>&nbsp;</td>
	        <td align="right" class="medblack">&nbsp;</td>
	      </tr>
	      <tr>
	        <td width="1%"><input type="checkbox" name="address-map" id="address-map" value="10" <TMPL_VAR NAME=address-map>></td>
	        <td align="left" class="medblack"><label for="address-map">&nbsp;Address Summary</label>&nbsp;</td>
	        <td align="right" class="medblack">&nbsp;</td>
	      </tr>
          <TMPL_IF SHOW_EDUCATION_DETAILS>
            <tr>
              <td width="1%"><input type="checkbox" name="education-map" id="education-map" value="10" <TMPL_VAR NAME=education-map>></td>
              <td align="left" class="medblack"><label for="education-map">&nbsp;Possible Education</label>&nbsp;</td>
              <td align="right" class="medblack">&nbsp;</td>
            </tr>
          </TMPL_IF>
              <TMPL_UNLESS DELETE_RELATIVES>
	      <tr>
	        <td width="1%"><input type="checkbox" name="relative-map" value="10" <TMPL_VAR NAME=relative-map>></td>
	        <td align="left" class="medblack"><label for="relative-map">&nbsp;Relative Summary</label>&nbsp;</td>
	        <td align="right" class="medblack">&nbsp;</td>
	      </tr>
              </TMPL_UNLESS>
	      <tr>
	        <td width="1%"><input type="checkbox" name="imposters" id="imposters" value="2" <TMPL_VAR NAME=imposters>></td>
	        <td align="left" class="medblack"><label for="imposters">&nbsp;Others Using Same SSN</label>&nbsp;</td>
	        <td align="right" class="medblack">&nbsp;</td>
	      </tr>
	      <tr>
	        <td width="1%"><input type="checkbox" name="verify-ssns" id="verify-ssns" value="5" <TMPL_VAR NAME=verify-ssns>></td>
	        <td align="left" class="medblack"><label for="verify-ssns">&nbsp;Date and Location where SSN Issued</label>&nbsp;</td>
	        <td align="right" class="medblack">&nbsp;</td>
	      </tr>
              <TMPL_UNLESS DELETE_NEIGHBORHOOD>
	      <tr>
	        <td width="1%"><input type="checkbox" name="census-data" id="census-data" value="5" <TMPL_VAR NAME=census-data>></td>
	        <td align="left" class="medblack"><label for="census-data">&nbsp;Neighborhood Profile (2010 Census)</label>&nbsp;</td>
	        <td align="right" class="medblack">&nbsp;</td>
	      </tr>
              </TMPL_UNLESS>
	      <tr>
	        <td width="1%"><input type="checkbox" name="processed-header" id="processed-header" value="5" <TMPL_VAR NAME=processed-header>></td>
	        <td align="left" class="medblack"><label for="processed-header">&nbsp;Include Company Header</label>&nbsp;</td>
	        <td align="right" class="medblack">&nbsp;</td>
	      </tr>

	    <TMPL_ELSE>
	      <tr>
	        <td width="1%"><input type="checkbox" name="summary-report-table" id="summary-report-table" value="10" <TMPL_VAR NAME=summary-report-table>></td>
	        <td align="left" class="medblack"><label for="summary-report-table">&nbsp;Summary Report</label>&nbsp;&nbsp;</td>
	        <td align="right" class="medblack">&nbsp;</td>
	      </tr>
	      <tr>
	        <td width="1%">&nbsp;</td>
	        <td align="left" class="medblack">&nbsp;<input type="checkbox" name="report-map" id="report-map" value="10" <TMPL_VAR NAME=report-map>>&nbsp;<label for="report-map">&nbsp;Comprehensive Report Summary</label>&nbsp;</td>
	        <td align="right" class="medblack">&nbsp;</td>
	      </tr>
	      <tr>
	        <td width="1%">&nbsp;</td>
	        <td align="left" class="medblack">&nbsp;<input type="checkbox" name="address-map" id="address-map" value="10" <TMPL_VAR NAME=address-map>>&nbsp;<label for="address-map">&nbsp;Address Summary</label>&nbsp;</td>
	        <td align="right" class="medblack">&nbsp;</td>
	      </tr>
          <TMPL_IF SHOW_EDUCATION_DETAILS>
            <tr>
              <td width="1%">&nbsp;</td>
              <td align="left" class="medblack">&nbsp;<input type="checkbox" name="education-map" id="education-map" value="10" <TMPL_VAR NAME=education-map>>&nbsp;<label for="education-map">&nbsp;Possible Education</label>&nbsp;</td>
              <td align="right" class="medblack">&nbsp;</td>
            </tr>
          </TMPL_IF>
              <TMPL_UNLESS DELETE_RELATIVES>
	      <tr>
	        <td width="1%">&nbsp;</td>
	        <td align="left" class="medblack">&nbsp;<input type="checkbox" name="relative-map" id="relative-map" value="10" <TMPL_VAR NAME=relative-map>>&nbsp;<label for="relative-map">&nbsp;Relative Summary</label>&nbsp;</td>
	        <td align="right" class="medblack">&nbsp;</td>
	      </tr>
              </TMPL_UNLESS>
	      <tr>
	        <td width="1%">&nbsp;</td>
	        <td align="left" class="medblack">&nbsp;<input type="checkbox" name="imposters" id="imposters" value="2" <TMPL_VAR NAME=imposters>>&nbsp;<label for="imposters">&nbsp;Others Using Same SSN</label>&nbsp;</td>
	        <td align="right" class="medblack">&nbsp;</td>
	      </tr>
	      <tr>
	        <td width="1%">&nbsp;</td>
	        <td align="left" class="medblack">&nbsp;<input type="checkbox" name="verify-ssns" id="verify-ssns" value="5" <TMPL_VAR NAME=verify-ssns>>&nbsp;<label for="verify-ssns">&nbsp;Date and Location where SSN Issued</label>&nbsp;</td>
	        <td align="right" class="medblack">&nbsp;</td>
	      </tr>
              <TMPL_UNLESS DELETE_NEIGHBORHOOD>
	      <tr>
	        <td width="1%">&nbsp;</td>
	        <td align="left" class="medblack">&nbsp;<input type="checkbox" name="census-data" id="census-data" value="5" <TMPL_VAR NAME=census-data>>&nbsp;<label for="census-data">&nbsp;Neighborhood Profile (2010 Census)</label>&nbsp;</td>
	        <td align="right" class="medblack">&nbsp;</td>
	      </tr>
              </TMPL_UNLESS>
	      <tr>
	        <td width="1%">&nbsp;</td>
	        <td align="left" class="medblack">&nbsp;<input type="checkbox" name="processed-header" id="processed-header" value="5" <TMPL_VAR NAME=processed-header>>&nbsp;<label for="processed-header">&nbsp;Include Company Header</label>&nbsp;</td>
	        <td align="right" class="medblack">&nbsp;</td>
	      </tr>
	      </TMPL_IF>

	      <TMPL_UNLESS DELETE_MV>
	      <tr>
		<TMPL_IF DISABLE_MV>
	        <td width="1%">&nbsp;</td>
			<td align="left" class="disabled_small">&nbsp;Include Motor Vehicle(s) Registration&nbsp;(disabled)&nbsp;</td>
			<td align="right" class="disabled_small">&nbsp;</td>
		<TMPL_ELSE>
	        <td width="1%"><input type="checkbox" name="motor-vehicles" id="motor-vehicles" value="1" <TMPL_VAR NAME=motor-vehicles> ></td>
			<td align="left" class="medblack"><label for="motor-vehicles">&nbsp;Include Motor Vehicle(s) Registration</label></td>
			<td align="right" class="medblack">&nbsp;</td>
	      </TMPL_IF>
	      </tr>
	      </TMPL_UNLESS>
	      <tr>
		<TMPL_IF DISABLE_ASSESSMENT>
	        <td width="1%">&nbsp;</td>
			<td align="left" class="disabled_small"><TMPL_UNLESS DELETE_ASSESSMENT>&nbsp;Properties&nbsp;(disabled)&nbsp;</TMPL_UNLESS></td>
			<td align="right" class="disabled_small">&nbsp;</td>
		<TMPL_ELSE>
		<TMPL_IF DISABLE_DEEDS>
	        <td width="1%">&nbsp;</td>
			<td align="left" class="disabled_small"><TMPL_UNLESS DELETE_DEEDS>&nbsp;Properties&nbsp;(disabled)&nbsp;</TMPL_UNLESS></td>
			<td align="right" class="disabled_small">&nbsp;</td>
		<TMPL_ELSE>
	        <td width="1%"><input type="checkbox" name="property" id="property" value="11" <TMPL_VAR NAME=property> ></td>
			<td align="left" class="medblack"><label for="property">&nbsp;Properties</label>&nbsp;&nbsp;</td>
			<td align="right" class="medblack">&nbsp;</td>
		</TMPL_IF>
		</TMPL_IF>
	      </tr>

	      <TMPL_UNLESS DELETE_VARIETY_BUNDLE>
	      <tr>
	      <TMPL_IF DISABLE_VARIETY_BUNDLE>
	        <td width="1%">&nbsp;</td>
			<td align="left" class="disabled_small">&nbsp;Watercraft&nbsp;(disabled)&nbsp;</td>
			<td align="right" class="disabled_small">&nbsp;</td>
	      <TMPL_ELSE>
	        <td width="1%"><input type="checkbox" name="merchant-vessels" id="merchant-vessels" value="4" <TMPL_VAR NAME=merchant-vessels> ></td>
	        <td align="left" class="medblack"><label for="merchant-vessels">&nbsp;Watercraft</label>&nbsp;&nbsp;</td>
	        <td align="right" class="medblack">&nbsp;</td>
	      </TMPL_IF>
	      </tr>

	      <tr>
	      <TMPL_IF DISABLE_VARIETY_BUNDLE>
	        <td width="1%">&nbsp;</td>
			<td align="left" class="disabled_small">FAA Aircraft&nbsp;(disabled)&nbsp;</td>
			<td align="right" class="disabled_small">&nbsp;</td>
	      <TMPL_ELSE>
	        <td width="1%"><input type="checkbox" name="faa-aircraft" id="faa-aircraft" value="4" <TMPL_VAR NAME=faa-aircraft> ></td>
	        <td align="left" class="medblack"><label for="faa-aircraft">&nbsp;FAA Aircraft</label>&nbsp;&nbsp;</td>
	        <td align="right" class="medblack">&nbsp;</td>
	      </TMPL_IF>
	      </tr>
              </TMPL_UNLESS>

	      <TMPL_UNLESS DELETE_ACCIDENT>
	      <TMPL_IF DISABLE_ACCIDENT>
       		<TMPL_IF NAME="NAT_ACC_ENABLE">
       		<TMPL_UNLESS NAME="INS">
                  <tr>
	            <td width="1%">&nbsp;</td>
                    <td align="left" class="disabled_small">&nbsp;National Motor Vehicle Accidents&nbsp;(disabled)&nbsp;</td>
	            <td align="right" class="disabled_small">&nbsp;</td>
       		</TMPL_UNLESS>
                <TMPL_ELSE>
                  <tr>
	            <td width="1%">&nbsp;</td>
		    <td align="left" class="disabled_small">&nbsp;Florida Accidents&nbsp;(disabled)&nbsp;</td>
	            <td align="right" class="disabled_small">&nbsp;</td>
		</TMPL_IF>
	      <TMPL_ELSE>
                 <TMPL_IF NAME="NAT_ACC_ENABLE">
       		 <TMPL_UNLESS NAME="INS">
                    <td width="1%"><input type="checkbox" name="accident" id="accident" value="1" <TMPL_VAR NAME="accident"> ></td>
                    <td align="left" class="medblack"><label for="accident">&nbsp;National Motor Vehicle Accidents</label>&nbsp;<br></td>
                    <td align="right" class="medblack">&nbsp;</td>
                   </tr>
       		 </TMPL_UNLESS>
                 <TMPL_ELSE>
                    <td width="1%"><input type="checkbox" name="accident" id="accident" value="1" <TMPL_VAR NAME="accident"> ></td>
                    <td align="left" class="medblack"><label for="accident">&nbsp;Florida Accidents</label>&nbsp;</td>
                    <td align="right" class="medblack">&nbsp;</td>
                   </tr>
                 </TMPL_IF>
                 </TMPL_IF>
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
            <td align="left" class="medblack"><label for="email">&nbsp;Include Email Addresses</label></td>
            <td align="right" class="medblack">&nbsp;</td>
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
            <td align="left" class="medblack"><label for="jailbooking">&nbsp;Include Jail Bookings</label></td>
            <td align="right" class="medblack">&nbsp;</td>
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
                        <td align="left" class="medblack"><label for="phones-plus">&nbsp;Phones Plus</label>&nbsp;</td>
                        <td align="right" class="medblack">&nbsp;</td>
          </TMPL_IF>
              </tr>
              </TMPL_UNLESS>
          </TMPL_IF>
          </table>
      </td>

      <td></td>

      <td width="49%" valign="top">
          <table border="0" cellpadding="0" cellspacing="0" width="100%">

	      <tr>
	        <td width="1%"><input type="checkbox" name="associates" id="associates" value="4" <TMPL_VAR NAME=associates> ></td>
	        <td align="left" class="medblack"><label for="associates">&nbsp;Associates</label>&nbsp;&nbsp;</td>
	        <td align="right" class="medblack">&nbsp;</td>
	      </tr>

	      <TMPL_UNLESS DELETE_UCC>
	      <tr>
	      <TMPL_IF DISABLE_UCC>
	        <td width="1%">&nbsp;</td>
			<td align="left" class="disabled_small">&nbsp;UCC Filings&nbsp;(disabled)&nbsp;</td>
			<td align="right" class="disabled_small">&nbsp;</td>
	      <TMPL_ELSE>
	        <td width="1%"><input type="checkbox" name="uccs" id="uccs" value="1" <TMPL_VAR NAME="uccs"> ></td>
			<td align="left" class="medblack"><label for="uccs">&nbsp;UCC Filings</label></td>
			<td align="right" class="medblack">&nbsp;</td>
	      </TMPL_IF>
	      </tr>
              </TMPL_UNLESS>

	      <TMPL_UNLESS DELETE_SEXPREDATOR>
	      <tr>
	      <TMPL_IF DISABLE_SEXPREDATOR>
	        <td width="1%">&nbsp;</td>
			<td align="left" class="disabled_small">&nbsp;Sexual Offenses&nbsp;(disabled)&nbsp;</td>
			<td align="right" class="disabled_small">&nbsp;</td>
	      <TMPL_ELSE>
	        <td width="1%"><input type="checkbox" name="sexpredator" id="sexpredator" value="1" <TMPL_VAR NAME="sexpredator"> ></td>
			<td align="left" class="medblack"><label for="sexpredator">&nbsp;Sexual Offenses</label></td>
			<td align="right" class="medblack">&nbsp;</td>
	      </TMPL_IF>
	      </tr>
              </TMPL_UNLESS>

	      <TMPL_UNLESS DELETE_CRIM>
	      <tr>
	      <TMPL_IF DISABLE_CRIM>
	        <td width="1%">&nbsp;</td>
			<td align="left" class="disabled_small">&nbsp;Possible Criminal Records&nbsp;(disabled)&nbsp;</td>
			<td align="right" class="disabled_small">&nbsp;</td>
	      <TMPL_ELSE>
	        <td width="1%"><input type="checkbox" name="criminal-records" id="criminal-records" value="1" <TMPL_VAR NAME="criminal-records"> ></td>
			<td align="left" class="medblack"><label for="criminal-records">&nbsp;Possible Criminal Records</label></td>
			<td align="right" class="medblack">&nbsp;</td>
	      </TMPL_IF>
	      </tr>
              </TMPL_UNLESS>

	      <TMPL_UNLESS DELETE_BANKRUPTCY>
	      <tr>
	      <TMPL_IF DISABLE_BANKRUPTCY>
	        <td width="1%">&nbsp;</td>
			<td align="left" class="disabled_small">&nbsp;Bankruptcy&nbsp;(disabled)&nbsp;</td>
			<td align="right" class="disabled_small">&nbsp;</td>
	      <TMPL_ELSE>
	        <td width="1%"><input type="checkbox" name="bankruptcy" id="bankruptcy" value="1" <TMPL_VAR NAME=bankruptcy> ></td>
			<td align="left" class="medblack"><label for="bankruptcy">&nbsp;Bankruptcy</label> </td>
			<td align="right" class="medblack">&nbsp;</td>
	      </TMPL_IF>
	      </tr>
              </TMPL_UNLESS>

		  <TMPL_UNLESS DISABLE_DEA_RPT_OPT>
			  <TMPL_UNLESS DELETE_DEA>
			  <tr>
			  <TMPL_IF DISABLE_DEA>
				<td width="1%">&nbsp;</td>
				<td align="left" class="disabled_small">&nbsp;DEA Controlled Substances&nbsp;(disabled)&nbsp;</td>
				<td align="right" class="disabled_small">&nbsp;</td>
			  <TMPL_ELSE>
				<td width="1%"><input type="checkbox" name="dea-substances" id="dea-substances" value="1" <TMPL_VAR NAME=dea-substances> ></td>
				<td align="left" class="medblack"><label for="dea-substances">&nbsp;DEA Controlled Substances</label> </td>
				<td align="right" class="medblack">&nbsp;</td>
			  </TMPL_IF>
			  </tr>
			  </TMPL_UNLESS>
          </TMPL_UNLESS>
		  <TMPL_UNLESS DISABLE_FED_FIRE_EXP_RPT_OPT>
			  <TMPL_UNLESS DELETE_FIREARMS>
			  <tr>
			  <TMPL_IF DISABLE_FIREARMS>
				<td width="1%">&nbsp;</td>
				<td align="left" class="disabled_small">&nbsp;Federal Firearms and Explosives&nbsp;(disabled)&nbsp;</td>
				<td align="right" class="disabled_small">&nbsp;</td>
			  <TMPL_ELSE>
				<td width="1%"><input type="checkbox" name="firearms" id="firearms" value="1" <TMPL_VAR NAME=firearms> ></td>
				<td align="left" class="medblack"><label for="firearms">&nbsp;Federal Firearms and Explosives</label> </td>
				<td align="right" class="medblack">&nbsp;</td>
			  </TMPL_IF>
			  </tr>
			  </TMPL_UNLESS>
          </TMPL_UNLESS>

	      <TMPL_UNLESS DELETE_LIEN>
	      <tr>
	      <TMPL_IF DISABLE_LIEN>
	        <td width="1%">&nbsp;</td>
			<td align="left" class="disabled_small">&nbsp;Liens &amp; Judgments&nbsp;(disabled)&nbsp;</td>
			<td align="right" class="disabled_small">&nbsp;</td>
	      <TMPL_ELSE>
	        <td width="1%"><input type="checkbox" name="liens" id="liens" value="1" <TMPL_VAR NAME=liens> ></td>
			<td align="left" class="medblack"><label for="liens">&nbsp;Liens &amp; Judgments</label> </td>
			<td align="right" class="medblack">&nbsp;</td>
	      </TMPL_IF>
	      </tr>
              </TMPL_UNLESS>

	      <TMPL_UNLESS DELETE_PROF_LICENSE>
	      <tr>
	      <TMPL_IF DISABLE_PROF_LICENSE>
	        <td width="1%">&nbsp;</td>
			<td align="left" class="disabled_small">&nbsp;Professional Licenses&nbsp;(disabled)&nbsp;</td>
			<td align="right" class="disabled_small">&nbsp;</td>
	      <TMPL_ELSE>
	        <td width="1%"><input type="checkbox" name="professional-licenses" id="professional-licenses" value="1" <TMPL_VAR NAME="professional-licenses"> ></td>
			<td align="left" class="medblack"><label for="professional-licenses">&nbsp;Professional Licenses</label>&nbsp;</td>
			<td align="right" class="medblack">&nbsp;</td>
	      </TMPL_IF>
	      </tr>
              </TMPL_UNLESS>

	      <TMPL_UNLESS DELETE_DL>
	      <tr>
	      <TMPL_IF DISABLE_DL>
	        <td width="1%">&nbsp;</td>
			<td align="left" class="disabled_small">&nbsp;Include Driver Licenses Information&nbsp;(disabled)&nbsp;</td>
			<td align="right" class="disabled_small">&nbsp;</td>
	      <TMPL_ELSE>
	        <td width="1%"><input type="checkbox" name="driver-license" id="driver-license" value="1" <TMPL_VAR NAME=driver-license> ></td>
			<td align="left" class="medblack"><label for="driver-license">&nbsp;Include Driver Licenses Information</label></td>
			<td align="right" class="medblack">&nbsp;</td>
	      </TMPL_IF>
	      </tr>
              </TMPL_UNLESS>

	      <TMPL_UNLESS DELETE_VARIETY_BUNDLE>
	      <tr>
	      <TMPL_IF DISABLE_VARIETY_BUNDLE>
	        <td width="1%">&nbsp;</td>
			<td align="left" class="disabled_small">&nbsp;Concealed Weapons Permits&nbsp;(disabled)&nbsp;</td>
			<td align="right" class="disabled_small">&nbsp;</td>
	      <TMPL_ELSE>
	        <td width="1%"><input type="checkbox" name="weapon-permits" id="weapon-permits" value="4" <TMPL_VAR NAME=weapon-permits> ></td>
	        <td align="left" class="medblack"><label for="weapon-permits">&nbsp;Concealed Weapons Permits</label>&nbsp;&nbsp;</td>
	        <td align="right" class="medblack">&nbsp;</td>
	      </TMPL_IF>
	      </tr>

	      <tr>
	      <TMPL_IF DISABLE_VARIETY_BUNDLE>
	        <td width="1%">&nbsp;</td>
			<td align="left" class="disabled_small">&nbsp;Voter Registrations&nbsp;(disabled)&nbsp;</td>
			<td align="right" class="disabled_small">&nbsp;</td>
	      <TMPL_ELSE>
	        <td width="1%"><input type="checkbox" name="voter-registrations" id="voter-registrations" value="4" <TMPL_VAR NAME=voter-registrations> ></td>
	        <td align="left" class="medblack"><label for="voter-registrations">&nbsp;Voter Registrations</label>&nbsp;&nbsp;</td>
	        <td align="right" class="medblack">&nbsp;</td>
	      </TMPL_IF>
	      </tr>

	      <tr>
	      <TMPL_IF DISABLE_VARIETY_BUNDLE>
	        <td width="1%">&nbsp;</td>
			<td align="left" class="disabled_small">&nbsp;Hunting/Fishing Permits&nbsp;(disabled)&nbsp;</td>
			<td align="right" class="disabled_small">&nbsp;</td>
	      <TMPL_ELSE>
	        <td width="1%"><input type="checkbox" name="hunting-fishing-licenses" id="hunting-fishing-licenses" value="4" <TMPL_VAR NAME=hunting-fishing-licenses> ></td>
	        <td align="left" class="medblack"><label for="hunting-fishing-licenses">&nbsp;Hunting/Fishing Permits</label>&nbsp;&nbsp;</td>
	        <td align="right" class="medblack">&nbsp;</td>
	      </TMPL_IF>
	      </tr>

	      <tr>
	      <TMPL_IF DISABLE_VARIETY_BUNDLE>
	        <td width="1%">&nbsp;</td>
			<td align="left" class="disabled_small">&nbsp;FAA Pilots&nbsp;(disabled)&nbsp;</td>
			<td align="right" class="disabled_small">&nbsp;</td>
	      <TMPL_ELSE>
	        <td width="1%"><input type="checkbox" name="faa-certificates" id="faa-certificates" value="4" <TMPL_VAR NAME=faa-certificates> ></td>
	        <td align="left" class="medblack"><label for="faa-certificates">&nbsp;FAA Pilots</label>&nbsp;&nbsp;</td>
	        <td align="right" class="medblack">&nbsp;</td>
	      </TMPL_IF>
	      </tr>
              </TMPL_UNLESS>

	      <TMPL_UNLESS DELETE_PAW>
	      <tr>
	      <TMPL_IF DISABLE_PAW>
	        <td width="1%">&nbsp;</td>
			<td align="left" class="disabled_small">&nbsp;People at Work&nbsp;(disabled)&nbsp;</td>
			<td align="right" class="disabled_small">&nbsp;</td>
	      <TMPL_ELSE>
	        <td width="1%"><input type="checkbox" name="people-at-work" id="people-at-work" value="4" <TMPL_VAR NAME=people-at-work> ></td>
	        <td align="left" class="medblack"><label for="people-at-work">&nbsp;People at Work</label>&nbsp;&nbsp;</td>
	        <td align="right" class="medblack">&nbsp;</td>
	      </TMPL_IF>
	      </tr>
              </TMPL_UNLESS>


	      <TMPL_IF NAME="TABLE_BORDERS_OPTION">
		  <tr>
		    <td width="1%"><input type="checkbox" name="table-borders" id="table-borders" value="4" <TMPL_VAR NAME=table-borders> ></td>
		    <td align="left" class="medblack"><label for="table-borders">&nbsp;Display table borders on report</label>&nbsp;&nbsp;</td>
		    <td align="right" class="medblack">&nbsp;</td>
		  </tr>
	      </TMPL_IF>
	      <TMPL_IF NAME="ICONS_OPTION">
		  <tr>
		    <td width="1%"><input type="checkbox" name="section-icons" id="section-icons" value="4" <TMPL_VAR NAME=section-icons> ></td>
		    <td align="left" class="medblack"><label for="section-icons">&nbsp;Display icons on report</label>&nbsp;&nbsp;</td>
		    <td align="right" class="medblack">&nbsp;</td>
		  </tr>
	      </TMPL_IF>

          </table>
      </td>
    </tr>


    <tr>
      <td width="49%" valign="top">
          <table border="0" cellpadding="0" cellspacing="0" width="100%">
		  <tr>
		    <td width="1%"><input type="checkbox" name="neighbors" id="neighbors" value="11" <TMPL_VAR NAME=neighbors> ></td>
		    <td align="left" class="medblack"><label for="neighbors">&nbsp;Neighbors</label></td>
		  </tr>
		  <tr>
                    <td>&nbsp;</td>
		    <td align="left" class="smallblack">
		    Include Neighbors for
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
		    </select> Address(es)
		    </td>
		   </tr>
		   <tr>
                    <td>&nbsp;</td>
		    <td align="left" class="smallblack">
		    Include
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

      <td></td>

      <td width="49%" valign="top">
          <table border="0" cellpadding="0" cellspacing="0" width="100%">
                  <TMPL_UNLESS DELETE_RELATIVES>
		  <tr>
		    <td width="1%"><input type="checkbox" name="relatives" id="relatives" value="8" <TMPL_VAR NAME=relatives>></td>
		    <td align="left" class="medblack"><label for="relatives">&nbsp;Relatives</label></td>
		  </tr>
		  <tr>
                    <td>&nbsp;</td>
		    <td align="left" class="smallblack">
		    <select name="relative-depth">
		    <option value="1"<TMPL_IF NAME="relative-depth-1"> SELECTED</TMPL_IF>>1</option>
		    <option value="2"<TMPL_IF NAME="relative-depth-2"> SELECTED</TMPL_IF>>2</option>
		    <option value="3"<TMPL_IF NAME="relative-depth-3"> SELECTED</TMPL_IF>>3</option>
		    </select>
		    Degrees of Separation
		    </td>
		  </tr>
                  </TMPL_UNLESS>
	  </table>
      </td>
   </tr>
    <tr>
      <td colspan="3" valign="top"><div id="lineVertRedDot"></div></td>
    </tr>

    <TMPL_IF SHOW_ADDED_REPORT_OPTIONS>
      <tr>
        <td colspan="3" valign="top">
          <table border="0" cellpadding="0" cellspacing="0" width="100%">
            <tr>
              <td align="left" class="medblack"><b>Additional Report Options:<font color="#ed1c24">&nbsp;</font></b></td>
            </tr>
          </table>
        </td>
      </tr>

      <tr>
        <TMPL_IF SHOW_ADDED_REPORT_FDN>
          <td width="49%" valign="top">
            <table border="0" cellpadding="0" cellspacing="0" width="100%">
              <tr>
                <td width="1%" class="disabled_medblack" ><input type="checkbox" name="fdn-network" id="fdn-network" value="1" <TMPL_IF NAME="MYACCOUNT_PREFERENCES"><TMPL_VAR NAME="fdn-network"> onclick="toggleFDNoptions(this)"<TMPL_ELSE><TMPL_IF NAME="FRAUD_DEFENSE_GLBA_INVALID">disabled="disabled" <TMPL_ELSE><TMPL_VAR NAME="fdn-network"> onclick="toggleFDNoptions(this)"</TMPL_IF></TMPL_IF> ></td>
                <td align="left" colspan="2" class="medblack"><label for="fdn-network">Include LexisNexis&reg; Fraud Defense Network&nbsp;<img src="<TMPL_VAR NAME='IMGPATH'>/star.gif" border="0" width="11" height="10" alt="See Note Below Regarding Charges"></label></td>
                <td align="right" class="medblack">&nbsp;</td>
              </tr>
              <TMPL_UNLESS DO_NOT_DISPLAY_FDN_REPORT_SUBJECT>
              <TMPL_UNLESS DISABLE_FDN_REPORT_SUBJECT>
              <tr>
                <td width="1%">&nbsp;&nbsp;&nbsp;&nbsp;</td>
                <td width="1%"><input type="checkbox" name="fdn-subjectonly" id="fdn-subjectonly" value="1" <TMPL_IF NAME="MYACCOUNT_PREFERENCES"><TMPL_VAR NAME="fdn-subjectonly"> onclick="if(checkFDNtopoption(this)){change_total(document.getElementById('fdn-network'),<TMPL_VAR NAME='fdn-network-price'>,document.forms[0].REPORT_TOTAL,document.forms[0].REPORT_PRE_TOTAL);}" <TMPL_ELSE><TMPL_IF NAME="FRAUD_DEFENSE_GLBA_INVALID">disabled="disabled" <TMPL_ELSE><TMPL_VAR NAME="fdn-subjectonly"> onclick="if(checkFDNtopoption(this)){change_total(document.getElementById('fdn-network'),<TMPL_VAR NAME='fdn-network-price'>,document.forms[0].REPORT_TOTAL,document.forms[0].REPORT_PRE_TOTAL);}" </TMPL_IF></TMPL_IF> ></td>
                <td align="left" class="medblack"><label for="fdn-subjectonly">&nbsp;Fraud Defense Network - Subject Only&nbsp;<img src="<TMPL_VAR NAME='IMGPATH'>/star.gif" border="0" width="11" height="10" alt="See Note Below Regarding Charges"><font color="#ed1c24">&nbsp;</label></td>
                <td align="right" class="medblack">&nbsp;</td>
              </tr>
              </TMPL_UNLESS>
              </TMPL_UNLESS>
              <TMPL_UNLESS DO_NOT_DISPLAY_FDN_REPORT_ALL>
              <TMPL_UNLESS DISABLE_FDN_REPORT_ALL>
              <tr>
                <td width="1%">&nbsp;&nbsp;&nbsp;&nbsp;</td>
                <td width="1%"><input type="checkbox" name="fdn-associations" id="fdn-associations" value="1" <TMPL_IF NAME="MYACCOUNT_PREFERENCES"><TMPL_VAR NAME="fdn-associations"> onclick="if(checkFDNtopoption(this)){change_total(document.getElementById('fdn-network'),<TMPL_VAR NAME='fdn-network-price'>,document.forms[0].REPORT_TOTAL,document.forms[0].REPORT_PRE_TOTAL);}" <TMPL_ELSE><TMPL_IF NAME="FRAUD_DEFENSE_GLBA_INVALID">disabled="disabled" <TMPL_ELSE><TMPL_VAR NAME="fdn-associations"> onclick="if(checkFDNtopoption(this)){change_total(document.getElementById('fdn-network'),<TMPL_VAR NAME='fdn-network-price'>,document.forms[0].REPORT_TOTAL,document.forms[0].REPORT_PRE_TOTAL);}" </TMPL_IF></TMPL_IF> ></td>
                <td align="left" class="medblack"><label for="fdn-associations">&nbsp;Fraud Defense Network - All Associations&nbsp;<img src="<TMPL_VAR NAME='IMGPATH'>/star.gif" border="0" width="11" height="10" alt="See Note Below Regarding Charges"><font color="#ed1c24">&nbsp;</label></td>
                <td align="right" class="medblack">&nbsp;</td>
              </tr>
              </TMPL_UNLESS>
              </TMPL_UNLESS>
              <tr>
                <td colspan="4">
                  <table  border="0" cellpadding="0" cellspacing="4" width="100%">
                    <TMPL_UNLESS NAME="MYACCOUNT_PREFERENCES">
                      <TMPL_IF NAME="FRAUD_DEFENSE_GLBA_INVALID">
                      <tr>
                        <td class="disabled_small">Fraud Defense Network report options currently disabled</td>
                      </tr>
                      </TMPL_IF>
                    </TMPL_UNLESS>
                  </table>
                <td>
              <tr>
            </table>
          </td>
          <td></td>
        </TMPL_IF>
        <td width="49%" valign="top">
            <table border="0" cellpadding="0" cellspacing="0" width="100%">
  	      <TMPL_UNLESS DELETE_RT_MVR>
  		<tr>
  		  <TMPL_IF DISABLE_RT_MVR>
  		    <td width="1%">&nbsp;</td>
  		    <td align="left" class="disabled_small">&nbsp;Include Real-Time Vehicle(s) <br />Registration&nbsp;(disabled)&nbsp;</td>
  		    <td align="right" class="disabled_small">&nbsp;</td>
  		  <TMPL_ELSE>
  		    <td width="1%"><input type="checkbox" name="rt-motor-vehicles" id="rt-motor-vehicles" value="1" <TMPL_VAR NAME=rt-motor-vehicles> ></td>
  		    <td align="left" class="medblack"><label for="rt-motor-vehicles">&nbsp;Include Real-Time Vehicle(s) <br />&nbsp;Registration&nbsp;<img src="<TMPL_VAR NAME='IMGPATH'>/star.gif" border="0" width="11" height="10" alt="See Note Below Regarding Charges"></label></td>
  		    <td align="right" class="medblack">&nbsp;</td>
  		  </TMPL_IF>
  		</tr>
  	      </TMPL_UNLESS>
  	  </table>
        </td>
      </tr>
      <tr>
        <td colspan="3" valign="top">
          <table border="0" cellpadding="0" cellspacing="0" width="100%">
            <tr><td></td></tr>
            <tr>
              <td width="100%" align="left" class="smallblack">
                   <img src="<TMPL_VAR NAME='IMGPATH'>/star.gif" border="0" width="11" height="10" alt="See Note Below Regarding Charges">&nbsp;
                   -Indicates an optional add-on and additional charges and coverage restrictions will apply.
              </td>
  	    </tr>
  	  </table>
        </td>
      </tr>
      <tr><td colspan="3" valign="top"><div id="lineVertRedDot"></div></td></tr>
    </TMPL_IF>

    <tr>
      <td width="49%" valign="top">
          <table border="0" cellpadding="0" cellspacing="0" width="100%">
		  <tr>
		    <td align="left" class="medblack"><b>Select Report Type:&nbsp;</b></td>
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

      <td></td>

      <td width="49%" valign="top"></td>
   </tr>


    <tr>
      <td width="49%" valign="top">
          <table border="0" cellpadding="0" cellspacing="0" width="100%">
		  <tr>
		    <td width="1%"><input type="checkbox" name="prompt" id="prompt" value="1" <TMPL_VAR NAME=prompt> ></td>
		    <td align="left" class="medblack"><label for="prompt">&nbsp;Prompt me for these options for each report.</label></td>
		  </tr>
	  </table>
      </td>

      <td></td>

      <td width="49%" valign="top">
          <table border="0" cellpadding="0" cellspacing="0" width="100%">
		  <tr>
                   <TMPL_IF NAME="ENABLE_SAVE_REPORT">
                      <TMPL_IF NAME="REPORT_MANAGER_OFF">
			    <td width="1%"  class="disabled_medblack"><input type="checkbox" name="save-report" id="save-report" value="1" <TMPL_VAR NAME="save-report"> readonly onChange="this.checked = !this.checked"></td>
			    <td align="left" class="disabled_medblack"><label for="relatives">&nbsp;(Saving Reports currently not available).</td>
		      <TMPL_ELSE>
			    <td width="1%"><input type="checkbox" name="save-report" id="save-report" value="1" <TMPL_VAR NAME="save-report"> ></td>
			    <td align="left" class="medblack"><label for="save-report">&nbsp;Save report for later access.</label></td>
		      </TMPL_IF>
		   <TMPL_ELSE>
		   <td colspan="2"></td>
		   </TMPL_IF>

		    <!--<td width="1%"><input type="checkbox" name="relatives" id="relatives" value="8" <TMPL_VAR NAME=relatives>></td>
		    <td align="left" class="medblack"><label for="relatives">&nbsp;Relatives</label></td>-->
		  </tr>
	  </table>
      </td>
   </tr>




</table>



<!-- End short_comprehensive_report_body.tpl -->

