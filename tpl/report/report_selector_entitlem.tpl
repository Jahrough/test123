<!-- Begin report_selector_entitlem.tpl -->
    <table width="260" cellspacing="0" cellpadding="0" border="0"
     onmouseout="entitlements_header.src = '<TMPL_VAR NAME=IMGPATH>/report_menu/entitlements_header_noprice.gif'"
     onmouseover="entitlements_header.src = '<TMPL_VAR NAME=IMGPATH>/report_menu/entitlements_header_noprice_over.gif'">
      <tbody><tr>
        <td width="260" colspan="3"><img width="260" height="22" border="0" id="entitlements_header"
         src="<TMPL_VAR NAME=IMGPATH>/report_menu/entitlements_header_noprice.gif" alt=""/></td>
      </tr>
      <tr>
        <td width="13"><img width="13" height="230" alt=""
         src="<TMPL_VAR NAME=IMGPATH>/report_menu/sliver_left.gif"/></td>
        <td width="242" align="center" class="reportselectbox">
          <table width="232" cellspacing="0" cellpadding="0" border="0">
            <tbody><tr>
              <td width="232" valign="top" align="left">
                <span class="reportselectboxtext">
                  &#149; Summary Report<br/>
                  &#149; Assets<br/>
                  &#149; Addresses<br/>
                  &#149; Associates & Relatives<br/>
                  &#149; Bankruptcy, Liens and Judgments<br/>
                  &#149; UCC Filings<br/>
                  &#149; People at Work<br/>
                  &#149; Driver Licenses<br/>
                  &#149; Vehicle Registrations<br/>
                  &#149; Professional Licenses<br/>
                  &#149; Criminal Records<br/>
<TMPL_UNLESS DELETE_CUSTOM_DA_WIRELESS>
<TMPL_IF DO_SHOW_PHONES_PLUS>&#149; Phones Plus<br/></TMPL_IF>
</TMPL_UNLESS>
                  <br/>
                </span>
              </td>
            </tr>
<TMPL_IF IS_SELECTOR>
            <tr>
              <td width="232" align="center">
                <table cellspacing="0" cellpadding="2" border="0" bgcolor="#000000">
                  <tbody><tr>
                    <td>
 <TMPL_IF DISABLE_ENTITLEMENTS_REPORT>
                      <input tabindex="6" class="rb" type="button" value="Report Disabled"
                       onClick="void(0);" disabled>
 <TMPL_ELSE>
                      <input type="button" onmouseout="flip_style(this,'rb');"
                       onclick="showpw();send_event('REPORT/ENTITLEM_REPORT');disable_buttons('BUTTON');"
                       onmousedown="flip_style(this,'rbd');" tabindex="6" name="BUTTON"  class="rb"
                       value="<TMPL_IF REPORT_BUTTON><TMPL_VAR NAME=REPORT_BUTTON><TMPL_ELSE>Request Report</TMPL_IF>"/>
 </TMPL_IF>
                    </td>
                  </tr></tbody>
                </table>
              </td>
            </tr>
</TMPL_IF>
          </tbody></table>
        </td>
        <td width="5"><img width="5" height="230" alt=""
         src="<TMPL_VAR NAME=IMGPATH>/report_menu/sliver_right.gif"/></td>
      </tr>
      <tr>
        <td width="260" colspan="3"><img width="260" height="22" border="0" src="<TMPL_VAR NAME=IMGPATH>/report_menu/generic_footer.gif" alt=""/></td>
      </tr>
      <tr height="10">
        <td height="10" class="unifont2pt" colspan="3"></td>
      </tr></tbody>
    </table>
<!-- End report_selector_entitlem.tpl -->
