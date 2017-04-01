<!-- Begin short_addr_report_body.tpl-->
<script>
    window.resizeTo(780,680);
</script>


<table width="720" align="center" cellpadding="2" border="0" cellspacing="4" style="background-color:#F4F0DE; border: solid #ccc 1px;">
<TMPL_IF NAME="PREFERENCES_ERROR_MESSAGE">
  <tr>
    <td align="center" colspan="3"><b><font color="red"><TMPL_VAR NAME="PREFERENCES_ERROR_MESSAGE"></font></b></td>
  </tr>
</TMPL_IF>

  <tr>
    <td align="left" colspan="3"class="medblack"><b><TMPL_UNLESS HIDE_PRICES>Base Report Price:&nbsp;&nbsp;$<TMPL_VAR NAME="base-addr-price"><TMPL_ELSE>Base Report Features:</TMPL_UNLESS>&nbsp;</b></td>
  </tr>

   <tr>
      <td width="56%" valign="top">
          <table border="0" cellpadding="2" cellspacing="0" width="100%">
	      <tr>
		    <td align="left" class="medblack2" width="82%">Current and Previous Residents&nbsp;&nbsp;(with Current Addresses for Previous Residents)&nbsp;<TMPL_IF residents-count><span class="reportprices">-&nbsp;(<TMPL_VAR residents-count>)</span></TMPL_IF></td>
		    <TMPL_UNLESS NAME="HIDE_PRICES"><td valign="top" align="right" width="18%" class="medblue2">-Included in Base Price&nbsp;&nbsp;</td></TMPL_UNLESS>
	      </tr>
	      <tr>
		    <td align="left" class="medblack2" width="82%">Phones at Address&nbsp;(Numerous phones may be returned in the case of business or apartment buildings)&nbsp;</td>
		    <TMPL_UNLESS NAME="HIDE_PRICES"><td valign="top" align="right" width="18%" class="medblue2">-Included in Base Price&nbsp;&nbsp;</td></TMPL_UNLESS>
	      </tr>
	  </table>
          <table border="0" cellpadding="0" cellspacing="0" width="100%">
	      <tr>
		  <tr>
		    <td width="1%"><input type="checkbox" id="addr-residential-phones" name="addr-residential-phones" value="1" <TMPL_VAR NAME="addr-residential-phones">></td>
		    <td align="left" class="medblack2"><label for="addr-residential-phones">&nbsp;Residential:&nbsp;</label><TMPL_IF residential-phones-count><span class="reportprices">(<TMPL_VAR residential-phones-count>)</span></TMPL_IF></td>

		    <td width="1%"><input type="checkbox" id="addr-business-phones" name="addr-business-phones" value="1" <TMPL_VAR NAME="addr-business-phones">></td>
		    <td align="left" class="medblack2"><label for="addr-business-phones">&nbsp;Business:&nbsp;</label><TMPL_IF business-phones-count><span class="reportprices">(<TMPL_VAR business-phones-count>)</span></TMPL_IF></td>
		  </tr>
	      </tr>
	  </table>

      </td>
      </tr>
</table>

<table border="0" cellpadding="0" cellspacing="0" width="100%" height="10">
  <tr height="10">
    <td height="10" class="unifont2pt">&nbsp;</td>
  </tr>
</table>

<table width="720" align="center" cellpadding="2" border="0" cellspacing="4" style="background-color:#F4F0DE; border: solid #ccc 1px;">
	  <tr>
	    <td align="left" colspan="3" class="medblack"><b>Additional Report Options:</b></td>
	  </tr>

	  <tr>
	    <td colspan="3" valign="top">
	    <table border="0" cellpadding="0" cellspacing="0" width="100%">

		<TMPL_IF DISABLE_DEEDS>
		 <TMPL_UNLESS DELETE_DEEDS>
		     <tr>
       	               <td width="1%">&nbsp;</td>
			<td  width="60%" align="left" span class="disabled_small">Property Ownership Current/Previous&nbsp;&nbsp;<span class="reportprices"><TMPL_IF properties-count>(<TMPL_VAR NAME="properties-count">)</TMPL_IF> </span>(disabled)</td>
			<td width="39%" align="left" class="disabled_small"><TMPL_UNLESS HIDE_PRICES>$<TMPL_VAR NAME=addr-properties-price></TMPL_UNLESS>&nbsp;</td>
		     </tr>
		 </TMPL_UNLESS> 	
		<TMPL_ELSE>
		<TMPL_IF DISABLE_ASSESSMENT>
		  <TMPL_UNLESS DELETE_ASSESSMENT>
		     <tr>
      	                <td width="1%">&nbsp;</td>
			<td  width="60%" align="left" class="disabled_small">Property Ownership Current/Previous&nbsp;&nbsp;><span class="reportprices"><TMPL_IF properties-count>(<TMPL_VAR NAME="properties-count">)</TMPL_IF> </span>(disabled)</td>
			<td width="39%" align="left" class="disabled_small"><TMPL_UNLESS HIDE_PRICES>$<TMPL_VAR NAME=addr-properties-price></TMPL_UNLESS>&nbsp;</td>
		     </tr>
		  </TMPL_UNLESS> 	
		<TMPL_ELSE>
		     <tr>
	                <td width="1%"><input type="checkbox" name="addr-properties" id="addr-properties" value="1" <TMPL_VAR NAME=addr-properties> onClick="change_total(this, <TMPL_VAR NAME=addr-properties-price>,document.forms[0].ADDR_TOTAL,document.forms[0].ADDR_PRE_TOTAL)"></td>
			<td class="medblack" width="60%" align="left"><label for="addr-properties">&nbsp;Property Ownership Current/Previous</label><span class="reportprices"><TMPL_IF properties-count>&nbsp;(<TMPL_VAR NAME="properties-count">)</TMPL_IF></span></td>
			<td width="39%" align="left" class="medblue"><TMPL_UNLESS HIDE_PRICES>$<TMPL_VAR NAME=addr-properties-price></TMPL_UNLESS>&nbsp;</td>
		     </tr>
		</TMPL_IF>
		</TMPL_IF>

	      <TMPL_UNLESS DELETE_BUS>
	      <tr>
		<TMPL_UNLESS DISABLE_BUS>
			<td width="1%"><input type="checkbox" name="addr-businesses" id="addr-businesses" value="1" <TMPL_VAR NAME="addr-businesses"> onClick="change_total(this, <TMPL_VAR NAME="addr-businesses-price">, document.forms[0].ADDR_TOTAL,document.forms[0].ADDR_PRE_TOTAL)"></td>
			<td class="medblack" width="60%" align="left"><label for="addr-businesses">&nbsp;Businesses at Address</label><span class="reportprices"><TMPL_IF properties-count>&nbsp;(<TMPL_VAR NAME="businesses-count">)</TMPL_IF></span></td>
			<td width="39%" align="left" class="medblue"><TMPL_UNLESS HIDE_PRICES>$<TMPL_VAR NAME="addr-businesses-price"></TMPL_UNLESS>&nbsp;</td>
		<TMPL_ELSE>
			<td width="1%">&nbsp;</td>
			<td width="60%" align="left" class="disabled_small">Businesses at Address&nbsp;&nbsp;<TMPL_IF businesses-count>(<TMPL_VAR NAME="businesses-count">)</TMPL_IF> (disabled)</td>
			<td width="39%" align="left" class="disabled_small"><TMPL_UNLESS HIDE_PRICES>$<TMPL_VAR NAME=addr-businesses-price></TMPL_UNLESS>&nbsp;</td>
		</TMPL_UNLESS>
	      </tr>
	      </TMPL_UNLESS>	

	     <tr>
		<td width="1%"><input type="checkbox" name="addr-neighbors" id="addr-neighbors" value="1" <TMPL_VAR NAME="addr-neighbors"> onClick="change_total(this, <TMPL_VAR NAME="addr-neighbors-price">, document.forms[0].ADDR_TOTAL,document.forms[0].ADDR_PRE_TOTAL)"></td>
		<td class="medblack" width="60%" align="left"><label for="addr-neighbors">&nbsp;Neighbors at Address</label><span class="reportprices">&nbsp;(up to 11)</span></td>
		<td width="39%" align="left" class="medblue"><TMPL_UNLESS HIDE_PRICES>$<TMPL_VAR NAME="addr-neighbors-price"></TMPL_UNLESS>&nbsp;</td>
	    </tr>

	      <TMPL_UNLESS DELETE_DL>
	      <tr>
		<TMPL_UNLESS DISABLE_DL>
			<td width="1%"><input type="checkbox" name="addr-driving-licenses" id="addr-driving-licenses" value="1" <TMPL_VAR NAME="addr-driving-licenses"> onClick="change_total(this, <TMPL_VAR NAME="addr-driving-licenses-price">, document.forms[0].ADDR_TOTAL,document.forms[0].ADDR_PRE_TOTAL)"></td>
			<td class="medblack" width="60%" align="left"><label for="addr-driving-licenses">&nbsp;Include Driver Licenses Information</label><span class="reportprices"><TMPL_IF driver-licenses-count>&nbsp;(<TMPL_VAR NAME="driver-licenses-count">)</TMPL_IF></span></td>
			<td width="39%" align="left" class="medblue"><TMPL_UNLESS HIDE_PRICES>$<TMPL_VAR NAME="addr-driving-licenses-price"></TMPL_UNLESS>&nbsp;</td>
		<TMPL_ELSE>
			<td width="1%">&nbsp;</td>
			<td width="60%" align="left" class="disabled_small">Include Driver Licenses Information&nbsp;&nbsp;<TMPL_IF driver-licenses-count>(<TMPL_VAR NAME="driver-licenses-count">)</TMPL_IF> (disabled)</td>
			<td width="39%" align="left" class="disabled_small"><TMPL_UNLESS HIDE_PRICES>$<TMPL_VAR NAME=addr-driving-licenses-price></TMPL_UNLESS>&nbsp;</td>
		</TMPL_UNLESS>
	      </tr>
	      </TMPL_UNLESS>	


	      <TMPL_UNLESS DELETE_MV>
	      <tr>
		<TMPL_UNLESS DISABLE_MV>
			<td width="1%"><input type="checkbox" name="addr-motor-vehicles" id="addr-motor-vehicles" value="1" <TMPL_VAR NAME="addr-motor-vehicles"> onClick="change_total(this, <TMPL_VAR NAME="addr-motor-vehicles-price">, document.forms[0].ADDR_TOTAL,document.forms[0].ADDR_PRE_TOTAL)"></td>
			<td class="medblack" width="60%" align="left"><label for="addr-motor-vehicles">&nbsp;Motor Vehicle(s) Registered at Address</label><span class="reportprices"><TMPL_IF vehicles-count>&nbsp;(<TMPL_VAR NAME="vehicles-count">)</TMPL_IF></span></td>
			<td width="39%" align="left" class="medblue"><TMPL_UNLESS HIDE_PRICES>$<TMPL_VAR NAME="addr-motor-vehicles-price"></TMPL_UNLESS>&nbsp;</td>
		<TMPL_ELSE>
			<td width="1%">&nbsp;</td>
			<td width="60%" align="left" class="disabled_small">Motor Vehicle(s) Registered at Address&nbsp;&nbsp;<TMPL_IF vehicles-count>(<TMPL_VAR NAME="vehicles-count">)</TMPL_IF> (disabled)</td>
			<td width="39%" align="left" class="disabled_small"><TMPL_UNLESS HIDE_PRICES>$<TMPL_VAR NAME=addr-motor-vehicles-price></TMPL_UNLESS>&nbsp;</td>
		</TMPL_UNLESS>
	      </tr>
	      </TMPL_UNLESS>	
	      
      <TMPL_IF ENHANCED> 
	      <TMPL_UNLESS DELETE_CRIM>
	      <tr>
		<TMPL_UNLESS DISABLE_CRIM>
			<td width="1%"><input type="checkbox" name="addr-criminal-records" id="addr-criminal-records" value="1" <TMPL_VAR NAME="addr-criminal-records"> onClick="change_total(this, <TMPL_VAR NAME="addr-criminal-records-price">, document.forms[0].ADDR_TOTAL,document.forms[0].ADDR_PRE_TOTAL)"></td>
			<td class="medblack" width="60%" align="left"><label for="addr-criminal-records">&nbsp;Possible Criminal Records at Address</label></td>
			<td width="39%" align="left" class="medblue"><TMPL_UNLESS HIDE_PRICES>$<TMPL_VAR NAME="addr-criminal-records-price"></TMPL_UNLESS>&nbsp;</td>
		<TMPL_ELSE>
			<td width="1%">&nbsp;</td>
			<td width="60%" align="left" class="disabled_small">Possible Criminal Records at Address&nbsp;&nbsp; (disabled)</td>
			<td width="39%" align="left" class="disabled_small"><TMPL_UNLESS HIDE_PRICES>$<TMPL_VAR NAME=addr-criminal-records-price></TMPL_UNLESS>&nbsp;</td>
		</TMPL_UNLESS>
	      </tr>
	      </TMPL_UNLESS>	
	
	      <TMPL_UNLESS DELETE_SEXPREDATOR>
	      <tr>
		<TMPL_UNLESS DISABLE_SEXPREDATOR>
			<td width="1%"><input type="checkbox" name="addr-sexpredator" id="addr-sexpredator" value="1" <TMPL_VAR NAME="addr-sexpredator"> onClick="change_total(this, <TMPL_VAR NAME="addr-sexpredator-price">, document.forms[0].ADDR_TOTAL,document.forms[0].ADDR_PRE_TOTAL)"></td>
			<td class="medblack" width="60%" align="left"><label for="addr-sexpredator">&nbsp;Sexual Offenders at Address</label></td>
			<td width="39%" align="left" class="medblue"><TMPL_UNLESS HIDE_PRICES>$<TMPL_VAR NAME="addr-sexpredator-price"></TMPL_UNLESS>&nbsp;</td>
		<TMPL_ELSE>
			<td width="1%">&nbsp;</td>
			<td width="60%" align="left" class="disabled_small">Sexual Offenders at Address&nbsp;&nbsp; (disabled)</td>
			<td width="39%" align="left" class="disabled_small"><TMPL_UNLESS HIDE_PRICES>$<TMPL_VAR NAME=addr-sexpredator-price></TMPL_UNLESS>&nbsp;</td>
		</TMPL_UNLESS>
	      </tr>
	      </TMPL_UNLESS>	

         <TMPL_UNLESS DELETE_CUSTOM_JAILBOOKING>
         <TMPL_IF SHOW_JAIL_BOOKING_SEARCH>
         <TMPL_UNLESS DELETE_JAILBOOKING>
          <tr>
        <TMPL_UNLESS DISABLE_JAILBOOKING>
			<td width="1%"><input type="checkbox" name="addr-jailbooking" id="addr-jailbooking" value="1" <TMPL_VAR NAME="addr-jailbooking"> onClick="change_total(this, <TMPL_VAR NAME="addr-jailbooking-price">, document.forms[0].ADDR_TOTAL,document.forms[0].ADDR_PRE_TOTAL)"></td>
			<td class="medblack" width="60%" align="left"><label for="addr-jailbooking">&nbsp;Jail Bookings at Address</label></td>
			<td width="39%" align="left" class="medblue"><TMPL_UNLESS HIDE_PRICES>$<TMPL_VAR NAME="addr-jailbooking-price"></TMPL_UNLESS>&nbsp;</td>
		<TMPL_ELSE>
			<td width="1%">&nbsp;</td>
			<td width="60%" align="left" class="disabled_small">Jail Bookings at Address&nbsp;&nbsp; (disabled)</td>
			<td width="39%" align="left" class="disabled_small"><TMPL_UNLESS HIDE_PRICES>$<TMPL_VAR NAME=addr-jailbooking-price></TMPL_UNLESS>&nbsp;</td>
        </TMPL_UNLESS>
          </tr>
          </TMPL_UNLESS>
              </TMPL_IF>
          </TMPL_UNLESS>

	      <TMPL_UNLESS DELETE_CONCEALED_WEAPON>
	      <tr>
		<TMPL_UNLESS DISABLE_CONCEALED_WEAPON>
			<td width="1%"><input type="checkbox" name="addr-weapon-permits" id="addr-weapon-permits" value="1" <TMPL_VAR NAME="addr-weapon-permits"> onClick="change_total(this, <TMPL_VAR NAME="addr-weapon-permits-price">, document.forms[0].ADDR_TOTAL,document.forms[0].ADDR_PRE_TOTAL)"></td>
			<td class="medblack" width="60%" align="left"><label for="addr-weapon-permits">&nbsp;Concealed Weapon Permits at Address</label></td>
			<td width="39%" align="left" class="medblue"><TMPL_UNLESS HIDE_PRICES>$<TMPL_VAR NAME="addr-weapon-permits-price"></TMPL_UNLESS>&nbsp;</td>
		<TMPL_ELSE>
			<td width="1%">&nbsp;</td>
			<td width="60%" align="left" class="disabled_small">Concealed Weapon Permits at Address&nbsp;&nbsp; (disabled)</td>
			<td width="39%" align="left" class="disabled_small"><TMPL_UNLESS HIDE_PRICES>$<TMPL_VAR NAME=addr-weapon-permits-price></TMPL_UNLESS>&nbsp;</td>
		</TMPL_UNLESS>
	      </tr>
	      </TMPL_UNLESS>	
          
	      <TMPL_UNLESS DELETE_HUNTING_LICENSE>
	      <tr>
		<TMPL_UNLESS DISABLE_HUNTING_LICENSE>
			<td width="1%"><input type="checkbox" name="addr-hunting-fishing-licenses" id="addr-hunting-fishing-licenses" value="1" <TMPL_VAR NAME="addr-hunting-fishing-licenses"> onClick="change_total(this, <TMPL_VAR NAME="addr-hunting-fishing-licenses-price">, document.forms[0].ADDR_TOTAL,document.forms[0].ADDR_PRE_TOTAL)"></td>
			<td class="medblack" width="60%" align="left"><label for="addr-hunting-fishing-licenses">&nbsp;Hunting and Fishing Licenses at Address</label></td>
			<td width="39%" align="left" class="medblue"><TMPL_UNLESS HIDE_PRICES>$<TMPL_VAR NAME="addr-hunting-fishing-licenses-price"></TMPL_UNLESS>&nbsp;</td>
		<TMPL_ELSE>
			<td width="1%">&nbsp;</td>
			<td width="60%" align="left" class="disabled_small">Hunting and Fishing Licenses at Address&nbsp;&nbsp; (disabled)</td>
			<td width="39%" align="left" class="disabled_small"><TMPL_UNLESS HIDE_PRICES>$<TMPL_VAR NAME=addr-hunting-fishing-licenses-price></TMPL_UNLESS>&nbsp;</td>
		</TMPL_UNLESS>
	      </tr>
	      </TMPL_UNLESS>	
	</TMPL_IF>	      

	      <TMPL_UNLESS DELETE_BANKRUPTCY>
	      <tr>
		<TMPL_UNLESS DISABLE_BANKRUPTCY>
			<td width="1%"><input type="checkbox" name="addr-bankruptcy" id="addr-bankruptcy" value="1" <TMPL_VAR NAME="addr-bankruptcy"> onClick="change_total(this, <TMPL_VAR NAME="addr-bankruptcy-price">, document.forms[0].ADDR_TOTAL,document.forms[0].ADDR_PRE_TOTAL)"></td>
			<td class="medblack" width="60%" align="left"><label for="addr-bankruptcy">&nbsp;Bankruptcy<TMPL_UNLESS HIDE_PRICES> <img src="<TMPL_VAR NAME=IMGPATH>/star.gif" border="0" width="11" height="10" alt="See Note Below Regarding Charges"><img src="<TMPL_VAR NAME=IMGPATH>/star.gif" border="0" width="11" height="10" alt="See Note Below Regarding Charges"></TMPL_UNLESS></label></td>
			<td width="39%" align="left" class="medblue"><TMPL_UNLESS HIDE_PRICES>$<TMPL_VAR NAME="addr-bankruptcy-price"></TMPL_UNLESS>&nbsp;</td>
		<TMPL_ELSE>
			<td width="1%">&nbsp;</td>
			<td width="60%" align="left" class="disabled_small">Bankruptcy&nbsp;&nbsp;(disabled)</td>
			<td width="39%" align="left" class="disabled_small"><TMPL_UNLESS HIDE_PRICES>$<TMPL_VAR NAME=addr-bankruptcy-price></TMPL_UNLESS>&nbsp;</td>
		</TMPL_UNLESS>
	      </tr>
	      </TMPL_UNLESS>

	      <TMPL_UNLESS DELETE_LIEN>
	      <tr>
		<TMPL_UNLESS DISABLE_LIEN>
			<td width="1%"><input type="checkbox" name="addr-liens" id="addr-liens" value="1" <TMPL_VAR NAME="addr-liens"> onClick="change_total(this, <TMPL_VAR NAME="addr-liens-price">, document.forms[0].ADDR_TOTAL,document.forms[0].ADDR_PRE_TOTAL)"></td>
			<td class="medblack" width="60%" align="left"><label for="addr-liens">&nbsp;Liens and Judgments<TMPL_UNLESS HIDE_PRICES> <img src="<TMPL_VAR NAME=IMGPATH>/star.gif" border="0" width="11" height="10" alt="See Note Below Regarding Charges"><img src="<TMPL_VAR NAME=IMGPATH>/star.gif" border="0" width="11" height="10" alt="See Note Below Regarding Charges"></TMPL_UNLESS></label></td>
			<td width="39%" align="left" class="medblue"><TMPL_UNLESS HIDE_PRICES>$<TMPL_VAR NAME="addr-liens-price"></TMPL_UNLESS>&nbsp;</td>
		<TMPL_ELSE>
			<td width="1%">&nbsp;</td>
			<td width="60%" align="left" class="disabled_small">Liens and Judgments&nbsp;&nbsp;(disabled)</td>
			<td width="39%" align="left" class="disabled_small"><TMPL_UNLESS HIDE_PRICES>$<TMPL_VAR NAME=addr-liens-price></TMPL_UNLESS>&nbsp;</td>
		</TMPL_UNLESS>
	      </tr>
	      </TMPL_UNLESS>

	      <TMPL_UNLESS DELETE_CENSUS>
	      <tr>
		<TMPL_UNLESS DISABLE_CENSUS>
			<td width="1%"><input type="checkbox" name="addr-census-data" id="addr-census-data" value="1" <TMPL_VAR NAME="addr-census-data"> onClick="change_total(this, <TMPL_VAR NAME="addr-census-data-price">, document.forms[0].ADDR_TOTAL,document.forms[0].ADDR_PRE_TOTAL)"></td>
			<td class="medblack" width="60%" align="left"><label for="addr-census-data">&nbsp;Neighborhood Profile (2010 Census)</label><span class="reportprices"></span></td>
			<td width="39%" align="left" class="medblue"><TMPL_UNLESS HIDE_PRICES>$<TMPL_VAR NAME="addr-census-data-price"></TMPL_UNLESS>&nbsp;</td>
		<TMPL_ELSE>
			<td width="1%">&nbsp;</td>
			<td width="60%" align="left" class="disabled_small">Neighborhood Profile (2010 Census)&nbsp;&nbsp;(disabled)</td>
			<td width="39%" align="left" class="disabled_small"><TMPL_UNLESS HIDE_PRICES>$<TMPL_VAR NAME=addr-census-data-price></TMPL_UNLESS>&nbsp;</td>
		</TMPL_UNLESS>
	      </tr>
	      </TMPL_UNLESS>

	  </table>
	</td>
	</tr>





    <tr>
      <td colspan="3" valign="top"><div id="lineVertRedDot"></div></td>
    </tr>

    <tr>
      <td colspan="3" valign="top">
          <table border="0" cellpadding="0" cellspacing="0" width="100%">
		  <tr>
		   <TMPL_UNLESS HIDE_PRICES>
		    <td align="left" class="medblack" width="28%"><b>Maximum Report Price:&nbsp;$</b></td>
		    <td align="left"><input type="text" name="ADDR_TOTAL" size="5" value="<TMPL_VAR NAME='ADDR_TOTAL'>" onFocus="this.blur();"></td>
		   <TMPL_ELSE>
		    <input type='hidden' name='ADDR_TOTAL' size='5' value='<TMPL_VAR NAME=ADDR_TOTAL>' onFocus='this.blur()'>
		   </TMPL_UNLESS>
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
		    <td width="1%"><input type="checkbox" name="addr-prompt" id="addr-prompt" value="1" <TMPL_VAR NAME=addr-prompt> ></td>
		    <td align="left" class="medblack"><label for="addr-prompt">&nbsp;Prompt me for these options for each report.</label> </td>
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

<input type=hidden name="ADDR_PRE_TOTAL" value="<TMPL_VAR NAME=ADDR_PRE_TOTAL>">
</table>
<!-- End short_addr_report_body.tpl-->
