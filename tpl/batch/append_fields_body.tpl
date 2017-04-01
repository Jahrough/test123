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
      <TMPL_IF SHOW_BATCH_UPDATE>
      <tr>
        <td class="wizardcounter" align="left"><TMPL_INCLUDE NAME="help_contact_line.tpl"></td>
      </tr>
      </TMPL_IF>
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

<TMPL_IF INS>
<table border="1" cellpadding="0" cellspacing="0" width="608" bordercolor="#000000">
  <tr>
    <td class="smallfont1" valign="top">&nbsp;<span class="batchpricingheader"><b>Select Person Batch Options:</b></span>
    <br>
      &nbsp;<input type="checkbox" name="dateofdeath" value="1" onClick="check_bestaddress_special(this, <TMPL_VAR NAME=dateofdeath-price>, <TMPL_VAR NAME=base-batch-price>);" <TMPL_IF NAME=dateofdeath> CHECKED</TMPL_IF>>Date of Death <TMPL_UNLESS HIDE_PRICES> -- $.05 per input record plus $.60 per deceased record returned</TMPL_UNLESS>&nbsp;&nbsp;<a href="javascript:void(0);" onClick="var layerfgcolor = get_layer_colors('fgcolor');var layerbgcolor = get_layer_colors('bgcolor');return overlib('<br> Date of death will display in your output file as the probable date of death for the individual\'s input information.<br><br>', CAPTIONSIZE, 2, BORDER, 3, FGCOLOR, layerfgcolor, BGCOLOR, layerbgcolor, CGCOLOR, layerbgcolor, WIDTH, 275, FIXX, 360, FIXY, 205, STICKY, CAPTION, 'Date of Death', CLOSECLICK, CLOSETEXT, '<img border=0 width=16 height=16 alt=\'Close\' title=\'Close\' src=\'<TMPL_VAR NAME=IMGPATH>/closex.gif\'>');"><img src="<TMPL_VAR NAME=IMGPATH>/info.gif" border="0" width="16" height="16"></a>

    <br>
      &nbsp;<input type="checkbox" name="dateofbirth" value="1" onClick="check_bestaddress_special(this, <TMPL_VAR NAME=dateofbirth-price>, <TMPL_VAR NAME=base-batch-price>);" <TMPL_IF NAME=dateofbirth> CHECKED</TMPL_IF>>Best Date of Birth <TMPL_UNLESS HIDE_PRICES> -- $.15 per per Date of Birth returned or verified Date of Birth</TMPL_UNLESS>&nbsp;&nbsp;<a href="javascript:void(0);" onClick="var layerfgcolor = get_layer_colors('fgcolor');var layerbgcolor = get_layer_colors('bgcolor');return overlib('<br> Date of birth returned is the most commonly reported DOB for the individual. <br><br>', CAPTIONSIZE, 2, BORDER, 3, FGCOLOR, layerfgcolor, BGCOLOR, layerbgcolor, CGCOLOR, layerbgcolor, WIDTH, 275, FIXX, 360, FIXY, 205, STICKY, CAPTION, 'Date of Birth', CLOSECLICK, CLOSETEXT, '<img border=0 width=16 height=16 alt=\'Close\' title=\'Close\' src=\'<TMPL_VAR NAME=IMGPATH>/closex.gif\'>');"><img src="<TMPL_VAR NAME=IMGPATH>/info.gif" border="0" width="16" height="16"></a>
    <br>
      &nbsp;<input type="checkbox" name="bestssn" value="1" onClick="check_bestaddress_special(this, <TMPL_VAR NAME=bestssn-price>, <TMPL_VAR NAME=base-batch-price>);" <TMPL_IF NAME=bestssn> CHECKED</TMPL_IF>>Best SSN <TMPL_UNLESS HIDE_PRICES> -- $.35 per SSN returned or verified SSN</TMPL_UNLESS>&nbsp;&nbsp;<a href="javascript:void(0);" onClick="var layerfgcolor = get_layer_colors('fgcolor');var layerbgcolor = get_layer_colors('bgcolor');return overlib('<br> Social Security Number returned is the most commonly reported SSN for the individual.<br><br>', CAPTIONSIZE, 2, BORDER, 3, FGCOLOR, layerfgcolor, BGCOLOR, layerbgcolor, CGCOLOR, layerbgcolor, WIDTH, 275, FIXX, 360, FIXY, 205, STICKY, CAPTION, 'Best SSN', CLOSECLICK, CLOSETEXT, '<img border=0 width=16 height=16 alt=\'Close\' title=\'Close\' src=\'<TMPL_VAR NAME=IMGPATH>/closex.gif\'>');"><img src="<TMPL_VAR NAME=IMGPATH>/info.gif" border="0" width="16" height="16"></a>
    </td>
  </tr>
</table>
<br>
</TMPL_IF>

<TMPL_IF SHOW_BATCH_UPDATE>
    <INPUT TYPE="HIDDEN" NAME="BATCH_TOTAL" VALUE="1">
</TMPL_IF>
<table border="1" cellpadding="0" cellspacing="0" width="600" bordercolor="#000000">
  <tr>
    <td>
    <table border="0" cellpadding="2" cellspacing="0" width="600">
  <tr>
    <td class="batchpricingheader" colspan="2">&nbsp;<b><TMPL_IF NAME=INS>OR<TMPL_ELSE>Select</TMPL_IF> Special Processing Option:</b></td>
  </tr>
  <tr>
    <td class="smallfont1" colspan="2">
        <input type="checkbox" name="dedupeall" onClick="check_bestaddress_special(this, <TMPL_VAR NAME=dedupeall-price>, <TMPL_VAR NAME=base-batch-price>);" value="1"<TMPL_IF NAME=dedupeall> CHECKED</TMPL_IF>>Best Address -- By Date: Return Different Address and Phone.<TMPL_UNLESS HIDE_PRICES> Value Priced at $.25 per record</TMPL_UNLESS>&nbsp;&nbsp;<a href="javascript:void(0);" onClick="var layerfgcolor = get_layer_colors('fgcolor');var layerbgcolor = get_layer_colors('bgcolor');return overlib('<br>Search returns addresses and/or phone numbers. If an address and/or phone number is provided as input, the search will be conducted to only find addresses and/or phone numbers that are different and more current.<br><br>', CAPTIONSIZE, 2, BORDER, 3, FGCOLOR, layerfgcolor, BGCOLOR, layerbgcolor, CGCOLOR, layerbgcolor, WIDTH, 275, FIXX, 360, FIXY, 380, STICKY, CAPTION, 'Best Address -- By Date: Return Different Address and Phone.', CLOSECLICK, CLOSETEXT, '<img border=0 width=16 height=16 alt=\'Close\' title=\'Close\' src=\'<TMPL_VAR NAME=IMGPATH>/closex.gif\'>');"><img src="<TMPL_VAR NAME=IMGPATH>/info.gif" border="0" width="16" height="16"></a>
        <BR>
        <input type="checkbox" name="dedupeaddresses" onClick="check_bestaddress_special(this, <TMPL_VAR NAME=dedupeaddresses-price>, <TMPL_VAR NAME=base-batch-price>);" value="1"<TMPL_IF NAME=dedupeaddresses> CHECKED</TMPL_IF>>Best Address -- By Date: Return Different Address.&nbsp;&nbsp;<TMPL_UNLESS HIDE_PRICES>$.05 per record plus $.20 per address returned&nbsp;&nbsp;</TMPL_UNLESS><a href="javascript:void(0);" onClick="var layerfgcolor = get_layer_colors('fgcolor');var layerbgcolor = get_layer_colors('bgcolor');return overlib('<br>Search returns addresses. If an address is provided as input, the search will be conducted to only find addresses that are different and more current. Phone numbers are not returned.<br><br>', CAPTIONSIZE, 2, BORDER, 3, FGCOLOR, layerfgcolor, BGCOLOR, layerbgcolor, CGCOLOR, layerbgcolor, WIDTH, 275, FIXX, 360, FIXY, 380, STICKY, CAPTION, 'Best Address -- By Date: Return Different Address.', CLOSECLICK, CLOSETEXT, '<img border=0 width=16 height=16 alt=\'Close\' title=\'Close\' src=\'<TMPL_VAR NAME=IMGPATH>/closex.gif\'>');"><img src="<TMPL_VAR NAME=IMGPATH>/info.gif" border="0" width="16" height="16"></a>
        <BR>
        <input type="checkbox" name="dedupephones" onClick="check_bestaddress_special(this, <TMPL_VAR NAME=dedupephones-price>, <TMPL_VAR NAME=base-batch-price>);" value="1"<TMPL_IF NAME=dedupephones> CHECKED</TMPL_IF>>Phones Only: Return Different Phone&nbsp;&nbsp;<TMPL_UNLESS HIDE_PRICES>$.03 per record plus $.14 per phone returned.&nbsp;&nbsp;</TMPL_UNLESS><a href="javascript:void(0);" onClick="var layerfgcolor = get_layer_colors('fgcolor');var layerbgcolor = get_layer_colors('bgcolor');return overlib('<br>Search returns phone numbers. If a phone number is provided as input, the search will be conducted to only find phone numbers that are different and more current. Up to three phones can be submitted for comparision. Addresses are not returned.<br><br>', CAPTIONSIZE, 2, BORDER, 3, FGCOLOR, layerfgcolor, BGCOLOR, layerbgcolor, CGCOLOR, layerbgcolor, WIDTH, 275, FIXX, 360, FIXY, 380, STICKY, CAPTION, 'Phones Only: Return Different Phone.', CLOSECLICK, CLOSETEXT, '<img border=0 width=16 height=16 alt=\'Close\' title=\'Close\' src=\'<TMPL_VAR NAME=IMGPATH>/closex.gif\'>');"><img src="<TMPL_VAR NAME=IMGPATH>/info.gif" border="0" width="16" height="16"></a>
        <!--
        <BR>
        <input type="checkbox" name="neighbors" onClick="check_bestaddress_special(this, <TMPL_VAR NAME=neighbors-price>, <TMPL_VAR NAME=base-batch-price>);" value="1"<TMPL_IF NAME=neighbors> CHECKED</TMPL_IF>>Neighbors: Return phones and addresses for up to five neighbors&nbsp;&nbsp;<TMPL_UNLESS HIDE_PRICES>$0.25 per match.&nbsp;&nbsp;</TMPL_UNLESS><a href="javascript:void(0);" onClick="var layerfgcolor = get_layer_colors('fgcolor');var layerbgcolor = get_layer_colors('bgcolor');return overlib('<br>Return phones and addresses for up to five neighbors.<br><br>', CAPTIONSIZE, 2, BORDER, 3, FGCOLOR, layerfgcolor, BGCOLOR, layerbgcolor, CGCOLOR, layerbgcolor, WIDTH, 275, FIXX, 360, FIXY, 380, STICKY, CAPTION, 'Neighbors: Return phones and addresses for up to five neighbors', CLOSECLICK, CLOSETEXT, '<img border=0 width=16 height=16 alt=\'Close\' title=\'Close\' src=\'<TMPL_VAR NAME=IMGPATH>/closex.gif\'>');"><img src="<TMPL_VAR NAME=IMGPATH>/info.gif" border="0" width="16" height="16"></a>
        -->
    </td>
  </tr>
  <!--
  <tr>
    <td width="600" colspan="2"><hr width="600">
  </tr>
  <tr>
    <td class="batchpricingheader" colspan="2">&nbsp;<b>OR select a Preconfigured Append<TMPL_UNLESS HIDE_PRICES>(also just $.25)</TMPL_UNLESS>:</b></td>
  </tr>
  <tr>
    <td class="smallfont1" width="50%">
      <input type="checkbox" name="bestaddress" value="1" <TMPL_VAR NAME=bestaddress> onClick="clearaccurintphones(<TMPL_VAR NAME=accurintphones-price>,<TMPL_VAR NAME=accurintphones_relatives-price>);clearbankruptcy(<TMPL_VAR NAME=bankruptciesonly-price>,<TMPL_VAR NAME=includedeceasedbk-price>);clearprop(<TMPL_VAR NAME=includeproperty-price>);checksubtractbase(this,<TMPL_VAR NAME=base-batch-price>);quickpick(1,0,0,<TMPL_VAR NAME=includepaw-price>);check_bestaddress_children();">Output Single Best Address&nbsp;&nbsp;<a href="javascript:void(0);" onClick="var layerfgcolor = get_layer_colors('fgcolor');var layerbgcolor = get_layer_colors('bgcolor');return overlib('<br>Appends to the output record the address where the subject most recently resided. If Give Preference to Verified Address is selected, we will append the most probable current address and phone.<br><br>', CAPTIONSIZE, 2, BORDER, 3, FGCOLOR, layerfgcolor, BGCOLOR, layerbgcolor, CGCOLOR, layerbgcolor, WIDTH, 275, FIXX, 60, FIXY, 380, STICKY, CAPTION, 'Output Single Best Address', CLOSECLICK, CLOSETEXT, '<img border=0 width=16 height=16 alt=\'Close\' title=\'Close\' src=\'<TMPL_VAR NAME=IMGPATH>/closex.gif\'>');"><img src="<TMPL_VAR NAME=IMGPATH>/info.gif" border="0" width="16" height="16"></a>
	<BR>
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="checkbox" name="bestaddressbydate" onClick="check_bestaddress(this, <TMPL_VAR NAME=bankruptciesonly-price>,<TMPL_VAR NAME=includedeceasedbk-price>,<TMPL_VAR NAME=includeproperty-price>,<TMPL_VAR NAME=includepaw-price>);" value="1"<TMPL_UNLESS bestaddressbydate> CHECKED</TMPL_UNLESS>>Give preference to verified addresses
	<!--div class="smallfont1"><img src="<TMPL_VAR NAME=IMGPATH>/star.gif"> To receive updated phones and/or addresses, call Accurint Batch Processing Department at 1-866-277-8407.--><!--
    <td class="smallfont1" valign="top">
      <input type="checkbox" name="reversephones" value="1" <TMPL_VAR NAME=reversephones> onClick="clearaccurintphones(<TMPL_VAR NAME=accurintphones-price>,<TMPL_VAR NAME=accurintphones_relatives-price>);clearbankruptcy(<TMPL_VAR NAME=bankruptciesonly-price>,<TMPL_VAR NAME=includedeceasedbk-price>);clearprop(<TMPL_VAR NAME=includeproperty-price>);checksubtractbase(this,<TMPL_VAR NAME=base-batch-price>);quickpick(2,<TMPL_VAR NAME=includeassociates-price>,<TMPL_VAR NAME=includerelatives-price>,<TMPL_VAR NAME=includepaw-price>,<TMPL_VAR NAME=base-batch-price>);">Reverse Phone Lookup&nbsp;&nbsp;<a href="javascript:void(0);" onClick="var layerfgcolor = get_layer_colors('fgcolor');var layerbgcolor = get_layer_colors('bgcolor');return overlib('<br>Appends to the output record name and address based on the submitted phone number.<br><br>', CAPTIONSIZE, 2, BORDER, 3, FGCOLOR, layerfgcolor, BGCOLOR, layerbgcolor, CGCOLOR, layerbgcolor, WIDTH, 275, FIXX, 360, FIXY, 380, STICKY, CAPTION, 'Reverse Phone Lookup', CLOSECLICK, CLOSETEXT, '<img border=0 width=16 height=16 alt=\'Close\' title=\'Close\' src=\'<TMPL_VAR NAME=IMGPATH>/closex.gif\'>');"><img src="<TMPL_VAR NAME=IMGPATH>/info.gif" border="0" width="16" height="16"></a>
    </td>
  </tr>
  -->
  <!--
  <tr>
    <td width="600" colspan="2"><hr width="600">
  </tr>
  <tr>
    <td class="batchpricingheader" colspan="2">&nbsp;<b>OR <TMPL_IF HIDE_PRICES>Select <TMPL_ELSE>for .25 for </TMPL_IF>all or any subset of the following:</b></td>
  </tr>
  <tr>
    <td class="smallfont1"><input type="checkbox" name="verifyphone" value="1" <TMPL_VAR NAME=verifyphone> onClick="if(!checkallow(this)){return false;};checksubtractbase(this,<TMPL_VAR NAME=base-batch-price>);">Verify Phone Flag&nbsp;&nbsp;<a href="javascript:void(0);" onClick="var layerfgcolor = get_layer_colors('fgcolor');var layerbgcolor = get_layer_colors('bgcolor');return overlib('<br>Appends to the output record a Y (Yes) or N (No) flag, which indicates whether or not the submitted phone is the probable current phone of the subject.<br><br>', CAPTIONSIZE, 2, BORDER, 3, FGCOLOR, layerfgcolor, BGCOLOR, layerbgcolor, CGCOLOR, layerbgcolor, WIDTH, 275, FIXX, 60, FIXY, 205, STICKY, CAPTION, 'Verify Phone Flag', CLOSECLICK, CLOSETEXT, '<img border=0 width=16 height=16 alt=\'Close\' title=\'Close\' src=\'<TMPL_VAR NAME=IMGPATH>/closex.gif\'>');"><img src="<TMPL_VAR NAME=IMGPATH>/info.gif" border="0" width="16" height="16"></a></td>
    <td class="smallfont1"><input type="checkbox" name="includeaka" value="1" <TMPL_VAR NAME=includeaka> onClick="if(!checkallow(this)){return false;};checksubtractbase(this,<TMPL_VAR NAME=base-batch-price>);">AKA, DOB&nbsp;&nbsp;<a href="javascript:void(0);" onClick="var layerfgcolor = get_layer_colors('fgcolor');var layerbgcolor = get_layer_colors('bgcolor');return overlib('<br>Appends to the output record any other name associated with the subject and their date of birth. Other names may include maiden name, previous married name, junior and senior designations and variations of first names.<br><br>', CAPTIONSIZE, 2, BORDER, 3, FGCOLOR, layerfgcolor, BGCOLOR, layerbgcolor, CGCOLOR, layerbgcolor, WIDTH, 275, FIXX, 360, FIXY, 205, STICKY, CAPTION, 'AKA, DOB', CLOSECLICK, CLOSETEXT, '<img border=0 width=16 height=16 alt=\'Close\' title=\'Close\' src=\'<TMPL_VAR NAME=IMGPATH>/closex.gif\'>');"><img src="<TMPL_VAR NAME=IMGPATH>/info.gif" border="0" width="16" height="16"></a></td>
  </tr>
  <tr>
    <td class="smallfont1"><input type="checkbox" name="verifyaddress" value="1" <TMPL_VAR NAME=verifyaddress> onClick="if(!checkallow(this)){return false;};checksubtractbase(this,<TMPL_VAR NAME=base-batch-price>);">Verify Address Flag&nbsp;&nbsp;<a href="javascript:void(0);" onClick="var layerfgcolor = get_layer_colors('fgcolor');var layerbgcolor = get_layer_colors('bgcolor');return overlib('<br>Appends to the output record a Y (Yes) or N (No) flag, which indicates whether or not the submitted address is the probable current address of the subject.<br><br>', CAPTIONSIZE, 2, BORDER, 3, FGCOLOR, layerfgcolor, BGCOLOR, layerbgcolor, CGCOLOR, layerbgcolor, WIDTH, 275, FIXX, 60, FIXY, 205, STICKY, CAPTION, 'Verify Address Flag', CLOSECLICK, CLOSETEXT, '<img border=0 width=16 height=16 alt=\'Close\' title=\'Close\' src=\'<TMPL_VAR NAME=IMGPATH>/closex.gif\'>');"><img src="<TMPL_VAR NAME=IMGPATH>/info.gif" border="0" width="16" height="16"></a></td>
    <td class="smallfont1"><input type="checkbox" name="includephonelisting" value="1" <TMPL_VAR NAME=includephonelisting> onClick="if(!checkallow(this)){return false;};checksubtractbase(this,<TMPL_VAR NAME=base-batch-price>);">Listing Name of Phone Number&nbsp;&nbsp;<a href="javascript:void(0);" onClick="var layerfgcolor = get_layer_colors('fgcolor');var layerbgcolor = get_layer_colors('bgcolor');return overlib('<br>Appends to the output record the listing name(s) associated with a phone at the subject\'s probable current address.<br><br>', CAPTIONSIZE, 2, BORDER, 3, FGCOLOR, layerfgcolor, BGCOLOR, layerbgcolor, CGCOLOR, layerbgcolor, WIDTH, 275, FIXX, 60, FIXY, 205, STICKY, CAPTION, 'Listing Name of Phone Number', CLOSECLICK, CLOSETEXT, '<img border=0 width=16 height=16 alt=\'Close\' title=\'Close\' src=\'<TMPL_VAR NAME=IMGPATH>/closex.gif\'>');"><img src="<TMPL_VAR NAME=IMGPATH>/info.gif" border="0" width="16" height="16"></a></td>
  </tr>
  <tr>
    <td class="smallfont1" valign="top"><input type="checkbox" name="includedeceased" value="1" <TMPL_VAR NAME=includedeceased> onClick="if(!checkallow(this)){return false;};checksubtractbase(this,<TMPL_VAR NAME=base-batch-price>);">Deceased Date&nbsp;&nbsp;<a href="javascript:void(0);" onClick="var layerfgcolor = get_layer_colors('fgcolor');var layerbgcolor = get_layer_colors('bgcolor');return overlib('<br>Appends to the output record an N (not deceased) flag in the case where the subject is not reported as deceased. If the subject is reported as deceased, the date of death appears in the field with the following date format YYYYMMDD.<br><br>', CAPTIONSIZE, 2, BORDER, 3, FGCOLOR, layerfgcolor, BGCOLOR, layerbgcolor, CGCOLOR, layerbgcolor, WIDTH, 275, FIXX, 60, FIXY, 205, STICKY, CAPTION, 'Deceased Date', CLOSECLICK, CLOSETEXT, '<img border=0 width=16 height=16 alt=\'Close\' title=\'Close\' src=\'<TMPL_VAR NAME=IMGPATH>/closex.gif\'>');"><img src="<TMPL_VAR NAME=IMGPATH>/info.gif" border="0" width="16" height="16"></a></td>
    <td class="smallfont1"><input type="checkbox" name="includeimposters" value="1" <TMPL_VAR NAME=includeimposters> onClick="if(!checkallow(this)){return false;};checksubtractbase(this,<TMPL_VAR NAME=base-batch-price>);">Others Using Social Security Number&nbsp;&nbsp;<a href="javascript:void(0);" onClick="var layerfgcolor = get_layer_colors('fgcolor');var layerbgcolor = get_layer_colors('bgcolor');return overlib('<br>Appends to the output record the names of other people who are in some way associated with the subject\'s Social Security Number. NOTE: In many cases the other persons associated with the SSN is the result of clerical keying errors and DOES NOT usually indicate any type of fraud or deception.<br><br>', CAPTIONSIZE, 2, BORDER, 3, FGCOLOR, layerfgcolor, BGCOLOR, layerbgcolor, CGCOLOR, layerbgcolor, WIDTH, 275, FIXX, 360, FIXY, 205, STICKY, CAPTION, 'Others Using Social Security Number', CLOSECLICK, CLOSETEXT, '<img border=0 width=16 height=16 alt=\'Close\' title=\'Close\' src=\'<TMPL_VAR NAME=IMGPATH>/closex.gif\'>');"><img src="<TMPL_VAR NAME=IMGPATH>/info.gif" border="0" width="16" height="16"></a></td>
  </tr>
  <tr>
    <td class="smallfont1"><input type="checkbox" name="includesubjectaddress" value="1" <TMPL_VAR NAME=includesubjectaddress> onClick="if(!checkallow(this)){return false;};checkphones();checksubtractbase(this,<TMPL_VAR NAME=base-batch-price>);">Active Addresses for Subject&nbsp;&nbsp;<a href="javascript:void(0);" onClick="var layerfgcolor = get_layer_colors('fgcolor');var layerbgcolor = get_layer_colors('bgcolor');return overlib('<br>Appends to the output record with up to three (3) probable current addresses for the subject and the name associated with each respective address.<br><br>', CAPTIONSIZE, 2, BORDER, 3, FGCOLOR, layerfgcolor, BGCOLOR, layerbgcolor, CGCOLOR, layerbgcolor, WIDTH, 275, FIXX, 60, FIXY, 205, STICKY, CAPTION, 'Active Addresses for Subject', CLOSECLICK, CLOSETEXT, '<img border=0 width=16 height=16 alt=\'Close\' title=\'Close\' src=\'<TMPL_VAR NAME=IMGPATH>/closex.gif\'>');"><img src="<TMPL_VAR NAME=IMGPATH>/info.gif" border="0" width="16" height="16"></a></td>
    <td class="smallfont1"><input type="checkbox" name="includecharge" value="1" <TMPL_VAR NAME=includecharge> onClick="if(!checkallow(this)){return false;};checksubtractbase(this,<TMPL_VAR NAME=base-batch-price>);">Charge Indicator&nbsp;&nbsp;<a href="javascript:void(0);" onClick="var layerfgcolor = get_layer_colors('fgcolor');var layerbgcolor = get_layer_colors('bgcolor');return overlib('<br>Appends to the output record a Y (Yes) or N (No) flag indicating whether appended information generated a billable charge.<br><br>', CAPTIONSIZE, 2, BORDER, 3, FGCOLOR, layerfgcolor, BGCOLOR, layerbgcolor, CGCOLOR, layerbgcolor, WIDTH, 275, FIXX, 360, FIXY, 205, STICKY, CAPTION, 'Charge Indicator', CLOSECLICK, CLOSETEXT, '<img border=0 width=16 height=16 alt=\'Close\' title=\'Close\' src=\'<TMPL_VAR NAME=IMGPATH>/closex.gif\'>');"><img src="<TMPL_VAR NAME=IMGPATH>/info.gif" border="0" width="16" height="16"></a></td>
  </tr>
  <tr>
    <td class="smallfont1"><input type="checkbox" name="includesubjectphone" value="1" <TMPL_VAR NAME=includesubjectphone> onClick="if(!checkallow(this)){return false;};checkaddress();checksubtractbase(this,<TMPL_VAR NAME=base-batch-price>);">Active Phones for Subject&nbsp;&nbsp;<a href="javascript:void(0);" onClick="var layerfgcolor = get_layer_colors('fgcolor');var layerbgcolor = get_layer_colors('bgcolor');return overlib('<br>Appends to the output record with up to three (3) active phone numbers for the subject.<br><br>', CAPTIONSIZE, 2, BORDER, 3, FGCOLOR, layerfgcolor, BGCOLOR, layerbgcolor, CGCOLOR, layerbgcolor, WIDTH, 275, FIXX, 60, FIXY, 205, STICKY, CAPTION, 'Active Phones for Subject', CLOSECLICK, CLOSETEXT, '<img border=0 width=16 height=16 alt=\'Close\' title=\'Close\' src=\'<TMPL_VAR NAME=IMGPATH>/closex.gif\'>');"><img src="<TMPL_VAR NAME=IMGPATH>/info.gif" border="0" width="16" height="16"></a></td>
    <td class="smallfont1"><input type="checkbox" name="includeprevious" value="1" <TMPL_VAR NAME=includeprevious> onClick="if(!checkallow(this)){return false;};setincldates();checksubtractbase(this,<TMPL_VAR NAME=base-batch-price>);">Previous/Unverified Addresses&nbsp;&nbsp;<a href="javascript:void(0);" onClick="var layerfgcolor = get_layer_colors('fgcolor');var layerbgcolor = get_layer_colors('bgcolor');return overlib('<br>Appends to the output record with up to five (5) historical addresses for the subject.<br><br>', CAPTIONSIZE, 2, BORDER, 3, FGCOLOR, layerfgcolor, BGCOLOR, layerbgcolor, CGCOLOR, layerbgcolor, WIDTH, 275, FIXX, 360, FIXY, 205, STICKY, CAPTION, 'Previous/Unverified Addresses', CLOSECLICK, CLOSETEXT, '<img border=0 width=16 height=16 alt=\'Close\' title=\'Close\' src=\'<TMPL_VAR NAME=IMGPATH>/closex.gif\'>');"><img src="<TMPL_VAR NAME=IMGPATH>/info.gif" border="0" width="16" height="16"></a></td>
  </tr>
  <tr>
    <td class="smallfont1" valign="top">
    &nbsp;<select name="subjectaddresscount" onChange="if(!checkallow(this)){return false;};changeaddresscount()">
    <TMPL_IF BATCH_ADMIN>
    <option value="0"<TMPL_IF NAME="subjectaddresscount-0"> SELECTED</TMPL_IF>>0</option>
    </TMPL_IF>
    <option value="1"<TMPL_IF NAME="subjectaddresscount-1"> SELECTED</TMPL_IF>>1</option>
    <option value="2"<TMPL_IF NAME="subjectaddresscount-2"> SELECTED</TMPL_IF>>2</option>
    <option value="3"<TMPL_IF NAME="subjectaddresscount-3"> SELECTED</TMPL_IF>>3</option>
    </select>
        Number of Active Subject Addresses/Phones&nbsp;&nbsp;<a href="javascript:void(0);" onClick="var layerfgcolor = get_layer_colors('fgcolor');var layerbgcolor = get_layer_colors('bgcolor');return overlib('<br>The maximum number (up to 3) of probable current addresses and probable current phone numbers to be appended to each subject\'s record.<br><br>', CAPTIONSIZE, 2, BORDER, 3, FGCOLOR, layerfgcolor, BGCOLOR, layerbgcolor, CGCOLOR, layerbgcolor, WIDTH, 275, FIXX, 60, FIXY, 205, STICKY, CAPTION, 'Number of Active Subject Addresses/Phones', CLOSECLICK, CLOSETEXT, '<img border=0 width=16 height=16 alt=\'Close\' title=\'Close\' src=\'<TMPL_VAR NAME=IMGPATH>/closex.gif\'>');"><img src="<TMPL_VAR NAME=IMGPATH>/info.gif" border="0" width="16" height="16"></a>
    </td>
    <td class="smallfont1" valign="top" <TMPL_IF BATCH_ADMIN><TMPL_IF SSN_MASK_NONE>rowspan="2"</TMPL_IF></TMPL_IF>>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="checkbox" name="includedates" value="1" <TMPL_VAR NAME=includedates> onClick="if(!checkallow(this)){return false;};checksubtractbase(this,<TMPL_VAR NAME=base-batch-price>);setprevadd()">Include Dates on Prior Addresses&nbsp;&nbsp;<a href="javascript:void(0);" onClick="var layerfgcolor = get_layer_colors('fgcolor');var layerbgcolor = get_layer_colors('bgcolor');return overlib('<br>Appends to the output record approximate dates when subject may have resided at the respective historical addresses.<br><br>', CAPTIONSIZE, 2, BORDER, 3, FGCOLOR, layerfgcolor, BGCOLOR, layerbgcolor, CGCOLOR, layerbgcolor, WIDTH, 275, FIXX, 360, FIXY, 205, STICKY, CAPTION, 'Include Dates on Prior Addresses', CLOSECLICK, CLOSETEXT, '<img border=0 width=16 height=16 alt=\'Close\' title=\'Close\' src=\'<TMPL_VAR NAME=IMGPATH>/closex.gif\'>');"><img src="<TMPL_VAR NAME=IMGPATH>/info.gif" border="0" width="16" height="16"></a>
        <TMPL_IF BATCH_ADMIN>
        <BR>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="checkbox" name="includepreviousphones" value="1" <TMPL_VAR NAME=includepreviousphones> onClick="if(!checkallow(this)){return false;};checksubtractbase(this,<TMPL_VAR NAME=base-batch-price>);setprevadd();">Include Phones on Prior Addresses&nbsp;&nbsp;<a href="javascript:void(0);" onClick="var layerfgcolor = get_layer_colors('fgcolor');var layerbgcolor = get_layer_colors('bgcolor');return overlib('<br>Appends to the output record phone numbers the subject may have had at the respective historical addresses.<br><br>', CAPTIONSIZE, 2, BORDER, 3, FGCOLOR, layerfgcolor, BGCOLOR, layerbgcolor, CGCOLOR, layerbgcolor, WIDTH, 275, FIXX, 360, FIXY, 205, STICKY, CAPTION, 'Include Phones on Prior Addresses', CLOSECLICK, CLOSETEXT, '<img border=0 width=16 height=16 alt=\'Close\' title=\'Close\' src=\'<TMPL_VAR NAME=IMGPATH>/closex.gif\'>');"><img src="<TMPL_VAR NAME=IMGPATH>/info.gif" border="0" width="16" height="16"></a>
        </TMPL_IF>
        </td>
        </td>
  </tr>
  <TMPL_IF NAME="SSN_MASK_NONE">
  <tr>
    <td class="smallfont1" valign="top"><input type="checkbox" name="bestssn" value="1" <TMPL_VAR NAME=bestssn> onClick="if(!checkallow(this)){return false;};checksubtractbase(this,<TMPL_VAR NAME=base-batch-price>);">Best SSN&nbsp;&nbsp;<a href="javascript:void(0);" onClick="var layerfgcolor = get_layer_colors('fgcolor');var layerbgcolor = get_layer_colors('bgcolor');return overlib('<br>Appends to the output the Best SSN for a given Name/Address. Accurint determines a &quot;Best SSN&quot; by searching its billions of records for the most frequently found SSN for the given person.  <br><br>', CAPTIONSIZE, 2, BORDER, 3, FGCOLOR, layerfgcolor, BGCOLOR, layerbgcolor, CGCOLOR, layerbgcolor, WIDTH, 275, FIXX, 360, FIXY, 205, STICKY, CAPTION, 'Best SSN', CLOSECLICK, CLOSETEXT, '<img border=0 width=16 height=16 alt=\'Close\' title=\'Close\' src=\'<TMPL_VAR NAME=IMGPATH>/closex.gif\'>');"><img src="<TMPL_VAR NAME=IMGPATH>/info.gif" border="0" width="16" height="16"></a></td>
  </tr>
  </TMPL_IF>
  -->
</table>
    </td>
  </tr>

</table>

<br>

<table border="1" cellpadding="0" cellspacing="0" width="604" bordercolor="#000000">
  <tr>
    <td>
    <table border="0" cellpadding="2" cellspacing="0" width="604">
  <tr>
    <td class="batchpricingheader" colspan="2">&nbsp;<b>OR Choose one of the following Special Batch Options:</b></td>
  </tr>
  <tr>
    <td colspan="2" class="smallfont1"><input type="checkbox" name="includeproperty" value="1" <TMPL_VAR NAME=includeproperty> onClick="clearaccurintphones(<TMPL_VAR NAME=accurintphones-price>,<TMPL_VAR NAME=accurintphones_relatives-price>);clearbankruptcy(<TMPL_VAR NAME=bankruptciesonly-price>,<TMPL_VAR NAME=includedeceasedbk-price>);checksubtractbase(this,<TMPL_VAR NAME=base-batch-price>);quickpick(3,<TMPL_VAR NAME=includeassociates-price>,<TMPL_VAR NAME=includerelatives-price>,<TMPL_VAR NAME=includepaw-price>,<TMPL_VAR NAME=base-batch-price>);change_total(this, <TMPL_VAR NAME=includeproperty-price>,document.forms[0].BATCH_TOTAL,document.forms[0].BATCH_PRE_TOTAL)">Add Up to Five Properties owned by the subject<TMPL_UNLESS HIDE_PRICES> for only a <b>$1.00</b> per record match</TMPL_UNLESS>&nbsp;&nbsp;<a href="javascript:void(0);" onClick="var layerfgcolor = get_layer_colors('fgcolor');var layerbgcolor = get_layer_colors('bgcolor');return overlib('<br>Appends to the output record property deed and assessment information on up to five (5) properties owned by the subject. Fields returned: parcel number, name owner 1, name owner 2, property address, property city, property state, property zip, total value, sale date, sale price, name seller, mortgage amount, assessed value, total market value, legal description..<br><br>', CAPTIONSIZE, 2, BORDER, 3, FGCOLOR, layerfgcolor, BGCOLOR, layerbgcolor, CGCOLOR, layerbgcolor, WIDTH, 275, FIXX, 360, FIXY, 280, STICKY, CAPTION, 'Properties Owned By Subject', CLOSECLICK, CLOSETEXT, '<img border=0 width=16 height=16 alt=\'Close\' title=\'Close\' src=\'<TMPL_VAR NAME=IMGPATH>/closex.gif\'>');"><img src="<TMPL_VAR NAME=IMGPATH>/info.gif" border="0" width="16" height="16"></a></td>
  </tr>
  <!--
  <tr>
    <td colspan="2" class="smallfont1"><input type="checkbox" name="bankruptciesonly" value="1" <TMPL_VAR NAME=bankruptciesonly> onClick="subtractdeceased(<TMPL_VAR NAME=includedeceasedbk-price>);clearaccurintphones(<TMPL_VAR NAME=accurintphones-price>,<TMPL_VAR NAME=accurintphones_relatives-price>);clearprop(<TMPL_VAR NAME=includeproperty-price>);checksubtractbase(this,<TMPL_VAR NAME=base-batch-price>);quickpick(4,<TMPL_VAR NAME=includeassociates-price>,<TMPL_VAR NAME=includerelatives-price>,<TMPL_VAR NAME=includepaw-price>,<TMPL_VAR NAME=base-batch-price>);change_total(this, <TMPL_VAR NAME=bankruptciesonly-price>,document.forms[0].BATCH_TOTAL,document.forms[0].BATCH_PRE_TOTAL)">Add Bankruptcy Data for subjects<TMPL_UNLESS HIDE_PRICES> for only <b>$0.25</b> per record</TMPL_UNLESS>&nbsp;&nbsp;<a href="javascript:void(0);" onClick="var layerfgcolor = get_layer_colors('fgcolor');var layerbgcolor = get_layer_colors('bgcolor');return overlib('<br>Appends to the output record the most recent bankruptcy for each subject.  Fields returned:  Court code, record type, case number, date filed, filing type, date disposed, subject (last name, first name, middle name, name suffix), SSN, company name, AKAs (last name, first name, middle name, address, city, state, zip), spouse (last name, first name, middle name, suffix, SSN, address, city, state, zip), judge, filing type, liabilities, assets, exemptions, asset indicator, pro se, attorney (name, address, city, state, zip, phone), trustee (name, address, city, state, zip, phone), meeting date, meeting time, meeting address, city, state, zip.<br><br>', CAPTIONSIZE, 2, BORDER, 3, FGCOLOR, layerfgcolor, BGCOLOR, layerbgcolor, CGCOLOR, layerbgcolor, WIDTH, 275, FIXX, 360, FIXY, 280, STICKY, CAPTION, 'Add Bankruptcy Data', CLOSECLICK, CLOSETEXT, '<img border=0 width=16 height=16 alt=\'Close\' title=\'Close\' src=\'<TMPL_VAR NAME=IMGPATH>/closex.gif\'>');"><img src="<TMPL_VAR NAME=IMGPATH>/info.gif" border="0" width="16" height="16"></a> 
	&nbsp;&nbsp;Search Filings From 
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
    <td colspan="2" class="smallfont1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="checkbox" name="includedeceasedbk" value="1" <TMPL_VAR NAME=includedeceasedbk> onClick="clearaccurintphones(<TMPL_VAR NAME=accurintphones-price>,<TMPL_VAR NAME=accurintphones_relatives-price>);clearprop(<TMPL_VAR NAME=includeproperty-price>);checksubtractbase(this,<TMPL_VAR NAME=base-batch-price>);calcbankruptcydeceased(<TMPL_VAR NAME=bankruptciesonly-price>,this,<TMPL_VAR NAME=includedeceasedbk-price>,<TMPL_VAR NAME=includeassociates-price>,<TMPL_VAR NAME=includerelatives-price>,<TMPL_VAR NAME=includepaw-price>);">Add Deceased Date to Bankruptcy Data<TMPL_UNLESS HIDE_PRICES> for additional <b>$0.25</b> per record match</TMPL_UNLESS>&nbsp;&nbsp;<a href="javascript:void(0);" onClick="var layerfgcolor = get_layer_colors('fgcolor');var layerbgcolor = get_layer_colors('bgcolor');return overlib('<br>Appends to the output record the deceased date (if one exists) as well as the most recent bankruptcy for each subject. Fields returned: Deceased, court code, record type, case number, date filed, filing type, date disposed, subject (last name, first name, middle name, name suffix), SSN, company name, AKAs (last name, first name, middle name, address, city, state, zip), spouse (last name, first name, middle name, suffix, SSN, address, city, state, zip), judge, filing type, liabilities, assets, exemptions, asset indicator, pro se, attorney (name, address, city, state, zip, phone), trustee (name, address, city, state, zip, phone), meeting date, meeting time, meeting address, city, state, zip.<br><br>', CAPTIONSIZE, 2, BORDER, 3, FGCOLOR, layerfgcolor, BGCOLOR, layerbgcolor, CGCOLOR, layerbgcolor, WIDTH, 275, FIXX, 360, FIXY, 280, STICKY, CAPTION, 'Deceased Date', CLOSECLICK, CLOSETEXT, '<img border=0 width=16 height=16 alt=\'Close\' title=\'Close\' src=\'<TMPL_VAR NAME=IMGPATH>/closex.gif\'>');"><img src="<TMPL_VAR NAME=IMGPATH>/info.gif" border="0" width="16" height="16"></a></td>
  </tr>

<TMPL_IF BATCH_ADMIN>
  <tr>
    <td colspan="2" class="smallfont1"><input type="checkbox" name="didonly" value="1" <TMPL_VAR NAME=didonly> onClick="clearaccurintphones(<TMPL_VAR NAME=accurintphones-price>,<TMPL_VAR NAME=accurintphones_relatives-price>);clearbankruptcy(<TMPL_VAR NAME=bankruptciesonly-price>,<TMPL_VAR NAME=includedeceasedbk-price>);clearprop(<TMPL_VAR NAME=includeproperty-price>);checksubtractbase(this,<TMPL_VAR NAME=base-batch-price>);quickpick(6,<TMPL_VAR NAME=includeassociates-price>,<TMPL_VAR NAME=includerelatives-price>,<TMPL_VAR NAME=includepaw-price>,<TMPL_VAR NAME=base-batch-price>);change_total(this, <TMPL_VAR NAME=didonly-price>,document.forms[0].BATCH_TOTAL,document.forms[0].BATCH_PRE_TOTAL)">DID Only&nbsp;&nbsp;<a href="javascript:void(0);" onClick="var layerfgcolor = get_layer_colors('fgcolor');var layerbgcolor = get_layer_colors('bgcolor');return overlib('<br>DID ONLY TEXT HERE.<br><br>', CAPTIONSIZE, 2, BORDER, 3, FGCOLOR, layerfgcolor, BGCOLOR, layerbgcolor, CGCOLOR, layerbgcolor, WIDTH, 275, FIXX, 160, FIXY, 480, STICKY, CAPTION, 'DID Only', CLOSECLICK, CLOSETEXT, '<img border=0 width=16 height=16 alt=\'Close\' title=\'Close\' src=\'<TMPL_VAR NAME=IMGPATH>/closex.gif\'>');"><img src="<TMPL_VAR NAME=IMGPATH>/info.gif" border="0" width="16" height="16"></a></td>
  </tr>
</TMPL_IF>

  <tr>
    <td colspan="2" class="smallfont1"><input type="checkbox" name="accurintphones" value="1" <TMPL_VAR NAME=accurintphones> onClick="clearbankruptcy(<TMPL_VAR NAME=bankruptciesonly-price>,<TMPL_VAR NAME=includedeceasedbk-price>);subtractaccurintphones_children(<TMPL_VAR NAME=accurintphones_relatives-price>);clearprop(<TMPL_VAR NAME=includeproperty-price>);checksubtractbase(this,<TMPL_VAR NAME=base-batch-price>);quickpick(7,<TMPL_VAR NAME=includeassociates-price>,<TMPL_VAR NAME=includerelatives-price>,<TMPL_VAR NAME=includepaw-price>,<TMPL_VAR NAME=base-batch-price>);change_total(this, <TMPL_VAR NAME=accurintphones-price>,document.forms[0].BATCH_TOTAL,document.forms[0].BATCH_PRE_TOTAL)">Accurint Phones Verified<TMPL_UNLESS HIDE_PRICES> - $0.25 per record match.  </TMPL_UNLESS>&nbsp;&nbsp;<a href="javascript:void(0);" onClick="var layerfgcolor = get_layer_colors('fgcolor');var layerbgcolor = get_layer_colors('bgcolor');return overlib('<br>Outputs names, phones, listing name, date first seen and date last seen for up to 3 verified entries matching the input data.  The subject phone(s) will be deduped against the supplied phone number.<br><br>', CAPTIONSIZE, 2, BORDER, 3, FGCOLOR, layerfgcolor, BGCOLOR, layerbgcolor, CGCOLOR, layerbgcolor, WIDTH, 275, FIXX, 360, FIXY, 380, STICKY, CAPTION, 'Accurint Phones - Verified', CLOSECLICK, CLOSETEXT, '<img border=0 width=16 height=16 alt=\'Close\' title=\'Close\' src=\'<TMPL_VAR NAME=IMGPATH>/closex.gif\'>');"><img src="<TMPL_VAR NAME=IMGPATH>/info.gif" border="0" width="16" height="16"></a> 
	</td>
  </tr>
  <tr>
    <td colspan="2" class="smallfont1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="checkbox" name="accurintphones_relatives" value="1" <TMPL_VAR NAME=accurintphones_relatives> onClick="clearbankruptcy(<TMPL_VAR NAME=bankruptciesonly-price>,<TMPL_VAR NAME=includedeceasedbk-price>);clearprop(<TMPL_VAR NAME=includeproperty-price>);checksubtractbase(this,<TMPL_VAR NAME=base-batch-price>);calcaccurintphones_relatives(<TMPL_VAR NAME=accurintphones-price>,this,<TMPL_VAR NAME=accurintphones_relatives-price>,<TMPL_VAR NAME=includeassociates-price>,<TMPL_VAR NAME=includerelatives-price>,<TMPL_VAR NAME=includepaw-price>);">Add Relatives and Associates Phones<TMPL_UNLESS HIDE_PRICES> for an additional $0.50 per record match.</TMPL_UNLESS>&nbsp;&nbsp;<a href="javascript:void(0);" onClick="var layerfgcolor = get_layer_colors('fgcolor');var layerbgcolor = get_layer_colors('bgcolor');return overlib('<br>Adds up to 6 relatives and 3 associates (name and phone) to the standard Accurint Phones output.  These phone numbers are not deduped.<br><br>', CAPTIONSIZE, 2, BORDER, 3, FGCOLOR, layerfgcolor, BGCOLOR, layerbgcolor, CGCOLOR, layerbgcolor, WIDTH, 275, FIXX, 360, FIXY, 380, STICKY, CAPTION, 'Accurint Phones - Add Relatives and Associates Phones', CLOSECLICK, CLOSETEXT, '<img border=0 width=16 height=16 alt=\'Close\' title=\'Close\' src=\'<TMPL_VAR NAME=IMGPATH>/closex.gif\'>');"><img src="<TMPL_VAR NAME=IMGPATH>/info.gif" border="0" width="16" height="16"></a></td>
  </tr>
  <tr>
    <td colspan="2" class="smallfont1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="checkbox" name="accurintphones_previous" value="1" <TMPL_VAR NAME=accurintphones_previous> onClick="clearbankruptcy(<TMPL_VAR NAME=bankruptciesonly-price>,<TMPL_VAR NAME=includedeceasedbk-price>);clearprop(<TMPL_VAR NAME=includeproperty-price>);checksubtractbase(this,<TMPL_VAR NAME=base-batch-price>);calcaccurintphones_previous(<TMPL_VAR NAME=accurintphones-price>,this,0.00,<TMPL_VAR NAME=includeassociates-price>,<TMPL_VAR NAME=includerelatives-price>,<TMPL_VAR NAME=includepaw-price>);">Add Previous/Unverified Phones<TMPL_UNLESS HIDE_PRICES> at no additional charge</TMPL_UNLESS>&nbsp;&nbsp;<a href="javascript:void(0);" onClick="var layerfgcolor = get_layer_colors('fgcolor');var layerbgcolor = get_layer_colors('bgcolor');return overlib('<br>Adds up to 5 previous/unverified names, phones, date first seen and date last seen to the standard Accurint Phones output.  These phone numbers are not deduped.  There is no additional charge for this option.<br><br>', CAPTIONSIZE, 2, BORDER, 3, FGCOLOR, layerfgcolor, BGCOLOR, layerbgcolor, CGCOLOR, layerbgcolor, WIDTH, 275, FIXX, 360, FIXY, 380, STICKY, CAPTION, 'Accurint Phones - Add Previous/Unverified Phones', CLOSECLICK, CLOSETEXT, '<img border=0 width=16 height=16 alt=\'Close\' title=\'Close\' src=\'<TMPL_VAR NAME=IMGPATH>/closex.gif\'>');"><img src="<TMPL_VAR NAME=IMGPATH>/info.gif" border="0" width="16" height="16"></a></td>
  </tr>
  -->
</table>
    </td>
  </tr>
</table>
<br>
<!--
<table border="1" cellpadding="0" cellspacing="0" width="604" bordercolor="#000000">
  <tr>
    <td>
    <table border="0" cellpadding="2" cellspacing="0" width="604">
      <tr>
        <td class="batchpricingheader">&nbsp;<b>Special Value Offer:</b></td>
      </tr>
      <tr>
        <td class="smallfont1"><input type="checkbox" name="optionalrelatives" value="1" <TMPL_VAR NAME=optionalrelatives> onClick="if(!checkallow(this)){return false;};setposrel(<TMPL_VAR NAME=includerelatives-price>)">Add Up to Six Relatives<TMPL_UNLESS HIDE_PRICES> for <b>$1.00</b></TMPL_UNLESS>, Only When no Active Address/Phone Exists per Subject&nbsp;&nbsp;<a href="javascript:void(0);" onClick="var layerfgcolor = get_layer_colors('fgcolor');var layerbgcolor = get_layer_colors('bgcolor');return overlib('<br>Appends to the output record verified first degree relative information for subjects who\'s submitted information did not generate a probable current address or phone number.<br><br>', CAPTIONSIZE, 2, BORDER, 3, FGCOLOR, layerfgcolor, BGCOLOR, layerbgcolor, CGCOLOR, layerbgcolor, WIDTH, 275, FIXX, 360, FIXY, 420, STICKY, CAPTION, 'Special Value Offer', CLOSECLICK, CLOSETEXT, '<img border=0 width=16 height=16 alt=\'Close\' title=\'Close\' src=\'<TMPL_VAR NAME=IMGPATH>/closex.gif\'>');"><img src="<TMPL_VAR NAME=IMGPATH>/info.gif" border="0" width="16" height="16"></a></td>
      </tr>
    </table>
    </td>
  </tr>
</table>

<br>

<table border="1" cellpadding="0" cellspacing="0" width="604" bordercolor="#000000">
  <tr>
    <td>
    <table border="0" cellpadding="2" cellspacing="0" width="604">
      <tr>
        <td class="batchpricingheader">&nbsp;<b>People At Work Services:</b></td>
      </tr>
      <tr>
        <td class="smallfont1"><input type="checkbox" name="includepaw" value="1" <TMPL_VAR NAME=includepaw> onClick="if(!checkallow(this)){return false;} checksubtractbase(this,<TMPL_VAR NAME=base-batch-price>); change_total(this, <TMPL_VAR NAME=includepaw-price>,document.forms[0].BATCH_TOTAL,document.forms[0].BATCH_PRE_TOTAL);">Add People At Work Lookup<TMPL_UNLESS HIDE_PRICES> for <b>$1.00</b> per record match.</TMPL_UNLESS>&nbsp;&nbsp;<a href="javascript:void(0);" onClick="var layerfgcolor = get_layer_colors('fgcolor');var layerbgcolor = get_layer_colors('bgcolor');return overlib('<br>Appends to the output record People At Work information (Name, Title, SSN, Company, Address, Phone Number, a date range and confidence level) for the subject.<br><br>', CAPTIONSIZE, 2, BORDER, 3, FGCOLOR, layerfgcolor, BGCOLOR, layerbgcolor, CGCOLOR, layerbgcolor, WIDTH, 275, FIXX, 360, FIXY, 420, STICKY, CAPTION, 'People At Work Services', CLOSECLICK, CLOSETEXT, '<img border=0 width=16 height=16 alt=\'Close\' title=\'Close\' src=\'<TMPL_VAR NAME=IMGPATH>/closex.gif\'>');"><img src="<TMPL_VAR NAME=IMGPATH>/info.gif" border="0" width="16" height="16"></a>&nbsp;&nbsp;Number of Listings:<select name="paw_count"><script language="javascript">var defsel=3;var sel = new Array();sel[defsel]="selected";for(var i=1;i<=5;i++){document.write("<option "+sel[i]+" value='"+i+"'>"+i+"\n");}</script></td>
      </tr>
    </table>
    </td>
  </tr>
</table>

<br>
--> 

<table border="0" cellpadding="0" cellspacing="0" width="608">
  <tr>
    <td width="304" valign="top">
    
    <!--
    <table border="1" cellpadding="0" cellspacing="0" width="300" bordercolor="#000000">
      <tr>
        <td>
        <table border="0" cellpadding="2" cellspacing="0">
          <tr>
            <td class="batchpricingheader">&nbsp;<b><TMPL_UNLESS HIDE_PRICES>$1.00 for each selection<TMPL_ELSE>Extra Selections</TMPL_UNLESS></b></td>
          </tr>
          <tr>
            <td class="smallfont1"><input type="checkbox" name="includeassociates" value="1" <TMPL_VAR NAME=includeassociates> onClick="clearprop(<TMPL_VAR NAME=includeproperty-price>);clearreverse();clearaccurintphones(<TMPL_VAR NAME=accurintphones-price>,<TMPL_VAR NAME=accurintphones_relatives-price>);clearbankruptcy(<TMPL_VAR NAME=bankruptciesonly-price>,<TMPL_VAR NAME=includedeceasedbk-price>);change_total(this, <TMPL_VAR NAME=includeassociates-price>,document.forms[0].BATCH_TOTAL,document.forms[0].BATCH_PRE_TOTAL)">Possible Associates&nbsp;&nbsp;<a href="javascript:void(0);" onClick="var layerfgcolor = get_layer_colors('fgcolor');var layerbgcolor = get_layer_colors('bgcolor');return overlib('<br>Appends to the output record names of people possibly associated with the subject.<br><br>', CAPTIONSIZE, 2, BORDER, 3, FGCOLOR, layerfgcolor, BGCOLOR, layerbgcolor, CGCOLOR, layerbgcolor, WIDTH, 275, FIXX, 60, FIXY, 455, STICKY, CAPTION, 'Possible Associates', CLOSECLICK, CLOSETEXT, '<img border=0 width=16 height=16 alt=\'Close\' title=\'Close\' src=\'<TMPL_VAR NAME=IMGPATH>/closex.gif\'>');"><img src="<TMPL_VAR NAME=IMGPATH>/info.gif" border="0" width="16" height="16"></a></td>
          </tr>
          <tr>
            <td class="smallfont1"><input type="checkbox" name="includerelatives" value="1" <TMPL_VAR NAME=includerelatives> onClick="clearprop(<TMPL_VAR NAME=includeproperty-price>);clearreverse();clearaccurintphones(<TMPL_VAR NAME=accurintphones-price>,<TMPL_VAR NAME=accurintphones_relatives-price>);clearbankruptcy(<TMPL_VAR NAME=bankruptciesonly-price>,<TMPL_VAR NAME=includedeceasedbk-price>);clearoptrel();change_total(this, <TMPL_VAR NAME=includerelatives-price>,document.forms[0].BATCH_TOTAL,document.forms[0].BATCH_PRE_TOTAL)">Possible Relatives&nbsp;&nbsp;<a href="javascript:void(0);" onClick="var layerfgcolor = get_layer_colors('fgcolor');var layerbgcolor = get_layer_colors('bgcolor');return overlib('<br>Appends to the output record names of the subject\'s possible first-degree relatives.<br><br>', CAPTIONSIZE, 2, BORDER, 3, FGCOLOR, layerfgcolor, BGCOLOR, layerbgcolor, CGCOLOR, layerbgcolor, WIDTH, 275, FIXX, 60, FIXY, 455, STICKY, CAPTION, 'Possible Relatives', CLOSECLICK, CLOSETEXT, '<img border=0 width=16 height=16 alt=\'Close\' title=\'Close\' src=\'<TMPL_VAR NAME=IMGPATH>/closex.gif\'>');"><img src="<TMPL_VAR NAME=IMGPATH>/info.gif" border="0" width="16" height="16"></a></td>
          </tr>
        </table>
        </td>
      </tr>
    </table>
    -->
    </td>
  <TMPL_IF BATCH_ADMIN>
  </tr>
  <tr><td>&nbsp;</td></tr> 
  <tr>
    <td width="304" valign="top">
    <table border="1" cellpadding="0" cellspacing="0" width="300" bordercolor="#000000">
      <tr>
        <td>
        <table border="0" cellpadding="2" cellspacing="0">
          <tr>
            <td class="batchpricingheader" colspan="2">&nbsp;<b>Roxie Batch Options</b></font></td>
          </tr>
          <tr>
            <td class="smallfont1"><input type="checkbox" name="preconfig_adlonly" value="1" <TMPL_VAR NAME=preconfig_adlonly> onClick="check_roxie_special(this,<TMPL_VAR NAME=preconfig_adlonly-price>, <TMPL_VAR NAME=base-batch-price>);">ADL Only&nbsp;&nbsp;<a href="javascript:void(0);" onClick="var layerfgcolor = get_layer_colors('fgcolor');var layerbgcolor = get_layer_colors('bgcolor');return overlib('<br>Returns ADL and score.<br><br>', CAPTIONSIZE, 2, BORDER, 3, FGCOLOR, layerfgcolor, BGCOLOR, layerbgcolor, CGCOLOR, layerbgcolor, WIDTH, 275, FIXX, 60, FIXY, 875, STICKY, CAPTION, 'ADL Only', CLOSECLICK, CLOSETEXT, '<img border=0 width=16 height=16 alt=\'Close\' title=\'Close\' src=\'<TMPL_VAR NAME=IMGPATH>/closex.gif\'>');"><img src="<TMPL_VAR NAME=IMGPATH>/info.gif" border="0" width="16" height="16"></a>
	    <INPUT TYPE="HIDDEN" NAME="ADLONLY_PRICE" VALUE="<TMPL_VAR NAME=preconfig_adlonly-price>"></td>
            <td class="smallfont1"><input type="checkbox" name="preconfig_adlimpact" value="1" <TMPL_VAR NAME=preconfig_adlimpact> onClick="check_roxie_special(this,<TMPL_VAR NAME=preconfig_adlimpact-price>, <TMPL_VAR NAME=base-batch-price>);">Impact&nbsp;&nbsp;<a href="javascript:void(0);" onClick="var layerfgcolor = get_layer_colors('fgcolor');var layerbgcolor = get_layer_colors('bgcolor');return overlib('<br>Returns Impact.<br><br>', CAPTIONSIZE, 2, BORDER, 3, FGCOLOR, layerfgcolor, BGCOLOR, layerbgcolor, CGCOLOR, layerbgcolor, WIDTH, 275, FIXX, 60, FIXY, 875, STICKY, CAPTION, 'Impact', CLOSECLICK, CLOSETEXT, '<img border=0 width=16 height=16 alt=\'Close\' title=\'Close\' src=\'<TMPL_VAR NAME=IMGPATH>/closex.gif\'>');"><img src="<TMPL_VAR NAME=IMGPATH>/info.gif" border="0" width="16" height="16"></a>
	    <INPUT TYPE="HIDDEN" NAME="ADLIMPACT_PRICE" VALUE="<TMPL_VAR NAME=preconfig_adlimpact-price>"></td>
          </tr>
          <tr>
            <td class="smallfont1"><input type="checkbox" name="preconfig_adlbestfull" value="1" <TMPL_VAR NAME=preconfig_adlbestfull> onClick="check_roxie_special(this,<TMPL_VAR NAME=preconfig_adlbestfull-price>, <TMPL_VAR NAME=base-batch-price>);">ADL with Best Data&nbsp;&nbsp;<a href="javascript:void(0);" onClick="var layerfgcolor = get_layer_colors('fgcolor');var layerbgcolor = get_layer_colors('bgcolor');return overlib('<br>Returns ADL, match score, all best data and all verification scores.<br><br>', CAPTIONSIZE, 2, BORDER, 3, FGCOLOR, layerfgcolor, BGCOLOR, layerbgcolor, CGCOLOR, layerbgcolor, WIDTH, 275, FIXX, 60, FIXY, 875, STICKY, CAPTION, 'ADL with Best Data', CLOSECLICK, CLOSETEXT, '<img border=0 width=16 height=16 alt=\'Close\' title=\'Close\' src=\'<TMPL_VAR NAME=IMGPATH>/closex.gif\'>');"><img src="<TMPL_VAR NAME=IMGPATH>/info.gif" border="0" width="16" height="16"></a>
			<INPUT TYPE="HIDDEN" NAME="ADLBESTFULL_PRICE" VALUE="<TMPL_VAR NAME=preconfig_adlbestfull-price>">
	    </td>
            <td class="smallfont1"><input type="checkbox" name="preconfig_adlhighimpact" value="1" <TMPL_VAR NAME=preconfig_adlhighimpact> onClick="check_roxie_special(this,<TMPL_VAR NAME=preconfig_adlhighimpact-price>, <TMPL_VAR NAME=base-batch-price>);">High Impact&nbsp;&nbsp;<a href="javascript:void(0);" onClick="var layerfgcolor = get_layer_colors('fgcolor');var layerbgcolor = get_layer_colors('bgcolor');return overlib('<br>Returns ADL High Impact.<br><br>', CAPTIONSIZE, 2, BORDER, 3, FGCOLOR, layerfgcolor, BGCOLOR, layerbgcolor, CGCOLOR, layerbgcolor, WIDTH, 275, FIXX, 60, FIXY, 875, STICKY, CAPTION, 'High Impact', CLOSECLICK, CLOSETEXT, '<img border=0 width=16 height=16 alt=\'Close\' title=\'Close\' src=\'<TMPL_VAR NAME=IMGPATH>/closex.gif\'>');"><img src="<TMPL_VAR NAME=IMGPATH>/info.gif" border="0" width="16" height="16"></a>
	    <INPUT TYPE="HIDDEN" NAME="ADLIMPACT_PRICE" VALUE="<TMPL_VAR NAME=preconfig_adlhighimpact-price>"></td>
          </tr>
          <tr>
            <td class="smallfont1"><input type="checkbox" name="preconfig_adlbest" value="1" <TMPL_VAR NAME=preconfig_adlbest> onClick="check_roxie_special(this,<TMPL_VAR NAME=preconfig_adlbest-price>, <TMPL_VAR NAME=base-batch-price>);">Best Data Only&nbsp;&nbsp;<a href="javascript:void(0);" onClick="var layerfgcolor = get_layer_colors('fgcolor');var layerbgcolor = get_layer_colors('bgcolor');return overlib('<br>Returns match score, all best data and all verification scores.<br><br>', CAPTIONSIZE, 2, BORDER, 3, FGCOLOR, layerfgcolor, BGCOLOR, layerbgcolor, CGCOLOR, layerbgcolor, WIDTH, 275, FIXX, 60, FIXY, 875, STICKY, CAPTION, 'Best Data Only', CLOSECLICK, CLOSETEXT, '<img border=0 width=16 height=16 alt=\'Close\' title=\'Close\' src=\'<TMPL_VAR NAME=IMGPATH>/closex.gif\'>');"><img src="<TMPL_VAR NAME=IMGPATH>/info.gif" border="0" width="16" height="16"></a>
	    <INPUT TYPE="HIDDEN" NAME="ADLBEST_PRICE" VALUE="<TMPL_VAR NAME=preconfig_adlbest-price>">
            <td class="smallfont1"><input type="checkbox" name="preconfig_adlhighimpact_plus" value="1" <TMPL_VAR NAME=preconfig_adlhighimpact_plus> onClick="check_roxie_special(this,<TMPL_VAR NAME=preconfig_adlhighimpact_plus-price>, <TMPL_VAR NAME=base-batch-price>);">High Impact Plus&nbsp;&nbsp;<a href="javascript:void(0);" onClick="var layerfgcolor = get_layer_colors('fgcolor');var layerbgcolor = get_layer_colors('bgcolor');return overlib('<br>Returns ADL High Impact Plus.<br><br>', CAPTIONSIZE, 2, BORDER, 3, FGCOLOR, layerfgcolor, BGCOLOR, layerbgcolor, CGCOLOR, layerbgcolor, WIDTH, 275, FIXX, 60, FIXY, 875, STICKY, CAPTION, 'High Impact Plus', CLOSECLICK, CLOSETEXT, '<img border=0 width=16 height=16 alt=\'Close\' title=\'Close\' src=\'<TMPL_VAR NAME=IMGPATH>/closex.gif\'>');"><img src="<TMPL_VAR NAME=IMGPATH>/info.gif" border="0" width="16" height="16"></a>
	    <INPUT TYPE="HIDDEN" NAME="ADLIMPACT_PRICE" VALUE="<TMPL_VAR NAME=preconfig_adlhighimpact_plus-price>"></td>
          </tr>
          <tr>
            <td class="smallfont1" colspan="2"><input type="checkbox" name="preconfig_adlupdate" value="1" <TMPL_VAR NAME=preconfig_adlupdate> onClick="check_roxie_special(this,<TMPL_VAR NAME=preconfig_adlupdate-price>, <TMPL_VAR NAME=base-batch-price>);">ADL Updates&nbsp;&nbsp;<a href="javascript:void(0);" onClick="var layerfgcolor = get_layer_colors('fgcolor');var layerbgcolor = get_layer_colors('bgcolor');return overlib('<br>Returns ADL updates.<br><br>', CAPTIONSIZE, 2, BORDER, 3, FGCOLOR, layerfgcolor, BGCOLOR, layerbgcolor, CGCOLOR, layerbgcolor, WIDTH, 275, FIXX, 60, FIXY, 875, STICKY, CAPTION, 'ADL Updates', CLOSECLICK, CLOSETEXT, '<img border=0 width=16 height=16 alt=\'Close\' title=\'Close\' src=\'<TMPL_VAR NAME=IMGPATH>/closex.gif\'>');"><img src="<TMPL_VAR NAME=IMGPATH>/info.gif" border="0" width="16" height="16"></a>
	    <INPUT TYPE="HIDDEN" NAME="ADLUPDATE_PRICE" VALUE="<TMPL_VAR NAME=preconfig_adlupdate-price>"></td>
          </tr>
        </table>
        </td>
      </tr>
    </table>
    </td>
	</TMPL_IF>
    <td width="50"><img src="<TMPL_VAR NAME=IMGPATH>/spacer.gif" width="50" height="1" border="0"></td>

<!-- END append_fields_body.tpl -->
