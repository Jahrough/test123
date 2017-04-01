<!-- begin inputs_fields/ucc_search.tpl -->
      <tr>
        <td valign="top" align="left">
        <table border="0" cellpadding="2" cellspacing="0">
          <tr>
            <td class="inputlabel">&nbsp;<b>Company Name</b></td>
            <td class="inputlabel">&nbsp;<b>Last Name</b></td>
            <td class="inputlabel">&nbsp;<b>First Name</b></td>
            <td class="inputlabel">&nbsp;<b>Middle Name</b></td>
          </tr>
          <tr>
            <td class="nsinputs"><input type="text" name="COMPANY_NAME" tabindex="1" size="30" value="<TMPL_VAR NAME=COMPANY_NAME>" maxlength=255 onBlur="this.value=this.value.toUpperCase()"></td>
            <td class="nsinputs"><input type="text" name="LAST_NAME" tabindex="2" size="15" value="<TMPL_VAR NAME=LAST_NAME>" maxlength=255 onBlur="this.value=this.value.toUpperCase()"></td>
            <td class="nsinputs"><input type="text" name="FIRST_NAME" tabindex="3" size="15" value="<TMPL_VAR NAME=FIRST_NAME>" maxlength=255 onBlur="this.value=this.value.toUpperCase()"></td>
            <td class="nsinputs"><input type="text" name="MI" size="15" tabindex="4" maxlength="255" value="<TMPL_VAR NAME=MI>" onBlur="this.value=this.value.toUpperCase()"></td>
          </tr>
        </table>
        </td>
      </tr>
      <tr>
        <td align="left" valign="top">
        <table border="0" cellpadding="2" cellspacing="0">
          <tr>
            <td class="inputlabel">&nbsp;<b>Street Address</b></td>
            <td class="inputlabel">&nbsp;<b>City</b></td>
            <td class="unifont1">&nbsp;<a class="inputlinklabel" href="javascript:void(0);" onClick="show_state_popup('statelist')">State</a></td>
            <td class="inputlabel">&nbsp;<b>Zip</b></td>
	    <td class="inputlabel">&nbsp;<b>Original Filing Number</b></td>
          </tr>
          <tr>
            <td class="nsinputs"><input type="text" name="STREET_ADDRESS" tabindex="5" size="27" value="<TMPL_VAR NAME=STREET_ADDRESS>" maxlength=255 onBlur="this.value=this.value.toUpperCase()"></td>
            <td class="nsinputs"><input type="text" name="CITY" tabindex="6" size="15" value="<TMPL_VAR NAME=CITY>" maxlength=255 onBlur="this.value=this.value.toUpperCase()"></td>
            <td class="nsinputs"><input type="text" name="STATE" tabindex="7" size="3" maxlength="2" value="<TMPL_VAR NAME=STATE>" onBlur="this.value=this.value.toUpperCase()"></td>
            <td class="nsinputs"><input type="text" name="ZIP" tabindex="8" size="5" maxlength="5" value="<TMPL_VAR NAME=ZIP>"></td>
            <td class="nsinputs"><input type="text" name="FILING_NUMBER" tabindex="9" size="21" maxlength="25" value="<TMPL_VAR NAME=FILING_NUMBER>"></td>
          </tr>
        </table>
        </td>
      </tr>
	  <tr>
        <td align="left" valign="top">
        <table border="0" cellpadding="2" cellspacing="0">
          <tr>
            <td class="inputlabel">&nbsp;<b>SSN</b></td>
            <td class="inputlabel">&nbsp;<b>FEIN</b></td>
	    <td colspan="3" class="inputlabel">&nbsp;<b>Filing Date Range (mm/dd/yyyy)</b>&nbsp; </td>
            <td class="unifont1">&nbsp;<a class="inputlinklabel" href="javascript:void(0);" onClick="show_state_popup('statelist','FILING_JURISDICTION')">Filing Jurisdiction</a></td>
          </tr>
          <tr>
            <td class="nsinputs"><input type="text" name="SSN" tabindex="4" size="11" maxlength="11" value="<TMPL_VAR NAME=SSN>" autocomplete="off"></td>
            <td class="nsinputs"><input type="text" name="FEIN" tabindex="10" size="10" maxlength="10" value="<TMPL_VAR NAME=FEIN>"></td>
	    <td class="nsinputs"><input type="text" name="START_DATE" tabindex="11" size="14" maxlength="10" value="<TMPL_VAR NAME=START_DATE>"></td>
            <td nowrap class="inputlabel">&nbsp;-&nbsp;</td>
            <td class="nsinputs"><input type="text" name="END_DATE" tabindex="12" size="14" maxlength="10" value="<TMPL_VAR NAME=END_DATE>"></td>
            <td class="nsinputs"><input type="text" name="FILING_JURISDICTION" tabindex="13" size="3" maxlength="2" value="<TMPL_VAR NAME=FILING_JURISDICTION>" onBlur="this.value=this.value.toUpperCase()"></td>
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
            <td><input type="checkbox" name="PHONETICS" tabindex="14" value="1" <TMPL_IF NAME="PHONETICS">checked="checked" </TMPL_IF>onClick="either_strict_or_phonetics(this)"/></td>
            <td class="inputlabel" nowrap>&nbsp;&nbsp;&nbsp;&nbsp;<a class="inputlinklabel" href="javascript:void(0);" onClick="show_post_popup('LOGIN/SHOW_POPUP','StrictWindow',309,270,0,0,0,0,0,0,'','searches/strict');"><b>Strict Search:</b></a>&nbsp;</td>
            <td><input type="checkbox" name="STRICT" tabindex="15" value="1" <TMPL_IF NAME="STRICT">checked="checked" </TMPL_IF>onClick="either_strict_or_phonetics(this)"/></td>
          </tr>
        </table>
        </td>
      </tr>


<!-- end inputs_fields/ucc_search.tpl -->
