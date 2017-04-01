<!-- BEGIN manage_account_disable_skiptrace.tpl -->

<TMPL_IF SA>
<TMPL_IF NAME=ALLOW_SKIP_TRACE>

  <fieldset>
    <div align="left" class="unifont1bold"><legend>Skip Wizard</legend></div>
      <table border="0" cellpadding="0" cellspacing="0" width="99%">
	  <TR>
	    <td class="unifont1" nowrap align="left" width="200">Enable Skip Wizard:  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
	    <td class="unifont1" align="left" width="220">
	    <table border="0" cellpadding="0" cellspacing="0">
	      <tr>
		<td><INPUT TYPE=RADIO NAME=DISABLE_SKIP_TRACE VALUE='0' <TMPL_UNLESS NAME=DISABLE_SKIP_TRACE>CHECKED</TMPL_UNLESS> tabindex="100"></td>
		<td class="unifont1">Yes&nbsp;&nbsp;&nbsp;</td>
		<td><INPUT TYPE=RADIO NAME=DISABLE_SKIP_TRACE VALUE='1' <TMPL_IF NAME=DISABLE_SKIP_TRACE>CHECKED</TMPL_IF> tabindex="100"></td>
		<td class="unifont1">No</td>
	      </tr>
	      <tr>
	      </tr>
	    </table>
	    </td>
	  </TR>
	  <tr>
              <td colspan="2" style="font-size:8pt;">Individual access must be enabled for each user under the Manage Users tab.</td>
	  </tr>

	  <TR>
	    <td align="center" colspan="2">
	      <table class="myaccountalert" border="0" cellpadding="1" cellspacing="0" width="98%" style="border:1px solid #336699; margin:2px;margin-top:5px;">
		<tr>
		<td class="unifont1">
			<table border="0">
			<tr valign="center">
			        <td class="unifont1" nowrap align="left" width="80">Limit Steps by:</td>
				<td><INPUT TYPE=RADIO NAME=ST_LIMIT_BY_BALANCE VALUE='1' <TMPL_IF NAME=ST_LIMIT_BY_BALANCE>CHECKED</TMPL_IF>   tabindex="101"></td>
				<td class="unifont1">Account Balance &nbsp;</td>
				<td><INPUT TYPE=RADIO NAME=ST_LIMIT_BY_BALANCE VALUE='0' <TMPL_UNLESS NAME=ST_LIMIT_BY_BALANCE>CHECKED</TMPL_UNLESS>  tabindex="101"></td>
				<td class="unifont1">No Limits &nbsp;</td>
			</tr>
			</table>
		</td>
		</tr>

		<tr><td><div id="lineVertGrayDot"></div></td></tr>

		<tr>
		<td>
			<table border="0" width="100%" cellpadding="1" cellspacing="0">
			<tr valign="center" class="unifont1">
				<td width="20%"><b>&nbsp;&nbsp;Step 1:&nbsp;</b></td>
				<td width="40%">Debtor Phones</td>
				<td width="10%" align="right">On:</td>
				<td width="30%" align="left" class="unifont1">Yes</td>
			</tr>
			</table>
		</td>
		</tr>

		<tr><td><div id="lineVertGrayDot"></div></td></tr>

		<tr>
		<td>
			<table border="0" width="100%" cellpadding="1" cellspacing="0">
			<tr valign="center" class="unifont1">
				<td width="20%"><b>&nbsp;&nbsp;Step 2:&nbsp;</b></td>
				<td width="40%">Alternate Phones</td>
				<td width="10%" align="right">On:</td>
				<td width="6%"><INPUT TYPE=RADIO NAME=ST_ALLOW_ALT_PHONES_STEP VALUE='1' <TMPL_IF NAME=ST_ALLOW_ALT_PHONES_STEP>CHECKED</TMPL_IF> tabindex="102"></td>
				<td width="9%" class="unifont1">Yes</td>
				<td width="6%"><INPUT TYPE=RADIO NAME=ST_ALLOW_ALT_PHONES_STEP VALUE='0' <TMPL_UNLESS NAME=ST_ALLOW_ALT_PHONES_STEP>CHECKED</TMPL_UNLESS> tabindex="102"></td>
				<td width="9%" class="unifont1">No</td>
			</tr>
			</table>
		</td>
		</tr>

		<tr>
		<td>
			<table border="0" width="100%" cellpadding="1" cellspacing="0">
				<tr valign="center" class="unifont1">
				<td width="5%">&nbsp;</td>
				<td width="75%"align="right">Enable if Balance is greater than:</td>
				<td width="15%"><INPUT  tabindex="103" maxlength=5 size="5" TYPE="text" NAME="ST_ALT_PHONES_MAX_BAL" onChange="if(!checkInteger(this)) return false;" value="<TMPL_IF NAME=ST_ALT_PHONES_MAX_BAL><TMPL_VAR NAME=ST_ALT_PHONES_MAX_BAL></TMPL_IF>"></td>
				<td>$</td>
				</tr>

				<tr valign="center" class="unifont1">
				<td width="5%">&nbsp;</td>
				<td width="75%"align="right">Limit number of results to:</td>
				<td width="15%">
				    <select name="ST_ALT_PHONES_MAX_RES" tabindex="104">
					<option value="1">1</option>
					<option value="2">2</option>
					<option value="3">3</option>
					<option value="4">4</option>
					<option value="5">5</option>
					<option value="6">6</option>
					<option value="7">7</option>
					<option value="8">8</option>
					<option value="9">9</option>
					<option value="10">10</option>
				   </select> 
				</td>
				<td>&nbsp;</td>
				</tr>
				    <TMPL_IF NAME="ST_ALT_PHONES_MAX_RES">
				      <script>
					document.forms[0].ST_ALT_PHONES_MAX_RES.value = "<TMPL_VAR NAME=ST_ALT_PHONES_MAX_RES>";
				      </script>
				    </TMPL_IF>
			</table>
		</td>
		</tr>

		<tr><td><div id="lineVertGrayDot"></div></td></tr>


		<tr>
		<td>
			<table border="0" width="100%" cellpadding="1" cellspacing="0">
			<tr valign="center" class="unifont1">
				<td width="20%"><b>&nbsp;&nbsp;Step 3:&nbsp;</b></td>
				<td width="40%">Primary Leads</td>
				<td width="10%" align="right">On:</td>
				<td width="6%"><INPUT TYPE=RADIO NAME=ST_ALLOW_PRIMARY_LEADS_STEP VALUE='1' <TMPL_IF NAME=ST_ALLOW_PRIMARY_LEADS_STEP>CHECKED</TMPL_IF> tabindex="106"></td>
				<td width="9%" class="unifont1">Yes</td>
				<td width="6%"><INPUT TYPE=RADIO NAME=ST_ALLOW_PRIMARY_LEADS_STEP VALUE='0' <TMPL_UNLESS NAME=ST_ALLOW_PRIMARY_LEADS_STEP>CHECKED</TMPL_UNLESS> tabindex="106"></td>
				<td width="9%" class="unifont1">No</td>
			</tr>
			</table>
		</td>
		</tr>

		<tr>
		<td>
			<table border="0" width="100%" cellpadding="1" cellspacing="0">
				<tr valign="center" class="unifont1">
				<td width="5%">&nbsp;</td>
				<td width="75%"align="right">Enable if Balance is greater than:</td>
				<td width="15%"><INPUT  tabindex="107" maxlength=5 size="5" TYPE="text" NAME="ST_PRIMARY_LEADS_MAX_BAL" onChange="if(!checkInteger(this)) return false;" value="<TMPL_IF NAME=ST_PRIMARY_LEADS_MAX_BAL><TMPL_VAR NAME=ST_PRIMARY_LEADS_MAX_BAL></TMPL_IF>"></td>
				<td>$</td>
				</tr>

				<tr valign="center" class="unifont1">
				<td width="5%">&nbsp;</td>
				<td colspan="3" width="75%"align="right">Show:
				<INPUT TYPE="checkbox" tabindex="103" NAME="ST_PRIMARY_LEADS_ALLOW_SPOUSE" <TMPL_IF NAME=ST_PRIMARY_LEADS_ALLOW_SPOUSE>checked</TMPL_IF> value="1">&nbsp;Spouse
				<INPUT TYPE="checkbox" tabindex="103" NAME="ST_PRIMARY_LEADS_ALLOW_PARENTS" <TMPL_IF NAME=ST_PRIMARY_LEADS_ALLOW_PARENTS>checked</TMPL_IF> value="1">&nbsp;Parents
				<INPUT TYPE="checkbox" tabindex="103" NAME="ST_PRIMARY_LEADS_ALLOW_RELATIVES" <TMPL_IF NAME=ST_PRIMARY_LEADS_ALLOW_RELATIVES>checked</TMPL_IF> value="1">&nbsp;Relatives
				</td>
				</td>
				</tr>

				<tr valign="center" class="unifont1">
				<td width="5%">&nbsp;</td>
				<td width="75%"align="right">Limit number of results to:</td>
				<td width="15%">
				    <select name="ST_PRIMARY_LEADS_MAX_RES" tabindex="108">
					<option value="1">1</option>
					<option value="2">2</option>
					<option value="3">3</option>
					<option value="4">4</option>
					<option value="5">5</option>
					<option value="6">6</option>
					<option value="7">7</option>
					<option value="8">8</option>
					<option value="9">9</option>
					<option value="10">10</option>
				   </select> 
				</td>
				<td>&nbsp;</td>
				</tr>
				    <TMPL_IF NAME="ST_PRIMARY_LEADS_MAX_RES">
				      <script>
					document.forms[0].ST_PRIMARY_LEADS_MAX_RES.value = '<TMPL_VAR NAME="ST_PRIMARY_LEADS_MAX_RES">';
				      </script>
				    </TMPL_IF>
			</table>
		</td>
		</tr>

		<tr><td><div id="lineVertGrayDot"></div></td></tr>


		<tr>
		<td>
			<table border="0" width="100%" cellpadding="1" cellspacing="0">
			<tr valign="center" class="unifont1">
				<td width="20%"><b>&nbsp;&nbsp;Step 4:&nbsp;</b></td>
				<td width="40%">Secondary Leads</td>
				<td width="10%" align="right">On:</td>
				<td width="6%"><INPUT TYPE=RADIO NAME=ST_ALLOW_SECONDARY_LEADS_STEP VALUE='1' <TMPL_IF NAME=ST_ALLOW_SECONDARY_LEADS_STEP>CHECKED</TMPL_IF> tabindex="109"></td>
				<td width="9%" class="unifont1">Yes</td>
				<td width="6%"><INPUT TYPE=RADIO NAME=ST_ALLOW_SECONDARY_LEADS_STEP VALUE='0' <TMPL_UNLESS NAME=ST_ALLOW_SECONDARY_LEADS_STEP>CHECKED</TMPL_UNLESS> tabindex="109"></td>
				<td width="9%" class="unifont1">No</td>
			</tr>
			</table>
		</td>
		</tr>

		<tr>
		<td>
			<table border="0" width="100%" cellpadding="1" cellspacing="0">
				<tr valign="center" class="unifont1">
				<td width="5%">&nbsp;</td>
				<td width="75%"align="right">Enable if Balance is greater than:</td>
				<td width="15%"><INPUT  tabindex="110" maxlength=5 size="5" TYPE="text" NAME="ST_SECONDARY_LEADS_MAX_BAL" onChange="if(!checkInteger(this)) return false;" value="<TMPL_IF NAME=ST_SECONDARY_LEADS_MAX_BAL><TMPL_VAR NAME=ST_SECONDARY_LEADS_MAX_BAL></TMPL_IF>"></td>
				<td>$</td>
				</tr>

				<tr valign="center" class="unifont1">
				<td colspan="4" width="100%"align="right">Show:
				<INPUT TYPE="checkbox" tabindex="111" NAME="ST_SECONDARY_LEADS_ALLOW_ASSOC" <TMPL_IF NAME=ST_SECONDARY_LEADS_ALLOW_ASSOC>checked</TMPL_IF> value="1">Relocation
				<INPUT TYPE="checkbox" tabindex="112"  NAME="ST_SECONDARY_LEADS_ALLOW_NEIGH" <TMPL_IF NAME=ST_SECONDARY_LEADS_ALLOW_NEIGH>checked</TMPL_IF> value="1">Neighbors
				<INPUT TYPE="checkbox" tabindex="113" NAME="ST_SECONDARY_LEADS_ALLOW_PAW" <TMPL_IF NAME=ST_SECONDARY_LEADS_ALLOW_PAW>checked</TMPL_IF> value="1">People at Work
				</td>
				</tr>

				<tr valign="center" class="unifont1">
				<td width="5%">&nbsp;</td>
				<td width="75%"align="right">Limit number of results to:</td>
				<td width="15%">
				    <select name="ST_SECONDARY_LEADS_MAX_RES" tabindex="114">
					<option value="1">1</option>
					<option value="2">2</option>
					<option value="3">3</option>
					<option value="4">4</option>
					<option value="5">5</option>
					<option value="6">6</option>
					<option value="7">7</option>
					<option value="8">8</option>
					<option value="9">9</option>
					<option value="10">10</option>
				   </select> 
				</td>
				<td>&nbsp;</td>
				</tr>
				    <TMPL_IF NAME="ST_SECONDARY_LEADS_MAX_RES">
				      <script>
					document.forms[0].ST_SECONDARY_LEADS_MAX_RES.value = '<TMPL_VAR NAME="ST_SECONDARY_LEADS_MAX_RES">';
				      </script>
				    </TMPL_IF>
			</table>
		</td>
		</tr>

		<tr><td><div id="lineVertGrayDot"></div></td></tr>

		<tr>
		<td>
			<table border="0" width="100%" cellpadding="1" cellspacing="0">
			<tr valign="center" class="unifont1">
				<td width="70%">&nbsp;&nbsp;Deceased Check</td>
				<td width="6%"><INPUT TYPE=RADIO NAME=ST_DECEASED_FLAG VALUE='1' <TMPL_IF NAME=ST_DECEASED_FLAG>CHECKED</TMPL_IF> tabindex="115"></td>
				<td width="9%" class="unifont1">Yes</td>
				<td width="6%"><INPUT TYPE=RADIO NAME=ST_DECEASED_FLAG VALUE='0' <TMPL_UNLESS NAME=ST_DECEASED_FLAG>CHECKED</TMPL_UNLESS> tabindex="115"></td>
				<td width="9%" class="unifont1">No</td>
			</tr>
                        <TMPL_UNLESS FCOL_TCOL>
			<tr valign="center" class="unifont1">
				<td width="70%">&nbsp;&nbsp;Bankruptcy Check</td>
				<td width="6%"><INPUT TYPE=RADIO NAME=ST_BK_FLAG VALUE='1' <TMPL_IF NAME=ST_BK_FLAG>CHECKED</TMPL_IF> tabindex="116"></td>
				<td width="9%" class="unifont1">Yes</td>
				<td width="6%"><INPUT TYPE=RADIO NAME=ST_BK_FLAG VALUE='0' <TMPL_UNLESS NAME=ST_BK_FLAG>CHECKED</TMPL_UNLESS> tabindex="116"></td>
				<td width="9%" class="unifont1">No</td>
			</tr>
                        </TMPL_UNLESS>
			</table>
		</td>
		</tr>


		</table>
	    </td>
	    </tr>
    </table>


  </fieldset>

</TMPL_IF>
</TMPL_IF>

  <!-- END manage_account_disable_skiptrace.tpl -->
