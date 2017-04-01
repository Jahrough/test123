<!-- Begin step1.tpl -->
<TMPL_INCLUDE NAME="court_header.tpl">

<TMPL_IF NAME="DISABLED">

  <table align=center>
    <tr>
      <td class="unifont1">
	This section is currently unavailable.
      </td>
    </tr>
  </table>


<TMPL_ELSE>

<script src="<TMPL_VAR NAME='JSPATH'>/court/step1.js"></script>

<div align="center">

<table border="0" cellpadding="0" cellspacing="0" width="765">
<tr>
<td width="15"><img src="<TMPL_VAR NAME=IMGPATH>/spacer.gif" border="0" width="15" height="1"></td>
<td width="750" valign="top">

<table border="0" cellpadding="0" cellspacing="0" width="750">
  <tr>
    <td class="unifont1" align="right" valign="top"><a href="javascript:show_post_popup('LOGIN/SHOW_POPUP','Court_Coverage',500,450,0,0,0,1,1,0,'','coverage/court_coverage');"><img src="<TMPL_VAR NAME=IMGPATH>/court_coverage.gif" width="132" height="20" border="0"></a></td>
  </tr>
  <tr>
    <td class="unifont1">
    <br>
    <b><TMPL_IF IRB>IRBsearch<TMPL_ELSE>Accurint</TMPL_IF> nationwide Court Search enables you to obtain civil and criminal histories for the subject you selected without ever having to leave your office.&nbsp;&nbsp;We dispatch trained court researchers to over 3,000 courts across the country to retrieve the most current information and deliver it electronically to your desktop.</b>
    </td>
  </tr>
  <tr>
    <td class="smallfont1">
    <br>
    <b>Data Sources:</b>&nbsp;&nbsp;The information obtained from <TMPL_IF IRB>IRBsearch's<TMPL_ELSE>Accurint's</TMPL_IF> Court Search product is public record information.<br><br>
    <b>Important:</b>&nbsp;&nbsp;The public records used in this system have errors.&nbsp;&nbsp;Data, as entered by the agent network, is sometimes entered poorly, processed incorrectly and is generally not free from defect.&nbsp;&nbsp;Court Search results should not be relied upon as definitively accurate.&nbsp;&nbsp;Before relying on any data this system supplies, it should be independently verified.<br>
    </td>
  </tr>
</table>

<br>

<div class="smallfont1">
<TMPL_IF IDENTITY_LOOP>
<TMPL_LOOP IDENTITY_LOOP>
<TMPL_INCLUDE NAME="identity.tpl">
</div>
<P>

<table border="0" cellpadding="2" cellspacing="0">
<tr>
<td class="smallfont1" colspan="2"><b>Choose or enter the name, or the AKA, you wish to use for this court search.&nbsp;&nbsp;Separate orders are required for each requested name or AKA.</b></td>
</tr>
<tr>
<td>&nbsp;</td>
<td class="smallfont1"><b><INPUT TYPE="RADIO" NAME="ALTERNATE_IDENTITY" VALUE=""<TMPL_IF ALIAS_CHECKED> CHECKED</TMPL_IF>>&nbsp;<TMPL_IF BUSINESS_CS><TMPL_VAR NAME="COMPANY_NAME"><TMPL_ELSE><TMPL_VAR NAME="NAME_FIRST"><TMPL_IF NAME_MIDDLE> <TMPL_VAR NAME_MIDDLE></TMPL_IF> <TMPL_VAR NAME_LAST><TMPL_IF NAME_SUFFIX> <TMPL_VAR NAME_SUFFIX></TMPL_IF></TMPL_IF></b>&nbsp;(Default)</td>
</tr>
	<TMPL_IF AKAS>
	<TMPL_LOOP AKAS>
<tr>
<td>&nbsp;</td>
<TMPL_IF BUSINESS_CS>
<td class="smallfont1"><b><INPUT TYPE="RADIO" NAME="ALTERNATE_IDENTITY" VALUE="<TMPL_VAR NAME_COMPANY>__<TMPL_VAR INDEX>"<TMPL_IF ALIAS_CHECKED> CHECKED</TMPL_IF>>&nbsp;<TMPL_VAR NAME="NAME_COMPANY"></b></td>
<TMPL_ELSE>
<td class="smallfont1"><b><INPUT TYPE="RADIO" NAME="ALTERNATE_IDENTITY" VALUE="<TMPL_VAR NAME_FIRST>__<TMPL_VAR NAME_MIDDLE>__<TMPL_VAR NAME_LAST>__<TMPL_VAR NAME_SUFFIX>__<TMPL_VAR INDEX>"<TMPL_IF ALIAS_CHECKED> CHECKED</TMPL_IF>>&nbsp;<TMPL_VAR NAME="NAME_FIRST"><TMPL_IF NAME_MIDDLE> <TMPL_VAR NAME_MIDDLE></TMPL_IF> <TMPL_VAR NAME_LAST><TMPL_IF NAME_SUFFIX> <TMPL_VAR NAME_SUFFIX></TMPL_IF></b></td>
</TMPL_IF>
</tr>
	</TMPL_LOOP>
	</TMPL_IF>
<tr>
<td>&nbsp;</td>
<td>
<TMPL_IF BUSINESS_CS>
<table border="0" cellpadding="0" cellspacing="0">
  <tr>
    <td class="smallfont1">&nbsp;</td>
    <td class="smallfont1">&nbsp;Company Name:</td>
  </tr>
  <tr>
    <td class="nsinputs"><INPUT TYPE="RADIO" NAME="ALTERNATE_IDENTITY" VALUE="CUSTOM"<TMPL_IF CUSTOM_ALIAS_CHECKED> CHECKED</TMPL_IF>>&nbsp;</td>
    <td class="nsinputs"><INPUT TYPE=TEXT NAME="AKA_COMPANY_NAME" VALUE="<TMPL_VAR NAME=AKA_COMPANY_NAME>" SIZE="15" onBlur="this.value=this.value.toUpperCase(); setid();">&nbsp;</td>
  </tr>
</table>
<TMPL_ELSE>
<table border="0" cellpadding="0" cellspacing="0">
  <tr>
    <td class="smallfont1">&nbsp;</td>
    <td class="smallfont1">&nbsp;First Name:</td>
    <td class="smallfont1">&nbsp;Middle Name:</td>
    <td class="smallfont1">&nbsp;Last Name:</td>
    <td class="smallfont1">&nbsp;Suffix:</td>
  </tr>
  <tr>
    <td class="nsinputs"><INPUT TYPE="RADIO" NAME="ALTERNATE_IDENTITY" VALUE="CUSTOM"<TMPL_IF CUSTOM_ALIAS_CHECKED> CHECKED</TMPL_IF>>&nbsp;</td>
    <td class="nsinputs"><INPUT TYPE=TEXT NAME="AKA_NAME_FIRST" VALUE="<TMPL_VAR NAME=AKA_NAME_FIRST>" SIZE="15" onBlur="this.value=this.value.toUpperCase(); setid();">&nbsp;</td>
    <td class="nsinputs"><INPUT TYPE=TEXT NAME="AKA_NAME_MIDDLE" VALUE="<TMPL_VAR AKA_NAME_MIDDLE>" SIZE="10" onBlur="this.value=this.value.toUpperCase(); setid();">&nbsp;</td>
    <td class="nsinputs"><INPUT TYPE=TEXT NAME="AKA_NAME_LAST" VALUE="<TMPL_VAR AKA_NAME_LAST>" SIZE="15" onBlur="this.value=this.value.toUpperCase(); setid();">&nbsp;</td>
    <td class="nsinputs"><INPUT TYPE=TEXT NAME="AKA_NAME_SUFFIX" VALUE="<TMPL_VAR AKA_NAME_SUFFIX>" SIZE="3" onBlur="this.value=this.value.toUpperCase(); setid();"><INPUT TYPE="HIDDEN" NAME="AKA_INDEX" VALUE="-1"></td>
  </tr>
</table>
</TMPL_IF>
</td>
</tr>
</table>
<TMPL_UNLESS BUSINESS_CS>
<table border="0" cellpadding="2" cellspacing="0">
<tr>
<td class="smallfont1" colspan="2"><b>Enter the Date of Birth you wish to use for this individual.</b></td>
</tr>
<tr>
<td>&nbsp;</td>
<td>
<table border="0" cellpadding="0" cellspacing="0">
  <tr>
    <td class="smallfont1">&nbsp;Month (MM):</td>
    <td class="smallfont1">&nbsp;Day (DD):</td>
    <td class="smallfont1">&nbsp;Year (YYYY):</td>
  </tr>
  <tr>
    <td class="nsinputs"><INPUT TYPE=TEXT NAME="DOB_MONTH" VALUE="<TMPL_IF POPULATE_DOB_INPUTS><TMPL_VAR NAME=DOB_MONTH></TMPL_IF>" SIZE="2" MAXLENGTH="2">&nbsp;</td>
    <td class="nsinputs"><INPUT TYPE=TEXT NAME="DOB_DAY" VALUE="<TMPL_IF POPULATE_DOB_INPUTS><TMPL_VAR DOB_DAY></TMPL_IF>" SIZE="2" MAXLENGTH="2">&nbsp;</td>
    <td class="nsinputs"><INPUT TYPE=TEXT NAME="DOB_YEAR" VALUE="<TMPL_IF POPULATE_DOB_INPUTS><TMPL_VAR DOB_YEAR></TMPL_IF>" SIZE="4" MAXLENGTH="4">&nbsp;</td>
  </tr>
</table>
</td>
</tr>
</table>
</TMPL_UNLESS>

<P>
</TMPL_LOOP>
</TMPL_IF>


<div class="smallfont1">
<b>Below is a possible list of addresses for your subject.&nbsp;&nbsp;Please choose the addresses on which you want to conduct a court search.&nbsp;&nbsp;If you wish to search courts for a county or state not listed, you may do so by choosing CUSTOMIZE on the next screen.</b><P>
</div>

<TMPL_IF ADDRESS_LOOP>
<table border="0" cellpadding="2" cellspacing="0" class="courttableborder">
<tr>
<td valign="top">

<table border="0" cellpadding="0" cellspacing="0" width="740" class="courttablebody">
<tr class="courttableheader">
<td align="center" class="smallfont1" width="25"><!--All&nbsp;/&nbsp;None<br>--><input type="checkbox" name="toggleAll" onClick="s1checkDecision(document.TU.ADDRESS_CODE,this)"></td>
<td class="smallfont1" width="140">&nbsp;<B>DATES</B></td>
<td class="smallfont1" width="50">&nbsp;<B>STATE</B></td>
<td class="smallfont1" width="125">&nbsp;<B>COUNTY</B></td>
<td class="smallfont1" width="400">&nbsp;<B>ADDRESS</B></td>
</tr>
<tr class="courttableborder">
<td colspan="5"><img src="<TMPL_VAR NAME=IMGPATH>/spacer.gif" border="0" height="2" width="1"></td>
</tr>
<tr>
<td colspan="5"><img src="<TMPL_VAR NAME=IMGPATH>/spacer.gif" border="0" height="2" width="1"></td>
</tr>
<INPUT TYPE="HIDDEN" NAME="STEP_ONE" VALUE="1">
<TMPL_LOOP ADDRESS_LOOP>
<tr class="ct">
<td align="center" class="smallfont1" width="25"><input type="checkbox" name="ADDRESS_CODE" value="<TMPL_VAR INDEX>"<TMPL_IF CHECKED> CHECKED</TMPL_IF> onClick="s1ChangeBackGround(this);"></td>
<td nowrap class="smallfont1" width="140">&nbsp;<TMPL_VAR DATE_RANGE></td>
<td nowrap class="smallfont1" width="50">&nbsp;<TMPL_VAR STATE></td>
<td nowrap class="smallfont1" width="125">&nbsp;<TMPL_VAR COUNTY></td>
<td nowrap class="smallfont1" width="400">&nbsp;<TMPL_VAR STREET>,&nbsp;<TMPL_VAR CITY>,&nbsp;<TMPL_VAR STATE>&nbsp;&nbsp;<TMPL_VAR ZIP5><TMPL_IF ZIP4>-<TMPL_VAR ZIP4></TMPL_IF></td>
</tr>
<tr>
<td colspan="5"><img src="<TMPL_VAR NAME=IMGPATH>/spacer.gif" border="0" height="2" width="1"></td>
</tr>
</TMPL_LOOP>
</table>
</td>
</tr>
</table>
</TMPL_IF>

<br>
<center>
<table border="0" cellpadding="0" cellspacing="0">
<tr>
<td class="unifont1" align="center" colspan="3"><input type="button" name="SUBMIT" value="NEXT >>" onClick="if(!validatestep1()) {return false;};send_event('COURT/SHOW_SEARCH_SELECT_INIT');this.disabled=true"></td>
</tr>
</table>
</center>

</td>
</tr>
</table>

</div>
<script>s1SetBackGround();</script>
</TMPL_IF>
<TMPL_INCLUDE NAME="court_footer.tpl">
<!-- End step1.tpl -->
