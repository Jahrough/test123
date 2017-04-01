<!-- begin inputs_fields/mvr_report_search.tpl -->
      <script src="<TMPL_VAR NAME='JSPATH'>/overlibmws_iframe.js"></script>
      <INPUT type=hidden NAME="ACTION_REPORT" VALUE="<TMPL_VAR NAME=ACTION_REPORT>">
      <TMPL_IF NAME=MVR_REQUIREMENT_1><INPUT type=hidden NAME="MVR_REQUIREMENT_1" VALUE="<TMPL_VAR NAME=MVR_REQUIREMENT_1>"></TMPL_IF>
      <TMPL_IF NAME=MVR_REQUIREMENT_2><INPUT type=hidden NAME="MVR_REQUIREMENT_2" VALUE="<TMPL_VAR NAME=MVR_REQUIREMENT_2>"></TMPL_IF>
      <TMPL_IF NAME=MVR_REQUIREMENT_3><INPUT type=hidden NAME="MVR_REQUIREMENT_3" VALUE="<TMPL_VAR NAME=MVR_REQUIREMENT_3>"></TMPL_IF>
      <TMPL_IF NAME=MVR_REQUIREMENT_4><INPUT type=hidden NAME="MVR_REQUIREMENT_4" VALUE="<TMPL_VAR NAME=MVR_REQUIREMENT_4>"></TMPL_IF>
      <TMPL_IF NAME=MVR_REQUIREMENT_5><INPUT type=hidden NAME="MVR_REQUIREMENT_5" VALUE="<TMPL_VAR NAME=MVR_REQUIREMENT_5>"></TMPL_IF>
      <TMPL_IF NAME=MVR_REQUIREMENT_7><INPUT type=hidden NAME="MVR_REQUIREMENT_7" VALUE="<TMPL_VAR NAME=MVR_REQUIREMENT_7>"></TMPL_IF>
      <INPUT type=hidden NAME="MVR_STATE_ABBREVIATION" VALUE="<TMPL_VAR NAME=MVR_STATE_ABBREVIATION>">

      <tr>
        <td class="inputlabel">&nbsp;*<b>&nbsp;Required Fields</b></td>
      </tr>
      <tr>
        <td class="inputlabel">&nbsp;</td>
      </tr>
      <tr>
        <td valign="top" align="left">
        <table border="0" cellpadding="2" cellspacing="0">
          <tr>
            <td class="inputlabel">&nbsp;<b>Last Name</b><TMPL_IF NAME="MVR_REQUIREMENT_3">&nbsp;*</TMPL_IF></td>
            <td class="inputlabel">&nbsp;<b>First Name</b><TMPL_IF NAME="MVR_REQUIREMENT_2">&nbsp;*</TMPL_IF></td>
            <td class="inputlabel">&nbsp;<b>Middle Name/Initial</b><TMPL_IF NAME="MVR_REQUIREMENT_7">&nbsp;*</TMPL_IF></td>
          </tr>
          <tr>
            <td class="nsinputs"><input type="text" name="LAST_NAME" tabindex="2" size="15" value="<TMPL_VAR NAME=LAST_NAME>" maxlength=255 onBlur="this.value=this.value.toUpperCase()"<TMPL_IF NAME="MVR_REQUIREMENT_3"> class="selected"</TMPL_IF>></td>
            <td class="nsinputs"><input type="text" name="FIRST_NAME" tabindex="3" size="15" value="<TMPL_VAR NAME=FIRST_NAME>" maxlength=255 onBlur="this.value=this.value.toUpperCase()"<TMPL_IF NAME="MVR_REQUIREMENT_2"> class="selected"</TMPL_IF>></td>
            <td class="nsinputs"><input type="text" name="MI" tabindex="4" size="15" value="<TMPL_VAR NAME=MI>" maxlength=255 onBlur="this.value=this.value.toUpperCase()"<TMPL_IF NAME="MVR_REQUIREMENT_7"> class="selected"</TMPL_IF>></td>
          </tr>
        </table>
        </td>
      </tr>
      <tr>
        <td>
        <table cellpadding="2" cellspacing="0" border="0">
          <tr>
            <td class="inputlabel">&nbsp;<b>License Number</b><TMPL_IF NAME="MVR_REQUIREMENT_1">&nbsp;*</TMPL_IF></td>
            <td class="inputlabel">&nbsp;<b>DOB (mm/dd/yyyy)</b><TMPL_IF NAME="MVR_REQUIREMENT_4">&nbsp;*</TMPL_IF></td>
          </tr>
          <tr>
            <td class="nsinputs"><input type="text" name="LICENSE_NUMBER" tabindex="10" size="25" value="<TMPL_VAR NAME=LICENSE_NUMBER>" autocomplete="off" maxlength="30" onBlur="this.value=this.value.toUpperCase()"<TMPL_IF NAME="MVR_REQUIREMENT_1"> class="selected"</TMPL_IF>></td>
            <td class="nsinputs"><input type="text" name="DOB" autocomplete="off" size="15" tabindex="12" maxlength="10" value="<TMPL_VAR NAME=DOB>"<TMPL_IF NAME="MVR_REQUIREMENT_4"> class="selected"</TMPL_IF>></td>
          </tr>
        </table>
        </td>
      </tr>
      <tr>
        <td>
        <table cellpadding="2" cellspacing="0" border="0">
          <tr>
            <td class="inputlabel">&nbsp;<b>State</b>&nbsp;*</td>
          <TMPL_IF NAME="MVR_REQUIREMENT_5">
            <td class="inputlabel">&nbsp;<b>Gender</b>&nbsp;*</td>
          </TMPL_IF>
          </tr>
          <tr>
            <td class="nsinputs">
            <select name="MVR_STATE_ID" onchange="javascript:send_event('SEARCH/SHOW_MVR')" tabindex="21">
              <option value="0">
              <TMPL_LOOP NAME=STATE_LIST>
              <option value="<TMPL_VAR NAME="mvr_info_id">"<TMPL_IF NAME="selected"> selected</TMPL_IF>>
              <TMPL_VAR NAME="description"><TMPL_UNLESS NAME="HIDE_PRICES">  -  $<TMPL_VAR NAME="price"></TMPL_UNLESS><TMPL_IF NAME="years">  -  <TMPL_VAR NAME="years"> years</TMPL_IF>
              </option>
              </TMPL_LOOP>
            </select>
            </td>
            <TMPL_IF NAME="MVR_REQUIREMENT_5">
            <td align="nsinputs">
            <select name="GENDER" tabindex="22">
              <TMPL_LOOP NAME=GENDER_LOOP>
              <option value="<TMPL_VAR NAME="VALUE">"<TMPL_IF NAME="SELECTED"> selected</TMPL_IF>><TMPL_VAR NAME="DESC"></option>
              </TMPL_LOOP>
            </select>
            </td>
            </TMPL_IF>
          </tr>
          </table>
        </td>
      </tr>
<!-- end inputs_fields/mvr_report_search.tpl -->
