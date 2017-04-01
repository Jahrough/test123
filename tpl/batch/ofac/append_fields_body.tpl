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
  
</table>

<table border="1" cellpadding="5" cellspacing="0" width="600" bordercolor="#000000">

<tr>
<td>
<table border="0" cellpadding="5" cellspacing="0" width="600" bordercolor="#000000">
  <tr>
    <td class="batchpricingheader" colspan="2">&nbsp;<b>Threshold Level:<BR></b></td>
  </tr>

  <tr>
    <td class="smallfont1" colspan="2">
	<select name="threshold" style="width:300px;" width="10" height="3" size="1">
	    <option value="80" <TMPL_IF threshold-80>selected</TMPL_IF>>80%</option>
      <option value="82" <TMPL_IF threshold-82>selected</TMPL_IF>>82%</option>
      <option value="84" <TMPL_IF threshold-84>selected</TMPL_IF>>84%</option>
      <option value="86" <TMPL_IF threshold-86>selected</TMPL_IF>>86%</option>
      <option value="88" <TMPL_IF threshold-88>selected</TMPL_IF>>88%</option>
      <option value="90" <TMPL_IF threshold-90>selected</TMPL_IF>>90%</option>
      <option value="92" <TMPL_IF threshold-92>selected</TMPL_IF>>92%</option>
      <option value="94" <TMPL_IF threshold-94>selected</TMPL_IF>>94%</option>
      <option value="96" <TMPL_IF threshold-96>selected</TMPL_IF>>96%</option>
      <option value="98" <TMPL_IF threshold-98>selected</TMPL_IF>>98%</option>
	    <option value="100" <TMPL_IF threshold-100>selected</TMPL_IF>>100%</option>
	</select>
			&nbsp;&nbsp;<a href="javascript:void(0);" onClick="var layerfgcolor = get_layer_colors('fgcolor');var layerbgcolor = get_layer_colors('bgcolor');return overlib('<br>Threshold: Select 100% through 80% to set how closely the search terms should match the results. &nbsp;A threshold of 100% means that the search and result has to match exactly. &nbsp;A threshold of 80% means that additional fuzzy search logic will be used to look for spelling and name variations. &nbsp;The default is 84% match criteria.<br> <br> Flexible matching algorithms are used in searching to reduce false positive hits and take into account name variations. &nbsp;The matching score is displayed in the results with the highest scored records appearing first:<br> <br>Example:<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Name: <b>BIN LADEN</b><br> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Max Match Score: <b>1.000</b><br> <br> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Name: <b>USAMA BIN LADEN NETWORK</b><br> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Max Match Score: <b>0.866</b><br> <br>', CAPTIONSIZE, 2, BORDER, 3, FGCOLOR, layerfgcolor, BGCOLOR, layerbgcolor, CGCOLOR, layerbgcolor, WIDTH, 400, FIXX, 60, FIXY, 205, STICKY, CAPTION, 'Threshold Level', CLOSECLICK, CLOSETEXT, '<img border=0 width=16 height=16 alt=\'Close\' title=\'Close\' src=\'<TMPL_VAR NAME=IMGPATH>/closex.gif\'>');"><img src="<TMPL_VAR NAME=IMGPATH>/info.gif" border="0" width="16" height="16"></a></td>
  </tr>
</table>
</tr>
</td>

<tr>
<td>
<table border="0" cellpadding="5" cellspacing="0" width="600" bordercolor="#000000">
  <tr>
    <td class="batchpricingheader" colspan="2">&nbsp;<b>Watch Lists:<BR></b></td>
  </tr>

  <tr>
    <td class="smallfont1" colspan="2">
	<input type="radio" name="watchlist" value="true" <TMPL_IF watchlist-true>checked</TMPL_IF>> OFAC
	<input type="radio" name="watchlist" value="false" <TMPL_IF watchlist-false>checked</TMPL_IF>> OFAC and Other Watch Lists
	&nbsp;&nbsp;<a href="javascript:void(0);" onClick="var layerfgcolor = get_layer_colors('fgcolor');var layerbgcolor = get_layer_colors('bgcolor');return overlib('<br>Watchlist: You can also choose to only search the Office of Foreign Asset Control List (OFAC), which includes the Palestinian Legislative Council (PLC) List, by checking the OFAC Search Only box. &nbsp;When searching OFAC only, your results may also contain aliases for an individual.<br><br>Results may include: Full Name, Address, Sourcxe, and Remoarks (e.g., Name Type, Other Names, Date of Birth, Expiration Date, Place of Birth, Vessel Owner and Vessel Type).<br><br>', CAPTIONSIZE, 2, BORDER, 3, FGCOLOR, layerfgcolor, BGCOLOR, layerbgcolor, CGCOLOR, layerbgcolor, WIDTH, 400, FIXX, 60, FIXY, 205, STICKY, CAPTION, 'Watch Lists', CLOSECLICK, CLOSETEXT, '<img border=0 width=16 height=16 alt=\'Close\' title=\'Close\' src=\'<TMPL_VAR NAME=IMGPATH>/closex.gif\'>');"><img src="<TMPL_VAR NAME=IMGPATH>/info.gif" border="0" width="16" height="16"></a></td>
  </tr>

</table>
    </td>
  </tr>
</table>


<br>

<table border="0" cellpadding="0" cellspacing="0" width="608">
  <tr>
    <td width="304" valign="top">
    </td>
    <td width="50"><img src="<TMPL_VAR NAME=IMGPATH>/spacer.gif" width="50" height="1" border="0"></td>

<!-- END append_fields_body.tpl -->
