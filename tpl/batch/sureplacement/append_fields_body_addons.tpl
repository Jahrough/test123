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

<table border="0" cellpadding="0" cellspacing="0" width="608">

  <tr>
    <td colspan="2">
    <table align="center" cellspacing="5" width="600">
	<tr><td align="center" colspan="2">

<input type="hidden" name="APPENDFIELDS_ADDONS">
<table border="1" cellpadding="0" cellspacing="0" width="490">
  <tr width="480">
    <td valign="top">
    <table border="0" cellpadding="3" cellspacing="0" width="100%">
	<tr valign="middle">
	    <td border="0" cellpadding="0" cellspacing="0" class="batchpricingheader" align="center" width="100%">
		<b>Add-Ons</b>
	    </td>
	</tr>
    </table>
    </td>
  </tr>

  <tr>
   <td>
    <table border="0" cellpadding="0" cellspacing="3" width="100%">
    <tr>
	<td colspan="2" class="batchpricingheader"><b>Address</b></td>
    </tr>
    <tr>
    <td colspan="2" class="smallfont1"><input type="checkbox" name="addonpropertyrecordinputaddress" value="1" <TMPL_VAR NAME=addonpropertyrecordinputaddress>>&nbsp;Property Record for Input Address<TMPL_UNLESS HIDE_PRICES> - <b>$1.00</b> for up to 3 records</TMPL_UNLESS> (1 assessment + 2 deeds)&nbsp;&nbsp;<a href="javascript:void(0);" onClick="var layerfgcolor = get_layer_colors('fgcolor');var layerbgcolor = get_layer_colors('bgcolor');return overlib('<br>Appends to the Property Record for the Input Address.<br><br>Records returned:<br>&nbsp;&nbsp;Assessment (only 1 -- Most Recent)<br>&nbsp;&nbsp;Fields Returned:<br>&nbsp;&nbsp;Parcel#, Owner Names, Owner/Mailing Address, Property Address, Total Value, Sale Date, Sale Price, Seller Name, Assessed Value, Market Value, Legal Description<br><br>&nbsp;&nbsp;Deeds (up to 2) (Date Order)<br>&nbsp;&nbsp;Fields Returned:<br>&nbsp;&nbsp;Parcel#, Owner Names, Owner/Mailing Address, Property Address, Sale Date, Sale Price, Seller Name, Mortgage Amount, Lienholder/Lender Name<br><br>', CAPTIONSIZE, 2, BORDER, 3, FGCOLOR, layerfgcolor, BGCOLOR, layerbgcolor, CGCOLOR, layerbgcolor, WIDTH, 275, FIXX, 360, FIXY, 280, STICKY, CAPTION, 'Property Record for Input Address', CLOSECLICK, CLOSETEXT, '<img border=0 width=16 height=16 alt=\'Close\' title=\'Close\' src=\'<TMPL_VAR NAME=IMGPATH>/closex.gif\'>');"><img src="<TMPL_VAR NAME=IMGPATH>/info.gif" border="0" width="16" height="16"></a> 
	</td>
    </tr>
    <tr>
    <td colspan="2" class="smallfont1"><input type="checkbox" name="addonpropertyrecordmostcurrentaddress" value="1" <TMPL_VAR NAME=addonpropertyrecordmostcurrentaddress>>&nbsp;Property Record for Most Current Address - <TMPL_UNLESS HIDE_PRICES><b>$1.00</b> for </TMPL_UNLESS>up to 3 records&nbsp;&nbsp;<a href="javascript:void(0);" onClick="var layerfgcolor = get_layer_colors('fgcolor');var layerbgcolor = get_layer_colors('bgcolor');return overlib('<br>Appends to the Property Record for Most Current (Primary) Address.<br><br>Records returned:<br>&nbsp;&nbsp;Assessment (only 1 -- Most Recent)<br>&nbsp;&nbsp;Fields Returned:<br>&nbsp;&nbsp;Parcel#, Owner Names, Owner/Mailing Address, Property Address, Total Value, Sale Date, Sale Price, Seller Name, Assessed Value, Market Value, Legal Description<br><br>&nbsp;&nbsp;Deeds (up to 2) (Date Order)<br>&nbsp;&nbsp;Fields Returned:<br>&nbsp;&nbsp;Parcel#, Owner Names, Owner/Mailing Address, Property Address, Sale Date, Sale Price, Seller Name, Mortgage Amount, Lienholder/Lender Name<br><br>', CAPTIONSIZE, 2, BORDER, 3, FGCOLOR, layerfgcolor, BGCOLOR, layerbgcolor, CGCOLOR, layerbgcolor, WIDTH, 275, FIXX, 360, FIXY, 280, STICKY, CAPTION, 'Property Record for Most Current Address', CLOSECLICK, CLOSETEXT, '<img border=0 width=16 height=16 alt=\'Close\' title=\'Close\' src=\'<TMPL_VAR NAME=IMGPATH>/closex.gif\'>');"><img src="<TMPL_VAR NAME=IMGPATH>/info.gif" border="0" width="16" height="16"></a> 
    <br>
    <br>
    </td>
  </tr>
    <tr>
	<td colspan="2" class="batchpricingheader"><b>People</b></td>
    </tr>
  <tr>
    <td class="smallfont1"><input type="checkbox" name="addonrelatives" value="1" <TMPL_VAR NAME=addonrelatives> onClick="togglesureplacementaddonrelatives();">Relatives - <TMPL_UNLESS HIDE_PRICES><b>$1.00</b> for </TMPL_UNLESS>up to 3 records&nbsp;&nbsp;<a href="javascript:void(0);" onClick="var layerfgcolor = get_layer_colors('fgcolor');var layerbgcolor = get_layer_colors('bgcolor');return overlib('<br>Appends to the output record with up to three (3) probable relative\'s addresses plus the name and phone associated with each respective address (sorted by order of most recent co-habitation).', CAPTIONSIZE, 2, BORDER, 3, FGCOLOR, layerfgcolor, BGCOLOR, layerbgcolor, CGCOLOR, layerbgcolor, WIDTH, 275, FIXX, 260, FIXY, 400, STICKY, CAPTION, 'Relatives', CLOSECLICK, CLOSETEXT, '<img border=0 width=16 height=16 alt=\'Close\' title=\'Close\' src=\'<TMPL_VAR NAME=IMGPATH>/closex.gif\'>');"><img src="<TMPL_VAR NAME=IMGPATH>/info.gif" border="0" width="16" height="16"></a></td>
  </tr>
  <tr>
    <td class="smallfont1" valign="top">
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<select name="addonrelativescount">
    <option value="1"<TMPL_IF NAME="addonrelativescount-1"> SELECTED</TMPL_IF>>1</option>
    <option value="2"<TMPL_IF NAME="addonrelativescount-2"> SELECTED</TMPL_IF>>2</option>
    <option value="3"<TMPL_IF NAME="addonrelativescount-3"> SELECTED</TMPL_IF>>3</option>
    </select>
        Relatives per Subject&nbsp;&nbsp;
    </td>
  </tr>

  <tr>
    <td class="smallfont1"><input type="checkbox" name="addonassociates" value="1" <TMPL_VAR NAME=addonassociates> onClick="togglesureplacementaddonassociates();">Associates - <TMPL_UNLESS HIDE_PRICES><b>$1.00</b> for </TMPL_UNLESS>up to 3 records&nbsp;&nbsp;<a href="javascript:void(0);" onClick="var layerfgcolor = get_layer_colors('fgcolor');var layerbgcolor = get_layer_colors('bgcolor');return overlib('<br>Appends to the output record up to three (3) probable associates addresses plus the name and phone associated with each respective address (sorted by order of most recent association).', CAPTIONSIZE, 2, BORDER, 3, FGCOLOR, layerfgcolor, BGCOLOR, layerbgcolor, CGCOLOR, layerbgcolor, WIDTH, 275, FIXX, 260, FIXY, 400, STICKY, CAPTION, 'Associates', CLOSECLICK, CLOSETEXT, '<img border=0 width=16 height=16 alt=\'Close\' title=\'Close\' src=\'<TMPL_VAR NAME=IMGPATH>/closex.gif\'>');"><img src="<TMPL_VAR NAME=IMGPATH>/info.gif" border="0" width="16" height="16"></a></td>
  </tr>
  <tr>
    <td class="smallfont1" valign="top">
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<select name="addonassociatescount">
    <option value="1"<TMPL_IF NAME="addonassociatescount-1"> SELECTED</TMPL_IF>>1</option>
    <option value="2"<TMPL_IF NAME="addonassociatescount-2"> SELECTED</TMPL_IF>>2</option>
    <option value="3"<TMPL_IF NAME="addonassociatescount-3"> SELECTED</TMPL_IF>>3</option>
    </select>
        Associates per Subject&nbsp;&nbsp;
    </td>
  </tr>
  <tr>
    <td class="smallfont1"><input type="checkbox" name="addonneighbors" value="1" <TMPL_VAR NAME=addonneighbors> onClick="togglesureplacementaddonneighbors();">Neighbors&nbsp;&nbsp;<a href="javascript:void(0);" onClick="var layerfgcolor = get_layer_colors('fgcolor');var layerbgcolor = get_layer_colors('bgcolor');return overlib('<br>Appends to the output record with up to three (3) names and phones associated with each respective neighbor address.<br><br>', CAPTIONSIZE, 2, BORDER, 3, FGCOLOR, layerfgcolor, BGCOLOR, layerbgcolor, CGCOLOR, layerbgcolor, WIDTH, 275, FIXX, 260, FIXY, 400, STICKY, CAPTION, 'Neighbors', CLOSECLICK, CLOSETEXT, '<img border=0 width=16 height=16 alt=\'Close\' title=\'Close\' src=\'<TMPL_VAR NAME=IMGPATH>/closex.gif\'>');"><img src="<TMPL_VAR NAME=IMGPATH>/info.gif" border="0" width="16" height="16"></a></td>
  </tr>
  <tr>
    <td class="smallfont1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="checkbox" name="addonneighborsforinputaddress" value="1" <TMPL_VAR NAME=addonneighborsforinputaddress> onClick="togglesureplacementaddonneighbors();">Neighbors for input Address - <TMPL_UNLESS HIDE_PRICES><b>$0.25</b> for </TMPL_UNLESS>up to 3 records&nbsp;&nbsp;<a href="javascript:void(0);" onClick="var layerfgcolor = get_layer_colors('fgcolor');var layerbgcolor = get_layer_colors('bgcolor');return overlib('<br>Appends to the output record with up to three (3) names and phones associated with each respective neighbor address.<br><br>', CAPTIONSIZE, 2, BORDER, 3, FGCOLOR, layerfgcolor, BGCOLOR, layerbgcolor, CGCOLOR, layerbgcolor, WIDTH, 275, FIXX, 260, FIXY, 400, STICKY, CAPTION, 'Neighbors per Subject', CLOSECLICK, CLOSETEXT, '<img border=0 width=16 height=16 alt=\'Close\' title=\'Close\' src=\'<TMPL_VAR NAME=IMGPATH>/closex.gif\'>');"><img src="<TMPL_VAR NAME=IMGPATH>/info.gif" border="0" width="16" height="16"></a></td>
  </tr>
  <tr>
    <td class="smallfont1" valign="top">
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<select name="addonneighborsforinputaddresscount">
    <option value="1"<TMPL_IF NAME="addonneighborsforinputaddresscount-1"> SELECTED</TMPL_IF>>1</option>
    <option value="2"<TMPL_IF NAME="addonneighborsforinputaddresscount-2"> SELECTED</TMPL_IF>>2</option>
    <option value="3"<TMPL_IF NAME="addonneighborsforinputaddresscount-3"> SELECTED</TMPL_IF>>3</option>
    </select>
        Neighbors per Subject&nbsp;&nbsp;
    </td>
  </tr>
  <tr>
    <td class="smallfont1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="checkbox" name="addonneighborsmostcurrentaddress" value="1" <TMPL_VAR NAME=addonneighborsmostcurrentaddress> onClick="togglesureplacementaddonneighbors();">Neighbors for Most Current Address - <TMPL_UNLESS HIDE_PRICES><b>$0.25</b> for </TMPL_UNLESS>up to 3 records&nbsp;&nbsp;<a href="javascript:void(0);" onClick="var layerfgcolor = get_layer_colors('fgcolor');var layerbgcolor = get_layer_colors('bgcolor');return overlib('<br>Appends to the output record with up to three (3) names and phones associated with each respective neighbor address.<br><br>', CAPTIONSIZE, 2, BORDER, 3, FGCOLOR, layerfgcolor, BGCOLOR, layerbgcolor, CGCOLOR, layerbgcolor, WIDTH, 275, FIXX, 260, FIXY, 400, STICKY, CAPTION, 'Neighbors for Most Current Address', CLOSECLICK, CLOSETEXT, '<img border=0 width=16 height=16 alt=\'Close\' title=\'Close\' src=\'<TMPL_VAR NAME=IMGPATH>/closex.gif\'>');"><img src="<TMPL_VAR NAME=IMGPATH>/info.gif" border="0" width="16" height="16"></a></td>
  </tr>
  <tr>
    <td class="smallfont1" valign="top">
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<select name="addonneighborsmostcurrentaddresscount">
    <option value="1"<TMPL_IF NAME="addonneighborsmostcurrentaddresscount-1"> SELECTED</TMPL_IF>>1</option>
    <option value="2"<TMPL_IF NAME="addonneighborsmostcurrentaddresscount-2"> SELECTED</TMPL_IF>>2</option>
    <option value="3"<TMPL_IF NAME="addonneighborsmostcurrentaddresscount-3"> SELECTED</TMPL_IF>>3</option>
    </select>
        Neighbors per Address&nbsp;&nbsp;
    </td>
  </tr>
  <tr>
    <td class="smallfont1"><input type="checkbox" name="addonpeopleatwork" value="1" <TMPL_VAR NAME=addonpeopleatwork>>People at Work - <TMPL_UNLESS HIDE_PRICES> <b>$1.00</b> for </TMPL_UNLESS>up to 3 records&nbsp;&nbsp;<a href="javascript:void(0);" onClick="var layerfgcolor = get_layer_colors('fgcolor');var layerbgcolor = get_layer_colors('bgcolor');return overlib('<br>Appends to the output record with up to three (3) PeopleAt Work which includes Name, Address, and Phone.&nbsp;&nbsp;Sorted by Confidence - prioritized by date, phone populated, and address populated.<br><br>', CAPTIONSIZE, 2, BORDER, 3, FGCOLOR, layerfgcolor, BGCOLOR, layerbgcolor, CGCOLOR, layerbgcolor, WIDTH, 275, FIXX, 260, FIXY, 400, STICKY, CAPTION, 'Neighbors', CLOSECLICK, CLOSETEXT, '<img border=0 width=16 height=16 alt=\'Close\' title=\'Close\' src=\'<TMPL_VAR NAME=IMGPATH>/closex.gif\'>');"><img src="<TMPL_VAR NAME=IMGPATH>/info.gif" border="0" width="16" height="16"></a><br><br></td>
  </tr>
    <tr>
	<td colspan="2" class="batchpricingheader"><b>Motor Vehicle Registrations</b></td>
    </tr>
  <tr>
    <td class="smallfont1"><input type="checkbox" name="addonmvrrecord" value="1" <TMPL_VAR NAME=addonmvrrecord>>MVR Record - <TMPL_UNLESS HIDE_PRICES><b>$1.00</b> for </TMPL_UNLESS>up to 3 records&nbsp;&nbsp;<a href="javascript:void(0);" onClick="var layerfgcolor = get_layer_colors('fgcolor');var layerbgcolor = get_layer_colors('bgcolor');return overlib('<br>Appends to the output record with up to three (3) Current MVR records which includes Vehicle Description, Lien Holder Name and Address, Tag, VIN, OwnerNames (2), and Registrant Names (2).&nbsp;&nbsp;Sorted by Engine Displacement Descending then Model year descending.<br><br>', CAPTIONSIZE, 2, BORDER, 3, FGCOLOR, layerfgcolor, BGCOLOR, layerbgcolor, CGCOLOR, layerbgcolor, WIDTH, 275, FIXX, 260, FIXY, 400, STICKY, CAPTION, 'MVR Record', CLOSECLICK, CLOSETEXT, '<img border=0 width=16 height=16 alt=\'Close\' title=\'Close\' src=\'<TMPL_VAR NAME=IMGPATH>/closex.gif\'>');"><img src="<TMPL_VAR NAME=IMGPATH>/info.gif" border="0" width="16" height="16"></a><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;(with DPPA Permissible Purpose)<br><br></td>
  </tr>
    <tr>
	<td colspan="2" class="batchpricingheader"><b>Filings</b></td>
    </tr>
  <tr>
    <td class="smallfont1"><input type="checkbox" name="addonjudgementliens" value="1" <TMPL_VAR NAME=addonjudgementliens>>Judgements & Liens - <TMPL_UNLESS HIDE_PRICES><b>$1.00</b> for </TMPL_UNLESS>up to 6 records&nbsp;&nbsp;<a href="javascript:void(0);" onClick="var layerfgcolor = get_layer_colors('fgcolor');var layerbgcolor = get_layer_colors('bgcolor');return overlib('<br>Appends to the output record with up to three (3) (de-duped) judgments and liens which include Type, Amount, Date, Release Date, Creditor, court, and case number.&nbsp;&nbsp;Sorted by Release Date (Unrelesed first, then released descending), Type (tax first, then non-tax); amount (descending), date (descending).<br><br>', CAPTIONSIZE, 2, BORDER, 3, FGCOLOR, layerfgcolor, BGCOLOR, layerbgcolor, CGCOLOR, layerbgcolor, WIDTH, 275, FIXX, 260, FIXY, 400, STICKY, CAPTION, 'Judgement & Liens', CLOSECLICK, CLOSETEXT, '<img border=0 width=16 height=16 alt=\'Close\' title=\'Close\' src=\'<TMPL_VAR NAME=IMGPATH>/closex.gif\'>');"><img src="<TMPL_VAR NAME=IMGPATH>/info.gif" border="0" width="16" height="16"></a><br><br></td>
  </tr>
</table>

</td>
</tr>
    </td>
  </tr>
</table>
    </td>
  </tr>
</table>

<!-- END append_fields_body.tpl -->
