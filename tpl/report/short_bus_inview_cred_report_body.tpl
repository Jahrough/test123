<!-- Begin short_bus_inview_cred_report_body.tpl-->
<table border="0" cellpadding="0" cellspacing="0" width="620">
<TMPL_IF NAME="PREFERENCES_ERROR_MESSAGE">
  <tr>
    <td align="center" colspan="3"><TMPL_VAR NAME="PREFERENCES_ERROR_MESSAGE"></td>
  </tr>
</TMPL_IF>
  <tr>
    <td width="100%" valign="top">
    <table border="0" cellpadding="2" cellspacing="0" width="100%" class="myaccountborder">
      <tr>
        <td valign="top">
	<table border="0" cellpadding="2" cellspacing="0" width="100%" class="reportselectbody">
	  <tr>
	    <td class="smallfont1">
	    <span class="myaccountlabel">&nbsp;<TMPL_UNLESS HIDE_PRICES>Base Report Price:&nbsp;&nbsp;<TMPL_IF NAME="REPORT_PRICE"><TMPL_VAR NAME="REPORT_PRICE"><TMPL_ELSE>$15.00</TMPL_IF><TMPL_ELSE>Base Report Features:</TMPL_UNLESS></span>
	    <br><br>
	    </td>
	  </tr>
	</table>
        </td>
      </tr>
    </table>
    <br>
    <table border="0" cellpadding="2" cellspacing="0" width="100%">
      <tr>
      <td width="2%" nowrap class="unifont1">&nbsp;&nbsp;&nbsp;&nbsp;</td>
      <td width="49%" valign="top">
        <table border="0" cellpadding="0" cellspacing="0">
	  <tr>
	    <td nowrap class="smallfont1"></td>
	    
	  </tr>
	</table>
     </td> 
     </tr>
     <tr>
      <td class="smallfont1"  align="left" width="49%">
      <TMPL_IF NAME="ENABLE_SAVE_REPORT">
	  <span<TMPL_IF NAME="REPORT_MANAGER_OFF"> class="disabled_item"</TMPL_IF>><input type="checkbox" name="save-report" value="1" <TMPL_VAR NAME=save-report><TMPL_IF NAME="REPORT_MANAGER_OFF"> readonly onChange="this.checked = !this.checked"</TMPL_IF>> Save report for later access.</span>
	  <TMPL_IF NAME="REPORT_MANAGER_OFF">
	    &nbsp;(Saving Reports currently not available)
	  </TMPL_IF>
      </TMPL_IF>
      </td>
      </tr>
      <tr>        
	<td width="2%" class="unifont1">&nbsp;&nbsp;&nbsp;&nbsp;</td>
	<td width="49%" class="unifont1">&nbsp;&nbsp;&nbsp;&nbsp;</td>
      </tr>
    </table>
    </td>
  </tr>
  <tr>
  </tr>
</table>
<!-- End short_bus_inview_cred_report_body.tpl-->
