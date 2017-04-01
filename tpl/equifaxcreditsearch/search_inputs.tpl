<!-- begin equifaxcreditsearch/search_inputs.tpl -->

<table border="0" cellpadding="0" cellspacing="0" width="790" style="min-width: 790px">
<tr>
<td width="100%">
<table border="0" cellpadding="0" cellspacing="0" width="100%">
  <tr>
        <TMPL_IF NAME="GOV">
	  <TMPL_INCLUDE NAME="equifaxcreditsearch/gov_search_inputs_tabs.tpl">
	</TMPL_IF>
  </tr>
</table>
</td>
</tr>

<tr>
<td width="100%">
<a name="skiptosearch"></a>
<table id="search_inputs" border="0" cellpadding="0" cellspacing="0" width="100%">
  <tr>
    <td width="1" bgcolor="#000000"><img alt="" border="0" width="1" height="1" src="<TMPL_VAR NAME=IMGPATH>/spacer.gif"></td>
    <td width="652" align="center" valign="top" class="inputbody">
    <table border="0" cellpadding="0" cellspacing="0" width="632">
      <tr height="25">
        <td height="25" class="unifont1"></td>
      </tr>
		<TMPL_INCLUDE NAME="equifaxcreditsearch/search_inputs_fields.tpl">
	  <TMPL_INCLUDE NAME="equifaxcreditsearch/search_inputs_results_type.tpl">
      <tr height="10">
        <td height="10" class="unifont1"></td>
      </tr>
      <tr>
        <td align="left" valign="top">
        <table border="0" cellpadding="0" cellspacing="0">
		<TMPL_IF LEXIS_SEARCH>
		   <TMPL_INCLUDE NAME="equifaxcreditsearch/lexisnexis_cpr.tpl">
		</TMPL_IF>
    <TMPL_UNLESS HIDE_DISCLAIMER>
		<TMPL_INCLUDE NAME="equifaxcreditsearch/search_inputs_disclaimer.tpl">
    </TMPL_UNLESS>
		<TMPL_IF DL_REG_SEARCH>
			<TMPL_INCLUDE NAME="equifaxcreditsearch/search_inputs_disclaimer2.tpl">
		</TMPL_IF>
		<TMPL_IF LICENSE_SEARCH>
			<TMPL_INCLUDE NAME="equifaxcreditsearch/search_inputs_disclaimer2.tpl">
		</TMPL_IF>
		<TMPL_IF CRIM_SEARCH>
			<TMPL_INCLUDE NAME="equifaxcreditsearch/search_inputs_disclaimer2.tpl">
		</TMPL_IF>
		<TMPL_IF SEXPREDATOR_SEARCH>
			<TMPL_INCLUDE NAME="equifaxcreditsearch/search_inputs_disclaimer2.tpl">
		</TMPL_IF>
		<TMPL_IF RT_MVR_SEARCH>
			<TMPL_INCLUDE NAME="equifaxcreditsearch/search_inputs_disclaimer2.tpl">
		</TMPL_IF>
		<TMPL_IF DELCO_SEARCH>
			<TMPL_INCLUDE NAME="equifaxcreditsearch/search_inputs_disclaimer2.tpl">
		</TMPL_IF>
    <TMPL_IF NAME=D_AND_B_SEARCH>
      <TMPL_INCLUDE NAME="equifaxcreditsearch/dnb_terms.tpl">
    </TMPL_IF>
        </table>
        </td>
      </tr>
      <tr height="5">
        <td height="5" class="unifont1"></td>
      </tr>
    </table>
    </td>
    <td width="134" align="center" valign="top" class="inputbody">
    <table border="0" cellpadding="0" cellspacing="0">
      <tr height="5">
        <td height="5" class="unifont1"></td>
      </tr>
      <tr>
        <td align="center">
	<table border="0" cellpadding="2" cellspacing="0">
	  <TMPL_INCLUDE NAME="equifaxcreditsearch/coverage_help.tpl">
	</table>
	</td>
      </tr>
      <tr>
        <td align="center"><TMPL_INCLUDE NAME="equifaxcreditsearch/search_buttons.tpl"></td>
      </tr>
      <tr height="5">
        <td height="5" class="unifont1"></td>
      </tr>
      <tr>
        <td align="center"><hr bgcolor="#ffffff" width="88" height="1"></hr></td>
      </tr>
      <tr height="5">
        <td height="5" class="unifont1"></td>
      </tr>
      <tr>
        <td align="center" valign="top">
        <table border="0" cellpadding="0" cellspacing="0">
          <tr>
            <td align="left" valign="middle" class="inputlabel">&nbsp;<b><TMPL_IF REFERENCE_CODE_RENAME>Claim #:<span class=unifont1boldred>*</span><TMPL_ELSE><span id="ref_code">Reference Code:</span></TMPL_IF></b></td>
          </tr>
          <tr>
            <td style="font-size: 9pt;" align="center" valign="middle"><input type=text tabindex="91" size="16" maxlength="<TMPL_IF REFERENCE_CODE_MAX_LENGTH><TMPL_VAR REFERENCE_CODE_MAX_LENGTH><TMPL_ELSE>30</TMPL_IF>" name="REFERENCE_CODE" value="<TMPL_VAR NAME=REFERENCE_CODE>" <TMPL_IF REFERENCE_CODE_RENAME>onBlur="this.value=this.value.toUpperCase()"</TMPL_IF><TMPL_IF DISABLE_REF_CODE> DISABLED</TMPL_IF>></td>
          </tr>
        </table>
        </td>
      </tr>
<TMPL_UNLESS HIDE_DOL_DATE>
<TMPL_IF INS>
  <TMPL_INCLUDE NAME="equifaxcreditsearch/search_inputs_dol_date.tpl">
</TMPL_IF>
</TMPL_UNLESS>
<TMPL_IF HEA>
  <TMPL_INCLUDE NAME="equifaxcreditsearch/search_inputs_dol_date.tpl">
</TMPL_IF>
<TMPL_IF ADV_SEARCH>
<TMPL_UNLESS SSN_ONLY_SEARCH>
      <tr height="5">
        <td class="unifont1" align="center">
          <TMPL_INCLUDE NAME="equifaxcreditsearch/advanced_insert.tpl">
	</td>
      </tr>
</TMPL_UNLESS>
</TMPL_IF>
<TMPL_IF INSTANT_ID_REPORT>
      <tr height="108">
        <td height="108" align="center"><img alt="" width="122" height="108" border="0" src="<TMPL_VAR NAME=IMGPATH>/aba_seal.gif"></td>
      </tr>
<TMPL_ELSE>
<TMPL_IF BUS_INSTANT_ID_REPORT>
      <tr height="108">
        <td height="108" align="center"><img alt="" width="122" height="108" border="0" src="<TMPL_VAR NAME=IMGPATH>/aba_seal.gif"></td>
      </tr>
<TMPL_ELSE>
<TMPL_UNLESS SKIN_BPS>
      <tr height="88">
        <td height="88" align="center"><img alt="" width="122" height="108" border="0" src="<TMPL_VAR NAME=IMGPATH>/<TMPL_VAR NAME=APPLICATION_TYPE>/search_inputs_logo<TMPL_IF NAME="IS_DEMO_ENV"><TMPL_IF IRS>_demo</TMPL_IF></TMPL_IF>.gif"></td>
      </tr>
<TMPL_ELSE>
      <tr height="5">
        <td height="5" class="unifont1"></td>
      </tr>
</TMPL_UNLESS>
</TMPL_IF>
</TMPL_IF>
    </table>
    </td>
    <td width="2" bgcolor="#949ab5" align="left" valign="top"><img alt="" height="1" width="2" src="<TMPL_VAR NAME=IMGPATH>/spacer.gif"></td>
    <td width="1" bgcolor="#000000" align="left" valign="top"><img alt="" height="1" width="1" src="<TMPL_VAR NAME=IMGPATH>/spacer.gif"></td>
  </tr>
</table>
</td>
</tr>




<tr>
<td width="100%">
<table border="0" cellpadding="0" cellspacing="0" width="100%">
  <tr>
    <td class="no-print"><img alt="" height="40" width="4" src="<TMPL_VAR NAME=IMGPATH>/bottom_left.gif"></td>
    <td width="732" style="width: 100%">
    <table border="0" cellpadding="0" cellspacing="0" width="100%" height="40">
      <tr>
        <td width="100%" bgcolor="#000000"><img alt="" height="2" src="<TMPL_VAR NAME=IMGPATH>/spacer.gif"></td>
      </tr>
      <tr>
        <td width="100%" bgcolor="#949ab5"><img alt="" height="1" src="<TMPL_VAR NAME=IMGPATH>/spacer.gif"></td>
      </tr>
      <tr>
        <td width="100%" class="searchmessages">
	<TMPL_INCLUDE NAME="equifaxcreditsearch/search_messages.tpl">
	</td>
      </tr>
    </table>
    </td>
    <td class="no-print"><img alt="" height="40" width="4" src="<TMPL_VAR NAME=IMGPATH>/bottom_right.gif"></td>
  </tr>
</table>
</td>
</tr>
</table>

<!-- end equifaxcreditsearch/search_inputs.tpl -->
