<!-- BEGIN append_bus_deux_fields_body.tpl -->
<table border="0" width="600">
  <tr>
    <td width="600">
    <br>
    <table border="0" cellpadding="0" cellspacing="0" width="600">
      <tr>
        <td class="wizardcounter" width="50%" align="left"><TMPL_INCLUDE NAME="title_line.tpl"></td>
	<td class="wizardcounter" width="50%" align="right"><b>Click the&nbsp;<a href="javascript:void(0);" onClick="var layerfgcolor = get_layer_colors('fgcolor');var layerbgcolor = get_layer_colors('bgcolor');return overlib('<br>Click this button for more detail regarding a particular corresponding item.<br><br>', CAPTIONSIZE, 2, BORDER, 3, FGCOLOR, layerfgcolor, BGCOLOR, layerbgcolor, CGCOLOR, layerbgcolor, WIDTH, 300, BELOW, LEFT, STICKY, CAPTION, 'More Detail', CLOSECLICK, CLOSETEXT, '<img border=0 width=16 height=16 alt=\'Close\' title=\'Close\' src=\'<TMPL_VAR NAME=IMGPATH>/closex.gif\'>');"><img src="<TMPL_VAR NAME=IMGPATH>/info.gif" border="0" width="16" height="16"></a>&nbsp;Button For More Detail&nbsp;</b></td>
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

<table border="1" cellpadding="5" cellspacing="0" width="600" bordercolor="#000000">
  <tr>
    <td>
    <table border="0" cellpadding="2" cellspacing="0" width="600">
  <tr>
    <td class="batchpricingheader" colspan="2">&nbsp;<b>Step 1 Options</b></font></td>
  </tr>
  <tr>
    <td colspan="2" class="smallfont1"><input type="checkbox" name="bank_comp_deceased_combo" value="1" <TMPL_VAR NAME=bank_comp_deceased_combo> onClick="change_total(this, <TMPL_VAR NAME=bank_comp_deceased_combo-price>,document.forms[0].BATCH_TOTAL,document.forms[0].BATCH_PRE_TOTAL)">Check for bankrupt or defunct companies, as well as deceased principals<TMPL_UNLESS HIDE_PRICES>&nbsp;-&nbsp;<span class="batchpricing">$0.25 per record submitted</span></TMPL_UNLESS>&nbsp;&nbsp;<a href="javascript:void(0);" onClick="var layerfgcolor = get_layer_colors('fgcolor');var layerbgcolor = get_layer_colors('bgcolor');return overlib('<br>Appends to the output record the most recent bankruptcy for the input company including the following information: court code, case number, filing date, chapter filed, disposition date, disposition, and filing status. If an input company is defunct, the date filed and status (dissolved, revoked, inactive, forfeited, etc) will be appended to the output record.  If a principal name is input a deceased flag of N will be returned if the principal is not deceased.  If the principal is reported as deceased, then date of death appears in the field with the following date format YYYMMDD.<br><br>', CAPTIONSIZE, 2, BORDER, 3, FGCOLOR, layerfgcolor, BGCOLOR, layerbgcolor, CGCOLOR, layerbgcolor, WIDTH, 300, FIXX, 200, FIXY, 205, STICKY, CAPTION, '&nbsp;', CLOSECLICK, CLOSETEXT, '<img border=0 width=16 height=16 alt=\'Close\' title=\'Close\' src=\'<TMPL_VAR NAME=IMGPATH>/closex.gif\'>');"><img src="<TMPL_VAR NAME=IMGPATH>/info.gif" border="0" width="16" height="16"></a></td>
  </tr>
  <tr>
    <td colspan="2" class="smallfont1">&nbsp;If any of the above options are found for a given record, how do you want to proceed?<br>
	<table width="400"><tr>
	  <td class="smallfont1"><input type="radio" name="dont_process_further" value="1" <TMPL_IF NAME=dont_process_further>CHECKED</TMPL_IF>>&nbsp;Don't process record any further</td>
	  <td class="smallfont1"><input type="radio" name="dont_process_further" value="0" <TMPL_UNLESS NAME=dont_process_further>CHECKED</TMPL_UNLESS>>&nbsp;Allow record to continue through</td>
	</tr></table>
  </tr>
  <tr>
    <td class="batchpricingheader" colspan="2"><br>&nbsp;<b>Step 2 Options:</b></td>
  </tr>
  <tr>
    <td colspan="2" class="smallfont1"><input type="radio" name="comp_phones_and_addr" value="1" <TMPL_IF NAME=comp_phones_and_addr>CHECKED</TMPL_IF> onClick="">Append up to <select name="comp_phones_and_addr_num">
	    <option value="1" <TMPL_IF comp_phones_and_addr_num-1>SELECTED</TMPL_IF>>1</option>
	    <option value="2" <TMPL_IF comp_phones_and_addr_num-2>SELECTED</TMPL_IF>>2</option>
	    <option value="3" <TMPL_IF comp_phones_and_addr_num-3>SELECTED</TMPL_IF>>3</option>
	    <option value="4" <TMPL_IF comp_phones_and_addr_num-4>SELECTED</TMPL_IF>>4</option>
	    <option value="5" <TMPL_IF comp_phones_and_addr_num-5>SELECTED</TMPL_IF>>5</option>
	</select>&nbsp;Phones and Addresses for Company&nbsp;-&nbsp;<span class="batchpricing">$0.25 per hit</span>
    &nbsp;&nbsp;<a href="javascript:void(0);" onClick="var layerfgcolor = get_layer_colors('fgcolor');var layerbgcolor = get_layer_colors('bgcolor');return overlib('<br>Appends to the output record up to 5 active phone numbers and probable current addresses for the input company.  A flag of Y will be returned for verified phones.  If a company cannot be found at the input address we will look within a 30 mile radius for the Company name.<br><br>', CAPTIONSIZE, 2, BORDER, 3, FGCOLOR, layerfgcolor, BGCOLOR, layerbgcolor, CGCOLOR, layerbgcolor, WIDTH, 300, FIXX, 200, FIXY, 205, STICKY, CAPTION, '&nbsp;', CLOSECLICK, CLOSETEXT, '<img border=0 width=16 height=16 alt=\'Close\' title=\'Close\' src=\'<TMPL_VAR NAME=IMGPATH>/closex.gif\'>');"><img src="<TMPL_VAR NAME=IMGPATH>/info.gif" border="0" width="16" height="16"></a></td>
  </tr>
  <tr>
    <td colspan="2" class="smallfont1"><input type="radio" name="comp_phones_and_addr" value="0" <TMPL_UNLESS NAME=comp_phones_and_addr>CHECKED</TMPL_UNLESS> onClick="">Append up to <select name="comp_just_phones_num">
	    <option value="1" <TMPL_IF comp_just_phones_num-1>SELECTED</TMPL_IF>>1</option>
	    <option value="2" <TMPL_IF comp_just_phones_num-2>SELECTED</TMPL_IF>>2</option>
	    <option value="3" <TMPL_IF comp_just_phones_num-3>SELECTED</TMPL_IF>>3</option>
	    <option value="4" <TMPL_IF comp_just_phones_num-4>SELECTED</TMPL_IF>>4</option>
	    <option value="5" <TMPL_IF comp_just_phones_num-5>SELECTED</TMPL_IF>>5</option>
	</select>&nbsp;Phones for Company&nbsp;-&nbsp;<span class="batchpricing">$0.25 per hit</span>
    &nbsp;&nbsp;<a href="javascript:void(0);" onClick="var layerfgcolor = get_layer_colors('fgcolor');var layerbgcolor = get_layer_colors('bgcolor');return overlib('<br>Appends to the output record up to 5 active phone numbers for the input company.  A flag of Y will be returned for verified phones.  If a company cannot be found at the input address we will look within a 30 mile radius for the Company name.<br><br>', CAPTIONSIZE, 2, BORDER, 3, FGCOLOR, layerfgcolor, BGCOLOR, layerbgcolor, CGCOLOR, layerbgcolor, WIDTH, 300, FIXX, 200, FIXY, 205, STICKY, CAPTION, '&nbsp;', CLOSECLICK, CLOSETEXT, '<img border=0 width=16 height=16 alt=\'Close\' title=\'Close\' src=\'<TMPL_VAR NAME=IMGPATH>/closex.gif\'>');"><img src="<TMPL_VAR NAME=IMGPATH>/info.gif" border="0" width="16" height="16"></a></td>
  </tr>
  <tr>
    <td colspan="2" class="smallfont1"><input type="checkbox" name="dedupephones" value="1" <TMPL_VAR NAME=dedupephones> onClick="change_total(this, <TMPL_VAR NAME=dedupephones-price>,document.forms[0].BATCH_TOTAL,document.forms[0].BATCH_PRE_TOTAL)">De-dupe against input<TMPL_UNLESS HIDE_PRICES>&nbsp;-&nbsp;<span class="batchpricing">$0.10 per record submitted</span></TMPL_UNLESS>&nbsp;&nbsp;<a href="javascript:void(0);" onClick="var layerfgcolor = get_layer_colors('fgcolor');var layerbgcolor = get_layer_colors('bgcolor');return overlib('<br>Compares the input phone number and address to the phone number and address found for the company name, returning the phone number and/or address only if it is different.<br><br>', CAPTIONSIZE, 2, BORDER, 3, FGCOLOR, layerfgcolor, BGCOLOR, layerbgcolor, CGCOLOR, layerbgcolor, WIDTH, 300, FIXX, 200, FIXY, 205, STICKY, CAPTION, '&nbsp;', CLOSECLICK, CLOSETEXT, '<img border=0 width=16 height=16 alt=\'Close\' title=\'Close\' src=\'<TMPL_VAR NAME=IMGPATH>/closex.gif\'>');"><img src="<TMPL_VAR NAME=IMGPATH>/info.gif" border="0" width="16" height="16"></a></td>
  </tr>

<!-- comment out until Moxie is ready 
  <tr>
    <td class="class="batchpricingheader" colspan="2"><br>&nbsp;<b>Additional Append Options:</b></td>
  </tr>

  <tr>
    <td colspan="2" class="smallfont1">
	<table>
	    <tr>
	    <td class="smallfont1">Motor Vehicles Owned&nbsp;&nbsp;&nbsp;&nbsp;</td>
	    <td class="smallfont1"><input type="checkbox" name="mv_owned_by_company" value="1" <TMPL_VAR NAME=mv_owned_by_company> onClick="">&nbsp;by Company</td>
	    <td class="smallfont1"><input type="checkbox" name="mv_owned_by_principal" value="1" <TMPL_VAR NAME=mv_owned_by_principal> onClick="">&nbsp;by Principal</td>
	    </tr>
	    <tr>
	    <td class="smallfont1">Property Owned&nbsp;&nbsp;&nbsp;&nbsp;</td>
	    <td class="smallfont1"><input type="checkbox" name="prop_owned_by_company" value="1" <TMPL_VAR NAME=prop_owned_by_company> onClick="">&nbsp;by Company</td>
	    <td class="smallfont1"><input type="checkbox" name="prop_owned_by_principal" value="1" <TMPL_VAR NAME=prop_owned_by_principal> onClick="">&nbsp;by Principal</td>
	    </tr>
	    <tr>
	    <td class="smallfont1">UCC Filings Filed&nbsp;&nbsp;&nbsp;&nbsp;</td>
	    <td class="smallfont1"><input type="checkbox" name="ucc_filing_by_company" value="1" <TMPL_VAR NAME=ucc_filing_by_company> onClick="">&nbsp;by Company</td>
	    <td class="smallfont1"><input type="checkbox" name="ucc_filing_by_principal" value="1" <TMPL_VAR NAME=ucc_filing_by_principal> onClick="">&nbsp;by Principal</td>
	    </tr>
	</table>
    </td>
  </tr>

  <tr>
    <td class="batchpricingheader" colspan="2"><br>&nbsp;<b>Additional Principal Append Options:</b></td>
  </tr>
  <tr>
    <td colspan="2" class="smallfont1"><input type="checkbox" name="other_bus_principal" value="1" <TMPL_VAR NAME=other_bus_principal> onClick="">Other Business Affiliations for Principal&nbsp;&nbsp;<a href="javascript:void(0);" onClick="var layerfgcolor = get_layer_colors('fgcolor');var layerbgcolor = get_layer_colors('bgcolor');return overlib('<br>TEXT HERE?.<br><br>', CAPTIONSIZE, 2, BORDER, 3, FGCOLOR, layerfgcolor, BGCOLOR, layerbgcolor, CGCOLOR, layerbgcolor, WIDTH, 275, FIXX, 330, FIXY, 520, STICKY, CAPTION, 'Other Business Affiliations for Principal', CLOSECLICK, CLOSETEXT, '<img border=0 width=16 height=16 alt=\'Close\' title=\'Close\' src=\'<TMPL_VAR NAME=IMGPATH>/closex.gif\'>');"><img src="<TMPL_VAR NAME=IMGPATH>/info.gif" border="0" width="16" height="16"></a></td>
  </tr>
  <tr>
    <td colspan="2" class="smallfont1">&nbsp;&nbsp;&nbsp;&nbsp;<input type="checkbox" name="other_bus_principal_bankruptcies" value="1" <TMPL_VAR NAME=other_bus_principal_bankruptcies> onClick="">Check for Bankruptcy&nbsp;&nbsp;<a href="javascript:void(0);" onClick="var layerfgcolor = get_layer_colors('fgcolor');var layerbgcolor = get_layer_colors('bgcolor');return overlib('<br>TEXT HERE?.<br><br>', CAPTIONSIZE, 2, BORDER, 3, FGCOLOR, layerfgcolor, BGCOLOR, layerbgcolor, CGCOLOR, layerbgcolor, WIDTH, 275, FIXX, 330, FIXY, 520, STICKY, CAPTION, 'Check for Bankruptcy', CLOSECLICK, CLOSETEXT, '<img border=0 width=16 height=16 alt=\'Close\' title=\'Close\' src=\'<TMPL_VAR NAME=IMGPATH>/closex.gif\'>');"><img src="<TMPL_VAR NAME=IMGPATH>/info.gif" border="0" width="16" height="16"></a></td>
  </tr>
  -->
</table>
    </td>
  </tr>
</table>

<br>

<table border="0" cellpadding="0" cellspacing="0" width="608">
  <tr>
    <td width="304" valign="top">
		&nbsp;
    </td>
    <td width="50"><img src="<TMPL_VAR NAME=IMGPATH>/spacer.gif" width="50" height="1" border="0"></td>

<!-- END append_bus_deux_fields_body.tpl -->
