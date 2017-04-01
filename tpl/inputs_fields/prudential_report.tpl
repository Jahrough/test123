<!-- begin inputs_fields/prudential_report.tpl -->
      <INPUT type=hidden NAME="ACTION_REPORT" VALUE="<TMPL_VAR NAME=ACTION>">
      <tr>
        <td valign="top" align="left">
        <table border="0" cellpadding="2" cellspacing="0" width="85%">
          <tr>
            <td width="5%"><hr class="advline" align="left" width="100%" /></td>
            <td width="40%" class="inputlabel" align="center"><b>Person Input Data</b></td>
            <td width="55%"><hr class="advline" align="right" width="100%" /></td>
          </tr>
        </table>
        </td>
      </tr>
      <tr>
        <td valign="top" align="left">
        <table border="0" cellpadding="2" cellspacing="0">
          <tr>
            <td class="inputlabel">&nbsp;<b>Name</b></td>
            <td class="inputlabel">&nbsp;<b>SSN</b></td>
            <td class="inputlabel"><a class="inputlinklabel" href="javascript:void(0);" onClick="general_win('<TMPL_VAR NAME=HLPPATH>/person_help.html#dob','HelpWindow',680,490,1,1,1,1,1,0);void(0);">DOB</a></td>
          </tr>
          <tr>
            <td class="nsinputs"><input type="text" name="NAME" tabindex="1" size="20" value="<TMPL_VAR NAME=NAME>" maxlength=128 onBlur="this.value=this.value.toUpperCase()"></td>
            <td class="nsinputs"><input type="text" name="SSN" tabindex="2" size="11" maxlength="11" value="<TMPL_VAR NAME=SSN>" autocomplete="off"></td>
            <td class="nsinputs"><input type="text" name="DOB" size="14" tabindex="3" maxlength="10" value="<TMPL_VAR NAME=DOB>" autocomplete="off"></td>
          </tr>
        </table>
        </td>
      </tr>
      <tr>
        <td valign="top" align="left">
        <table border="0" cellpadding="2" cellspacing="0">
          <tr>
            <td class="inputlabel">&nbsp;<b>Address</b></td>
            <td class="inputlabel">&nbsp;<b>City</b></td>
            <td class="unifont1">&nbsp;<a class="inputlinklabel" href="javascript:void(0);" onClick="show_state_popup('statelist','STATE')">State</a></td>
            <td class="inputlabel">&nbsp;<b>Zip</b></td>
          </tr>
          <tr>
            <td class="nsinputs"><input type="text" name="STREET_ADDRESS" tabindex="4" size="27" value="<TMPL_VAR NAME=STREET_ADDRESS>" maxlength=128 onBlur="this.value=this.value.toUpperCase()"></td>
            <td class="nsinputs"><input type="text" name="CITY" tabindex="5" size="20" value="<TMPL_VAR NAME=CITY>" maxlength=255 onBlur="this.value=this.value.toUpperCase()"></td>
            <td class="nsinputs"><input type="text" name="STATE" tabindex="6" size="6" maxlength="2" value="<TMPL_VAR NAME=STATE>" onBlur="this.value=this.value.toUpperCase()"></td>
            <td class="nsinputs"><input type="text" name="ZIP" tabindex="7" size="7" maxlength="5" value="<TMPL_VAR NAME=ZIP>"></td>
          </tr>
        </table>
        </td>
      </tr>
      <tr>
        <td valign="top" align="left">
        <table border="0" cellpadding="2" cellspacing="0">
          <tr>
            <td class="inputlabel">&nbsp;<b>Telephone</b></td>
          </tr>
          <tr>
            <td class="nsinputs"><input type="text" name="PHONE" tabindex="8" size="12" maxlength="14" value="<TMPL_VAR NAME=PHONE>"></td>
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
            <td width="40%" class="inputlabel" align="center"><b>Business Input Data</b></td>
            <td width="55%"><hr class="advline" align="right" width="100%" /></td>
          </tr>
        </table>
        </td>
      </tr>
      <tr>
        <td valign="top" align="left">
          <table border="0" cellpadding="2" cellspacing="0">
            <tr>
              <td class="inputlabel">&nbsp;<b>Company Name</b></td>
            </tr>
            <tr>
              <td class="nsinputs"><input type="text" name="BUS_NAME" tabindex="9" size="30" value="<TMPL_VAR NAME=BUS_NAME>" maxlength=255 onBlur="this.value=this.value.toUpperCase()"></td>
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
            <td class="unifont1">&nbsp;<a class="inputlinklabel" href="javascript:void(0);" onClick="show_state_popup('statelist','BUS_STATE')">State</a></td>
            <td class="inputlabel">&nbsp;<b>Zip</b></td>
          </tr>
          <tr>
            <td class="nsinputs"><input type="text" name="BUS_STREET_ADDRESS" tabindex="10" size="27" value="<TMPL_VAR NAME=BUS_STREET_ADDRESS>" maxlength=255 onBlur="this.value=this.value.toUpperCase()"></td>
            <td class="nsinputs"><input type="text" name="BUS_CITY" tabindex="11" size="15" value="<TMPL_VAR NAME=BUS_CITY>" maxlength=255 onBlur="this.value=this.value.toUpperCase()"></td>
            <td class="nsinputs"><input type="text" name="BUS_STATE" tabindex="12" size="3" maxlength="2" value="<TMPL_VAR NAME=BUS_STATE>" onBlur="this.value=this.value.toUpperCase()"></td>
            <td class="nsinputs"><input type="text" name="BUS_ZIP" tabindex="13" size="5" maxlength="5" value="<TMPL_VAR NAME=BUS_ZIP>"></td>
          </tr>
        </table>
        </td>
      </tr>
      <tr>
        <td valign="top" align="left">
        <table border="0" cellpadding="2" cellspacing="0">
          <tr>
            <td class="inputlabel">&nbsp;<b>Phone</b></td>
          </tr>
          <tr>
            <td class="nsinputs"><input type="text" name="BUS_PHONE" tabindex="14" size="12" maxlength="14" value="<TMPL_VAR NAME=BUS_PHONE>"></td>
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
            <td width="55%"><hr class="advline" align="right" width="100%" /></td>
          </tr>
        </table>
        </td>
      </tr>
      <tr>
        <td valign="top" align="left">
        <table border="0" cellpadding="2" cellspacing="0">
          <tr>
            <td class="inputlabel">&nbsp;<b>Combined Comp Rep Reference</b></td>
            <td class="inputlabel">&nbsp;<b>Archived Number</b></td>
          </tr>
          <tr>
            <td class="nsinputs"><input type="text" name="PRUD_REF" tabindex="15" size="27" value="<TMPL_VAR NAME=PRUD_REF>" maxlength=255 onBlur="this.value=this.value.toUpperCase()"></td>
            <td class="nsinputs"><input type="text" name="ARCHIVED_NUM" tabindex="16" size="15" value="<TMPL_VAR NAME=ARCHIVED_NUM>" maxlength=255 onBlur="this.value=this.value.toUpperCase()"></td>
          </tr>
        </table>
        </td>
      </tr>







<!-- end inputs_fields/prudential_report.tpl -->
