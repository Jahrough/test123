<!-- Begin short_contact_card_report_body.tpl-->
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
	<table border="0" cellpadding="2" cellspacing="0" width="100%" class="reportselectbody">
	  <tr>
	    <td class="smallfont1">
	    <span class="myaccountlabel">&nbsp;<TMPL_UNLESS HIDE_PRICES>Base Report Price:&nbsp;&nbsp;$<TMPL_VAR NAME="base-contact-card-price"><TMPL_ELSE>Base Report Features:</TMPL_UNLESS></font></span>
	    <br>
	    </td>
	  </tr>
	</table>
        </td>
      </tr>
    </table>
    <br>
    
    <table border="0" cellpadding="2" cellspacing="0" width="100%">
    </tr><tr>
	<td width="49%" valign="top" align="center">
        <table align="left" border="0" cellpadding="0" cellspacing="0">
		<TMPL_UNLESS DISABLE_DA_WIRELESS>
		 <TMPL_UNLESS DELETE_DA_WIRELESS>
                 <TMPL_IF FCOL_TCOL>
                     <input type="hidden" name="phones-plus-data" id="phones-plus-data" value="1">
                 <TMPL_ELSE>
                    <tr> 
                    <td class="smallfont1" width="1%">      
                         <input type="checkbox" name="phones-plus-data" id="phones-plus-data" value="1" <TMPL_VAR NAME="phones-plus-data"> onClick="change_total(this, <TMPL_VAR NAME="phones-plus-data-price">, document.forms[0].CONTACT_CARD_TOTAL,document.forms[0].CONTACT_CARD_PRE_TOTAL)"></td> 
                         <td class="smallfont1" align="left"><label for="phones-plus-data">&nbsp;Phones Plus<TMPL_IF INS>&nbsp;<img src="<TMPL_VAR NAME='IMGPATH'>/star.gif" border="0" width="11" height="10" alt="See Note Below Regarding Charges"></TMPL_IF></label>
                         <TMPL_UNLESS HIDE_CONTACT_CARD_PRICE><TMPL_UNLESS HIDE_PRICES>$<TMPL_VAR NAME="phones-plus-data-price"></TMPL_UNLESS></TMPL_UNLESS>&nbsp;</td> 
                     </tr> 
	        </TMPL_IF>
		 </TMPL_UNLESS> 	
		</TMPL_UNLESS>
	</table>
	</td>
	</tr><tr>

	<td width="49%" valign="top" align="center">
        <table align="left" border="0" cellpadding="0" cellspacing="0">
	  <tr>
	    <td nowrap class="smallfont1">Relatives:&nbsp;</td>
	    <td>
			<select name="relative-depth">
                <TMPL_IF LE_ALLOW_REL_DEPTH_0>
                    <option value="0"<TMPL_IF NAME="relative-depth-0"> SELECTED</TMPL_IF>>0</option>
			    </TMPL_IF>
				<option value="1"<TMPL_IF NAME="relative-depth-1"> SELECTED</TMPL_IF>>1</option>
				<option value="2"<TMPL_IF NAME="relative-depth-2"> SELECTED</TMPL_IF>>2</option>
				<option value="3"<TMPL_IF NAME="relative-depth-3"> SELECTED</TMPL_IF>>3</option>
			</select>&nbsp;<span class="smallfont1">Degrees of Separation</span>
	    </td>
	  </tr>
	</table>
	</td>
    </table>
	
    <table border="0" cellpadding="2" cellspacing="0" width="100%">
	<td width="49%" valign="top" align="center">
        <table align="left" border="0" cellpadding="0" cellspacing="0">
	  <tr>
	    <td nowrap class="smallfont1">Select Report Type:&nbsp;</td>
	    <td>
	    <select name="report-format">
			<option value="html"<TMPL_IF NAME="report-format-html"> SELECTED</TMPL_IF>>Interactive Web Page</option>
			<option value="plain"<TMPL_IF NAME="report-format-plain"> SELECTED</TMPL_IF>>Non-Formatted/Plain Text Web Page</option>
			<option value="text"<TMPL_IF NAME="report-format-text"> SELECTED</TMPL_IF>>Formatted text Web Page</option>
			<option value="word"<TMPL_IF NAME="report-format-word"> SELECTED</TMPL_IF>>Microsoft Word Document</option>
			<option value="pdf"<TMPL_IF NAME="report-format-pdf"> SELECTED</TMPL_IF>>PDF Document</option>		    
	    </select>
	    </td>
	  </tr>
	</table>
	</td>
    </table>

	<BR>
    <table border="0" cellpadding="2" cellspacing="0" width="100%">
      <tr>
      <TMPL_UNLESS HIDE_PRICES>
        <td width="50%" class="myaccounttitle" nowrap>Maximum Report Price:&nbsp;$<input type='text' name='CONTACT_CARD_TOTAL' size='5' value='<TMPL_VAR NAME=CONTACT_CARD_TOTAL>' onFocus='this.blur()'></td>
	  <TMPL_ELSE>
	<td class="smallfont1">&nbsp;<input type='hidden' name='CONTACT_CARD_TOTAL' size='5' value='<TMPL_VAR NAME=CONTACT_CARD_TOTAL>' onFocus='this.blur()'></td>
	  </TMPL_UNLESS>
      <td class="smallfont1">
      <input type="checkbox" name="prompt" id="prompt" value="1" <TMPL_VAR NAME=prompt>> <label for="prompt">Prompt me for these options for each report.</label>
      <TMPL_IF NAME="ENABLE_SAVE_REPORT">
        <br>
	  <span<TMPL_IF NAME="REPORT_MANAGER_OFF"> class="disabled_item"</TMPL_IF>><input type="checkbox" name="save-report" id="save-report" value="1" <TMPL_VAR NAME=save-report><TMPL_IF NAME="REPORT_MANAGER_OFF"> readonly onChange="this.checked = !this.checked"</TMPL_IF>> <label for="save-report">Save report for later access.</label></span>
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
    <td colspan="3"><input type=hidden name="CONTACT_CARD_PRE_TOTAL" value="<TMPL_VAR NAME=CONTACT_CARD_PRE_TOTAL>"></td>
  </tr>
  </tr>
</table>
<!-- End short_contact_card_report_body.tpl-->
