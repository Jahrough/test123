<!-- Begin custom_county_selection.tpl -->

<TMPL_INCLUDE NAME="court_header.tpl">
<div align="center">
<table border="0" cellpadding="0" cellspacing="0" width="765">
  <tr>
    <td width="15"><img src="<TMPL_VAR NAME=IMGPATH>/spacer.gif" border="0" width="15" height="1"></td>
    <td width="750" valign="top">
      <div align="left" class="courtpagetitle">Custom County Selection:<BR>
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
                <td colspan=2 align="left" class="largefont1bold">Choose State</td>
              </tr>
              <tr>
                <td>
                  <select name="STATE_SELECTION" size="1" onchange="javascript:send_event('COURT/CUSTOM_COUNTYS_RELOAD')">
                  <option value="0">
                  <TMPL_LOOP NAME="STATE_LOOP">
                  <option value="<TMPL_VAR NAME="STATE">"<TMPL_IF NAME="SELECTED"> selected</TMPL_IF>><TMPL_VAR NAME="STATE">
                  </TMPL_LOOP>
                  </select>
                </td>
                <td class="unifont1bold"><TMPL_VAR NAME="STATE_TEXT">&nbsp;
                </td>
              </tr>
              <tr>
                <td class="largefont1bold">Choose Counties</td>
                <td class="largefont1bold">Selected Counties</td>
              </tr>
              <tr>
                <td>
                  <select name="COUNTY_SELECTION" size="10" multiple ondblclick="javascript:send_event('COURT/CUSTOM_COUNTYS_ADD')">
                  <TMPL_IF NAME="COUNTY_LOOP">
                  <TMPL_LOOP NAME="COUNTY_LOOP">
                  <option value="<TMPL_VAR NAME="FIP">:<TMPL_VAR NAME="CODE">:<TMPL_VAR NAME="COUNTY_NAME">"><TMPL_VAR NAME="COUNTY_NAME">  -  $<TMPL_VAR NAME="PRICE">
                  </TMPL_LOOP>
                  <TMPL_ELSE>
                  <option value="0">Select a State
                  </TMPL_IF>
                  </select>
                </td>
                <td>
                  <select name="COUNTY_SELECTION_SELECTED" size="10" multiple ondblclick="javascript:send_event('COURT/CUSTOM_COUNTYS_DELETE')">
                  <TMPL_IF NAME="COUNTY_LOOP_SELECTED">
                  <TMPL_LOOP NAME="COUNTY_LOOP_SELECTED">
                  <option value="<TMPL_VAR NAME="FIP">:<TMPL_VAR NAME="CODE">"><TMPL_VAR NAME="COUNTY_NAME">
                  </TMPL_LOOP>
                  <TMPL_ELSE>
                  <option value="0">No Counties Selected
                  </TMPL_IF>
                  </select>
                </td>
              </tr>
              <tr>
                <td>
                  <input type="button" name="SUBMIT" value="ADD" onClick="send_event('COURT/CUSTOM_COUNTYS_ADD');this.disabled=true">
                </td>
                <td>
                  <input type="button" name="SUBMIT" value="DELETE" onClick="send_event('COURT/CUSTOM_COUNTYS_DELETE');this.disabled=true">
                </td>
              </tr>
              <tr>
                <td colspan="2" class="unifont1bold">
                  After making your additional county selections, please click the CONTINUE button to save your selections and return to the previous screen.
                </td>
              </tr>
              <tr>
                <td colspan="2">
                  <input type="button" name="SUBMIT" value="<< CONTINUE" onClick="send_event('COURT/CUSTOM_COUNTYS_BACK');this.disabled=true">
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
<!-- End custom_county_selection.tpl -->
