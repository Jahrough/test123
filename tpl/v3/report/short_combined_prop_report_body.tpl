<!-- Begin short_combined_prop_report_body.tpl-->
<div class="row-wrapper grey-border">
    <legend>Please select one of the following reports:</legend>
    <table class="options-table">
      <thead style="display: none">
        <tr>
          <th aria-label="Options" colspan="3">&nbsp;</th>
        </tr>
      </thead>
	  <tr>
	    <td colspan="3" valign="top">
	    <table border="0" cellpadding="0" cellspacing="0" width="100%">
          <thead style="display: none">
            <tr>
              <th aria-label="Options" colspan="2">&nbsp;</th>
            </tr>
          </thead>
      
        <TMPL_UNLESS DISABLE_BOTH>
  		  <tr>
  			  <td class="checkbox-td"><input type="radio" name="TYPE" id="TYPE_PR" value=""<TMPL_UNLESS ASSESSOR><TMPL_UNLESS DEED> checked</TMPL_UNLESS></TMPL_UNLESS>></td>
  			  <td class="checkbox-label-td">&nbsp;<label for="TYPE_PR">Property Report - Returns Property Assessment and Deeds in a combined report</label></td>
        </tr>
        </TMPL_UNLESS>
        <TMPL_UNLESS DISABLE_ASSESSMENT>
  		  <tr>
  			  <td class="checkbox-td"><input type="radio" name="TYPE" id="TYPE_ASMNT" value="ASSESSOR"<TMPL_IF DISABLE_DEED> checked<TMPL_ELSE><TMPL_IF ASSESSOR> checked</TMPL_IF></TMPL_IF>></td>
  			  <td class="checkbox-label-td">&nbsp;<label for="TYPE_ASMNT">Property Assessment Report - Returns only Property Assessments</label></td>
        </tr>
        </TMPL_UNLESS>
        <TMPL_UNLESS DISABLE_DEED>
  		  <tr>
  			  <td class="checkbox-td"><input type="radio" name="TYPE" id="TYPE_PDR" value="DEED"<TMPL_IF DISABLE_ASSESSMENT> checked<TMPL_ELSE><TMPL_IF DEED> checked</TMPL_IF></TMPL_IF>></td>
  			  <td class="checkbox-label-td">&nbsp;<label for="TYPE_PDR">Property Deeds Report - Returns only Property Deeds</label></td>
        </tr>
        </TMPL_UNLESS>
      </table>
	    </td>
	  </tr>

        <tr>
          <td colspan="3" valign="top">
            <div class="red-divide"></div>
          </td>
        </tr>

    <tr>
      <td width="54%" valign="top">
        <table border="0" cellpadding="0" cellspacing="0" width="100%">
            <thead style="display: none">
              <tr>
                <th aria-label="Options" colspan="2">&nbsp;</th>
              </tr>
            </thead>
		    <tr>
                   <TMPL_IF NAME="ENABLE_SAVE_REPORT">
                      <TMPL_IF NAME="REPORT_MANAGER_OFF">
			    <td class="checkbox-td" class="disabled_medblack"><input type="checkbox" name="save-report" id="save-report" value="1" <TMPL_VAR NAME="save-report"> readonly onChange="this.checked = !this.checked"></td>
			    <td align="left" class="disabled_medblack"><label for="save-report">&nbsp;(Saving Reports currently not available).</td>
		      <TMPL_ELSE>
			    <td class="checkbox-td"><input type="checkbox" name="save-report" id="save-report" value="1" <TMPL_VAR NAME="save-report"> ></td>
			    <td align="left"><label for="save-report">&nbsp;Save report for later access.</label></td>
		      </TMPL_IF>
		   <TMPL_ELSE>
		   <td colspan="2"></td>
		   </TMPL_IF>

		    </tr>
	      </table>
      </td>
    </tr>

</table>
</div>
<!-- End short_combined_prop_report_body.tpl-->
