<!-- Begin short_summary_report_body.tpl -->
	<TABLE WIDTH=260 BORDER=0 CELLPADDING=0 CELLSPACING=0>
            <TR>
              <TD colspan="3" width="260"><IMG src="<TMPL_VAR NAME="IMGPATH">/prefs_menu/summary_header<TMPL_IF HIDE_PRICES>_noprice</TMPL_IF>.gif" WIDTH=260 HEIGHT=22></TD>
            </TR>
            <TR>
              <TD width="13"><IMG src="<TMPL_VAR NAME="IMGPATH">/prefs_menu/sliver_left.gif" WIDTH=13 HEIGHT=184></TD>
              <TD align="center" class="prefsselectbox" width="242">
                <table border="0" cellpadding="0" cellspacing="0" width="233" height="154">
                  <tr height="107">
                    <td align="left" width="233" height="107" valign="top">
                      <span class="reportselectboxtext">
                        &#149; Address Summary<br>
                        &#149; Others using SSN<br>
                        &#149; Date/Locations where SSN Issued<br>
                        &#149; Census Data<br>
                        &#149; Bankruptcy Indicator<br>
                        &#149; Property Indicator<br>
                        &#149; Corporate Affiliations Indicator<br>
                        <br>
                        <br>
                      </span>
                    </td>
                  </tr>
                </table>
              </TD>
              <TD width="5"><IMG src="<TMPL_VAR NAME="IMGPATH">/prefs_menu/sliver_right.gif" WIDTH=5 HEIGHT=184></TD>
            </TR>
            <TR>
              <TD width="260" colspan="3"><IMG src="<TMPL_VAR NAME="IMGPATH">/prefs_menu/generic_footer.gif" WIDTH=260 HEIGHT=16></TD>
            </TR>
          </TABLE>
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
      <TMPL_IF NAME="ENABLE_SAVE_REPORT">
      <tr>
	<td width="100%" align="center" valign="top" class="smallfont1">
	  <span<TMPL_IF NAME="REPORT_MANAGER_OFF"> class="disabled_item"</TMPL_IF>><input type="checkbox" name="save-report" value="1" <TMPL_VAR NAME=save-report><TMPL_IF NAME="REPORT_MANAGER_OFF"> readonly onChange="this.checked = !this.checked"</TMPL_IF>> Save report for later access.</span>
	  <TMPL_IF NAME="REPORT_MANAGER_OFF">
	    &nbsp;(Saving Reports currently not available)
	  </TMPL_IF>
	</td>
      </tr>
      </TMPL_IF>
    </table>
    </td>
  </tr>
</table>
<!-- End short_summary_report_body.tpl -->
