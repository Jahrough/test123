<!-- Begin custom_state_selection.tpl -->

<TMPL_INCLUDE NAME="court_header.tpl">
<div align="center">
<table border="0" cellpadding="0" cellspacing="0" width="765">
  <tr>
    <td width="15"><img src="<TMPL_VAR NAME=IMGPATH>/spacer.gif" border="0" width="15" height="1"></td>
    <td width="750" valign="top">
      <div align="left" class="courtpagetitle">Custom State Selection:<BR>
      </div>
      <P>
      <div align="left" class="smallfont1">  
        <TMPL_IF IDENTITY_LOOP>
        <TMPL_LOOP IDENTITY_LOOP>
        <TMPL_INCLUDE NAME="identity.tpl">
        <P>
        </TMPL_LOOP>
        </TMPL_IF>
      </div>
      <P>
      <table border="0" cellpadding="0" cellspacing="3" width="720">
        <tr>
          <td colspan=2 align="left">
            <table cellspacing="10">
              <tr>
                <td class="largefont1bold">Choose States</td>
                <td class="largefont1bold">Selected States</td>
              </tr>
              <tr>
                <td>
                  <select name="STATE_SELECTION" size="10" multiple ondblclick="javascript:send_event('COURT/CUSTOM_STATES_ADD')">
                  <TMPL_LOOP NAME="STATE_LOOP">
                  <option value="<TMPL_VAR NAME="STATE">"><TMPL_VAR NAME="NAME">  -  $<TMPL_VAR NAME="PRICE">
                  </TMPL_LOOP>
                  </select>
                </td>
                <td>
                  <select name="STATE_SELECTION_SELECTED" size="10" multiple ondblclick="javascript:send_event('COURT/CUSTOM_STATES_DELETE')">
                  <TMPL_IF NAME="STATE_LOOP_SELECTED">
                  <TMPL_LOOP NAME="STATE_LOOP_SELECTED">
                  <option value="<TMPL_VAR NAME="STATE">"><TMPL_VAR NAME="NAME">
                  </TMPL_LOOP>
                  <TMPL_ELSE>
                  <option value="0">No States Selected
                  </TMPL_IF>
                  </select>
                </td>
              </tr>
              <tr>
                <td>
                  <input type="button" name="SUBMIT" value="ADD" onClick="send_event('COURT/CUSTOM_STATES_ADD');this.disabled=true">
                </td>
                <td>
                  <input type="button" name="SUBMIT" value="DELETE" onClick="send_event('COURT/CUSTOM_STATES_DELETE');this.disabled=true">
                </td>
              </tr>
              <tr>
                <td colspan="2" class="unifont1bold">
                  After making your additional state selections, please click the CONTINUE button to save your selections and return to the previous screen.
                </td>
              </tr>
              <tr>
                <td colspan="2">
                  <input type="button" name="SUBMIT" value="<< CONTINUE" onClick="send_event('COURT/CUSTOM_STATES_BACK');this.disabled=true">
                </td>
              </tr>
            </table>
          </td>
        </tr>
      </table>
    </td>
  </tr>
</table>
</div>
<TMPL_INCLUDE NAME="court_footer.tpl">
<!-- End custom_state_selection.tpl -->
