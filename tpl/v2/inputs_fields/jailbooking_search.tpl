<!-- begin inputs_fields/jailbooking_search.tpl -->

      <tr>
        <td valign="top" align="left">
        <span class="moreSearchesHeader" id="title_text"></span>
        <script>write_search_title('<TMPL_VAR NAME=PAGE_TITLE>');</script>
        </td>
      </tr>

	<script>
	function toggle_cr ( secName, expandName, collapseName ) {
	    if ($(secName).style.display == 'none') {
		$(secName).style.display = 'inline';
		$(expandName).style.display = 'none';
		$(collapseName).style.display = 'inline';
	    } else {
		$(secName).style.display = 'none';
		$(expandName).style.display = 'inline';
		$(collapseName).style.display = 'none';
	    }
	}
	</script>
	


      <tr>
        <td valign="top" align="left">
        <table border="0" cellpadding="2" cellspacing="0">
          <tr>
            <td>&nbsp;<b><label for="LAST_NAME">Last Name</label></b></td>
            <td>&nbsp;<b><label for="FIRST_NAME">First Name</label></b></td>
            <td>&nbsp;<b><label for="MI">Middle or Initial</label></b></td>
            <td>&nbsp;<b><label for="SSN">SSN</label></b></td>
          </tr>
          <tr>
            <td class="nsinputs"><input type="text" name="LAST_NAME" id="LAST_NAME" tabindex="1" size="15" value="<TMPL_VAR NAME=LAST_NAME>" maxlength=255 onBlur="this.value=this.value.toUpperCase()"></td>
            <td class="nsinputs"><input type="text" name="FIRST_NAME" id="FIRST_NAME" tabindex="2" size="15" value="<TMPL_VAR NAME=FIRST_NAME>" maxlength=255 onBlur="this.value=this.value.toUpperCase()"></td>
            <td class="nsinputs"><input type="text" name="MI" id="MI" tabindex="3" size="15" value="<TMPL_VAR NAME=MI>" maxlength=255 onBlur="this.value=this.value.toUpperCase()"></td>
            <td class="nsinputs"><input type="text" name="SSN" id="SSN" tabindex="4" size="11" maxlength="11" value="<TMPL_VAR NAME=SSN>" autocomplete="off"></td>
            <input type="hidden" name="SP_SEARCHPAGE" value="1">
          </tr>
        </table>
        </td>
      </tr>
      <tr>
        <td align="left" valign="top">
        <table cellpadding="2" cellspacing="0" border="0">
          <tr>            
            <td><input type="checkbox" name="PHONETICS"  id="PHONETICS" tabindex="5" value="1" <TMPL_IF NAME="PHONETICS">checked="checked" </TMPL_IF>onClick="either_strict_or_phonetics(this)"></td>
            <td nowrap><label for="PHONETICS">&nbsp;Include similar sounding names&nbsp;</label></td>
            <td align="left"><a href="javascript:void(0);" onClick="phonetics_tip();"><img src="<TMPL_VAR NAME=IMGPATH>/ico_information.gif" alt="More Information" height="13" hspace="5" width="14"></a></td>
	    <td><input type="checkbox" name="STRICT"  id="STRICT" tabindex="6" value="1" <TMPL_IF NAME="STRICT">checked="checked" </TMPL_IF>onClick="either_strict_or_phonetics(this)"></td>
            <td nowrap><label for="STRICT">&nbsp;Strict Search&nbsp;</label></td>
            <td align="left"><a href="javascript:void(0);" onClick="strict_tip();"><img src="<TMPL_VAR NAME=IMGPATH>/ico_information.gif" alt="More Information" height="13" hspace="5" width="14"></a></td>
          </tr>
        </table>
        </td>
      </tr>
      <tr>
        <td align="left" valign="top">
        <table cellpadding="2" cellspacing="0" border="0">

          <tr>
            <td>&nbsp;<b><label for="ALIAS_GANG">Gang Affiliation/Name</label></b></td>
          </tr>
          <tr>
            <td class="nsinputs"><input type="text" name="ALIAS_GANG" id="ALIAS_GANG" tabindex="7" size="20" value="<TMPL_VAR NAME=ALIAS_GANG>" maxlength=255 onBlur="this.value=this.value.toUpperCase()"></td>
          </tr>
        </table>
        </td>
      </tr>
      
      <tr>
        <td valign="top" align="left">
        <table border="0" cellpadding="2" cellspacing="0">
          <tr>
            <td>&nbsp;<b><label for="STREET_ADDRESS">Street Address</label></b></td>
            <td>&nbsp;<b><label for="CITY">City</label></b></td>
	    <td>&nbsp;<b><label for="STATE">State</label></b><a href="javascript:void(0);" onClick="state_list('STATE')"><img src="<TMPL_VAR NAME=IMGPATH>/ico_information.gif" alt="More Information" height="13" hspace="5" width="14"></a></td>
            

            <td>&nbsp;<b><label for="ZIP">Zip</label></b></td>
          </tr>
          <tr>
            <td class="nsinputs"><input type="text" name="STREET_ADDRESS" id="STREET_ADDRESS" tabindex="10" size="20" value="<TMPL_VAR NAME=STREET_ADDRESS>" maxlength=50 onBlur="this.value=this.value.toUpperCase()"></td>
            <td class="nsinputs"><input type="text" name="CITY" id="CITY" tabindex="11" size="15" value="<TMPL_VAR NAME=CITY>" maxlength=255 onBlur="this.value=this.value.toUpperCase()"></td>
            <td class="nsinputs"><input type="text" name="STATE" id="STATE" tabindex="12" size="3" maxlength="2" value="<TMPL_IF COURT_STATE><TMPL_VAR NAME=COURT_STATE><TMPL_ELSE><TMPL_VAR NAME=STATE></TMPL_IF>" onBlur="this.value=this.value.toUpperCase()"></td>
            <td class="nsinputs"><input type="text" name="ZIP" id="ZIP" tabindex="13" size="5" maxlength="5" value="<TMPL_VAR NAME=ZIP>"></td>
          </tr>
        </table>
        </td>
      </tr>


      <tr>
        <td valign="top" align="left">
        <table border="0" cellpadding="2" cellspacing="0">
          <tr>
            <td>&nbsp;<b><label for="PHONE">Phone Number</label></b></td>
            <td>&nbsp;<b><label for="DOB">DOB </label></b>
            <a href="javascript:void(0);" onClick="dob_tip();"><img src="<TMPL_VAR NAME=IMGPATH>/ico_information.gif" alt="More Information" height="13" hspace="5" width="14"></a>
            </td>

            <td colspan="3">&nbsp;<b><label for="AGE_RANGE">Age Range</label></b>&nbsp; </td>            
          </tr>
          <tr>
            <td class="nsinputs"><input type="text" name="PHONE" id="PHONE" tabindex="14" size="15" maxlength="255" value="<TMPL_VAR NAME=PHONE>"></td>
            <td class="nsinputs"><input type="text" name="DOB" size="14" id="DOB" tabindex="15" maxlength="10" value="<TMPL_VAR NAME=DOB>"></td>
            <td class="nsinputs"><input type="text" name="AGE_LOW" id="AGE_RANGE" tabindex="16" size="3" maxlength="3" value="<TMPL_VAR NAME=AGE_LOW>"></td>
            <td nowrap>&nbsp;-&nbsp;</td>
            <td class="nsinputs"><input type="text" name="AGE_HIGH" tabindex="17" size="3" maxlength="3" value="<TMPL_VAR NAME=AGE_HIGH>"></td>
          </tr>
       </table>
       </td>
      </tr>

      <tr>
        <td valign="top" align="left">
        <table border="0" cellpadding="2" cellspacing="0">
          <tr>
            <td>&nbsp;<b><label for="JURISDICTION">Jurisdiction</label></b></td>
          </tr>
          <tr>
            <td class="nsinputs">
            <select name="JURISDICTION" tabindex="23">
              <TMPL_LOOP NAME=JURISDICTION_LOOP>
              <option value="<TMPL_VAR NAME="VALUE">"<TMPL_IF NAME="SELECTED"> selected</TMPL_IF>><TMPL_VAR NAME="DESC"></option>
              </TMPL_LOOP>
            </select>
            </td>
          </tr>
       </table>
       </td>
      </tr>
	</div>
        </td>
      </tr>
<!-- end inputs_fields/jailbooking_search.tpl -->
