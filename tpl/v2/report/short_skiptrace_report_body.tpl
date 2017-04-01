<!-- Begin short_skiptrace_report_body.tpl -->
<table width="740" align="center" cellpadding="2" border="0" cellspacing="4" style="background-color:#F4F0DE; border: solid #ccc 1px;">
<TMPL_IF NAME="PREFERENCES_ERROR_MESSAGE">
  <tr>
    <td align="center" colspan="3"><TMPL_VAR NAME="PREFERENCES_ERROR_MESSAGE"></td>
  </tr>
</TMPL_IF>

    <tr>
      <td colspan="3" valign="top"><div id="lineVertRedDot"></div></td>
    </tr>

     <tr>
      <td width="100%" valign="top" colspan="3">
          <table border="0" cellpadding="0" cellspacing="0" width="100%">
		  <tr>
		    <td align="left" class="medblack" width="24%"><b>&nbsp;Select Report Type:&nbsp;</b></td>
		    <td width="76%">
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
      <td width="46%" valign="top">
          <table border="0" cellpadding="0" cellspacing="0">
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
         <TMPL_IF NAME="ENABLE_ALSO_FOUND_REPORTS">
	   <tr>
		    <td width="1%"><input type="checkbox" name="report-content-nav" id="report-content-nav-checkbox" value="1" <TMPL_VAR NAME=report-content-nav> ></td>
		    <td align="left" class="medblack"><label for="report-content-nav-checkbox">&nbsp;Display report navigation bar.</label></td>
	   </tr>
         </TMPL_IF>
	  </table>
      </td>

      <td width="54%" valign="top">
          <table border="0" cellpadding="0" cellspacing="0">
		  <tr>
		    <td width="1%"><input type="checkbox" name="prompt" id="prompt" value="1" <TMPL_VAR NAME=prompt> ></td>
		    <td align="left" class="medblack"><label for="prompt">&nbsp;Prompt me for these options for each report.</label></td>
		  </tr>
	  </table>
      </td>
    </tr>

</table>
<!-- End short_skiptrace_report_body.tpl -->
