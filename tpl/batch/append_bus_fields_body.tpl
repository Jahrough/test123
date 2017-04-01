<!-- BEGIN append_bus_fields_body.tpl -->
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
    <td class="batchpricingheader" colspan="2">&nbsp;<b>Basic Business Batch -- <TMPL_UNLESS HIDE_PRICES>$.25 for basic </TMPL_UNLESS>data plus any of the following:</b></font></td>
  
  </tr>
  <tr>
    <td colspan="2" class="smallfont1"><input type="checkbox" name="includebusphone" value="1" <TMPL_VAR NAME=includebusphone> onClick="if(!checkallow_bus(this)){return false;};">Other Businesses at Phone&nbsp;&nbsp;<a href="javascript:void(0);" onClick="var layerfgcolor = get_layer_colors('fgcolor');var layerbgcolor = get_layer_colors('bgcolor');return overlib('<br>Append up to six (6) other businesses associated with the phone number in the basic batch result.<br><br>', CAPTIONSIZE, 2, BORDER, 3, FGCOLOR, layerfgcolor, BGCOLOR, layerbgcolor, CGCOLOR, layerbgcolor, WIDTH, 275, FIXX, 250, FIXY, 205, STICKY, CAPTION, 'Other Busniesses at Phone', CLOSECLICK, CLOSETEXT, '<img border=0 width=16 height=16 alt=\'Close\' title=\'Close\' src=\'<TMPL_VAR NAME=IMGPATH>/closex.gif\'>');"><img src="<TMPL_VAR NAME=IMGPATH>/info.gif" border="0" width="16" height="16"></a></td>
  </tr>
  <tr>
    <td colspan="2" class="smallfont1"><input type="checkbox" name="includebusaddress" value="1" <TMPL_VAR NAME=includebusaddress> onClick="if(!checkallow_bus(this)){return false;};">Other Businesses at Address&nbsp;&nbsp;<a href="javascript:void(0);" onClick="var layerfgcolor = get_layer_colors('fgcolor');var layerbgcolor = get_layer_colors('bgcolor');return overlib('<br>Appends up to ten (10) other businesses associated with the address in the basic batch result.<br><br>', CAPTIONSIZE, 2, BORDER, 3, FGCOLOR, layerfgcolor, BGCOLOR, layerbgcolor, CGCOLOR, layerbgcolor, WIDTH, 275, FIXX, 250, FIXY, 205, STICKY, CAPTION, 'Other Busniesses at Address', CLOSECLICK, CLOSETEXT, '<img border=0 width=16 height=16 alt=\'Close\' title=\'Close\' src=\'<TMPL_VAR NAME=IMGPATH>/closex.gif\'>');"><img src="<TMPL_VAR NAME=IMGPATH>/info.gif" border="0" width="16" height="16"></a></td>
  </tr>
  <tr>
    <td class="batchpricingheader" colspan="2">&nbsp;<b>Add any of the following:</b></td>
  </tr>
  <tr>
    <td colspan="2" class="smallfont1"><input type="checkbox" name="includebusbankruptcy" value="1" <TMPL_VAR NAME=includebusbankruptcy> onClick="if(!checkallow_bus(this)){return false;};change_total(this, <TMPL_VAR NAME=includebusbankruptcy-price>,document.forms[0].BATCH_TOTAL,document.forms[0].BATCH_PRE_TOTAL)">Add a Current Bankruptcy<TMPL_UNLESS HIDE_PRICES> for only an additional $0.25 per record submitted</TMPL_UNLESS>&nbsp;&nbsp;<a href="javascript:void(0);" onClick="var layerfgcolor = get_layer_colors('fgcolor');var layerbgcolor = get_layer_colors('bgcolor');return overlib('<br>Appends the most recent bankruptcy data matching the (1) company and state or (2) just the company name.  NOTE: The company name and address may not be identical matches to the basic batch result.<br><br>', CAPTIONSIZE, 2, BORDER, 3, FGCOLOR, layerfgcolor, BGCOLOR, layerbgcolor, CGCOLOR, layerbgcolor, WIDTH, 275, FIXX, 230, FIXY, 205, STICKY, CAPTION, 'Current Bankruptcies', CLOSECLICK, CLOSETEXT, '<img border=0 width=16 height=16 alt=\'Close\' title=\'Close\' src=\'<TMPL_VAR NAME=IMGPATH>/closex.gif\'>');"><img src="<TMPL_VAR NAME=IMGPATH>/info.gif" border="0" width="16" height="16"></a></td>
  </tr>
  <tr>
    <td colspan="2" class="smallfont1"><input type="checkbox" name="includecorpfilings" value="1" <TMPL_VAR NAME=includecorpfilings> onClick="if(!checkallow_bus(this)){return false;};change_total(this, <TMPL_VAR NAME=includecorpfilings-price>,document.forms[0].BATCH_TOTAL,document.forms[0].BATCH_PRE_TOTAL)">Add Current Corporate Filing<TMPL_UNLESS HIDE_PRICES> for only $1.00 per record match</TMPL_UNLESS>&nbsp;&nbsp;<a href="javascript:void(0);" onClick="var layerfgcolor = get_layer_colors('fgcolor');var layerbgcolor = get_layer_colors('bgcolor');return overlib('<br>Appends one corporate filing record, matching the (1) company and state or (2) just the company name.  NOTE: The company name and address may not be identical matches to the basic batch result.<br><br>', CAPTIONSIZE, 2, BORDER, 3, FGCOLOR, layerfgcolor, BGCOLOR, layerbgcolor, CGCOLOR, layerbgcolor, WIDTH, 275, FIXX, 230, FIXY, 205, STICKY, CAPTION, 'Current Corporate Filings', CLOSECLICK, CLOSETEXT, '<img border=0 width=16 height=16 alt=\'Close\' title=\'Close\' src=\'<TMPL_VAR NAME=IMGPATH>/closex.gif\'>');"><img src="<TMPL_VAR NAME=IMGPATH>/info.gif" border="0" width="16" height="16"></a></td>
  </tr>
  <tr>
    <td width="600" colspan="2"><hr width="600">
  </tr>
  <tr>
    <td class="batchpricingheader" colspan="2">&nbsp;<b>OR select a Preconfigured Append:</b></td>
  </tr>
  <tr>
    <td colspan="2" class="smallfont1"><input type="checkbox" name="busreversephones" value="1" <TMPL_VAR NAME=busreversephones> onClick="clearcorpfilingsonly(<TMPL_VAR NAME=corpfilingsonly-price>);clearbuscorp(<TMPL_VAR NAME=includecorpfilings-price>);clearbusbankruptcy(<TMPL_VAR NAME=includebusbankruptcy-price>);change_total(this, <TMPL_VAR NAME=busreversephones-price>,document.forms[0].BATCH_TOTAL,document.forms[0].BATCH_PRE_TOTAL);quickpick_bus(this);">Reverse Phone Lookup<TMPL_UNLESS HIDE_PRICES> for $.10 per record match</TMPL_UNLESS>&nbsp;&nbsp;<a href="javascript:void(0);" onClick="var layerfgcolor = get_layer_colors('fgcolor');var layerbgcolor = get_layer_colors('bgcolor');return overlib('<br>Appends to the output record name and address based on the submitted phone number.<br><br>', CAPTIONSIZE, 2, BORDER, 3, FGCOLOR, layerfgcolor, BGCOLOR, layerbgcolor, CGCOLOR, layerbgcolor, WIDTH, 275, FIXX, 330, FIXY, 320, STICKY, CAPTION, 'Reverse Phone Lookups', CLOSECLICK, CLOSETEXT, '<img border=0 width=16 height=16 alt=\'Close\' title=\'Close\' src=\'<TMPL_VAR NAME=IMGPATH>/closex.gif\'>');"><img src="<TMPL_VAR NAME=IMGPATH>/info.gif" border="0" width="16" height="16"></a></td>
  </tr>
  <tr>
    <td colspan="2" class="smallfont1"><input type="checkbox" name="corpfilingsonly" value="1" <TMPL_VAR NAME=corpfilingsonly> onClick="clearbusreversephones(<TMPL_VAR NAME=busreversephones-price>);clearbuscorp(<TMPL_VAR NAME=includecorpfilings-price>);clearbusbankruptcy(<TMPL_VAR NAME=includebusbankruptcy-price>);change_total(this, <TMPL_VAR NAME=corpfilingsonly-price>,document.forms[0].BATCH_TOTAL,document.forms[0].BATCH_PRE_TOTAL);quickpick_bus(this);">Corporate Filings<TMPL_UNLESS HIDE_PRICES> for $1.00 per record match</TMPL_UNLESS>&nbsp;&nbsp;<a href="javascript:void(0);" onClick="var layerfgcolor = get_layer_colors('fgcolor');var layerbgcolor = get_layer_colors('bgcolor');return overlib('<br>Appends up to six (6) records sorted by filing date in reverse chronological order. The order of precedence for matching is (1) company name and address; (2) company and state then (3) company name only.<br><br>', CAPTIONSIZE, 2, BORDER, 3, FGCOLOR, layerfgcolor, BGCOLOR, layerbgcolor, CGCOLOR, layerbgcolor, WIDTH, 275, FIXX, 330, FIXY, 320, STICKY, CAPTION, 'Corporate Filings', CLOSECLICK, CLOSETEXT, '<img border=0 width=16 height=16 alt=\'Close\' title=\'Close\' src=\'<TMPL_VAR NAME=IMGPATH>/closex.gif\'>');"><img src="<TMPL_VAR NAME=IMGPATH>/info.gif" border="0" width="16" height="16"></a></td>
  </tr>
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

<!-- END append_bus_fields_body.tpl -->
