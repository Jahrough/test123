<!-- BEGIN append_fields_body.tpl -->
<div class="fieldset-title">Append Fields</div>
<fieldset class="batchFieldset" style="padding-top: 0;border-top: 0;">
    <table style="width:100%;">
        <tr>
            <td class="batchsubheader">Bankruptcies</td>
        </tr>
        <tr>
            <td style="padding: 10px 15px;">
                <table style="width:100%;">
                    <tr>
                        <td colspan="2" class="smallfont1">
                            <input type="checkbox" name="includebankruptcy" value="1" <TMPL_VAR NAME=includebankruptcy> onClick="togglesureplacementbankruptcy();">
                            &nbsp;
                            Add Bankruptcy Data for subjects<TMPL_UNLESS HIDE_PRICES> - <b>$0.75</b> per hit.</TMPL_UNLESS>
                            &nbsp;&nbsp;
                            <a href="javascript:void(0);" onClick="var layerfgcolor = get_layer_colors('fgcolor');var layerbgcolor = get_layer_colors('bgcolor');return overlib_to_modal('<br>Appends to the output record the most recent bankruptcy for each subject.  Fields returned:  Court code, record type, case number, date filed, filing type, date disposed, subject (last name, first name, middle name, name suffix), SSN, company name, AKAs (last name, first name, middle name, address, city, state, zip), spouse (last name, first name, middle name, suffix, SSN, address, city, state, zip), judge, filing type, liabilities, assets, exemptions, asset indicator, pro se, attorney (name, address, city, state, zip, phone), trustee (name, address, city, state, zip, phone), meeting date, meeting time, meeting address, city, state, zip.<br><br>', CAPTIONSIZE, 2, BORDER, 3, FGCOLOR, layerfgcolor, BGCOLOR, layerbgcolor, CGCOLOR, layerbgcolor, WIDTH, 275, FIXX, 360, FIXY, 280, STICKY, CAPTION, 'Add Bankruptcy Data', CLOSECLICK, CLOSETEXT, '<img border=0 width=16 height=16 alt=\'Close\' title=\'Close\' src=\'<TMPL_VAR NAME=IMGPATH>/closex.gif\'>');">
                                <img src="<TMPL_VAR NAME=IMGPATH>/info.gif" border="0" width="16" height="16">
                            </a>
                        </td>
                    </tr>
                    <tr>
                        <td class="unifont1" colspan="2">
                            &nbsp;
                            <input type="checkbox" name="includebkfilterdate" value="1" <TMPL_VAR NAME=includebkfilterdate> onClick="">
                                &nbsp;
                                Search Filings From
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
                        </td>
                    </tr>
                    <tr>
                        <td class="unifont1" colspan="2">
                            &nbsp;
                            Filing Date
                            &nbsp;
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
                        <td colspan="2" class="smallfont1">
                            <input type="checkbox" name="includebkfilterindata" value="1" <TMPL_VAR NAME=includebkfilterindata> onClick="">
                            &nbsp;
                            Search Filings From Account Open Date&nbsp;&nbsp;
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2" class="smallfont1">
                            <input type="checkbox" name="stoponbankruptcy" value="1" <TMPL_VAR NAME=stoponbankruptcy> onClick="">
                            &nbsp;
                            Stop Address/Phone/Indicators/Add-Ons Search on Bankruptcy Hit
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
    <table style="width:100%;">
        <tr>
            <td class="batchsubheader">Deceased</td>
        </tr>
    </table>
    <table style="width:100%;">
        <tr>
            <td class="smallfont1">
                <input type="checkbox" name="includedeceased" value="1" <TMPL_VAR NAME=includedeceased> onClick="togglesureplacementdeceased();">
                &nbsp;
                Add Deceased Data
                <TMPL_UNLESS HIDE_PRICES>
                    - <b>$0.75</b> per hit
                </TMPL_UNLESS>
                &nbsp;&nbsp;
                <a href="javascript:void(0);" onClick="var layerfgcolor = get_layer_colors('fgcolor');var layerbgcolor = get_layer_colors('bgcolor');return overlib_to_modal('<br>Appends to the output record the deceased information (if exists). &nbsp;Fields returned: Deceased reported (0=No DCD; 1=DCD Found; 2=Potential DCD Found). &nbsp;Also included is first name, last name, date of birth, date of death, the zip code of the last ssn check sent, the zip code of the death benefit check.<br><br>', CAPTIONSIZE, 2, BORDER, 3, FGCOLOR, layerfgcolor, BGCOLOR, layerbgcolor, CGCOLOR, layerbgcolor, WIDTH, 275, FIXX, 360, FIXY, 280, STICKY, CAPTION, 'Deceased Date', CLOSECLICK, CLOSETEXT, '<img border=0 width=16 height=16 alt=\'Close\' title=\'Close\' src=\'<TMPL_VAR NAME=IMGPATH>/closex.gif\'>');">
                    <img src="<TMPL_VAR NAME=IMGPATH>/info.gif" border="0" width="16" height="16">
                </a>
            </td>
        </tr>
        <tr>
            <td class="smallfont1">
                <input type="checkbox" name="stopondeceased" value="1" <TMPL_VAR NAME=stopondeceased> onClick="">
                &nbsp;
                Stop Address/Phone/Indicators/Add-Ons Search on Deceased Hit
            </td>
        </tr>
   </table>
    <table style="width:100%;">
        <tr>
            <td class="batchsubheader">Phones & Addresses</td>
        </tr>
    </table>
    <table style="width:100%;">
        <tr>
            <td class="smallfont1">
                <input type="checkbox" name="includesubjectaddress" value="1" <TMPL_VAR NAME=includesubjectaddress> onClick="togglesureplacementsubjectaddress();">
                Addresses for Subject
                <TMPL_UNLESS HIDE_PRICES>
                    - <b>$0.25</b> per hit
                </TMPL_UNLESS>
                &nbsp;&nbsp;/ Multiple Addresses for Subject
                <TMPL_UNLESS HIDE_PRICES>
                    - <b>$0.40</b> per hit
                </TMPL_UNLESS>
                <a href="javascript:void(0);" onClick="var layerfgcolor = get_layer_colors('fgcolor');var layerbgcolor = get_layer_colors('bgcolor');return overlib_to_modal('<br>Appends to the output record with up to three (3) probable current addresses for the subject and the name associated with each respective address.<br><br>The cost is $0.25 per hit with single address returned (includes up to 3 phones)&nbsp;&nbsp;The cost is $0.40 per hit with multiple addresses returned (includes up to 3 phones per address for a total of up to 9 phones)', CAPTIONSIZE, 2, BORDER, 3, FGCOLOR, layerfgcolor, BGCOLOR, layerbgcolor, CGCOLOR, layerbgcolor, WIDTH, 275, FIXX, 260, FIXY, 400, STICKY, CAPTION, 'Active Addresses for Subject', CLOSECLICK, CLOSETEXT, '<img border=0 width=16 height=16 alt=\'Close\' title=\'Close\' src=\'<TMPL_VAR NAME=IMGPATH>/closex.gif\'>');">
                    <img src="<TMPL_VAR NAME=IMGPATH>/info.gif" border="0" width="16" height="16">
                </a>
            </td>
        </tr>
        <tr>
            <td class="smallfont1" valign="top">
                <select name="subjectaddresscount">
                    <option value="1"<TMPL_IF NAME="subjectaddresscount-1"> SELECTED</TMPL_IF>>1</option>
                    <option value="2"<TMPL_IF NAME="subjectaddresscount-2"> SELECTED</TMPL_IF>>2</option>
                    <option value="3"<TMPL_IF NAME="subjectaddresscount-3"> SELECTED</TMPL_IF>>3</option>
                </select>
                Addresses per Subject
            </td>
        </tr>
        <tr>
            <td class="smallfont1"><input type="checkbox" name="includesubjectphone" value="1" <TMPL_VAR NAME=includesubjectphone> onClick="togglesureplacementsubjectphone();">Phones for Subject<a href="javascript:void(0);" onClick="var layerfgcolor = get_layer_colors('fgcolor');var layerbgcolor = get_layer_colors('bgcolor');return overlib_to_modal('<br>Appends to the output record with up to three (3) active phone numbers for the subject.<br><br>', CAPTIONSIZE, 2, BORDER, 3, FGCOLOR, layerfgcolor, BGCOLOR, layerbgcolor, CGCOLOR, layerbgcolor, WIDTH, 275, FIXX, 260, FIXY, 400, STICKY, CAPTION, 'Active Phones for Subject', CLOSECLICK, CLOSETEXT, '<img border=0 width=16 height=16 alt=\'Close\' title=\'Close\' src=\'<TMPL_VAR NAME=IMGPATH>/closex.gif\'>');"><img src="<TMPL_VAR NAME=IMGPATH>/info.gif" border="0" width="16" height="16"></a></td>
        </tr>
        <tr>
            <td class="smallfont1" valign="top">
                <select name="subjectphonecount">
                    <option value="1"<TMPL_IF NAME="subjectphonecount-1"> SELECTED</TMPL_IF>>1</option>
                    <option value="2"<TMPL_IF NAME="subjectphonecount-2"> SELECTED</TMPL_IF>>2</option>
                    <option value="3"<TMPL_IF NAME="subjectphonecount-3"> SELECTED</TMPL_IF>>3</option>
                </select>
                Phones per Address
            </td>
        </tr>
    </table>
</fieldset>
<div class="section-row child-divs-right">
    <div>
        <a class="btn darkgrey-btn" href="javascript:show_batch_event('<tmpl_var name=BATCH_CONTROLLER>/DEFINE_FILE')">
            Back
        </a>
        <a class="btn red-btn" href="javascript:show_batch_event('<tmpl_var name=BATCH_CONTROLLER>/SAVE_APPEND_FIELDS')">
            Next
        </a>
    </div>
</div>


<!-- OLD CODE -->

<input type="hidden" name="APPENDFIELDS">
<table border="1" cellpadding="0" cellspacing="0" width="100%">
  <tr>
    <td valign="top">
    <table border="0" cellpadding="3" cellspacing="0" width="100%">
	<tr valign="middle">
	    <td border="0" cellpadding="0" cellspacing="0" class="batchpricingheader" align="center" width="100%">
		<b>Bankruptcies</b>
	    </td>
	</tr>
    </table>
    </td>
  </tr>

  <tr>
    <td>
        <table border="0" cellpadding="0" cellspacing="0" width="100%">
            <tr>
                <td colspan="2" class="smallfont1">
                    <input type="checkbox" name="includebankruptcy" value="1" <TMPL_VAR NAME=includebankruptcy> onClick="togglesureplacementbankruptcy();">&nbsp;Add Bankruptcy Data for subjects<TMPL_UNLESS HIDE_PRICES> - <b>$0.75</b> per hit.</TMPL_UNLESS>
                    &nbsp;&nbsp;<a href="javascript:void(0);" onClick="var layerfgcolor = get_layer_colors('fgcolor');var layerbgcolor = get_layer_colors('bgcolor');return overlib_to_modal('<br>Appends to the output record the most recent bankruptcy for each subject.  Fields returned:  Court code, record type, case number, date filed, filing type, date disposed, subject (last name, first name, middle name, name suffix), SSN, company name, AKAs (last name, first name, middle name, address, city, state, zip), spouse (last name, first name, middle name, suffix, SSN, address, city, state, zip), judge, filing type, liabilities, assets, exemptions, asset indicator, pro se, attorney (name, address, city, state, zip, phone), trustee (name, address, city, state, zip, phone), meeting date, meeting time, meeting address, city, state, zip.<br><br>', CAPTIONSIZE, 2, BORDER, 3, FGCOLOR, layerfgcolor, BGCOLOR, layerbgcolor, CGCOLOR, layerbgcolor, WIDTH, 275, FIXX, 360, FIXY, 280, STICKY, CAPTION, 'Add Bankruptcy Data', CLOSECLICK, CLOSETEXT, '<img border=0 width=16 height=16 alt=\'Close\' title=\'Close\' src=\'<TMPL_VAR NAME=IMGPATH>/closex.gif\'>');"><img src="<TMPL_VAR NAME=IMGPATH>/info.gif" border="0" width="16" height="16"></a></td>
            </tr>
        <tr>
        <td colspan="2" class="smallfont1">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="checkbox" name="includebkfilterdate" value="1" <TMPL_VAR NAME=includebkfilterdate> onClick="">&nbsp;Search Filings From
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
                <td colspan="2" class="smallfont1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="checkbox" name="stoponbankruptcy" value="1" <TMPL_VAR NAME=stoponbankruptcy> onClick="">&nbsp;Stop Address/Phone/Indicators/Add-Ons Search on Bankruptcy Hit&nbsp;&nbsp;</a><br><br></td>
            </tr>
        </table>
    </td>
</tr>



  <tr>
    <td valign="top">
    <table border="0" cellpadding="3" cellspacing="0" width="100%">
	<tr valign="middle">
	    <td border="0" cellpadding="0" cellspacing="0" class="batchpricingheader" align="center" width="100%">
		<b>Deceased</b>
	    </td>
	</tr>
    </table>
    </td>
  </tr>





  <tr>
   <td>
    <table border="0" cellpadding="0" cellspacing="0" width="600">
  <tr>
    <td colspan="2" class="smallfont1"><input type="checkbox" name="includedeceased" value="1" <TMPL_VAR NAME=includedeceased> onClick="togglesureplacementdeceased();">&nbsp;Add Deceased Data<TMPL_UNLESS HIDE_PRICES> - <b>$0.75</b> per hit</TMPL_UNLESS>&nbsp;&nbsp;<a href="javascript:void(0);" onClick="var layerfgcolor = get_layer_colors('fgcolor');var layerbgcolor = get_layer_colors('bgcolor');return overlib_to_modal('<br>Appends to the output record the deceased information (if exists). &nbsp;Fields returned: Deceased reported (0=No DCD; 1=DCD Found; 2=Potential DCD Found). &nbsp;Also included is first name, last name, date of birth, date of death, the zip code of the last ssn check sent, the zip code of the death benefit check.<br><br>', CAPTIONSIZE, 2, BORDER, 3, FGCOLOR, layerfgcolor, BGCOLOR, layerbgcolor, CGCOLOR, layerbgcolor, WIDTH, 275, FIXX, 360, FIXY, 280, STICKY, CAPTION, 'Deceased Date', CLOSECLICK, CLOSETEXT, '<img border=0 width=16 height=16 alt=\'Close\' title=\'Close\' src=\'<TMPL_VAR NAME=IMGPATH>/closex.gif\'>');"><img src="<TMPL_VAR NAME=IMGPATH>/info.gif" border="0" width="16" height="16"></a></td>
  </tr>
  <tr>
    <td colspan="2" class="smallfont1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="checkbox" name="stopondeceased" value="1" <TMPL_VAR NAME=stopondeceased> onClick="">&nbsp;Stop Address/Phone/Indicators/Add-Ons Search on Deceased Hit&nbsp;&nbsp;
    <br><br>
    </td>
  </tr>
   </table>
  </td>
 </tr>

<tr>
    <td valign="top">
        <table border="0" cellpadding="3" cellspacing="0" width="100%">
            <tr valign="middle">
                <td border="0" cellpadding="0" cellspacing="0" class="batchpricingheader" align="center" width="100%">
                    <b>Phones & Addresses</b>
                </td>
            </tr>
        </table>
    </td>
</tr>
  

  <tr>
   <td>
    <table border="0" cellpadding="0" cellspacing="0" width="600">
  <tr>
    <td class="smallfont1"><input type="checkbox" name="includesubjectaddress" value="1" <TMPL_VAR NAME=includesubjectaddress> onClick="togglesureplacementsubjectaddress();">Addresses for Subject<TMPL_UNLESS HIDE_PRICES> - <b>$0.25</b> per hit</TMPL_UNLESS>&nbsp;&nbsp;/ Multiple Addresses for Subject<TMPL_UNLESS HIDE_PRICES> - <b>$0.40</b> per hit</TMPL_UNLESS><a href="javascript:void(0);" onClick="var layerfgcolor = get_layer_colors('fgcolor');var layerbgcolor = get_layer_colors('bgcolor');return overlib_to_modal('<br>Appends to the output record with up to three (3) probable current addresses for the subject and the name associated with each respective address.<br><br>The cost is $0.25 per hit with single address returned (includes up to 3 phones)&nbsp;&nbsp;The cost is $0.40 per hit with multiple addresses returned (includes up to 3 phones per address for a total of up to 9 phones)', CAPTIONSIZE, 2, BORDER, 3, FGCOLOR, layerfgcolor, BGCOLOR, layerbgcolor, CGCOLOR, layerbgcolor, WIDTH, 275, FIXX, 260, FIXY, 400, STICKY, CAPTION, 'Active Addresses for Subject', CLOSECLICK, CLOSETEXT, '<img border=0 width=16 height=16 alt=\'Close\' title=\'Close\' src=\'<TMPL_VAR NAME=IMGPATH>/closex.gif\'>');"><img src="<TMPL_VAR NAME=IMGPATH>/info.gif" border="0" width="16" height="16"></a></td>
  </tr>
  <tr>
    <td class="smallfont1" valign="top">
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<select name="subjectaddresscount">
    <option value="1"<TMPL_IF NAME="subjectaddresscount-1"> SELECTED</TMPL_IF>>1</option>
    <option value="2"<TMPL_IF NAME="subjectaddresscount-2"> SELECTED</TMPL_IF>>2</option>
    <option value="3"<TMPL_IF NAME="subjectaddresscount-3"> SELECTED</TMPL_IF>>3</option>
    </select>
        Addresses per Subject&nbsp;&nbsp;
    </td>
  </tr>

  <tr>
    <td class="smallfont1"><input type="checkbox" name="includesubjectphone" value="1" <TMPL_VAR NAME=includesubjectphone> onClick="togglesureplacementsubjectphone();">Phones for Subject<a href="javascript:void(0);" onClick="var layerfgcolor = get_layer_colors('fgcolor');var layerbgcolor = get_layer_colors('bgcolor');return overlib_to_modal('<br>Appends to the output record with up to three (3) active phone numbers for the subject.<br><br>', CAPTIONSIZE, 2, BORDER, 3, FGCOLOR, layerfgcolor, BGCOLOR, layerbgcolor, CGCOLOR, layerbgcolor, WIDTH, 275, FIXX, 260, FIXY, 400, STICKY, CAPTION, 'Active Phones for Subject', CLOSECLICK, CLOSETEXT, '<img border=0 width=16 height=16 alt=\'Close\' title=\'Close\' src=\'<TMPL_VAR NAME=IMGPATH>/closex.gif\'>');"><img src="<TMPL_VAR NAME=IMGPATH>/info.gif" border="0" width="16" height="16"></a></td>
  </tr>
  <tr>
    <td class="smallfont1" valign="top">
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<select name="subjectphonecount">
    <option value="1"<TMPL_IF NAME="subjectphonecount-1"> SELECTED</TMPL_IF>>1</option>
    <option value="2"<TMPL_IF NAME="subjectphonecount-2"> SELECTED</TMPL_IF>>2</option>
    <option value="3"<TMPL_IF NAME="subjectphonecount-3"> SELECTED</TMPL_IF>>3</option>
    </select>
        Phones per Address&nbsp;&nbsp;<br><br>
    </td>
  </tr>
</table>

</td>
</tr>
    </td>
  </tr>
</table>
<!-- END append_fields_body.tpl -->
