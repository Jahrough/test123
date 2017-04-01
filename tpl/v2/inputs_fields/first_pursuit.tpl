<!-- begin inputs_fields/first_pursuit.tpl -->
      <INPUT type=hidden NAME="ACTION_REPORT" VALUE="<TMPL_VAR NAME=ACTION_MISC>">
        <tr>
          <td valign="top" align="left">
            <span class="moreSearchesHeader" id="title_text"></span>
            <script>write_search_title('LexisNexis&#174; FirstPursuit&#174; Report');</script>
         </td>
       </tr>
      <tr>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td valign="top" align="left">
        <table border="0" cellpadding="2" cellspacing="0">
          <tr>
            <td><label for="LAST_NAME">&nbsp;<b>Last Name</b></label></td>
            <td><label for="FIRST_NAME">&nbsp;<b>First Name</b></td>
            <td><label for="MI">&nbsp;<b>Middle Name</b></td>
            <td><label for="SSN">&nbsp;<b>SSN</b></td>
          </tr>
          <tr>
            <td class="nsinputs"><input type="text" name="LAST_NAME" tabindex="1" size="20" value="<TMPL_VAR NAME=LAST_NAME>" maxlength=255 onBlur="this.value=this.value.toUpperCase()"></td>
            <td class="nsinputs"><input type="text" name="FIRST_NAME" tabindex="2" size="20" value="<TMPL_VAR NAME=FIRST_NAME>" maxlength=255 onBlur="this.value=this.value.toUpperCase()"></td>
            <td class="nsinputs"><input type="text" name="MI" size="20" tabindex="3" maxlength="255" value="<TMPL_VAR NAME=MI>" onBlur="this.value=this.value.toUpperCase()"></td>
            <td class="nsinputs"><input type="text" name="SSN" tabindex="4" size="11" maxlength="11" value="<TMPL_VAR NAME=SSN>" autocomplete="off"></td>
          </tr>
        </table>
        </td>
      </tr>      
      <tr>
        <td valign="top" align="left">
        <table border="0" cellpadding="2" cellspacing="0">
          <tr>
            <td><label for="STREET_ADDRESS">&nbsp;<b>Street Address</b></td>
            <td><label for="CITY">&nbsp;<b>City</b></td>
            <td><label for="STATE">&nbsp;<a class="inputlinklabel" href="javascript:void(0);" onClick="show_state_popup('statelist')">State</a></td>
            <td><label for="ZIP">&nbsp;<b>Zip</b></td>
          </tr>
          <tr>
            <td class="nsinputs"><input type="text" name="STREET_ADDRESS" tabindex="5" size="27" value="<TMPL_VAR NAME=STREET_ADDRESS>" maxlength=50 onBlur="this.value=this.value.toUpperCase()"></td>
            <td class="nsinputs"><input type="text" name="CITY" tabindex="6" size="15" value="<TMPL_VAR NAME=CITY>" maxlength=255 onBlur="this.value=this.value.toUpperCase()"></td>
            <td class="nsinputs"><input type="text" name="STATE" tabindex="7" size="3" maxlength="2" value="<TMPL_VAR NAME=STATE>" onBlur="this.value=this.value.toUpperCase()"></td>
            <td class="nsinputs"><input type="text" name="ZIP" tabindex="8" size="5" maxlength="5" value="<TMPL_VAR NAME=ZIP>"></td>
          </tr>
        </table>
        </td>
      </tr>
      <tr>
        <td valign="top" align="left">
        <table border="0" cellpadding="2" cellspacing="0">
          <tr>
            <td><label for="DATA_TYPE">&nbsp;<b>Bureau Search: </b></td>
          </tr>
          <tr>
            <td class="nsinputs">
                <select tabindex="9" name="DATA_TYPE"> 
                     <TMPL_LOOP BUREAU_LOOP>
                        <option value="<TMPL_VAR NAME=B_VALUE>"><TMPL_VAR NAME=BURUEA></option>
                    </TMPL_LOOP>
                </select>                
            </td>
          </tr>
        </table>
        </td>
      </tr>
<!-- end inputs_fields/first_pursuit.tpl -->
