<!-- begin inputs_fields/blj_search.tpl (bankruptcies, liens & judgments) -->
<script type="text/javascript">
function set_include_options(clicked) {
    var myform = clicked.form;
    myform.INCLUDE_BANKRUPTCIES.value = myform.BLJ_INC_OPTION.options[myform.BLJ_INC_OPTION.selectedIndex].value.split("|")[0];
    myform.INCLUDE_LIENSJUDGMENTS.value = myform.BLJ_INC_OPTION.options[myform.BLJ_INC_OPTION.selectedIndex].value.split("|")[1];
}   
</script>

      <TMPL_IF NAME="HYBRID_BLJ">
      <tr>
	<td valign="top" align="left">
	<table border="0" cellpadding="2" cellspacing="0">
	  <tr>
            <td class="inputlabel" width="100" nowrap="nowrap">&nbsp;<a class="inputlinklabel" href="javascript:void(0);" onClick="show_post_popup('LOGIN/SHOW_POPUP','BljOptionsWindow',309,299,0,0,0,0,0,0,'','searches/blj_search_options');"><b>Search Options:</b></a>&nbsp;</td>
	    <td class="nsinputs" align="left">
	      <input type="hidden" name="INCLUDE_BANKRUPTCIES" value="<TMPL_IF INCLUDE_BANKRUPTCIES>1<TMPL_ELSE><TMPL_UNLESS INCLUDE_LIENSJUDGMENTS>1<TMPL_ELSE>0</TMPL_UNLESS></TMPL_IF>" />
	      <input type="hidden" name="INCLUDE_LIENSJUDGMENTS" value="<TMPL_IF INCLUDE_LIENSJUDGMENTS>1<TMPL_ELSE><TMPL_UNLESS INCLUDE_BANKRUPTCIES>1<TMPL_ELSE>0</TMPL_UNLESS></TMPL_IF>" />
	      <select onChange="set_include_options(this)" name="BLJ_INC_OPTION" id="BLJ_INC_OPTION" tabindex="1">
		<TMPL_UNLESS NAME="DISABLE_BLJ">
		<option value="1|1" <TMPL_IF NAME="INCLUDE_BANKRUPTCIES"><TMPL_IF NAME="INCLUDE_LIENSJUDGMENTS">selected="selected"</TMPL_IF></TMPL_IF>>
		  Bankruptcy, Liens &amp; Judgments Search
		</option>
		</TMPL_UNLESS>
		<TMPL_UNLESS NAME="DISABLE_BANKRUPTCY">
		<option value="1|0" <TMPL_IF NAME="INCLUDE_BANKRUPTCIES"><TMPL_UNLESS NAME="INCLUDE_LIENSJUDGMENTS">selected="selected"</TMPL_UNLESS></TMPL_IF>>Bankruptcy Search
		</option>
		</TMPL_UNLESS>
		<TMPL_UNLESS NAME="DISABLE_LIEN">
		<option value="0|1" <TMPL_UNLESS NAME="INCLUDE_BANKRUPTCIES"><TMPL_IF NAME="INCLUDE_LIENSJUDGMENTS">selected="selected"</TMPL_IF></TMPL_UNLESS>>Liens &amp; Judgments Search
		</option>
		</TMPL_UNLESS>
		<TMPL_IF NAME="DISABLE_BANKRUPTCY">
		    <TMPL_IF NAME="DISABLE_LIEN">
			<TMPL_IF NAME="DISABLE_BLJ">
			<option selected="selected">No Search Available</option>
			</TMPL_IF>
		    </TMPL_IF>
		</TMPL_IF>
	      </select>
	    </td>
	  </tr>
	</table>
        </td>
      </tr>
      </TMPL_IF>

      <tr>
        <td valign="top" align="left">
        <table border="0" cellpadding="2" cellspacing="0">
          <tr>
            <td class="inputlabel">&nbsp;<b>Last Name</b></td>
            <td class="inputlabel">&nbsp;<b>First Name</b></td>
            <td class="inputlabel">&nbsp;<b>Middle Name</b></td>
            <td class="inputlabel">&nbsp;<b>SSN</b></td>
            <td class="inputlabel">&nbsp;<b>Company Name</b></td>
          </tr>
          <tr>
            <td class="nsinputs"><input type="text" name="LAST_NAME" tabindex="2" size="15" value="<TMPL_VAR NAME=LAST_NAME>" maxlength=255 onBlur="this.value=this.value.toUpperCase()"></td>
            <td class="nsinputs"><input type="text" name="FIRST_NAME" tabindex="3" size="15" value="<TMPL_VAR NAME=FIRST_NAME>" maxlength=255 onBlur="this.value=this.value.toUpperCase()"></td>
            <td class="nsinputs"><input type="text" name="MI" tabindex="4" size="10" value="<TMPL_VAR NAME=MI>" maxlength=255 onBlur="this.value=this.value.toUpperCase()"></td>
            <td class="nsinputs"><input type="text" name="SSN" tabindex="5" size="11" maxlength="11" value="<TMPL_VAR NAME=SSN>" autocomplete="off"></td>
            <td class="nsinputs"><input type="text" name="COMPANY_NAME" tabindex="6" size="20" value="<TMPL_VAR NAME=COMPANY_NAME>" maxlength=255 onBlur="this.value=this.value.toUpperCase()"></td>
          </tr>
        </table>
        </td>
      </tr>
      <tr>
        <td valign="top" align="left">
        <table border="0" cellpadding="2" cellspacing="0">
          <tr>
            <td class="inputlabel">&nbsp;<b>Street Address</b></td>
            <td class="inputlabel">&nbsp;<b>City</b></td>
            <td class="unifont1">&nbsp;<a class="inputlinklabel" href="javascript:void(0);" onClick="show_state_popup('statelist')">State</a></td>
            <td class="inputlabel">&nbsp;<b>Zip</b></td>
	    <td class="inputlabel">&nbsp;<b>County</b></td>
          </tr>
          <tr>
            <td class="nsinputs"><input type="text" name="STREET_ADDRESS" tabindex="7" size="27" value="<TMPL_VAR NAME=STREET_ADDRESS>" maxlength=255 onBlur="this.value=this.value.toUpperCase()"></td>
            <td class="nsinputs"><input type="text" name="CITY" tabindex="8" size="15" value="<TMPL_VAR NAME=CITY>" maxlength=255 onBlur="this.value=this.value.toUpperCase()"></td>
            <td class="nsinputs"><input type="text" name="STATE" tabindex="9" size="3" maxlength="2" value="<TMPL_IF COURT_STATE><TMPL_VAR NAME=COURT_STATE><TMPL_ELSE><TMPL_VAR NAME=STATE></TMPL_IF>" onBlur="this.value=this.value.toUpperCase()"></td>
            <td class="nsinputs"><input type="text" name="ZIP" tabindex="10" size="5" maxlength="5" value="<TMPL_VAR NAME=ZIP>"></td>
            <td class="nsinputs"><input type="text" name="COUNTY" tabindex="11" size="15" maxlength="255" value="<TMPL_VAR NAME=COUNTY>"></td>
          </tr>
        </table>
        </td>
      </tr>
      <tr>
        <td valign="top" align="left">
        <table border="0" cellpadding="2" cellspacing="0">
          <tr>
            <td class="inputlabel">&nbsp;<b>FEIN</b></td>
            <td class="inputlabel">&nbsp;<b>Case/Filing Number</b></td>
          </tr>
          <tr>
            <td class="nsinputs"><input type="text" name="FEIN" tabindex="12" size="10" maxlength="10" value="<TMPL_VAR NAME=FEIN>"></td>
            <td class="nsinputs"><input type="text" name="CASE_NUMBER" tabindex="13" size="20" maxlength="50" value="<TMPL_VAR NAME=CASE_NUMBER>"></td>
          </tr>
        </table>
        </td>
      </tr>

      <tr>
        <td align="left" valign="top">
        <br>
        <table cellpadding="0" cellspacing="0" border="0">
          <tr>
            <td class="inputlabel" nowrap="nowrap">&nbsp;<a class="inputlinklabel" href="javascript:void(0);" onClick="show_post_popup('LOGIN/SHOW_POPUP','PhoneticWindow',309,270,0,0,0,0,0,0,'','searches/phonetic');"><b>Phonetic Search:</b></a>&nbsp;</td>
            <td><input type="checkbox" name="PHONETICS" tabindex="15" value="1" checked="checked" onClick="either_strict_or_phonetics(this)"></td>
            <td class="inputlabel" nowrap="nowrap">&nbsp;&nbsp;&nbsp;&nbsp;<a class="inputlinklabel" href="javascript:void(0);" onClick="show_post_popup('LOGIN/SHOW_POPUP','StrictWindow',309,270,0,0,0,0,0,0,'','searches/strict');"><b>Strict Search:</b></a>&nbsp;</td>
            <td><input type="checkbox" name="STRICT" tabindex="16" value="1" onClick="either_strict_or_phonetics(this)"></td>
          </tr>
        </table>
        </td>
      </tr>
<!-- end inputs_fields/blj_search.tpl (bankruptcies, liens & judgments) -->
