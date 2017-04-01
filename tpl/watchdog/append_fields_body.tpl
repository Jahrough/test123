<!-- BEGIN append_fields_body.tpl -->
<table border="1" cellpadding="0" cellspacing="0" width="600" bordercolor="#000000">
  <tr>
    <td>
    <table border="0" cellpadding="2" cellspacing="0" width="600">
    <TMPL_UNLESS HIDE_PRICES>
	<tr>
	<td class="batchpricing" colspan="3"><b>&nbsp;$0.25 Updates</font>
	</tr>
    </TMPL_UNLESS>
    <tr>
	  <td class="smallfont1"><input type="checkbox" name="addresschange" value="1" <TMPL_VAR NAME=addresschange> onClick="">Change of Address&nbsp;&nbsp;<a href="javascript:void(0);" onClick="var layerfgcolor = get_layer_colors('fgcolor');var layerbgcolor = get_layer_colors('bgcolor');return overlib('<br>Appends to the Unique ID(s) the new address information for the subject.<br><br>', CAPTIONSIZE, 2, BORDER, 3, FGCOLOR, layerfgcolor, BGCOLOR, layerbgcolor, CGCOLOR, layerbgcolor, WIDTH, 275, FIXX, 200, FIXY, 165, STICKY, CAPTION, 'Change of Address', CLOSECLICK, CLOSETEXT, '<img border=0 width=16 height=16 alt=\'Close\' title=\'Close\' src=\'<TMPL_VAR NAME=IMGPATH>/closex.gif\'>');"><img src="<TMPL_VAR NAME=IMGPATH>/info.gif" border="0" width="16" height="16"></a></td>
      <td class="smallfont1"><input type="checkbox" name="phonechange" value="1" <TMPL_VAR NAME=phonechange> onClick="">Phone Number Change&nbsp;&nbsp;<a href="javascript:void(0);" onClick="var layerfgcolor = get_layer_colors('fgcolor');var layerbgcolor = get_layer_colors('bgcolor');return overlib('<br>Appends to the Unique ID(s) the new phone number for the subject.<br><br>', CAPTIONSIZE, 2, BORDER, 3, FGCOLOR, layerfgcolor, BGCOLOR, layerbgcolor, CGCOLOR, layerbgcolor, WIDTH, 275, FIXX, 200, FIXY, 165, STICKY, CAPTION, 'Phone Number Change', CLOSECLICK, CLOSETEXT, '<img border=0 width=16 height=16 alt=\'Close\' title=\'Close\' src=\'<TMPL_VAR NAME=IMGPATH>/closex.gif\'>');"><img src="<TMPL_VAR NAME=IMGPATH>/info.gif" border="0" width="16" height="16"></a></td>
      <td class="smallfont1"><input type="checkbox" name="namechange" value="1" <TMPL_VAR NAME=namechange> onClick="">Name Change&nbsp;&nbsp;<a href="javascript:void(0);" onClick="var layerfgcolor = get_layer_colors('fgcolor');var layerbgcolor = get_layer_colors('bgcolor');return overlib('<br>Appends to the Unique ID(s) the new name for the subject.<br><br>', CAPTIONSIZE, 2, BORDER, 3, FGCOLOR, layerfgcolor, BGCOLOR, layerbgcolor, CGCOLOR, layerbgcolor, WIDTH, 275, FIXX, 200, FIXY, 165, STICKY, CAPTION, 'Name Change', CLOSECLICK, CLOSETEXT, '<img border=0 width=16 height=16 alt=\'Close\' title=\'Close\' src=\'<TMPL_VAR NAME=IMGPATH>/closex.gif\'>');"><img src="<TMPL_VAR NAME=IMGPATH>/info.gif" border="0" width="16" height="16"></a></td>
    </tr>
    <tr>
      <td class="smallfont1" colspan="3"><hr width="80%"></td>
    </tr>
    <tr>
      <td colspan="3">
		<table width="600" cellpadding="2">
  		<tr>
		    <td class="smallfont1"><input type="checkbox" name="bankruptcy" value="1" <TMPL_VAR NAME=bankruptcy> onClick="">New Bankruptcy Filing&nbsp;&nbsp;<a href="javascript:void(0);" onClick="var layerfgcolor = get_layer_colors('fgcolor');var layerbgcolor = get_layer_colors('bgcolor');return overlib('<br>Appends to the Unique ID(s) any new filing or disposed bankruptcy for the subject. Fields returned: Court code,  case number, date filed, filing chapter, disposition, date disposed, subject (last name, first name, middle name, name suffix), SSN, company name, AKAs (last name, first name, middle name, address, city, state, zip), joint debtor (last name, first name, middle name, suffix, SSN, address, city, state, zip), judge, filing type, asset indicator,  pro se, attorney (name, address, city, state, zip, phone),  meeting address.<br><br>', CAPTIONSIZE, 2, BORDER, 3, FGCOLOR, layerfgcolor, BGCOLOR, layerbgcolor, CGCOLOR, layerbgcolor, WIDTH, 275, FIXX, 200, FIXY, 345, STICKY, CAPTION, 'New Bankruptcy Filing', CLOSECLICK, CLOSETEXT, '<img border=0 width=16 height=16 alt=\'Close\' title=\'Close\' src=\'<TMPL_VAR NAME=IMGPATH>/closex.gif\'>');"><img src="<TMPL_VAR NAME=IMGPATH>/info.gif" border="0" width="16" height="16"></a>&nbsp;&nbsp;<TMPL_UNLESS HIDE_PRICES><b>$0.75 per hit</b></TMPL_UNLESS></td>
		    <td class="smallfont1"><input type="checkbox" name="deathcheck" value="1" <TMPL_VAR NAME=deathcheck> onClick="">Death Check&nbsp;&nbsp;<a href="javascript:void(0);" onClick="var layerfgcolor = get_layer_colors('fgcolor');var layerbgcolor = get_layer_colors('bgcolor');return overlib('<br>Appends to the Unique ID(s) the date of death for the subject.<br><br>', CAPTIONSIZE, 2, BORDER, 3, FGCOLOR, layerfgcolor, BGCOLOR, layerbgcolor, CGCOLOR, layerbgcolor, WIDTH, 275, FIXX, 200, FIXY, 345, STICKY, CAPTION, 'Death Check', CLOSECLICK, CLOSETEXT, '<img border=0 width=16 height=16 alt=\'Close\' title=\'Close\' src=\'<TMPL_VAR NAME=IMGPATH>/closex.gif\'>');"><img src="<TMPL_VAR NAME=IMGPATH>/info.gif" border="0" width="16" height="16"></a>&nbsp;&nbsp;<TMPL_UNLESS HIDE_PRICES><b>$0.25 per hit</b></TMPL_UNLESS></td>
		  </tr>
		  <tr>
		    <td class="smallfont1"><input type="checkbox" name="newvehicle" value="1" <TMPL_VAR NAME=newvehicle> onClick="">New Vehicle Registration&nbsp;&nbsp;<a href="javascript:void(0);" onClick="var layerfgcolor = get_layer_colors('fgcolor');var layerbgcolor = get_layer_colors('bgcolor');return overlib('<br>Appends to the Unique ID(s) vehicle information registered to the subject. Fields returned: tag number, VIN number, major and minor color, vehicle year, make, model, body style, series, expiration date, lien holder.<br><br>', CAPTIONSIZE, 2, BORDER, 3, FGCOLOR, layerfgcolor, BGCOLOR, layerbgcolor, CGCOLOR, layerbgcolor, WIDTH, 275, FIXX, 200, FIXY, 345, STICKY, CAPTION, 'New Vehicle Registration', CLOSECLICK, CLOSETEXT, '<img border=0 width=16 height=16 alt=\'Close\' title=\'Close\' src=\'<TMPL_VAR NAME=IMGPATH>/closex.gif\'>');"><img src="<TMPL_VAR NAME=IMGPATH>/info.gif" border="0" width="16" height="16"></a>&nbsp;&nbsp;<TMPL_UNLESS HIDE_PRICES><b>$0.75 per hit</b></TMPL_UNLESS></td>
		    <td class="smallfont1"><input type="checkbox" name="property" value="1" <TMPL_VAR NAME=property> onClick="">Property Owned&nbsp;&nbsp;<a href="javascript:void(0);" onClick="var layerfgcolor = get_layer_colors('fgcolor');var layerbgcolor = get_layer_colors('bgcolor');return overlib('<br>Appends to the Unique ID(s) property deed information recorded for the subject. Fields returned: parcel number, name owner, property address, property city, property state, property zip, sale date, sale price, name seller, mortgage amount, assessed value.<br><br>', CAPTIONSIZE, 2, BORDER, 3, FGCOLOR, layerfgcolor, BGCOLOR, layerbgcolor, CGCOLOR, layerbgcolor, WIDTH, 275, FIXX, 200, FIXY, 345, STICKY, CAPTION, 'Property Owned', CLOSECLICK, CLOSETEXT, '<img border=0 width=16 height=16 alt=\'Close\' title=\'Close\' src=\'<TMPL_VAR NAME=IMGPATH>/closex.gif\'>');"><img src="<TMPL_VAR NAME=IMGPATH>/info.gif" border="0" width="16" height="16"></a>&nbsp;&nbsp;<TMPL_UNLESS HIDE_PRICES><b>$1.00 per hit</b></TMPL_UNLESS></td>
		  </tr>
		</table>
	  </td>
    </tr>
</table>
    </td>
  </tr>
</table>
<!-- END append_fields_body.tpl -->
