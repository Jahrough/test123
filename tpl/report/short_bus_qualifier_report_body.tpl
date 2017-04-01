<!-- Begin short_bus_qualifier_report_body.tpl-->
<table border="0" cellpadding="0" cellspacing="0" width="620">
<TMPL_IF NAME="PREFERENCES_ERROR_MESSAGE">
  <tr>
    <td align="center" colspan="3"><TMPL_VAR NAME="PREFERENCES_ERROR_MESSAGE"></td>
  </tr>
</TMPL_IF>
  <tr>
    <td width="100%" valign="top">
    <table border="0" cellpadding="2" cellspacing="0" width="100%" class="myaccountborder">
      <tr>
        <td valign="top">
	<table border="0" cellpadding="0" cellspacing="0" width="100%" class="reportselectbody">
	  <tr>
	    <td class="smallfont1" colspan="3">
	    <span class="myaccountlabel">&nbsp;Report Options:</span>
	    <br>
	    <br>
	    <input type="checkbox" name="alternate-identities" value="1" id="alternate-identities" <TMPL_VAR NAME="alternate-identities">><label for="alternate-identities">Name and TIN Variations</label>
	    <br>
	    <input type="checkbox" name="parent-company" value="1" id="parent-company" <TMPL_VAR NAME="parent-company">><label for="parent-company">Parent Company and Industry Information</label>
	    <br><br>
	    </td>
	  </tr>
	  <tr>
	    <td class="smallfont1" colspan="2">
	    &nbsp;<b>Business Filings</b>
	    </td>
	    <td class="smallfont1">
	    &nbsp;<b>Assets</b>
	    </td>
	  </tr>
	  <tr>
	    <td class="smallfont1" width="45%" valign="top">&nbsp;&nbsp;&nbsp;&nbsp;
		<TMPL_UNLESS DELETE_BANKRUPTCY>
		<TMPL_UNLESS DISABLE_BANKRUPTCY>
		    <input type="checkbox" name="bankruptcy" value="1" <TMPL_VAR NAME=bankruptcy> id="bankruptcy" onClick="change_total(this, <TMPL_VAR NAME=bankruptcy-price>,document.forms[0].BUS_TOTAL,document.forms[0].BUS_PRE_TOTAL)"><label for="bankruptcy">Bankruptcy&nbsp;&nbsp;</label>
		<TMPL_ELSE>
		    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="disabled_small">Bankruptcy (disabled)&nbsp;&nbsp;
		</TMPL_UNLESS>
		</TMPL_UNLESS>
		</td>

	    <td class="smallfont1" width="1%">&nbsp;&nbsp;</td>

		<td class="smallfont1" width="54%" valign="top">&nbsp;&nbsp;&nbsp;&nbsp;
		<TMPL_IF DISABLE_ASSESSMENT>
		 <TMPL_UNLESS DELETE_ASSESSMENT>
		    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="disabled_small">Properties (disabled)</span>
		 </TMPL_UNLESS>   
		<TMPL_ELSE>
		<TMPL_IF DISABLE_DEEDS>
		 <TMPL_UNLESS DELETE_DEEDS>
		    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="disabled_small">Properties (disabled)</span>
		 </TMPL_UNLESS>   
		<TMPL_ELSE>
		    <input type="checkbox" name="properties" value="1" id="properties" <TMPL_VAR NAME=properties> onClick="change_total(this, <TMPL_VAR NAME=properties-price>,document.forms[0].BUS_TOTAL,document.forms[0].BUS_PRE_TOTAL)"><label for="properties">Properties</label>
		</TMPL_IF>
		</TMPL_IF>
		</td>
	  </tr>
	  <tr>
	    <td class="smallfont1" width="45%" valign="top">&nbsp;&nbsp;&nbsp;&nbsp;
	      <TMPL_UNLESS DELETE_LIEN>
	      <TMPL_IF NAME="DISABLE_LIEN">
		<span class="disabled_small">Liens &amp; Judgments (disabled)
	      <TMPL_ELSE>
	    	<input type="checkbox" name="liens" value="1" id="liens" <TMPL_VAR NAME=liens> onClick="change_total(this, <TMPL_VAR NAME=liens-price>,document.forms[0].BUS_TOTAL,document.forms[0].BUS_PRE_TOTAL)"><label for="liens">Liens &amp; Judgments</label>
	      </TMPL_IF>
	      </TMPL_UNLESS>
	    </td>

	    <td class="smallfont1" width="1%">&nbsp;&nbsp;</td>

	     <td class="smallfont1" width="54%" valign="top">&nbsp;&nbsp;&nbsp;&nbsp;
	      <TMPL_UNLESS DELETE_MV>
		<TMPL_UNLESS DISABLE_MV>
		    <input type="checkbox" name="motor-vehicles" value="1" id="motor-vehicles" <TMPL_VAR NAME=motor-vehicles> onClick="change_total(this, <TMPL_VAR NAME=motor-vehicles-price>,document.forms[0].BUS_TOTAL,document.forms[0].BUS_PRE_TOTAL)"><label for="motor-vehicles">Motor Vehicles</label>
		<TMPL_ELSE>
		    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="disabled_small">Motor Vehicles (disabled)</span>
		</TMPL_UNLESS>
	      </TMPL_UNLESS>
		</td>
	  </tr>

	  <tr>
	    <td class="smallfont1" width="45%" valign="top">&nbsp;&nbsp;&nbsp;&nbsp;
	      <TMPL_UNLESS DELETE_CORPORATION>
		<TMPL_UNLESS DISABLE_CORPORATION>
	    	<input type="checkbox" name="corporate-filings" value="1" id="corporate-filings" <TMPL_VAR NAME=corporate-filings> onClick="change_total(this, <TMPL_VAR NAME=corporate-filings-price>,document.forms[0].BUS_TOTAL,document.forms[0].BUS_PRE_TOTAL)"><label for="corporate-filings">Corporation Filings</label>
		<TMPL_ELSE>
	    	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="disabled_small">Corporation Filings (disabled)</span>
		</TMPL_UNLESS>
		</TMPL_UNLESS>
	    </td>

	    <td class="smallfont1" width="1%">&nbsp;&nbsp;</td>

	     <td class="smallfont1" width="54%" valign="top">&nbsp;&nbsp;&nbsp;&nbsp;
	      <TMPL_UNLESS DELETE_AIRCRAFT>
		<TMPL_UNLESS DISABLE_AIRCRAFT>
		    <input type="checkbox" name="faa-aircraft" value="1" id="faa-aircraft" <TMPL_VAR NAME=faa-aircraft> onClick="change_total(this, <TMPL_VAR NAME=faa-aircraft-price>,document.forms[0].BUS_TOTAL,document.forms[0].BUS_PRE_TOTAL)"><label for="faa-aircraft">FAA Aircraft</label>
		<TMPL_ELSE>
		    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="disabled_small">FAA Aircraft (disabled)</span>
		</TMPL_UNLESS>
	      </TMPL_UNLESS>
		</td>

	    </td>
	  </tr>

	  <tr>
	    <td class="smallfont1" width="45%" valign="top">&nbsp;&nbsp;&nbsp;&nbsp;
	    <input type="checkbox" name="business-registrations" value="1" id="business-registrations" <TMPL_VAR NAME=business-registrations> onClick="change_total(this, <TMPL_VAR NAME=business-registrations-price>,document.forms[0].BUS_TOTAL,document.forms[0].BUS_PRE_TOTAL)"><label for="business-registrations">Business Registrations</label>
		</td>

	    <td class="smallfont1" width="1%">&nbsp;&nbsp;</td>

	     <td class="smallfont1" width="54%" valign="top">&nbsp;&nbsp;&nbsp;&nbsp;
	      <TMPL_UNLESS DELETE_VESSEL>
		<TMPL_UNLESS DISABLE_VESSEL>
		    <input type="checkbox" name="merchant-vessels" value="1" id="merchant-vessels" <TMPL_VAR NAME=merchant-vessels> onClick="change_total(this, <TMPL_VAR NAME=merchant-vessels-price>,document.forms[0].BUS_TOTAL,document.forms[0].BUS_PRE_TOTAL)"><label for="merchant-vessels">Watercraft</label>
		<TMPL_ELSE>
		    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="disabled_small">Watercraft (disabled)</span>
		</TMPL_UNLESS>
	      </TMPL_UNLESS>
		</td>
	  </tr>
		
	  <tr>
	    <td class="smallfont1" width="45%" valign="top">&nbsp;&nbsp;&nbsp;&nbsp;
		<TMPL_UNLESS DELETE_UCC>
		<TMPL_UNLESS DISABLE_UCC>
	    	<input type="checkbox" name="uccs" value="1" id="uccs" <TMPL_VAR NAME=uccs> onClick="change_total(this, <TMPL_VAR NAME=uccs-price>,document.forms[0].BUS_TOTAL,document.forms[0].BUS_PRE_TOTAL)"><label for="uccs">UCC Filings</label>
		<TMPL_ELSE>
	    	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="disabled_small">UCC Filings (disabled)</span>
		</TMPL_UNLESS>
		</TMPL_UNLESS>
		</td>

	    <td class="smallfont1" width="1%">&nbsp;&nbsp;</td>


		<td class="smallfont1" width="54%" valign="top">
		<TMPL_UNLESS DELETE_WHOIS>
		<TMPL_UNLESS DISABLE_WHOIS>
	    	<input type="checkbox" name="domains" value="1" id="domains" <TMPL_VAR NAME=domains> onClick="change_total(this, <TMPL_VAR NAME=domains-price>,document.forms[0].BUS_TOTAL,document.forms[0].BUS_PRE_TOTAL)"><label for="domains">Internet Domain Names</label>
		<TMPL_ELSE>
	    	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="disabled_small">Internet Domain Names (disabled)</span>
		</TMPL_UNLESS>
		</TMPL_UNLESS>
		</td>

	  </tr>

	  <tr>
	    <td class="smallfont1" width="45%" valign="top">
	    	<input type="checkbox" name="associated-businesses" value="1" id="associated-businesses" <TMPL_VAR NAME=associated-businesses> onClick="change_total(this, <TMPL_VAR NAME=associated-businesses-price>,document.forms[0].BUS_TOTAL,document.forms[0].BUS_PRE_TOTAL)"><label for="associated-businesses">Associated Businesses</label>
		</td>

	    <td class="smallfont1" width="1%">&nbsp;&nbsp;</td>


		<td class="smallfont1" width="54%" valign="top">
		<TMPL_UNLESS DELETE_CUSTOM_D_AND_B>
    <TMPL_UNLESS HIDE_D_AND_B>
		<TMPL_UNLESS DELETE_D_AND_B>
		<TMPL_UNLESS DISABLE_D_AND_B>
	    	<input type="checkbox" name="d_and_b" value="1" id="d_and_b" <TMPL_VAR NAME=d_and_b> onClick="change_total(this, <TMPL_VAR NAME=d_and_b-price>,document.forms[0].BUS_TOTAL,document.forms[0].BUS_PRE_TOTAL)"><label for="d_and_b">Dun &amp; Bradstreet Records</label>
		<TMPL_ELSE>
	    	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="disabled_small">Dun &amp; Bradstreet Records (disabled)</span>
		</TMPL_UNLESS> 
		</TMPL_UNLESS> 
    </TMPL_UNLESS> 
		</TMPL_UNLESS> 
		</td>

	  </tr>

	  <tr>
	    <td class="smallfont1" width="45%" valign="top">
	    	<input type="checkbox" name="contacts" value="1" id="contacts" <TMPL_VAR NAME=contacts> onClick="change_total(this, <TMPL_VAR NAME=contacts-price>,document.forms[0].BUS_TOTAL,document.forms[0].BUS_PRE_TOTAL)"><label for="contacts">Associated People</label>
	    </td>

	    <td class="smallfont1" width="1%">&nbsp;&nbsp;</td>


	    <td class="smallfont1" width="54%" valign="top">
	    <input type="checkbox" name="irs-5500" value="1" id="irs-5500" <TMPL_VAR NAME=irs-5500> onClick="change_total(this, <TMPL_VAR NAME=irs-5500-price>,document.forms[0].BUS_TOTAL,document.forms[0].BUS_PRE_TOTAL)"><label for="irs-5500">IRS5500</label>
	    </td>

	    </td>
	  </tr>

	  <tr>
	    <td class="smallfont1" width="45%" valign="top">
	    	<input type="checkbox" name="reverse-phone" value="1" id="reverse-phone" <TMPL_VAR NAME=reverse-phone> onClick="change_total(this, <TMPL_VAR NAME=reverse-phone-price>,document.forms[0].BUS_TOTAL,document.forms[0].BUS_PRE_TOTAL)"><label for="reverse-phone">Business Phone Matches</label>
	    </td>

	    <td class="smallfont1" width="1%">&nbsp;&nbsp;</td>


	    <td class="smallfont1" width="54%" valign="top">
	    	<input type="checkbox" name="sanctions" value="1" id="sanctions" <TMPL_VAR NAME=sanctions> onClick="change_total(this, <TMPL_VAR NAME=sanctions-price>,document.forms[0].BUS_TOTAL,document.forms[0].BUS_PRE_TOTAL)"><label for="sanctions">Sanctions</label>
	    </td>

	    </td>
	  </tr>

	</table>
	</td>
      </tr>
    </table>

	<BR>
    <table border="0" cellpadding="2" cellspacing="0" width="100%">
      <tr>
      <td width="49%" class="myaccounttitle" class="smallfont1" nowrap>&nbsp;</td>
      <td width="2%" nowrap class="unifont1">&nbsp;&nbsp;&nbsp;&nbsp;</td>
      <td width="49%" valign="top">
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
      <td class="smallfont1"  align="left" width="49%">
      <input type="checkbox" name="prompt" value="1" id="prompt" <TMPL_VAR NAME=prompt>> <label for="prompt">Prompt me for these options for each report.</label>
      </td>
      <td width="2%" nowrap class="unifont1">&nbsp;&nbsp;&nbsp;&nbsp;</td>
      <td class="smallfont1"  align="left" width="49%">
      <TMPL_IF NAME="ENABLE_SAVE_REPORT">
	  <span<TMPL_IF NAME="REPORT_MANAGER_OFF"> class="disabled_item"</TMPL_IF>><input type="checkbox" name="save-report" value="1" <TMPL_VAR NAME=save-report><TMPL_IF NAME="REPORT_MANAGER_OFF"> readonly onChange="this.checked = !this.checked"</TMPL_IF>> Save report for later access.</span>
	  <TMPL_IF NAME="REPORT_MANAGER_OFF">
	    &nbsp;(Saving Reports currently not available)
	  </TMPL_IF>
      </TMPL_IF>
      </td>
      </tr>
      <tr>
        <td width="49%" class="smallfont1">&nbsp;</td>
	<td width="2%" class="unifont1">&nbsp;&nbsp;&nbsp;&nbsp;</td>
	<td width="49%" class="unifont1">&nbsp;&nbsp;&nbsp;&nbsp;</td>
      </tr>
    </table>
    </td>
  </tr>
  <tr>
  <tr>
    <td colspan="3"><input type=hidden name="BUS_PRE_TOTAL" value="<TMPL_VAR NAME=BUS_PRE_TOTAL>"></td>
  </tr>
  </tr>
</table>
<!-- End short_bus_qualifier_report_body.tpl-->
