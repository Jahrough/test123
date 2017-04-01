<!-- Begin v2/report/short_ind_fr_qualifier_report_body.tpl -->
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
          <table border="0" cellpadding="0" cellspacing="0" width="100%">
          <tr>
            <td width="1%"><input type="checkbox" id="verification" name="verification" value="1" <TMPL_VAR NAME="verification">></td>
                <td align="left" class="medblack"><label for="verification">&nbsp;Verification</label></td>
                <td align="right" class="medblack">&nbsp;</td>
          </tr>
          <tr>
            <td width="1%"><input type="checkbox" id="business-address" name="business-address" value="1" <TMPL_VAR NAME="business-address">></td>
                <td align="left" class="medblack"><label for="business-address">&nbsp;Business Address Summary</label></td>
                <td align="right" class="medblack">&nbsp;</td>
          </tr>

              <TMPL_UNLESS DELETE_PROF_LICENSE>
          <tr>
              <TMPL_IF DISABLE_PROF_LICENSE>
                <td width="1%">&nbsp;</td>
                <td class="disabled_small">Professional Licenses&nbsp;(disabled)&nbsp;</td>
                <td align="right" class="disabled_small">&nbsp;</td>
              <TMPL_ELSE>
            <td width="1%"><input type="checkbox" id="professional-licenses" name="professional-licenses" value="1" <TMPL_VAR NAME="professional-licenses">></td>
                <td align="left" class="medblack"><label for="professional-licenses">&nbsp;Professional Licenses</label></td>
                <td align="right" class="medblack">&nbsp;</td>
              </TMPL_IF>
          </tr>
              </TMPL_UNLESS>

          <tr>
            <td width="1%"><input type="checkbox" id="dea-substances" name="dea-substances" value="1" <TMPL_VAR NAME="dea-substances">></td>
                <td align="left" class="medblack"><label for="dea-substances">&nbsp;DEA Licenses</label></td>
                <td align="right" class="medblack">&nbsp;</td>
          </tr>
          <tr>
            <td width="1%"><input type="checkbox" id="corp-affiliation" name="corp-affiliation" value="4" <TMPL_VAR NAME="corp-affiliation">></td>
                <td align="left" class="medblack"><label for="corp-affiliation">&nbsp;Corporate Affiliations</label></td>
                <td align="right" class="medblack">&nbsp;</td>
          </tr>
          <tr>
            <td width="1%"><input type="checkbox" id="group-affiliations" name="group-affiliations" value="1" <TMPL_VAR NAME="group-affiliations">></td>
                <td align="left" class="medblack"><label for="group-affiliations">&nbsp;Group Affiliations</label></td>
                <td align="right" class="medblack">&nbsp;</td>
          </tr>
          <tr>
            <td width="1%"><input type="checkbox" id="hospital-affiliations" name="hospital-affiliations" value="4" <TMPL_VAR NAME="hospital-affiliations">></td>
                <td align="left" class="medblack"><label for="hospital-affiliations">&nbsp;Hospital Affiliations</label></td>
                <td align="right" class="medblack">&nbsp;</td>
          </tr>
          <tr>
            <td width="1%"><input type="checkbox" id="residencies" name="residencies" value="4" <TMPL_VAR NAME="residencies">></td>
                <td align="left" class="medblack"><label for="residencies">&nbsp;Residencies</label></td>
                <td align="right" class="medblack">&nbsp;</td>
          </tr>
          <tr>
            <td width="1%"><input type="checkbox" id="specialties" name="specialties" value="1" <TMPL_VAR NAME="specialties">></td>
                <td align="left" class="medblack"><label for="specialties">&nbsp;Specialties</label></td>
                <td align="right" class="medblack">&nbsp;</td>
          </tr>
          <tr>
            <td width="1%"><input type="checkbox" id="licenses" name="licenses" value="4" <TMPL_VAR NAME="licenses">></td>
                <td align="left" class="medblack"><label for="licenses">&nbsp;Licenses</label></td>
                <td align="right" class="medblack">&nbsp;</td>
          </tr>
          </table>
      </td>

      <td>&nbsp;</td>

      <td width="42%" valign="top">
          <table border="0" cellpadding="0" cellspacing="0" width="100%">
          <tr>
            <td width="1%"><input type="checkbox" id="associates" name="associates" value="4" <TMPL_VAR NAME="associates">></td>
                <td align="left" class="medblack"><label for="associates">&nbsp;Associates</label></td>
                <td align="right" class="medblack">&nbsp;</td>
          </tr>
          <tr>
            <td width="1%"><input type="checkbox" id="degrees" name="degrees" value="4" <TMPL_VAR NAME="degrees">></td>
                <td align="left" class="medblack"><label for="degrees">&nbsp;Degrees</label></td>
                <td align="right" class="medblack">&nbsp;</td>
          </tr>
          <tr>
            <td width="1%"><input type="checkbox" id="gsa-sanctions" name="gsa-sanctions" value="4" <TMPL_VAR NAME="gsa-sanctions">></td>
                <td align="left" class="medblack"><label for="gsa-sanctions">&nbsp;GSA Sanctions</label></td>
                <td align="right" class="medblack">&nbsp;</td>
          </tr>
          <tr>
            <td width="1%"><input type="checkbox" id="blank-dod" name="blank-dod" value="4" <TMPL_VAR NAME="blank-dod">></td>
                <td align="left" class="medblack"><label for="blank-dod">&nbsp;Add'l Deceased Data Sources</label></td>
                <td align="right" class="medblack">&nbsp;</td>
          </tr>
          <tr>
            <td width="1%"><input type="checkbox" id="healthcare-sanctions" name="healthcare-sanctions" value="4" <TMPL_VAR NAME="healthcare-sanctions">></td>
                <td align="left" class="medblack"><label for="healthcare-sanctions">&nbsp;Health Care Sanctions</label></td>
                <td align="right" class="medblack">&nbsp;</td>
          </tr>
          <tr>
            <td width="1%"><input type="checkbox" id="healthcare-education" name="healthcare-education" value="4" <TMPL_VAR NAME="healthcare-education">></td>
                <td align="left" class="medblack"><label for="healthcare-education">&nbsp;Health Care Education</label></td>
                <td align="right" class="medblack">&nbsp;</td>
          </tr>
          <tr>

              <TMPL_UNLESS DELETE_CRIM>
          <tr>
              <TMPL_IF DISABLE_CRIM>
                <td width="1%">&nbsp;</td>
                <td class="disabled_small">&nbsp;Possible Criminal Records&nbsp;(disabled)&nbsp;</td>
                <td class="disabled_small">&nbsp;</td>
              <TMPL_ELSE>
            <td width="1%"><input type="checkbox" id="criminal-records" name="criminal-records" value="1" <TMPL_VAR NAME="criminal-records">></td>
                <td align="left" class="medblack"><label for="criminal-records">&nbsp;Possible Criminal Records</label></td>
                <td align="right" class="medblack">&nbsp;</td>
              </TMPL_IF>
          </tr>
              </TMPL_UNLESS>

              <TMPL_UNLESS DELETE_BANKRUPTCY>
          <tr>
              <TMPL_IF DISABLE_BANKRUPTCY>
                <td width="1%">&nbsp;</td>
                <td class="disabled_small">&nbsp;Bankruptcy&nbsp;(disabled)&nbsp;</td>
                <td class="disabled_small">&nbsp;</td>
              <TMPL_ELSE>
            <td width="1%"><input type="checkbox" id="bankruptcy" name="bankruptcy" value="1" <TMPL_VAR NAME="bankruptcy">></td>
                <td align="left" class="medblack"><label for="bankruptcy">&nbsp;Bankruptcy</label></td>
                <td align="right" class="medblack">&nbsp;</td>
              </TMPL_IF>
          </tr>
              </TMPL_UNLESS>

              <TMPL_UNLESS DELETE_LINE>
          <tr>
              <TMPL_IF DISABLE_LIEN>
                <td width="1%">&nbsp;</td>
                <td class="disabled_small">&nbsp;Liens &amp; Judgments&nbsp;(disabled)&nbsp;</td>
                <td class="disabled_small">&nbsp;</td>
              <TMPL_ELSE>
                <td width="1%"><input type="checkbox" id="liens" name="liens" value="1" <TMPL_VAR NAME="liens">></td>
                <td align="left" class="medblack"><label for="liens">&nbsp;Liens &amp; Judgments</label></td>
                <td align="right" class="medblack">&nbsp;</td>
              </TMPL_IF>
          </tr>
              </TMPL_UNLESS>

              <TMPL_UNLESS DELETE_SEXPREDATOR>
          <tr>
              <TMPL_IF DISABLE_SEXPREDATOR>
                <td width="1%">&nbsp;</td>
                <td class="disabled_small">&nbsp;Sex Offenders&nbsp;(disabled)&nbsp;</td>
                <td class="disabled_small">&nbsp;</td>
              <TMPL_ELSE>
                <td width="1%"><input type="checkbox" id="sex-offenders" name="sex-offenders" value="1" <TMPL_VAR NAME="sex-offenders">></td>
                <td align="left" class="medblack"><label for="sex-offenders">&nbsp;Sex Offenders</label></td>
                <td align="right" class="medblack">&nbsp;</td>
              </TMPL_IF>
          </tr>
              </TMPL_UNLESS>
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
<!-- End v2/report/short_ind_fr_qualifier_report_body.tpl-->
