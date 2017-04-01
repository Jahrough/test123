<!-- begin inputs_fields/intproflic_search.tpl -->
      <tr>
        <td valign="top" align="left">
        <span class="moreSearchesHeader" id="title_text"></span>
        <script>write_search_title('<TMPL_VAR NAME=PAGE_TITLE>');</script>
        </td>
      </tr>
      <tr>
        <td valign="top" align="left">
        <table border="0" cellpadding="2" cellspacing="0">
          <tr>
            <td>&nbsp;<b><label for="INT_FULL_NAME">Full Name</label></b></td>
          </tr>
          <tr>
            <td class="nsinputs"><input type="text" name="INT_FULL_NAME" id="INT_FULL_NAME" tabindex="1" size="40" value="<TMPL_VAR NAME=INT_FULL_NAME>" maxlength=255 onBlur="this.value=this.value.toUpperCase()"></td>
          </tr>
        </table>
        </td>
      </tr>
      <tr>
        <td valign="top" align="left">
        <table border="0" cellpadding="2" cellspacing="0">
          <tr>
            <td>&nbsp;<b><label for="FIRST_NAME">First Name</label></b></td>
            <td>&nbsp;<b><label for="MI">Middle Name</label></b></td>
          </tr>
          <tr>
            <td class="nsinputs"><input type="text" name="FIRST_NAME" id="FIRST_NAME" tabindex="2" size="15" value="<TMPL_VAR NAME=FIRST_NAME>" maxlength=255 onBlur="this.value=this.value.toUpperCase()"></td>
            <td class="nsinputs"><input type="text" name="MI" id="MI" tabindex="3" size="10" value="<TMPL_VAR NAME=MI>" maxlength=255 onBlur="this.value=this.value.toUpperCase()"></td>
          </tr>
        </table>
        </td>
      </tr>
      
      <tr>
        <td valign="top" align="left">
        <table border="0" cellpadding="2" cellspacing="0">
          <tr>
            <td>&nbsp;<b><label for="PATERNAL_LAST_NAME">Paternal Last Name</label></b></td>
            <td>&nbsp;<b><label for="MATERNAL_LAST_NAME">Maternal Last Name</label></b></td>
          </tr>
          <tr>
            <td class="nsinputs"><input type="text" name="PATERNAL_LAST_NAME" id="PATERNAL_LAST_NAME" tabindex="4" size="20" value="<TMPL_VAR NAME=PATERNAL_LAST_NAME>" maxlength=255 onBlur="this.value=this.value.toUpperCase()"></td>
            <td class="nsinputs"><input type="text" name="MATERNAL_LAST_NAME" id="MATERNAL_LAST_NAME" tabindex="5" size="20" value="<TMPL_VAR NAME=MATERNAL_LAST_NAME>" maxlength=255 onBlur="this.value=this.value.toUpperCase()"></td>
          </tr>
        </table>
        </td>
      </tr>
      <tr>
        <td valign="top" align="left">
        <table border="0" cellpadding="2" cellspacing="0" width="100%">
          <tr>
            <td align="left">&nbsp;<b><label for="LICENSE_TYPE">Certification Type</label></b></td>
          </tr>
          <tr>

            <td class="nsinputs" width="20%" >
            <select name="LICENSE_TYPE" tabindex="6">
              <TMPL_LOOP NAME=LICENSE_TYPE_LOOP>
              <option value="<TMPL_VAR NAME="VALUE">"<TMPL_IF NAME="SELECTED"> selected</TMPL_IF>><TMPL_VAR NAME="DESC"></option>
              </TMPL_LOOP>
            </select>
            </td>
          </tr>
        </table>
        </td>
      </tr>
      <tr>
        <td align="left" valign="top">
        <table cellpadding="0" cellspacing="0" border="0">
          <tr>
            <td>
              <input type="checkbox" name="PHONETICS" tabindex="7" value="1" id="phonetics_cb"
               onClick="either_strict_or_phonetics(this)"
               <TMPL_IF NAME="PHONETICS">checked="checked" </TMPL_IF>
               />
            </td>
            <td nowrap="nowrap">&nbsp;<label for="phonetics_cb">Include similar sounding names</label>&nbsp;</td>
            <td align="left"><a href="javascript:void(0);" onClick="phonetics_tip_int();"><img src="<TMPL_VAR NAME=IMGPATH>/ico_information.gif" alt="More Information" height="13" hspace="5" width="14"></a></td>
            <td>
              <input type="checkbox" name="STRICT" tabindex="8" value="1" id="strict_cb" 
	      onClick="either_strict_or_phonetics(this)"
              <TMPL_IF NAME="STRICT">checked="checked" </TMPL_IF>
              />
            </td>
            <td nowrap="nowrap">&nbsp;<label for="strict_cb">Strict Search</label>&nbsp;</td>
            <td align="left"><a href="javascript:void(0);" onClick="strict_tip();"><img src="<TMPL_VAR NAME=IMGPATH>/ico_information.gif" alt="More Information" height="13" hspace="5" width="14"></a></td>
          </tr>
        </table>
        </td>
      </tr>


      
<!-- end inputs_fields/intproflic_search.tpl -->
