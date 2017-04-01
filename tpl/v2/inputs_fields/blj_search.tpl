<!-- begin inputs_fields/blj_search.tpl (bankruptcies, liens & judgments) -->
<script type="text/javascript">
function set_include_options(clicked) {
    var myform = clicked.form;
    myform.INCLUDE_BANKRUPTCIES.value = myform.BLJ_INC_OPTION.options[myform.BLJ_INC_OPTION.selectedIndex].value.split("|")[0];
    myform.INCLUDE_LIENSJUDGMENTS.value = myform.BLJ_INC_OPTION.options[myform.BLJ_INC_OPTION.selectedIndex].value.split("|")[1];
}   
</script>

      <tr>
        <td valign="top" align="left">
        <span class="moreSearchesHeader" id="title_text"></span>
        <script>write_search_title('<TMPL_VAR NAME=PAGE_TITLE>');</script>
        </td>
      </tr>

      <TMPL_IF NAME="HYBRID_BLJ">
      <tr>
	<td valign="top" align="left">
	<table border="0" cellpadding="2" cellspacing="0">
	  <tr>
	    <td><b><label for="BLJ_INC_OPTION">Search Options</label></b></td><td><a href="javascript:void(0);" onClick="blj_tip();"><img src="<TMPL_VAR NAME=IMGPATH>/ico_information.gif" alt="More Information" height="13" hspace="5" width="14"></a></td>
	    <td class="nsinputs" align="left">
	      <input type="hidden" name="INCLUDE_BANKRUPTCIES" value="<TMPL_IF INCLUDE_BANKRUPTCIES>1<TMPL_ELSE><TMPL_UNLESS INCLUDE_LIENSJUDGMENTS>1<TMPL_ELSE>0</TMPL_UNLESS></TMPL_IF>" />
	      <input type="hidden" name="INCLUDE_LIENSJUDGMENTS" value="<TMPL_IF INCLUDE_LIENSJUDGMENTS>1<TMPL_ELSE><TMPL_UNLESS INCLUDE_BANKRUPTCIES>1<TMPL_ELSE>0</TMPL_UNLESS></TMPL_IF>" />
	      <select onChange="set_include_options(this)" name="BLJ_INC_OPTION" id="BLJ_INC_OPTION" tabindex="1">
		<TMPL_UNLESS NAME="DISABLE_BLJ">
		<option value="1|1" <TMPL_IF NAME="INCLUDE_BANKRUPTCIES"><TMPL_IF NAME="INCLUDE_LIENSJUDGMENTS">selected="selected"</TMPL_IF></TMPL_IF>>
		  Bankruptcies, Liens &amp; Judgments Search
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
            <td>&nbsp;<b><label for="SSN">SSN</label></b></td>
            <td>&nbsp;<b><label for="LAST_NAME">Last Name</label></b></td>
            <td>&nbsp;<b><label for="FIRST_NAME">First Name</label></b></td>
            <td>&nbsp;<b><label for="MI">Middle Name</label></b></td>
          </tr>
          <tr>
            <td class="nsinputs"><input type="text" name="SSN" id="SSN" tabindex="2" size="11" maxlength="11" value="<TMPL_VAR NAME=SSN>" autocomplete="off"></td>
            <td class="nsinputs"><input type="text" name="LAST_NAME" id="LAST_NAME" tabindex="3" size="15" value="<TMPL_VAR NAME=LAST_NAME>" maxlength=255 onBlur="this.value=this.value.toUpperCase()"></td>
            <td class="nsinputs"><input type="text" name="FIRST_NAME" id="FIRST_NAME" tabindex="4" size="15" value="<TMPL_VAR NAME=FIRST_NAME>" maxlength=255 onBlur="this.value=this.value.toUpperCase()"></td>
            <td class="nsinputs"><input type="text" name="MI" id="MI" tabindex="5" size="10" value="<TMPL_VAR NAME=MI>" maxlength=255 onBlur="this.value=this.value.toUpperCase()"></td>
          </tr>
        </table>
        </td>
      </tr>
      <tr>
        <td valign="top" align="left">
        <table border="0" cellpadding="2" cellspacing="0">
          <tr>
            <td>&nbsp;<b><label for="COMPANY_NAME">Company Name</label></b></td>
            <td>&nbsp;<b><label for="STREET_ADDRESS">Street Address</label></b></td>
          </tr>
          <tr>
            <td class="nsinputs"><input type="text" name="COMPANY_NAME" id="COMPANY_NAME" tabindex="6" size="20" value="<TMPL_VAR NAME=COMPANY_NAME>" maxlength="255" onBlur="this.value=this.value.toUpperCase()"></td>
            <td class="nsinputs"><input type="text" name="STREET_ADDRESS" id="STREET_ADDRESS" tabindex="7" size="25" value="<TMPL_VAR NAME=STREET_ADDRESS>" maxlength=50 onBlur="this.value=this.value.toUpperCase()"></td>
          </tr>
        </table>
        </td>
      </tr>
      <tr>
        <td valign="top" align="left">
        <table border="0" cellpadding="2" cellspacing="0">
          <tr>
            <td>&nbsp;<b><label for="CITY">City</label></b></td>
	    <td>&nbsp;<b><label for="STATE">State</label></b><a href="javascript:void(0);" onClick="state_list('STATE');"><img src="<TMPL_VAR NAME=IMGPATH>/ico_information.gif" alt="More Information" height="13" hspace="5" width="14"></a></td>
            <td>&nbsp;<b><label for="ZIP">Zip</label></b></td>
            <td>&nbsp;<b><label for="COUNTY">County</label></b></td>
          </tr>
          <tr>
            <td class="nsinputs"><input type="text" name="CITY" id="CITY" tabindex="8" size="15" value="<TMPL_VAR NAME=CITY>" maxlength=255 onBlur="this.value=this.value.toUpperCase()"></td>
            <td class="nsinputs"><input type="text" name="STATE" id="STATE" tabindex="9" size="3" maxlength="2" value="<TMPL_IF COURT_STATE><TMPL_VAR NAME=COURT_STATE><TMPL_ELSE><TMPL_VAR NAME=STATE></TMPL_IF>" onBlur="this.value=this.value.toUpperCase()"></td>
            <td class="nsinputs"><input type="text" name="ZIP" id="ZIP" tabindex="10" size="5" maxlength="5" value="<TMPL_VAR NAME=ZIP>"></td>
            <td class="nsinputs"><input type="text" name="COUNTY" id="COUNT" tabindex="11" size="15" value="<TMPL_VAR NAME=COUNTY>" maxlength=255 onBlur="this.value=this.value.toUpperCase()"></td>
          </tr>
        </table>
        </td>
      </tr>
      <tr>
        <td valign="top" align="left">
        <table border="0" cellpadding="2" cellspacing="0">
          <tr>
            <td>&nbsp;<b><label for="FEIN">FEIN</label></b></td>
            <td>&nbsp;<b><label for="CASE_NUMBER">Case/Filing Number</label></b></td>
            <TMPL_IF NAME="SHOW_LINKID">
                <td nowrap>&nbsp;<b><label for="UNIQUEID">LexID<span class="sup">SM</span></label></b></td>
                <td><a href="javascript:void(0);" onClick="lexid_tip();"><img src="<TMPL_VAR NAME=IMGPATH>/ico_information.gif" alt="More Information" height="13" hspace="5" width="14"></a></td>
	    </TMPL_IF>
          </tr>
          <tr>
            <td class="nsinputs"><input type="text" name="FEIN" id="FEIN" tabindex="12" size="10" maxlength="10" value="<TMPL_VAR NAME=FEIN>"></td>
            <td class="nsinputs"><input type="text" name="CASE_NUMBER" id="CASE_NUMBER" tabindex="13" size="20" maxlength="50" value="<TMPL_VAR NAME=CASE_NUMBER>"></td>
            <TMPL_IF NAME="SHOW_LINKID"><td colspan="2" class="nsinputs"><input id="UNIQUEID" type="text" name="UNIQUEID" tabindex="14" size="11" maxlength="25" value="<TMPL_VAR NAME=UNIQUEID>"></td></TMPL_IF>
          </tr>
        </table>
        </td>
      </tr>

      <tr>
        <td align="left" valign="top">
        <table cellpadding="0" cellspacing="0" border="0">
          <tr>
            <td>
              <input type="checkbox" name="PHONETICS" tabindex="15" value="1" id="phonetics_cb"
               checked="checked" onClick="either_strict_or_phonetics(this)"/>
            </td>
            <td nowrap="nowrap">&nbsp;<label for="phonetics_cb">Include similar sounding names</label>&nbsp;</td>
            <td align="left"><a href="javascript:void(0);" onClick="phonetics_tip();"><img src="<TMPL_VAR NAME=IMGPATH>/ico_information.gif" alt="More Information" height="13" hspace="5" width="14"></a></td>
            <td>
              &nbsp; &nbsp; &nbsp; &nbsp;
            </td>
            <td>
              <input type="checkbox" name="STRICT" tabindex="16" value="1" id="strict_cb" 
	      onClick="either_strict_or_phonetics(this)"/>
            </td>
            <td nowrap="nowrap">&nbsp;<label for="strict_cb">Strict Search</label>&nbsp;</td>
            <td align="left"><a href="javascript:void(0);" onClick="strict_tip();"><img src="<TMPL_VAR NAME=IMGPATH>/ico_information.gif" alt="More Information" height="13" hspace="5" width="14"></a></td>
          </tr>
        </table>
        </td>
      </tr>
<!-- end inputs_fields/blj_search.tpl (bankruptcies, liens & judgments) -->
