<!-- BEGIN loc/manage_account_disable_reports.tpl -->
<TMPL_UNLESS DA_ONLY>
  <fieldset>
    <div align="left" class="unifont1bold"><legend>Enable Report Settings</legend></div>
      <table border="0" cellpadding="0" cellspacing="0" width="95%">
  
	  
	  <!--<TMPL_UNLESS COMPANY_DISABLE_BUS_REPORT>
	  <TR>
	    <td width="200" nowrap class="unifont1" align="left">Business Reports:</TD>
	    <td width="220" align="left">
	    <table border="0" cellpadding="0" cellspacing="0">
	      <tr>
		<td><INPUT TYPE=RADIO NAME="DISABLE_BUS_REPORT" VALUE='0' <TMPL_UNLESS NAME=DISABLE_BUS_REPORT>CHECKED</TMPL_UNLESS>></td>
		<td class="unifont1">Yes&nbsp;&nbsp;&nbsp;</td>
		<td><INPUT TYPE=RADIO NAME="DISABLE_BUS_REPORT" VALUE='1' <TMPL_IF NAME=DISABLE_BUS_REPORT>CHECKED</TMPL_IF>></td>
		<td class="unifont1">No</td>
	      </tr>
	    </table>
	    </td>
	  </TR>
	  </TMPL_UNLESS>-->
	    
	  <TMPL_UNLESS COMPANY_DISABLE_COMPREHENSIVE_REPORT>
	  <TR>
	    <td class="unifont1" align="left" width="200">Comprehensive Reports:</TD>
	    <td align="left" width="220">
	    <table border="0" cellpadding="0" cellspacing="0">
	      <tr>
		<td><INPUT TYPE=RADIO NAME=DISABLE_COMPREHENSIVE_REPORT VALUE='0' <TMPL_UNLESS NAME=DISABLE_COMPREHENSIVE_REPORT>CHECKED</TMPL_UNLESS>></td>
		<td class="unifont1">Yes&nbsp;&nbsp;&nbsp;</td>
		<td><INPUT TYPE=RADIO NAME=DISABLE_COMPREHENSIVE_REPORT VALUE='1' <TMPL_IF NAME=DISABLE_COMPREHENSIVE_REPORT>CHECKED</TMPL_IF>></td>
		<td class="unifont1">No</td>
	      </tr>
	    </table>
	    </td>
	  </TR>
	  </TMPL_UNLESS>

	  <TMPL_IF COMPANY_DISABLE_BUS_REPORT>
	  <TMPL_IF COMPANY_DISABLE_COMPREHENSIVE_REPORT>
	  <TR>
	    <td class="unifont1" align="left" width="200" colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;No Reports Available</TD>
	  </TR>
	  </TMPL_IF>
	  </TMPL_IF>
    </table>
  </fieldset>
</TMPL_UNLESS>
  <!-- END loc/manage_account_disable_reports.tpl -->
