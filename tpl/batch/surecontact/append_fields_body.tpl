<!-- BEGIN append_fields_body.tpl -->
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

<table border="1" cellpadding="0" cellspacing="0" width="600">
  <tr>
    <td width="100%" border="0">
    <table border="1" cellpadding="3" cellspacing="0" width="600">
	<tr valign="middle">
	    <td border="0" cellpadding="0" cellspacing="0" class="batchpricingheader" align="center" width="100%">
		<b>Bankruptcies</b>
	    </td>
	</tr>
    </table>
    <table border="0" cellpadding="0" cellspacing="0" width="600">
  <tr>
    <td colspan="2" class="smallfont1"><input type="checkbox" name="includebankruptcy" value="1" <TMPL_VAR NAME=includebankruptcy> onClick="togglesurecontactbankruptcy();">&nbsp;Add Bankruptcy Data for subjects<TMPL_UNLESS HIDE_PRICES> - <b>$0.75</b> per hit</TMPL_UNLESS>.&nbsp;&nbsp;<a href="javascript:void(0);" onClick="var layerfgcolor = get_layer_colors('fgcolor');var layerbgcolor = get_layer_colors('bgcolor');return overlib('<br>Appends to the output record the most recent bankruptcy for each subject.  Fields returned:  Court code, record type, case number, date filed, filing type, date disposed, subject (last name, first name, middle name, name suffix), SSN, company name, AKAs (last name, first name, middle name, address, city, state, zip), spouse (last name, first name, middle name, suffix, SSN, address, city, state, zip), judge, filing type, liabilities, assets, exemptions, asset indicator, pro se, attorney (name, address, city, state, zip, phone), trustee (name, address, city, state, zip, phone), meeting date, meeting time, meeting address, city, state, zip.<br><br>', CAPTIONSIZE, 2, BORDER, 3, FGCOLOR, layerfgcolor, BGCOLOR, layerbgcolor, CGCOLOR, layerbgcolor, WIDTH, 275, FIXX, 360, FIXY, 280, STICKY, CAPTION, 'Add Bankruptcy Data', CLOSECLICK, CLOSETEXT, '<img border=0 width=16 height=16 alt=\'Close\' title=\'Close\' src=\'<TMPL_VAR NAME=IMGPATH>/closex.gif\'>');"><img src="<TMPL_VAR NAME=IMGPATH>/info.gif" border="0" width="16" height="16"></a> 
	</td>
  </tr>
  <tr>
    <td colspan="2" class="smallfont1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="checkbox" name="includebkfilterdate" value="1" <TMPL_VAR NAME=includebkfilterdate> onClick="">&nbsp;Search Filings From
                <select name="filing-date-month">
                        <option value="1"<TMPL_IF NAME="filing-date-month-1"> SELECTED</TMPL_IF>>Jan</option>
                        <option value="2"<TMPL_IF NAME="filing-date-month-2"> SELECTED</TMPL_IF>>Feb</option>
                        <option value="3"<TMPL_IF NAME="filing-date-month-3"> SELECTED</TMPL_IF>>Mar</option>
                        <option value="4"<TMPL_IF NAME="filing-date-month-4"> SELECTED</TMPL_IF>>Apr</option>
                        <option value="5"<TMPL_IF NAME="filing-date-month-5"> SELECTED</TMPL_IF>>May</option>
                        <option value="6"<TMPL_IF NAME="filing-date-month-6"> SELECTED</TMPL_IF>>Jun</option>
                        <option value="7"<TMPL_IF NAME="filing-date-month-7"> SELECTED</TMPL_IF>>Jul</option>
                        <option value="8"<TMPL_IF NAME="filing-date-month-8"> SELECTED</TMPL_IF>>Aug</option>
                        <option value="9"<TMPL_IF NAME="filing-date-month-9"> SELECTED</TMPL_IF>>Sep</option>
                        <option value="10"<TMPL_IF NAME="filing-date-month-10"> SELECTED</TMPL_IF>>Oct</option>
                        <option value="11"<TMPL_IF NAME="filing-date-month-11"> SELECTED</TMPL_IF>>Nov</option>
                        <option value="12"<TMPL_IF NAME="filing-date-month-12"> SELECTED</TMPL_IF>>Dec</option>
                </select>
                <select name="filing-date-year">
                        <TMPL_IF BANK_YEAR_LOOP>
                        <TMPL_LOOP BANK_YEAR_LOOP>
                                <option value="<TMPL_VAR YEAR>"<TMPL_IF SELECTED> SELECTED</TMPL_IF>><TMPL_VAR YEAR></option>
                        </TMPL_LOOP>
                        </TMPL_IF>
                </select>
    </td>
  </tr>
  <tr>
    <td colspan="2" class="smallfont1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="checkbox" name="includebkfilterindata" value="1" <TMPL_VAR NAME=includebkfilterindata> onClick="">&nbsp;Search Filings From Account Open Date&nbsp;&nbsp;</a></td>
  </tr>
  <tr>
    <td colspan="2" class="smallfont1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="checkbox" name="stoponbankruptcy" value="1" <TMPL_VAR NAME=stoponbankruptcy> onClick="">&nbsp;Stop Address/Phone Search on Bankruptcy hit&nbsp;&nbsp;</a></td>
  </tr>

  <tr>
  <td colspan="2">
    <br>
    <table border="1" cellpadding="3" cellspacing="0" width="600">
	<tr>
	    <td class="batchpricingheader" align="center" width="100%">
		<b>Deceased</b>
	    </td>
	</tr>
    </table>
  </td>
  </tr>




  <tr>
    <td colspan="2" class="smallfont1"><input type="checkbox" name="includedeceased" value="1" <TMPL_VAR NAME=includedeceased> onClick="togglesurecontactdeceased();">&nbsp;Add Deceased Date to Bankruptcy Data<TMPL_UNLESS HIDE_PRICES> - <b>$0.75</b> per hit</TMPL_UNLESS>&nbsp;&nbsp;<a href="javascript:void(0);" onClick="var layerfgcolor = get_layer_colors('fgcolor');var layerbgcolor = get_layer_colors('bgcolor');return overlib('<br>Appends to the output record the deceased information (if exists). &nbsp;Fields returned: Deceased reported (0=No DCD; 1=DCD Found; 2=Potential DCD Found). &nbsp;Also included is first name, last name, date of birth, date of death, the zip code of the last ssn check sent, the zip code of the death benefit check.<br><br>', CAPTIONSIZE, 2, BORDER, 3, FGCOLOR, layerfgcolor, BGCOLOR, layerbgcolor, CGCOLOR, layerbgcolor, WIDTH, 275, FIXX, 360, FIXY, 280, STICKY, CAPTION, 'Deceased Date', CLOSECLICK, CLOSETEXT, '<img border=0 width=16 height=16 alt=\'Close\' title=\'Close\' src=\'<TMPL_VAR NAME=IMGPATH>/closex.gif\'>');"><img src="<TMPL_VAR NAME=IMGPATH>/info.gif" border="0" width="16" height="16"></a></td>
  </tr>
  <tr>
    <td colspan="2" class="smallfont1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="checkbox" name="stopondeceased" value="1" <TMPL_VAR NAME=stopondeceased> onClick="">&nbsp;Stop Address/Phone Search on Deceased hit&nbsp;&nbsp;
    </td>
  </tr>

  <tr>
  <td colspan="2">
    <br>
    <table border="1" cellpadding="3" cellspacing="0" width="600">
	<tr>
	    <td class="batchpricingheader" align="center" width="100%">
		<b>Phone & Addresses</b>
	    </td>
	</tr>
    </table>
  </td>
  </tr>




  <tr>
    <td class="smallfont1"><input type="checkbox" name="includesubjectaddress" value="1" <TMPL_VAR NAME=includesubjectaddress> onClick="togglesurecontactsubjectaddress();">Addresses for Subject<TMPL_UNLESS HIDE_PRICES> - <b>$0.25</b> per hit</TMPL_UNLESS>&nbsp;&nbsp;/ Multiple Addresses for Subject<TMPL_UNLESS HIDE_PRICES> - <b>$0.40</b> per hit</TMPL_UNLESS><a href="javascript:void(0);" onClick="var layerfgcolor = get_layer_colors('fgcolor');var layerbgcolor = get_layer_colors('bgcolor');return overlib('<br>Appends to the output record with up to three (3) probable current addresses for the subject and the name associated with each respective address.<br><br>The cost is $0.25 per hit with single address returned (includes up to 3 phones)&nbsp;&nbsp;The cost is $0.40 per hit with multiple addresses returned (includes up to 3 phones per address for a total of up to 9 phones)', CAPTIONSIZE, 2, BORDER, 3, FGCOLOR, layerfgcolor, BGCOLOR, layerbgcolor, CGCOLOR, layerbgcolor, WIDTH, 275, FIXX, 260, FIXY, 400, STICKY, CAPTION, 'Active Addresses for Subject', CLOSECLICK, CLOSETEXT, '<img border=0 width=16 height=16 alt=\'Close\' title=\'Close\' src=\'<TMPL_VAR NAME=IMGPATH>/closex.gif\'>');"><img src="<TMPL_VAR NAME=IMGPATH>/info.gif" border="0" width="16" height="16"></a></td>
  </tr>
  <tr>
    <td class="smallfont1" valign="top">
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<select name="subjectaddresscount">
    <option value="1"<TMPL_IF NAME="subjectaddresscount-1"> SELECTED</TMPL_IF>>1</option>
    <option value="2"<TMPL_IF NAME="subjectaddresscount-2"> SELECTED</TMPL_IF>>2</option>
    <option value="3"<TMPL_IF NAME="subjectaddresscount-3"> SELECTED</TMPL_IF>>3</option>
    </select>
        Address per Subject&nbsp;&nbsp;
    </td>
  </tr>

  <tr>
    <td class="smallfont1"><input type="checkbox" name="includesubjectphone" value="1" <TMPL_VAR NAME=includesubjectphone> onClick="togglesurecontactsubjectphone();">Phones for Subject<a href="javascript:void(0);" onClick="var layerfgcolor = get_layer_colors('fgcolor');var layerbgcolor = get_layer_colors('bgcolor');return overlib('<br>Appends to the output record with up to three (3) active phone numbers for the subject.<br><br>', CAPTIONSIZE, 2, BORDER, 3, FGCOLOR, layerfgcolor, BGCOLOR, layerbgcolor, CGCOLOR, layerbgcolor, WIDTH, 275, FIXX, 260, FIXY, 400, STICKY, CAPTION, 'Active Phones for Subject', CLOSECLICK, CLOSETEXT, '<img border=0 width=16 height=16 alt=\'Close\' title=\'Close\' src=\'<TMPL_VAR NAME=IMGPATH>/closex.gif\'>');"><img src="<TMPL_VAR NAME=IMGPATH>/info.gif" border="0" width="16" height="16"></a></td>
  </tr>
  <tr>
    <td class="smallfont1" valign="top">
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<select name="subjectphonecount">
    <option value="1"<TMPL_IF NAME="subjectphonecount-1"> SELECTED</TMPL_IF>>1</option>
    <option value="2"<TMPL_IF NAME="subjectphonecount-2"> SELECTED</TMPL_IF>>2</option>
    <option value="3"<TMPL_IF NAME="subjectphonecount-3"> SELECTED</TMPL_IF>>3</option>
    </select>
        Phones per Subject&nbsp;&nbsp;
    </td>
  </tr>
  <tr>
    <td class="smallfont1">
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="checkbox" name="includebusinessphone" value="1" <TMPL_VAR NAME=includebusinessphone>>Include business phone listings as part of the output</a></td>
  </tr>
  <tr>
    <td class="smallfont1">
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="checkbox" name="includelandlordphone" value="1" <TMPL_VAR NAME=includelandlordphone>>Include potential landlord business phones as part of the output</a></td>
  </tr>
  
  <tr>
  <td colspan="2">
    <br>
    <table border="1" cellpadding="3" cellspacing="0" width="600">
	<tr>
	    <td class="batchpricingheader" align="center" width="100%">
		<b>Recover Score</b>
	    </td>
	</tr>
    </table>
  </td>
  </tr>




  <tr>
    <td colspan="2" class="smallfont1"><input type="checkbox" name="includerecoverscore" value="1" <TMPL_VAR NAME=includerecoverscore> onClick="togglesurecontactrecoverscore();">&nbsp;Add RecoverScore, Contactability Score, and Stability Index<TMPL_UNLESS HIDE_PRICES> - <b>$0.10</b> per hit</TMPL_UNLESS>&nbsp;&nbsp;<a href="javascript:void(0);" onClick="var layerfgcolor = get_layer_colors('fgcolor');var layerbgcolor = get_layer_colors('bgcolor');return overlib('<br>Appends to the output record RecoverScore, Contactability Score, and Stability Index indices.<br><br>', CAPTIONSIZE, 2, BORDER, 3, FGCOLOR, layerfgcolor, BGCOLOR, layerbgcolor, CGCOLOR, layerbgcolor, WIDTH, 275, FIXX, 360, FIXY, 280, STICKY, CAPTION, 'Deceased Date', CLOSECLICK, CLOSETEXT, '<img border=0 width=16 height=16 alt=\'Close\' title=\'Close\' src=\'<TMPL_VAR NAME=IMGPATH>/closex.gif\'>');"><img src="<TMPL_VAR NAME=IMGPATH>/info.gif" border="0" width="16" height="16"></a></td>
  </tr>
  <tr>
    <td colspan="2" class="smallfont1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Debt Type:&nbsp;
    <select name="debttype"> 
    <option <TMPL_IF NAME="debttype-1">selected</TMPL_IF> value="1">Retail and Bank Credit
    <option <TMPL_IF NAME="debttype-2">selected</TMPL_IF> value="2">Medical, Health Care, or Insurance
    <option <TMPL_IF NAME="debttype-3">selected</TMPL_IF> value="3">Utilities and Wireless
    <option <TMPL_IF NAME="debttype-4">selected</TMPL_IF> value="4">Other
    </select>	
    
    </td>
  </tr>



</table>
    <br>
    </td>
  </tr>
</table>

<br>

<table border="0" cellpadding="0" cellspacing="0" width="608">
  <tr>
  <TMPL_IF BATCH_ADMIN>
  </TMPL_IF>
    <td width="50"><img src="<TMPL_VAR NAME=IMGPATH>/spacer.gif" width="50" height="1" border="0"></td>

<!-- END append_fields_body.tpl -->
