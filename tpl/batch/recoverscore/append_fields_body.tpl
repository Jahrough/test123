<!-- BEGIN append_fields_body.tpl -->
<input type="hidden" name="APPENDFIELDS">
<table border="1" cellpadding="0" cellspacing="0" width="100%">
  <tr>
    <td valign="top">
    <table border="0" cellpadding="3" cellspacing="0" width="100%">
	<tr valign="middle">
	    <td border="0" cellpadding="0" cellspacing="0" class="batchpricingheader" align="center" width="100%">
		<b>Recover Score</b>
	    </td>
	</tr>
    </table>
    </td>
  </tr>

  <tr>
   <td>
    <table border="0" cellpadding="0" cellspacing="0" width="100%">
    <tr>
    <td class="smallfont1" width=1><input checked onchange="this.checked=true" type="checkbox" name="includerecoverscore" value="1" <TMPL_VAR NAME=includerecoverscore> >&nbsp;</td><td class="smallfont1">Add all of the following scores and indices<TMPL_UNLESS HIDE_PRICES> - <b>$0.15</b> per record.</TMPL_UNLESS>&nbsp;&nbsp;   
	</td>
    </tr>
    <tr>
    <td colspan="2" class="smallfont1">
<br>
<ul>
<b>&#149;&nbsp;Address Confidence Index- Points of Contactability </b><br>
<span style="text-indent:10px;">
Uses current address along with the subject's address history and
other relevant public records to predict the ability to locate the
individual.
</span>
<br><br>
<span style="text-indent:10px;">
<b>&#149;&nbsp;Phone Confidence Index- Points of Contactability</b><br> 
Uses the presence of current phone number information to predict the
likelihood of a contact at the return phone provided.
</span>
<br><br>
<span style="text-indent:10px;">
<b>&#149;&nbsp;Contactability Score </b><br> 
Combines Address Confidence Index with Phone Confidence Index to produce a score.
</span>
<br><br>
<span style="text-indent:10px;">
<b>&#149;&nbsp;Asset Index- Dimensions of Liquidity </b><br>
Uses indications of material assets, residential demographics, and
estimated income estimate to score an individual's assets.
</span>
<br><br>
<span style="text-indent:10px;">
<b>&#149;&nbsp;Lifecycle Stress Index- Dimensions of Liquidity </b><br>
Predicts indications of significant lifestyle changes, change in
household organization, and change in financial conditions to derive a
score.
</span>
<br><br>
<span style="text-indent:10px;">
<b>&#149;&nbsp;Stability Index </b><br>
Combines asset Index with Lifecycle Stress Index 
</span>
<br><br>
<span style="text-indent:10px;">
<b>&#149;&nbsp;RecoverScore </b><br>
Combines Contactability score with Stability Index and debt
characteristics 
</span>
</ul>   
    <br>
    </td>
    </tr>
     <tr>
    <td class="smallfont1">
    </td>
    <td class="smallfont1">
    Debt Type:&nbsp;
    <select name="debttype"> 
    <option selected value="1">Retail and Bank Credit
    <option <TMPL_IF NAME="debttype-2">selected</TMPL_IF> value="2">Medical, Health Care, or Insurance
    <option <TMPL_IF NAME="debttype-3">selected</TMPL_IF> value="3">Utilities and Wireless
    <option <TMPL_IF NAME="debttype-4">selected</TMPL_IF> value="4">Other
    </select>	
    <br><br>
    </td>
    </tr>
    <tr>
 
  </table>
  </td>
  </tr>

</table>
    </td>
  </tr>
</table>
<!-- END append_fields_body.tpl -->
