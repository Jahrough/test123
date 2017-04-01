<!-- begin inputs_fields/power_boolean_search.tpl -->
<input type="hidden" name="ACTION_REPORT" value="<TMPL_VAR ACTION_REPORT>">
<tr>
  <td valign="top" align="left">
    <span class="moreSearchesHeader" id="title_text"></span>
    <script>
      write_search_title('<TMPL_VAR PAGE_TITLE>');
    </script>
  </td>
</tr>
<tr>
  <td valign="top" align="left">
    <div id="tc_srch" style="display: <TMPL_IF NAME=USE_TC>block<TMPL_ELSE>none</TMPL_IF>;">
      <table cellpadding="2" cellspacing="0">
        <tbody>
          <tr>
            <td colspan="2"><strong>Terms &amp; Connectors</strong> - Modify your search using connectors: "car <strong>and</strong> boat", "car <strong>or</strong> auto" - <a style="cursor: help;" href="javascript:void(0);" onClick="general_win('<TMPL_VAR NAME=HLPPATH>/<TMPL_VAR NAME=APPLICATION_TYPE>/power_search_help.html#TermsConnector','HelpWindow',800,490,1,1,1,1,1,0);void(0);">More Examples</a></td>
          </tr>
        </tbody>
      </table>
      <table cellpadding="2" cellspacing="0">
        <tbody>
          <tr>
            <td>
              <label for= "name"><strong>Name</strong></label>
            </td>
            <td>
              <label for="ssn"><strong>SSN</strong></label>
            </td>
          </tr>
          <tr>
            <td class="nsinputs">
              <input type="text" name="NAME" id="NAME" tabindex="2" value="<TMPL_VAR NAME=NAME>"
               onBlur="this.value=this.value.toUpperCase()" size="40" maxlength="255"/>
            </td>
            <td class="nsinputs">
              <input type="text" name="SSN_B" id="SSN_B" tabindex="3" size="11" maxlength="255" value="<TMPL_VAR NAME=SSN_B>" autocomplete="off">
            </td>
          </tr>
        </tbody>
      </table>
      <table cellpadding="2" cellspacing="0">
        <tbody>
          <tr>
            <td>
              <label for= "company"><strong>Company</strong></label>
            </td>
          </tr>
          <tr>
            <td class="nsinputs">
              <input type="text" name="COMPANY" id="COMPANY" tabindex="4" size="40"
               value="<TMPL_VAR NAME=COMPANY>" maxlength="255" onBlur="this.value=this.value.toUpperCase()"/>
            </td>
          </tr>
        </tbody>
      </table>
      <table cellpadding="2" cellspacing="0">
        <tbody>
          <tr>
            <td>
              <label for= "street"><strong>Street</strong></label>
            </td>
          </tr>
          <tr>
            <td class="nsinputs">
              <input type="text" name="STREET_ADDRESS" id="STREET_ADDRESS" tabindex="5" size="40" maxlength="50"
               value="<TMPL_VAR NAME=STREET_ADDRESS>" onBlur="this.value=this.value.toUpperCase()"/>
            </td>
          </tr>
        </tbody>
      </table>
      <table cellpadding="2" cellspacing="0">
        <tbody>
          <tr>
            <td>
              <label for= "city"><strong>City</strong</label>
            </td>
            <td>
              <label for= "state"><strong>State</strong></label>
              <a href="javascript:void(0);" onClick="state_list('STATE');"><img src="<TMPL_VAR NAME=IMGPATH>/ico_information.gif" alt="More Information" height="13" hspace="5" width="14"></a>
            </td>
            <td>
              <label for="zip"><strong>Zip</strong></label>
            </td>
          </tr>
          <tr>
            <td class="nsinputs">
              <input name="CITY" id="CITY" tabindex="6" value="<TMPL_VAR NAME=CITY>"
               onBlur="this.value=this.value.toUpperCase()" size="20" maxlength="255" type="text"/>
            </td>
            <td class="nsinputs">
              <input name="STATE" id="STATE" tabindex="7" size="8" maxlength="255" value="<TMPL_VAR NAME=STATE>"
               onBlur="this.value=this.value.toUpperCase()" type="text"/>
            </td>
            <td class="nsinputs">
              <input  name="ZIP_B" id="ZIP_B" tabindex="8" size="10" maxlength="255" value="<TMPL_VAR NAME=ZIP_B>" type="text"/>
            </td>
          </tr>
        </tbody>
      </table>
      <table cellpadding="2" cellspacing="0">
        <tbody>
          <tr>
            <td>
              <label for= "phone"><strong>Phone</strong></label>
            </td>
            <td><a href="javascript:void(0);" onClick="displayDatePicker('DOB_B');"><b>DOB (mm/dd/yyyy)</b></a></td>
          </tr>
          <tr>
            <td class="nsinputs">
              <input name="PHONE_B" id="PHONE_B" tabindex="9" size="12" maxlength="255" value="<TMPL_VAR NAME=PHONE_B>" type="text"/>
            </td>
            <td class="nsinputs">
              <input onClick="displayDatePicker('DOB_B');" name="DOB_B" id="DOB_B" size="14" tabindex="10" maxlength="255" value="<TMPL_VAR NAME=DOB_B>" type= "text"/>
            </td>
          </tr>
        </tbody>
      </table>
      <table cellpadding="2" cellspacing="0">
        <tbody>
          <tr>
            <td>
              <label for= "AD_TERMS"><strong>Additional Terms</strong></label>
            </td>
          </tr>
          <tr>
            <td class="nsinputs">
              <textarea name="AD_TERMS" cols="45" rows="3" tabindex="11" id="AD_TERMS" maxlength="255"
               onBlur="this.value=this.value.toUpperCase()"><TMPL_VAR NAME=AD_TERMS></textarea>
            </td>
          </tr>
        </tbody>
      </table>
      <input type="hidden" name="USE_TC" id="USE_TC" value="<TMPL_VAR NAME=USE_TC>" />
    </div>
    <div id="quick_srch" style="display: <TMPL_IF NAME=USE_TC>none<TMPL_ELSE>block</TMPL_IF>;">
      <table cellpadding="2" cellspacing="0">
        <tbody>
          <tr>
            <td height="30">
              <strong>Quick Search</strong> - The LexisNexis  search engine will return the most relevant
              information on People, Property and Corporate Entities.
            </td>
          </tr>
        </tbody>
      </table>
      <table cellpadding="2" cellspacing="0">
        <tbody>
          <tr>
            <td>
              <label for="terms"><strong>Enter Terms</strong></label>
            </td>
          </tr>
          <tr>
            <td class="nsinputs">
              <input name="QK_TERMS" id="textarea" value="<TMPL_VAR NAME=QK_TERMS>" size="60" type="text"/>
            </td>
          </tr>
        </tbody>
      </table>
    </div>
  </td>
</tr>
<!-- end inputs_fields/power_boolean_search.tpl -->
