<!-- Begin short_asset_report_body.tpl -->
          <TABLE WIDTH=260 BORDER=0 CELLPADDING=0 CELLSPACING=0>
            <TR>
              <TD colspan="3" width="260"><IMG src="<TMPL_VAR NAME="IMGPATH">/prefs_menu/assets_header<TMPL_IF HIDE_PRICES>_noprice</TMPL_IF>.gif" WIDTH=260 HEIGHT=22></TD>
            </TR>
            <TR>
              <TD width="13"><IMG src="<TMPL_VAR NAME="IMGPATH">/prefs_menu/sliver_left.gif" WIDTH=13 HEIGHT=180></TD>
              <TD class="prefsselectbox" align="center" width="242">
                <table border="0" cellpadding="0" cellspacing="0" width="232" height="155">
                  <tr height="108">
                    <td align="left" width="232" height="108" valign="top">
                      <span class="reportselectboxtext">
                      <TMPL_IF FCOL_TCOL>
                        &#149; Property Deeds &amp; Assessments<br>
                        &#149; Watercraft<br>
                        &#149; FAA Pilots &amp; FAA Aircraft<br>
                      <TMPL_ELSE>
                        &#149; Summary Report<br>
                        &#149; Property Deeds &amp; Assessments<br>
                        &#149; Vehicle Registrations<br>
                        &#149; Watercraft<br>
                        &#149; FAA Pilots &amp; FAA Aircraft<br>                                                        
                        &#149; UCC Filings<br>
			<TMPL_IF NAME="COL">
                        &#149; People at Work<br>
			</TMPL_IF>
                      </TMPL_IF>
                        <br>
                        <br>
                        <br>
                      </span>
                    </td>
                  </tr>
                </table>
              </TD>
              <TD width="5"><IMG src="<TMPL_VAR NAME="IMGPATH">/prefs_menu/sliver_right.gif" WIDTH=5 HEIGHT=180></TD>
            </TR>
            <TR>
              <TD colspan="3" width="260"><IMG src="<TMPL_VAR NAME="IMGPATH">/prefs_menu/generic_footer.gif" WIDTH=260 HEIGHT=16></TD>
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
      <TMPL_IF NAME="ENABLE_ALSO_FOUND_REPORTS">
      <tr>
	<td width="100%" align="center" valign="top" class="smallfont1">
	  <span><input type="checkbox" name="report-content-nav" id="report-content-nav-checkbox" value="1" <TMPL_VAR NAME=report-content-nav>><label for="report-content-nav-checkbox"> Display report navigation bar.</label></span>
	</td>
      </tr>
      </TMPL_IF>
      <TMPL_IF NAME="ENABLE_SAVE_REPORT">
      <tr>
	<td width="100%" align="center" valign="top" class="smallfont1">
	  <span<TMPL_IF NAME="REPORT_MANAGER_OFF"> class="disabled_item"</TMPL_IF>><input type="checkbox" name="save-report" id="save-report-checkbox" value="1" <TMPL_VAR NAME=save-report><TMPL_IF NAME="REPORT_MANAGER_OFF"> readonly onChange="this.checked = !this.checked"</TMPL_IF>><label for="save-report-checkbox"> Save report for later access.</label></span>
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
<!-- End short_asset_report_body.tpl -->
