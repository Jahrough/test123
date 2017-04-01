<!-- begin inputs_fields/passport_validation.tpl -->
    <input type="hidden" name="ACTION_REPORT" value="<TMPL_VAR NAME=ACTION_REPORT>">
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
            <td>&nbsp;<b><label for="MACHINE_READONE"><span class="unifont1boldred"><b>*</b>&nbsp;&nbsp;</span>Passport (upper line)</label></b></td>
          </tr>
          <tr>
            <td class="nsinputs"><input type="text" name="MACHINE_READONE" id="MACHINE_READONE" tabindex="1"  maxlength="44" size="64" value="" onBlur="this.value=this.value.toUpperCase()"></td>
          </tr>
        </table>
        </td>
      </tr>
      <tr>
        <td valign="top" align="left">
        <table border="0" cellpadding="2" cellspacing="0">
          <tr>
            <td>&nbsp;<b><label for="MACHINE_READTWO"><span class="unifont1boldred"><b>*</b>&nbsp;&nbsp;</span>Passport (lower line)</label></b></td>
          </tr>
          <tr>
            <td class="nsinputs"><input type="text" name="MACHINE_READTWO" id="MACHINE_READTWO" tabindex="2"  maxlength="44" size="64" value="" onBlur="this.value=this.value.toUpperCase()"></td>
          </tr>
        </table>
        </td>
      </tr>
      <tr>
        <td valign="top" align="left">
          <table border="0" cellpadding="2" cellspacing="0">
          <tr>
            <td align="left"><label for="DOB"><span class="unifont1boldred"><b>*</b></span>&nbsp;&nbsp;<b>DOB</b>&nbsp;(MM/DD/YYYY)</label></td>
            <td align="left">&nbsp;</td>
            <td align="left"><label for="GENDER"><span class="unifont1boldred"><b>*</b></span>&nbsp;<b>Gender</b></label></td>
          </tr>
          <tr>
            <td align="left" class="nsinputs">
              <input type="text" name="DOB" id="DOB" size="16" tabindex="3" maxlength="10" value="<TMPL_VAR NAME=DOB>">
            </td>
            <td align="left">&nbsp;</td>
            <td align="left" class="nsinputs">
              <select name="GENDER" id="GENDER" size="1" tabindex="4">
                <option value="X">Select Gender</option>
                <option value="M">Male</option>
                <option value="F">Female</option>
                <option value="<">Not Specified</option>
              </select>
            </td>
          </tr>
          </table>
        </td>
      </tr>
      <tr>
        <td>
        <table border="0" cellpadding="2" cellspacing="0">
          <tr>
            <td nowrap valign="top">&nbsp;<span class=unifont1boldred><b>*</b>&nbsp;</span></td>
            <td><b>Required Fields</b></td>
          </tr>
        </table>
        </td>
      </tr>
<!-- end inputs_fields/passport_validation.tpl -->


