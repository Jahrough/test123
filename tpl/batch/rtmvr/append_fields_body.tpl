<!-- BEGIN rtmvr/append_fields_body.tpl -->
<table border="0" width="650">
  <tr>
    <td width="650">
    <br>
    <table border="0" cellpadding="0" cellspacing="0" width="650">
      <tr>
        <td class="wizardcounter" width="50%" align="left"><TMPL_INCLUDE NAME="title_line.tpl"></td>
	<td class="wizardcounter" width="50%" align="right"><b>Click the&nbsp;<a href="javascript:void(0);" onClick="var layerfgcolor = get_layer_colors('fgcolor');var layerbgcolor = get_layer_colors('bgcolor');return overlib('<br>Click this button for more detail regarding a particular corresponding item.<br><br>', CAPTIONSIZE, 2, BORDER, 3, FGCOLOR, layerfgcolor, BGCOLOR, layerbgcolor, CGCOLOR, layerbgcolor, WIDTH, 300, BELOW, LEFT, STICKY, CAPTION, 'More Detail', CLOSECLICK, CLOSETEXT, '<img border=0 width=16 height=16 alt=\'Close\' title=\'Close\' src=\'<TMPL_VAR NAME=IMGPATH>/closex.gif\'>');"><img src="<TMPL_VAR NAME=IMGPATH>/info.gif" border="0" width="16" height="16"></a>&nbsp;Button For More Detail&nbsp;</b></td>
      </tr>
      <tr>
        <td class="wizardcounter" align="left"><TMPL_INCLUDE NAME="../help_contact_line.tpl"></td>
      </tr>
    </table>
    </td>
  </tr>
  <tr>
    <td align="center" class="batchbanner" colspan="2"><b>Append Fields</b></td>
  </tr>
<!-- BEGIN -->
<TMPL_IF FREE_TRIAL_CREDITS>
  <tr>
    <td class="batchalert" align="center"><br><b>This account has <TMPL_VAR FREE_TRIAL_CREDITS> free records to process</b></td>
  </tr>
</TMPL_IF>
  
  <tr>
    <td class="largefont1" colspan="2"><br><b></b></td>
  </tr>
</table>

    <INPUT TYPE="HIDDEN" NAME="BATCH_TOTAL" VALUE="1">
<script type="text/javascript">
function update_processing_option(clicked) {

    var myform = clicked.form;
    
    if (clicked.checked != true) {
        if (myform.PROCESS_BY_YEAR.checked == false) {
            document.getElementsByName('num_years')[0].disabled = true;
        }
        return;
    }

    if (myform.PROCESS_BY_DATE.checked == true && myform.PROCESS_BY_YEAR.checked == true)
    {
        if(clicked === myform.PROCESS_BY_DATE){ myform.PROCESS_BY_YEAR.checked = false}
        else{ myform.PROCESS_BY_DATE.checked = false }
        alert('You can not process by date and year at the same time.');
    }
    document.getElementsByName('num_years')[0].disabled = !(myform.PROCESS_BY_YEAR.checked);
}

</script>
<table border="0" cellpadding="0" cellspacing="0" width="600" bordercolor="#000000">
  <tr>
    <td>
        <table cellpadding="2" cellspacing="0" width="650" style="padding-top: 5px; padding-bottom: 5px; border: 1px solid;">
          <tr>
            <td class="batchpricingheader" colspan="2">&nbsp;<b>Select one of the following Search Options:</b></td>
          </tr>
          <tr>
              <td valign="top" width="15"><input type="radio" name="search_option" value="0" <TMPL_UNLESS NAME="vin-search"><TMPL_UNLESS NAME="plate-state-search"> checked="checked"</TMPL_UNLESS></TMPL_UNLESS>></td>
              <td class="smallfont1">Search with Selected Input Fields (Default Search Option)&nbsp;&nbsp;<a href="javascript:void(0);" onClick="var layerfgcolor = get_layer_colors('fgcolor');var layerbgcolor = get_layer_colors('bgcolor');return overlib('<br>The &lsquo;Search with Selected Input Fields&rsquo; option will search by all input fields that are assigned a field type in Step 3 of the Batch Interface.  If you do not want to include an input field in the search (i.e., First Name), then mark that field as &lsquo;Not Applicable&rsquo;.<br><br>', CAPTIONSIZE, 2, BORDER, 3, FGCOLOR, layerfgcolor, BGCOLOR, layerbgcolor, CGCOLOR, layerbgcolor, WIDTH, 275, FIXX, 400, FIXY, 350, STICKY, CAPTION, 'Search with Selected Input Fields (Default Search Option)', CLOSECLICK, CLOSETEXT, '<img border=0 width=16 height=16 alt=\'Close\' title=\'Close\' src=\'<TMPL_VAR NAME=IMGPATH>/closex.gif\'>');"><img src="<TMPL_VAR NAME=IMGPATH>/info.gif" border="0" width="16" height="16"></a></td> 
          </tr>
          <tr>
              <td valign="top" width="15"><input type="radio" name="search_option" value="1" <TMPL_IF NAME="vin-search"> checked="checked"</TMPL_IF>></td>
              <td class="smallfont1">VIN Only Search</td> 
          </tr>
          <tr>
              <td valign="top" width="15"><input type="radio" name="search_option" value="2" <TMPL_IF NAME="plate-state-search"> checked="checked"</TMPL_IF>></td>
              <td class="smallfont1">Plate/State Only Search</td> 
          </tr>
        </table>
    </td>
  </tr>

  <tr><td>&nbsp;</td></tr>

  <tr>
    <td>
        <table cellpadding="2" cellspacing="0" width="650" style="padding-top: 5px; padding-bottom: 5px; border: 1px solid;">
          <tr>
            <td class="batchpricingheader" colspan="2">&nbsp;<b>Select Special Processing Option:</b></td>
          </tr>

            <tr>
                <td colspan="2">
                    <table style="margin-top: 5px; margin-bottom: 5px; background-color: #f5f5f5;">
                        <tr>
                            <td valign="top"><input type="checkbox" name="PROCESS_BY_DATE" onClick="update_processing_option(this);" value="1"<TMPL_IF NAME="PROCESS_BY_DATE"> checked="checked"</TMPL_IF>></td>
                            <td class="smallfont1">Return Motor Vehicle Registration for date provided&nbsp;&nbsp;<a href="javascript:void(0);" onClick="var layerfgcolor = get_layer_colors('fgcolor');var layerbgcolor = get_layer_colors('bgcolor');return overlib('<br>The &lsquo;Motor Vehicle Registration for date provided&rsquo; option can help to determine who the vehicle was registered to on a specific date.  This option requires that the input file contain a Date or Year field which must be marked as &lsquo;Date to Search&rsquo; in Step 3 of the Batch Interface.<br><br>', CAPTIONSIZE, 2, BORDER, 3, FGCOLOR, layerfgcolor, BGCOLOR, layerbgcolor, CGCOLOR, layerbgcolor, WIDTH, 275, FIXX, 400, FIXY, 350, STICKY, CAPTION, 'Return Motor Vehicle Registration for date provided', CLOSECLICK, CLOSETEXT, '<img border=0 width=16 height=16 alt=\'Close\' title=\'Close\' src=\'<TMPL_VAR NAME=IMGPATH>/closex.gif\'>');"><img src="<TMPL_VAR NAME=IMGPATH>/info.gif" border="0" width="16" height="16"></a></td> 
                        </tr>
                        <tr>
                            <td valign="top"><input type="checkbox" name="PROCESS_BY_YEAR" onClick="update_processing_option(this);" value="1"<TMPL_IF NAME="PROCESS_BY_YEAR"> checked="checked"</TMPL_IF>></td>
                            <td class="smallfont1">Return Motor Vehicle Registrations for the selected # of years (Default is most current)</td> 
                            <td class="smallfont1">&nbsp;&nbsp;<select name="num_years" <TMPL_UNLESS NAME="PROCESS_BY_YEAR">disabled="disabled"</TMPL_UNLESS>> 
                            <TMPL_LOOP NUM_YEAR_LOOP>
                              <option value="<TMPL_VAR VALUE>"<TMPL_IF SELECTED> selected="selected"</TMPL_IF>><TMPL_VAR NAME></option>
                            </TMPL_LOOP>
                            </select>&nbsp;&nbsp;<a href="javascript:void(0);" onClick="var layerfgcolor = get_layer_colors('fgcolor');var layerbgcolor = get_layer_colors('bgcolor');return overlib('<br>The &lsquo;Motor Vehicle Registration for the selected # of years&rsquo; will provide all registrations found matching the input criteria for the number of years selected in the drop-down list.  If this option is not chosen or a number of years is not selected then the most current vehicle registration information will be returned.<br><br>', CAPTIONSIZE, 2, BORDER, 3, FGCOLOR, layerfgcolor, BGCOLOR, layerbgcolor, CGCOLOR, layerbgcolor, WIDTH, 275, FIXX, 400, FIXY, 350, STICKY, CAPTION, 'Return Motor Vehicle Registrations for the selected &#35; of years (Default is most current)', CLOSECLICK, CLOSETEXT, '<img border=0 width=16 height=16 alt=\'Close\' title=\'Close\' src=\'<TMPL_VAR NAME=IMGPATH>/closex.gif\'>');"><img src="<TMPL_VAR NAME=IMGPATH>/info.gif" border="0" width="16" height="16"></a>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>

            <tr>
                <td valign="top" width="25"><input type="checkbox" name="registrant_ssn" value="1"<TMPL_IF NAME="registrant_ssn"> checked="checked"</TMPL_IF>></td>
                <td class="smallfont1">Return SSN for Registrant</td>
            </tr>
            <tr>
                <td valign="top" width="25"><input type="checkbox" name="registrant_dob" value="1"<TMPL_IF NAME="registrant_dob"> checked="checked"</TMPL_IF>></td>
                <td class="smallfont1">Return DOB for Registrant</td>
            </tr>
            <tr>
                <td valign="top" width="25"><input type="checkbox" name="registrant_most_current_address" value="1"<TMPL_IF NAME="registrant_most_current_address"> checked="checked"</TMPL_IF>></td>
                <td class="smallfont1">Return Most Current Address for Registrant</td>
            </tr>
            <tr>
                <td valign="top" width="25"><input type="checkbox" name="registrant_most_current_phone" value="1"<TMPL_IF NAME="registrant_most_current_phone"> checked="checked"</TMPL_IF>></td>
                <td class="smallfont1">Return Most Current Phone Number for Registrant</td>
            </tr>
        </table>
    </td>
  </tr>

  <tr><td>&nbsp;</td></tr>

  <tr>
    <td>
        <table cellpadding="2" cellspacing="0" width="650" style="padding-top: 5px; padding-bottom: 5px; border: 1px solid;">
          <tr>
            <td class="batchpricingheader" colspan="2">&nbsp;<b>Select one of the following Real-Time Permissible Use Options:</b></td>
          </tr>
            <tr>
                <td valign="top" width="220"><select name="rt_permissible_use"> 
                <TMPL_LOOP REAL_TIME_PERMISSIBLE_LOOP>
                  <option value="<TMPL_VAR VALUE>"<TMPL_IF SELECTED> selected="selected"</TMPL_IF>><TMPL_VAR NAME></option>
                </TMPL_LOOP>
                </select>
                </td>
                <td class="smallfont1">Real-Time Permissible Use</td> 
            </tr>
        </table>
    </td>
  </tr>

</table>

<br>

<br>

<!-- END rtmvr/append_fields_body.tpl -->
