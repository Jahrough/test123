<!-- Begin short_colcomp_report_body.tpl -->

   <input type="hidden" name="col_comp_report" id="col_comp_report" value="<TMPL_VAR NAME="COL_COMP_REPORT">">
   <input type="hidden" name="LINKED_COMP" id="linked_comp" value="<TMPL_VAR NAME="LINKED_COMP">">

   <table width="740" align="center" >
      <tr>
         <td align="left" style=" FONT: 15px Arial, Helvetica, sans-serif; COLOR: #000000; ">
            <b><TMPL_UNLESS HIDE_PRICES>Base Report Price:&nbsp;&nbsp;$<TMPL_VAR NAME="base-report-price"><TMPL_ELSE>Base Report Features:</TMPL_UNLESS>&nbsp;&nbsp;(NON-FCRA Report Features)&nbsp;</b></td>
         </td>
      </tr>
   </table>
   <table width="740" align="center" cellpadding="2" border="0" cellspacing="4" style="border-radius:6px; border: solid #ccc 2px;">

<TMPL_IF NAME="PREFERENCES_ERROR_MESSAGE">
  <tr>
    <td align="center" colspan="3"><TMPL_VAR NAME="PREFERENCES_ERROR_MESSAGE"></td>
  </tr>
</TMPL_IF>
    <tr>
      <td width="56%" valign="top">
          <table border="0" cellpadding="0" cellspacing="0" width="100%">
          
          <tr>
            <td width="1%">
               <input type="checkbox" id="imposters" name="imposters" value="2" <TMPL_VAR NAME="imposters">>
            </td>
            <td align="left" class="medblack">
               <label for="imposters">&nbsp;Others Associated with Subject&apos;s SSN&nbsp;&nbsp;</label>
            </td>
            <TMPL_UNLESS NAME="HIDE_PRICES"><td align="right" class="medblue">Included in Base Price&nbsp;&nbsp;</td></TMPL_UNLESS>
          </tr>


          <tr>
            <td width="1%">
	            <input type="checkbox" name="akas" id="akas" value="5" <TMPL_VAR NAME=akas>>
            </td>
            <td align="left" class="medblack">
               <label for="akas">&nbsp;Name Variations, SSN Summary, DOBs</label>&nbsp;&nbsp;
            </td>
            <TMPL_UNLESS NAME="HIDE_PRICES"><td align="right" class="medblue">Included in Base Price&nbsp;&nbsp;</td></TMPL_UNLESS>
          </tr>


<!--            
          <tr>
            <td width="1%">
               <input type="checkbox" id="verify-ssns" name="verify-ssns" value="5" <TMPL_VAR NAME="verify-ssns">>
            </td>
            <td align="left" class="medblack">
               <label for="verify-ssns">&nbsp;Date and Location where SSN Issued&nbsp;&nbsp;</label>
            </td>
            <TMPL_UNLESS NAME="HIDE_PRICES"><td align="right" class="medblue">Included in Base Price&nbsp;&nbsp;</td></TMPL_UNLESS>
          </tr>
-->
          <tr>
            <td width="1%"><input type="checkbox" id="report-map" name="report-map" value="10" <TMPL_VAR NAME="report-map">></td>
            <td align="left" class="medblack"><label for="report-map">&nbsp;Comprehensive Report Summary&nbsp;&nbsp;</label></td>
            <TMPL_UNLESS NAME="HIDE_PRICES"><td align="right" class="medblue">Included in Base Price&nbsp;&nbsp;</td></TMPL_UNLESS>
          </tr>
         
	      <tr>
	         <td width="1%">
	            <input type="checkbox" name="processed-header" id="processed-header" value="5" <TMPL_VAR NAME=processed-header>>
            </td>            
            <td align="left" class="medblack">
               <label for="processed-header">&nbsp;Include Company Header</label>&nbsp;&nbsp;
            </td>
            <TMPL_UNLESS NAME="HIDE_PRICES"><td align="right" class="medblue">Included in Base Price&nbsp;&nbsp;</td></TMPL_UNLESS>
	         <td align="right" class="medblack">&nbsp;</td>
	      </tr>

          

<!--          
          <tr>
            <td width="1%">
	            <input type="checkbox" name="processed-header" id="processed-header" value="5" <TMPL_VAR NAME=processed-header>>
            </td>
            <td align="left" class="medblack"><label for="report-map">&nbsp;Comprehensive Report Summary&nbsp;&nbsp;</label></td>
            <TMPL_UNLESS NAME="HIDE_PRICES"><td align="right" class="medblue">Include Company Header&nbsp;&nbsp;</td></TMPL_UNLESS>
          </tr>
-->


      </table>
      </td>

      <td></td>

      <td width="42%" valign="top">
          <table border="0" cellpadding="0" cellspacing="0" width="100%">
          <tr>
            <td width="1%"><input type="checkbox" id="address-map" name="address-map" value="10" <TMPL_VAR NAME="address-map">></td>
            <td align="left" class="medblack"><label for="address-map">&nbsp;Address Summary&nbsp;&nbsp;</label></td>
            <TMPL_UNLESS NAME="HIDE_PRICES"><td align="right" class="medblue">Included in Base Price&nbsp;&nbsp;</td></TMPL_UNLESS>
          </tr>

          <TMPL_IF SHOW_EDUCATION_DETAILS>
            <tr>
              <td width="1%"><input type="checkbox" name="education-map" id="education-map" value="10" <TMPL_VAR NAME=education-map>></td>
              <td align="left" class="medblack"><label for="education-map">&nbsp;Possible Education&nbsp;&nbsp;</label></td>
              <TMPL_UNLESS NAME="HIDE_PRICES"><td align="right" class="medblue">Included in Base Price&nbsp;&nbsp;</td></TMPL_UNLESS>
            </tr>
          </TMPL_IF>

<!--
          <tr>
            <td width="1%"><input type="checkbox" id="processed-header" name="processed-header" value="5" <TMPL_VAR NAME="processed-header">></td>
            <td align="left" class="medblack"><label for="processed-header">&nbsp;Include Company Header&nbsp;&nbsp;</label></td>
            <TMPL_UNLESS NAME="HIDE_PRICES"><td align="right" class="medblue">Included in Base Price&nbsp;&nbsp;</td></TMPL_UNLESS>
          </tr>
-->          
      </table>
      </td>
   </tr>

</table>

  <table width="740" align="center" >
     <tr>
         <td align="left" style=" FONT: 15px Arial, Helvetica, sans-serif; COLOR: #000000; ">
            <b>Additional Report Options</b>
         </td>
     </tr>
  </table>


<table width="740" align="center" cellpadding="2" border="0" cellspacing="4" style="border-radius:6px; border: solid #ccc 2px;">

<!-- <table width="740" align="center" cellpadding="2" border="0" cellspacing="4" style="background-color:#F4F0DE; border: solid #ccc 1px;"> -->
<!--  
  <tr>
    <td align="left" colspan="3" class="medblack"><b>&nbsp;Additional Report Options:</b></td>
  </tr>
-->  


      <tr>
        <td width="45%" valign="top">

        <table border="0" cellpadding="0" cellspacing="0" width="100%">

		  <tr>
		    <td colspan="2" align="left" class="medblack"><b>NON-FCRA Report Options:&nbsp;</b></td>
			<td align="right" class="medblack">&nbsp;</td>
                    </tr>
          <tr>
            <td width="1%"><input type="checkbox" id="associates" name="associates" value="4" <TMPL_VAR NAME="associates"> onClick="change_total(this, <TMPL_VAR NAME='associates-price'>,document.forms[0].REPORT_TOTAL,document.forms[0].REPORT_PRE_TOTAL)"></td>
            <td align="left" class="medblack"><label for="associates">&nbsp;Associates&nbsp;&nbsp;</label></td>
            <td align="right" class="medblue"><TMPL_UNLESS HIDE_PRICES>$<TMPL_VAR NAME="associates-price"></TMPL_UNLESS>&nbsp;</td>
          </tr>
          <tr>

        <TMPL_UNLESS DELETE_REAL_PROPERTY>
        <TMPL_IF DISABLE_REAL_PROPERTY>
            <td width="1%">&nbsp;</td>
            <td align="left" class="disabled_small">&nbsp;Real Property Locator&nbsp;(disabled)&nbsp;</td>
            <td align="right" class="disabled_small"><TMPL_UNLESS HIDE_PRICES>$<TMPL_VAR NAME="property-price"></TMPL_UNLESS>&nbsp;</td>
        <TMPL_ELSE>
            <td width="1%"><input type="checkbox" id="property" name="property" value="11" <TMPL_VAR NAME=property> onClick="change_total(this, <TMPL_VAR NAME='property-price'>,document.forms[0].REPORT_TOTAL,document.forms[0].REPORT_PRE_TOTAL)"></td>
            <td align="left" class="medblack"><label for="property">&nbsp;Real Property Locator&nbsp;&nbsp;</label></td>
            <td align="right" class="medblue"><TMPL_UNLESS HIDE_PRICES>$<TMPL_VAR NAME="property-price"></TMPL_UNLESS>&nbsp;</td>
        </TMPL_IF>
        </TMPL_UNLESS>
          </tr>

                 <!--
		 <TMPL_UNLESS DISABLE_DEA_RPT_OPT>
			 <TMPL_UNLESS DELETE_DEA>
			  <tr>
				<TMPL_UNLESS DISABLE_DEA>
				<td width="1%"><input type="checkbox" id="dea-substances" name="dea-substances" value="1" <TMPL_VAR NAME="dea-substances"> onClick="change_total(this, <TMPL_VAR NAME='dea-substances-price'>, document.forms[0].REPORT_TOTAL,document.forms[0].REPORT_PRE_TOTAL)"></td>
						<td align="left" class="medblack"><label for="dea-substances">&nbsp;DEA Controlled Substances</label></td>
						<td align="right" class="medblue"><TMPL_UNLESS HIDE_PRICES>$<TMPL_VAR NAME="dea-substances-price"></TMPL_UNLESS>&nbsp;</td>
				<TMPL_ELSE>
				<td width="1%">&nbsp;</td>
						<td align="left" class="disabled_small">&nbsp;DEA Controlled Substances (disabled)</td>
						<td align="right" class="disabled_small"><TMPL_UNLESS HIDE_PRICES>$<TMPL_VAR NAME="dea-substances-price"></TMPL_UNLESS>&nbsp;</td>
				</TMPL_UNLESS>
			  </tr>
			  </TMPL_UNLESS>
		  </TMPL_UNLESS>

		 <TMPL_UNLESS DISABLE_FED_FIRE_EXP_RPT_OPT>
			 <TMPL_UNLESS DELETE_FIREARMS>
			  <tr>
				<TMPL_UNLESS DISABLE_FIREARMS>
				<td width="1%"><input type="checkbox" id="firearms" name="firearms" value="1" <TMPL_VAR NAME="firearms"> onClick="change_total(this, <TMPL_VAR NAME='firearms-price'>, document.forms[0].REPORT_TOTAL,document.forms[0].REPORT_PRE_TOTAL)"></td>
						<td align="left" class="medblack"><label for="firearms">&nbsp;Federal Firearms and Explosives</label></td>
						<td align="right" class="medblue"><TMPL_UNLESS HIDE_PRICES>$<TMPL_VAR NAME="firearms-price"></TMPL_UNLESS>&nbsp;</td>
				<TMPL_ELSE>
				<td width="1%">&nbsp;</td>
						<td align="left" class="disabled_small">&nbsp;Federal Firearms and Explosives (disabled)</td>
						<td align="right" class="disabled_small"><TMPL_UNLESS HIDE_PRICES>$<TMPL_VAR NAME="firearms-price"></TMPL_UNLESS>&nbsp;</td>
				</TMPL_UNLESS>
			  </tr>
			  </TMPL_UNLESS>
		  </TMPL_UNLESS>
                  -->


         <TMPL_IF DO_SHOW_PHONES_PLUS>
         <TMPL_UNLESS DELETE_CUSTOM_DA_WIRELESS>
         <TMPL_UNLESS DISABLE_DA_WIRELESS>
             <input type="hidden" name="phones-plus" id="phones-plus" value="1">
         </TMPL_UNLESS>
         </TMPL_UNLESS>
         </TMPL_IF>

<TMPL_IF NAME="XXX">
         <TMPL_UNLESS LE>
         <TMPL_UNLESS GOV>
         <TMPL_UNLESS DELETE_EMAIL>
          <tr>
            <TMPL_UNLESS DISABLE_EMAIL>
            <td width="1%"><input type="checkbox" id="email-address" name="email-address" value="1" <TMPL_VAR NAME="email-address"> onClick="change_total(this, <TMPL_VAR NAME='email-address-price'>, document.forms[0].REPORT_TOTAL,document.forms[0].REPORT_PRE_TOTAL)"></td>
                    <td align="left" class="medblack"><label for="email-address">&nbsp;Email Addresses</label></td>
                    <td align="right" class="medblue"><TMPL_UNLESS HIDE_PRICES>$<TMPL_VAR NAME="email-address-price"></TMPL_UNLESS>&nbsp;</td>
            <TMPL_ELSE>
            <td width="1%">&nbsp;</td>
                    <td align="left" class="disabled_small">&nbsp;Email Addresses (disabled)</td>
                    <td align="right" class="disabled_small"><TMPL_UNLESS HIDE_PRICES>$<TMPL_VAR NAME="email-address-price"></TMPL_UNLESS>&nbsp;</td>
            </TMPL_UNLESS>
          </tr>
          </TMPL_UNLESS>
          </TMPL_UNLESS>
          </TMPL_UNLESS>
</TMPL_IF>          

        <TMPL_IF ENH_FLAT_RATE_COMP>
          <TMPL_UNLESS DELETE_CUSTOM_EMAIL>
          <TMPL_UNLESS DELETE_EMAIL>
          <tr>
        <TMPL_IF DISABLE_EMAIL>
            <td width="1%">&nbsp;</td>
            <td align="left" class="disabled_small">&nbsp;Email Addresses (disabled)</td>
            <td align="right" class="disabled_small"><TMPL_UNLESS HIDE_PRICES>$<TMPL_VAR NAME="email-address-price"></TMPL_UNLESS>&nbsp;</td>
        <TMPL_ELSE>
            <td width="1%"><input type="checkbox" id="email-address" name="email-address" value="1" <TMPL_VAR NAME="email-address"> onClick="change_total(this, <TMPL_VAR NAME='email-address-price'>, document.forms[0].REPORT_TOTAL,document.forms[0].REPORT_PRE_TOTAL)"></td>
            <td align="left" class="medblack"><label for="email-address">&nbsp;Email Addresses</label></td>
            <td align="right" class="medblue"><TMPL_UNLESS HIDE_PRICES>$<TMPL_VAR NAME="email-address-price"></TMPL_UNLESS>&nbsp;</td>
          </TMPL_IF>
          </tr>
          </TMPL_UNLESS>
          </TMPL_UNLESS>
         </TMPL_IF>

             <TMPL_UNLESS DELETE_PAW>
              <tr>
                <TMPL_UNLESS DISABLE_PAW>
                <td width="1%"><input type="checkbox" id="people-at-work" name="people-at-work" value="1" <TMPL_VAR NAME="people-at-work"> onClick="change_total(this, <TMPL_VAR NAME='people-at-work-price'>, document.forms[0].REPORT_TOTAL,document.forms[0].REPORT_PRE_TOTAL)"></td>
                        <td align="left" class="medblack"><label for="people-at-work">&nbsp;People at Work Locator</label></td>
                        <td align="right" class="medblue"><TMPL_UNLESS HIDE_PRICES>$<TMPL_VAR NAME="people-at-work-price"></TMPL_UNLESS>&nbsp;</td>
                <TMPL_ELSE>
                <td width="1%">&nbsp;</td>
                        <td align="left" class="disabled_small">&nbsp;People at Work Locator (disabled)</td>
                        <td align="right" class="disabled_small"><TMPL_UNLESS HIDE_PRICES>$<TMPL_VAR NAME="people-at-work-price"></TMPL_UNLESS>&nbsp;</td>
                </TMPL_UNLESS>
              </tr>
              </TMPL_UNLESS>

         <TMPL_UNLESS DELETE_UCC>
          <tr>
        <TMPL_UNLESS DISABLE_UCC>
            <td width="1%"><input type="checkbox" id="uccs" name="uccs" value="1" <TMPL_VAR NAME="uccs"> onClick="change_total(this, <TMPL_VAR NAME='uccs-price'>, document.forms[0].REPORT_TOTAL,document.forms[0].REPORT_PRE_TOTAL)"></td>
            <td align="left" class="medblack"><label for="uccs">&nbsp;UCC Filings</label></td>
            <td align="right" class="medblue"><TMPL_UNLESS HIDE_PRICES>$<TMPL_VAR NAME="uccs-price"></TMPL_UNLESS>&nbsp;</td>
        <TMPL_ELSE>
            <td width="1%">&nbsp;</td>
            <td align="left" class="disabled_small">&nbsp;UCC Filings (disabled)</td>
            <td align="right" class="disabled_small"><TMPL_UNLESS HIDE_PRICES>$<TMPL_VAR NAME="uccs-price"></TMPL_UNLESS>&nbsp;</td>
        </TMPL_UNLESS>
          </tr>
          </TMPL_UNLESS>

             <TMPL_UNLESS DELETE_CUSTOM_JAILBOOKING>
             <TMPL_IF SHOW_JAIL_BOOKING_SEARCH>
         <TMPL_UNLESS DELETE_JAILBOOKING>
          <tr>
        <TMPL_UNLESS DISABLE_JAILBOOKING>
            <td width="1%"><input type="checkbox" id="jailbooking" name="jailbooking" value="1" <TMPL_VAR NAME="jailbooking"> onClick="change_total(this, <TMPL_VAR NAME="jailbooking-price">, document.forms[0].REPORT_TOTAL,document.forms[0].REPORT_PRE_TOTAL)"> </td>
            <td align="left" class="medblack"><label for="jailbooking">&nbsp;Jail Bookings<!-- <TMPL_UNLESS HIDE_PRICES> <img src="<TMPL_VAR NAME=IMGPATH>/star.gif" border="0" width="11" height="10" alt="See Note Below Regarding Charges"><img src="<TMPL_VAR NAME='IMGPATH'>/star.gif" border="0" width="11" height="10" alt="See Note Below Regarding Charges"></TMPL_UNLESS>--></label></td>
            <!-- <td align="right" class="medblue"><TMPL_UNLESS HIDE_PRICES>$<TMPL_VAR NAME=jailbooking-price></TMPL_UNLESS>&nbsp;</td> -->
        <TMPL_ELSE>
            <td width="1%">&nbsp;</td>
            <td align="left" class="disabled_small">&nbsp;Jail Bookings (disabled)<TMPL_UNLESS HIDE_PRICES> <img src="<TMPL_VAR NAME=IMGPATH>/star.gif" border="0" width="11" height="10" alt="See Note Below Regarding Charges"><img src="<TMPL_VAR NAME='IMGPATH'>/star.gif" border="0" width="11" height="10" alt="See Note Below Regarding Charges"></TMPL_UNLESS></td>
            <td align="right" class="disabled_small"><TMPL_UNLESS HIDE_PRICES>$<TMPL_VAR NAME=jailbooking-price></TMPL_UNLESS>&nbsp;</td>
        </TMPL_UNLESS>
          </tr>
          </TMPL_UNLESS>
              </TMPL_IF>
          </TMPL_UNLESS>


         <!--
         <TMPL_UNLESS DELETE_ACCIDENT>
            <TMPL_UNLESS DISABLE_ACCIDENT>
              <TMPL_IF NAME="NAT_ACC_ENABLE">
              <TMPL_UNLESS NAME="INS">
                <tr>
                  <td width="1%" valign="top"><input type="checkbox" id="accident" name="accident" value="1" <TMPL_VAR NAME="accident"> onClick="change_total(this, <TMPL_VAR NAME='accident-price'>, document.forms[0].REPORT_TOTAL,document.forms[0].REPORT_PRE_TOTAL);"></td>
                  <td align="left" class="medblack"><label for="accident">&nbsp;National Motor Vehicle Accidents&nbsp;</label></td>
                  <td align="right" class="medblue"><TMPL_UNLESS HIDE_PRICES>$<TMPL_VAR NAME="accident-price"></TMPL_UNLESS>&nbsp;</td>
                </tr>
              </TMPL_UNLESS>
              <TMPL_ELSE>
                <tr>
                  <td width="1%" valign="top"><input type="checkbox" id="accident" name="accident" value="1" <TMPL_VAR NAME="accident"> onClick="change_total(this, <TMPL_VAR NAME='accident-price'>, document.forms[0].REPORT_TOTAL,document.forms[0].REPORT_PRE_TOTAL);"></td>
                  <td align="left" class="medblack"><label for="accident">&nbsp;Florida Accidents&nbsp;</label></td>
                  <td align="right" class="medblue"><TMPL_UNLESS HIDE_PRICES>$<TMPL_VAR NAME="accident-price"></TMPL_UNLESS>&nbsp;</td>
                </tr>
              </TMPL_IF>
            <TMPL_ELSE>
              <TMPL_IF NAME="NAT_ACC_ENABLE">
              <TMPL_UNLESS NAME="INS">
              <tr>
                <td width="1%">&nbsp;</td>
                <td align="left" class="disabled_small">
                        &nbsp;National Motor Vehicle Accidents (disabled)&nbsp;
                </td>
                <td align="right" class="disabled_small"><TMPL_UNLESS HIDE_PRICES>$<TMPL_VAR NAME="accident-price"></TMPL_UNLESS>&nbsp;</td>
              </tr>
              </TMPL_UNLESS>
              <TMPL_ELSE>
              <tr>
                <td width="1%">&nbsp;</td>
                <td align="left" class="disabled_small">
                    &nbsp;Florida Accidents (disabled)&nbsp;
                </td>
                <td align="right" class="disabled_small"><TMPL_UNLESS HIDE_PRICES>$<TMPL_VAR NAME="accident-price"></TMPL_UNLESS>&nbsp;</td>
              </tr>
              </TMPL_IF>
            </TMPL_UNLESS>
         </TMPL_UNLESS>
         -->

         <TMPL_UNLESS DELETE_DL>
          <tr>
        <TMPL_UNLESS DISABLE_DL>
            <td width="1%"><input type="checkbox" id="driver-license" name="driver-license" value="1" <TMPL_VAR NAME=driver-license> onClick="change_total(this, <TMPL_VAR NAME='driver-license-price'>,document.forms[0].REPORT_TOTAL,document.forms[0].REPORT_PRE_TOTAL)"></td>
            <td align="left" class="medblack"><label for="driver-license">&nbsp;Driver Licenses Information</label></td>
            <td align="right" class="medblue"><TMPL_UNLESS HIDE_PRICES>&nbsp;&nbsp;$<TMPL_VAR NAME="driver-license-price"></TMPL_UNLESS>&nbsp;</td>
        <TMPL_ELSE>
            <td width="1%">&nbsp;</td>
            <td align="left" class="disabled_small">&nbsp;Driver Licenses Information (disabled)</td>
            <td align="right" class="disabled_small"><TMPL_UNLESS HIDE_PRICES>&nbsp;&nbsp;$<TMPL_VAR NAME="driver-license-price"></TMPL_UNLESS>&nbsp;</td>
        </TMPL_UNLESS>
          </tr>
          </TMPL_UNLESS>

         <TMPL_UNLESS DELETE_RT_MVR>
          <tr>
        <TMPL_UNLESS DISABLE_RT_MVR>
            <td width="1%"><input type="checkbox" id="motor-vehicles" name="motor-vehicles" value="1" <TMPL_VAR NAME="motor-vehicles"> onClick="change_total(this, <TMPL_VAR NAME='motor-vehicles-price'>,document.forms[0].REPORT_TOTAL,document.forms[0].REPORT_PRE_TOTAL)"></td>
            <td align="left" class="medblack"><label for="motor-vehicles">&nbsp;Include Motor Vehicle Locator</label></td>
            <td align="right" class="medblue"><TMPL_UNLESS HIDE_PRICES>&nbsp;&nbsp;$<TMPL_VAR NAME="motor-vehicles-price"></TMPL_UNLESS>&nbsp;</td>
        <TMPL_ELSE>
            <td width="1%">&nbsp;</td>
            <td align="left" class="disabled_small">&nbsp;Include Motor Vehicle Locator (disabled)</td>
            <td align="right" class="disabled_small"><TMPL_UNLESS HIDE_PRICES>&nbsp;&nbsp;$<TMPL_VAR NAME="motor-vehicles-price"></TMPL_UNLESS>&nbsp;</td>
        </TMPL_UNLESS>
          </tr>
          </TMPL_UNLESS>

	      <TMPL_IF INS>
	      <TMPL_UNLESS HIDE_RT_MVR>
	        <TMPL_UNLESS DELETE_RT_MVR>
	        <tr>
		  <TMPL_UNLESS DISABLE_RT_MVR>
		  <td width="1%"><input type="checkbox" id="rt-motor-vehicles" name="rt-motor-vehicles" value="1" <TMPL_VAR NAME="rt-motor-vehicles"> onClick="change_total(this, <TMPL_VAR NAME='rt-motor-vehicles-price'>,document.forms[0].REPORT_TOTAL,document.forms[0].REPORT_PRE_TOTAL)"></td>
			<td align="left" class="medblack"><label for="rt-motor-vehicles">&nbsp;Include Real-Time Vehicle(s) Registration</label>&nbsp;<img src="<TMPL_VAR NAME='IMGPATH'>/star.gif" border="0" width="11" height="10" alt="See Note Below Regarding Charges"><img src="<TMPL_VAR NAME='IMGPATH'>/star.gif" border="0" width="11" height="10" alt="See Note Below Regarding Charges"></td>
			<td align="right" class="medblue"><TMPL_UNLESS HIDE_PRICES>&nbsp;&nbsp;$<TMPL_VAR NAME="rt-motor-vehicles-price"></TMPL_UNLESS>&nbsp;</td>
		  <TMPL_ELSE>
		  <td width="1%">&nbsp;</td>
			<td align="left" class="disabled_small">&nbsp;Include Real-Time Vehicle(s) Registration (disabled)</td>
			<td align="right" class="disabled_small"><TMPL_UNLESS HIDE_PRICES>&nbsp;&nbsp;$<TMPL_VAR NAME="rt-motor-vehicles-price"></TMPL_UNLESS>&nbsp;</td>
		  </TMPL_UNLESS>
	        </tr>
	        </TMPL_UNLESS>

	        <tr>
	           <td>&nbsp;</td>
	           <td align="left" class="smallblack">&nbsp;Applicable standalone search price and coverage &nbsp;restrictions will apply. <b><font color="#ed1c24">&nbsp;NEW!</font></b></td>
	           <td></td>
	        </tr>
	      </TMPL_UNLESS>
	      </TMPL_IF>

         <TMPL_UNLESS DELETE_PROF_LICENSE>
          <tr>
        <TMPL_UNLESS DISABLE_PROF_LICENSE>
            <td width="1%"><input type="checkbox" id="professional-licenses" name="professional-licenses" value="1" <TMPL_VAR NAME="professional-licenses"> onClick="change_total(this, <TMPL_VAR NAME='professional-licenses-price'>, document.forms[0].REPORT_TOTAL,document.forms[0].REPORT_PRE_TOTAL)"></td>
            <td align="left" class="medblack"><label for="professional-licenses">&nbsp;Professional Licenses<TMPL_UNLESS HIDE_PRICES>&nbsp;<img src="<TMPL_VAR NAME='IMGPATH'>/star.gif" border="0" width="11" height="10" alt="See Note Below Regarding Charges"><img src="<TMPL_VAR NAME='IMGPATH'>/star.gif" border="0" width="11" height="10" alt="See Note Below Regarding Charges"></TMPL_UNLESS></label></td>
            <td align="right" class="medblue"><TMPL_UNLESS HIDE_PRICES>$<TMPL_VAR NAME=professional-licenses-price></TMPL_UNLESS>&nbsp;</td>
        <TMPL_ELSE>
            <td width="1%">&nbsp;</td>
            <td align="left" class="disabled_small">&nbsp;Professional Licenses (disabled)<TMPL_UNLESS HIDE_PRICES>&nbsp;<img src="<TMPL_VAR NAME='IMGPATH'>/star.gif" border="0" width="11" height="10" alt="See Note Below Regarding Charges"><img src="<TMPL_VAR NAME='IMGPATH'>/star.gif" border="0" width="11" height="10" alt="See Note Below Regarding Charges"></TMPL_UNLESS></td>
            <td align="right" class="disabled_small"><TMPL_UNLESS HIDE_PRICES>$<TMPL_VAR NAME="professional-licenses-price"></TMPL_UNLESS>&nbsp;</td>
        </TMPL_UNLESS>
          </tr>
          </TMPL_UNLESS>

         <TMPL_UNLESS DELETE_VOTER_REGISTRATION>
          <tr>

        <TMPL_UNLESS DISABLE_VOTER_REGISTRATION>
            <td width="1%"><input type="checkbox" id="voter-registrations" name="voter-registrations" value="1" <TMPL_VAR NAME="voter-registrations"> onClick="change_total(this, <TMPL_VAR NAME='voter-registrations-price'>, document.forms[0].REPORT_TOTAL,document.forms[0].REPORT_PRE_TOTAL)"></td>
            <td align="left" class="medblack"><label for="voter-registrations">&nbsp;Voter Registration Locator</label>&nbsp;</td>
            <td align="right" class="medblue"><TMPL_UNLESS HIDE_PRICES>$<TMPL_VAR NAME=voter-registrations-price></TMPL_UNLESS>&nbsp;</td>
        <TMPL_ELSE>
            <td width="1%">&nbsp;</td>
            <td align="left" class="disabled_small">&nbsp;Voter Registration Locator&nbsp; (disabled)</td>
            <td align="right" class="disabled_small"><TMPL_UNLESS HIDE_PRICES>$<TMPL_VAR NAME=variety-bundle-price></TMPL_UNLESS>&nbsp;</td>
        </TMPL_UNLESS>
          </tr>
          </TMPL_UNLESS>

        </table>
        </td>

        <td width="1%" nowrap class="unifont1"></td>

        <td width="54%" valign="top">
        <table border="0" cellpadding="0" cellspacing="0" width="100%">
		  <tr>
		    <td colspan="2" align="left" class="medblack"><b>FCRA Report Options:&nbsp;</b></td>
			<td align="right" class="medblack">&nbsp;</td>
                    </tr>
        <TMPL_UNLESS DISABLE_FCRA_COMP_REPORT>
         <TMPL_UNLESS DELETE_FCRA_REAL_PROPERTY>
          <tr>
        <TMPL_UNLESS DISABLE_FCRA_REAL_PROPERTY>
            <td width="1%"><input type="checkbox" id="fcra-property" name="fcra-property" value="1" <TMPL_VAR NAME="fcra-property"> onClick="change_total(this, <TMPL_VAR NAME='fcra-property-price'>, document.forms[0].REPORT_TOTAL,document.forms[0].REPORT_PRE_TOTAL)"></td>
            <td align="left" class="medblack"><label for="fcra-property">&nbsp;Possible Properties Owned<TMPL_UNLESS HIDE_PRICES> <img src="<TMPL_VAR NAME='IMGPATH'>/star.gif" border="0" width="11" height="10" alt="See Note Below Regarding Charges"><img src="<TMPL_VAR NAME='IMGPATH'>/star.gif" border="0" width="11" height="10" alt="See Note Below Regarding Charges"></TMPL_UNLESS></label></td>
            <td align="right" class="medblue"><TMPL_UNLESS HIDE_PRICES>$<TMPL_VAR NAME="fcra-property-price"></TMPL_UNLESS>&nbsp;</td>
        <TMPL_ELSE>
            <td width="1%">&nbsp;</td>
            <td align="left" class="disabled_small">&nbsp;Possible Properties Owned (disabled)<TMPL_UNLESS HIDE_PRICES> <img src="<TMPL_VAR NAME='IMGPATH'>/star.gif" border="0" width="11" height="10" alt="See Note Below Regarding Charges"><img src="<TMPL_VAR NAME='IMGPATH'>/star.gif" border="0" width="11" height="10" alt="See Note Below Regarding Charges"></TMPL_UNLESS></td>
            <td align="right" class="disabled_small"><TMPL_UNLESS HIDE_PRICES>$<TMPL_VAR NAME="fcra-property-price"></TMPL_UNLESS>&nbsp;</td>
        </TMPL_UNLESS>
          </tr>
          </TMPL_UNLESS>

         <TMPL_UNLESS DELETE_FCRA_CRIM>
          <tr>
        <TMPL_UNLESS DISABLE_FCA_CRIM>
            <td width="1%"><input type="checkbox" id="fcra-criminal-records" name="fcra-criminal-records" value="1" <TMPL_VAR NAME="fcra-criminal-records"> onClick="change_total(this, <TMPL_VAR NAME='fcra-criminal-records-price'>, document.forms[0].REPORT_TOTAL,document.forms[0].REPORT_PRE_TOTAL)"></td>
            <td align="left" class="medblack"><label for="fcra-criminal-records">&nbsp;Possible Criminal Records<TMPL_UNLESS HIDE_PRICES> <img src="<TMPL_VAR NAME='IMGPATH'>/star.gif" border="0" width="11" height="10" alt="See Note Below Regarding Charges"><img src="<TMPL_VAR NAME='IMGPATH'>/star.gif" border="0" width="11" height="10" alt="See Note Below Regarding Charges"></TMPL_UNLESS></label></td>
            <td align="right" class="medblue"><TMPL_UNLESS HIDE_PRICES>$<TMPL_VAR NAME="fcra-criminal-records-price"></TMPL_UNLESS>&nbsp;</td>
        <TMPL_ELSE>
            <td width="1%">&nbsp;</td>
            <td align="left" class="disabled_small">&nbsp;Possible Criminal Records (disabled)<TMPL_UNLESS HIDE_PRICES> <img src="<TMPL_VAR NAME='IMGPATH'>/star.gif" border="0" width="11" height="10" alt="See Note Below Regarding Charges"><img src="<TMPL_VAR NAME='IMGPATH'>/star.gif" border="0" width="11" height="10" alt="See Note Below Regarding Charges"></TMPL_UNLESS></td>
            <td align="right" class="disabled_small"><TMPL_UNLESS HIDE_PRICES>$<TMPL_VAR NAME="fcra-criminal-records-price"></TMPL_UNLESS>&nbsp;</td>
        </TMPL_UNLESS>
          </tr>
          </TMPL_UNLESS>

         <TMPL_UNLESS DELETE_FCRA_SEXPREDATOR>
          <tr>
        <TMPL_UNLESS DISABLE_FCRA_SEXPREDATOR>
            <td width="1%"><input type="checkbox" id="fcra-sexpredator" name="fcra-sexpredator" value="1" <TMPL_VAR NAME="fcra-sexpredator"> onClick="change_total(this, <TMPL_VAR NAME="fcra-sexpredator-price">, document.forms[0].REPORT_TOTAL,document.forms[0].REPORT_PRE_TOTAL)"></td>
            <td align="left" class="medblack"><label for="fcra-sexpredator">&nbsp;Sexual Offenses<TMPL_UNLESS HIDE_PRICES> <img src="<TMPL_VAR NAME=IMGPATH>/star.gif" border="0" width="11" height="10" alt="See Note Below Regarding Charges"><img src="<TMPL_VAR NAME='IMGPATH'>/star.gif" border="0" width="11" height="10" alt="See Note Below Regarding Charges"></TMPL_UNLESS></label></td>
            <td align="right" class="medblue"><TMPL_UNLESS HIDE_PRICES>$<TMPL_VAR NAME=fcra-sexpredator-price></TMPL_UNLESS>&nbsp;</td>
        <TMPL_ELSE>
            <td width="1%">&nbsp;</td>
            <td align="left" class="disabled_small">&nbsp;Sexual Offenses (disabled)<TMPL_UNLESS HIDE_PRICES> <img src="<TMPL_VAR NAME=IMGPATH>/star.gif" border="0" width="11" height="10" alt="See Note Below Regarding Charges"><img src="<TMPL_VAR NAME='IMGPATH'>/star.gif" border="0" width="11" height="10" alt="See Note Below Regarding Charges"></TMPL_UNLESS></td>
            <td align="right" class="disabled_small"><TMPL_UNLESS HIDE_PRICES>$<TMPL_VAR NAME=fcra-sexpredator-price></TMPL_UNLESS>&nbsp;</td>
        </TMPL_UNLESS>
          </tr>
          </TMPL_UNLESS>

         <TMPL_UNLESS DELETE_FCRA_BANKRUPTCY>
          <tr>
         <TMPL_UNLESS DISABLE_FCRA_BANKRUPTCY>
            <td width="1%"><input type="checkbox" id="fcra-bankruptcy" name="fcra-bankruptcy" value="1" <TMPL_VAR NAME="fcra-bankruptcy"> onClick="change_total(this, <TMPL_VAR NAME='fcra-bankruptcy-price'>, document.forms[0].REPORT_TOTAL,document.forms[0].REPORT_PRE_TOTAL)"></td>
            <td align="left" class="medblack"><label for="fcra-bankruptcy">&nbsp;Bankruptcy<TMPL_UNLESS HIDE_PRICES> <img src="<TMPL_VAR NAME='IMGPATH'>/star.gif" border="0" width="11" height="10" alt="See Note Below Regarding Charges"><img src="<TMPL_VAR NAME='IMGPATH'>/star.gif" border="0" width="11" height="10" alt="See Note Below Regarding Charges"></TMPL_UNLESS></label></td>
            <td align="right" class="medblue"><TMPL_UNLESS HIDE_PRICES>$<TMPL_VAR NAME="fcra-bankruptcy-price"></TMPL_UNLESS>&nbsp;</td>
        <TMPL_ELSE>
            <td width="1%">&nbsp;</td>
            <td align="left" class="disabled_small">&nbsp;Bankruptcy (disabled)</td>
            <td align="right" class="disabled_small"><TMPL_UNLESS HIDE_PRICES>$<TMPL_VAR NAME="fcra-bankruptcy-price"></TMPL_UNLESS>&nbsp;</td>
        </TMPL_UNLESS>
          </tr>
          </TMPL_UNLESS>

         <TMPL_UNLESS DELETE_FCRA_LIEN>
          <tr>
        <TMPL_UNLESS DISABLE_FCRA_LIEN>
            <td width="1%"><input type="checkbox" id="fcra-liens" name="fcra-liens" value="1" <TMPL_VAR NAME="fcra-liens"> onClick="change_total(this, <TMPL_VAR NAME='liens-price'>, document.forms[0].REPORT_TOTAL,document.forms[0].REPORT_PRE_TOTAL)"></td>
            <td align="left" class="medblack"><label for="fcra-liens">&nbsp;Liens and Judgments<TMPL_UNLESS HIDE_PRICES> <img src="<TMPL_VAR NAME='IMGPATH'>/star.gif" border="0" width="11" height="10" alt="See Note Below Regarding Charges"><img src="<TMPL_VAR NAME=IMGPATH>/star.gif" border="0" width="11" height="10" alt="See Note Below Regarding Charges"></TMPL_UNLESS></label></td>
            <td align="right" class="medblue"><TMPL_UNLESS HIDE_PRICES>$<TMPL_VAR NAME="fcra-liens-price"></TMPL_UNLESS>&nbsp;</td>
        <TMPL_ELSE>
            <td width="1%">&nbsp;</td>
            <td align="left" class="disabled_small">&nbsp;Liens and Judgments (disabled)</td>
            <td align="right" class="disabled_small"><TMPL_UNLESS HIDE_PRICES>$<TMPL_VAR NAME="fcra-liens-price"></TMPL_UNLESS>&nbsp;</td>
        </TMPL_UNLESS>
          </tr>
          </TMPL_UNLESS>

         <TMPL_UNLESS DELETE_VARIETY_BUNDLE>
         <tr>
            <TMPL_UNLESS DISABLE_VARIETY_BUNDLE>
               <td width="1%"><input type="checkbox" id="variety-bundle" name="variety-bundle" value="1" <TMPL_VAR NAME="variety-bundle"> onClick="change_total(this, <TMPL_VAR NAME='variety-bundle-price'>, document.forms[0].REPORT_TOTAL,document.forms[0].REPORT_PRE_TOTAL)"></td>
               <td align="left" class="medblack">
                  <label for="variety-bundle">&nbsp;Supplemental Data Sources</label>&nbsp;
                  <a href="javascript:javascript:show_supplemental();"><font size="1px">(Click for details)</font></a>
                  <TMPL_UNLESS HIDE_PRICES>&nbsp;<img src="<TMPL_VAR NAME='IMGPATH'>/star.gif" border="0" width="11" height="10" alt="See Note Below Regarding Charges"><img src="<TMPL_VAR NAME=IMGPATH>/star.gif" border="0" width="11" height="10" alt="See Note Below Regarding Charges"></TMPL_UNLESS>
               </td>
               <td align="right" class="medblue"><TMPL_UNLESS HIDE_PRICES>$<TMPL_VAR NAME=variety-bundle-price></TMPL_UNLESS>&nbsp;</td>
            <TMPL_ELSE>
               <td width="1%">&nbsp;</td>
               <td align="left" class="disabled_small">&nbsp;Supplemental Data Sources&nbsp;
                  <a href="javascript:javascript:show_supplemental();">(Click for details)</a>
                  (disabled)<TMPL_UNLESS HIDE_PRICES>&nbsp;<img src="<TMPL_VAR NAME='IMGPATH'>/star.gif" border="0" width="11" height="10" alt="See Note Below Regarding Charges"><img src="<TMPL_VAR NAME=IMGPATH>/star.gif" border="0" width="11" height="10" alt="See Note Below Regarding Charges"></TMPL_UNLESS>
               </td>
               <td align="right" class="disabled_small"><TMPL_UNLESS HIDE_PRICES>$<TMPL_VAR NAME=variety-bundle-price></TMPL_UNLESS>&nbsp;</td>
            </TMPL_UNLESS>
         </tr>
         </TMPL_UNLESS>
<!-- supplemental data description initially hidden -->         
         <tr id="supplemental" style="visibility:hidden; z-index: 1000; position:absolute;" >
            <td align="right" colspan="2" >
               <table cellpadding="2" border="0" cellspacing="4" style="PADDING-BOTTOM: 0px; PADDING-TOP: 0px; border-radius:6px; border: solid #ccc 2px;">
                  <tr>
                     <td>
                        <div style="font-size: 10pt; font-family: Verdana, Arial, Helvetica, sans-serif; color: #ed1c24; font-weight: bold;" align="center">Supplemental Data Sources</div>
                     </td>
                  </tr>
                  <tr>
                     <td>
                        <span style="font-family: arial; font-size: 8pt; color: #003399;"  >
                           <ul id="sup_data" >
                             <li><b>Watercraft</b>
                             <li><b>FAA Aircraft</b>
                             <li><b>FAA Certifications</b>
                             <li><b>Hunting & Fishing Permits</b>
                             <li><b>Concealed Weapon Permits</b>
                             <TMPL_UNLESS FCOL_TCOL>
                             <li><b>Voter Registration Information</b>
                             </TMPL_UNLESS>
                           </ul>
                        </span>
                     </td>
                  </tr>
                  <tr>
                     <td>
                        <span style="font-family: arial; font-size: 8pt; color: #003399;"  >
                           <b>NOTE:</b><br>
                           Supplemental Data Sources are<br>subject to available coverage.
                        </span>
                     </td>
                  </tr>
                  <tr align="right">
                     <td style="FONT: 10px Arial, Helvetica, sans-serif;">            
                        <a href="javascript:javascript:hide_supplemental();">(Close)</a>
                     </td>
                  </tr>
               </table>
            </td>
         </tr>





        <TMPL_ELSE>
            <tr>
            <td width="1%">&nbsp;</td>
                    <td align="left" class="disabled_small">&nbsp;(FCRA Report disabled)&nbsp;</td>
                    <td align="right" class="disabled_small">&nbsp;</td>
            </tr>
        </TMPL_UNLESS>

        </table>
        </td>
      </tr>















   <tr>
      <td width="49%" valign="top">
         <table border="0" cellpadding="0" cellspacing="0" width="100%">
            <tr>
            <td width="1%"><input type="checkbox" name="neighbors" id="neighbors" value="11" <TMPL_VAR NAME=neighbors>  onClick="change_total(this, <TMPL_VAR NAME=neighbors-price>,document.forms[0].REPORT_TOTAL,document.forms[0].REPORT_PRE_TOTAL)"></td>
            <td align="left" class="medblack"><label for="neighbors">&nbsp;Neighbors</label></td>
            <td align="right" class="medblue"><TMPL_UNLESS HIDE_PRICES>$<TMPL_VAR NAME="neighbors-price"></TMPL_UNLESS>&nbsp;</td>
            </tr>
		   <tr>
         



		  
        
        <tr>
                    <td>&nbsp;</td>
         <td align="left" class="colcomp_medblack">
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
<!--         <input type="hidden" name="neighborhood-count" id="neighborhood-count" value="1"> -->
		   <tr>
                    <td>&nbsp;</td>
         <td align="left" class="colcomp_medblack">
		    Include
		    <select name="neighbor-count">
		    <option value="1"<TMPL_IF NAME="neighbor-count-1"> SELECTED</TMPL_IF>>1</option>
		    <option value="2"<TMPL_IF NAME="neighbor-count-2"> SELECTED</TMPL_IF>>2</option>
		    <option value="3"<TMPL_IF NAME="neighbor-count-3"> SELECTED</TMPL_IF>>3</option>
		    <option value="4"<TMPL_IF NAME="neighbor-count-4"> SELECTED</TMPL_IF>>4</option>
		    </select>
		    Neighbors for Current Address
		    </td>
		  </tr>
	  </table>
      </td>

      <td></td>

      <td width="49%" valign="top">
      </td>
   </tr>

   <tr>
      <td width="49%" valign="top">
         <table border="0" cellpadding="0" cellspacing="0" width="100%">
         
            <tr>
               <td width="1%"><input type="checkbox" name="relatives" id="relatives" value="8" <TMPL_VAR NAME=relatives> onClick="var relativedepth=get_form_element('relative-depth'); change_depth_total(<TMPL_VAR NAME='relatives-price'>,relativedepth.selectedIndex + 1,document.forms[0].REPORT_TOTAL,document.forms[0].REPORT_PRE_TOTAL)"></td>
               <td align="left" class="medblack"><label for="relatives">&nbsp;Relatives</label></td>
               <td align="right" class="medblue"><TMPL_UNLESS HIDE_PRICES>$<TMPL_VAR NAME="relatives-price"> per degree of separation</TMPL_UNLESS>&nbsp;</td>
            </tr>
            <tr>
               <td>&nbsp;</td>
               <td align="left" class="colcomp_medblack">
               <select name="relative-depth" onChange="if(relatives.checked){change_depth_total(<TMPL_VAR NAME='relatives-price'>, this.selectedIndex + 1,document.forms[0].REPORT_TOTAL,document.forms[0].REPORT_PRE_TOTAL)}">
               <option value="1"<TMPL_IF NAME="relative-depth-1"> SELECTED</TMPL_IF>>1</option>
               <option value="2"<TMPL_IF NAME="relative-depth-2"> SELECTED</TMPL_IF>>2</option>
               <option value="3"<TMPL_IF NAME="relative-depth-3"> SELECTED</TMPL_IF>>3</option>
               </select>
               Degrees of Separation
               </td>
            </tr>
         </table>
      </td>
      <td></td>
      <td width="49%" valign="top">
      </td>
   </tr>







<TMPL_IF NAME="XXX">
    <tr>
      <td colspan="3" valign="top"><div id="lineVertRedDot"></div></td>
    </tr>


    <tr>

      <td width="45%" valign="top">
          <table border="0" cellpadding="0" cellspacing="0" width="100%">
          <tr>
           <TMPL_UNLESS HIDE_PRICES>
            <td align="left" class="medblack" width="53%"><b>Maximum Report Price:&nbsp;$</b></td>
            <td align="left"><input type="text" name="REPORT_TOTAL" size="5" value="<TMPL_VAR NAME='REPORT_TOTAL'>" onFocus="this.blur();"></td>
            <TMPL_ELSE>
            <td align="left" class="medblack"><input type="hidden" name="REPORT_TOTAL" size="5" value="<TMPL_VAR NAME='REPORT_TOTAL'>" onFocus="this.blur();"></td>
           </TMPL_UNLESS>
          </tr>
      </table>
      </td>

      <td></td>

      <td width="54%" valign="top">
          <table border="0" cellpadding="0" cellspacing="0" width="100%">
          <tr>
            <td align="left" class="medblack"><b>&nbsp;Select Report Type:&nbsp;</b></td>
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
      <td width="45%" valign="top">
          <table border="0" cellpadding="0" cellspacing="0" width="100%">
          <tr>
            <td width="100%" align="left" class="smallblack"><TMPL_UNLESS HIDE_PRICES><b>NOTE:</b>&nbsp;&nbsp;This is the maximum possible cost for this report.&nbsp;&nbsp;You will not be charged for options returning no results except those marked with <img src="<TMPL_VAR NAME='IMGPATH'>/star.gif" border="0" width="11" height="10" alt="Max. Cost"><img src="<TMPL_VAR NAME='IMGPATH'>/star.gif" border="0" width="11" height="10" alt="Max. Cost"> where search charge applies with or without results.<TMPL_ELSE>&nbsp;</TMPL_UNLESS></td>
          </tr>
      </table>
      </td>

      <td></td>

      <td width="54%" valign="top">
          <table border="0" cellpadding="0" cellspacing="0" width="100%">
          <tr>
            <td width="1%"><input type="checkbox" name="prompt" id="prompt" value="1" <TMPL_VAR NAME=prompt> ></td>
            <td align="left" class="medblack"><label for="prompt">&nbsp;Prompt me for these options for each report.</label></td>
          </tr>

          <tr>
                   <TMPL_IF NAME="ENABLE_SAVE_REPORT">
                      <TMPL_IF NAME="REPORT_MANAGER_OFF">
                <td width="1%"  class="disabled_medblack"><input type="checkbox" name="save-report" id="save-report" value="1" <TMPL_VAR NAME="save-report"> readonly onChange="this.checked = !this.checked"></td>
                <td align="left" class="disabled_medblack"><label for="save-report">&nbsp;(Saving Reports currently not available).</td>
              <TMPL_ELSE>
                <td width="1%"><input type="checkbox" name="save-report" id="save-report" value="1" <TMPL_VAR NAME="save-report"> ></td>
                <td align="left" class="medblack"><label for="save-report">&nbsp;Save report for later access.</label></td>
              </TMPL_IF>
           <TMPL_ELSE>
           <td colspan="2"></td>
           </TMPL_IF>

          </tr>
      </table>
      </td>
   </tr>
</TMPL_IF>










</table>
    <input type="hidden" name="REPORT_PRE_TOTAL" value="<TMPL_VAR NAME='REPORT_PRE_TOTAL'>">
    <input type="hidden" name="RELATIVE_TOTAL" value="<TMPL_VAR NAME='RELATIVE_TOTAL'>">


<TMPL_IF NAME="XXX">
<hr />
<hr />






















  <table width="740" align="center" >
     <tr>
         <td align="left" style=" FONT: 15px Arial, Helvetica, sans-serif; COLOR: #000000; ">
            <b>Included Report Content</b>
         </td>
     </tr>
  </table>



  <table width="740" align="center" cellpadding="2" border="0" cellspacing="4" style="border-radius:6px; border: solid #ccc 2px;">

<TMPL_IF NAME="PREFERENCES_ERROR_MESSAGE">
  <tr>
    <td align="center" colspan="4"><TMPL_VAR NAME="PREFERENCES_ERROR_MESSAGE"></td>
  </tr>
</TMPL_IF>

    <tr>
      <td width="49%" valign="top">
          <table border="0" cellpadding="0" cellspacing="0" width="100%">
		  <tr>
		    <td colspan="2" align="left" class="medblack"><b>NON-FCRA Report Options:&nbsp;</b></td>
			<td align="right" class="medblack">&nbsp;</td>
                    </tr>
	      <tr>
	        <td width="1%"><input type="checkbox" name="summary-report-table" id="summary-report-table" value="10" <TMPL_VAR NAME=summary-report-table>></td>
	        <td align="left" class="medblack"><label for="summary-report-table">&nbsp;Summary Report</label>&nbsp;&nbsp;</td>
	        <td align="right" class="medblack">&nbsp;</td>
	      </tr>
         
	      
         
         
         
         
         
         
         
<TMPL_IF NAME="XXX">
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
	      <tr>
	        <td width="1%">&nbsp;</td>
	        <td align="left" class="medblack">&nbsp;<input type="checkbox" name="imposters" id="imposters" value="2" <TMPL_VAR NAME=imposters>>&nbsp;<label for="imposters">&nbsp;Others Using Same SSN</label>&nbsp;</td>
	        <td align="right" class="medblack">&nbsp;</td>
	      </tr>
<!--         
	      <tr>
	        <td width="1%">&nbsp;</td>
	        <td align="left" class="medblack">&nbsp;<input type="checkbox" name="verify-ssns" id="verify-ssns" value="5" <TMPL_VAR NAME=verify-ssns>>&nbsp;<label for="verify-ssns">&nbsp;Date and Location where SSN Issued</label>&nbsp;</td>
	        <td align="right" class="medblack">&nbsp;</td>
	      </tr>
-->         
	      <tr>
	        <td width="1%">&nbsp;</td>
	        <td align="left" class="medblack">&nbsp;<input type="checkbox" name="processed-header" id="processed-header" value="5" <TMPL_VAR NAME=processed-header>>&nbsp;<label for="processed-header">&nbsp;Include Company Header</label>&nbsp;</td>
	        <td align="right" class="medblack">&nbsp;</td>
	      </tr>
</TMPL_IF>         

	      <tr>
            <td width="1%">
               <input type="checkbox" name="imposters" id="imposters" value="2" <TMPL_VAR NAME=imposters>>
            </td>
            <td align="left" class="medblack">
               <label for="imposters">&nbsp;Others Associates with Subject&apos;s SSN</label>&nbsp;&nbsp;
            </td>
            <td align="right" class="medblack">&nbsp;</td>
	      </tr>

	      <tr>
	         <td width="1%">
	            <input type="checkbox" name="akas" id="akas" value="5" <TMPL_VAR NAME=akas>>
            </td>            
            <td align="left" class="medblack">
               <label for="akas">&nbsp;Name Variations, SSN Summary, DOBs</label>&nbsp;&nbsp;
            </td>
	         <td align="right" class="medblack">&nbsp;</td>
	      </tr>

	      <tr>
            <td width="1%">
               <input type="checkbox" name="address-map" id="address-map" value="10" <TMPL_VAR NAME=address-map>>
            </td>
            <td align="left" class="medblack">
               <label for="address-map">&nbsp;Address Summary</label>&nbsp;&nbsp;
            <td align="right" class="medblack">&nbsp;</td>
	      </tr>




	      <TMPL_UNLESS DELETE_RT_MVR>
	      <tr>
		<TMPL_IF DISABLE_RT_MVR>
	        <td width="1%">&nbsp;</td>
			<td align="left" class="disabled_small">&nbsp;Motor Vehicle Locator&nbsp;(disabled)&nbsp;</td>
			<td align="right" class="disabled_small">&nbsp;</td>
		<TMPL_ELSE>
	        <td width="1%"><input type="checkbox" name="motor-vehicles" id="motor-vehicles" value="1" <TMPL_VAR NAME=motor-vehicles> ></td>
			<td align="left" class="medblack"><label for="motor-vehicles">&nbsp;Motor Vehicle Locator</label></td>
			<td align="right" class="medblack">&nbsp;</td>
	      </TMPL_IF>
	      </tr>
	      </TMPL_UNLESS>
              <!--
	      <tr>
		<TMPL_IF DISABLE_ASSESSMENT>
	        <td width="1%">&nbsp;</td>
			<td align="left" class="disabled_small"><TMPL_UNLESS DELETE_ASSESSMENT>&nbsp;Real Property Locator&nbsp;(disabled)&nbsp;</TMPL_UNLESS></td>
			<td align="right" class="disabled_small">&nbsp;</td>
		<TMPL_ELSE>
		<TMPL_IF DISABLE_DEEDS>
	        <td width="1%">&nbsp;</td>
			<td align="left" class="disabled_small"><TMPL_UNLESS DELETE_DEEDS>&nbsp;Real Property Locator&nbsp;(disabled)&nbsp;</TMPL_UNLESS></td>
			<td align="right" class="disabled_small">&nbsp;</td>
		<TMPL_ELSE>
	        <td width="1%"><input type="checkbox" name="property" id="property" value="11" <TMPL_VAR NAME=property> ></td>
			<td align="left" class="medblack"><label for="property">&nbsp;Real Property Locator</label>&nbsp;&nbsp;</td>
			<td align="right" class="medblack">&nbsp;</td>
		</TMPL_IF>
		</TMPL_IF>
	      </tr>
              -->

              <TMPL_UNLESS DELETE_REAL_PROPERTY>
	      <tr>
		<TMPL_IF DISABLE_REAL_PROPERTY>
	        <td width="1%">&nbsp;</td>
			<td align="left" class="disabled_small">&nbsp;Real Property Locator&nbsp;(disabled)&nbsp;</td>
			<td align="right" class="disabled_small">&nbsp;</td>
		<TMPL_ELSE>
	        <td width="1%"><input type="checkbox" name="property" id="property" value="11" <TMPL_VAR NAME=property> ></td>
			<td align="left" class="medblack"><label for="property">&nbsp;Real Property Locator</label>&nbsp;&nbsp;</td>
			<td align="right" class="medblack">&nbsp;</td>
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
          <TMPL_UNLESS DISABLE_DA_WIRELESS>
              <input type="hidden" name="phones-plus" id="phones-plus" value="1">
          </TMPL_UNLESS>
          </TMPL_UNLESS>
          </TMPL_IF>

	      <TMPL_UNLESS DELETE_PAW>
	      <tr>
	      <TMPL_IF DISABLE_PAW>
	        <td width="1%">&nbsp;</td>
			<td align="left" class="disabled_small">&nbsp;People at Work Locator&nbsp;(disabled)&nbsp;</td>
			<td align="right" class="disabled_small">&nbsp;</td>
	      <TMPL_ELSE>
	        <td width="1%"><input type="checkbox" name="people-at-work" id="people-at-work" value="4" <TMPL_VAR NAME=people-at-work> ></td>
	        <td align="left" class="medblack"><label for="people-at-work">&nbsp;People at Work Locator</label>&nbsp;&nbsp;</td>
	        <td align="right" class="medblack">&nbsp;</td>
	      </TMPL_IF>
	      </tr>
              </TMPL_UNLESS>

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

	      <TMPL_UNLESS DELETE_VOTER_REGISTRATION>
	      <tr>
	      <TMPL_IF DISABLE_VOTER_REGISTRATION>
	        <td width="1%">&nbsp;</td>
			<td align="left" class="disabled_small">&nbsp;Voter Registration Locator&nbsp;(disabled)&nbsp;</td>
			<td align="right" class="disabled_small">&nbsp;</td>
	      <TMPL_ELSE>
	        <td width="1%"><input type="checkbox" name="voter-registrations" id="voter-registrations" value="4" <TMPL_VAR NAME=voter-registrations> ></td>
	        <td align="left" class="medblack"><label for="voter-registrations">&nbsp;Voter Registration Locator</label>&nbsp;&nbsp;</td>
	        <td align="right" class="medblack">&nbsp;</td>
	      </TMPL_IF>
	      </tr>
              </TMPL_UNLESS>

	      <TMPL_UNLESS DELETE_DL>
	      <tr>
	      <TMPL_IF DISABLE_DL>
	        <td width="1%">&nbsp;</td>
			<td align="left" class="disabled_small">&nbsp;Driver Licenses Information&nbsp;(disabled)&nbsp;</td>
			<td align="right" class="disabled_small">&nbsp;</td>
	      <TMPL_ELSE>
	        <td width="1%"><input type="checkbox" name="driver-license" id="driver-license" value="1" <TMPL_VAR NAME=driver-license> ></td>
			<td align="left" class="medblack"><label for="driver-license">&nbsp;Driver Licenses Information</label></td>
			<td align="right" class="medblack">&nbsp;</td>
	      </TMPL_IF>
	      </tr>
              </TMPL_UNLESS>

	      <tr>
	        <td width="1%"><input type="checkbox" name="associates" id="associates" value="4" <TMPL_VAR NAME=associates> ></td>
	        <td align="left" class="medblack"><label for="associates">&nbsp;Possible Associates</label>&nbsp;&nbsp;</td>
	        <td align="right" class="medblack">&nbsp;</td>
	      </tr>
<!--         
	      <tr>
	        <td width="1%">
	            <input type="checkbox" name="processed-header" id="processed-header" value="5" <TMPL_VAR NAME=processed-header>>
            </td>
            <td align="left" class="medblack">
               <label for="processed-header">&nbsp;Include Company Header</label>&nbsp;&nbsp;
	        <td align="right" class="medblack">&nbsp;</td>
	      </tr>
-->         
      </table>
      </td>

      <td></td>

      <td width="49%" valign="top">
          <!--
          <table border="0" style="background:#E0F0B2;" cellpadding="0" cellspacing="0" width="100%">
          -->
          <table border="0" cellpadding="0" cellspacing="0" width="100%">

		  <tr>
		    <td colspan="2" align="left" class="medblack"><b>FCRA Report Options:&nbsp;</b></td>
			<td align="right" class="medblack">&nbsp;</td>
                    </tr>
            <TMPL_UNLESS DISABLE_FCRA_COMPREHENSIVE_REPORT>
	      <TMPL_UNLESS DELETE_FCRA_REAL_PROPERTY>
	      <tr>
	      <TMPL_IF DISABLE_FCRA_REAL_PROPERTY>
	        <td width="1%">&nbsp;</td>
			<td align="left" class="disabled_small">&nbsp;Possible Properties Owned&nbsp;(disabled)&nbsp;</td>
			<td align="right" class="disabled_small">&nbsp;</td>
	      <TMPL_ELSE>
	        <td width="1%"><input type="checkbox" name="fcra-property" id="fcra-property" value="1" <TMPL_VAR NAME="fcra-property"> ></td>
			<td align="left" class="medblack"><label for="fcra-property">&nbsp;Possible Properties Owned</label></td>
			<td align="right" class="medblack">&nbsp;</td>
	      </TMPL_IF>
	      </tr>
              </TMPL_UNLESS>


	      <TMPL_UNLESS DELETE_FCRA_CRIM>
	      <tr>
	      <TMPL_IF DISABLE_FCRA_CRIM>
	        <td width="1%">&nbsp;</td>
			<td align="left" class="disabled_small">&nbsp;Possible Criminal Records&nbsp;(disabled)&nbsp;</td>
			<td align="right" class="disabled_small">&nbsp;</td>
	      <TMPL_ELSE>
	        <td width="1%"><input type="checkbox" name="fcra-criminal-records" id="fcra-criminal-records" value="1" <TMPL_VAR NAME="fcra-criminal-records"> ></td>
			<td align="left" class="medblack"><label for="fcra-criminal-records">&nbsp;Possible Criminal Records</label></td>
			<td align="right" class="medblack">&nbsp;</td>
	      </TMPL_IF>
	      </tr>
              </TMPL_UNLESS>

	      <TMPL_UNLESS DELETE_FCRA_SEXPREDATOR>
	      <tr>
	      <TMPL_IF DISABLE_FCRA_SEXPREDATOR>
	        <td width="1%">&nbsp;</td>
			<td align="left" class="disabled_small">&nbsp;Sexual Offenses&nbsp;(disabled)&nbsp;</td>
			<td align="right" class="disabled_small">&nbsp;</td>
	      <TMPL_ELSE>
	        <td width="1%"><input type="checkbox" name="fcra-sexpredator" id="fcra-sexpredator" value="1" <TMPL_VAR NAME="fcra-sexpredator"> ></td>
			<td align="left" class="medblack"><label for="fcra-sexpredator">&nbsp;Sexual Offenses</label></td>
			<td align="right" class="medblack">&nbsp;</td>
	      </TMPL_IF>
	      </tr>
              </TMPL_UNLESS>


	      <TMPL_UNLESS DELETE_FCRA_BANKRUPTCY>
	      <tr>
	      <TMPL_IF DISABLE_FCRA_BANKRUPTCY>
	        <td width="1%">&nbsp;</td>
			<td align="left" class="disabled_small">&nbsp;Bankruptcy&nbsp;(disabled)&nbsp;</td>
			<td align="right" class="disabled_small">&nbsp;</td>
	      <TMPL_ELSE>
	        <td width="1%"><input type="checkbox" name="fcra-bankruptcy" id="fcra-bankruptcy" value="1" <TMPL_VAR NAME=fcra-bankruptcy> ></td>
			<td align="left" class="medblack"><label for="fcra-bankruptcy">&nbsp;Bankruptcy</label> </td>
			<td align="right" class="medblack">&nbsp;</td>
	      </TMPL_IF>
	      </tr>
              </TMPL_UNLESS>

                  <!--
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
          -->

	      <TMPL_UNLESS DELETE_FCRA_LIEN>
	      <tr>
	      <TMPL_IF DISABLE_FCRA_LIEN>
	        <td width="1%">&nbsp;</td>
			<td align="left" class="disabled_small">&nbsp;Liens &amp; Judgments&nbsp;(disabled)&nbsp;</td>
			<td align="right" class="disabled_small">&nbsp;</td>
	      <TMPL_ELSE>
	        <td width="1%"><input type="checkbox" name="fcra-liens" id="fcra-liens" value="1" <TMPL_VAR NAME=fcra-liens> ></td>
			<td align="left" class="medblack"><label for="fcra-liens">&nbsp;Liens &amp; Judgments</label> </td>
			<td align="right" class="medblack">&nbsp;</td>
	      </TMPL_IF>
	      </tr>
              </TMPL_UNLESS>


          <tr>
             <td width="1%"><input type="checkbox" id="variety-bundle" name="variety-bundle" value="1" <TMPL_VAR NAME="variety-bundle"> onClick="change_total(this, <TMPL_VAR NAME='variety-bundle-price'>, document.forms[0].REPORT_TOTAL,document.forms[0].REPORT_PRE_TOTAL)"></td>
             <td align="left" class="medblack">
               <label for="variety-bundle">&nbsp;Supplemental Data Sources</label>&nbsp;
<a href="javascript:javascript:show_supplemental();">(Click for details)</a>
             </td>
          </tr>
   <tr>
      <td>&nbsp;</td>
   </tr>
   <tr id="supplementalx" style="visibility:hidden; z-index: 1000; position:absolute;" >
      <td align="right" colspan="2" >
         <table cellpadding="2" border="0" cellspacing="4" style="PADDING-BOTTOM: 0px; PADDING-TOP: 0px; border-radius:6px; border: solid #ccc 2px;">
            <tr>
               <td>
                  <div style="font-size: 10pt; font-family: Verdana, Arial, Helvetica, sans-serif; color: #ed1c24; font-weight: bold;" align="center">Supplemental Data Sources</div>
               </td>
            </tr>
            <tr>
               <td>
                  <span style="font-family: arial; font-size: 8pt; color: #003399;"  >
                     <ul id="sup_data" >
                       <li><b>Watercraft</b>
                       <li><b>FAA Aircraft</b>
                       <li><b>FAA Certifications</b>
                       <li><b>Hunting & Fishing Permits</b>
                       <li><b>Concealed Weapon Permits</b>
                       <TMPL_UNLESS FCOL_TCOL>
                       <li><b>Voter Registration Information</b>
                       </TMPL_UNLESS>
                     </ul>
                  </span>
               </td>
            </tr>
            <tr>
               <td>
                  <span style="font-family: arial; font-size: 8pt; color: #003399;"  >
                     <b>NOTE:</b><br>
                     Supplemental Data Sources are<br>subject to available coverage.
                  </span>
               </td>
            </tr>
            <tr align="right">
               <td style="FONT: 10px Arial, Helvetica, sans-serif;">            
                  <a href="javascript:javascript:hide_supplemental();">(Close)</a>
               </td>
            </tr>
         </table>
      </td>
   </tr>






              <!--
	      <TMPL_UNLESS DELETE_FCRA_FAA_PILOT>
	      <tr>
	      <TMPL_IF DISABLE_FCRA_FAA_PILOT>
	        <td width="1%">&nbsp;</td>
			<td align="left" class="disabled_small">&nbsp;FAA Pilots&nbsp;(disabled)&nbsp;</td>
			<td align="right" class="disabled_small">&nbsp;</td>
	      <TMPL_ELSE>
	        <td width="1%"><input type="checkbox" name="fcra-faa-certificates" id="fcra-faa-certificates" value="4" <TMPL_VAR NAME=fcra-faa-certificates> ></td>
	        <td align="left" class="medblack"><label for="fcra-faa-certificates">&nbsp;FAA Pilots</label>&nbsp;&nbsp;</td>
	        <td align="right" class="medblack">&nbsp;</td>
	      </TMPL_IF>
	      </tr>
              </TMPL_UNLESS>

	      <TMPL_UNLESS DELETE_FCRA_VESSEL>
	      <tr>
	      <TMPL_IF DISABLE_FCRA_VESSEL>
	        <td width="1%">&nbsp;</td>
			<td align="left" class="disabled_small">&nbsp;Watercraft&nbsp;(disabled)&nbsp;</td>
			<td align="right" class="disabled_small">&nbsp;</td>
	      <TMPL_ELSE>
	        <td width="1%"><input type="checkbox" name="fcra-merchant-vessels" id="fcra-merchant-vessels" value="4" <TMPL_VAR NAME=fcra-merchant-vessels> ></td>
	        <td align="left" class="medblack"><label for="fcra-merchant-vessels">&nbsp;Watercraft</label>&nbsp;&nbsp;</td>
	        <td align="right" class="medblack">&nbsp;</td>
	      </TMPL_IF>
	      </tr>
              </TMPL_UNLESS>

	      <TMPL_UNLESS DELETE_FCRA_AIRCRAFT>
	      <tr>
	      <TMPL_IF DISABLE_FCRA_AIRCRAFT>
	        <td width="1%">&nbsp;</td>
			<td align="left" class="disabled_small">FAA Aircraft&nbsp;(disabled)&nbsp;</td>
			<td align="right" class="disabled_small">&nbsp;</td>
	      <TMPL_ELSE>
	        <td width="1%"><input type="checkbox" name="fcra-faa-aircraft" id="fcra-faa-aircraft" value="4" <TMPL_VAR NAME=fcra-faa-aircraft> ></td>
	        <td align="left" class="medblack"><label for="fcra-faa-aircraft">&nbsp;FAA Aircraft</label>&nbsp;&nbsp;</td>
	        <td align="right" class="medblack">&nbsp;</td>
	      </TMPL_IF>
	      </tr>
              </TMPL_UNLESS>
              -->

            <TMPL_ELSE>
                <tr>
	        <td width="1%">&nbsp;</td>
			<td align="left" class="disabled_small">&nbsp;(FCRA Report disabled)&nbsp;</td>
			<td align="right" class="disabled_small">&nbsp;</td>
                </tr>
            </TMPL_UNLESS>

              <!--
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
              -->

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
         <td align="left" class="colcomp_medblack">
		    Include
		    <select name="neighbor-count">
		    <option value="2"<TMPL_IF NAME="neighbor-count-2"> SELECTED</TMPL_IF>>2</option>
		    <option value="3"<TMPL_IF NAME="neighbor-count-3"> SELECTED</TMPL_IF>>3</option>
		    <option value="4"<TMPL_IF NAME="neighbor-count-4"> SELECTED</TMPL_IF>>4</option>
		    </select>
		    Neighbors for Current Address
		    </td>
		  </tr>
	  </table>
      </td>

      <td></td>

      <td width="49%" valign="top">
      </td>
   </tr>

   <tr>
      <td width="49%" valign="top">
         <table border="0" cellpadding="0" cellspacing="0" width="100%">
		      <tr>
               <td width="1%"><input type="checkbox" name="relatives" id="relatives" value="8" <TMPL_VAR NAME=relatives>></td>
               <td align="left" class="colcomp_medblack"><label for="relatives">&nbsp;Relatives</label></td>
            </tr>
            <tr>
               <td>&nbsp;</td>
               <td align="left" class="colcomp_medblack">
               <select name="relative-depth">
               <option value="1"<TMPL_IF NAME="relative-depth-1"> SELECTED</TMPL_IF>>1</option>
               <option value="2"<TMPL_IF NAME="relative-depth-2"> SELECTED</TMPL_IF>>2</option>
               <option value="3"<TMPL_IF NAME="relative-depth-3"> SELECTED</TMPL_IF>>3</option>
               </select>
               Degrees of Separation
               </td>
            </tr>
         </table>
      </td>
      <td></td>
      <td width="49%" valign="top">
      </td>
   </tr>


   <tr>
      <td width="49%" valign="top">
         <table border="0" cellpadding="0" cellspacing="0" width="100%">
   	      <tr>
   	        <td width="1%">
   	            <input type="checkbox" name="processed-header" id="processed-header" value="5" <TMPL_VAR NAME=processed-header>>
               </td>
               <td align="left" class="medblack">
                  <label for="processed-header">&nbsp;Include Company Header</label>&nbsp;&nbsp;
   	        <td align="right" class="medblack">&nbsp;</td>
   	      </tr>
         </table>
      </td>
   </tr>






  <TMPL_IF INS>
  <TMPL_UNLESS HIDE_RT_MVR>
    <tr>
      <td width="49%" valign="top">
          <table border="0" cellpadding="0" cellspacing="0" width="100%">
            <tr>
	      <td align="left" class="medblack"><b>Additional Report Options:<font color="#ed1c24">&nbsp;NEW!</font></b></td>
	    </tr>
	  </table>
      </td>
    </tr>

    <tr>
      <td width="49%" valign="top">
          <table border="0" cellpadding="0" cellspacing="0" width="100%">
	      <TMPL_UNLESS DELETE_RT_MVR>
		<tr>
		  <TMPL_IF DISABLE_RT_MVR>
		    <td width="1%">&nbsp;</td>
		    <td align="left" class="disabled_small">&nbsp;Include Real-Time Vehicle(s) Registration&nbsp;(disabled)&nbsp;</td>
		    <td align="right" class="disabled_small">&nbsp;</td>
		  <TMPL_ELSE>
		    <td width="1%"><input type="checkbox" name="rt-motor-vehicles" id="rt-motor-vehicles" value="1" <TMPL_VAR NAME=rt-motor-vehicles> ></td>
		    <td align="left" class="medblack"><label for="rt-motor-vehicles">&nbsp;Include Real-Time Vehicle(s) Registration&nbsp;<img src="<TMPL_VAR NAME='IMGPATH'>/star.gif" border="0" width="11" height="10" alt="See Note Below Regarding Charges"></label></td>
		    <td align="right" class="medblack">&nbsp;</td>
		  </TMPL_IF>
		</tr>
	      </TMPL_UNLESS>
	  </table>
      </td>
    </tr>

    <tr>
      <td width="60%" valign="top">
          <table border="0" cellpadding="0" cellspacing="0" width="100%">
            <tr>
            <tr>
            <td>
            </td>
            </tr>
              <td width="100%" align="left" class="smallblack">
                 <img src="<TMPL_VAR NAME='IMGPATH'>/star.gif" border="0" width="11" height="10" alt="See Note Below Regarding Charges">&nbsp;
                 -Indicates an optional add-on and additional charges and coverage restrictions will apply.
              </td>
	    </tr>
	  </table>
      </td>
    </tr>

  </TMPL_UNLESS>
  </TMPL_IF>
  
</table>



<hr />
<hr />
<hr />
<hr />
</TMPL_IF>




  <table width="740" align="center" >
     <tr><td>&nbsp;</td></tr>
     <tr>
         <td align="left" style=" FONT: 15px Arial, Helvetica, sans-serif; COLOR: #000000; ">
            <b>Options</b>
         </td>
     </tr>
  </table>





<!-- options table -- max price, report type, prompt, save etc. -->
<!-- two columns -->
   
<!-- define two options tables, one with prices, one without -->

<TMPL_IF HIDE_PRICES>


   <table width="740" align="center" cellpadding="2" border="0" cellspacing="4" style="border-radius:6px; border: solid #ccc 2px; BACKGROUND-COLOR: #f1fbff; ">


<!-- report format -->  
      <tr>
         <td width="49%" valign="top">
            <table border="0" cellpadding="0" cellspacing="0" width="100%">
   		      <tr>
   		         <td align="left" class="medblack">
                  <b>Select&nbsp;Report&nbsp;Type:&nbsp;</b></td>
   		         <td class="colcomp_medblack">
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

<!-- viewing template -->  
      <tr>
         <td width="49%" valign="top">
            <table border="0" cellpadding="0" cellspacing="0" width="100%">
   		      <tr>
   		         <td align="left" class="medblack"><b>Select Report Template:</b></td>
   		         <td class="colcomp_medblack">
                     <select name="VIEW-TEMPLATE">
                       <TMPL_LOOP NAME=VTEMP_LOOP>
                       <option value="<TMPL_VAR NAME="VALUE">"<TMPL_IF NAME="SELECTED"> selected</TMPL_IF>><TMPL_VAR NAME="DESC"></option>
                       </TMPL_LOOP>
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


   
<TMPL_ELSE>   
<!-- start of table with prices -->
   <table border="0" width="740" align="center" cellpadding="2" border="0" cellspacing="4" style="border-radius:6px; border: solid #ccc 2px; BACKGROUND-COLOR: #f1fbff; ">
      <tr>
         <!-- options left column -->
         <td>
            <table width="350" align="left">
            
   
   <!-- maximum report price -->
               <tr>
                  <td width="45%" valign="top">
                     <table border="0" cellpadding="0" cellspacing="0" width="100%">
                        <tr>
                           <TMPL_UNLESS HIDE_PRICES>
                              <td align="left" class="medblack" width="53%"><b>Maximum Report Price:&nbsp;$</b></td>
                              <td align="left"><input type="text" name="REPORT_TOTAL" size="5" value="<TMPL_VAR NAME='REPORT_TOTAL'>" onFocus="this.blur();"></td>
                           <TMPL_ELSE>
                              <td align="left" class="medblack"><input type="hidden" name="REPORT_TOTAL" size="5" value="<TMPL_VAR NAME='REPORT_TOTAL'>" onFocus="this.blur();"></td>
                           </TMPL_UNLESS>
                        </tr>
                     </table>
                  </td>
               </tr>
               
   
   <!-- pricing note: -->
               <tr>
                  <td width="45%" valign="top">
                     <table border="0" cellpadding="0" cellspacing="0" width="100%">
                        <tr>
                           <td style="padding-left:10px;" width="100%" align="left" class="smallblack"><TMPL_UNLESS HIDE_PRICES><b>NOTE:</b>&nbsp;&nbsp;This is the maximum possible cost for this report.&nbsp;&nbsp;You will not be charged for options returning no results except those marked with <img src="<TMPL_VAR NAME='IMGPATH'>/star.gif" border="0" width="11" height="10" alt="Max. Cost"><img src="<TMPL_VAR NAME='IMGPATH'>/star.gif" border="0" width="11" height="10" alt="Max. Cost"> where search charge applies with or without results.<TMPL_ELSE>&nbsp;</TMPL_UNLESS></td>
                        </tr>
                     </table>
                  </td>
               </tr>
            </table>
         </td>
   
      
         <!-- options right column -->
         <td>
            <table width="350" align="right" >
            
               <tr>
      <!-- report format -->  
                  <td align="left" class="medblack">
                  <b>Select&nbsp;Report&nbsp;Type:&nbsp;</b></td>
                  <td class="colcomp_medblack" >
                     <select name="report-format">
                     <option value="html"<TMPL_IF NAME="report-format-html"> SELECTED</TMPL_IF>>Interactive Web Page</option>
                     <option value="text"<TMPL_IF NAME="report-format-text"> SELECTED</TMPL_IF>>Plain Text Web Page</option>
                     <option value="word"<TMPL_IF NAME="report-format-word"> SELECTED</TMPL_IF>>Microsoft Word Document</option>
                     <option value="pdf"<TMPL_IF NAME="report-format-pdf"> SELECTED</TMPL_IF>>PDF Document</option>
                     </select>
                  </td>
               </tr>
               
   <!-- viewing template -->  
               <tr>
                  <td style="padding-top:20px;" align="left" class="medblack"><b>Select Report Template:</b></td>
                  <td style="padding-top:20px;" class="colcomp_medblack">
                     <select name="VIEW-TEMPLATE">
                       <TMPL_LOOP NAME=VTEMP_LOOP>
                       <option value="<TMPL_VAR NAME="VALUE">"<TMPL_IF NAME="SELECTED"> selected</TMPL_IF>><TMPL_VAR NAME="DESC"></option>
                       </TMPL_LOOP>
                     </select>
                  </td>
               </tr>
   
   
   
               <tr>
                  <td colspan="2">
                  &nbsp;
                  </td>
               </tr>
            </table>
         </tr>
   
         <tr>

   <!-- options table second row -->   
   <!-- left column -->      
            <td>
            <table width="350" align="left">
                  <tr>
<!-- Always prompt for input -->
                     <td width="1%"><input type="checkbox" name="prompt" id="prompt" value="1" <TMPL_VAR NAME=prompt> ></td>
                     <td align="left" class="medblack"><label for="prompt">&nbsp;Prompt me for these options for each report.</label></td>
                  </tr>
               </table>
            </td>
         
         
         
<!-- right column -->      
            <td>
            <table width="350" align="right">
                  <tr>
<!-- save report -->                  
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
                  </tr>
               </table>
            </td>
         </tr>
   </table>
<!-- end of table with prices -->
</TMPL_IF>



<TMPL_IF NAME="XXX">

<!-- pricing note: -->
            <td width="45%" valign="top">
                <table border="0" cellpadding="0" cellspacing="0" width="100%">
                <tr>
                  <td width="100%" align="left" class="smallblack"><TMPL_UNLESS HIDE_PRICES><b>NOTE:</b>&nbsp;&nbsp;This is the maximum possible cost for this report.&nbsp;&nbsp;You will not be charged for options returning no results except those marked with <img src="<TMPL_VAR NAME='IMGPATH'>/star.gif" border="0" width="11" height="10" alt="Max. Cost"><img src="<TMPL_VAR NAME='IMGPATH'>/star.gif" border="0" width="11" height="10" alt="Max. Cost"> where search charge applies with or without results.<TMPL_ELSE>&nbsp;</TMPL_UNLESS></td>
                </tr>
            </table>
            </td>



<!-- report format -->  
      <tr>
         <td width="49%" valign="top">
            <table border="0" cellpadding="0" cellspacing="0" width="100%">
   		      <tr>
   		         <td align="left" class="medblack">
                  <b>Select&nbsp;Report&nbsp;Type:&nbsp;</b></td>
   		         <td class="colcomp_medblack">
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

<!-- viewing template -->  
      <tr>
         <td width="49%" valign="top">
            <table border="0" cellpadding="0" cellspacing="0" width="100%">
   		      <tr>
   		         <td align="left" class="medblack"><b>Select Report Template:</b></td>
   		         <td class="colcomp_medblack">
                     <select name="VIEW-TEMPLATE">
                       <TMPL_LOOP NAME=VTEMP_LOOP>
                       <option value="<TMPL_VAR NAME="VALUE">"<TMPL_IF NAME="SELECTED"> selected</TMPL_IF>><TMPL_VAR NAME="DESC"></option>
                       </TMPL_LOOP>
                     </select>
                  </td>
   		      </tr>
   	      </table>
         </td>
         <td></td>
         <td width="49%" valign="top"></td>
      </tr>


   <tr>


<!-- Always prompt for input -->
      <td width="49%" valign="top">
         <table border="0" cellpadding="0" cellspacing="0" width="100%">
            <tr>
               <td width="1%"><input type="checkbox" name="prompt" id="prompt" value="1" <TMPL_VAR NAME=prompt> ></td>
               <td align="left" class="medblack"><label for="prompt">&nbsp;Prompt me for these options for each report.</label></td>
            </tr>
         </table>
      </td>
      <td></td>


<!-- save report -->
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
            </tr>
         </table>
      </td>
</TMPL_IF>      







<!-- End short_comprehensive_report_body.tpl -->

