<!-- Begin search_select.tpl -->
<TMPL_INCLUDE NAME="court_header.tpl">
<script src="<TMPL_VAR NAME='JSPATH'>/court/search_select.js"></script>

<div align="center">
<table border="0" cellpadding="0" cellspacing="0" width="765">
<tr>
<td width="15"><img src="<TMPL_VAR NAME=IMGPATH>/spacer.gif" border="0" width="15" height="1"></td>
<td width="750" valign="top">

<div align="left" class="courtpagetitle">QUICK PICKS:</div>


<div align="left" class="smallfont1">
<br>
<TMPL_IF IDENTITY_LOOP>
<TMPL_LOOP IDENTITY_LOOP>
<P>
<TMPL_INCLUDE NAME="identity.tpl">
</TMPL_LOOP>
</TMPL_IF>
<P>

<b><TMPL_IF IRB>IRBsearch<TMPL_ELSE>Accurint</TMPL_IF> has automatically determined the unique list of county(s), state(s) and federal district(s) searches applicable based on your address selections.&nbsp;&nbsp;If satisfied with the default selections, simply click the NEXT button below.<br><br>
To refine your search further, or to add court searches in counties and states not listed, click the CUSTOMIZE button below.<br><br>
If you desire to modify your address selections, click the BACK TO ADDRESSES button below.</b><br><br>

</div>

<table border="0" cellpadding="2" cellspacing="0" class="courttableborder">
<tr>
<td valign="top">
<table border="0" cellpadding="0" cellspacing="0" width="740" class="courttablebody">
<tr class="courttableheader">
<td colspan="5"><img src="<TMPL_VAR NAME=IMGPATH>/spacer.gif" border="0" height="2" width="1"></td>
</tr>
<tr class="courttableheader">
<td class="unifont1" align="left">&nbsp;&nbsp;<b>County</b> (<TMPL_VAR COUNTY_COUNT> unique County(s) selected)</td>
<td class="unifont1" align="center" nowrap="1">&nbsp;&nbsp;<b># of Searches</td>
<td class="unifont1" align="right" nowrap="1">&nbsp;&nbsp;<b>Unit Price</td>
<td class="unifont1" align="right"><TMPL_IF IS_SURCHARGE>&nbsp;&nbsp;<b>Surcharge</TMPL_IF>&nbsp;</td>
<td class="unifont1" align="right" nowrap="1">&nbsp;&nbsp;<b>Ext. Price&nbsp;&nbsp;</td>
</tr>
<tr class="courttableheader">
<td colspan="5"><img src="<TMPL_VAR NAME=IMGPATH>/spacer.gif" border="0" height="2" width="1"></td>
</tr>
<tr class="courttableborder">
<td colspan="5"><img src="<TMPL_VAR NAME=IMGPATH>/spacer.gif" border="0" height="2" width="1"></td>
</tr>

<tr>
<td colspan="5"><img src="<TMPL_VAR NAME=IMGPATH>/spacer.gif" border="0" height="2" width="1"></td>
</tr>
<TMPL_IF COUNTY_LOOP>
<TMPL_LOOP COUNTY_LOOP>
<TMPL_UNLESS SKIP_FOR_BUSINESS_CS>

<tr class="ct">
<td class="unifont1" align="left">
	<TMPL_IF IS_CRIM>
		<TMPL_IF COUNT_MINUS_SURCHARGE>
		<TMPL_IF COUNTY_COUNT><input type="checkbox" name="COUNTY_SEARCH" value="<TMPL_VAR CODE>"<TMPL_IF CHECKED> CHECKED</TMPL_IF> onClick="toggle_search_checkbox(document.forms[0].COUNTY_SEARCH,<TMPL_VAR INDEX>,document.forms[0].COUNTY_PRICES,document.forms[0].TOTAL,document.forms[0].PRE_TOTAL,<TMPL_VAR MODULO>);s2ChangeBackGround(this);setextprice(this,'<TMPL_VAR GROUP_PRICE>','countyprices',<TMPL_VAR INDEX>,<TMPL_VAR MODULO>);"></TMPL_IF>&nbsp;<TMPL_VAR DESC>
		<TMPL_ELSE>
		<img src="<TMPL_VAR NAME=IMGPATH>/star.gif" border="0" width="11" height="10" alt="See Note Below">&nbsp;[No County Criminal Searches Available]<input type="hidden" name="COUNTY_SEARCH" value="0"&nbsp;<TMPL_VAR DESC>
		</TMPL_IF>
	<TMPL_ELSE>
    <TMPL_IF USE_CRIM_SURCHARGE>
		<TMPL_IF COUNTY_CRIM_COUNT><input type="checkbox" name="COUNTY_SEARCH" value="<TMPL_VAR CODE>"<TMPL_IF CHECKED> CHECKED</TMPL_IF> onClick="toggle_search_checkbox(document.forms[0].COUNTY_SEARCH,<TMPL_VAR INDEX>,document.forms[0].COUNTY_PRICES,document.forms[0].TOTAL,document.forms[0].PRE_TOTAL,<TMPL_VAR MODULO>);s2ChangeBackGround(this);setextprice(this,'<TMPL_VAR GROUP_PRICE>','countyprices',<TMPL_VAR INDEX>,<TMPL_VAR MODULO>);"><TMPL_ELSE><input type="hidden" name="COUNTY_SEARCH" value="0"></TMPL_IF>&nbsp;<TMPL_VAR DESC>
    <TMPL_ELSE>
    <TMPL_IF COUNTY_CIVIL_COUNT><input type="checkbox" name="COUNTY_SEARCH" value="<TMPL_VAR CODE>"<TMPL_IF CHECKED> CHECKED</TMPL_IF> onClick="toggle_search_checkbox(document.forms[0].COUNTY_SEARCH,<TMPL_VAR INDEX>,document.forms[0].COUNTY_PRICES,document.forms[0].TOTAL,document.forms[0].PRE_TOTAL,<TMPL_VAR MODULO>);s2ChangeBackGround(this);setextprice(this,'<TMPL_VAR GROUP_PRICE>','countyprices',<TMPL_VAR INDEX>,<TMPL_VAR MODULO>);"><TMPL_ELSE><input type="hidden" name="COUNTY_SEARCH" value="0"></TMPL_IF>&nbsp;<TMPL_VAR DESC>
    </TMPL_IF>
	</TMPL_IF>
</td>
<td class="unifont1" align="center"><TMPL_IF IS_CRIM><TMPL_VAR COUNT_MINUS_SURCHARGE><TMPL_ELSE><TMPL_IF USE_CRIM_SURCHARGE><TMPL_VAR COUNTY_CRIM_COUNT><TMPL_ELSE><TMPL_VAR COUNTY_CIVIL_COUNT></TMPL_IF></TMPL_IF></td>
<td class="unifont1" align="right">$<TMPL_VAR PRICE></td>
<td class="unifont1" align="right"><TMPL_IF IS_SURCHARGE><TMPL_UNLESS IS_CRIM>$<TMPL_IF NAME=USE_CRIM_SURCHARGE><TMPL_VAR CRIM_SURCHARGE><TMPL_ELSE><TMPL_IF NAME=USE_CIVIL_SURCHARGE><TMPL_VAR CIVIL_SURCHARGE></TMPL_IF></TMPL_IF></TMPL_UNLESS></TMPL_IF>&nbsp;</td>
<script>if (document.getElementById) {document.write("<td class='unifont1' align='right'>$<span id='countyprices<TMPL_VAR INDEX>'><TMPL_IF CHECKED><TMPL_VAR GROUP_PRICE><TMPL_ELSE>0.00</TMPL_IF></span>&nbsp;&nbsp;</td>");} else {document.write("<td class='unifont1' align='right'>$<TMPL_VAR GROUP_PRICE>&nbsp;&nbsp;</td>");}</script>
<INPUT TYPE="HIDDEN" NAME="ALL_PRICES" VALUE="<TMPL_VAR GROUP_PRICE>">
<INPUT TYPE="HIDDEN" NAME="COUNTY_PRICES" VALUE="<TMPL_VAR GROUP_PRICE>">
</tr>

<tr>
<td colspan="5"><img src="<TMPL_VAR NAME=IMGPATH>/spacer.gif" border="0" height="2" width="1"></td>
</tr>
</TMPL_UNLESS>
</TMPL_LOOP>
</TMPL_IF>

<TMPL_IF IS_CRIM>
	<TMPL_UNLESS COUNT_MINUS_SURCHARGE> 
	<tr>
	<td colspan="5" class="smallfont1">&nbsp;&nbsp;&nbsp;&nbsp;<img src="<TMPL_VAR NAME=IMGPATH>/star.gif" border="0" width="11" height="10" alt="">&nbsp;Note: Criminal county search is only available by running a statewide search.</td>
	</tr>
	</TMPL_UNLESS>
</TMPL_IF>
<tr>
<td colspan="5">&nbsp;</td>
</tr>

<TMPL_UNLESS NAME=BUSINESS_CS>
<tr class="courttableborder">
<td colspan="5"><img src="<TMPL_VAR NAME=IMGPATH>/spacer.gif" border="0" height="2" width="1"></td>
</tr>
<tr class="courttableheader">
<td colspan="5"><img src="<TMPL_VAR NAME=IMGPATH>/spacer.gif" border="0" height="2" width="1"></td>
</tr>
<tr class="courttableheader">
<td class="unifont1" align="left" colspan="5">&nbsp;&nbsp;<b>State</b> (<TMPL_VAR STATE_COUNT> State(s) selected are available)</td>
</tr>
<tr class="courttableheader">
<td colspan="5"><img src="<TMPL_VAR NAME=IMGPATH>/spacer.gif" border="0" height="2" width="1"></td>
</tr>
<tr class="courttableborder">
<td colspan="5"><img src="<TMPL_VAR NAME=IMGPATH>/spacer.gif" border="0" height="2" width="1"></td>
</tr>

<tr>
<td colspan="5"><img src="<TMPL_VAR NAME=IMGPATH>/spacer.gif" border="0" height="2" width="1"></td>
</tr>
<TMPL_IF STATE_LOOP>
<TMPL_LOOP STATE_LOOP>

<tr class="ct">
<td class="unifont1" align="left"><TMPL_IF STATE_COUNT><input type="checkbox" name="STATE_SEARCH" value="<TMPL_VAR CODE>"<TMPL_IF CHECKED> CHECKED</TMPL_IF> onClick="change_total(this,<TMPL_VAR GROUP_PRICE>,document.forms[0].TOTAL,document.forms[0].PRE_TOTAL);s2ChangeBackGround(this);setextprice(this,'<TMPL_VAR GROUP_PRICE>','stateprices',<TMPL_VAR INDEX>)";>&nbsp;<TMPL_VAR DESC><TMPL_ELSE>&nbsp;&nbsp;&nbsp;&nbsp;[No State Searches Available]</TMPL_IF></td>
<td class="unifont1" align="center"><TMPL_VAR STATE_COUNT></td>
<td class="unifont1" align="right">$<TMPL_VAR BASE_PRICE></td>
<td class="unifont1" align="right"><TMPL_IF CRIM_SURCHARGE>$<TMPL_VAR CRIM_SURCHARGE></TMPL_IF>&nbsp;</td>
<script>if (document.getElementById) {document.write("<td class='unifont1' align='right'>$<span id='stateprices<TMPL_VAR INDEX>'><TMPL_IF CHECKED><TMPL_VAR GROUP_PRICE><TMPL_ELSE>0.00</TMPL_IF></span>&nbsp;&nbsp;</td>");} else {document.write("<td class='unifont1' align='right'>$<TMPL_VAR GROUP_PRICE>&nbsp;&nbsp;</td>");}</script>
<INPUT TYPE="HIDDEN" NAME="ALL_PRICES" VALUE="<TMPL_VAR GROUP_PRICE>">
</tr>

<tr>
<td colspan="5"><img src="<TMPL_VAR NAME=IMGPATH>/spacer.gif" border="0" height="2" width="1"></td>
</tr>
</TMPL_LOOP>
</TMPL_IF>

<tr>
<td colspan="5">&nbsp;</td>
</tr>
</TMPL_UNLESS>

<tr class="courttableborder">
<td colspan="5"><img src="<TMPL_VAR NAME=IMGPATH>/spacer.gif" border="0" height="2" width="1"></td>
</tr>
<tr class="courttableheader">
<td colspan="5"><img src="<TMPL_VAR NAME=IMGPATH>/spacer.gif" border="0" height="2" width="1"></td>
</tr>
<tr class="courttableheader">
<td class="unifont1" align="left" colspan="5">&nbsp;&nbsp;<b>Federal</b> (<TMPL_VAR FEDERAL_COUNT> unique Federal District(s) selected)</td>
</tr>
<tr class="courttableheader">
<td colspan="5"><img src="<TMPL_VAR NAME=IMGPATH>/spacer.gif" border="0" height="2" width="1"></td>
</tr>
<tr class="courttableborder">
<td colspan="5"><img src="<TMPL_VAR NAME=IMGPATH>/spacer.gif" border="0" height="2" width="1"></td>
</tr>

<tr>
<td colspan="5"><img src="<TMPL_VAR NAME=IMGPATH>/spacer.gif" border="0" height="2" width="1"></td>
</tr>
<TMPL_IF FEDERAL_LOOP>
<TMPL_LOOP FEDERAL_LOOP>
<TMPL_UNLESS SKIP_FOR_BUSINESS_CS>

<tr class="ct">
<td class="unifont1" align="left"><TMPL_IF FEDERAL_COUNT><input type="checkbox" name="FEDERAL_SEARCH" value="<TMPL_VAR CODE>"<TMPL_IF CHECKED> CHECKED</TMPL_IF> onClick="toggle_search_checkbox(document.forms[0].FEDERAL_SEARCH,<TMPL_VAR INDEX>,document.forms[0].FEDERAL_PRICES,document.forms[0].TOTAL,document.forms[0].PRE_TOTAL);s2ChangeBackGround(this);setextprice(this,'<TMPL_VAR GROUP_PRICE>','federalprices',<TMPL_VAR INDEX>);"></TMPL_IF>&nbsp;<TMPL_VAR DESC></td>
<td class="unifont1" align="center"><TMPL_VAR FEDERAL_COUNT></td>
<td class="unifont1" align="right">$<TMPL_VAR PRICE></td>
<td class="unifont1" align="right"><TMPL_IF IS_SURCHARGE>$0.00</TMPL_IF>&nbsp;</td>
<script>if (document.getElementById) {document.write("<td class='unifont1' align='right'>$<span id='federalprices<TMPL_VAR INDEX>'><TMPL_IF CHECKED><TMPL_VAR GROUP_PRICE><TMPL_ELSE>0.00</TMPL_IF></span>&nbsp;&nbsp;</td>");} else {document.write("<td class='unifont1' align='right'>$<TMPL_VAR GROUP_PRICE>&nbsp;&nbsp;</td>");}</script>
<INPUT TYPE="HIDDEN" NAME="ALL_PRICES" VALUE="<TMPL_VAR GROUP_PRICE>">
<INPUT TYPE="HIDDEN" NAME="FEDERAL_PRICES" VALUE="<TMPL_VAR GROUP_PRICE>">
</tr>

<tr>
<td colspan="5"><img src="<TMPL_VAR NAME=IMGPATH>/spacer.gif" border="0" height="2" width="1"></td>
</tr>
</TMPL_UNLESS>
</TMPL_LOOP>
</TMPL_IF>

<tr>
<td colspan="5">&nbsp;</td>
</tr>
<tr class="courttableborder">
<td colspan="5"><img src="<TMPL_VAR NAME=IMGPATH>/spacer.gif" border="0" height="2" width="1"></td>
</tr>
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
<td class="unifont1" align="center"><input type="button" name="SUBMIT" value="<< BACK TO ADDRESSES" onClick="send_event('COURT/STEP1');this.disabled=true">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<input type="button" name="SUBMIT" value="CUSTOMIZE" onClick="send_event('COURT/MORE_DETAIL');this.disabled=true">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<input type="button" name="SUBMIT" value="NEXT >>" onClick="if(!validatestep2()) {return false;}; send_event('COURT/SHOW_SUMMARY');this.disabled=true">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</td>
</tr>
</table>
</center>

</td>
</tr>
</table>

</div>
<script>s2SetBackGround();</script>
<TMPL_INCLUDE NAME="court_footer.tpl">
<!-- End search_select.tpl -->


