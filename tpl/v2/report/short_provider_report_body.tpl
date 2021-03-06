<!-- Begin short_provider_report_body.tpl-->
 <table width="740" align="center" cellpadding="2" border="0" cellspacing="4" style="background-color:#F4F0DE; border: solid #ccc 1px;">
<TMPL_IF NAME="PREFERENCES_ERROR_MESSAGE">
  <tr>
    <td align="center" colspan="4"><TMPL_VAR NAME="PREFERENCES_ERROR_MESSAGE"></td>
  </tr>
</TMPL_IF>
  <tr>
    <td width="100%" valign="top">
    <TMPL_UNLESS NAME="HIDE_PRICES">
    <table border="0" cellpadding="2" cellspacing="0" width="100%" class="myaccountborder">
      <tr>
        <td valign="top">
	<table border="0" cellpadding="2" cellspacing="0" width="100%" class="reportselectbody">
	  <tr>
	    <td class="medblack"><br>&nbsp;Provider License Report Price:&nbsp;&nbsp;</span><span class="reportprices">$ 5.00</span><br><br></td>
	  </tr>
	</table>
        </td>
      </tr>
    </table>
	<BR>
    </TMPL_UNLESS>
    <table border="0" cellpadding="2" cellspacing="0" width="100%">
    <tr>
      <td width="49%" valign="top">
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
	  </tr>
	  <tr height="10">
		<td height="10" class="unifont2pt">&nbsp;</td>
	  </tr>
      <tr>
        <TMPL_UNLESS NAME="HIDE_PRICES">
        <td width="49%" valign="top" class="medblack">Maximum Report Price:&nbsp;$ 5.00</td>
      	<td width="2%" nowrap class="unifont1">&nbsp;&nbsp;&nbsp;&nbsp;</td>
        </TMPL_UNLESS>
      	<td width="49%" valign="top">
    
    
          <table border="0" cellpadding="2" cellspacing="0" width="100%">
            <tr>
            <td class="smallfont1" colspan=2>
            <TMPL_IF NAME="ENABLE_SAVE_REPORT">
      	  <span<TMPL_IF NAME="REPORT_MANAGER_OFF"> class="disabled_item"</TMPL_IF>><input type="checkbox" name="save-report" value="1" <TMPL_VAR NAME=save-report><TMPL_IF NAME="REPORT_MANAGER_OFF"> readonly onChange="this.checked = !this.checked"</TMPL_IF>> Save report for later access.</span>
      	  <TMPL_IF NAME="REPORT_MANAGER_OFF">
      	    &nbsp;(Saving Reports currently not available)
      	  </TMPL_IF>
            </TMPL_IF>
            </td>
            </tr>
            <tr>
            	<td class="smallfont1" colspan=2><input type="checkbox" name="prompt" value="1" <TMPL_VAR NAME=prompt>> Prompt me for these options for each report.</td>
            </tr>
          </table>
        </td>
      </tr>
    </table>
    </td>
  </tr>
  <tr>
  <tr>
    <td colspan="3"><input type=hidden name="ADDR_PRE_TOTAL" value="<TMPL_VAR NAME=ADDR_PRE_TOTAL>"></td>
  </tr>
</table>
<!-- End short_provider_report_body.tpl-->
