<!-- begin: v2/report/short_sna_report_body.tpl -->
<table width="740" align="center" border="0" cellpadding="2" cellspacing="4" style="background-color:#F4F0DE; border: solid #ccc 1px;">
  <tr height="10">
    <td height="10" colspan="3">&nbsp;</td>
  </tr>

  <tr>
    <td colspan="3" valign="top">&nbsp;<b>Business Link Report:</b>&nbsp;</td>
  </tr>



  <tr>
    <td width="56%" valign="top">
      <table border="0" cellpadding="0" cellspacing="0" width="100%">
        <tr>
          <td align="left" width="15%">&nbsp;</td>
          <td align="left" width="20%" class="medblack"><label for="MED_ONLY"><b>Medical Businesses Only&nbsp;&nbsp;</b></label></td>
          <td align="left" width="1%"><input type="checkbox" name="MED_ONLY" id="MED_ONLY" value="1" CHECKED ></td>
          <td align="left" width="40%">&nbsp;</td>
        </tr>


        <tr>
          <td align="left" colspan="4">&nbsp;</td>
        </tr>


<!--        
        <tr>
          <td align="left">&nbsp;</td>
          <td align="left" class="medblack"><label for="prompt"><b>Business Status&nbsp;&nbsp;</b></label></td>
          <td align="left"><input type="checkbox" name="prompt" id="prompt" value="1" <TMPL_VAR NAME=prompt> ></td>
          <td align="left">&nbsp;</td>
        </tr>
-->        
        <tr>
          <td align="left">&nbsp;</td>
          <td align="left" class="medblack"><label for="prompt"><b>Business Status&nbsp;&nbsp;</b></label></td>
          
          
          <td align="left" colspan="2" class="medblack">
            <input type="radio" name="BUS_STATUS" value="A">&nbsp;Active
            <input type="radio" name="BUS_STATUS" value="I">&nbsp;Inactive
            <input type="radio" name="BUS_STATUS" value="ALL" checked>&nbsp;All
          </td>
          
        </tr>

        <tr>
          <td align="left" colspan="4">&nbsp;</td>
        </tr>

        <tr>
          <td align="left">&nbsp;</td>
          <td align="left" class="medblack"><label for="prompt"><b>Degree&nbsp;&nbsp;</b></label><a href="javascript:void(0);" onClick="bus_links_degree_tip();"><img src="<TMPL_VAR NAME=IMGPATH>/ico_information.gif" alt="More Information" height="13" hspace="5" width="14"></a></td>
          <td align="left" colspan="2">
            <select name="DEGREE_CUTOFF">
              <option value="0">0</option>
              <option value="1">1</option>
              <option value="1.6">1.6</option>
              <option value="2">2</option>
            </select>
          </td>
        </tr>

        <tr>
          <td align="left" colspan="4">&nbsp;</td>
        </tr>

      </table>
    </td>
  </tr>






<!--          
  <tr>
    <td width="56%" valign="top">
      <table border="0" cellpadding="0" cellspacing="0" width="100%">
        <tr>
          <td align="left" class="medblack"><b>Select Time Frame:&nbsp;</b></td>
          <td>
            <select name="daterange">
              <option value="1"<TMPL_IF NAME="daterange-1"> selected="selected"</TMPL_IF>>Current Only</option>
              <option value="12"<TMPL_IF NAME="daterange-12"> selected="selected"</TMPL_IF>>Most Recent 12 Months</option>
              <option value="24"<TMPL_IF NAME="daterange-24"> selected="selected"</TMPL_IF>>Most Recent 24 Months</option>
              <option value="36"<TMPL_IF NAME="daterange-36"> selected="selected"</TMPL_IF>>Most Recent 36 Months</option>
              <option value="48"<TMPL_IF NAME="daterange-48"> selected="selected"</TMPL_IF>>Most Recent 48 Months</option>
              <option value="0"<TMPL_IF NAME="daterange-0"> selected="selected"</TMPL_IF>>All Results</option>
            </select>
          </td>
        </tr>
      </table>
    </td>

    <td>&nbsp;</td>

    <td width="42%" valign="bottom" align="right" class="myaccountlabel">
      <a style="cursor: help;" href="javascript:void(0);" onclick="general_win('http://www.accurint.com/help/bps/entitlements_report_help.html','HelpWindow',780,490,1,1,1,1,1,0);">HELP?</a>
    </td>
  </tr>
-->






<!--
  <tr>
    <td colspan="3" valign="top"><div id="lineVertRedDot"></div></td>
  </tr>
-->  

<!--
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
-->

<!--
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
-->


</table>
<!-- end: v2/report/short_sna_report_body.tpl -->
