<!-- Begin lnp/short_report_body.tpl-->
<table border="0" cellpadding="0" cellspacing="0" width="640">
<TMPL_IF NAME="PREFERENCES_ERROR_MESSAGE">
  <tr>
    <td align="center" colspan="3"><TMPL_VAR NAME="PREFERENCES_ERROR_MESSAGE"></td>
  </tr>
</TMPL_IF>
  <tr>
    <td width="640" valign="top">
    <table border="0" cellpadding="2" cellspacing="0" width="100%" class="myaccountborder">
      <tr>
        <td valign="top">
	<table border="0" cellpadding="2" cellspacing="0" width="100%" class="reportselectbody">
	  <tr>
	    <td class="myaccountlabel">&nbsp;<TMPL_UNLESS HIDE_PRICES>Base Report Price:&nbsp;&nbsp;$<TMPL_VAR NAME="base-report-price"><TMPL_ELSE>Base Report Features:</TMPL_UNLESS>&nbsp;&nbsp;(NON-FCRA Report Features)&nbsp;</td>
	  </tr>
	  <tr>
	    <td valign="top">
	    <table border="0" cellpadding="0" cellspacing="0" width="100%">
	      <tr>
	        <td width="1%" nowrap="nowrap"><input type="checkbox" id="imposters" name="imposters" value="2" <TMPL_VAR NAME="imposters">></td>
		<td width="1%" nowrap="nowrap" class="smallfont1"><label for="imposters">Others Using Same SSN&nbsp;&nbsp;</label></td>
		<td width="1%" nowrap="nowrap" class="reportprices"><TMPL_UNLESS NAME="HIDE_PRICES">Included in Base Price</TMPL_UNLESS>&nbsp;&nbsp;</td>
		<td width="1%" nowrap="nowrap" class="unifont1">&nbsp;&nbsp;&nbsp;&nbsp;</td>
		<td width="94%" nowrap="nowrap" align="right"><input type="checkbox" id="address-map" name="address-map" value="10" <TMPL_VAR NAME="address-map">></td>
		<td width="1%" nowrap="nowrap" class="smallfont1"><label for="address-map">Address Summary&nbsp;&nbsp;</label></td>
		<td width="1%" nowrap="nowrap" class="reportprices"><TMPL_UNLESS NAME="HIDE_PRICES">Included in Base Price</TMPL_UNLESS>&nbsp;&nbsp;</td>
	      </tr>
	      <tr>
	        <td width="1%" nowrap="nowrap" ><input type="checkbox" id="verify-ssns" name="verify-ssns" value="5" <TMPL_VAR NAME="verify-ssns">></td>
		<td width="1%" nowrap="nowrap" class="smallfont1"><label for="verify-ssns">Date and Location where SSN Issued&nbsp;&nbsp;</label></td>
		<td width="1%" nowrap="nowrap" class="reportprices"><TMPL_UNLESS NAME="HIDE_PRICES">Included in Base Price</TMPL_UNLESS>&nbsp;&nbsp;</td>
		<td width="1%" nowrap="nowrap" class="unifont1">&nbsp;&nbsp;&nbsp;&nbsp;</td>
        <TMPL_IF SHOW_EDUCATION_DETAILS>
        <td width="94%" nowrap="nowrap" align="right"><input type="checkbox" name="education-map" id="education-map" value="10" <TMPL_VAR NAME=education-map>></td>
        <td align="1%" nowrap="nowrap" class="smallfont1"><label for="education-map">Possible Education</label>&nbsp;</td>
        <td width="1%" nowrap="nowrap" class="reportprices"><TMPL_UNLESS NAME="HIDE_PRICES">Included in Base Price</TMPL_UNLESS>&nbsp;&nbsp;</td>
        <TMPL_ELSE>
        <td width="94%" nowrap="nowrap" align="right"><input type="checkbox" id="report-map" name="report-map" value="10" <TMPL_VAR NAME="report-map">></td>
        <td width="1%" nowrap="nowrap" class="smallfont1"><label for="report-map">Comprehensive Report Summary&nbsp;&nbsp;</label></td>
        <td width="1%" nowrap="nowrap" class="reportprices"><TMPL_UNLESS NAME="HIDE_PRICES">Included in Base Price</TMPL_UNLESS>&nbsp;&nbsp;</td>
        </TMPL_IF>
	      </tr>
	      <tr>
	        <td width="1%" nowrap="nowrap"><input type="checkbox" id="processed-header" name="processed-header" value="5" <TMPL_VAR NAME="processed-header">></td>
		<td width="1%" nowrap="nowrap" class="smallfont1"><label for="processed-header">Include Company Header&nbsp;&nbsp;</label></td>
		<td width="1%" nowrap="nowrap" class="reportprices"><TMPL_UNLESS NAME="HIDE_PRICES">Included in Base Price</TMPL_UNLESS>&nbsp;&nbsp;</td>
		<td width="1%" nowrap="nowrap" class="unifont1">&nbsp;&nbsp;&nbsp;&nbsp;</td>
        <TMPL_IF SHOW_EDUCATION_DETAILS>
        <td width="94%" nowrap="nowrap" align="right"><input type="checkbox" id="report-map" name="report-map" value="10" <TMPL_VAR NAME="report-map">></td>
        <td width="1%" nowrap="nowrap" class="smallfont1"><label for="report-map">Comprehensive Report Summary&nbsp;&nbsp;</label></td>
        <td width="1%" nowrap="nowrap" class="reportprices"><TMPL_UNLESS NAME="HIDE_PRICES">Included in Base Price</TMPL_UNLESS>&nbsp;&nbsp;</td>
        <TMPL_ELSE>
        <td width="94%" nowrap="nowrap" align="right">&nbsp;</td>
        <td width="1%" nowrap="nowrap" class="smallfont1">&nbsp;&nbsp;</td>
        <td width="1%" nowrap="nowrap" class="smallfont1">&nbsp;</td>
        </TMPL_IF>
	      </tr>
	    </table>
	    </td>
	  </tr>
	</table>
        </td>
      </tr>
    </table>
    </td>
  </tr>
  <tr>
    <td width="640" valign="top">
    <table border="0" cellpadding="0" cellspacing="0" width="100%" height="10">
      <tr height="10">
        <td height="10" class="unifont2pt">&nbsp;</td>
      </tr>
    </table>
    <table border="0" cellpadding="2" cellspacing="0" width="100%" class="myaccountborder">
      <tr>
        <td valign="top">
	<table border="0" cellpadding="2" cellspacing="0" width="100%" class="reportselectbody">
          <tr>
            <td colspan="3" class="myaccountlabel">&nbsp;Additional Report Options:</td>
	  </tr>
	  <tr>
	    <td width="47%" valign="top">
	    <table border="0" cellpadding="0" cellspacing="0" width="100%">
            <tr>
            <td colspan="2" align="left" class="medblack"><b>NON-FCRA Report Options:&nbsp;</b></td>
            <td align="right" class="medblack">&nbsp;</td>
            </tr>      
	      <tr>

	     <TMPL_UNLESS DELETE_RT_MVR>
	      <tr>
		<TMPL_UNLESS DISABLE_RT_MVR>
	        <td width="1%"><input type="checkbox" id="motor-vehicles" name="motor-vehicles" value="1" <TMPL_VAR NAME="motor-vehicles"> onClick="change_total(this, <TMPL_VAR NAME='motor-vehicles-price'>,document.forms[0].REPORT_TOTAL,document.forms[0].REPORT_PRE_TOTAL)"></td>
			<td class="smallfont1"><label for="motor-vehicles">Include Motor Vehicle Locator</label></td>
			<td align="right" class="reportprices"><TMPL_UNLESS HIDE_PRICES>&nbsp;&nbsp;$<TMPL_VAR NAME="motor-vehicles-price"></TMPL_UNLESS>&nbsp;</td>
		<TMPL_ELSE>
	        <td width="1%">&nbsp;</td>
			<td class="disabled_small">Include Motor Vehicle Locator (disabled)</td>
			<td align="right" class="disabled_small"><TMPL_UNLESS HIDE_PRICES>&nbsp;&nbsp;$<TMPL_VAR NAME="motor-vehicles-price"></TMPL_UNLESS>&nbsp;</td>
		</TMPL_UNLESS>
	      </tr>
	      </TMPL_UNLESS>

		<TMPL_UNLESS DELETE_REAL_PROPERTY>
		<TMPL_IF DISABLE_REAL_PROPERTY>
	        <td width="1%">&nbsp;</td>
			<td class="disabled_small">Real Property Locator&nbsp;(disabled)&nbsp;</td>
			<td align="right" class="disabled_small"><TMPL_UNLESS HIDE_PRICES>$<TMPL_VAR NAME="property-price"></TMPL_UNLESS>&nbsp;</td>
		<TMPL_ELSE>
	        <td width="1%"><input type="checkbox" id="property" name="property" value="11" <TMPL_VAR NAME=property> onClick="change_total(this, <TMPL_VAR NAME='property-price'>,document.forms[0].REPORT_TOTAL,document.forms[0].REPORT_PRE_TOTAL)"></td>
			<td class="smallfont1"><label for="property">Real Property Locator&nbsp;&nbsp;</label></td>
			<td align="right" class="reportprices"><TMPL_UNLESS HIDE_PRICES>$<TMPL_VAR NAME="property-price"></TMPL_UNLESS>&nbsp;</td>
		</TMPL_IF>
		</TMPL_UNLESS>
	      </tr>

	      <tr>
	        <td width="1%"><input type="checkbox" id="associates" name="associates" value="4" <TMPL_VAR NAME="associates"> onClick="change_total(this, <TMPL_VAR NAME='associates-price'>,document.forms[0].REPORT_TOTAL,document.forms[0].REPORT_PRE_TOTAL)"></td>
	        <td class="smallfont1"><label for="associates">Associates&nbsp;&nbsp;</label></td>
	        <td align="right" class="reportprices"><TMPL_UNLESS HIDE_PRICES>$<TMPL_VAR NAME="associates-price"></TMPL_UNLESS>&nbsp;</td>
	      </tr>
	     <TMPL_IF DO_SHOW_PHONES_PLUS>
	     <TMPL_UNLESS DELETE_DA_WIRELESS>
	     <TMPL_UNLESS DELETE_CUSTOM_DA_WIRELESS>
	      <tr>
		<TMPL_UNLESS DISABLE_DA_WIRELESS>
	        <td width="1%"><input type="checkbox" id="phones-plus" name="phones-plus" value="1" <TMPL_VAR NAME="phones-plus"> onClick="change_total(this, <TMPL_VAR NAME='phones-plus-price'>, document.forms[0].REPORT_TOTAL,document.forms[0].REPORT_PRE_TOTAL)"></td>
			<td class="smallfont1"><label for="phones-plus">Phones Plus</label></td>
			<td align="right" class="reportprices"><TMPL_UNLESS HIDE_PRICES>$<TMPL_VAR NAME="phones-plus-price"></TMPL_UNLESS>&nbsp;</td>
		<TMPL_ELSE>
	        <td width="1%">&nbsp;</td>
			<td class="disabled_small">Phones Plus (disabled)</td>
			<td align="right" class="disabled_small"><TMPL_UNLESS HIDE_PRICES>$<TMPL_VAR NAME="phones-plus-price"></TMPL_UNLESS>&nbsp;</td>
		</TMPL_UNLESS>
	      </tr>
	      </TMPL_UNLESS>
	      </TMPL_UNLESS>
	      </TMPL_IF>

             <TMPL_UNLESS DELETE_PAW>
              <tr>
                <TMPL_UNLESS DISABLE_PAW>
                <td width="1%"><input type="checkbox" id="people-at-work" name="people-at-work" value="1" <TMPL_VAR NAME="people-at-work"> onClick="change_total(this, <TMPL_VAR NAME='people-at-work-price'>, document.forms[0].REPORT_TOTAL,document.forms[0].REPORT_PRE_TOTAL)"></td>
                        <td class="smallfont1"><label for="people-at-work">People at Work Locator</label></td>
                        <td align="right" class="reportprices"><TMPL_UNLESS HIDE_PRICES>$<TMPL_VAR NAME="people-at-work-price"></TMPL_UNLESS>&nbsp;</td>
                <TMPL_ELSE>
                <td width="1%">&nbsp;</td>
                        <td class="disabled_small">People at Work Locator (disabled)</td>
                        <td align="right" class="disabled_small"><TMPL_UNLESS HIDE_PRICES>$<TMPL_VAR NAME="people-at-work-price"></TMPL_UNLESS>&nbsp;</td>
                </TMPL_UNLESS>
              </tr>
              </TMPL_UNLESS>

          <TMPL_UNLESS LE>
          <TMPL_UNLESS GOV>
          <TMPL_UNLESS DELETE_EMAIL>
            <tr>
             <TMPL_UNLESS DISABLE_EMAIL>
              <td width="1%"><input type="checkbox" id="email-address" name="email-address" value="1" <TMPL_VAR NAME="email-address"> onClick="change_total(this, <TMPL_VAR NAME='email-address-price'>, document.forms[0].REPORT_TOTAL,document.forms[0].REPORT_PRE_TOTAL)"></td>
              <td class="smallfont1"><label for="email-address">Email Addresses</label></td>
              <td align="right" class="reportprices"><TMPL_UNLESS HIDE_PRICES>$<TMPL_VAR NAME="email-address-price"></TMPL_UNLESS>&nbsp;</td>
            <TMPL_ELSE>
              <td width="1%">&nbsp;</td>
              <td class="disabled_small">Email Addresses (disabled)</td>
              <td align="right" class="disabled_small"><TMPL_UNLESS HIDE_PRICES>$<TMPL_VAR NAME="email-address-price"></TMPL_UNLESS>&nbsp;</td>
            </TMPL_UNLESS>
          </tr>
          </TMPL_UNLESS>
          </TMPL_UNLESS>
          </TMPL_UNLESS>

          <TMPL_IF ENH_FLAT_RATE_COMP>
          <TMPL_UNLESS DELETE_CUSTOM_EMAIL>
          <TMPL_UNLESS DELETE_EMAIL>
            <tr>
          <TMPL_IF DISABLE_EMAIL>
              <td width="1%">&nbsp;</td>
              <td class="disabled_small">Email Addresses (disabled)</td>
              <td align="right" class="disabled_small"><TMPL_UNLESS HIDE_PRICES>$<TMPL_VAR NAME="email-address-price"></TMPL_UNLESS>&nbsp;</td>
          <TMPL_ELSE>
              <td width="1%"><input type="checkbox" id="email-address" name="email-address" value="1" <TMPL_VAR NAME="email-address"> onClick="change_total(this, <TMPL_VAR NAME='email-address-price'>, document.forms[0].REPORT_TOTAL,document.forms[0].REPORT_PRE_TOTAL)"></td>
              <td class="smallfont1"><label for="email-address">Email Addresses</label></td>
              <td align="right" class="reportprices"><TMPL_UNLESS HIDE_PRICES>$<TMPL_VAR NAME="email-address-price"></TMPL_UNLESS>&nbsp;</td>
          </TMPL_IF>
           </tr>
          </TMPL_UNLESS>
          </TMPL_UNLESS>
          </TMPL_IF>

	    </table>
	    </td>
	    <td width="1%" nowrap class="unifont1">&nbsp;&nbsp;&nbsp;&nbsp;</td>
	    <td width="52%" valign="top">
	    <table border="0" cellpadding="0" cellspacing="0" width="100%">
            <tr><colspan="3"><td>&nbsp;</td></tr>
	     <TMPL_UNLESS DELETE_UCC>
	      <tr>
		<TMPL_UNLESS DISABLE_UCC>
	        <td width="1%"><input type="checkbox" id="uccs" name="uccs" value="1" <TMPL_VAR NAME="uccs"> onClick="change_total(this, <TMPL_VAR NAME='uccs-price'>, document.forms[0].REPORT_TOTAL,document.forms[0].REPORT_PRE_TOTAL)"></td>
			<td class="smallfont1"><label for="uccs">UCC Filings</label></td>
			<td align="right" class="reportprices"><TMPL_UNLESS HIDE_PRICES>$<TMPL_VAR NAME="uccs-price"></TMPL_UNLESS>&nbsp;</td>
		<TMPL_ELSE>
	        <td width="1%">&nbsp;</td>
			<td class="disabled_small">UCC Filings (disabled)</td>
			<td align="right" class="disabled_small"><TMPL_UNLESS HIDE_PRICES>$<TMPL_VAR NAME="uccs-price"></TMPL_UNLESS>&nbsp;</td>
		</TMPL_UNLESS>
	      </tr>
	      </TMPL_UNLESS>

             <TMPL_UNLESS DELETE_CUSTOM_JAILBOOKING>
             <TMPL_IF SHOW_JAIL_BOOKING_SEARCH>
	     <TMPL_UNLESS DELETE_JAILBOOKING>
	      <tr>
		<TMPL_UNLESS DISABLE_JAILBOOKING>
	        <td width="1%"><input type="checkbox" id="jailbooking" name="jailbooking" value="1" <TMPL_VAR NAME="jailbooking"> onClick="change_total(this, <TMPL_VAR NAME="jailbooking-price">, document.forms[0].REPORT_TOTAL,document.forms[0].REPORT_PRE_TOTAL)"></td>
			<td class="smallfont1"><label for="jailbooking">Jail Bookings</label></td>
			<td align="right" class="reportprices"><TMPL_UNLESS HIDE_PRICES>$<TMPL_VAR NAME=jailbooking-price></TMPL_UNLESS>&nbsp;</td>
		<TMPL_ELSE>
	        <td width="1%">&nbsp;</td>
			<td class="disabled_small">Jail Bookings (disabled)</td>
			<td align="right" class="disabled_small"><TMPL_UNLESS HIDE_PRICES>$<TMPL_VAR NAME=jailbooking-price></TMPL_UNLESS>&nbsp;</td>
		</TMPL_UNLESS>
	      </tr>
	      </TMPL_UNLESS>
              </TMPL_IF>
	      </TMPL_UNLESS>

	     <TMPL_UNLESS DELETE_PROF_LICENSE>
	      <tr>
		<TMPL_UNLESS DISABLE_PROF_LICENSE>
	        <td width="1%"><input type="checkbox" id="professional-licenses" name="professional-licenses" value="1" <TMPL_VAR NAME="professional-licenses"> onClick="change_total(this, <TMPL_VAR NAME='professional-licenses-price'>, document.forms[0].REPORT_TOTAL,document.forms[0].REPORT_PRE_TOTAL)"></td>
			<td class="smallfont1"><label for="professional-licenses">Professional Licenses<TMPL_UNLESS HIDE_PRICES>&nbsp;<img src="<TMPL_VAR NAME='IMGPATH'>/star.gif" border="0" width="11" height="10" alt="See Note Below Regarding Charges"><img src="<TMPL_VAR NAME='IMGPATH'>/star.gif" border="0" width="11" height="10" alt="See Note Below Regarding Charges"></TMPL_UNLESS></label></td>
			<td align="right" class="reportprices"><TMPL_UNLESS HIDE_PRICES>$<TMPL_VAR NAME=professional-licenses-price></TMPL_UNLESS>&nbsp;</td>
		<TMPL_ELSE>
	        <td width="1%">&nbsp;</td>
			<td class="disabled_small">Professional Licenses (disabled)<TMPL_UNLESS HIDE_PRICES>&nbsp;<img src="<TMPL_VAR NAME='IMGPATH'>/star.gif" border="0" width="11" height="10" alt="See Note Below Regarding Charges"><img src="<TMPL_VAR NAME='IMGPATH'>/star.gif" border="0" width="11" height="10" alt="See Note Below Regarding Charges"></TMPL_UNLESS></td>
			<td align="right" class="disabled_small"><TMPL_UNLESS HIDE_PRICES>$<TMPL_VAR NAME="professional-licenses-price"></TMPL_UNLESS>&nbsp;</td>
		</TMPL_UNLESS>
	      </tr>
	      </TMPL_UNLESS>

	     <TMPL_UNLESS DELETE_VOTER_REGISTRATION>
	      <tr>
		<TMPL_UNLESS DISABLE_VOTER_REGISTRATION>
	        <td width="1%"><input type="checkbox" id="voter-registrations" name="voter-registrations" value="1" <TMPL_VAR NAME="voter-registrations"> onClick="change_total(this, <TMPL_VAR NAME='voter-registrations-price'>, document.forms[0].REPORT_TOTAL,document.forms[0].REPORT_PRE_TOTAL)"></td>
			<td class="smallfont1"><label for="voter-registrations">Voter Registration Locator</label>&nbsp;</td>
			<td align="right" class="reportprices"><TMPL_UNLESS HIDE_PRICES>$<TMPL_VAR NAME=voter-registrations-price></TMPL_UNLESS>&nbsp;</td>
		<TMPL_ELSE>
	        <td width="1%">&nbsp;</td>
			<td class="disabled_small">Voter Registration Locator&nbsp; (disabled)</td>
			<td align="right" class="disabled_small"><TMPL_UNLESS HIDE_PRICES>$<TMPL_VAR NAME=voter-registrations-price></TMPL_UNLESS>&nbsp;</td>
		</TMPL_UNLESS>
	      </tr>
	      </TMPL_UNLESS>

	     <TMPL_UNLESS DELETE_DL>
	      <tr>
		<TMPL_UNLESS DISABLE_DL>
	        <td width="1%"><input type="checkbox" id="driver-license" name="driver-license" value="1" <TMPL_VAR NAME=driver-license> onClick="change_total(this, <TMPL_VAR NAME='driver-license-price'>,document.forms[0].REPORT_TOTAL,document.forms[0].REPORT_PRE_TOTAL)"></td>
			<td class="smallfont1"><label for="driver-license">Include Driver Licenses Information</label></td>
			<td align="right" class="reportprices"><TMPL_UNLESS HIDE_PRICES>&nbsp;&nbsp;$<TMPL_VAR NAME="driver-license-price"></TMPL_UNLESS>&nbsp;</td>
		<TMPL_ELSE>
	        <td width="1%">&nbsp;</td>
			<td class="disabled_small">Include Driver Licenses Information (disabled)</td>
			<td align="right" class="disabled_small"><TMPL_UNLESS HIDE_PRICES>&nbsp;&nbsp;$<TMPL_VAR NAME="driver-license-price"></TMPL_UNLESS>&nbsp;</td>
		</TMPL_UNLESS>
	      </tr>
	      </TMPL_UNLESS>

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
		    <td width="1%"><input type="checkbox" id="neighbors" name="neighbors" value="11" <TMPL_VAR NAME="neighbors"> onClick="change_total(this, <TMPL_VAR NAME=neighbors-price>,document.forms[0].REPORT_TOTAL,document.forms[0].REPORT_PRE_TOTAL)"></td>
		    <td class="smallfont1"><label for="neighbors">Neighbors</label></td>
		    <td align="right" class="reportprices"><TMPL_UNLESS HIDE_PRICES>$<TMPL_VAR NAME="neighbors-price"></TMPL_UNLESS>&nbsp;</td>
		  </tr>
		  <tr>
		    <td colspan="3" class="smallfont1">
		    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Include Neighbors for
		    <select name="neighborhood-count">
		    <option value="1"<TMPL_IF NAME="neighborhood-count-1"> SELECTED="SELECTED"</TMPL_IF>>1</option>
		    <option value="2"<TMPL_IF NAME="neighborhood-count-2"> SELECTED="SELECTED"</TMPL_IF>>2</option>
		    <option value="3"<TMPL_IF NAME="neighborhood-count-3"> SELECTED="SELECTED"</TMPL_IF>>3</option>
		    <option value="4"<TMPL_IF NAME="neighborhood-count-4"> SELECTED="SELECTED"</TMPL_IF>>4</option>
		    <option value="5"<TMPL_IF NAME="neighborhood-count-5"> SELECTED="SELECTED"</TMPL_IF>>5</option>
		    <option value="6"<TMPL_IF NAME="neighborhood-count-6"> SELECTED="SELECTED"</TMPL_IF>>6</option>
		    <option value="7"<TMPL_IF NAME="neighborhood-count-7"> SELECTED="SELECTED"</TMPL_IF>>7</option>
		    <option value="8"<TMPL_IF NAME="neighborhood-count-8"> SELECTED="SELECTED"</TMPL_IF>>8</option>
		    <option value="9"<TMPL_IF NAME="neighborhood-count-9"> SELECTED="SELECTED"</TMPL_IF>>9</option>
		    <option value="10"<TMPL_IF NAME="neighborhood-count-10"> SELECTED="SELECTED"</TMPL_IF>>10</option>
		    </select>
		    Address(es)
		    <br>
		    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Include
		    <select name="neighbor-count">
		    <option value="2"<TMPL_IF NAME="neighbor-count-2"> SELECTED="SELECTED"</TMPL_IF>>2</option>
		    <option value="3"<TMPL_IF NAME="neighbor-count-3"> SELECTED="SELECTED"</TMPL_IF>>3</option>
		    <option value="4"<TMPL_IF NAME="neighbor-count-4"> SELECTED="SELECTED"</TMPL_IF>>4</option>
		    <option value="5"<TMPL_IF NAME="neighbor-count-5"> SELECTED="SELECTED"</TMPL_IF>>5</option>
		    <option value="6"<TMPL_IF NAME="neighbor-count-6"> SELECTED="SELECTED"</TMPL_IF>>6</option>
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
            <table border="1" cellpadding="0" cellspacing="0" width="100%">
              <tr>
	        <td>
		<table border="0" cellpadding="0" cellspacing="0" width="100%">
		  <tr>
		    <td width="1%"><input type="checkbox" id="relatives" name="relatives" value="8" <TMPL_VAR NAME="relatives"> onClick="var relativedepth=get_form_element('relative-depth'); change_depth_total(<TMPL_VAR NAME='relatives-price'>,relativedepth.selectedIndex + 1,document.forms[0].REPORT_TOTAL,document.forms[0].REPORT_PRE_TOTAL)"></td>
		    <td class="smallfont1"><label for="relatives">Relatives</label></td>
		    <td align="right" class="reportprices"><TMPL_UNLESS HIDE_PRICES>$<TMPL_VAR NAME="relatives-price"> per degree of separation</TMPL_UNLESS>&nbsp;</td>
		  </tr>
		  <tr>
		    <td colspan="3" class="smallfont1">
		    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		    <select name="relative-depth" onChange="if(relatives.checked){change_depth_total(<TMPL_VAR NAME='relatives-price'>, this.selectedIndex + 1,document.forms[0].REPORT_TOTAL,document.forms[0].REPORT_PRE_TOTAL)}">
		    <option value="1"<TMPL_IF NAME="relative-depth-1"> SELECTED="SELECTED"</TMPL_IF>>1</option>
		    <option value="2"<TMPL_IF NAME="relative-depth-2"> SELECTED="SELECTED"</TMPL_IF>>2</option>
		    <option value="3"<TMPL_IF NAME="relative-depth-3"> SELECTED="SELECTED"</TMPL_IF>>3</option>
		    </select>
		    Degrees of Separation
		    <br>
		    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="checkbox" id="relative-map" name="relative-map" value="10" <TMPL_VAR NAME="relative-map">><label for="relative-map">Relative Summary</label>
		    </td>
		  </tr>
		</table>
		</td>
	      </tr>
            </table>
	    </td>
	  </tr>
	</table>
        </td>
      </tr>
    </table>
    </td>
  </tr>
  <tr>
    <td width="640" valign="top">
    <table border="0" cellpadding="0" cellspacing="0" width="100%" height="5">
      <tr height="5">
        <td height="5" class="unifont2pt">&nbsp;</td>
      </tr>
    </table>
    <table border="0" cellpadding="2" cellspacing="0" width="100%">
      <tr>
        <td width="49%" valign="top">
	<table border="0" cellpadding="0" cellspacing="0">
	  <tr>
	    <TMPL_UNLESS HIDE_PRICES>
	    <td class="myaccounttitle">Maximum Report Price:&nbsp;$</td>
	    <td class="unifont1"><input type="text" name="REPORT_TOTAL" size="5" value="<TMPL_VAR NAME='REPORT_TOTAL'>" onFocus="this.blur();"></td>
	    <TMPL_ELSE>
	    <td class="largefont1">&nbsp;<input type="hidden" name="REPORT_TOTAL" size="5" value="<TMPL_VAR NAME='REPORT_TOTAL'>" onFocus="this.blur();"></td>
	    </TMPL_UNLESS>
	  </tr>
	</table>
	</td>
	<td width="2%" nowrap class="unifont1">&nbsp;&nbsp;&nbsp;&nbsp;</td>
	<td width="49%" valign="top">
        <table border="0" cellpadding="0" cellspacing="0">
	  <tr>
	    <td nowrap class="smallfont1">Select Report Type:&nbsp;</td>
	    <td>
	    <select name="report-format">
	    <option value="html"<TMPL_IF NAME="report-format-html"> SELECTED="SELECTED"</TMPL_IF>>Interactive Web Page</option>
	    <option value="text"<TMPL_IF NAME="report-format-text"> SELECTED="SELECTED"</TMPL_IF>>Plain Text Web Page</option>
	    <option value="word"<TMPL_IF NAME="report-format-word"> SELECTED="SELECTED"</TMPL_IF>>Microsoft Word Document</option>
	    <option value="pdf"<TMPL_IF NAME="report-format-pdf"> SELECTED="SELECTED"</TMPL_IF>>PDF Document</option>
	    </select>
	    </td>
	  </tr>
	</table>
	</td>
      </tr>
      <tr>
         <td width="49%" class="smallfont1"><TMPL_UNLESS HIDE_PRICES><b>NOTE:</b>&nbsp;&nbsp;This is the maximum possible cost for this report.&nbsp;&nbsp;You will not be charged for options returning no results except those marked with <img src="<TMPL_VAR NAME='IMGPATH'>/star.gif" border="0" width="11" height="10" alt="Max. Cost"><img src="<TMPL_VAR NAME='IMGPATH'>/star.gif" border="0" width="11" height="10" alt="Max. Cost"> where search charge applies with or without results.<TMPL_ELSE>&nbsp;</TMPL_UNLESS></td>
		 <td width="2%" nowrap class="unifont1">&nbsp;&nbsp;&nbsp;&nbsp;</td>
	<td width="49%" class="smallfont1" valign="top"><input type="checkbox" id="prompt" name="prompt" value="1" <TMPL_VAR NAME="prompt">> <label for="prompt">Prompt me for these options for each report.</label>
        <TMPL_IF NAME="ENABLE_SAVE_REPORT">
	  <br>
	  <span<TMPL_IF NAME="REPORT_MANAGER_OFF"> class="disabled_item"</TMPL_IF>><input type="checkbox" id="save-report" name="save-report" value="1" <TMPL_VAR NAME="save-report"><TMPL_IF NAME="REPORT_MANAGER_OFF"> readonly="1" onChange="this.checked = !this.checked"</TMPL_IF>> <label for="save-report">Save report for later access.</label></span>
	  <TMPL_IF NAME="REPORT_MANAGER_OFF">
	    &nbsp;(Saving Reports currently not available)
	  </TMPL_IF>
        </TMPL_IF>
	</td>
      </tr>
    </table>
    <input type="hidden" name="REPORT_PRE_TOTAL" value="<TMPL_VAR NAME='REPORT_PRE_TOTAL'>">
    <input type="hidden" name="RELATIVE_TOTAL" value="<TMPL_VAR NAME='RELATIVE_TOTAL'>">
    </td>
  </tr>
</table>
<!-- End lnp/short_report_body.tpl-->
