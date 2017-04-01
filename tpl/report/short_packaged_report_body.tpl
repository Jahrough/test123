<!-- Begin short_packaged_report_body.tpl-->
<table border="0" cellpadding="0" cellspacing="0" width="640">
<TMPL_IF NAME="PREFERENCES_ERROR_MESSAGE">
  <tr>
    <td align="center"><TMPL_VAR NAME="PREFERENCES_ERROR_MESSAGE"></td>
  </tr>
</TMPL_IF>
  <tr height="5">
    <td height="5" class="unifont2pt">&nbsp;</td>
  </tr>
  <tr>
    <td width="640" valign="top">
    <table border="0" cellpadding="2" cellspacing="0" width="100%">
      <tr>
        <td width="100%" valign"top" align="center">
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
<!-- 	<td width="2%" nowrap class="unifont1">&nbsp;&nbsp;&nbsp;&nbsp;</td>
	<td width="49%" valign="top" class="unifont1"><input type="checkbox" name="prompt" value="1" <TMPL_VAR NAME=prompt>>Prompt me for these options for each report.
	</td> 
	-->
      </tr>
    </table>
    </td>
  </tr>
</table>
<!-- End short_packaged_report_body.tpl-->
