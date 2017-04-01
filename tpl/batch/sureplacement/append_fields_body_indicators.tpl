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

<input type="hidden" name="APPENDFIELDS_INDICATORS">
<table border="1" cellpadding="0" cellspacing="0" width="240">
  <tr width="250">
    <td valign="top">
    <table border="0" cellpadding="3" cellspacing="0" width="100%">
	<tr valign="middle">
	    <td border="0" cellpadding="0" cellspacing="0" class="batchpricingheader" align="center" width="100%">
		<b>Indicators<TMPL_UNLESS HIDE_PRICES> - $0.05 each, six for $0.20 or all 11 for $0.35</TMPL_UNLESS></b>
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
    <td colspan="2" class="smallfont1"><input type="checkbox" name="indicateinputaddressverifiedflag" value="1" <TMPL_VAR NAME=indicateinputaddressverifiedflag>>&nbsp;Input Address Verified Flag&nbsp;&nbsp;<a href="javascript:void(0);" onClick="var layerfgcolor = get_layer_colors('fgcolor');var layerbgcolor = get_layer_colors('bgcolor');return overlib('<br>Appends to the output record the input address verified flag.  <br><br>Possible return values:<br>Blank = not selected<br>V = Input Address Verified<br>U = Updated Address Available<br>N = No address information found<br><br>', CAPTIONSIZE, 2, BORDER, 3, FGCOLOR, layerfgcolor, BGCOLOR, layerbgcolor, CGCOLOR, layerbgcolor, WIDTH, 275, FIXX, 360, FIXY, 280, STICKY, CAPTION, 'Input Address Verified Flag', CLOSECLICK, CLOSETEXT, '<img border=0 width=16 height=16 alt=\'Close\' title=\'Close\' src=\'<TMPL_VAR NAME=IMGPATH>/closex.gif\'>');"><img src="<TMPL_VAR NAME=IMGPATH>/info.gif" border="0" width="16" height="16"></a> 
	</td>
    </tr>
    <tr>
    <td colspan="2" class="smallfont1"><input type="checkbox" name="indicateinputphoneverifiedflag" value="1" <TMPL_VAR NAME=indicateinputphoneverifiedflag>>&nbsp;Input Phone Verified Flag&nbsp;&nbsp;<a href="javascript:void(0);" onClick="var layerfgcolor = get_layer_colors('fgcolor');var layerbgcolor = get_layer_colors('bgcolor');return overlib('<br>Appends to the output record the input phone verified flag.  <br><br>Possible return values:<br>Blank = not selected<br>V = Input Phone Verified (@ Primary Addr)<br>U = Updated Phone Available (@ Primary Addr)<br>N = No phone information found<br><br>', CAPTIONSIZE, 2, BORDER, 3, FGCOLOR, layerfgcolor, BGCOLOR, layerbgcolor, CGCOLOR, layerbgcolor, WIDTH, 275, FIXX, 360, FIXY, 280, STICKY, CAPTION, 'Input Phone Verified Flag', CLOSECLICK, CLOSETEXT, '<img border=0 width=16 height=16 alt=\'Close\' title=\'Close\' src=\'<TMPL_VAR NAME=IMGPATH>/closex.gif\'>');"><img src="<TMPL_VAR NAME=IMGPATH>/info.gif" border="0" width="16" height="16"></a> 
    </td>
    </tr>
    <tr>
    <td colspan="2" class="smallfont1"><input type="checkbox" name="indicateinputaddresspropertyflag" value="1" <TMPL_VAR NAME=indicateinputaddresspropertyflag>>&nbsp;Input Address Property Flag&nbsp;&nbsp;<a href="javascript:void(0);" onClick="var layerfgcolor = get_layer_colors('fgcolor');var layerbgcolor = get_layer_colors('bgcolor');return overlib('<br>Appends to the output record the input address property flag.  <br><br>Possible return values:<br>Blank = not selected<br>NH = No Hit<br>PO = Possible Owner (Surname Match)<br>PR = Possible Renter (Surname no match)<br><br>', CAPTIONSIZE, 2, BORDER, 3, FGCOLOR, layerfgcolor, BGCOLOR, layerbgcolor, CGCOLOR, layerbgcolor, WIDTH, 275, FIXX, 360, FIXY, 280, STICKY, CAPTION, 'Input Address Property Flag', CLOSECLICK, CLOSETEXT, '<img border=0 width=16 height=16 alt=\'Close\' title=\'Close\' src=\'<TMPL_VAR NAME=IMGPATH>/closex.gif\'>');"><img src="<TMPL_VAR NAME=IMGPATH>/info.gif" border="0" width="16" height="16"></a> 
    </td>
    </tr>
    <tr>
    <td colspan="2" class="smallfont1"><input type="checkbox" name="indicatecurrentaddresspropertyflag" value="1" <TMPL_VAR NAME=indicatecurrentaddresspropertyflag>>&nbsp;Current Address Property Flag&nbsp;&nbsp;<a href="javascript:void(0);" onClick="var layerfgcolor = get_layer_colors('fgcolor');var layerbgcolor = get_layer_colors('bgcolor');return overlib('<br>Appends to the output record the updated address property flag.  <br><br>Possible return values:<br>Blank = not selected<br>NH = No Hit<br>PO = Possible Owner (Surname Match)<br>PR = Possible Renter (Surname no match)<br><br>', CAPTIONSIZE, 2, BORDER, 3, FGCOLOR, layerfgcolor, BGCOLOR, layerbgcolor, CGCOLOR, layerbgcolor, WIDTH, 275, FIXX, 360, FIXY, 280, STICKY, CAPTION, 'Current Address Property Flag', CLOSECLICK, CLOSETEXT, '<img border=0 width=16 height=16 alt=\'Close\' title=\'Close\' src=\'<TMPL_VAR NAME=IMGPATH>/closex.gif\'>');"><img src="<TMPL_VAR NAME=IMGPATH>/info.gif" border="0" width="16" height="16"></a> 
    </td>
    </tr>
    <tr>
    <td colspan="2" class="smallfont1"><input type="checkbox" name="indicateinputaddressincomeestimation" value="1" <TMPL_VAR NAME=indicateinputaddressincomeestimation>>&nbsp;Input Address Income Estimation&nbsp;&nbsp;<a href="javascript:void(0);" onClick="var layerfgcolor = get_layer_colors('fgcolor');var layerbgcolor = get_layer_colors('bgcolor');return overlib('<br>Appends to the output record the input address income estimation.<br><br>Possible return values:<br>Blank = not selected<br>0 = No data available<br>1 = Under $15,000<br>2 = $15,000 - $19,999<br>3 = $20,000 - $29,999<br>4 = $30,000 - $39,999<br>5 = $40,000 - $49,999<br>6 = $50,000 - $74,999<br>7 = $75,000 - $99,999<br>8 = $100,000 - $124,999<br>9 = $125,000 and above<br><br>', CAPTIONSIZE, 2, BORDER, 3, FGCOLOR, layerfgcolor, BGCOLOR, layerbgcolor, CGCOLOR, layerbgcolor, WIDTH, 275, FIXX, 360, FIXY, 280, STICKY, CAPTION, 'Input Address Income Estimation', CLOSECLICK, CLOSETEXT, '<img border=0 width=16 height=16 alt=\'Close\' title=\'Close\' src=\'<TMPL_VAR NAME=IMGPATH>/closex.gif\'>');"><img src="<TMPL_VAR NAME=IMGPATH>/info.gif" border="0" width="16" height="16"></a> 
    </td>
    </tr>
    <tr>
    <td colspan="2" class="smallfont1"><input type="checkbox" name="indicatecurrentaddressincomeestimation" value="1" <TMPL_VAR NAME=indicatecurrentaddressincomeestimation>>&nbsp;Current Address Income Estimation&nbsp;&nbsp;<a href="javascript:void(0);" onClick="var layerfgcolor = get_layer_colors('fgcolor');var layerbgcolor = get_layer_colors('bgcolor');return overlib('<br>Appends to the output record the updated address income estimation.<br><br>Possible return values:<br>Blank = not selected<br>0 = No data available<br>1 = Under $15,000<br>2 = $15,000 - $19,999<br>3 = $20,000 - $29,999<br>4 = $30,000 - $39,999<br>5 = $40,000 - $49,999<br>6 = $50,000 - $74,999<br>7 = $75,000 - $99,999<br>8 = $100,000 - $124,999<br>9 = $125,000 and above<br><br>', CAPTIONSIZE, 2, BORDER, 3, FGCOLOR, layerfgcolor, BGCOLOR, layerbgcolor, CGCOLOR, layerbgcolor, WIDTH, 275, FIXX, 360, FIXY, 280, STICKY, CAPTION, 'Current Address Income Estimation', CLOSECLICK, CLOSETEXT, '<img border=0 width=16 height=16 alt=\'Close\' title=\'Close\' src=\'<TMPL_VAR NAME=IMGPATH>/closex.gif\'>');"><img src="<TMPL_VAR NAME=IMGPATH>/info.gif" border="0" width="16" height="16"></a><br><br> 
    </td>
    </tr>
    <tr>
	<td colspan="2" class="batchpricingheader"><b>Motor Vehicle Registrations</b></td>
    </tr>
  <tr>
    <td colspan="2" class="smallfont1"><input type="checkbox" name="indicatemvrflag" value="1" <TMPL_VAR NAME=indicatemvrflag>>&nbsp;MVR Flag&nbsp;&nbsp;<a href="javascript:void(0);" onClick="var layerfgcolor = get_layer_colors('fgcolor');var layerbgcolor = get_layer_colors('bgcolor');return overlib('<br>Appends to the output record the vehicle registration flag. <br><br>Possible return values:<br>Blank = not selected<br>NH = No Hit<br>MV = Current MVR Record Found<br><br>', CAPTIONSIZE, 2, BORDER, 3, FGCOLOR, layerfgcolor, BGCOLOR, layerbgcolor, CGCOLOR, layerbgcolor, WIDTH, 275, FIXX, 360, FIXY, 280, STICKY, CAPTION, 'MVR Flag', CLOSECLICK, CLOSETEXT, '<img border=0 width=16 height=16 alt=\'Close\' title=\'Close\' src=\'<TMPL_VAR NAME=IMGPATH>/closex.gif\'>');"><img src="<TMPL_VAR NAME=IMGPATH>/info.gif" border="0" width="16" height="16"></a><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;(requires DPPA permissible purpose)<br><br></td>
  </tr>
  <tr>
    <td colspan="2" class="batchpricingheader"><b>People</b></td>
  </tr>
  <tr>
    <td class="smallfont1"><input type="checkbox" name="indicaterelatives" value="1" <TMPL_VAR NAME=indicaterelatives>>Relative Flag&nbsp;&nbsp;<a href="javascript:void(0);" onClick="var layerfgcolor = get_layer_colors('fgcolor');var layerbgcolor = get_layer_colors('bgcolor');return overlib('<br>Appends to the output record the Relatives flag. <br><br>Possible return values:<br>Blank = not selected<br>P = Possible Relatives Found<br>N = No Possible Relatives Found<br><br>', CAPTIONSIZE, 2, BORDER, 3, FGCOLOR, layerfgcolor, BGCOLOR, layerbgcolor, CGCOLOR, layerbgcolor, WIDTH, 275, FIXX, 260, FIXY, 400, STICKY, CAPTION, 'Relative Flag', CLOSECLICK, CLOSETEXT, '<img border=0 width=16 height=16 alt=\'Close\' title=\'Close\' src=\'<TMPL_VAR NAME=IMGPATH>/closex.gif\'>');"><img src="<TMPL_VAR NAME=IMGPATH>/info.gif" border="0" width="16" height="16"></a></td>
  </tr>
  <tr>
    <td class="smallfont1"><input type="checkbox" name="indicateassociates" value="1" <TMPL_VAR NAME=indicateassociates>>Associates Flag&nbsp;&nbsp;<a href="javascript:void(0);" onClick="var layerfgcolor = get_layer_colors('fgcolor');var layerbgcolor = get_layer_colors('bgcolor');return overlib('<br>Appends to the output record the Associates flag. <br><br>Possible return values:<br>Blank = not selected<br>P = Possible Associates Found<br>N = No Possible Associates Found<br><br>', CAPTIONSIZE, 2, BORDER, 3, FGCOLOR, layerfgcolor, BGCOLOR, layerbgcolor, CGCOLOR, layerbgcolor, WIDTH, 275, FIXX, 260, FIXY, 400, STICKY, CAPTION, 'Associates Flag', CLOSECLICK, CLOSETEXT, '<img border=0 width=16 height=16 alt=\'Close\' title=\'Close\' src=\'<TMPL_VAR NAME=IMGPATH>/closex.gif\'>');"><img src="<TMPL_VAR NAME=IMGPATH>/info.gif" border="0" width="16" height="16"></a></td>
  </tr>
  <tr>
    <td class="smallfont1"><input type="checkbox" name="indicatepeopleatwork" value="1" <TMPL_VAR NAME=indicatepeopleatwork>>People At Work Flag&nbsp;&nbsp;<a href="javascript:void(0);" onClick="var layerfgcolor = get_layer_colors('fgcolor');var layerbgcolor = get_layer_colors('bgcolor');return overlib('<br>Appends to the output record the People At Work flag. <br><br>Possible return values:<br>Blank = not selected<br>P = Possible People at Work Found<br>N = No Possible People at Work Found<br><br>', CAPTIONSIZE, 2, BORDER, 3, FGCOLOR, layerfgcolor, BGCOLOR, layerbgcolor, CGCOLOR, layerbgcolor, WIDTH, 275, FIXX, 260, FIXY, 400, STICKY, CAPTION, 'People At Work Flag', CLOSECLICK, CLOSETEXT, '<img border=0 width=16 height=16 alt=\'Close\' title=\'Close\' src=\'<TMPL_VAR NAME=IMGPATH>/closex.gif\'>');"><img src="<TMPL_VAR NAME=IMGPATH>/info.gif" border="0" width="16" height="16"></a><br><br></td>
  </tr>

  <tr>
    <td colspan="2" class="batchpricingheader"><b>Filings</b></td>
  </tr>
  <tr>
    <td class="smallfont1"><input type="checkbox" name="indicatejudgementlien" value="1" <TMPL_VAR NAME=indicatejudgementlien>>Judgments & Liens Flag<a href="javascript:void(0);" onClick="var layerfgcolor = get_layer_colors('fgcolor');var layerbgcolor = get_layer_colors('bgcolor');return overlib('<br>Appends to the output record the people at work flag. <br><br>Possible return values:<br>Blank = not selected<br>P = Possible unsatisfied Judgment or Lien found<br>N = No Possible unsatisfied Judgment or Lien found<br><br>', CAPTIONSIZE, 2, BORDER, 3, FGCOLOR, layerfgcolor, BGCOLOR, layerbgcolor, CGCOLOR, layerbgcolor, WIDTH, 275, FIXX, 260, FIXY, 400, STICKY, CAPTION, 'Judgments & Liens Flag', CLOSECLICK, CLOSETEXT, '<img border=0 width=16 height=16 alt=\'Close\' title=\'Close\' src=\'<TMPL_VAR NAME=IMGPATH>/closex.gif\'>');"><img src="<TMPL_VAR NAME=IMGPATH>/info.gif" border="0" width="16" height="16"></a></td>
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
