<!-- begin: $RCSfile: short_others_report_body.tpl,v $ -->

<table border="0" cellpadding="0" cellspacing="0" width="640">
  <tr height="30">
    <td height="30" class="unifont2pt">&nbsp;</td>
  </tr>
  <tr>
    <td width="640" valign="top">
	<table border="0" cellpadding="2" cellspacing="0" width="100%">
	  <TMPL_UNLESS NAME="HIDE_PRICES">
	    <tr>
		<td valign="top" align="left">
		    <table border="0" cellpadding="0" cellspacing="0">
			<tr>
			    <td class="myaccounttitle"><TMPL_VAR NAME="REPORT_NAME"> Price:&nbsp;<TMPL_IF NAME="REPORT_PRICE"><TMPL_VAR NAME="REPORT_PRICE"><TMPL_ELSE>$1.00</TMPL_IF></td>
			</tr>
		    </table>
		</td>
	    </tr>
	  </TMPL_UNLESS>
	  <tr>
		<td valign="top" align="left">
		    <table border="0" cellpadding="0" cellspacing="0">
			    <TMPL_IF NAME="SHOW_NON_GOV_SOURCE_OPT">
				  <tr>
					  <td width="49%" class="smallfont1" valign="top"><input type="checkbox" name="CHK_NONGOVSOURCES" id="prompt" value="1" CHECKED> Include Non-Governmental Sources.</td>
				      <td width="2%" nowrap class="unifont1">&nbsp;</td>
	     			  <td width="49%" class="smallfont1">&nbsp;</td>
				    </tr>
			    </TMPL_IF>
		    	<tr>
	    			<td width="49%" class="smallfont1" valign="top"><input type="checkbox" name="prompt" value="1" <TMPL_VAR NAME=prompt>> Prompt me for these options for each report.</td>
				    <td width="2%" nowrap class="unifont1">&nbsp;&nbsp;&nbsp;&nbsp;</td>
	     			<td width="49%" class="smallfont1">
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

	</table>
    </td>
  </tr>
</table>

<!-- end: $RCSfile: short_others_report_body.tpl,v $ -->
