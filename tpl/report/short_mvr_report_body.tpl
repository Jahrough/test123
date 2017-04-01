<!-- Begin short_mvr_report_body.tpl-->
<table border="0" cellpadding="0" cellspacing="0" width="620">
<TMPL_IF NAME="INVALID_DL_NUMBER">
  <tr>
    <td class="smallfont1" align="center">
    <span class="unifont1"><font color="#003399">&nbsp;<b><TMPL_VAR NAME="INVALID_DL_NUMBER"></b></font></span>
    <br>
    </td>
  </tr>
<TMPL_ELSE>
<TMPL_IF NAME="PREFERENCES_ERROR_MESSAGE">
  <tr>
    <td align="center" colspan="3"><TMPL_VAR NAME="PREFERENCES_ERROR_MESSAGE"></td>
  </tr>
</TMPL_IF>
  <tr>
    <td width="100%" valign="top">
    <TMPL_UNLESS NAME="HIDE_MVR_PRICES">
    <table border="0" cellpadding="2" cellspacing="0" width="100%" class="myaccountborder">
      <tr>
        <td valign="top">
	<table border="0" cellpadding="2" cellspacing="0" width="100%" class="reportselectbody">
	  <tr>
	    <td class="smallfont1"><br>&nbsp;MVR Reports Price:&nbsp;&nbsp;</span><span class="reportprices">$ <TMPL_VAR NAME="MVR_STATE_PRICE"></span><br><br></td>
	  </tr>
	</table>
        </td>
      </tr>
    </table>
	<BR>
    </TMPL_UNLESS>
    <table border="0" cellpadding="2" cellspacing="0" width="100%">
      <tr>
        <TMPL_UNLESS NAME="HIDE_MVR_PRICES">
        <td width="49%" valign="top" class="myaccounttitle">Maximum Report Price:&nbsp;$ <TMPL_VAR NAME="MVR_STATE_PRICE"></td>
      	<td width="2%" nowrap class="unifont1">&nbsp;&nbsp;&nbsp;&nbsp;</td>
        </TMPL_UNLESS>
      	<td width="49%" valign="top">
    
    
          <table border="0" cellpadding="2" cellspacing="0" width="100%">
        	  <tr>
        	    <td nowrap class="smallfont1" align="right">Select Report Type:&nbsp;</td>
        	    <td>
        	    <select name="report-format">
        	    <option value="text"<TMPL_IF NAME="report-format-text"> SELECTED</TMPL_IF>>Plain Text Web Page</option>
        	    <option value="word"<TMPL_IF NAME="report-format-word"> SELECTED</TMPL_IF>>Microsoft Word Document</option>
        	    <option value="pdf"<TMPL_IF NAME="report-format-pdf"> SELECTED</TMPL_IF>>PDF Document</option>
        	    </select>
        	    </td>
        	  </tr>
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
  </tr>
</TMPL_IF>
</table>
<!-- End short_mvr_report_body.tpl-->
