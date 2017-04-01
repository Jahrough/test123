<!-- BEGIN short_bus_contact_card_report_body.tpl -->
<table width="700" align="center" cellpadding="2" border="0" cellspacing="4" style="background-color:#F4F0DE; border: solid #ccc 1px;">
<TMPL_IF NAME="PREFERENCES_ERROR_MESSAGE">
  <tr>
    <td align="center" colspan="3"><TMPL_VAR NAME="PREFERENCES_ERROR_MESSAGE"></td>
  </tr>
</TMPL_IF>

  <tr>
    <td align="left" colspan="3"class="medblack"><b><TMPL_UNLESS HIDE_PRICES>Base Report Price:&nbsp;&nbsp;$<TMPL_VAR NAME="base-bus-contact-card-price"><TMPL_ELSE>Base Report Features:</TMPL_UNLESS>&nbsp;</b></td>
  </tr>

    <tr>
      <td colspan="3" valign="top"><div id="lineVertRedDot"></div></td>
    </tr>

   <tr>
      <td colspan="3" valign="top">
          <table border="0" cellpadding="0" cellspacing="0" width="100%">
		  <tr>
		   <TMPL_UNLESS HIDE_PRICES>
		    <td align="left" class="medblack" width="29%"><b>Maximum Report Price:&nbsp;$</b></td>
		    <td align="left"><input type="text" name="BUS_CONTACT_CARD_TOTAL" size="5" value="<TMPL_VAR NAME='BUS_CONTACT_CARD_TOTAL'>" onFocus="this.blur();"></td>
		    <TMPL_ELSE>
		    <input type='hidden' name='BUS_CONTACT_CARD_TOTAL' size='5' value='<TMPL_VAR NAME=BUS_CONTACT_CARD_TOTAL>'>
		   </TMPL_UNLESS>
		  </tr>
	  </table>
      </td>
   </tr>

   <tr>
      <td width="100%" valign="top">
          <table border="0" cellpadding="0" cellspacing="0" width="100%">
		  <tr>
		      <td width="48%" align="left" class="smallblack"><TMPL_UNLESS HIDE_PRICES><b>NOTE:</b>&nbsp;&nbsp;This is the maximum possible cost for this report.&nbsp;&nbsp;You will not be charged for options returning no results except those marked with <img src="<TMPL_VAR NAME='IMGPATH'>/star.gif" border="0" width="11" height="10" alt="Max. Cost"><img src="<TMPL_VAR NAME='IMGPATH'>/star.gif" border="0" width="11" height="10" alt="Max. Cost"> where search charge applies with or without results.<TMPL_ELSE>&nbsp;</TMPL_UNLESS></td>
		      <td width="1%"></td>
		      <td width="51%" valign="top">
			  <table border="0" cellpadding="0" cellspacing="0" width="100%">
				  <tr>
				  <td colspan="2">
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
				    <td width="1%"><input type="checkbox" name="prompt" id="prompt" value="1" <TMPL_VAR NAME=prompt> ></td>
				    <td align="left" class="smallblack" width="98%"><label for="prompt">Prompt me for these options for each report.</label> </td>
				  </tr>

				  <tr>
				   <TMPL_IF NAME="ENABLE_SAVE_REPORT">
				      <TMPL_IF NAME="REPORT_MANAGER_OFF">
					    <td width="1%"  class="disabled_medblack"><input type="checkbox" name="save-report" id="save-report" value="1" <TMPL_VAR NAME="save-report"> readonly onChange="this.checked = !this.checked"></td>
					    <td align="left" class="disabled_medblack"><label for="save-report">(Saving Reports currently not available).</td>
				      <TMPL_ELSE>
					    <td width="1%"><input type="checkbox" name="save-report" id="save-report" value="1" <TMPL_VAR NAME="save-report"> ></td>
					    <td align="left" class="smallblack"><label for="save-report">Save report for later access.</label></td>
				      </TMPL_IF>
				   <TMPL_ELSE>
				   <td colspan="2"></td>
				   </TMPL_IF>
				  </tr>
			  </table>
		      </td>
		  </tr>
	  </table>
      </td>
   </tr>


<input type=hidden name="BUS_CONTACT_CARD_PRE_TOTAL" value="<TMPL_VAR NAME=BUS_CONTACT_CARD_PRE_TOTAL>">
</table>
<!-- END short_bus_contact_card_report_body.tpl -->
