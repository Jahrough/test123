<!-- Begin more_detail.tpl -->
<TMPL_INCLUDE NAME="court_header.tpl">
<script src="<TMPL_VAR NAME='JSPATH'>/court/search_select.js"></script>


<div align="center">

<table border="0" cellpadding="0" cellspacing="0" width="765">
<tr>
<td width="15"><img src="<TMPL_VAR NAME=IMGPATH>/spacer.gif" border="0" width="15" height="1"></td>
<td width="750" valign="top">

<div align="left" class="courtpagetitle">CUSTOMIZE:<BR>
</div>
<P>

<div align="left" class="smallfont1">  
<TMPL_IF IDENTITY_LOOP>
<TMPL_LOOP IDENTITY_LOOP>
<TMPL_INCLUDE NAME="identity.tpl">
<P>
</TMPL_LOOP>
</TMPL_IF>

<b>Changes can be made to the search selections by clicking the check box to the left of the Court Search desired.<br><br>
Once your selections have been made, click the NEXT button below.<br><br>
If you desire to modify your address selections, click the BACK TO ADDRESSES button below.</b><br><br>

<br>
<center>
  <table border="0" cellpadding="0" cellspacing="0">
    <tr>
      <td class="unifont1" align="center">
        <TMPL_UNLESS BUSINESS_CS><input type="button" name="SUBMIT" value="CUSTOM STATE SEARCHES" onClick="if(!validatestep2()) {return false;}; send_event('COURT/CUSTOM_STATES');this.disabled=true">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</TMPL_UNLESS>
        <input type="button" name="SUBMIT" value="CUSTOM COUNTY SEARCHES" onClick="if(!validatestep2()) {return false;}; send_event('COURT/CUSTOM_COUNTYS');this.disabled=true">
      </td>
    </tr>
    <tr>
      <td class="unifont1" align="center">
        <input type="button" name="SUBMIT" value="CUSTOM FEDERAL DISTRICT SEARCHES" onClick="if(!validatestep2()) {return false;}; send_event('COURT/CUSTOM_FEDERAL');this.disabled=true">
      </td>
    </tr>
  </table>
</center>
<br>


<table border="0" cellpadding="2" cellspacing="0" class="courttableborder">
<tr>
<td valign="top">
<table border="0" cellpadding="0" cellspacing="0" width="740" class="courttablebody">
<TMPL_IF RESULTS>
<TMPL_LOOP RESULTS>

<tr class="courttableheader">
<td colspan="5"><img src="<TMPL_VAR NAME=IMGPATH>/spacer.gif" border="0" height="2" width="1"></td>
</tr>
<tr class="courttableheader">
<td class="unifont1" colspan="5" align="center"><b>State: <TMPL_VAR STATE_NAME></b></td>
</tr>
<tr class="courttableheader">
<td colspan="5"><img src="<TMPL_VAR NAME=IMGPATH>/spacer.gif" border="0" height="2" width="1"></td>
</tr>
<tr class="courttableborder">
<td colspan="5"><img src="<TMPL_VAR NAME=IMGPATH>/spacer.gif" border="0" height="2" width="1"></td>
</tr>

  <TMPL_IF COUNTIES>
  <TMPL_LOOP COUNTIES>
<tr><td colspan="5">&nbsp;</td></tr>
<tr>
<td class="unifont1" colspan="5"><TMPL_VAR INDENT><b><TMPL_VAR COUNTY> COUNTY ADDRESSES</b></td>
</tr>
    <TMPL_IF ADDRESSES>
    <TMPL_LOOP ADDRESSES>
<tr>
<td class="smallfont1" colspan="5"><TMPL_VAR INDENT><TMPL_INCLUDE NAME="build_address.tpl"></td>
</tr>
  	</TMPL_LOOP>
  	</TMPL_IF>

<tr><td colspan="5">&nbsp;</td></tr>

<TMPL_IF SEARCHES>

<tr>
<td class="unifont1" width="330"><TMPL_VAR INDENT><b><TMPL_VAR COUNTY_DSP> County Searches</b>&nbsp;&nbsp;</td>
<td class="unifont1" width="140" align='center' nowrap="1">&nbsp;&nbsp;<b>Est. Return</b></td>
<td class="unifont1" width="80" align='right' nowrap="1">&nbsp;&nbsp;<b>Unit Price</b></td>
<td class="unifont1" width="80" align='right'>&nbsp;&nbsp;<b>Surcharge</b></td>
<td class="unifont1" width="110" align="right" nowrap="1">&nbsp;&nbsp;<b>Ext. Price</b>&nbsp;&nbsp;</td>
</tr>

<tr>
<td colspan="5"><img src="<TMPL_VAR NAME=IMGPATH>/spacer.gif" border="0" height="2" width="1"></td>
</tr>
    <TMPL_LOOP SEARCHES>
    <TMPL_UNLESS SKIP_FOR_BUSINESS_CS>

<tr class="ct">
<TMPL_IF IS_CRIM>
<td class="smallfont1" width="330"><TMPL_VAR INDENT><input type="hidden" name="COUNTY_SEARCH" value=""><img src="<TMPL_VAR NAME=IMGPATH>/star.gif" border="0" width="11" height="10" alt="See Note Below">&nbsp;<TMPL_VAR DESC></td>
<td class="smallfont1" colspan="3">[Search not Currently Available]</td>
<script>if (document.getElementById) {document.write("<td class='smallfont1' width='140' align='right'><TMPL_VAR INDENT>$<span id='countyprices<TMPL_VAR INDEX>'>0.00</span>&nbsp;&nbsp;</td>");} else {document.write("<td class='smallfont1' width='140' align='right'><TMPL_VAR INDENT>$<TMPL_VAR PRICE>&nbsp;&nbsp;</td>");}</script>
<TMPL_ELSE>
<TMPL_IF HIDE_COUNTY_SEARCH>
<td class="smallfont1"><TMPL_VAR INDENT><input type="hidden" name="COUNTY_SEARCH" value=""><font face="Verdana,Arial" color="#cc0000" size="2"><b>*</b></font>&nbsp;<TMPL_VAR DESC></td>
<td class="smallfont1" colspan="3">[Search not Currently Available]</td>
<TMPL_ELSE>
<td class="smallfont1" width="330"><TMPL_VAR INDENT><input type="checkbox" name="COUNTY_SEARCH" value="<TMPL_VAR CODE>_<TMPL_VAR COUNTY_CODE>"<TMPL_IF CHECKED> CHECKED</TMPL_IF> onClick="toggle_search_checkbox(document.forms[0].COUNTY_SEARCH,<TMPL_VAR INDEX>,document.forms[0].COUNTY_PRICES,document.forms[0].TOTAL,document.forms[0].PRE_TOTAL,<TMPL_VAR MODULO>);s2ChangeBackGround(this);setextprice(this,'<TMPL_VAR PRICE>','countyprices',<TMPL_VAR INDEX>,<TMPL_VAR MODULO>);"><TMPL_VAR DESC></td>
<td class="smallfont1" width="140" align='center'><TMPL_VAR INDENT>5-14</td>
<td class="smallfont1" width="80" align='right'><TMPL_VAR INDENT>$<TMPL_VAR BASE_PRICE></td>
<td class="smallfont1" width="80" align='right'><TMPL_VAR INDENT>$<TMPL_IF NAME=USE_CRIM_SURCHARGE><TMPL_VAR CRIM_SURCHARGE><TMPL_ELSE><TMPL_IF NAME=USE_CIVIL_SURCHARGE><TMPL_VAR CIVIL_SURCHARGE></TMPL_IF></TMPL_IF></td>
<script>if (document.getElementById) {document.write("<td class='smallfont1' width='140' align='right'><TMPL_VAR INDENT>$<span id='countyprices<TMPL_VAR INDEX>'><TMPL_IF CHECKED><TMPL_VAR PRICE><TMPL_ELSE>0.00</TMPL_IF></span>&nbsp;&nbsp;</td>");} else {document.write("<td class='smallfont1' width='140' align='right'><TMPL_VAR INDENT>$<TMPL_VAR PRICE>&nbsp;&nbsp;</td>");}</script>
</TMPL_IF>
</TMPL_IF>
<INPUT TYPE="HIDDEN" NAME="ALL_PRICES" VALUE="<TMPL_VAR PRICE>">
<INPUT TYPE="HIDDEN" NAME="COUNTY_PRICES" VALUE="<TMPL_VAR PRICE>">
</tr>

<tr>
<td colspan="5"><img src="<TMPL_VAR NAME=IMGPATH>/spacer.gif" border="0" height="2" width="1"></td>
</tr>
    </TMPL_UNLESS>
  	</TMPL_LOOP>
  	</TMPL_IF>
<TMPL_IF IS_CRIM>
<TMPL_IF COUNTY_HAS_SURCHARGE><tr><td colspan="5" class="smallfont1">&nbsp;&nbsp;&nbsp;&nbsp;<TMPL_VAR INDENT><img src="<TMPL_VAR NAME=IMGPATH>/star.gif" border="0" width="11" height="10" alt="">&nbsp;Note: Criminal county search is only available by running a statewide search.</td></tr></TMPL_IF>
</TMPL_IF>
  </TMPL_LOOP>
  </TMPL_IF>

<TMPL_UNLESS NAME=BUSINESS_CS>
<tr><td colspan="5">&nbsp;</td></tr>
<tr>
<td class="unifont1" colspan="5"><TMPL_VAR INDENT><b>State - <TMPL_VAR STATE_NAME></b></td>
</tr>
<tr>
<td colspan="5"><img src="<TMPL_VAR NAME=IMGPATH>/spacer.gif" border="0" height="2" width="1"></td>
</tr>
  <TMPL_IF STATE_SEARCHES>

<tr class="ct">
  <TMPL_LOOP STATE_SEARCHES>
    <TMPL_IF SEARCHES>
    <TMPL_LOOP SEARCHES>
<td class="smallfont1" width="330"><TMPL_VAR INDENT><input type="checkbox" name="STATE_SEARCH" value="<TMPL_VAR CODE>_<TMPL_VAR NAME>"<TMPL_IF CHECKED> CHECKED</TMPL_IF> onClick="change_total(this,<TMPL_VAR PRICE>,document.forms[0].TOTAL,document.forms[0].PRE_TOTAL);s2ChangeBackGround(this);setextprice(this,'<TMPL_VAR PRICE>','stateprices','<TMPL_VAR INDEX>');"><TMPL_VAR DESC></td>
<td class="smallfont1" width="140" align="center"><TMPL_VAR INDENT>5-14</td>
<td class="smallfont1" width="80" align='right'><TMPL_VAR INDENT>$<TMPL_VAR BASE_PRICE></td>
<td class="smallfont1" width="80" align='right'><TMPL_VAR INDENT>$<TMPL_VAR CRIM_SURCHARGE></td>
<script>if (document.getElementById) {document.write("<td class='smallfont1' width='140' align='right'><TMPL_VAR INDENT>$<span id='stateprices<TMPL_VAR INDEX>'><TMPL_IF CHECKED><TMPL_VAR PRICE><TMPL_ELSE>0.00</TMPL_IF></span>&nbsp;&nbsp;</td>");} else {document.write("<td class='smallfont1' width='140' align='right'><TMPL_VAR INDENT>$<TMPL_VAR PRICE>&nbsp;&nbsp;</td>");}</script>
<INPUT TYPE="HIDDEN" NAME="ALL_PRICES" VALUE="<TMPL_VAR PRICE>">
</tr>

<tr>
<td colspan="5"><img src="<TMPL_VAR NAME=IMGPATH>/spacer.gif" border="0" height="2" width="1"></td>
</tr>
	</TMPL_LOOP>
	<TMPL_ELSE>
<td class="unifont1" width="630" colspan="4"><TMPL_VAR INDENT><TMPL_VAR INDENT>[No State Searches Available]</td>
<td class="smallfont1" width="110" align="right"><TMPL_VAR INDENT>$0.00&nbsp;&nbsp;</td>
	</TMPL_IF>
  </TMPL_LOOP>
  <TMPL_ELSE>
<td class="unifont1" width="630" colspan="4"><TMPL_VAR INDENT><TMPL_VAR INDENT>[No State Searches Available]</td>
<td class="smallfont1" width="110" align="right"><TMPL_VAR INDENT>$0.00&nbsp;&nbsp;</td>
  </TMPL_IF>
</TMPL_UNLESS>

  <TMPL_IF FEDERAL>
  <TMPL_LOOP FEDERAL>
<tr><td colspan="5">&nbsp;</td></tr>
<tr>
<td class="unifont1" colspan="5"><TMPL_VAR INDENT><b>Federal - <TMPL_VAR DISTRICT></b></td>
</tr>
<tr>
<td colspan="5"><img src="<TMPL_VAR NAME=IMGPATH>/spacer.gif" border="0" height="2" width="1"></td>
</tr>
    <TMPL_IF SEARCHES>
    <TMPL_LOOP SEARCHES>
    <TMPL_UNLESS SKIP_FOR_BUSINESS_CS>

<tr class="ct">
<td class="smallfont1" width="330"><TMPL_VAR INDENT><input type="checkbox" name="FEDERAL_SEARCH" value="<TMPL_VAR CODE>_<TMPL_VAR DISTRICT_CODE>"<TMPL_IF CHECKED> CHECKED</TMPL_IF> onClick="toggle_search_checkbox(document.forms[0].FEDERAL_SEARCH,<TMPL_VAR INDEX>,document.forms[0].FEDERAL_PRICES,document.forms[0].TOTAL,document.forms[0].PRE_TOTAL);s2ChangeBackGround(this);setextprice(this,'<TMPL_VAR PRICE>','federalprices',<TMPL_VAR INDEX>);"><TMPL_VAR DESC></td>
<td class="smallfont1" width="140" align="center"><TMPL_VAR INDENT>5-14</td>
<td class="smallfont1" width="80" align="right"><TMPL_VAR INDENT>$<TMPL_VAR PRICE></td>
<td class="smallfont1" width="80" align='right'><TMPL_VAR INDENT>$0.00</td>
<script>if (document.getElementById) {document.write("<td class='smallfont1' width='140' align='right'><TMPL_VAR INDENT>$<span id='federalprices<TMPL_VAR INDEX>'><TMPL_IF CHECKED><TMPL_VAR PRICE><TMPL_ELSE>0.00</TMPL_IF></span>&nbsp;&nbsp;</td>");} else {document.write("<td class='smallfont1' width='140' align='right'><TMPL_VAR INDENT>$<TMPL_VAR PRICE>&nbsp;&nbsp;</td>");}</script>
<INPUT TYPE="HIDDEN" NAME="ALL_PRICES" VALUE="<TMPL_VAR PRICE>">
<INPUT TYPE="HIDDEN" NAME="FEDERAL_PRICES" VALUE="<TMPL_VAR PRICE>">
</tr>

<tr>
<td colspan="5"><img src="<TMPL_VAR NAME=IMGPATH>/spacer.gif" border="0" height="2" width="1"></td>
</tr>
    </TMPL_UNLESS>
  	</TMPL_LOOP>
  	</TMPL_IF>
  </TMPL_LOOP>
  </TMPL_IF>
<tr><td colspan="5">&nbsp;</td></tr>
<tr class="courttableborder">
<td colspan="5"><img src="<TMPL_VAR NAME=IMGPATH>/spacer.gif" border="0" height="2" width="1"></td>
</tr>
</TMPL_LOOP>
</TMPL_IF>

<TMPL_INCLUDE NAME="manual_select_detail.tpl">

<tr>
<td colspan="5"><img src="<TMPL_VAR NAME=IMGPATH>/spacer.gif" border="0" height="2" width="1"></td>
</tr>

<tr>
<script>if (document.getElementById) {document.write("<td colspan='5' align='right' class='unifont1'><b>Total: $<span id='totalprice'><TMPL_VAR TOTAL></span></b>&nbsp;&nbsp;<INPUT TYPE='HIDDEN' NAME='TOTAL' VALUE='<TMPL_VAR TOTAL>'</td>");} else {document.write("<td colspan='5' align='right' class='unifont1'><b>Total:</b> $<INPUT TYPE='TEXT' NAME='TOTAL' VALUE='<TMPL_VAR TOTAL>' onFocus='blur();' size='6'>&nbsp;&nbsp;</td>");}</script>
<INPUT TYPE="HIDDEN" NAME="PRE_TOTAL" VALUE="<TMPL_VAR TOTAL>">
</tr>

<tr>
<td colspan="5"><img src="<TMPL_VAR NAME=IMGPATH>/spacer.gif" border="0" height="2" width="1"></td>
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
<input type="button" name="SUBMIT" value="<< BACK TO ADDRESSES" onClick="send_event('COURT/STEP1');this.disabled=true">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<input type="button" name="SUBMIT" value="NEXT >>" onClick="if(!validatestep2()) {return false;}; send_event('COURT/SHOW_DETAIL_SUMMARY');this.disabled=true"></td>
</tr>
</table>
</center>

</td>
</tr>
</table>

</div>

<script>s2SetBackGround();</script>
<TMPL_INCLUDE NAME="court_footer.tpl">
<!-- End more_detail.tpl -->
