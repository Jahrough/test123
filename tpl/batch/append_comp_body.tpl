<!-- BEGIN append_comp_fields_body.tpl -->
<table border="0" width="600">
  <tr>
    <td width="600">
    <br>
    <table border="0" cellpadding="0" cellspacing="0" width="600">
      <tr>
        <td class="wizardcounter" width="50%" align="left">Batch Wizard <b><TMPL_VAR TITLE_PAGE></b></td>
	<td class="wizardcounter" width="50%" align="right"><b>Click the&nbsp;<a href="javascript:void(0);" onClick="var layerfgcolor = get_layer_colors('fgcolor');var layerbgcolor = get_layer_colors('bgcolor');return overlib('<br>Click this button for more detail regarding a particular corresponding item.<br><br>', CAPTIONSIZE, 2, BORDER, 3, FGCOLOR, layerfgcolor, BGCOLOR, layerbgcolor, CGCOLOR, layerbgcolor, WIDTH, 300, BELOW, LEFT, STICKY, CAPTION, 'More Detail', CLOSECLICK, CLOSETEXT, '<img border=0 width=16 height=16 alt=\'Close\' title=\'Close\' src=\'<TMPL_VAR NAME=IMGPATH>/closex.gif\'>');"><img src="<TMPL_VAR NAME=IMGPATH>/info.gif" border="0" width="16" height="16"></a>&nbsp;Button For More Detail&nbsp;</b></td>
      </tr>
    </table>
    </td>
  </tr>
  <tr>
    <td align="center" class="batchbanner" colspan="2"><b>Report Options</b></td>
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

<table border="1" cellpadding="0" cellspacing="0" width="600" bordercolor="#000000">
  <tr>
    <td>
    <table border="0" cellpadding="2" cellspacing="0" width="600">
  <tr>
    <td class="batchpricingheader" colspan="4">&nbsp;<b><TMPL_UNLESS HIDE_PRICES>Base Report Price:&nbsp;&nbsp;$0.25&nbsp;-&nbsp;Options below included<TMPL_ELSE>Base Report Options:</TMPL_UNLESS>&nbsp;&nbsp;&nbsp;</b></td>
  </tr>
  <tr>
    <td class="smallfont1" width="1%" NOWRAP>&nbsp;Others Using Social Security Number&nbsp;&nbsp;<a href="javascript:void(0);" onClick="var layerfgcolor = get_layer_colors('fgcolor');var layerbgcolor = get_layer_colors('bgcolor');return overlib('<br>Appends to the output record the names of other people who are in some way associated with the subject\'s Social Security Number. NOTE: In many cases the other persons associated with the SSN is the result of clerical keying errors and DOES NOT usually indicate any type of fraud or deception.<br><br>', CAPTIONSIZE, 2, BORDER, 3, FGCOLOR, layerfgcolor, BGCOLOR, layerbgcolor, CGCOLOR, layerbgcolor, WIDTH, 300, FIXX, 190, FIXY, 100, STICKY, CAPTION, 'Others Using Social Security Number', CLOSECLICK, CLOSETEXT, '<img border=0 width=16 height=16 alt=\'Close\' title=\'Close\' src=\'<TMPL_VAR NAME=IMGPATH>/closex.gif\'>');"><img src="<TMPL_VAR NAME=IMGPATH>/info.gif" border="0" width="16" height="16"></a></td>
    <td class="smallfont1" width="1%" NOWRAP>Previous/Unverified Addresses&nbsp;&nbsp;<a href="javascript:void(0);" onClick="var layerfgcolor = get_layer_colors('fgcolor');var layerbgcolor = get_layer_colors('bgcolor');return overlib('<br>Appends to the output record with up to five (5) historical addresses for the subject.<br><br>', CAPTIONSIZE, 2, BORDER, 3, FGCOLOR, layerfgcolor, BGCOLOR, layerbgcolor, CGCOLOR, layerbgcolor, WIDTH, 300, FIXX, 190, FIXY, 100, STICKY, CAPTION, 'Previous/Unverified Addresses', CLOSECLICK, CLOSETEXT, '<img border=0 width=16 height=16 alt=\'Close\' title=\'Close\' src=\'<TMPL_VAR NAME=IMGPATH>/closex.gif\'>');"><img src="<TMPL_VAR NAME=IMGPATH>/info.gif" border="0" width="16" height="16"></a></td>
  </tr>
  <tr>
    <td class="smallfont1" width="1%" NOWRAP>&nbsp;Active Addresses for Subject&nbsp;&nbsp;<a href="javascript:void(0);" onClick="var layerfgcolor = get_layer_colors('fgcolor');var layerbgcolor = get_layer_colors('bgcolor');return overlib('<br>Appends to the output record with up to three (3) probable current addresses for the subject and the name associated with each respective address.<br><br>', CAPTIONSIZE, 2, BORDER, 3, FGCOLOR, layerfgcolor, BGCOLOR, layerbgcolor, CGCOLOR, layerbgcolor, WIDTH, 300, FIXX, 190, FIXY, 100, STICKY, CAPTION, 'Active Addresses for Subject', CLOSECLICK, CLOSETEXT, '<img border=0 width=16 height=16 alt=\'Close\' title=\'Close\' src=\'<TMPL_VAR NAME=IMGPATH>/closex.gif\'>');"><img src="<TMPL_VAR NAME=IMGPATH>/info.gif" border="0" width="16" height="16"></a></td>
    <td class="smallfont1" width="1%" NOWRAP>Deceased Date&nbsp;&nbsp;<a href="javascript:void(0);" onClick="var layerfgcolor = get_layer_colors('fgcolor');var layerbgcolor = get_layer_colors('bgcolor');return overlib('<br>Appends to the output record an N (not deceased) flag in the case where the subject is not reported as deceased. If the subject is reported as deceased, the date of death appears in the field with the following date format YYYYMMDD.<br><br>', CAPTIONSIZE, 2, BORDER, 3, FGCOLOR, layerfgcolor, BGCOLOR, layerbgcolor, CGCOLOR, layerbgcolor, WIDTH, 300, FIXX, 190, FIXY, 100, STICKY, CAPTION, 'Deceased Date', CLOSECLICK, CLOSETEXT, '<img border=0 width=16 height=16 alt=\'Close\' title=\'Close\' src=\'<TMPL_VAR NAME=IMGPATH>/closex.gif\'>');"><img src="<TMPL_VAR NAME=IMGPATH>/info.gif" border="0" width="16" height="16"></a></td>
  </tr>
</table>
    </td>
  </tr>
</table>

<br>
<table border="0" cellpadding="0" cellspacing="0" width="608">
  <tr>
    <td width="304" valign="top">
    <table border="1" cellpadding="0" cellspacing="0" width="300" bordercolor="#000000" height="170">
      <tr>
        <td valign="top">
        <table border="0" cellpadding="2" cellspacing="0">
          <tr>
            <td class="batchpricingheader">&nbsp;<b><TMPL_UNLESS HIDE_PRICES>$1.00 for each selection<TMPL_ELSE>Extra Selections</TMPL_UNLESS></b></td>
          </tr>
          <tr>
            <td class="smallfont1"><input type="checkbox" name="includeassociates" value="1" <TMPL_VAR NAME=includeassociates> onClick="change_total(this, <TMPL_VAR NAME=includeassociates-price>,document.forms[0].BATCH_TOTAL,document.forms[0].BATCH_PRE_TOTAL)">Possible Associates&nbsp;&nbsp;<a href="javascript:void(0);" onClick="var layerfgcolor = get_layer_colors('fgcolor');var layerbgcolor = get_layer_colors('bgcolor');return overlib('<br>Appends to the output record names of people possibly associated with the subject.<br><br>', CAPTIONSIZE, 2, BORDER, 3, FGCOLOR, layerfgcolor, BGCOLOR, layerbgcolor, CGCOLOR, layerbgcolor, WIDTH, 300, FIXX, 190, FIXY, 200, STICKY, CAPTION, 'Possible Associates', CLOSECLICK, CLOSETEXT, '<img border=0 width=16 height=16 alt=\'Close\' title=\'Close\' src=\'<TMPL_VAR NAME=IMGPATH>/closex.gif\'>');"><img src="<TMPL_VAR NAME=IMGPATH>/info.gif" border="0" width="16" height="16"></a></td>
          </tr>
          <tr>
            <td class="smallfont1"><input type="checkbox" name="includeproperty" value="1" <TMPL_VAR NAME=includeproperty> onClick="change_total(this, <TMPL_VAR NAME=includeproperty-price>,document.forms[0].BATCH_TOTAL,document.forms[0].BATCH_PRE_TOTAL)">Possible Properties&nbsp;&nbsp;<a href="javascript:void(0);" onClick="var layerfgcolor = get_layer_colors('fgcolor');var layerbgcolor = get_layer_colors('bgcolor');return overlib('<br>Appends to the output record possible properties owned by the subject.<br><br>', CAPTIONSIZE, 2, BORDER, 3, FGCOLOR, layerfgcolor, BGCOLOR, layerbgcolor, CGCOLOR, layerbgcolor, WIDTH, 300, FIXX, 190, FIXY, 200, STICKY, CAPTION, 'Possible Properties', CLOSECLICK, CLOSETEXT, '<img border=0 width=16 height=16 alt=\'Close\' title=\'Close\' src=\'<TMPL_VAR NAME=IMGPATH>/closex.gif\'>');"><img src="<TMPL_VAR NAME=IMGPATH>/info.gif" border="0" width="16" height="16"></a></td>
          </tr>
          <tr>
            <td class="smallfont1"><input type="checkbox" name="includerelatives" value="1" <TMPL_VAR NAME=includerelatives> onClick="change_total(this, <TMPL_VAR NAME=includerelatives-price>,document.forms[0].BATCH_TOTAL,document.forms[0].BATCH_PRE_TOTAL)">Possible Relatives&nbsp;&nbsp;<a href="javascript:void(0);" onClick="var layerfgcolor = get_layer_colors('fgcolor');var layerbgcolor = get_layer_colors('bgcolor');return overlib('<br>Appends to the output record names of the subject\'s possible first-degree relatives.<br><br>', CAPTIONSIZE, 2, BORDER, 3, FGCOLOR, layerfgcolor, BGCOLOR, layerbgcolor, CGCOLOR, layerbgcolor, WIDTH, 300, FIXX, 190, FIXY, 200, STICKY, CAPTION, 'Possible Relatives', CLOSECLICK, CLOSETEXT, '<img border=0 width=16 height=16 alt=\'Close\' title=\'Close\' src=\'<TMPL_VAR NAME=IMGPATH>/closex.gif\'>');"><img src="<TMPL_VAR NAME=IMGPATH>/info.gif" border="0" width="16" height="16"></a></td>
          </tr>
        </table>
        </td>
      </tr>
    </table>
    </td>
    <td width="304" valign="top">
	<table border="1" cellpadding="0" cellspacing="0" width="304" bordercolor="#000000" height="170">
	  <tr>
		<td valign="top">
	    <table border="0" cellpadding="2" cellspacing="0">
		  <tr>
		    <td class="batchpricingheader">&nbsp;<b><TMPL_UNLESS HIDE_PRICES>$.25 for each selection:<TMPL_ELSE>Extra Selections</TMPL_UNLESS></b></td>
		  </tr>
		  <!--
		  <tr>
		    <td class="smallfont1"><input type="checkbox" name="include_tax_liens_judge" value="1" <TMPL_VAR NAME=include_tax_liens_judge> onClick="change_total(this, <TMPL_VAR NAME=include_tax_liens_judge-price>,document.forms[0].BATCH_TOTAL,document.forms[0].BATCH_PRE_TOTAL)">Liens and Judgments&nbsp;&nbsp;<a href="javascript:void(0);" onClick="var layerfgcolor = get_layer_colors('fgcolor');var layerbgcolor = get_layer_colors('bgcolor');return overlib('<br>Appends to the output record any possible tax liens or judgments found on the subject.<br><br>', CAPTIONSIZE, 2, BORDER, 3, FGCOLOR, layerfgcolor, BGCOLOR, layerbgcolor, CGCOLOR, layerbgcolor, WIDTH, 300, FIXX, 190, FIXY, 200, STICKY, CAPTION, 'Liens and Judgments', CLOSECLICK, CLOSETEXT, '<img border=0 width=16 height=16 alt=\'Close\' title=\'Close\' src=\'<TMPL_VAR NAME=IMGPATH>/closex.gif\'>');"><img src="<TMPL_VAR NAME=IMGPATH>/info.gif" border="0" width="16" height="16"></a></td>
		  </tr>
		  -->
		  <tr>
		    <td class="smallfont1"><input type="checkbox" name="includebankruptcy" value="1" <TMPL_VAR NAME=includebankruptcy> onClick="change_total(this, <TMPL_VAR NAME=includebankruptcy-price>,document.forms[0].BATCH_TOTAL,document.forms[0].BATCH_PRE_TOTAL)">Bankruptcy&nbsp;&nbsp;<a href="javascript:void(0);" onClick="var layerfgcolor = get_layer_colors('fgcolor');var layerbgcolor = get_layer_colors('bgcolor');return overlib('<br>Appends to the output record any possible bankruptcies found on the subject.<br><br>', CAPTIONSIZE, 2, BORDER, 3, FGCOLOR, layerfgcolor, BGCOLOR, layerbgcolor, CGCOLOR, layerbgcolor, WIDTH, 300, FIXX, 190, FIXY, 200, STICKY, CAPTION, 'Bankruptcy', CLOSECLICK, CLOSETEXT, '<img border=0 width=16 height=16 alt=\'Close\' title=\'Close\' src=\'<TMPL_VAR NAME=IMGPATH>/closex.gif\'>');"><img src="<TMPL_VAR NAME=IMGPATH>/info.gif" border="0" width="16" height="16"></a></td>
		  </tr>
		  <tr>
		    <td class="smallfont1"><input type="checkbox" name="includeneighbors" value="11" <TMPL_VAR NAME=includeneighbors> onClick="change_total(this, <TMPL_VAR NAME=includeneighbors-price>,document.forms[0].BATCH_TOTAL,document.forms[0].BATCH_PRE_TOTAL)">Neighbors&nbsp;&nbsp;<a href="javascript:void(0);" onClick="var layerfgcolor = get_layer_colors('fgcolor');var layerbgcolor = get_layer_colors('bgcolor');return overlib('<br>Appends to the output record with up to six (6) neighbors at ten (10) addresses.<br><br>', CAPTIONSIZE, 2, BORDER, 3, FGCOLOR, layerfgcolor, BGCOLOR, layerbgcolor, CGCOLOR, layerbgcolor, WIDTH, 300, FIXX, 190, FIXY, 200, STICKY, CAPTION, 'Neighbors', CLOSECLICK, CLOSETEXT, '<img border=0 width=16 height=16 alt=\'Close\' title=\'Close\' src=\'<TMPL_VAR NAME=IMGPATH>/closex.gif\'>');"><img src="<TMPL_VAR NAME=IMGPATH>/info.gif" border="0" width="16" height="16"></a></td>
		  </tr>
		  <tr>
		    <td class="smallfont1">
		    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Include Neighbors for
		    <select name="neighborhood-count">
		    <option value="1"<TMPL_IF NAME="neighborhood-count-1"> SELECTED</TMPL_IF>>1</option>
		    <option value="2"<TMPL_IF NAME="neighborhood-count-2"> SELECTED</TMPL_IF>>2</option>
		    <option value="3"<TMPL_IF NAME="neighborhood-count-3"> SELECTED</TMPL_IF>>3</option>
		    <option value="4"<TMPL_IF NAME="neighborhood-count-4"> SELECTED</TMPL_IF>>4</option>
		    <option value="5"<TMPL_IF NAME="neighborhood-count-5"> SELECTED</TMPL_IF>>5</option>
		    <option value="6"<TMPL_IF NAME="neighborhood-count-6"> SELECTED</TMPL_IF>>6</option>
		    <option value="7"<TMPL_IF NAME="neighborhood-count-7"> SELECTED</TMPL_IF>>7</option>
		    <option value="8"<TMPL_IF NAME="neighborhood-count-8"> SELECTED</TMPL_IF>>8</option>
		    <option value="9"<TMPL_IF NAME="neighborhood-count-9"> SELECTED</TMPL_IF>>9</option>
		    <option value="10"<TMPL_IF NAME="neighborhood-count-10"> SELECTED</TMPL_IF>>10</option>
		    </select>
		    Address(es)
		    <br>
		    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Include
		    <select name="neighbor-count">
		    <option value="2"<TMPL_IF NAME="neighbor-count-2"> SELECTED</TMPL_IF>>2</option>
		    <option value="3"<TMPL_IF NAME="neighbor-count-3"> SELECTED</TMPL_IF>>3</option>
		    <option value="4"<TMPL_IF NAME="neighbor-count-4"> SELECTED</TMPL_IF>>4</option>
		    <option value="5"<TMPL_IF NAME="neighbor-count-5"> SELECTED</TMPL_IF>>5</option>
		    <option value="6"<TMPL_IF NAME="neighbor-count-6"> SELECTED</TMPL_IF>>6</option>
		    </select>
		    Neighbors for Each Address
		    </td>
		  </tr>
		</table>
	    </td>
	  </tr>
	</table>
	</td>
  </tr>
</table>
<!-- END append_comp_fields_body.tpl -->
