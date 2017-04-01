<!-- Begin short_bus_report_body.tpl-->
<table width="740" align="center" cellpadding="2" border="0" cellspacing="4" style="background-color:#F4F0DE; border: solid #ccc 1px;">

<TMPL_IF NAME="PREFERENCES_ERROR_MESSAGE">
  <tr>
    <td align="center" colspan="3"><TMPL_VAR NAME="PREFERENCES_ERROR_MESSAGE"></td>
  </tr>
</TMPL_IF>

  <tr>
    <td align="left" colspan="3"class="medblack"><b>&nbsp;<TMPL_UNLESS HIDE_PRICES>Base Report Price:&nbsp;&nbsp;$<TMPL_VAR NAME="base-bus-price"><TMPL_ELSE>Base Report Features:</TMPL_UNLESS>&nbsp;</b></td>
  </tr>

   <tr>
      <td width="56%" valign="top">
          <table border="0" cellpadding="0" cellspacing="0" width="100%">
		  <tr>
		    <td width="1%"><input type="checkbox" id="alternate-identities" name="alternate-identities" value="2" <TMPL_VAR NAME="alternate-identities">></td>
		    <td align="left" class="medblack"><label for="alternate-identities">&nbsp;Name and TIN Variations&nbsp;&nbsp;</label></td>
		    <TMPL_UNLESS NAME="HIDE_PRICES"><td align="right" class="medblue">Included in Base Price&nbsp;&nbsp;</td></TMPL_UNLESS>
		  </tr>
		  <tr>
		    <td width="1%"><input type="checkbox" id="parent-company" name="parent-company" value="2" <TMPL_VAR NAME="parent-company">></td>
		    <td align="left" class="medblack"><label for="parent-company">&nbsp;Parent Company and Industry Information&nbsp;&nbsp;</label></td>
		    <TMPL_UNLESS NAME="HIDE_PRICES"><td align="right" class="medblue">Included in Base Price&nbsp;&nbsp;</td></TMPL_UNLESS>
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


<table width="740" align="center" cellpadding="2" border="0" cellspacing="4" style="background-color:#F4F0DE; border: solid #ccc 1px;">

  <tr>
    <td align="left" colspan="3" class="medblack"><b>&nbsp;Additional Report Options:</b></td>
  </tr>

	  <tr>

	    <td width="49%" valign="top">
	    <table border="0" cellpadding="0" cellspacing="0" width="100%">
	      <tr>
	        <td align="left" class="medblack" colspan="3">&nbsp;<b>Business Filings</b>&nbsp;</td>
	      </tr>

	       <tr>
	            <td width="1%">&nbsp;</td>
		    <td align="left" class="medblack"><input type="checkbox" id="bankruptcy" name="bankruptcy" value="1" <TMPL_VAR NAME="bankruptcy"> onClick="change_total(this, <TMPL_VAR NAME='bankruptcy-price'>, document.forms[0].BUS_TOTAL,document.forms[0].BUS_PRE_TOTAL)">&nbsp;<label for="bankruptcy">Bankruptcy<TMPL_UNLESS HIDE_PRICES> <img src="<TMPL_VAR NAME='IMGPATH'>/star.gif" border="0" width="11" height="10" alt="See Note Below Regarding Charges"><img src="<TMPL_VAR NAME='IMGPATH'>/star.gif" border="0" width="11" height="10" alt="See Note Below Regarding Charges"></TMPL_UNLESS></label></td>
		    <td align="right" class="medblue"><TMPL_UNLESS HIDE_PRICES>$<TMPL_VAR NAME="bankruptcy-price"></TMPL_UNLESS>&nbsp;</td>
	      </tr>

	       <tr>
	            <td width="1%">&nbsp;</td>
		    <td align="left" class="medblack"><input type="checkbox" id="liens" name="liens" value="1" <TMPL_VAR NAME="liens"> onClick="change_total(this, <TMPL_VAR NAME='liens-price'>, document.forms[0].BUS_TOTAL,document.forms[0].BUS_PRE_TOTAL)">&nbsp;<label for="liens">Liens &amp; Judgments<TMPL_UNLESS HIDE_PRICES> <img src="<TMPL_VAR NAME='IMGPATH'>/star.gif" border="0" width="11" height="10" alt="See Note Below Regarding Charges"><img src="<TMPL_VAR NAME='IMGPATH'>/star.gif" border="0" width="11" height="10" alt="See Note Below Regarding Charges"></TMPL_UNLESS></label></td>
		    <td align="right" class="medblue"><TMPL_UNLESS HIDE_PRICES>$<TMPL_VAR NAME="liens-price"></TMPL_UNLESS>&nbsp;</td>
	       </tr>

	      <TMPL_UNLESS DELETE_CORPORATION>
	      <tr>
		<TMPL_UNLESS DISABLE_CORPORATION>
	            <td width="1%">&nbsp;</td>
		    <td align="left" class="medblack"><input type="checkbox" id="corporate-filings" name="corporate-filings" value="1" <TMPL_VAR NAME="corporate-filings"> onClick="change_total(this, <TMPL_VAR NAME='corporate-filings-price'>, document.forms[0].BUS_TOTAL,document.forms[0].BUS_PRE_TOTAL)">&nbsp;<label for="corporate-filings">Corporation Filings</label></td>
		    <td align="right" class="medblue"><TMPL_UNLESS HIDE_PRICES>$<TMPL_VAR NAME="corporate-filings-price"></TMPL_UNLESS>&nbsp;</td>
		<TMPL_ELSE>
      	            <td width="1%">&nbsp;</td>
		    <td align="left" class="disabled_small">&nbsp;Corporation Filings (disabled)</td>
		    <td align="right" class="disabled_small"><TMPL_UNLESS HIDE_PRICES>$<TMPL_VAR NAME="corporate-filings-price"></TMPL_UNLESS>&nbsp;</td>
		</TMPL_UNLESS>
	      </tr>
	      </TMPL_UNLESS>

		<td width="1%">&nbsp;</td>
		<td align="left" class="medblack"><input type="checkbox" id="business-registrations" name="business-registrations" value="1" <TMPL_VAR NAME="business-registrations"> onClick="change_total(this, <TMPL_VAR NAME='business-registrations-price'>, document.forms[0].BUS_TOTAL,document.forms[0].BUS_PRE_TOTAL)">&nbsp;<label for="business-registrations">Business Registrations</label></td>
		<td align="right" class="medblue"><TMPL_UNLESS HIDE_PRICES>$<TMPL_VAR NAME="business-registrations-price"></TMPL_UNLESS>&nbsp;</td>

		<TMPL_UNLESS DELETE_UCC>
		<tr>
		<TMPL_UNLESS DISABLE_UCC>
	            <td width="1%">&nbsp;</td>
		    <td align="left" class="medblack"><input type="checkbox" id="uccs" name="uccs" value="1" <TMPL_VAR NAME="uccs"> onClick="change_total(this, <TMPL_VAR NAME='uccs-price'>, document.forms[0].BUS_TOTAL,document.forms[0].BUS_PRE_TOTAL)">&nbsp;<label for="uccs">UCC Filings</label></td>
		    <td align="right" class="medblue"><TMPL_UNLESS HIDE_PRICES>$<TMPL_VAR NAME="uccs-price"></TMPL_UNLESS>&nbsp;</td>
		<TMPL_ELSE>
      	            <td width="1%">&nbsp;</td>
		    <td align="left" class="disabled_small">&nbsp;UCC Filings (disabled)</td>
		    <td align="right" class="disabled_small"><TMPL_UNLESS HIDE_PRICES>$<TMPL_VAR NAME="uccs-price"></TMPL_UNLESS>&nbsp;</td>
		</TMPL_UNLESS>
		</tr>
		</TMPL_UNLESS>

		<tr>
	            <td width="1%"><input type="checkbox" id="associated-businesses" name="associated-businesses" value="1" <TMPL_VAR NAME="associated-businesses"> onClick="change_total(this, <TMPL_VAR NAME='associated-businesses-price'>, document.forms[0].BUS_TOTAL,document.forms[0].BUS_PRE_TOTAL)"></td>
		    <td align="left" class="medblack"><label for="associated-businesses">&nbsp;Associated Businesses</label></td>
		    <td align="right" class="medblue"><TMPL_UNLESS HIDE_PRICES>$<TMPL_VAR NAME="associated-businesses-price"></TMPL_UNLESS>&nbsp;</td>
		</tr>

    <TMPL_UNLESS DELETE_CORPORATION>
		<tr>
    <TMPL_UNLESS DISABLE_CORPORATION>
	            <td width="1%"><input type="checkbox" id="contacts" name="contacts" value="1" <TMPL_VAR NAME="contacts"> onClick="change_total(this, <TMPL_VAR NAME='contacts-price'>, document.forms[0].BUS_TOTAL,document.forms[0].BUS_PRE_TOTAL)"></td>
		    <td align="left" class="medblack"><label for="contacts">&nbsp;Associated People</label></td>
		    <td align="right" class="medblue"><TMPL_UNLESS HIDE_PRICES>$<TMPL_VAR NAME="contacts-price"></TMPL_UNLESS>&nbsp;</td>
    <TMPL_ELSE>
	            <td width="1%">&nbsp;</td>
		    <td align="left" class="disabled_small">&nbsp;Associated People (disabled)</td>
		    <td align="right" class="disabled_small"><TMPL_UNLESS HIDE_PRICES>$<TMPL_VAR NAME="contacts-price"></TMPL_UNLESS>&nbsp;</td>
    </TMPL_UNLESS>
		</tr>
    </TMPL_UNLESS>

	  <TMPL_IF NAME="IRS">
	  <TMPL_UNLESS HIDE_BUS_CREDIT>
    <tr>
      <td align="left" class="medblack" colspan="3">&nbsp;<b>Experian Business Report</b>&nbsp;</td>
    </tr>
    <tr>
	    <td width="1%">&nbsp;</td>
      <td align="left" class="medblack">
		<TMPL_UNLESS DELETE_BUS_CREDIT_REPORT>
		<TMPL_UNLESS DISABLE_BUS_CREDIT_REPORT>
	    	<input type="checkbox" name="experian-br" value="1" id="experian-br" <TMPL_VAR NAME=experian-br> onClick="change_total(this, <TMPL_VAR NAME=experian-br-price>,document.forms[0].BUS_TOTAL,document.forms[0].BUS_PRE_TOTAL)"><label for="experian-br">Order Experian Business Report</label>
		<TMPL_ELSE>
	    	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="disabled_small">Experian Business Reports (disabled)</span>
		</TMPL_UNLESS>
		</TMPL_UNLESS>
		  </td>
      <td align="right" class="medblue"><TMPL_UNLESS HIDE_PRICES>$<TMPL_VAR NAME=experian-br-price></TMPL_UNLESS>&nbsp;</td>
	  </tr>
	  </TMPL_UNLESS>
	  </TMPL_IF>
	    </table>
	    </td>

	    <td width="2%" nowrap class="unifont1"></td>
	    

	    <!-- COLUMN2 -->
	    <td width="49%" valign="top">
	    <table border="0" cellpadding="0" cellspacing="0" width="100%">

	      <tr>
	        <td align="left" class="medblack" colspan="3">&nbsp;<b>Assets</b>&nbsp;</td>
	      </tr>

		<TMPL_UNLESS DELETE_REAL_PROPERTY>
		<tr>
		<TMPL_IF DISABLE_REAL_PROPERTY>
			<td width="1%">&nbsp;</td>
			<td align="left" class="disabled_small">&nbsp;Properties (disabled)</td>
			<td align="right" class="disabled_small"><TMPL_UNLESS HIDE_PRICES>$<TMPL_VAR NAME="properties-price"></TMPL_UNLESS>&nbsp;</td>
		<TMPL_ELSE>
			<td width="1%">&nbsp;</td>
			<td align="left" class="medblack"><input type="checkbox" id="properties" name="properties" value="1" <TMPL_VAR NAME="properties"> onClick="change_total(this, <TMPL_VAR NAME='properties-price'>, document.forms[0].BUS_TOTAL,document.forms[0].BUS_PRE_TOTAL)">&nbsp;<label for="properties">Properties</label></td>
			<td align="right" class="medblue"><TMPL_UNLESS HIDE_PRICES>$<TMPL_VAR NAME="properties-price"></TMPL_UNLESS>&nbsp;</td>
		</TMPL_IF>
		</tr>
		</TMPL_UNLESS>   

	      <TMPL_UNLESS DELETE_RT_MVR>
	      <tr>
		<TMPL_UNLESS DISABLE_RT_MVR>
			<td width="1%">&nbsp;</td>
			<td align="left" class="medblack"><input type="checkbox" id="motor-vehicles" name="motor-vehicles" value="1" <TMPL_VAR NAME="motor-vehicles"> onClick="change_total(this, <TMPL_VAR NAME='motor-vehicles-price'>, document.forms[0].BUS_TOTAL,document.forms[0].BUS_PRE_TOTAL)">&nbsp;<label for="motor-vehicles">Motor Vehicles</label></td>
			<td align="right" class="medblue"><TMPL_UNLESS HIDE_PRICES>$<TMPL_VAR NAME="motor-vehicles-price"></TMPL_UNLESS>&nbsp;</td>
		<TMPL_ELSE>
        <TMPL_IF RT_MVR_ENABLED>
			<td width="1%">&nbsp;</td>
			<td align="left" class="medblack"><input type="checkbox" id="motor-vehicles" name="motor-vehicles" value="1" <TMPL_VAR NAME="motor-vehicles"> onClick="change_total(this, <TMPL_VAR NAME='motor-vehicles-price'>, document.forms[0].BUS_TOTAL,document.forms[0].BUS_PRE_TOTAL)">&nbsp;<label for="motor-vehicles">Motor Vehicles</label></td>
			<td align="right" class="medblue"><TMPL_UNLESS HIDE_PRICES>$<TMPL_VAR NAME="motor-vehicles-price"></TMPL_UNLESS>&nbsp;</td>
        <TMPL_ELSE>
      <td width="1%">&nbsp;</td>
			<td align="left" class="disabled_small">&nbsp;Motor Vehicles (disabled)</td>
			<td align="right" class="disabled_small"><TMPL_UNLESS HIDE_PRICES>$<TMPL_VAR NAME="motor-vehicles-price"></TMPL_UNLESS>&nbsp;</td>
        </TMPL_IF>
		</TMPL_UNLESS>
		</tr>
	      </TMPL_UNLESS>

	      <tr>
                    <td width="1%">&nbsp;</td>
                    <td align="left" class="medblack"><input type="checkbox" id="faa-aircraft" name="faa-aircraft" value="1" <TMPL_VAR NAME="faa-aircraft"> onClick="change_total(this, <TMPL_VAR NAME='faa-aircraft-price'>, document.forms[0].BUS_TOTAL,document.forms[0].BUS_PRE_TOTAL)">&nbsp;<label for="faa-aircraft">FAA Aircraft</label></td>
                    <td align="right" class="medblue"><TMPL_UNLESS HIDE_PRICES>$<TMPL_VAR NAME="faa-aircraft-price"></TMPL_UNLESS>&nbsp;</td>
	      </tr>

	      <tr>
	            <td width="1%">&nbsp;</td>
		    <td align="left" class="medblack"><input type="checkbox" id="merchant-vessels" name="merchant-vessels" value="1" <TMPL_VAR NAME="merchant-vessels"> onClick="change_total(this, <TMPL_VAR NAME='merchant-vessels-price'>, document.forms[0].BUS_TOTAL,document.forms[0].BUS_PRE_TOTAL)">&nbsp;<label for="merchant-vessels">Watercraft</label></td>
		    <td align="right" class="medblue"><TMPL_UNLESS HIDE_PRICES>$<TMPL_VAR NAME="merchant-vessels-price"></TMPL_UNLESS>&nbsp;</td>
	      </tr>

		<TMPL_UNLESS DELETE_WHOIS>
		<tr>
		<TMPL_UNLESS DISABLE_WHOIS>
	            <td width="1%"><input type="checkbox" id="domains" name="domains" value="1" <TMPL_VAR NAME="domains"> onClick="change_total(this, <TMPL_VAR NAME='domains-price'>, document.forms[0].BUS_TOTAL,document.forms[0].BUS_PRE_TOTAL)"></td>
		    <td align="left" class="medblack"><label for="domains">&nbsp;Internet Domain Names</label></td>
		    <td align="right" class="medblue"><TMPL_UNLESS HIDE_PRICES>$<TMPL_VAR NAME="domains-price"></TMPL_UNLESS>&nbsp;</td>
		<TMPL_ELSE>
      	            <td width="1%">&nbsp;</td>
		    <td align="left" class="disabled_small">&nbsp;Internet Domain Names (disabled)</td>
		    <td align="right" class="disabled_small"><TMPL_UNLESS HIDE_PRICES>$<TMPL_VAR NAME="domains-price"></TMPL_UNLESS>&nbsp;</td>
		</TMPL_UNLESS>
		</tr>
		</TMPL_UNLESS>

		<TMPL_UNLESS DELETE_CUSTOM_D_AND_B>
    <TMPL_UNLESS HIDE_D_AND_B>
		<tr>
		<TMPL_UNLESS DISABLE_D_AND_B>
	            <td width="1%"><input type="checkbox" id="d_and_b" name="d_and_b" value="1" <TMPL_VAR NAME="d_and_b"> onClick="change_total(this, <TMPL_VAR NAME='d_and_b-price'>, document.forms[0].BUS_TOTAL,document.forms[0].BUS_PRE_TOTAL)"></td>
		    <td align="left" class="medblack"><label for="d_and_b">&nbsp;Dun &amp; Bradstreet Records</label></td>
		    <td align="right" class="medblue"><TMPL_UNLESS HIDE_PRICES>$<TMPL_VAR NAME="d_and_b-price"></TMPL_UNLESS>&nbsp;</td>
		<TMPL_ELSE>
      	            <td width="1%">&nbsp;</td>
		    <td align="left" class="disabled_small">&nbsp;Dun &amp; Bradstreet Records (disabled)</td>
		    <td align="right" class="disabled_small"><TMPL_UNLESS HIDE_PRICES>$<TMPL_VAR NAME="d_and_b-price"></TMPL_UNLESS>&nbsp;</td>
		</TMPL_UNLESS> 
		</tr>
		</TMPL_UNLESS> 
    </TMPL_UNLESS> 

		<tr>
	            <td width="1%"><input type="checkbox" id="irs-5500" name="irs-5500" value="1" <TMPL_VAR NAME="irs-5500"> onClick="change_total(this, <TMPL_VAR NAME='irs-5500-price'>, document.forms[0].BUS_TOTAL,document.forms[0].BUS_PRE_TOTAL)"></td>
		    <td align="left" class="medblack"><label for="irs-5500">&nbsp;IRS5500</label></td>
		    <td align="right" class="medblue"><TMPL_UNLESS HIDE_PRICES>$<TMPL_VAR NAME="irs-5500-price"></TMPL_UNLESS>&nbsp;</td>
		</tr>

	    </table>
	    </td>

	</tr>

    <tr>
      <td colspan="3" valign="top"><div id="lineVertRedDot"></div></td>
    </tr>

    <tr>
      <td width="45%" valign="top">
          <table border="0" cellpadding="0" cellspacing="0" width="100%">
		  <tr>
		   <TMPL_UNLESS HIDE_PRICES>
		    <td align="left" class="medblack" width="53%"><b>Maximum Report Price:&nbsp;$</b></td>
		    <td align="left"><input type="text" name="BUS_TOTAL" size="5" value="<TMPL_VAR NAME='BUS_TOTAL'>" onFocus="this.blur();"></td>
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
		    <td width="1%"><input type="checkbox" name="bus-prompt" id="bus-prompt" value="1" <TMPL_VAR NAME=bus-prompt> ></td>
		    <td align="left" class="medblack"><label for="bus-prompt">&nbsp;Prompt me for these options for each report.</label> </td>
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

</table>
    <input type=hidden name="BUS_PRE_TOTAL" value="<TMPL_VAR NAME=BUS_PRE_TOTAL>">

<!-- End short_bus_report_body.tpl-->
