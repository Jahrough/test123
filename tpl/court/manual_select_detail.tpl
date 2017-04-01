<!-- Begin manual_select_detail.tpl -->
<TMPL_IF NAME=MANUAL_SELECT_STATE_LOOP>
<tr class="courttableheader">
  <td width="100%" class="unifont1" colspan="5" align="center"><b>Custom State Searches</b></td>
</tr>
<tr class="courttableborder">
  <td colspan="5"><img src="<TMPL_VAR NAME=IMGPATH>/spacer.gif" border="0" height="2" width="1"></td>
</tr>
<tr><td colspan="5">&nbsp;</td></tr>
<TMPL_LOOP NAME=MANUAL_SELECT_STATE_LOOP>
<tr class="ctc">
  <td class="smallfont1" nowrap="1"<TMPL_IF NO_DAYS> colspan="2"</TMPL_IF>><TMPL_VAR INDENT><b><TMPL_VAR NAME=DESC></b></td>
  <TMPL_UNLESS NO_DAYS><td class="smallfont1" align='center'><TMPL_VAR INDENT>2-14 DAYS</td></TMPL_UNLESS>
  <td class="smallfont1" align="right"><TMPL_VAR INDENT>$<TMPL_VAR BASE_PRICE></td>
  <td class="smallfont1" align='right'><TMPL_VAR INDENT>$<TMPL_VAR SURCHARGE></td>
  <td class="smallfont1" align='right'><TMPL_VAR INDENT>$<TMPL_VAR PRICE>&nbsp;&nbsp;</td>
</tr>
<tr>
  <td colspan="5"><img src="<TMPL_VAR NAME=IMGPATH>/spacer.gif" border="0" height="2" width="1"></td>
</tr>
</TMPL_LOOP>
<tr><td colspan="5">&nbsp;</td></tr>
<tr>
  <td colspan="5"><img src="<TMPL_VAR NAME=IMGPATH>/spacer.gif" border="0" height="2" width="1"></td>
</tr>
<tr class="courttableborder">
  <td colspan="5"><img src="<TMPL_VAR NAME=IMGPATH>/spacer.gif" border="0" height="2" width="1"></td>
</tr>
</TMPL_IF>
<TMPL_IF NAME=MANUAL_SELECT_COUNTY_LOOP>
<tr class="courttableheader">
  <td width="100%" class="unifont1" colspan="5" align="center"><b>Custom County Searches</b></td>
</tr>
<tr class="courttableborder">
  <td colspan="5"><img src="<TMPL_VAR NAME=IMGPATH>/spacer.gif" border="0" height="2" width="1"></td>
</tr>
<tr><td colspan="5">&nbsp;</td></tr>
<TMPL_LOOP NAME=MANUAL_SELECT_COUNTY_LOOP>
<tr class="ctc">
  <td class="smallfont1" nowrap="1"<TMPL_IF NO_DAYS> colspan="2"</TMPL_IF>><TMPL_VAR INDENT><b><TMPL_VAR NAME=DESC></b></td>
  <TMPL_UNLESS NO_DAYS><td class="smallfont1" align='center'><TMPL_VAR INDENT>2-14 DAYS</td></TMPL_UNLESS>
  <td class="smallfont1" align="right"><TMPL_VAR INDENT>$<TMPL_VAR BASE_PRICE></td>
  <td class="smallfont1" align='right'><TMPL_VAR INDENT>$<TMPL_VAR SURCHARGE></td>
  <td class="smallfont1" align='right'><TMPL_VAR INDENT>$<TMPL_VAR PRICE>&nbsp;&nbsp;</td>
</tr>
<tr>
  <td colspan="5"><img src="<TMPL_VAR NAME=IMGPATH>/spacer.gif" border="0" height="2" width="1"></td>
</tr>
</TMPL_LOOP>
<tr><td colspan="5">&nbsp;</td></tr>
<tr>
  <td colspan="5"><img src="<TMPL_VAR NAME=IMGPATH>/spacer.gif" border="0" height="2" width="1"></td>
</tr>
<tr class="courttableborder">
  <td colspan="5"><img src="<TMPL_VAR NAME=IMGPATH>/spacer.gif" border="0" height="2" width="1"></td>
</tr>
</TMPL_IF>
<TMPL_IF NAME=MANUAL_SELECT_FEDERAL_LOOP>
<tr class="courttableheader">
  <td width="100%" class="unifont1" colspan="5" align="center"><b>Custom Federal District Searches</b></td>
</tr>
<tr class="courttableborder">
  <td colspan="5"><img src="<TMPL_VAR NAME=IMGPATH>/spacer.gif" border="0" height="2" width="1"></td>
</tr>
<tr><td colspan="5">&nbsp;</td></tr>
<TMPL_LOOP NAME=MANUAL_SELECT_FEDERAL_LOOP>
<tr class="ctc">
  <td class="smallfont1" nowrap="1"<TMPL_IF NO_DAYS> colspan="2"</TMPL_IF>><TMPL_VAR INDENT><b><TMPL_VAR NAME=DESC></b></td>
  <TMPL_UNLESS NO_DAYS><td class="smallfont1" align='center'><TMPL_VAR INDENT>2-14 DAYS</td></TMPL_UNLESS>
  <td class="smallfont1" align="right"><TMPL_VAR INDENT>$<TMPL_VAR PRICE></td>
  <td class="smallfont1" align="right">$0.00</td>
  <td class="smallfont1" align='right'><TMPL_VAR INDENT>$<TMPL_VAR PRICE>&nbsp;&nbsp;</td>
</tr>
<tr>
  <td colspan="5"><img src="<TMPL_VAR NAME=IMGPATH>/spacer.gif" border="0" height="2" width="1"></td>
</tr>
</TMPL_LOOP>
<tr><td colspan="5">&nbsp;</td></tr>
<tr>
  <td colspan="5"><img src="<TMPL_VAR NAME=IMGPATH>/spacer.gif" border="0" height="2" width="1"></td>
</tr>
</TMPL_IF>
<!-- End manual_select_detail.tpl -->
