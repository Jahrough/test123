<!-- Begin report_selector_comp.tpl -->
    <table width="260" cellspacing="0" cellpadding="0" border="0"
     onmouseover="custom_header.src = '<TMPL_VAR NAME='IMGPATH'>/report_menu/custom_header_over.gif'" onmouseout="custom_header.src = '<TMPL_VAR NAME='IMGPATH'>/report_menu/custom_header.gif'">
      <tr>
        <td width="260" colspan="3"><img alt="" src="<TMPL_VAR NAME=IMGPATH>/report_menu/custom_header.gif" width="260" height="22" border="0" id="custom_header"/></td>
      </tr>
      <tr>
        <td><img src="<TMPL_VAR NAME="IMGPATH">/report_menu/sliver_left.gif" alt="" width="13" height="90"/></td>
        <td class="reportselectbox" align="center" width="242">
          <table border="0" cellpadding="0" cellspacing="0" width="230" height="70">
            <tr>
              <td align="left" width="230" valign="top"><b><span class="reportselectboxtext"><br>(Pick and choose your report selections.)<br><br></span></b></td>
            </tr>
            <tr>
              <td align="center" width="230">
                <table border="0" cellpadding="2" cellspacing="0" bgcolor="#000000">
                  <tr>
   <TMPL_IF DISABLE_COMP_REPORT>
                    <td><input tabindex="4" class="rb" type="button" value="Report Disabled" onClick="void(0);" disabled></td>
   <TMPL_ELSE>
                    <td>
                      <input name="BUTTON" tabindex="4" class="rb" type="button"
                       value="<TMPL_IF REPORT_BUTTON><TMPL_VAR NAME=REPORT_BUTTON><TMPL_ELSE>Request Report</TMPL_IF>"
                       onMouseDown="flip_style(this,'rbd');" onClick="showpw();send_event('REPORT/SHORT_REPORT');disable_buttons('BUTTON');"
                       onMouseOut="flip_style(this,'rb');">
                    </td>
   </TMPL_IF>
                  </tr>
                </table>
              </td>
            </tr>
          </table>
        </td>
        <td><img src="<TMPL_VAR NAME="IMGPATH">/report_menu/sliver_right.gif" alt="" width="5" height="90"/></td>
        </td>
      </tr>
      <tr>
        <td width="260" colspan="3"><img alt="" src="<TMPL_VAR NAME=IMGPATH>/report_menu/generic_footer.gif" width="260" height="22" border="0"/></td>
      </tr>
      <tr height="10">
        <td colspan="3" height="10" class="unifont2pt">&nbsp;</td>
      </tr>
    </table>
<!-- End report_selector_comp.tpl -->
