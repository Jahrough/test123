<!-- begin: $RCSfile: short_others_report_body.tpl,v $ -->

<table width="600" align="center" cellpadding="2" border="0" cellspacing="4" style="background-color:#F4F0DE; border: solid #ccc 1px;">
<TMPL_IF NAME="PREFERENCES_ERROR_MESSAGE">
  <tr>
    <td align="center" colspan="3"><TMPL_VAR NAME="PREFERENCES_ERROR_MESSAGE"></td>
  </tr>
</TMPL_IF>

  <tr>
	   <TMPL_UNLESS NAME="HIDE_PRICES">
	    <td align="left" colspan="3"class="medblack"><b><TMPL_VAR NAME="REPORT_NAME"> Price:&nbsp;<TMPL_IF NAME="REPORT_PRICE"><TMPL_VAR NAME="REPORT_PRICE"><TMPL_ELSE>$1.00</TMPL_IF></b></td>
	   </TMPL_UNLESS>
  </tr>

    <tr>
      <td colspan="3" valign="top"><div id="lineVertRedDot"></div></td>
    </tr>

  <tr>
      <td colspan="3" width="100%" valign="top">
          <table border="0" cellpadding="0" cellspacing="0" width="100%">
<!--		  <TMPL_IF NAME="SHOW_NON_GOV_SOURCE_OPT">
			  <tr>
				<td width="1%"><input type="checkbox" name="CHK_NONGOVSOURCES" id="CHK_NONGOVSOURCES" value="1" CHECKED ></td>
				<td align="left" class="medblack"><label for="CHK_NONGOVSOURCES">&nbsp;Include Non-Governmental Sources.</label></td>
				<td width="2%"></td>
			   <td colspan="2"></td>
			  </tr>
		  </TMPL_IF>
-->		  <tr>
		    <td width="1%"><input type="checkbox" name="prompt" id="prompt" value="1" <TMPL_VAR NAME=prompt> ></td>
		    <td align="left" class="medblack"><label for="prompt">&nbsp;Prompt me for these options for each report.</label></td>
		    
		    <td width="2%"></td>

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
<br/><br/><br/>
<br/><br/><br/>
<br/><br/><br/>
<br/><br/>

<!-- end: $RCSfile: short_others_report_body.tpl,v $ -->
