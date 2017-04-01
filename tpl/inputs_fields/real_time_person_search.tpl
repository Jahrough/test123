<!-- begin $RCSfile: $ -->
      <input type="hidden" name="ACTION_REPORT" value="<TMPL_VAR NAME=ACTION_REPORT>">
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
            <td class="inputlabel">&nbsp;<b>Street Address</b></td>
            <td class="inputlabel">&nbsp;<b>City</b></td>
            <td class="unifont1">&nbsp;<a class="inputlinklabel" href="javascript:void(0);" onClick="show_state_popup('statelist')">State</a></td>
            <td class="inputlabel">&nbsp;<b>Zip</b></td>
         <!--   <td class="inputlabel">&nbsp;<b>Radius</b></td> -->
          </tr>
          <tr>
            <td class="nsinputs"><input type="text" name="STREET_ADDRESS" tabindex="5" size="27" value="<TMPL_VAR NAME=STREET_ADDRESS>" maxlength=255 onBlur="this.value=this.value.toUpperCase()"></td>
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
            <td class="inputlabel"><a class="inputlinklabel" href="javascript:void(0);" onClick="general_win('<TMPL_VAR NAME=HLPPATH>/person_help.html#dob','HelpWindow',680,490,1,1,1,1,1,0);void(0);">DOB</a></td>
            <td colspan="3" class="inputlabel">&nbsp;<b>Age Range</b>&nbsp; </td>
          </tr>
          <tr>
            <td class="nsinputs"><input type="text" name="DOB" size="14" tabindex="9" maxlength="10" value="<TMPL_VAR NAME=DOB>" autocomplete="off"></td>
            <td class="nsinputs"><input type="text" name="AGE_LOW" tabindex="10" size="3" maxlength="3" value="<TMPL_VAR NAME=AGE_LOW>"></td>
            <td nowrap class="inputlabel">&nbsp;-&nbsp;</td>
            <td class="nsinputs"><input type="text" name="AGE_HIGH" tabindex="11" size="3" maxlength="3" value="<TMPL_VAR NAME=AGE_HIGH>"></td>
          </tr>
        </table>
        </td>
      </tr>
      <tr>
        <td valign="top" align="left">
        <table border="0" cellpadding="2" cellspacing="0" width="85%">
          <tr>
            <td width="5%"><hr class="advline" align="left" width="100%" /></td>
            <td width="40%" class="inputlabel" align="center"><b>Additional Subject Information</b></td>
            <td width="55%"><hr class="advline" align="right" width="100%" /></td>
          </tr>
        </table>
        </td>
      </tr>
      <tr>
        <td valign="top" align="left">
        <table border="0" cellpadding="2" cellspacing="0">
          <tr>
            <td class="inputlabel">&nbsp;<b>Other Last Name</b></td>
            <td class="inputlabel">&nbsp;<b>Other City</b></td>
            <td class="unifont1">&nbsp;<a class="inputlinklabel" href="javascript:void(0);" onClick="show_state_popup('statelist','OTHER_STATE')">Other State</a></td>
            <td class="unifont1">&nbsp;<a class="inputlinklabel" href="javascript:void(0);" onClick="show_state_popup('statelist','OTHER_STATE2')">Other State</a></td>
          </tr>
          <tr>
            <td class="nsinputs"><input type="text" name="OTHER_LAST_NAME" tabindex="12" size="20" value="<TMPL_VAR NAME=OTHER_LAST_NAME>" maxlength=255 onBlur="this.value=this.value.toUpperCase()"></td>
            <td class="nsinputs"><input type="text" name="OTHER_CITY" tabindex="13" size="15" value="<TMPL_VAR NAME=OTHER_CITY>" maxlength=255 onBlur="this.value=this.value.toUpperCase()"></td>
            <td class="nsinputs"><input type="text" name="OTHER_STATE" tabindex="14" size="12" maxlength="2" value="<TMPL_VAR NAME=OTHER_STATE>" onBlur="this.value=this.value.toUpperCase()"></td>
            <td class="nsinputs"><input type="text" name="OTHER_STATE2" tabindex="15" size="12" maxlength="2" value="<TMPL_VAR NAME=OTHER_STATE2>" onBlur="this.value=this.value.toUpperCase()"></td>
          </tr>
        </table>
        </td>
      </tr>
      <tr>
        <td valign="top" align="left">
        <table border="0" cellpadding="2" cellspacing="0">
          <tr>
            <td class="inputlabel">&nbsp;<b>Relative First Name</b></td>
            <td class="inputlabel">&nbsp;<b>Other Relative First Name</b></td>
          </tr>
          <tr>
            <td class="nsinputs"><input type="text" name="RELATIVE_FIRST_NAME" tabindex="16" size="20" value="<TMPL_VAR NAME=RELATIVE_FIRST_NAME>" maxlength=255 onBlur="this.value=this.value.toUpperCase()"></td>
            <td class="nsinputs"><input type="text" name="RELATIVE_FIRST_NAME2" tabindex="17" size="20" value="<TMPL_VAR NAME=RELATIVE_FIRST_NAME2>" maxlength=255 onBlur="this.value=this.value.toUpperCase()"></td>
          </tr>
        </table>
        </td>
      </tr>
      <tr>
        <td align="left" valign="top">
        <br>
        <table cellpadding="0" cellspacing="0" border="0">
          <tr>
            <td class="inputlabel" nowrap>&nbsp;<a class="inputlinklabel" href="javascript:void(0);" onClick="show_post_popup('LOGIN/SHOW_POPUP','PhoneticWindow',309,270,0,0,0,0,0,0,'','searches/phonetic');"><b>Phonetic Search:</b></a>&nbsp;</td>
            <td><input type="checkbox" name="PHONETICS" tabindex="18" value="1" <TMPL_IF NAME="PHONETICS">checked="checked" </TMPL_IF>onClick="either_strict_or_phonetics(this)"></td>
          </tr>
        </table>
        </td>
      </tr>
<!-- end $RCSfile: $ -->
