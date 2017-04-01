<!-- begin inputs_fields/person_search.tpl -->
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
            <td class="inputlabel"><a class="inputlinklabel" href="javascript:void(0);" onClick="general_win('<TMPL_VAR NAME=HLPPATH>/person_help.html#streetaddress','HelpWindow',680,490,1,1,1,1,1,0);void(0);">Street Address</a></td>
            <td class="inputlabel">&nbsp;<b>City</b></td>
            <td class="unifont1">&nbsp;<a class="inputlinklabel" href="javascript:void(0);" onClick="show_state_popup('statelist')">State</a></td>
            <td class="inputlabel">&nbsp;<b>Zip</b></td>
            <td class="inputlabel">&nbsp;<b>County</b></td>
            <td class="inputlabel">&nbsp;<b>Radius</b></td>
          </tr>
          <tr>
            <td class="nsinputs"><input type="text" name="STREET_ADDRESS" tabindex="5" size="27" value="<TMPL_VAR NAME=STREET_ADDRESS>" maxlength=255 onBlur="this.value=this.value.toUpperCase()"></td>
            <td class="nsinputs"><input type="text" name="CITY" tabindex="6" size="15" value="<TMPL_VAR NAME=CITY>" maxlength=255 onBlur="this.value=this.value.toUpperCase()"></td>
            <td class="nsinputs"><input type="text" name="STATE" tabindex="7" size="3" maxlength="2" value="<TMPL_VAR NAME=STATE>" onBlur="this.value=this.value.toUpperCase()"></td>
            <td class="nsinputs"><input type="text" name="ZIP" tabindex="8" size="5" maxlength="5" value="<TMPL_VAR NAME=ZIP>"></td>
            <td class="nsinputs"><input type="text" name="COUNTY" tabindex="9" size="10" maxlength="255" value="<TMPL_VAR NAME=COUNTY>" onBlur="this.value=this.value.toUpperCase()"></td>
            <td class="nsinputs"><input type="text" name="RADIUS" size="2" tabindex="10" maxlength="2" value="<TMPL_VAR NAME=RADIUS>"></td>
          </tr>
        </table>
        </td>
      </tr>
      <tr>
        <td valign="top" align="left">
        <table border="0" cellpadding="2" cellspacing="0">
          <tr>
            <td class="inputlabel"><a class="inputlinklabel" href="javascript:void(0);" onClick="general_win('<TMPL_VAR NAME=HLPPATH>/person_help.html#phone','HelpWindow',680,490,1,1,1,1,1,0);void(0);">Phone</a></td>
            <td class="inputlabel"><a class="inputlinklabel" href="javascript:void(0);" onClick="general_win('<TMPL_VAR NAME=HLPPATH>/person_help.html#dob','HelpWindow',680,490,1,1,1,1,1,0);void(0);">DOB</a></td>
            <td colspan="3" class="inputlabel">&nbsp;<b>Age Range</b>&nbsp; </td>
          </tr>
          <tr>
            <td class="nsinputs"><input type="text" name="PHONE" tabindex="11" size="12" maxlength="14" value="<TMPL_VAR NAME=PHONE>"></td>
            <td class="nsinputs"><input type="text" name="DOB" size="14" tabindex="12" maxlength="10" value="<TMPL_VAR NAME=DOB>" autocomplete="off"></td>
            <td class="nsinputs"><input type="text" name="AGE_LOW" tabindex="13" size="3" maxlength="3" value="<TMPL_VAR NAME=AGE_LOW>"></td>
            <td nowrap class="inputlabel">&nbsp;-&nbsp;</td>
            <td class="nsinputs"><input type="text" name="AGE_HIGH" tabindex="14" size="3" maxlength="3" value="<TMPL_VAR NAME=AGE_HIGH>"></td>
          </tr>
        </table>
        </td>
      </tr>
      <tr>
        <td align="left" valign="top">
        <br>
        <table cellpadding="0" cellspacing="0" border="0">
          <tr>
            <td>&nbsp;&nbsp;<input type="checkbox" name="NAME_VARIANTS" tabindex="16" value="1" <TMPL_IF NAME="NAME_VARIANTS">CHECKED</TMPL_IF>></td>
            <td class="inputlabel" nowrap>&nbsp;<a class="inputlinklabel" href="javascript:void(0);" onClick="show_post_popup('LOGIN/SHOW_POPUP','NameVariantsWindow',369,270,0,0,0,0,0,0,'','searches/name_variants');"><b>Search for other possible name spellings</b></a>&nbsp;</td>
            <TMPL_UNLESS DISABLE_BANKRUPTCY>
            <td>&nbsp;&nbsp;<input type="checkbox" name="USE_BANKRUPTCIES" tabindex="17" value="1"<TMPL_IF NAME="USE_BANKRUPTCIES">CHECKED</TMPL_IF>></td>
            <td class="inputlabel" nowrap>&nbsp;<a class="inputlinklabel" href="javascript:void(0);" onClick="show_post_popup('LOGIN/SHOW_POPUP','IncludeBKWindow',309,270,0,0,0,0,0,0,'','searches/incl_bankruptcy');"><b>Include Bankruptcies<TMPL_UNLESS HIDE_PRICES> ($0.25)</TMPL_UNLESS></b></a>&nbsp;</td>
            </TMPL_UNLESS>
          </tr>
        </table>
        </td>
      </tr>
<!-- end inputs_fields/person_search.tpl -->
