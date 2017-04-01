<!-- Begin short_delco_report_body.tpl-->
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
	    <td class="smallfont1"><TMPL_UNLESS HIDE_PRICES>Report Price:&nbsp;&nbsp;<span class="reportprices">$<TMPL_VAR NAME="delco-price"></TMPL_UNLESS></span>
	    <br><br>
	    <br>
	    </td>
	  </tr>
	</table>
        </td>
      </tr>
    </table>
    <br>
    </td>
  </tr>  
</table>
<!-- End short_delco_report_body.tpl-->
