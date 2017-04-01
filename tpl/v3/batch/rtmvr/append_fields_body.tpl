<!-- BEGIN v3/batch/rtmvr/append_fields_body.tpl -->
<INPUT TYPE="HIDDEN" NAME="BATCH_TOTAL" VALUE="1">
<div class="fieldset-title">Select one of the following Search Options</div>
<fieldset class="batchFieldset">
    <table style="width:100%;">
      <tr>
        <td>
            <table>
              <tr>
                  <td valign="top" width="15"><input id="id_srh_fld" type="radio" name="search_option" value="0" <TMPL_UNLESS NAME="vin-search"><TMPL_UNLESS NAME="plate-state-search"> checked="checked"</TMPL_UNLESS></TMPL_UNLESS>></td>
                  <td><label for="id_srh_fld">Search with Selected Input Fields (Default Search Option)</label>&nbsp;&nbsp;<a href="javascript:void(0);" onClick="var layerfgcolor = get_layer_colors('fgcolor');var layerbgcolor = get_layer_colors('bgcolor');return overlib_to_modal('<br>The &lsquo;Search with Selected Input Fields&rsquo; option will search by all input fields that are assigned a field type in Step 3 of the Batch Interface.  If you do not want to include an input field in the search (i.e., First Name), then mark that field as &lsquo;Not Applicable&rsquo;.<br><br>', CAPTIONSIZE, 2, BORDER, 3, FGCOLOR, layerfgcolor, BGCOLOR, layerbgcolor, CGCOLOR, layerbgcolor, WIDTH, 500, FIXX, 400, FIXY, 350, STICKY, CAPTION, 'Search with Selected Input Fields (Default Search Option)', CLOSECLICK, CLOSETEXT, '<img border=0 width=16 height=16 alt=\'Close\' title=\'Close\' src=\'<TMPL_VAR NAME=IMGPATH>/closex.gif\'>');"><img src="<TMPL_VAR NAME=IMGPATH>/info.gif" border="0" width="16" height="16" alt="More info"></a></td> 
              </tr>
              <tr>
                  <td valign="top" width="15"><input id="id_vin" type="radio" name="search_option" value="1" <TMPL_IF NAME="vin-search"> checked="checked"</TMPL_IF>></td>
                  <td><label for="id_vin">VIN Only Search</label></td> 
              </tr>
              <tr>
                  <td valign="top" width="15"><input id="id_plt_srh" type="radio" name="search_option" value="2" <TMPL_IF NAME="plate-state-search"> checked="checked"</TMPL_IF>></td>
                  <td><label for="id_plt_srh">Plate/State Only Search</label></td> 
              </tr>
            </table>
        </td>
      </tr>

      <tr><td>&nbsp;</td></tr>

      <tr>
        <td>
            <table>
              <tr>
                <td class="batchpricingheader" colspan="2">&nbsp;<b><span id="spl_pro_opt">Select Special Processing Option:</span></b></td>
              </tr>

                <tr>
                    <td colspan="2">
                        <table style="margin-top: 5px; margin-bottom: 5px; background-color: #f5f5f5;">
                            <tr>
                                <td valign="top"><input aria-labelledby="spl_pro_opt" id="id_proc_by_dt" type="checkbox" name="PROCESS_BY_DATE" onClick="update_processing_option(this);" value="1"<TMPL_IF NAME="PROCESS_BY_DATE"> checked="checked"</TMPL_IF>></td>
                                <td><label for="id_proc_by_dt">Return Motor Vehicle Registration for date provided</label>&nbsp;&nbsp;<a href="javascript:void(0);" onClick="var layerfgcolor = get_layer_colors('fgcolor');var layerbgcolor = get_layer_colors('bgcolor');return overlib_to_modal('<br>The &lsquo;Motor Vehicle Registration for date provided&rsquo; option can help to determine who the vehicle was registered to on a specific date.  This option requires that the input file contain a Date or Year field which must be marked as &lsquo;Date to Search&rsquo; in Step 3 of the Batch Interface.<br><br>', CAPTIONSIZE, 2, BORDER, 3, FGCOLOR, layerfgcolor, BGCOLOR, layerbgcolor, CGCOLOR, layerbgcolor, WIDTH, 500, FIXX, 400, FIXY, 350, STICKY, CAPTION, 'Return Motor Vehicle Registration for date provided', CLOSECLICK, CLOSETEXT, '<img border=0 width=16 height=16 alt=\'Close\' title=\'Close\' src=\'<TMPL_VAR NAME=IMGPATH>/closex.gif\'>');"><img src="<TMPL_VAR NAME=IMGPATH>/info.gif" border="0" width="16" height="16" alt="More Info"></a></td> 
                            </tr>
                            <tr>
                                <td valign="top"><input aria-labelledby="spl_pro_opt" id="id_proc_by_yr" type="checkbox" name="PROCESS_BY_YEAR" onClick="update_processing_option(this);" value="1"<TMPL_IF NAME="PROCESS_BY_YEAR"> checked="checked"</TMPL_IF>></td>
                                <td><label for="id_proc_by_yr">Return Motor Vehicle Registrations for the selected # of years (Default is most current)</label></td> 
                                <td>&nbsp;&nbsp;<label for="id_num_yrs" style="display: none">Dummy</label><select aria-labelledby="spl_pro_opt" id="id_num_yrs" name="num_years" <TMPL_UNLESS NAME="PROCESS_BY_YEAR">disabled="disabled"</TMPL_UNLESS>> 
                                <TMPL_LOOP NUM_YEAR_LOOP>
                                  <option value="<TMPL_VAR VALUE>"<TMPL_IF SELECTED> selected="selected"</TMPL_IF>><TMPL_VAR NAME></option>
                                </TMPL_LOOP>
                                </select>&nbsp;&nbsp;<a href="javascript:void(0);" onClick="var layerfgcolor = get_layer_colors('fgcolor');var layerbgcolor = get_layer_colors('bgcolor');return overlib_to_modal('<br>The &lsquo;Motor Vehicle Registration for the selected # of years&rsquo; will provide all registrations found matching the input criteria for the number of years selected in the drop-down list.  If this option is not chosen or a number of years is not selected then the most current vehicle registration information will be returned.<br><br>', CAPTIONSIZE, 2, BORDER, 3, FGCOLOR, layerfgcolor, BGCOLOR, layerbgcolor, CGCOLOR, layerbgcolor, WIDTH, 700, FIXX, 400, FIXY, 350, STICKY, CAPTION, 'Return Motor Vehicle Registrations for the selected &#35; of years (Default is most current)', CLOSECLICK, CLOSETEXT, '<img border=0 width=16 height=16 alt=\'Close\' title=\'Close\' src=\'<TMPL_VAR NAME=IMGPATH>/closex.gif\'>');"><img src="<TMPL_VAR NAME=IMGPATH>/info.gif" border="0" width="16" height="16" alt="More info"></a>
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>

                <tr>
                    <td valign="top" width="25"><input aria-labelledby="spl_pro_opt" id="id_reg_snn" type="checkbox" name="registrant_ssn" value="1"<TMPL_IF NAME="registrant_ssn"> checked="checked"</TMPL_IF>></td>
                    <td><label for="id_reg_snn">Return SSN for Registrant</label></td>
                </tr>
                <tr>
                    <td valign="top" width="25"><input aria-labelledby="spl_pro_opt" id="id_reg_dob" type="checkbox" name="registrant_dob" value="1"<TMPL_IF NAME="registrant_dob"> checked="checked"</TMPL_IF>></td>
                    <td><label for="id_reg_dob">Return DOB for Registrant</label></td>
                </tr>
                <tr>
                    <td valign="top" width="25"><input aria-labelledby="spl_pro_opt" id="id_reg_mst" type="checkbox" name="registrant_most_current_address" value="1"<TMPL_IF NAME="registrant_most_current_address"> checked="checked"</TMPL_IF>></td>
                    <td><label for="id_reg_mst">Return Most Current Address for Registrant</label></td>
                </tr>
                <tr>
                    <td valign="top" width="25"><input aria-labelledby="spl_pro_opt" id="id_reg_mst_cur_ph" type="checkbox" name="registrant_most_current_phone" value="1"<TMPL_IF NAME="registrant_most_current_phone"> checked="checked"</TMPL_IF>></td>
                    <td><label for="id_reg_mst_cur_ph">Return Most Current Phone Number for Registrant</label></td>
                </tr>
            </table>
        </td>
      </tr>

      <tr><td>&nbsp;</td></tr>

      <tr>
        <td>
            <table style="width:100%;">
              <tr>
                <td class="batchpricingheader" colspan="2">&nbsp;<b><label for="id_rt_per_us">Select one of the following Real-Time Permissible Use Options:</label></b></td>
              </tr>
                <tr>
                    <td valign="top" width="220"><select id="id_rt_per_us" name="rt_permissible_use"> 
                    <TMPL_LOOP REAL_TIME_PERMISSIBLE_LOOP>
                      <option value="<TMPL_VAR VALUE>"<TMPL_IF SELECTED> selected="selected"</TMPL_IF>><TMPL_VAR NAME></option>
                    </TMPL_LOOP>
                    </select>
                    </td>
                    <td>Real-Time Permissible Use</td> 
                </tr>
            </table>
        </td>
      </tr>

    </table>
</fieldset>
<div class="section-row child-divs-right">
    <div>
        <a class="btn darkgrey-btn" href="javascript:show_batch_event('BATCH/SERVICES');">
            Back
        </a>
        <a class="btn red-btn" href="javascript:show_batch_event('RTMVRBATCH/SAVE_APPEND_FIELDS')">
            Next
        </a>
    </div>
</div>
<!-- END v3/batch/rtmvr/append_fields_body.tpl -->