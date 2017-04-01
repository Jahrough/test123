<!-- begin search_inputs.tpl -->
<table border="0" cellpadding="0" cellspacing="0" width="740">
  <tr>
    <TMPL_IF NAME="IRS">
      <TMPL_INCLUDE NAME="irs/lite/irs_search_inputs_tabs.tpl">
    <TMPL_ELSE> 
    <TMPL_IF NAME="HEA">
      <TMPL_INCLUDE NAME="hea/lite/hea_search_inputs_tabs.tpl">
    <TMPL_ELSE>
    <TMPL_IF NAME="INS">
      <TMPL_INCLUDE NAME="ins/lite/ins_search_inputs_tabs.tpl">
    <TMPL_ELSE>
    <TMPL_IF NAME="LEG">
      <TMPL_INCLUDE NAME="leg/lite/leg_search_inputs_tabs.tpl">
    <TMPL_ELSE>
    <TMPL_IF NAME="LE">
      <TMPL_INCLUDE NAME="le/lite/le_search_inputs_tabs.tpl">
    <TMPL_ELSE>
    <TMPL_IF NAME="GOV">
      <TMPL_INCLUDE NAME="gov/lite/gov_search_inputs_tabs.tpl">
    <TMPL_ELSE>
    <TMPL_INCLUDE NAME="lite/search_inputs_tabs.tpl">
    </TMPL_IF>
    </TMPL_IF>
    </TMPL_IF>
    </TMPL_IF>
    </TMPL_IF>
    </TMPL_IF>
  </tr>
</table>


<a name="skiptosearch"></a>
<table id="search_inputs" border="0" cellpadding="0" cellspacing="0" width="740">
  <tr>
    <td width="1" bgcolor="#000000"></td>
    <td width="602" align="center" valign="top" class="inputbody">
    <table border="0" cellpadding="0" cellspacing="0" width="582">
      <tr height="25">
        <td height="25"></td>
      </tr>
      <tr>
        <td align="left" valign="top">
        <table border="0" cellpadding="0" cellspacing="0">
		<TMPL_INCLUDE NAME="inputs_fields/search_inputs_fields.tpl">
        </table>
        </td>
      </tr>
	  <TMPL_INCLUDE NAME="search_inputs_results_type.tpl">
      <tr height="10">
        <td height="10"></td>
      </tr>
      <tr>
        <td align="left" valign="top">
        <table border="0" cellpadding="0" cellspacing="0">
		<TMPL_IF LEXIS_SEARCH>
		<TMPL_INCLUDE NAME="lexisnexis_cpr.tpl">
		</TMPL_IF>
		<TMPL_INCLUDE NAME="search_inputs_disclaimer.tpl">
		<TMPL_IF DL_REG_SEARCH>
			<TMPL_INCLUDE NAME="search_inputs_disclaimer2.tpl">
		</TMPL_IF>
		<TMPL_IF LICENSE_SEARCH>
			<TMPL_INCLUDE NAME="search_inputs_disclaimer2.tpl">
		</TMPL_IF>
		<TMPL_IF CRIM_SEARCH>
			<TMPL_INCLUDE NAME="search_inputs_disclaimer2.tpl">
		</TMPL_IF>
		<TMPL_IF SEXPREDATOR_SEARCH>
			<TMPL_INCLUDE NAME="search_inputs_disclaimer2.tpl">
		</TMPL_IF>
		<TMPL_IF RT_MVR_SEARCH>
			<TMPL_INCLUDE NAME="search_inputs_disclaimer2.tpl">
		</TMPL_IF>
    <TMPL_IF NAME=D_AND_B_SEARCH>
      <TMPL_INCLUDE NAME="dnb_terms.tpl">
    </TMPL_IF>
        </table>
        </td>
      </tr>
      <tr height="5">
	<td></td>
      </tr>
    </table>
    </td>
    <td width="134" align="center" valign="top" class="inputbody">
    <br>
    <table border="0" cellpadding="0" cellspacing="0">
      <tr>
        <td align="center"><TMPL_INCLUDE NAME="lite/search_buttons.tpl"></td>
      </tr>
      <tr height="10">
	<td height="10"></td>
      </tr>
      <tr height="1">
        <td bgcolor="#ffffff" width="74" valign="middle"></td>
      </tr>
      <tr height="20">
        <td></td>
      </tr>
      <tr>
        <td align="center" valign="top">
        <table border="0" cellpadding="0" cellspacing="0">
          <tr>
            <td align="left" valign="middle" class="inputlabel">&nbsp;<b>Reference Code:</b></td>
          </tr>
          <tr>
            <td style="font-size: 9pt;" align="center" valign="middle"><input type=text tabindex="30" size="16" maxlength="30" name="REFERENCE_CODE" value="<TMPL_VAR NAME=REFERENCE_CODE>"></td>
          </tr>
        </table>
        </td>
      </tr>
<TMPL_IF INS>
  <TMPL_INCLUDE NAME="search_inputs_dol_date.tpl">
</TMPL_IF>
<TMPL_IF HEA>
  <TMPL_INCLUDE NAME="search_inputs_dol_date.tpl">
</TMPL_IF>
    </table>
    </td>
    <td width="2" bgcolor="#949ab5"></td>
    <td width="1" bgcolor="#000000"></td>
  </tr>
</table>

<table border="0" cellpadding="0" cellspacing="0" width="740">
  <tr>
    <td width="1" bgcolor="#000000"></td>
    <td width="736">
    <table border="0" cellpadding="0" cellspacing="0" width="736" height="40">
      <tr height="2">
        <td height="2" width="736" bgcolor="#000000"></td>
      </tr>
      <tr height="1">
        <td width="736" bgcolor="#949ab5" height="1"></td>
      </tr>
      <tr>
        <td width="736" class="searchmessages">
	<TMPL_INCLUDE NAME="search_messages.tpl">
	</td>
      </tr>
    </table>
    </td>
    <td width="2" bgcolor="#949ab5"></td>
    <td width="1" bgcolor="#000000"></td>
  </tr>
  <tr>
    <td colspan="4" width="740" bgcolor="#000000"></td>
  </tr>
</table>
<!-- end search_inputs.tpl -->
