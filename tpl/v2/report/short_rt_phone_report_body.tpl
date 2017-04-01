<!-- begin: v2/report/short_rt_phone_report_body.tpl -->
<table width="620" align="center" border="0" cellpadding="2" cellspacing="4" style="background-color:#F4F0DE; border: solid #ccc 1px;">
  <tr height="10">
    <td height="10" colspan="3">&nbsp;</td>
  </tr>
      
  <tr>
    <td colspan="3" valign="top">&nbsp;<b>Phone Detail Report</b>&nbsp;</td>
  </tr>

  <tr>
    <td colspan="3" align="left">
    <p class="medblack">The Phone Detail Report will contain data on landline phone numbers, wireless numbers, carrier company information, and additional details related to the phone number.</p>
    <p class="medblack">Click "Request Report" now to run the Phone Detail Report.</p>
    </td>
  </tr>

  <tr>
    <td colspan="3" valign="top"><div id="lineVertRedDot"></div></td>
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
              <td align="left" class="disabled_medblack"><label for="save-report">&nbsp;(Saving Reports currently not available).</td>
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

</table>
<!-- end: v2/report/short_rt_phone_report_body.tpl -->
