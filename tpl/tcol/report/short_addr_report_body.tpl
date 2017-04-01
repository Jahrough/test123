<!-- Begin short_addr_report_body.tpl-->
<table border="0" cellpadding="0" cellspacing="0" width="620">
<TMPL_IF NAME="PREFERENCES_ERROR_MESSAGE">
  <tr>
    <td align="center" colspan="3"><b><font color="red"><TMPL_VAR NAME="PREFERENCES_ERROR_MESSAGE"></font></b></td>
  </tr>
</TMPL_IF>
  <tr>
    <td width="100%" valign="top">
    <table border="0" cellpadding="2" cellspacing="0" width="100%" class="myaccountborder">
      <tr>
        <td valign="top">
	<table border="0" cellpadding="2" cellspacing="0" width="100%" class="reportselectbody">
	  <tr>
	    <td class="smallfont1">
	    <span class="myaccountlabel">&nbsp;<TMPL_UNLESS HIDE_PRICES>Base Report Price:&nbsp;&nbsp;$<TMPL_VAR NAME="base-addr-price"><TMPL_ELSE>Base Report Features:</TMPL_UNLESS></font></span>
	    <br>
	    </td>
	  </tr>
	  <tr>
	    <td valign="top">
	    <table border="0" cellpadding="0" cellspacing="0" width="100%">
	      <tr>
			<td width="2%" nowrap><span class="smallfont1">&nbsp;Current and Previous Residents&nbsp;(with Current Addresses for Previous Residents)&nbsp;</span><span class="reportprices"><TMPL_IF residents-count>-&nbsp;(<TMPL_VAR residents-count>)</font></TMPL_IF><TMPL_UNLESS NAME="HIDE_PRICES"> - Included in Base Price</TMPL_UNLESS>&nbsp;&nbsp;</span></td>
			<td width="98%" nowrap class="unifont1">&nbsp;&nbsp;&nbsp;&nbsp;</td>

	      </tr>
		  <tr><td colspan="2">&nbsp;</td></tr>
	      <tr>
			<td width="2%" nowrap><span class="smallfont1">&nbsp;Phones at Address&nbsp;(Numerous phones may be returned in the case of business or apartment buildings)&nbsp;</span><span class="reportprices"><TMPL_UNLESS NAME="HIDE_PRICES"> - Included in Base Price</TMPL_UNLESS>&nbsp;&nbsp;</span></td>
			</td>
			<td width="98%" nowrap class="unifont1">&nbsp;&nbsp;&nbsp;&nbsp;</td>

	      </tr>
	      <tr>
			<td width="2%" colspan="1" nowrap><span class="smallfont1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="checkbox" name="addr-residential-phones" value="1" <TMPL_VAR NAME=addr-residential-phones>>Residential: </span><TMPL_IF residential-phones-count><span class="reportprices">(<TMPL_VAR residential-phones-count>)</span></TMPL_IF><span class="smallfont1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="checkbox" name="addr-business-phones" value="1" <TMPL_VAR NAME=addr-business-phones>>Business: </span><TMPL_IF business-phones-count><span class="reportprices">(<TMPL_VAR business-phones-count>)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></TMPL_IF><span class="smallfont1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></td>
			<td width="98%" nowrap class="unifont1">&nbsp;&nbsp;&nbsp;&nbsp;</td>

	      </tr>
	      </td>
	    </table>
	   </td>
	  </tr>
	</table>
        </td>
      </tr>
    </table>
    <br>
    <table border="0" cellpadding="2" cellspacing="0" width="100%" class="myaccountborder">
      <tr>
        <td valign="top">
	<table border="0" cellpadding="2" cellspacing="0" width="100%" class="reportselectbody">
          <tr>
            <td colspan="3" class="myaccountlabel">&nbsp;Additional Report Options:</font></td>
	  </tr>
	  <tr>
	    <td width="65%" valign="top">
	    <table border="0" cellpadding="0" cellspacing="0" width="100%">
	      <tr>
		<TMPL_IF DISABLE_DEEDS>
		 <TMPL_UNLESS DELETE_DEEDS>
	        <td width="1%">&nbsp;</td>
			<td><span class="disabled_small"><TMPL_IF TCOL>Real Property Locator<TMPL_ELSE>Property Ownership Current/Previous</TMPL_IF>&nbsp;&nbsp;</span><span class="reportprices"><TMPL_IF properties-count>(<TMPL_VAR NAME="properties-count">)</TMPL_IF> </span><span class="disabled_small">(disabled)</span></td>
			<td align="right" class="disabled_small"><TMPL_UNLESS HIDE_PRICES>$<TMPL_VAR NAME=addr-properties-price></TMPL_UNLESS>&nbsp;</td>
		 </TMPL_UNLESS> 	
		<TMPL_ELSE>
		<TMPL_IF DISABLE_ASSESSMENT>
		  <TMPL_UNLESS DELETE_ASSESSMENT>
	        <td width="1%">&nbsp;</td>
			<td><span class="disabled_small"><TMPL_IF TCOL>Real Property Locator<TMPL_ELSE>Property Ownership Current/Previous</TMPL_IF>&nbsp;&nbsp;</span><span class="reportprices"><TMPL_IF properties-count>(<TMPL_VAR NAME="properties-count">)</TMPL_IF> </span><span class="disabled_small">(disabled)</span></td>
			<td align="right" class="disabled_small"><TMPL_UNLESS HIDE_PRICES>$<TMPL_VAR NAME=addr-properties-price></TMPL_UNLESS>&nbsp;</td>
		  </TMPL_UNLESS> 	
		<TMPL_ELSE>
	        <td width="1%"><input type="checkbox" name="addr-properties" value="1" <TMPL_VAR NAME=addr-properties> onClick="change_total(this, <TMPL_VAR NAME=addr-properties-price>,document.forms[0].ADDR_TOTAL,document.forms[0].ADDR_PRE_TOTAL)"></td>
			<td><span class="smallfont1"><TMPL_IF TCOL>Real Property Locator<TMPL_ELSE>Property Ownership Current/Previous</TMPL_IF>&nbsp;&nbsp;</span><span class="reportprices"><TMPL_IF properties-count>(<TMPL_VAR NAME="properties-count">)</TMPL_IF></span></td>
			<td align="right" class="reportprices"><TMPL_UNLESS HIDE_PRICES>$<TMPL_VAR NAME=addr-properties-price></TMPL_UNLESS>&nbsp;</td>
		</TMPL_IF>
		</TMPL_IF>
		
	      </tr>

	      <TMPL_UNLESS DELETE_BUS>
	      <tr>
		<TMPL_UNLESS DISABLE_BUS>
	        <td width="1%"><input type="checkbox" name="addr-businesses" value="1" <TMPL_VAR NAME="addr-businesses"> onClick="change_total(this, <TMPL_VAR NAME="addr-businesses-price">, document.forms[0].ADDR_TOTAL,document.forms[0].ADDR_PRE_TOTAL)"></td>
			<td><span class="smallfont1">Businesses at Address</span><span class="reportprices">&nbsp;&nbsp;<TMPL_IF businesses-count>(<TMPL_VAR NAME="businesses-count">)</TMPL_IF></span></td>
			<td align="right" class="reportprices"><TMPL_UNLESS HIDE_PRICES>$<TMPL_VAR NAME=addr-businesses-price></TMPL_UNLESS>&nbsp;</td>
		<TMPL_ELSE>
	        <td width="1%">&nbsp;</td>
			<td class="disabled_small">Businesses at Address&nbsp;&nbsp;<TMPL_IF businesses-count>(<TMPL_VAR NAME="businesses-count">)</TMPL_IF> (disabled)</td>
			<td align="right" class="disabled_small"><TMPL_UNLESS HIDE_PRICES>$<TMPL_VAR NAME=addr-businesses-price></TMPL_UNLESS>&nbsp;</td>
		</TMPL_UNLESS>
	      </tr>
	      </TMPL_UNLESS>	

	      <tr>
	        <td width="1%"><input type="checkbox" name="addr-neighbors" value="1" <TMPL_VAR NAME="addr-neighbors"> onClick="change_total(this, <TMPL_VAR NAME="addr-neighbors-price">, document.forms[0].ADDR_TOTAL,document.forms[0].ADDR_PRE_TOTAL)"></td>
			<td><span class="smallfont1">Neighbors at Address&nbsp;&nbsp;</span><span class="reportprices">(up to 11)</span></td>
			<td align="right" class="reportprices"><TMPL_UNLESS HIDE_PRICES>$<TMPL_VAR NAME=addr-neighbors-price></TMPL_UNLESS>&nbsp;</td>
	      </tr>
	    
	     <TMPL_UNLESS DELETE_DL>
	      <tr>
		<TMPL_UNLESS DISABLE_DL>
	        <td width="1%"><input type="checkbox" name="addr-driving-licenses" value="1" <TMPL_VAR NAME=addr-driving-licenses> onClick="change_total(this, <TMPL_VAR NAME=addr-driving-licenses-price>,document.forms[0].ADDR_TOTAL,document.forms[0].ADDR_PRE_TOTAL)"></td>
			<td><span class="smallfont1">Include Driver Licenses Information&nbsp;</span><TMPL_IF driver-licenses-count><span class="reportprices">(<TMPL_VAR NAME="driver-licenses-count">)</span></TMPL_IF></td>
			<td align="right" class="reportprices"><TMPL_UNLESS HIDE_PRICES>&nbsp;&nbsp;$<TMPL_VAR NAME=addr-driving-licenses-price></TMPL_UNLESS>&nbsp;</td>
		<TMPL_ELSE>
	        <td width="1%">&nbsp;</td>
			<td class="disabled_small">Include Driver Licenses Information&nbsp;<TMPL_IF driver-licenses-count>(<TMPL_VAR NAME="driver-licenses-count">)</TMPL_IF> (disabled)</td>
			<td align="right" class="disabled_small"><TMPL_UNLESS HIDE_PRICES>&nbsp;&nbsp;$<TMPL_VAR NAME=addr-driving-licenses-price></TMPL_UNLESS>&nbsp;</td>
		</TMPL_UNLESS>
	      </tr>
	     </TMPL_UNLESS> 	
		
	     <TMPL_UNLESS DELETE_RT_MVR>
	      <tr>
		<TMPL_UNLESS DISABLE_RT_MVR>
	        <td width="1%"><input type="checkbox" name="addr-motor-vehicles" value="1" <TMPL_VAR NAME=addr-motor-vehicles> onClick="change_total(this, <TMPL_VAR NAME=addr-motor-vehicles-price>,document.forms[0].ADDR_TOTAL,document.forms[0].ADDR_PRE_TOTAL)"></td>
			<td><span class="smallfont1"><TMPL_IF TCOL>Motor Vehicle Locator<TMPL_ELSE>Motor Vehicle(s) Registered at Address</TMPL_IF>&nbsp;</span><TMPL_IF vehicles-count><span class="reportprices">(<TMPL_VAR NAME="vehicles-count">)</span></TMPL_IF></td>
			<td align="right" class="reportprices"><TMPL_UNLESS HIDE_PRICES>&nbsp;&nbsp;$<TMPL_VAR NAME=addr-motor-vehicles-price></TMPL_UNLESS>&nbsp;</td>
		<TMPL_ELSE>
	        <td width="1%">&nbsp;</td>
			<td class="disabled_small"><TMPL_IF TCOL>Motor Vehicle Locator<TMPL_ELSE>Motor Vehicle(s) Registered at Address</TMPL_IF>&nbsp;<TMPL_IF vehicles-count>(<TMPL_VAR NAME="vehicles-count">)</TMPL_IF>&nbsp;(disabled)</td>
			<td align="right" class="disabled_small"><TMPL_UNLESS HIDE_PRICES>&nbsp;&nbsp;$<TMPL_VAR NAME=addr-motor-vehicles-price></TMPL_UNLESS>&nbsp;</td>
		</TMPL_UNLESS>
	      </tr>
	     </TMPL_UNLESS>
		
            <TMPL_UNLESS TCOL>
	    <TMPL_UNLESS DELETE_BANKRUPTCY>
	      <tr>
		<TMPL_UNLESS DISABLE_BANKRUPTCY>
	        <td width="1%"><input type="checkbox" name="addr-bankruptcy" value="1" <TMPL_VAR NAME=addr-bankruptcy> onClick="change_total(this, <TMPL_VAR NAME=addr-bankruptcy-price>, document.forms[0].ADDR_TOTAL,document.forms[0].ADDR_PRE_TOTAL)"></td>
			<td class="smallfont1">Bankruptcy<TMPL_UNLESS HIDE_PRICES> <img src="<TMPL_VAR NAME=IMGPATH>/star.gif" border="0" width="11" height="10" alt="See Note Below Regarding Charges"><img src="<TMPL_VAR NAME=IMGPATH>/star.gif" border="0" width="11" height="10" alt="See Note Below Regarding Charges"></TMPL_UNLESS></td>
			<td align="right" class="reportprices"><TMPL_UNLESS HIDE_PRICES>$<TMPL_VAR NAME=addr-bankruptcy-price></TMPL_UNLESS>&nbsp;</td>
		<TMPL_ELSE>
	        <td width="1%">&nbsp;</td>
			<td class="disabled_small">Bankruptcy (disabled)&nbsp;&nbsp;</td>
			<td align="right" class="disabled_small"><TMPL_UNLESS HIDE_PRICES>$<TMPL_VAR NAME=addr-bankruptcy-price></TMPL_UNLESS>&nbsp;</td>
		</TMPL_UNLESS>
	      </tr>
	    </TMPL_UNLESS>

	 <TMPL_UNLESS DELETE_LIEN>
          <tr>
		<TMPL_UNLESS DISABLE_LIEN>
            <td width="1%"><input type="checkbox" name="addr-liens" value="1" <TMPL_VAR NAME=addr-liens> onClick="change_total(this, <TMPL_VAR NAME=addr-liens-price>, document.forms[0].ADDR_TOTAL,document.forms[0].ADDR_PRE_TOTAL)"></td>
            <td class="smallfont1">Liens and Judgments<TMPL_UNLESS HIDE_PRICES> <img src="<TMPL_VAR NAME=IMGPATH>/star.gif" border="0" width="11" height="10" alt="See Note Below Regarding Charges"><img src="<TMPL_VAR NAME=IMGPATH>/star.gif" border="0" width="11" height="10" alt="See Note Below Regarding Charges"></TMPL_UNLESS></td>
            <td align="right" class="reportprices"><TMPL_UNLESS HIDE_PRICES>$<TMPL_VAR NAME=addr-liens-price></TMPL_UNLESS>&nbsp;</td>
		<TMPL_ELSE>
            <td width="1%">&nbsp;</td>
            <td class="disabled_small">Liens and Judgments (disabled)&nbsp;&nbsp;</td>
            <td align="right" class="disabled_small"><TMPL_UNLESS HIDE_PRICES>$<TMPL_VAR NAME=addr-liens-price></TMPL_UNLESS>&nbsp;</td>
		</TMPL_UNLESS>
          </tr>
	 </TMPL_UNLESS>
	 </TMPL_UNLESS>

	  <TMPL_UNLESS DELETE_CENSUS>
          <tr>
		<TMPL_UNLESS DISABLE_CENSUS>
            <td width="1%"><input type="checkbox" name="addr-census-data" value="1" <TMPL_VAR NAME=addr-census-data> onClick="change_total(this, <TMPL_VAR NAME=addr-census-data-price>, document.forms[0].ADDR_TOTAL,document.forms[0].ADDR_PRE_TOTAL)"></td>
            <td class="smallfont1">Neighborhood Profile (2010 Census)&nbsp;&nbsp;</td>
            <td align="right" class="reportprices"><TMPL_UNLESS HIDE_PRICES>$<TMPL_VAR NAME=addr-census-data-price></TMPL_UNLESS>&nbsp;</td>
		<TMPL_ELSE>
            <td width="1%">&nbsp;</td>
            <td class="disabled_small">Neighborhood Profile (disabled)&nbsp;&nbsp;</td>
            <td align="right" class="disabled_small"><TMPL_UNLESS HIDE_PRICES>$<TMPL_VAR NAME=addr-census-data-price></TMPL_UNLESS>&nbsp;</td>
		</TMPL_UNLESS>
          </tr>
	  </TMPL_UNLESS>

	  <TMPL_IF ENHANCED>
		  <TMPL_UNLESS DELETE_CRIM>
			  <tr>
			<TMPL_UNLESS DISABLE_CRIM>
				<td width="1%"><input type="checkbox" name="addr-criminal-records" value="1" <TMPL_VAR NAME=addr-criminal-records> onClick="change_total(this, <TMPL_VAR NAME=addr-criminal-records-price>, document.forms[0].ADDR_TOTAL,document.forms[0].ADDR_PRE_TOTAL)"></td>
				<td class="smallfont1">Possible Criminal Records at Address&nbsp;&nbsp;</td>
				<td align="right" class="reportprices"><TMPL_UNLESS HIDE_PRICES>$<TMPL_VAR NAME=addr-criminal-records-price></TMPL_UNLESS>&nbsp;</td>
			<TMPL_ELSE>
				<td width="1%">&nbsp;</td>
				<td class="disabled_small">Possible Criminal Records at Address&nbsp;&nbsp;</td>
				<td align="right" class="disabled_small"><TMPL_UNLESS HIDE_PRICES>$<TMPL_VAR NAME=addr-criminal-records-price></TMPL_UNLESS>&nbsp;</td>
			</TMPL_UNLESS>
			  </tr>
		  </TMPL_UNLESS>
		  
		  <TMPL_UNLESS DELETE_SEXPREDATOR>
			  <tr>
			<TMPL_UNLESS DISABLE_SEXPREDATOR>
				<td width="1%"><input type="checkbox" name="addr-sexpredator" value="1" <TMPL_VAR NAME=addr-sexpredator> onClick="change_total(this, <TMPL_VAR NAME=addr-sexpredator-price>, document.forms[0].ADDR_TOTAL,document.forms[0].ADDR_PRE_TOTAL)"></td>
				<td class="smallfont1">Sexual Offenders at Address&nbsp;&nbsp;</td>
				<td align="right" class="reportprices"><TMPL_UNLESS HIDE_PRICES>$<TMPL_VAR NAME=addr-sexpredator-price></TMPL_UNLESS>&nbsp;</td>
			<TMPL_ELSE>
				<td width="1%">&nbsp;</td>
				<td class="disabled_small">Sexual Offenders at Address&nbsp;&nbsp;</td>
				<td align="right" class="disabled_small"><TMPL_UNLESS HIDE_PRICES>$<TMPL_VAR NAME=addr-sexpredator-price></TMPL_UNLESS>&nbsp;</td>
			</TMPL_UNLESS>
			  </tr>
		  </TMPL_UNLESS>

          <TMPL_UNLESS DELETE_CUSTOM_JAILBOOKING>
          <TMPL_IF SHOW_JAIL_BOOKING_SEARCH>
          <TMPL_UNLESS DELETE_JAILBOOKING>
           <tr>
          <TMPL_UNLESS DISABLE_JAILBOOKING>
				<td width="1%"><input type="checkbox" name="addr-jailbooking" value="1" <TMPL_VAR NAME=addr-jailbooking> onClick="change_total(this, <TMPL_VAR NAME=addr-jailbooking-price>, document.forms[0].ADDR_TOTAL,document.forms[0].ADDR_PRE_TOTAL)"></td>
				<td class="smallfont1">Jail Bookings at Address&nbsp;&nbsp;</td>
				<td align="right" class="reportprices"><TMPL_UNLESS HIDE_PRICES>$<TMPL_VAR NAME=addr-jailbooking-price></TMPL_UNLESS>&nbsp;</td>
		  <TMPL_ELSE>
				<td width="1%">&nbsp;</td>
				<td class="disabled_small">Jail Bookings at Address&nbsp;&nbsp;</td>
				<td align="right" class="disabled_small"><TMPL_UNLESS HIDE_PRICES>$<TMPL_VAR NAME=addr-jailbooking-price></TMPL_UNLESS>&nbsp;</td>
          </TMPL_UNLESS>
          </tr>
          </TMPL_UNLESS>
          </TMPL_IF>
          </TMPL_UNLESS>
          
		  <TMPL_UNLESS DELETE_CONCEALED_WEAPON>
			  <tr>
			<TMPL_UNLESS DISABLE_CONCEALED_WEAPON>
				<td width="1%"><input type="checkbox" name="addr-weapon-permits" value="1" <TMPL_VAR NAME=addr-weapon-permits> onClick="change_total(this, <TMPL_VAR NAME=addr-weapon-permits-price>, document.forms[0].ADDR_TOTAL,document.forms[0].ADDR_PRE_TOTAL)"></td>
				<td class="smallfont1">Concealed Weapon Permits at Address&nbsp;&nbsp;</td>
				<td align="right" class="reportprices"><TMPL_UNLESS HIDE_PRICES>$<TMPL_VAR NAME=addr-weapon-permits-price></TMPL_UNLESS>&nbsp;</td>
			<TMPL_ELSE>
				<td width="1%">&nbsp;</td>
				<td class="disabled_small">Concealed Weapon Permits at Address&nbsp;&nbsp;</td>
				<td align="right" class="disabled_small"><TMPL_UNLESS HIDE_PRICES>$<TMPL_VAR NAME=addr-weapon-permits-price></TMPL_UNLESS>&nbsp;</td>
			</TMPL_UNLESS>
			  </tr>
		  </TMPL_UNLESS>          

		  <TMPL_UNLESS DELETE_HUNTING_LICENSE>
			  <tr>
			<TMPL_UNLESS DISABLE_CONCEALED_WEAPON>
				<td width="1%"><input type="checkbox" name="addr-hunting-fishing-licenses" value="1" <TMPL_VAR NAME=addr-hunting-fishing-licenses> onClick="change_total(this, <TMPL_VAR NAME=addr-hunting-fishing-licenses-price>, document.forms[0].ADDR_TOTAL,document.forms[0].ADDR_PRE_TOTAL)"></td>
				<td class="smallfont1">Hunting and Fishing Licenses at Address&nbsp;&nbsp;</td>
				<td align="right" class="reportprices"><TMPL_UNLESS HIDE_PRICES>$<TMPL_VAR NAME=addr-hunting-fishing-licenses-price></TMPL_UNLESS>&nbsp;</td>
			<TMPL_ELSE>
				<td width="1%">&nbsp;</td>
				<td class="disabled_small">Hunting and Fishing Licenses at Address&nbsp;&nbsp;</td>
				<td align="right" class="disabled_small"><TMPL_UNLESS HIDE_PRICES>$<TMPL_VAR NAME=addr-hunting-fishing-licenses-price></TMPL_UNLESS>&nbsp;</td>
			</TMPL_UNLESS>
			  </tr>
		  </TMPL_UNLESS>               
	  </TMPL_IF>
	   
	    </table>
	    </td>
	    <td width="1%" nowrap class="unifont1">&nbsp;&nbsp;&nbsp;&nbsp;</td>
	    <td width="34%" valign="top">
	    <table border="0" cellpadding="0" cellspacing="0" width="100%">
	      <tr>
	        <td width="1%">&nbsp;</td>
			<td class="smallfont1">&nbsp;</td>
			<td align="right" class="smallfont1">&nbsp;</td>
	      </tr>
	    </table>
	    </td>
	  </tr>
	</table>
	</td>
      </tr>
    </table>

	<BR>
    <table border="0" cellpadding="2" cellspacing="0" width="100%">
      <tr>
      <TMPL_UNLESS HIDE_PRICES>
        <td width="50%" class="myaccounttitle" nowrap>Maximum Report Price:&nbsp;$<input type='text' name='ADDR_TOTAL' size='5' value='<TMPL_VAR NAME=ADDR_TOTAL>' onFocus='this.blur()'></td>
	  <TMPL_ELSE>
	<td class="smallfont1">&nbsp;<input type='hidden' name='ADDR_TOTAL' size='5' value='<TMPL_VAR NAME=ADDR_TOTAL>' onFocus='this.blur()'></td>
	  </TMPL_UNLESS>
      <td class="smallfont1">
      <input type="checkbox" name="addr-prompt" value="1" <TMPL_VAR NAME=addr-prompt>> Prompt me for these options for each report.
      <TMPL_IF NAME="ENABLE_SAVE_REPORT">
        <br>
	  <span<TMPL_IF NAME="REPORT_MANAGER_OFF"> class="disabled_item"</TMPL_IF>><input type="checkbox" name="save-report" value="1" <TMPL_VAR NAME=save-report><TMPL_IF NAME="REPORT_MANAGER_OFF"> readonly onChange="this.checked = !this.checked"</TMPL_IF>> Save report for later access.</span>
	  <TMPL_IF NAME="REPORT_MANAGER_OFF">
	    &nbsp;(Saving Reports currently not available)
	  </TMPL_IF>
      </TMPL_IF>
      </td>
      </tr>
      <tr>
        <td width="49%" class="smallfont1"><TMPL_UNLESS HIDE_PRICES><b>NOTE:</b>&nbsp;&nbsp;This is the maximum possible cost for this report.&nbsp;&nbsp;You will not be charged for options returning no results except those marked with <img alt="" src="<TMPL_VAR NAME=IMGPATH>/star.gif" border="0" width="11" height="10"><img alt="" src="<TMPL_VAR NAME=IMGPATH>/star.gif" border="0" width="11" height="10"> where search charge applies with or without results.&nbsp;&nbsp;</TMPL_UNLESS>No results will be returned for options which contain more than 1,000 records</td>
	<td width="51%" nowrap class="unifont1">&nbsp;&nbsp;&nbsp;&nbsp;</td>
      </tr>
    </table>
    </td>
  </tr>
  <tr>
  <tr>
    <td colspan="3"><input type=hidden name="ADDR_PRE_TOTAL" value="<TMPL_VAR NAME=ADDR_PRE_TOTAL>"></td>
  </tr>
  </tr>
</table>
<!-- End short_addr_report_body.tpl-->
