<!-- Begin short_basic_plus_assoc_report_body.tpl -->
<center>
<TMPL_INCLUDE NAME="v2/xbps/report/short_basic_plus_assoc_report_body.tpl">
</center>
<table border="0" cellpadding="0" cellspacing="0" width="640">
<TMPL_IF NAME="PREFERENCES_ERROR_MESSAGE">
  <tr>
    <td align="center" colspan="3"><TMPL_VAR NAME="PREFERENCES_ERROR_MESSAGE"></td>
  </tr>
</TMPL_IF>
  <tr height="5">
    <td height="5" colspan="3" class="unifont2pt">&nbsp;</td>
  </tr>
  <tr>
    <td width="640" valign="top">
    <table border="0" cellpadding="2" cellspacing="0" width="100%">
      <tr>
        <td width="100%" align="center" valign="top" class="smallfont1">
		    <input type="checkbox" name="prompt" id="prompt" value="1" <TMPL_VAR NAME=prompt> ><label for="prompt">&nbsp;Prompt me for these options for each report.</label>
      <TMPL_IF NAME="ENABLE_SAVE_REPORT">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	  <span<TMPL_IF NAME="REPORT_MANAGER_OFF"> class="disabled_item"</TMPL_IF>><input type="checkbox" name="save-report" id="save-report-checkbox" value="1" <TMPL_VAR NAME=save-report><TMPL_IF NAME="REPORT_MANAGER_OFF"> readonly onChange="this.checked = !this.checked"</TMPL_IF>><label for="save-report-checkbox"> Save report for later access.</label></span>
	  <TMPL_IF NAME="REPORT_MANAGER_OFF">
	    &nbsp;(Saving Reports currently not available)
	  </TMPL_IF>
      </TMPL_IF>
	</td>
      </tr>
    </table>
    </td>
  </tr>
</table>
<!-- End short_basic_plus_assoc_report_body.tpl -->
