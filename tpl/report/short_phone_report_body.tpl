<!-- Begin short_phone_report_body.tpl-->
<table border="0" cellpadding="0" cellspacing="0" width="620">
<TMPL_IF NAME="PREFERENCES_ERROR_MESSAGE">
  <tr>
    <td align="center" colspan="3"><TMPL_VAR NAME="PREFERENCES_ERROR_MESSAGE"></td>
  </tr>
</TMPL_IF>
  <tr>
    <td width="44%" valign="top">
    <table border="0" cellpadding="2" cellspacing="0" width="100%" class="myaccountborder">
      <tr>
        <td valign="top">
	<table border="0" cellpadding="2" cellspacing="0" width="100%" class="reportselectbody">
	  <tr>
	    <td class="smallfont1">
	    <span class="myaccountlabel">&nbsp;<TMPL_UNLESS HIDE_PRICES>Base Report Price:&nbsp;&nbsp;$<TMPL_VAR NAME="base-phone-price"><TMPL_ELSE>Base Report Features:</TMPL_UNLESS></span>
	    <br><br>
	    <input type="checkbox" name="phone-map" value="2" <TMPL_VAR NAME=phone-map>>Phone Summary
	    <br>
	    </td>
	  </tr>
	</table>
        </td>
      </tr>
    </table>
    <br>
    <table border="0" cellpadding="2" cellspacing="0" width="100%">
      <tr>
        <TMPL_UNLESS HIDE_PRICES>
        <td width="50%" class="myaccounttitle" nowrap>Maximum Report Price:&nbsp;$</td>
	<td width="50%" class='unifont1' align='left'><input type='text' name='PHONE_TOTAL' size='5' value='<TMPL_VAR NAME=PHONE_TOTAL>' onFocus='this.blur()'></td>
	<TMPL_ELSE>
	<td class="largefont1">&nbsp;<input type='hidden' name='PHONE_TOTAL' size='5' value='<TMPL_VAR NAME=PHONE_TOTAL>' onFocus='this.blur()'></td>
	</TMPL_UNLESS>
      </tr>
      <TMPL_UNLESS HIDE_PRICES>
      <tr>
        <td class="smallfont1" colspan="2"><b>NOTE:</b>&nbsp;&nbsp;This is the maximum possible cost for this report.&nbsp;&nbsp;You will not be charged for options returning no results.</td>
      </tr>
      </TMPL_UNLESS>
    </table>
    </td>
    <td class="unifont1" width="2%">&nbsp;</td>
    <td width="54%" valign="top">
    <table border="0" cellpadding="2" cellspacing="0" width="100%" class="myaccountborder">
      <tr>
        <td valign="top">
	<table border="0" cellpadding="2" cellspacing="0" width="100%" class="reportselectbody">
	  <tr>
	    <td class="smallfont1">
	    <span class="myaccountlabel">&nbsp;Additional Report Options:</span>
	    <br>
		<TMPL_IF DISABLE_ASSESSMENT>
		   <TMPL_UNLESS DELETE_ASSESSMENT>
		    <span class="disabled_small">Property Assessments (disabled) -- <TMPL_UNLESS HIDE_PRICES><b>$<TMPL_VAR NAME=phone-property-price></b></TMPL_UNLESS></span>
		   </TMPL_UNLESS>  
		<TMPL_ELSE>
		<TMPL_IF DISABLE_DEEDS>
		   <TMPL_UNLESS DELETE_DEEDS>
		    <span class="disabled_small">Property Assessments (disabled) -- <TMPL_UNLESS HIDE_PRICES><b>$<TMPL_VAR NAME=phone-property-price></b></TMPL_UNLESS></span>
		   </TMPL_UNLESS>  
		<TMPL_ELSE>
	    	<input type="checkbox" name="phone-property" value="11" <TMPL_VAR NAME=phone-property> onClick="change_total(this, <TMPL_VAR NAME=phone-property-price>,document.forms[0].PHONE_TOTAL,document.forms[0].PHONE_PRE_TOTAL)">Property Assessments -- <TMPL_UNLESS HIDE_PRICES><span class="reportprices">$<TMPL_VAR NAME=phone-property-price></span></TMPL_UNLESS>
		</TMPL_IF>
		</TMPL_IF>
	    </td>
	  </tr>
	</table>
	</td>
      </tr>
    </table>
    <br>
    <table border="0" cellpadding="2" cellspacing="0" width="100%">
      <tr>
        <td class="smallfont1">
        <span class="smallfont1reporttype">Select Report Type:</span>
        <br>
        <select name="phone-report-format">
        <option value="html"<TMPL_IF NAME="phone-report-format-html"> SELECTED</TMPL_IF>>Interactive Web Page</option>
        <option value="text"<TMPL_IF NAME="phone-report-format-text"> SELECTED</TMPL_IF>>Plain Text Web Page</option>
        <option value="word"<TMPL_IF NAME="phone-report-format-word"> SELECTED</TMPL_IF>>Microsoft Word Document</option>
        <option value="pdf"<TMPL_IF NAME="phone-report-format-pdf"> SELECTED</TMPL_IF>>PDF Document</option>
        </select>
        <br><br>
        <input type="checkbox" name="phone-prompt" value="1" <TMPL_VAR NAME=phone-prompt>> Prompt me for these options for each report.
      <TMPL_IF NAME="ENABLE_SAVE_REPORT">
        <br>
	  <span<TMPL_IF NAME="REPORT_MANAGER_OFF"> class="disabled_item"</TMPL_IF>><input type="checkbox" name="save-report" value="1" <TMPL_VAR NAME=save-report><TMPL_IF NAME="REPORT_MANAGER_OFF"> readonly onChange="this.checked = !this.checked"</TMPL_IF>> Save report for later access.</span>
	  <TMPL_IF NAME="REPORT_MANAGER_OFF">
	    &nbsp;(Saving Reports currently not available)
	  </TMPL_IF>
      </TMPL_IF>
        </td>
      </tr>
    </table>
    </td>
  </tr>
  <tr>
  <tr>
    <td colspan="3"><input type=hidden name="PHONE_PRE_TOTAL" value="<TMPL_VAR NAME=PHONE_PRE_TOTAL>"></td>
  </tr>
  </tr>
</table>
<!-- End short_phone_report_body.tpl-->
