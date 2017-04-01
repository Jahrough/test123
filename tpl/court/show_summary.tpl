<!-- Begin show_summary.tpl -->
<TMPL_INCLUDE NAME="court_header.tpl">
<script src="<TMPL_VAR NAME='JSPATH'>/court/summary.js"></script>

<div align="center">

<table border="0" cellpadding="0" cellspacing="0" width="765">
<tr>
<td width="15"><img src="<TMPL_VAR NAME=IMGPATH>/spacer.gif" border="0" width="15" height="1"></td>
<td width="750" valign="top">

<div align="left" class="courtpagetitle">ORDER SUMMARY:<BR></div>
<P>

<div align="left" class="smallfont1">

<TMPL_IF IDENTITY_LOOP>
<TMPL_LOOP IDENTITY_LOOP>
<TMPL_INCLUDE NAME="identity.tpl">
<P>
</TMPL_LOOP>
</TMPL_IF>


<b>To make modifications to your Court Search order, click the PREVIOUS button below.<br><br>
If this Order Summary is correct, proceed to the payment screen by clicking the NEXT button below.</b><br><br>



<table border="0" cellpadding="2" cellspacing="0" class="courttableborder">
<tr>
<td valign="top">
<table border="0" cellpadding="0" cellspacing="0" width="740" class="courttablebody">
<TMPL_IF RESULTS>
<TMPL_LOOP RESULTS>
<tr class="courttableheader">
<td colspan="3"><img src="<TMPL_VAR NAME=IMGPATH>/spacer.gif" border="0" height="2" width="1"></td>
</tr>
<tr class="courttableheader">
<td class="unifont1" colspan="3" align="center"><b>State: <TMPL_VAR STATE_NAME></b></td>
</tr>
<tr class="courttableheader">
<td colspan="3"><img src="<TMPL_VAR NAME=IMGPATH>/spacer.gif" border="0" height="2" width="1"></td>
</tr>
<tr class="courttableborder">
<td colspan="3"><img src="<TMPL_VAR NAME=IMGPATH>/spacer.gif" border="0" height="2" width="1"></td>
</tr>

  <TMPL_IF COUNTIES>
  <TMPL_LOOP COUNTIES>
<tr><td colspan="3">&nbsp;</td></tr>
<tr>
<td class="unifont1" colspan="3"><TMPL_VAR INDENT><b><TMPL_VAR COUNTY> COUNTY ADDRESSES</b></td>
</tr>

    <TMPL_IF ADDRESSES>
    <TMPL_LOOP ADDRESSES>
<tr>
<td class="smallfont1" colspan="3"><TMPL_VAR INDENT><TMPL_INCLUDE NAME="build_address.tpl"></td>
</tr>
  	</TMPL_LOOP>
<tr><td colspan="3">&nbsp;</td></tr>
  	</TMPL_IF>

<tr>
<td class="unifont1" width="400"><TMPL_VAR INDENT><b><TMPL_VAR COUNTY_DSP> County Searches</b></td>
<td class="unifont1" width="200"><b>Est. Return</b></td>
<td class="unifont1" width="140" align="right"><b>Ext. Price</b>&nbsp;&nbsp;</td>
</tr>

    <TMPL_IF SEARCHES>
    <TMPL_LOOP SEARCHES>
      <TMPL_IF HIDE_COUNTY_SEARCH>
<tr>
<td class="unifont1" width="600" colspan="2"><TMPL_VAR INDENT><TMPL_VAR INDENT>[Search not Currently Available]</td>
<td class="smallfont1" width="140" align="right"><TMPL_VAR INDENT>$0.00&nbsp;&nbsp;</td>
</tr>
      <TMPL_ELSE>
<tr>
<td class="smallfont1" width="400"><TMPL_VAR INDENT><TMPL_VAR DESC></td>
<td class="smallfont1" width="200"><TMPL_VAR INDENT>5-14</td>
<td class="smallfont1" width="140" align="right"><TMPL_VAR INDENT><TMPL_IF IS_SURCHARGE>(Incl Surchg) </TMPL_IF>$<TMPL_VAR PRICE>&nbsp;&nbsp;</td>
</tr>
      </TMPL_IF>
  	</TMPL_LOOP>
	  <TMPL_ELSE>
<tr>
<td class="unifont1" width="600" colspan="2"><TMPL_VAR INDENT><TMPL_VAR INDENT>[No Searches Selected]</td>
<td class="smallfont1" width="140" align="right"><TMPL_VAR INDENT>$0.00&nbsp;&nbsp;</td>
</tr>
  	</TMPL_IF>
  </TMPL_LOOP>
  </TMPL_IF>

<TMPL_UNLESS BUSINESS_CS>
<tr><td colspan="3">&nbsp;</td></tr>    
<tr>
<td class="unifont1" colspan="3"><TMPL_VAR INDENT><b>STATE - <TMPL_VAR STATE_NAME></b></td>
</tr>
  <TMPL_IF STATE_SEARCHES>
<tr>
  <TMPL_LOOP STATE_SEARCHES>
    <TMPL_IF SEARCHES>
    <TMPL_LOOP SEARCHES>
<td class="smallfont1" width="400"><TMPL_VAR INDENT><TMPL_VAR DESC></td>
<td class="smallfont1" width="200"><TMPL_VAR INDENT>5-14</td>
<td class="smallfont1" width="140" align="right"><TMPL_VAR INDENT><TMPL_IF HAS_SURCHARGE>(Incl Surchg) </TMPL_IF>$<TMPL_VAR PRICE>&nbsp;&nbsp;</td>
</tr>

	</TMPL_LOOP>
	<TMPL_ELSE>
<td class="unifont1" width="600" colspan="2"><TMPL_VAR INDENT><TMPL_VAR INDENT>[No Searches Selected]</td>
<td class="smallfont1" width="140" align="right"><TMPL_VAR INDENT>$0.00&nbsp;&nbsp;</td>
</tr>
	</TMPL_IF>
  </TMPL_LOOP>
  <TMPL_ELSE>
<tr>
<td class="unifont1" width="600" colspan="2"><TMPL_VAR INDENT><TMPL_VAR INDENT>[No State Searches Available]</td>
<td class="smallfont1" width="140" align="right"><TMPL_VAR INDENT>$0.00&nbsp;&nbsp;</td>
</tr>
  </TMPL_IF>
</TMPL_UNLESS>

  <TMPL_IF FEDERAL>
  <TMPL_LOOP FEDERAL>
<tr><td colspan="3">&nbsp;</td></tr>    
<tr>
<td class="unifont1" colspan="3"><TMPL_VAR INDENT><b>FEDERAL - <TMPL_VAR DISTRICT></b></td>
</tr>
    <TMPL_IF SEARCHES>
    <TMPL_LOOP SEARCHES>
<tr>
<td class="smallfont1" width="400"><TMPL_VAR INDENT><TMPL_VAR DESC></td>
<td class="smallfont1" width="200"><TMPL_VAR INDENT>5-14</td>
<td class="smallfont1" width="140" align="right"><TMPL_VAR INDENT>$<TMPL_VAR PRICE>&nbsp;&nbsp;</td>
</tr>
  	</TMPL_LOOP>
	<TMPL_ELSE>
<tr>
<td class="unifont1" width="600" colspan="2"><TMPL_VAR INDENT><TMPL_VAR INDENT>[No Searches Selected]</td>
<td class="smallfont1" width="140" align="right"><TMPL_VAR INDENT>$0.00&nbsp;&nbsp;</td>
</tr>
  	</TMPL_IF>
  </TMPL_LOOP>
  </TMPL_IF>

<tr><td colspan="3">&nbsp;</td></tr>
<tr class="courttableborder">
<td colspan="3"><img src="<TMPL_VAR NAME=IMGPATH>/spacer.gif" border="0" height="2" width="1"></td>
</tr>
</TMPL_LOOP>
</TMPL_IF>

<TMPL_IF NAME=MANUAL_SELECT_STATE_LOOP>
<tr class="courttableheader">
  <td width="100%" class="unifont1" colspan="3" align="center"><b>Custom State Searches</b></td>
</tr>
<tr class="courttableborder">
  <td colspan="3"><img src="<TMPL_VAR NAME=IMGPATH>/spacer.gif" border="0" height="2" width="1"></td>
</tr>
<tr><td colspan="3">&nbsp;</td></tr>
<TMPL_LOOP NAME=MANUAL_SELECT_STATE_LOOP>
<tr class="ct">
  <td class="smallfont1" nowrap="1"><TMPL_VAR INDENT><TMPL_VAR NAME=DESC></td>
  <td class="smallfont1"><TMPL_VAR INDENT>5-14 DAYS</td>
  <td class="smallfont1" align='right'><TMPL_IF SURCHARGE>(Incl Surchg) </TMPL_IF><TMPL_VAR INDENT>$<TMPL_VAR PRICE>&nbsp;&nbsp;</td>
</tr>
<tr>
  <td colspan="3"><img src="<TMPL_VAR NAME=IMGPATH>/spacer.gif" border="0" height="2" width="1"></td>
</tr>
</TMPL_LOOP>
<tr>
  <td colspan="3"><img src="<TMPL_VAR NAME=IMGPATH>/spacer.gif" border="0" height="2" width="1"></td>
</tr>
<tr><td colspan="3">&nbsp;</td></tr>
<tr class="courttableborder">
  <td colspan="3"><img src="<TMPL_VAR NAME=IMGPATH>/spacer.gif" border="0" height="2" width="1"></td>
</tr>
</TMPL_IF>
<TMPL_IF NAME=MANUAL_SELECT_COUNTY_LOOP>
<tr class="courttableheader">
  <td width="100%" class="unifont1" colspan="3" align="center"><b>Custom County Searches</b></td>
</tr>
<tr class="courttableborder">
  <td colspan="3"><img src="<TMPL_VAR NAME=IMGPATH>/spacer.gif" border="0" height="2" width="1"></td>
</tr>
<tr><td colspan="3">&nbsp;</td></tr>
<TMPL_LOOP NAME=MANUAL_SELECT_COUNTY_LOOP>
<tr class="ct">
  <td class="smallfont1" nowrap="1"><TMPL_VAR INDENT><TMPL_VAR NAME=DESC></td>
  <td class="smallfont1"><TMPL_VAR INDENT>5-14 DAYS</td>
  <td class="smallfont1" align='right'><TMPL_VAR INDENT><TMPL_IF SURCHARGE>(Incl Surchg) </TMPL_IF>$<TMPL_VAR PRICE>&nbsp;&nbsp;</td>
</tr>
<tr>
  <td colspan="3"><img src="<TMPL_VAR NAME=IMGPATH>/spacer.gif" border="0" height="2" width="1"></td>
</tr>
</TMPL_LOOP>
<tr>
  <td colspan="3"><img src="<TMPL_VAR NAME=IMGPATH>/spacer.gif" border="0" height="2" width="1"></td>
</tr>
<tr><td colspan="3">&nbsp;</td></tr>
<tr class="courttableborder">
  <td colspan="3"><img src="<TMPL_VAR NAME=IMGPATH>/spacer.gif" border="0" height="2" width="1"></td>
</tr>
</TMPL_IF>
<TMPL_IF NAME=MANUAL_SELECT_FEDERAL_LOOP>
<tr class="courttableheader">
  <td width="100%" class="unifont1" colspan="3" align="center"><b>Custom Federal District Searches</b></td>
</tr>
<tr class="courttableborder">
  <td colspan="3"><img src="<TMPL_VAR NAME=IMGPATH>/spacer.gif" border="0" height="2" width="1"></td>
</tr>
<tr><td colspan="3">&nbsp;</td></tr>
<TMPL_LOOP NAME=MANUAL_SELECT_FEDERAL_LOOP>
<tr class="ct">
  <td class="smallfont1" nowrap="1"><TMPL_VAR INDENT><TMPL_VAR NAME=DESC></td>
  <td class="smallfont1"><TMPL_VAR INDENT>5-14 DAYS</td>
  <td class="smallfont1" align='right'><TMPL_VAR INDENT>$<TMPL_VAR PRICE>&nbsp;&nbsp;</td>
</tr>
<tr>
  <td colspan="3"><img src="<TMPL_VAR NAME=IMGPATH>/spacer.gif" border="0" height="2" width="1"></td>
</tr>
</TMPL_LOOP>
<tr><td colspan="3">&nbsp;</td></tr>
<tr>
  <td colspan="3"><img src="<TMPL_VAR NAME=IMGPATH>/spacer.gif" border="0" height="2" width="1"></td>
</tr>
</TMPL_IF>

<tr>
<td colspan="3"><img src="<TMPL_VAR NAME=IMGPATH>/spacer.gif" border="0" height="2" width="1"></td>
</tr>
<tr><td class="unifont1" align="right" colspan="3"><b>Total: $<TMPL_VAR TOTAL></b><INPUT TYPE=HIDDEN NAME="TOTAL_UNFORMATTED" VALUE="<TMPL_VAR TOTAL_UNFORMATTED>">&nbsp;&nbsp;</td></tr>
<tr>
<td colspan="3"><img src="<TMPL_VAR NAME=IMGPATH>/spacer.gif" border="0" height="2" width="1"></td>
</tr>
</table>
</td>
</tr>
</table>

<br>
<center>
<table border="0" cellpadding="0" cellspacing="0">
<tr>
<td class="unifont1" align="center">
<input type="button" name="SUBMIT" value="<< PREVIOUS" onClick="<TMPL_IF FROM_SUMMARY>send_event('COURT/SHOW_SEARCH_SELECT');<TMPL_ELSE>send_event('COURT/MORE_DETAIL_RETURN');</TMPL_IF>this.disabled=true">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<!--<input type="button" name="SUBMIT" value="NEXT >>" onClick="send_event('COURT/SHOW_CONFIRM_FINAL');this.disabled=true">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -->
<input type="button" name="SUBMIT" value="NEXT >>" onClick="if(!validate3()) {return false;}; send_event('MANAGE/COURT_MANAGE_CARDS');this.disabled=true">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</tr>
</table>
</center>

</td>
</tr>
</table>

</div>

<INPUT TYPE="HIDDEN" NAME="FROM_SUMMARY" VALUE="<TMPL_VAR FROM_SUMMARY>">
<INPUT TYPE="HIDDEN" NAME="FROM_DETAIL" VALUE="<TMPL_VAR FROM_DETAIL>">

<TMPL_INCLUDE NAME="court_footer.tpl">
<!-- End show_summary.tpl -->
