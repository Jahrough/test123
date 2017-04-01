<!-- Begin v2/report/short_bus_qualifier_report_body.tpl-->
<table width="740" align="center" cellpadding="2" border="0" cellspacing="4" style="background-color:#F4F0DE; border: solid #ccc 1px;">
<TMPL_IF NAME="PREFERENCES_ERROR_MESSAGE">
  <tr>
    <td align="center" colspan="3"><TMPL_VAR NAME="PREFERENCES_ERROR_MESSAGE"></td>
  </tr>
</TMPL_IF>

  <tr height="10">
    <td height="10" colspan="3">&nbsp;</td>
  </tr>

  <tr>
    <td colspan="3" valign="top">&nbsp;<b>Report Options:</b>&nbsp;</td>
  </tr>

  <tr>
    <td width="56%" valign="top">
      <table boder="0" cellpadding="0" cellspacing="0" width="100%">
        <tr>
          <td width="7%" align="right"><input type="checkbox" id="alternate-identities" value="1" name="alternate-identities" <TMPL_VAR NAME="alternate-identities">></td>
          <td align="left" class="medblack"><label for="alternate-identities">&nbsp;Name and TIN Variations</label></td>
          <td align="right" class="medblack">&nbsp;</td>
        </tr>
        <tr>
          <td width="7%" align="right"><input type="checkbox" id="parent-company" value="1" name="parent-company" <TMPL_VAR NAME="parent-company">></td>
          <td align="left" class="medblack"><label for="parent-company">&nbsp;Parent Company and Industry Information</label></td>
          <td align="right" class="medblack">&nbsp;</td>
        </tr>
      </table>
      <td>&nbsp;</td>
      <td width="42%" valign="top">&nbsp;</td>
  </tr>

  <tr height="10">
    <td height="10" colspan="3">&nbsp;</td>
  </tr>

  <tr>
    <td width="56%" valign="top">
      <table border="0" cellpadding="0" cellspacing="0" width="100%">
        <tr>
          <td colspan="3" valign="top">&nbsp;<b>Business Filings</b>&nbsp;</td>
        </tr>

        <TMPL_UNLESS DELETE_BANKRUPTCY>
        <tr>
        <TMPL_IF DISABLE_BANKRUPTCY>
          <td width="7%">&nbsp;</td>
          <td class="disabled_small">Bankrupty&nbsp;(disabled)&nbsp;</td>
          <td align="right" class="disabled_small">&nbsp;</td>
        <TMPL_ELSE>
          <td width="7%" align="right"><input type="checkbox" id="bankruptcy" value="1" name="bankruptcy" <TMPL_VAR NAME="bankruptcy">></td>
          <td align="left" class="medblack"><label for="bankruptcy">&nbsp;Bankruptcy</label></td>
          <td align="right" class="medblack">&nbsp;</td>
        </TMPL_IF>
        </tr>
        </TMPL_UNLESS>

        <TMPL_UNLESS DELETE_LIEN>
        <tr>
        <TMPL_IF DISABLE_LIEN>
          <td width="7%">&nbsp;</td>
          <td class="disabled_small">Liens &amp; Judgments&nbsp;(disabled)&nbsp;</td>
          <td align="right" class="disabled_small">&nbsp;</td>
        <TMPL_ELSE>
          <td width="7%" align="right"><input type="checkbox" name="liens" id="liens" value="1" <TMPL_VAR NAME=liens> ></td>
          <td align="left" class="medblack"><label for="liens">&nbsp;Liens &amp; Judgments</label></td>
          <td align="right" class="medblack">&nbsp;</td>
        </TMPL_IF>
        </tr>
        </TMPL_UNLESS>

        <TMPL_UNLESS DELETE_CORPORATION>
        <tr>
        <TMPL_IF DISABLE_CORPORATION>
          <td width="7%">&nbsp;</td>
          <td class="disabled_small">Corporation Filings&nbsp;(disabled)&nbsp;</td>
          <td align="right" class="disabled_small">&nbsp;</td>
        <TMPL_ELSE>
          <td width="7%" align="right"><input type="checkbox" id="corporate-filings" value="1" name="corporate-filings" <TMPL_VAR NAME="corporate-filings">></td>
          <td align="left" class="medblack"><label for="corporate-filings">&nbsp;Corporation Filings</label></td>
          <td align="right" class="medblack">&nbsp;</td>
        </TMPL_IF>
        </tr>
        </TMPL_UNLESS>

        <tr>
          <td width="7%" align="right"><input type="checkbox" id="business-registrations" value="1" name="business-registrations" <TMPL_VAR NAME="business-registrations">></td>
          <td align="left" class="medblack"><label for="business-registrations">&nbsp;Business Registrations</label></td>
          <td align="right" class="medblack">&nbsp;</td>
        </tr>

        <TMPL_UNLESS DELETE_UCC>
        <tr>
        <TMPL_IF DISABLE_UCC>
          <td width="7%">&nbsp;</td>
          <td class="disabled_small">UCC Filings&nbsp;(disabled)&nbsp;</td>
          <td align="right" class="disabled_small">&nbsp;</td>
        <TMPL_ELSE>
          <td width="7%" align="right"><input type="checkbox" id="uccs" value="1" name="uccs" <TMPL_VAR NAME="uccs">></td>
          <td align="left" class="medblack"><label for="uccs">&nbsp;UCC Filings</label></td>
          <td align="right" class="medblack">&nbsp;</td>
        </TMPL_IF>
        </tr>
        </TMPL_UNLESS>

        <tr>
          <td width="7%" align="right"><input type="checkbox" id="associated-businesses" value="1" name="associated-businesses" <TMPL_VAR NAME="associated-businesses">></td>
          <td align="left" class="medblack"><label for="associated-businesses">&nbsp;Associated Businesses</label></td>
          <td align="right" class="medblack">&nbsp;</td>
        </tr>

        <tr>
          <td width="7%" align="right"><input type="checkbox" id="contacts" value="1" name="contacts" <TMPL_VAR NAME="contacts">></td>
          <td align="left" class="medblack"><label for="contacts">&nbsp;Associated People</label></td>
          <td align="right" class="medblack">&nbsp;</td>
        </tr>

        <tr>
          <td width="7%" align="right"><input type="checkbox" id="reverse-phone" value="1" name="reverse-phone" <TMPL_VAR NAME="reverse-phone">></td>
          <td align="left" class="medblack"><label for="reverse-phone">&nbsp;Business Phone Matches</label></td>
          <td align="right" class="medblack">&nbsp;</td>
        </tr>

      </table>
    </td>

    <td>&nbsp;</td>

    <td width="42%" valign="top">
      <table border="0" cellpadding="0" cellspacing="0" width="100%">
        <tr>
          <td colspan="3" valign="top">&nbsp;<b>Assets</b>&nbsp;</td>
        </tr>

        <TMPL_IF DISABLE_ASSESSMENT>
        <TMPL_UNLESS DELETE_ASSESSMENT>
        <tr>
          <td width="9%">&nbsp;</td>
          <td class="disabled_small">Properties&nbsp;(disabled)&nbsp;</td>
          <td align="right" class="disabled_small">&nbsp;</td>
        </tr>
        </TMPL_UNLESS>
        <TMPL_ELSE>
        <TMPL_IF DISABLE_DEEDS>
        <TMPL_UNLESS DELETE_DEEDS>
        <tr>
          <td width="9%">&nbsp;</td>
          <td class="disabled_small">Properties&nbsp;(disabled)&nbsp;</td>
          <td align="right" class="disabled_small">&nbsp;</td>
        </tr>
        </TMPL_UNLESS>
        <TMPL_ELSE>
        <tr>
          <td width="9%" align="right"><input type="checkbox" id="properties" value="1" name="properties" <TMPL_VAR NAME="properties">></td>
          <td align="left" class="medblack"><label for="properties">&nbsp;Properties</label></td>
          <td align="right" class="medblack">&nbsp;</td>
        </tr>
        </TMPL_IF>
        </TMPL_IF>

        <TMPL_UNLESS DELETE_MV>
        <tr>
        <TMPL_IF DISABLE_MV>
          <td width="9%">&nbsp;</td>
          <td class="disabled_small">Motor Vehicles&nbsp;(disabled)&nbsp;</td>
          <td align="right" class="disabled_small">&nbsp;</td>
        <TMPL_ELSE>
          <td width="9%" align="right"><input type="checkbox" id="motor-vehicles" value="1" name="motor-vehicles" <TMPL_VAR NAME="motor-vehicles">></td>
          <td align="left" class="medblack"><label for="motor-vehicles">&nbsp;Motor Vehicles</label></td>
          <td align="right" class="medblack">&nbsp;</td>
        </TMPL_IF>
        </tr>
        </TMPL_UNLESS>

        <TMPL_UNLESS DELETE_AIRCRAFT>
        <tr>
        <TMPL_IF DISABLE_AIRCRAFT>
          <td width="9%">&nbsp;</td>
          <td class="disabled_small">FAA Aircraft&nbsp;(disabled)&nbsp;</td>
          <td align="right" class="disabled_small">&nbsp;</td>
        <TMPL_ELSE>
          <td width="9%" align="right"><input type="checkbox" id="faa-aircraft" value="1" name="faa-aircraft" <TMPL_VAR NAME="faa-aircraft">></td>
          <td align="left" class="medblack"><label for="faa-aircraft">&nbsp;FAA Aircraft</label></td>
          <td align="right" class="medblack">&nbsp;</td>
        </TMPL_IF>
        </tr>
        </TMPL_UNLESS>

        <TMPL_UNLESS DELETE_VESSEL>
        <tr>
        <TMPL_IF DISABLE_VESSEL>
          <td width="9%">&nbsp;</td>
          <td class="disabled_small">Watercraft&nbsp;(disabled)&nbsp;</td>
          <td align="right" class="disabled_small">&nbsp;</td>
        <TMPL_ELSE>
          <td width="9%" align="right"><input type="checkbox" id="merchant-vessels" value="1" name="merchant-vessels" <TMPL_VAR NAME="merchant-vessels">></td>
          <td align="left" class="medblack"><label for="merchant-vessels">&nbsp;Watercraft</label></td>
          <td align="right" class="medblack">&nbsp;</td>
        </TMPL_IF>
        </tr>
        </TMPL_UNLESS>

        <TMPL_UNLESS DELETE_WHOIS>
        <tr>
        <TMPL_IF DISABLE_WHOIS>
          <td width="9%">&nbsp;</td>
          <td class="disabled_small">Internet Domain Names&nbsp;(disabled)&nbsp;</td>
          <td align="right" class="disabled_small">&nbsp;</td>
        <TMPL_ELSE>
          <td width="9%" align="right"><input type="checkbox" id="domains" value="1" name="domains" <TMPL_VAR NAME="domains">></td>
          <td align="left" class="medblack"><label for="domains">&nbsp;Internet Domain Names</label></td>
          <td align="right" class="medblack">&nbsp;</td>
        </TMPL_IF>
        </tr>
        </TMPL_UNLESS>

        <TMPL_UNLESS DELETE_CUSTOM_D_AND_B>
        <TMPL_UNLESS HIDE_D_AND_B>
        <tr>
        <TMPL_IF DISABLE_D_AND_B>
          <td width="9%">&nbsp;</td>
          <td class="disabled_small">Dun &amp; Bradstreet Records&nbsp;(disabled)&nbsp;</td>
          <td align="right" class="disabled_small">&nbsp;</td>
        <TMPL_ELSE>
          <td width="9%" align="right"><input type="checkbox" id="d_and_b" value="1" name="d_and_b" <TMPL_VAR NAME="d_and_b">></td>
          <td align="left" class="medblack"><label for="d_and_b">&nbsp;Dun &amp; Bradstreet Records</label></td>
          <td align="right" class="medblack">&nbsp;</td>
        </TMPL_IF>
        </tr>
        </TMPL_UNLESS>
        </TMPL_UNLESS>

        <tr>
          <td width="9%" align="right"><input type="checkbox" id="irs-5500" value="1" name="irs-5500" <TMPL_VAR NAME="irs-5500">></td>
          <td align="left" class="medblack"><label for="irs-5500">&nbsp;IRS5500</label></td>
          <td align="right" class="medblack">&nbsp;</td>
        </tr>

        <tr>
          <td width="9%" align="right"><input type="checkbox" id="sanctions" value="1" name="sanctions" <TMPL_VAR NAME="sanctions">></td>
          <td align="left" class="medblack"><label for="sanctions">&nbsp;Sanctions</label></td>
          <td align="right" class="medblack">&nbsp;</td>
        </tr>

      </table>
    </td>

  </tr>

    <tr>
      <td colspan="3" valign="top"><div id="lineVertRedDot"></div></td>
    </tr>

    <tr>
      <td width="56%" valign="top">
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

      <td>&nbsp;</td>

      <td width="42%" valign="top">&nbsp;</td>
   </tr>

    <tr>
      <td width="56%" valign="top">
          <table border="0" cellpadding="0" cellspacing="0" width="100%">
		  <tr>
		    <td width="1%"><input type="checkbox" name="prompt" id="prompt" value="1" <TMPL_VAR NAME=prompt> ></td>
		    <td align="left" class="medblack"><label for="prompt">&nbsp;Prompt me for these options for each report.</label></td>
		  </tr>
	  </table>
      </td>

      <td>&nbsp;</td>

      <td width="42%" valign="top">
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
   </tr>

  <tr>
    <td colspan="3"><input type=hidden name="BUS_PRE_TOTAL" value="<TMPL_VAR NAME=BUS_PRE_TOTAL>"></td>
  </tr>

</table>
<!-- End v2/report/short_bus_qualifier_report_body.tpl-->
