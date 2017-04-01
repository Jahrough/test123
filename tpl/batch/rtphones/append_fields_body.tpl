<!-- BEGIN rtphones/append_fields_body.tpl -->
<table border="0" width="600">
  <tr>
    <td width="600">
    <br>
    <table border="0" cellpadding="0" cellspacing="0" width="600">
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
    <td class="largefont1" colspan="2"><br><b>Select the fields you wish to have appended to your file:</b></td>
  </tr>
</table>

    <INPUT TYPE="HIDDEN" NAME="BATCH_TOTAL" VALUE="1">
<script type="text/javascript">
function update_phones_count(clicked) {
    var myform = clicked.form;
    document.getElementsByName('phone-count')[0].disabled = !(myform.enable_phone_count.checked);
}

</script>

<table border="1" cellpadding="0" cellspacing="0" width="600" bordercolor="#000000">
  <tr>
    <td>
    <table border="0" cellpadding="0" cellspacing="0" width="600">
      <tr>
	<td class="batchpricingheader" colspan="2">&nbsp;<b>Select one of the following Search Options:</b></td>
      </tr>
      <tr>
        <td class="smallfont1" valign="top"><input type="radio" name="searchtype" id="10-digit_only" onClick="setSubOptions(this);" value="TEN DIGIT"<TMPL_IF NAME="searchtype-TEN DIGIT"> checked="checked"</TMPL_IF>>10-digit Phone Number Search Only
	</td>
      </tr>
      <tr>
        <td class="smallfont1" valign="top"><input type="radio" name="searchtype" id="name_address_only" onClick="setSubOptions(this);" value="NAME ADDR"<TMPL_IF NAME="searchtype-NAME ADDR"> CHECKED</TMPL_IF>>Name and Address Search Only
        </td>
      </tr>
      <tr>
	<td class="smallfont1" valign="top"><input type="radio" name="searchtype" id="address_only" onClick="setSubOptions(this);" value="ADDR ONLY"<TMPL_IF NAME="searchtype-ADDR ONLY"> CHECKED</TMPL_IF>>Address Search Only
        </td>
      </tr>
      <tr>
	<td class="smallfont1" valign="top"><input type="radio" name="searchtype" id="linkid_only" onClick="setSubOptions(this);" value="LINKID"<TMPL_IF NAME="searchtype-LINKID"> CHECKED</TMPL_IF>>LexID Search Only
        </td>
      </tr>
      <tr>
	<td class="smallfont1" valign="top"><input type="radio" name="searchtype" id="name_ssn_only" onClick="setSubOptions(this);" value="NAME SSN"<TMPL_IF NAME="searchtype-NAME SSN"> CHECKED</TMPL_IF>>Name and Social Security Number Search Only
        </td>
      </tr>
      <tr>
        <td class="smallfont1" valign="top">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="radio" name="strict_ssn" id="waterfall_option" onClick="" value=0 <TMPL_IF name="searchtype-NAME SSN"><TMPL_IF NAME="strict_ssn-0"> checked="checked"</TMPL_IF></TMPL_IF>>Waterfall Search&nbsp;&nbsp;<a href="javascript:void(0);" onClick="var layerfgcolor = get_layer_colors('fgcolor');var layerbgcolor = get_layer_colors('bgcolor');return overlib('<br>When users select the Waterfall search option the query will be conducted with the provided input data and attempt to find a result using the following search order:<br /><br /> <li>Subject First and Last Name and 9-digit Social Security Number</li> <li>Subject Last Name and 9-digit Social Security Number</li> <li>Subject First and Last Name and last 4-digits of Social Security Number</li> <li>Subject Last Name and last 4-digits of Social Security Number</li><br><br>', CAPTIONSIZE, 2, BORDER, 3, FGCOLOR, layerfgcolor, BGCOLOR, layerbgcolor, CGCOLOR, layerbgcolor, WIDTH, 400, FIXX, 200, FIXY, 805, STICKY, CAPTION, 'Name and SSN Waterfall Search', CLOSECLICK, CLOSETEXT, '<img border=0 width=16 height=16 alt=\'Close\' title=\'Close\' src=\'<TMPL_VAR NAME=IMGPATH>/closex.gif\'>');"><img src="<TMPL_VAR NAME=IMGPATH>/info.gif" border="0" width="16" height="16"></a>
        </td>
      </tr>
      <tr>
        <td class="smallfont1" valign="top">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="radio" name="strict_ssn" id="strict_option" onClick="" value="1" <TMPL_IF name="searchtype-NAME SSN"><TMPL_IF NAME="strict_ssn-1"> checked="checked"</TMPL_IF></TMPL_IF>>Strict Search&nbsp;&nbsp;<a href="javascript:void(0);" onClick="var layerfgcolor = get_layer_colors('fgcolor');var layerbgcolor = get_layer_colors('bgcolor');return overlib('<br>When users select the Strict search option the query will be conducted with the provided input data and a result will only be returned if an exact match is made.<br><br>', CAPTIONSIZE, 2, BORDER, 3, FGCOLOR, layerfgcolor, BGCOLOR, layerbgcolor, CGCOLOR, layerbgcolor, WIDTH, 400, FIXX, 200, FIXY, 805, STICKY, CAPTION, 'Name and SSN Strict Search', CLOSECLICK, CLOSETEXT, '<img border=0 width=16 height=16 alt=\'Close\' title=\'Close\' src=\'<TMPL_VAR NAME=IMGPATH>/closex.gif\'>');"><img src="<TMPL_VAR NAME=IMGPATH>/info.gif" border="0" width="16" height="16"></a>
        </td>
      </tr>
      <tr>
	<td class="smallfont1" valign="top"><input type="radio" name="searchtype" id="selected_input_fields" onClick="setSubOptions(this);" value="SEARCH INPUT"<TMPL_IF NAME="searchtype-SEARCH INPUT"> CHECKED</TMPL_IF>>Search with Selected Input Fields&nbsp;&nbsp;<a href="javascript:void(0);" onClick="var layerfgcolor = get_layer_colors('fgcolor');var layerbgcolor = get_layer_colors('bgcolor');return overlib('<br>When users select the Search Selected Input Fields option the query will be conducted with the provided input data and attempt to find a result using the following search order based on input provided: <br /><br /> <li>10-digit phone number</li> <li>Subject name and address</li> <li>Subject name and Social Security Number</li> <li>LexID</li> <li>Address Only</li><br><br>', CAPTIONSIZE, 2, BORDER, 3, FGCOLOR, layerfgcolor, BGCOLOR, layerbgcolor, CGCOLOR, layerbgcolor, WIDTH, 400, FIXX, 200, FIXY, 805, STICKY, CAPTION, 'Search with Selected Input Fields', CLOSECLICK, CLOSETEXT, '<img border=0 width=16 height=16 alt=\'Close\' title=\'Close\' src=\'<TMPL_VAR NAME=IMGPATH>/closex.gif\'>');"><img src="<TMPL_VAR NAME=IMGPATH>/info.gif" border="0" width="16" height="16"></a>
        </td>
      </tr>
    </table>
    </td>
  </tr>
</table>
<br />
<table border="1" cellpadding="0" cellspacing="0" width="600" bordercolor="#000000">
  <tr>
    <td>
    <table border="0" cellpadding="2" cellspacing="0" width="600">
      <tr>
	<td class="batchpricingheader" colspan="2">&nbsp;<b>Select Special Processing Options:</b></td>
      </tr>
      <tr>
        <!-- <td valign="top"><input type="checkbox" name="enable_phone_count" onClick="update_phones_count(this);" value="1"<TMPL_IF NAME="phone-count"> checked="checked"</TMPL_IF>></td> -->
	<td class="smallfont1" colspan="2"><select name="phone-count"> 
        <TMPL_LOOP PHONE_COUNT_LOOP>
          <option value="<TMPL_VAR VALUE>"<TMPL_IF SELECTED> selected="selected"</TMPL_IF>><TMPL_VAR VALUE></option>
        </TMPL_LOOP>
	</select>
	&nbsp;Select number of phone results and details to be returned
	</td>
      </tr>
      <tr>
        <td valign="top"><input type="checkbox" name="geo_coding_detail" value="1"<TMPL_IF NAME="geo_coding_detail"> CHECKED</TMPL_IF>></td><td class="smallfont1">Include Geo Coding Detail &#8211; Geo coding information will include latitude and longitude of address(es) associated with phone number 
        </td>
      </tr>
      <tr>
	<td valign="top"><input type="checkbox" name="additional_address_detail" value="1"<TMPL_IF NAME="additional_address_detail"> CHECKED</TMPL_IF>></td>
	<td class="smallfont1">Include Additional Address Detail &#8211; Address detail associated with phone may include Congressional District, Carrier Route, Sort Zone, FIPS (Federal Information Processing Standards), MSA (Metropolitan Statistical Area), and CMSA (Consolidated Metropolitan Statistical Area)
        </td>
      </tr>
    </table>
    </td>
  </tr>
</table>

<br>

<br>

<!-- END rtphones/append_fields_body.tpl -->
