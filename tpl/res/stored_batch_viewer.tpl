<!-- begin stored_batch_viewer.tpl -->
<br>
<table border="1" cellpadding="0" cellspacing="0" width="90%" bordercolor="black" bgcolor="white">
  <input type="hidden" name="SUB_RECORD" value="1">
  <input type="hidden" name="CURRENT_TAB" value="<TMPL_VAR NAME=CURRENT_TAB>">
  <input type="hidden" name="NO_SEARCH_RESULTS_FOUND" value="<TMPL_VAR NAME=NO_SEARCH_RESULTS_FOUND>">
  <input type="hidden" name="SORT_ON" value="<TMPL_VAR NAME=SORT_ON>">
  <input type="hidden" name="RESET_SORT" value="0">
  <input type="hidden" name="RESET_SEARCH" value="0">
  <input type="hidden" name="IMAGE_PATH" value="<TMPL_VAR NAME=IMGPATH>">
  <input type="hidden" name="HTML_PATH" value="<TMPL_VAR NAME=HTMLPATH>">
  <TMPL_IF NAME="NO_SEARCH_RESULTS_FOUND">
  <tr>
    <td valign="top" align="center" class="largefont1bold">No Results Found for Search</td>
  </tr>
  <TMPL_ELSE>
  <TMPL_VAR NAME="REPORT_VIEWER_DATA">
  <tr>
    <td valign="top" align="center">
      <table width="100%" cellpadding="0" cellspacing="0">
        <tr>
          <td valign="top">
            <table width="100%" border=0 cellpadding=0 cellspacing=0>
              <tr>
                <td valign="top" align="left" height="46">
                  <table width="100%" border="0" cellspacing="0" cellpadding="0">
                    <tr>
                      <td><a href="javascript:click_event(1);" onMouseOver="b01.src='<TMPL_VAR NAME=IMGPATH>/res/ree_tab_warnings_over.gif'" onMouseOut="mouse_out_event(1);"><img src="<TMPL_VAR NAME='IMGPATH'>/res/ree_tab_warnings_on.gif" height="46" width="52" border="0" name="b01"></a></td>
                      <td><a href="javascript:click_event(2);" onMouseOver="b02.src='<TMPL_VAR NAME=IMGPATH>/res/ree_tab_addresses_over.gif'" onMouseOut="mouse_out_event(2);"><img src="<TMPL_VAR NAME='IMGPATH'>/res/ree_tab_addresses_on.gif" height="46" width="52" border="0" name="b02"></a></td>
                      <td><a href="javascript:click_event(3);" onMouseOver="b03.src='<TMPL_VAR NAME=IMGPATH>/res/ree_tab_rev_phone_over.gif'" onMouseOut="mouse_out_event(3);"><img src="<TMPL_VAR NAME='IMGPATH'>/res/ree_tab_rev_phone_on.gif" height="46" width="52" border="0" name="b03"></a></td>
                      <td><a href="javascript:click_event(4);" onMouseOver="b04.src='<TMPL_VAR NAME=IMGPATH>/res/ree_tab_drivers_over.gif'" onMouseOut="mouse_out_event(4);"><img src="<TMPL_VAR NAME='IMGPATH'>/res/ree_tab_drivers_on.gif" height="46" width="52" border="0" name="b04"></a></td>
                      <td><a href="javascript:click_event(5);" onMouseOver="b05.src='<TMPL_VAR NAME=IMGPATH>/res/ree_tab_oassn_over.gif'" onMouseOut="mouse_out_event(5);"><img src="<TMPL_VAR NAME='IMGPATH'>/res/ree_tab_oassn_on.gif" height="46" width="52" border="0" name="b05"></a></td>
                      <td><a href="javascript:click_event(6);" onMouseOver="b06.src='<TMPL_VAR NAME=IMGPATH>/res/ree_tab_ossn_over.gif'" onMouseOut="mouse_out_event(6);"><img src="<TMPL_VAR NAME='IMGPATH'>/res/ree_tab_ossn_on.gif" height="46" width="52" border="0" name="b06"></a></td>
                      <td><a href="javascript:click_event(7);" onMouseOver="b07.src='<TMPL_VAR NAME=IMGPATH>/res/ree_tab_vehicle_reg_over.gif'" onMouseOut="mouse_out_event(7);"><img src="<TMPL_VAR NAME='IMGPATH'>/res/ree_tab_vehicle_reg_on.gif" height="46" width="52" border="0" name="b07"></a></td>
                      <!--
                      <td><a href="javascript:click_event(8);" onMouseOver="b08.src='<TMPL_VAR NAME=IMGPATH>/res/ree_tab_vin_title_brnd_over.gif'" onMouseOut="mouse_out_event(8);"><img src="<TMPL_VAR NAME='IMGPATH'>/res/ree_tab_vin_title_brnd_on.gif" height="46" width="52" border="0" name="b08"></a></td>
                      <td><a href="javascript:click_event(9);" onMouseOver="b09.src='<TMPL_VAR NAME=IMGPATH>/res/ree_tab_mileage_vin_over.gif'" onMouseOut="mouse_out_event(9);"><img src="<TMPL_VAR NAME='IMGPATH'>/res/ree_tab_mileage_vin_on.gif" height="46" width="52" border="0" name="b09"></a></td>
                      -->
                      <td width="100%" valign="bottom" align="right" class="unifont1">
                        <table border="0" cellpadding="0" cellspacing="0" width="100%" background="<TMPL_VAR NAME=IMGPATH>/stretchbar2.gif">
                          <tr>
                            <td><img width="1" height="18" border="0" src="<TMPL_VAR NAME=IMGPATH>/spacer.gif"></td>
                          </tr>
                        </table>
                      </td>
                    </tr>
                    <!--
                    <tr>
                      <td align="center" class="unifont1" nowrap="1" name="b01" id="b01"><a href="javascript:void(0);" onClick="click_event(1);">Warnings</a></td>
                      <td align="center" class="unifont1" nowrap="1" name="b02" id="b02"><a href="javascript:void(0);" onClick="click_event(2);">Addresses</a></td>
                      <td align="center" class="unifont1" nowrap="1" name="b03" id="b03"><a href="javascript:void(0);" onClick="click_event(3);">Rev Phone</a></td>
                      <td align="center" class="unifont1" nowrap="1" name="b04" id="b04"><a href="javascript:void(0);" onClick="click_event(4);">Drivers</a></td>
                      <td align="center" class="unifont1" nowrap="1" name="b05" id="b05"><a href="javascript:void(0);" onClick="click_event(5);">Other Names Assoc with SSN</a></td>
                      <td align="center" class="unifont1" nowrap="1" name="b06" id="b06"><a href="javascript:void(0);" onClick="click_event(6);">Other SSNs</a></td>
                      <td align="center" class="unifont1" nowrap="1" name="b07" id="b07"><a href="javascript:void(0);" onClick="click_event(7);">Vehicle Info</a></td>
                      <td align="center" class="unifont1" nowrap="1" name="b08" id="b08"><a href="javascript:void(0);" onClick="click_event(8);">Vehicle Desc & Title Branding</a></td>
                      <td width="100%"></td>
                    </tr>
                    -->
                  </table>
                </td>
              </tr>
            </table>
          </td>
        </tr>
      </table>
    </td>
  </tr>
  <tr>
    <td valign="top" align="center">
      <table width="100%" cellpadding="0" cellspacing="0" border="1">
        <tr>
          <td>
            <div id="mainarea">
            <table border="0" cellpadding="10" cellspacing="0" height="100%">
              <tr>
                <td valign="top" align="center">
                  <a name="data_location" id="data_location">&nbsp;</a>
                </td>
              </tr>
            </table>
            </div>
          </td>
        </tr>
      </table>
    </td>
  </tr>
  </TMPL_IF>
</table>
<!-- end stored_batch_viewer.tpl -->

