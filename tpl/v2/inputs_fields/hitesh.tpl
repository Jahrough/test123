<!-- begin inputs_fields/email_search.tpl -->
      <tr>
        <td valign="top" align="center" style="height: 40px;">
            <b>For optimal results Name, Address, City, State, Zip, SSN or Date of Birth should be populated.</b>
        </td>
      </tr>
      <tr>
        <td valign="top" align="left">
        <table border="0" cellpadding="0" cellspacing="0">
          <tr>
            <td valign="top" align="left">
              <table border="0" cellpadding="2" cellspacing="0">
                <tr>
                  <td>&nbsp;<b>Last Name</b></td>
                  <td>&nbsp;<b>First Name</b></td>
                  <td>&nbsp;<b>Middle Name</b></td>
                  <td>&nbsp;<b>SSN</b></td>
                </tr>
                <tr>
                  <td class="nsinputs">
                    <input type="text" name="LAST_NAME" tabindex="1" size="20" maxlength="255" 
                     onBlur="this.value=this.value.toUpperCase()" value="<TMPL_VAR NAME=LAST_NAME>" />
                  </td>
                  <td class="nsinputs">
                    <input type="text" name="FIRST_NAME" tabindex="2" size="20" maxlength="255"
                     onBlur="this.value=this.value.toUpperCase()" value="<TMPL_VAR NAME=FIRST_NAME>" />
                  </td>
                  <td class="nsinputs">
                    <input type="text" name="MI" size="20" tabindex="3" maxlength="255"
                     onBlur="this.value=this.value.toUpperCase()" value="<TMPL_VAR NAME=MI>" />
                  </td>
                  <td class="nsinputs">
                    <input type="text" name="SSN" tabindex="4" size="11" maxlength="11" 
                    value="<TMPL_VAR NAME=SSN>" />
                  </td>
                </tr>
              </table>
            </td>
          </tr>
          <tr>
            <td valign="top" align="left">
              <table border="0" cellpadding="2" cellspacing="0">
                <tr>
                  <td>&nbsp;<b>Street Address</b></td>
                  <td>&nbsp;<b>City</b></td>
		  <td>&nbsp;<b>State</b><a href="javascript:void(0);" onClick="show_state_popup('statelist')"><img src="<TMPL_VAR NAME=IMGPATH>/ico_information.gif" alt="More Information" height="13" hspace="5" width="14"></a></td>
                  <td>&nbsp;<b>Zip</b></td>
                  <td><b>DOB</b><a href="javascript:void(0);" onClick="general_win('<TMPL_VAR NAME=HLPPATH>/email_address_help.html#dob','HelpWindow',680,490,1,1,1,1,1,0);void(0);"><img src="<TMPL_VAR NAME=IMGPATH>/ico_information.gif" alt="More Information" height="13" hspace="5" width="14"></a></td>
                </tr>
                <tr>
                  <td class="nsinputs">
                    <input type="text" name="STREET_ADDRESS" tabindex="5" size="27"  maxlength="50" 
                      onBlur="this.value=this.value.toUpperCase()" value="<TMPL_VAR NAME=STREET_ADDRESS>" />
                  </td>
                  <td class="nsinputs">
                    <input type="text" name="CITY" tabindex="6" size="15"  maxlength="255"
                      onBlur="this.value=this.value.toUpperCase()" value="<TMPL_VAR NAME=CITY>" />
                  </td>
                  <td class="nsinputs">
                    <input type="text" name="STATE" tabindex="7" size="3" maxlength="3" 
                      value="<TMPL_VAR NAME=STATE>" onBlur="this.value=this.value.toUpperCase()" />
                  </td>
                  <td class="nsinputs">
                    <input type="text" name="ZIP" tabindex="8" size="5" maxlength="5" 
                      value="<TMPL_VAR NAME=ZIP>">
                  </td>
                  <td class="nsinputs">
                    <input type="text" name="DOB" size="12" tabindex="9" maxlength="12" 
                      value="<TMPL_VAR NAME=DOB>" />
                  </td>
                </tr>
              </table>
            </td>
          </tr>
          <tr>
            <td> &nbsp; </td>
          </tr>
          <tr>
            <td valign="top" align="left" >
              <table border="0" cellpadding="2" cellspacing="0" width="85%">
                <tr>
                  <td width="10%"><hr class="advline" align="left" width="100%" /></td>
                  <td width="10%" align="center"><b>OR</b></td>
                  <td width="80%"><hr class="advline" align="right" width="100%" /></td>
                </tr>
              </table>
            </td>
          </tr>
          <tr>
            <td> &nbsp; </td>
          </tr>
          <tr>
            <td>
              <table border="0" cellpadding="2" cellspacing="0">
                <tr>
                  <td>&nbsp;<b>Email</b></td>
                </tr>
                <tr>
                  <td  class="nsinputs">
                    <input type="text" name="EMAIL" tabindex="10" size="75" maxlength="75"
                     onBlur="this.value=this.value.toUpperCase()" value="<TMPL_VAR NAME=EMAIL>" />
                  </td>
                </tr>
              </table>
            </td>
          </tr>
        </table>
        </td>
      </tr>
<!-- end inputs_fields/email_search.tpl -->
