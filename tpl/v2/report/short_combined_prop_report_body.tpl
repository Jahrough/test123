<!-- Begin short_combined_prop_report_body.tpl-->

<table width="720" align="center" cellpadding="2" border="0" cellspacing="4" style="background-color:#F4F0DE; border: solid #ccc 1px;">
	  <tr>
	    <td align="left" colspan="3" class="medblack"><b>Please select one of the following reports:</b></td>
	  </tr>

	  <tr>
	    <td colspan="3" valign="top">
	    <table border="0" cellpadding="0" cellspacing="0" width="100%">
        <TMPL_UNLESS DISABLE_BOTH>
  		  <tr>
  			  <td width="5%"><input type="radio" name="TYPE" id="TYPE" value=""<TMPL_UNLESS ASSESSOR><TMPL_UNLESS DEED> checked</TMPL_UNLESS></TMPL_UNLESS>></td>
  			  <td class="medblack" width="95%" align="left">&nbsp;Property Report - Returns Property Assessment and Deeds in a combined report</td>
        </tr>
        </TMPL_UNLESS>
        <TMPL_UNLESS DISABLE_ASSESSMENT>
  		  <tr>
  			  <td width="5%"><input type="radio" name="TYPE" id="TYPE" value="ASSESSOR"<TMPL_IF DISABLE_DEED> checked<TMPL_ELSE><TMPL_IF ASSESSOR> checked</TMPL_IF></TMPL_IF>></td>
  			  <td class="medblack" width="95%" align="left">&nbsp;Property Assessment Report - Returns only Property Assessments</td>
        </tr>
        </TMPL_UNLESS>
        <TMPL_UNLESS DISABLE_DEED>
  		  <tr>
  			  <td width="5%"><input type="radio" name="TYPE" id="TYPE" value="DEED"<TMPL_IF DISABLE_ASSESSMENT> checked<TMPL_ELSE><TMPL_IF DEED> checked</TMPL_IF></TMPL_IF>></td>
  			  <td class="medblack" width="95%" align="left">&nbsp;Property Deeds Report - Returns only Property Deeds</td>
        </tr>
        </TMPL_UNLESS>
      </table>
	    </td>
	  </tr>





    <tr>
      <td colspan="3" valign="top"><div id="lineVertRedDot"></div></td>
    </tr>

    <tr>
      <td width="54%" valign="top">
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
<!-- End short_combined_prop_report_body.tpl-->
