<!-- begin inputs_fields/bus_instant_id_report.tpl -->
      <INPUT type=hidden NAME="ACTION_REPORT" VALUE="<TMPL_VAR NAME=ACTION_MISC>">
      <tr>
        <td class="inputlabel">&nbsp;<span class=unifont1boldred>*</span><b>&nbsp;Required Fields</b> - Note: For optimal results City, State, Phone, SSN and DOB should be populated</td>
      </tr>
      <tr>
        <td class="inputlabel">&nbsp;</td>
      </tr>
      <tr>
        <td valign="top" align="left">
        <table border="0" cellpadding="2" cellspacing="0" width="85%">
          <tr>
            <td width="5%"><hr class="advline" align="left" width="100%" /></td>
            <td width="40%" class="inputlabel" align="center"><b>InstantID Business Verification</b></td>
            <td width="55%"><hr class="advline" align="right" width="100%" /></td>
          </tr>
        </table>
        </td>
      </tr>
      <tr>
        <td valign="top" align="left">
          <table border="0" cellpadding="2" cellspacing="0">
            <tr>
              <td class="inputlabel">&nbsp;<b>Company Name</b>&nbsp;<span class=unifont1boldred>*</span></td>
              <td class="inputlabel">&nbsp;<b>DBA</b></td>
              <td class="inputlabel">&nbsp;<b>Tax ID</b></td>
            </tr>
            <tr>
              <td class="nsinputs"><input type="text" name="COMPANY_NAME" tabindex="1" size="30" value="<TMPL_VAR NAME=COMPANY_NAME>" maxlength=255 onBlur="this.value=this.value.toUpperCase()"></td>
              <td class="nsinputs"><input type="text" name="DBA" tabindex="2" size="20" value="<TMPL_VAR NAME=DBA>" maxlength=255 onBlur="this.value=this.value.toUpperCase()"></td>
              <td class="nsinputs"><input type="text" name="TAX_ID" tabindex="3" size="20" value="<TMPL_VAR NAME=TAX_ID>" maxlength=255 onBlur="this.value=this.value.toUpperCase()"></td>
            </tr>
          </table>
        </td>
      </tr>
      <tr>
        <td valign="top" align="left">
        <table border="0" cellpadding="2" cellspacing="0">
          <tr>
            <td class="inputlabel">&nbsp;<b>Street Address</b>&nbsp;<span class=unifont1boldred>*</span></td>
            <td class="inputlabel">&nbsp;<b>City</b></td>
            <td class="unifont1">&nbsp;<a class="inputlinklabel" href="javascript:void(0);" onClick="show_state_popup('statelist')">State</a></td>
            <td class="inputlabel">&nbsp;<b>Zip</b>&nbsp;<span class=unifont1boldred>*</span></td>
          </tr>
          <tr>
            <td class="nsinputs"><input type="text" name="STREET_ADDRESS" tabindex="4" size="27" value="<TMPL_VAR NAME=STREET_ADDRESS>" maxlength=255 onBlur="this.value=this.value.toUpperCase()"></td>
            <td class="nsinputs"><input type="text" name="CITY" tabindex="5" size="15" value="<TMPL_VAR NAME=CITY>" maxlength=255 onBlur="this.value=this.value.toUpperCase()"></td>
            <td class="nsinputs"><input type="text" name="STATE" tabindex="6" size="3" maxlength="2" value="<TMPL_VAR NAME=STATE>" onBlur="this.value=this.value.toUpperCase()"></td>
            <td class="nsinputs"><input type="text" name="ZIP" tabindex="7" size="5" maxlength="5" value="<TMPL_VAR NAME=ZIP>"></td>
          </tr>
        </table>
        </td>
      </tr>
      <tr>
        <td valign="top" align="left">
        <table border="0" cellpadding="2" cellspacing="0">
          <tr>
            <td class="inputlabel">&nbsp;<b>Work Phone</b></td>
            <td class="inputlabel">&nbsp;</td>
            <TMPL_UNLESS NAME=HIDE_FRAUD_DEFENDER_INPUT>
            <td class="inputlabel">&nbsp;</td>
            </TMPL_UNLESS>
          </tr>
          <tr>
            <td class="nsinputs"><input type="text" name="WORK_PHONE" tabindex="8" size="12" maxlength="14" value="<TMPL_VAR NAME=WORK_PHONE>"></td>
            <td class="inputlabel" align="left">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b>Include Other Watch Lists</b>&nbsp;<input type="checkbox" name="OTHER_WATCH_LISTS" tabindex="9" value="1"></td>
            <TMPL_UNLESS NAME=HIDE_FRAUD_DEFENDER_INPUT>
            <td class="inputlabel" align="left">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b>Fraud Defender</b>&nbsp;<input type="checkbox" name="FRAUD_DEFENDER" tabindex="10" value="1" <TMPL_IF DISABLE_FRAUD_DEFENDER_INPUT> DISABLED<TMPL_ELSE> checked</TMPL_IF>></td>
            </TMPL_UNLESS>
          </tr>
        </table>
        </td>
      </tr>
      <tr>
        <td class="inputlabel">&nbsp;</td>
      </tr>
      <tr>
        <td valign="top" align="left">
        <table border="0" cellpadding="2" cellspacing="0" width="85%">
          <tr>
            <td width="5%"><hr class="advline" align="left" width="100%" /></td>
            <td width="40%" class="inputlabel" align="center"><b>Authorized Representative</b></td>
            <td width="55%"><hr class="advline" align="right" width="100%" /></td>
          </tr>
        </table>
        </td>
      </tr>
      <tr>
        <td valign="top" align="left">
        <table border="0" cellpadding="2" cellspacing="0">
          <tr>
            <td class="inputlabel">&nbsp;<b>Last Name</b></td>
            <td class="inputlabel">&nbsp;<b>First Name</b></td>
            <td class="inputlabel">&nbsp;<b>Middle Name</b></td>
            <td class="inputlabel">&nbsp;<b>SSN</b></td>
          </tr>
          <tr>
            <td class="nsinputs"><input type="text" name="LAST_NAME" tabindex="20" size="20" value="<TMPL_VAR NAME=LAST_NAME>" maxlength=255 onBlur="this.value=this.value.toUpperCase()"></td>
            <td class="nsinputs"><input type="text" name="FIRST_NAME" tabindex="21" size="20" value="<TMPL_VAR NAME=FIRST_NAME>" maxlength=255 onBlur="this.value=this.value.toUpperCase()"></td>
            <td class="nsinputs"><input type="text" name="MI" size="20" tabindex="22" maxlength="255" value="<TMPL_VAR NAME=MI>" onBlur="this.value=this.value.toUpperCase()"></td>
            <td class="nsinputs"><input type="text" name="SSN" tabindex="23" size="11" maxlength="11" value="<TMPL_VAR NAME=SSN>" autocomplete="off"></td>
          </tr>
        </table>
        </td>
      </tr>
      <tr>
        <td valign="top" align="left">
        <table border="0" cellpadding="2" cellspacing="0">
          <tr>
            <td class="inputlabel">&nbsp;<b>Home Address</b></td>
            <td class="inputlabel">&nbsp;<b>City</b></td>
            <td class="unifont1">&nbsp;<a class="inputlinklabel" href="javascript:void(0);" onClick="show_state_popup('statelist','STATE2')">State</a></td>
            <td class="inputlabel">&nbsp;<b>Zip</b></td>
          </tr>
          <tr>
            <td class="nsinputs"><input type="text" name="STREET_ADDRESS2" tabindex="24" size="27" value="<TMPL_VAR NAME=STREET_ADDRESS2>" maxlength=255 onBlur="this.value=this.value.toUpperCase()"></td>
            <td class="nsinputs"><input type="text" name="CITY2" tabindex="25" size="15" value="<TMPL_VAR NAME=CITY2>" maxlength=255 onBlur="this.value=this.value.toUpperCase()"></td>
            <td class="nsinputs"><input type="text" name="STATE2" tabindex="26" size="3" maxlength="2" value="<TMPL_VAR NAME=STATE2>" onBlur="this.value=this.value.toUpperCase()"></td>
            <td class="nsinputs"><input type="text" name="ZIP2" tabindex="27" size="5" maxlength="5" value="<TMPL_VAR NAME=ZIP2>"></td>
          </tr>
        </table>
        </td>
      </tr>
      <tr>
        <td valign="top" align="left">
        <table border="0" cellpadding="2" cellspacing="0">
          <tr>
            <td class="inputlabel">&nbsp;<b>Home Phone</b></td>
            <td class="inputlabel">&nbsp;<b>DOB</b></td>
          </tr>
          <tr>
            <td class="nsinputs"><input type="text" name="PHONE" tabindex="28" size="12" maxlength="14" value="<TMPL_VAR NAME=PHONE>"></td>
            <td class="nsinputs"><input type="text" name="DOB" size="14" tabindex="29" maxlength="10" value="<TMPL_VAR NAME=DOB>" autocomplete="off"></td>
          </tr>
        </table>
        </td>
      </tr>
      <tr>
        <td valign="top" align="left">
        <table border="0" cellpadding="2" cellspacing="0">
          <tr>
            <td class="inputlabel">&nbsp;<b>Driver License #</b></td>
            <td class="unifont1">&nbsp;<a class="inputlinklabel" href="javascript:void(0);" onClick="show_state_popup('statelist','LICENSE_STATE')">State</a></td>
          </tr>
          <tr>
            <td class="nsinputs"><input type="text" name="LICENSE_NUMBER" tabindex="30" size="25" value="<TMPL_VAR NAME=LICENSE_NUMBER>" autocomplete="off" maxlength="30" onBlur="this.value=this.value.toUpperCase()"></td>
            <td class="nsinputs"><input type="text" name="LICENSE_STATE" tabindex="31" size="3" maxlength="2" value="<TMPL_VAR NAME=LICENSE_STATE>" onBlur="this.value=this.value.toUpperCase()"></td>
          </tr>
        </table>
        </td>
      </tr>
<!-- end inputs_fields/bus_instant_id_report.tpl -->
