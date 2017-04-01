<!-- payments/cc_account.tpl -->
<TMPL_INCLUDE NAME="payment_top.tpl">
<center>
        <INPUT type=hidden NAME="CREDITCARDID" VALUE="<TMPL_VAR NAME="CREDITCARDID">">
	<TMPL_IF NAME="CRNT_CARDFLAGS_0"><INPUT type=hidden NAME="CRNT_CARDFLAGS_0" VALUE="<TMPL_VAR NAME="CRNT_CARDFLAGS_0">"><INPUT type=hidden NAME="CARDFLAGS_0" VALUE="<TMPL_VAR NAME="CARDFLAGS_0">"></TMPL_IF>
	<TMPL_IF NAME="CRNT_CARDFLAGS_1"><INPUT type=hidden NAME="CRNT_CARDFLAGS_1" VALUE="<TMPL_VAR NAME="CRNT_CARDFLAGS_1">"><INPUT type=hidden NAME="CARDFLAGS_1" VALUE="<TMPL_VAR NAME="CARDFLAGS_1">"></TMPL_IF>
	<TMPL_IF NAME="CRNT_CARDFLAGS_2"><INPUT type=hidden NAME="CRNT_CARDFLAGS_2" VALUE="<TMPL_VAR NAME="CRNT_CARDFLAGS_2">"></TMPL_IF>
	<!-- display cc_accounts -->
	<table border="0" cellpadding="3" cellspacing="2" width="80%">
	<tr bgcolor="#CFCFCF">
	<td colspan="2" align="left" class="myaccountlabel">Credit Card Information</td>
	</tr>
	<tr bgcolor="#FFFFFF">
	    <td class="smallfont1" style="font-weight: bold" width="30%">Credit Card Number</td>
	    <td class="smallfont1" width="70%">
	        <TMPL_IF NAME="LAST4">XXXX-XXXX-XXXX-<TMPL_VAR NAME="LAST4"><br></TMPL_IF>
		    <input type="hidden" name="LAST4" size="20" maxlength="16" value="<TMPL_VAR NAME="LAST4">">
		    <input type="text" name="CARDNUMBER" size="20" maxlength="16" value="<TMPL_VAR NAME="CARDNUMBER">" tabindex="10">
	    </td>
	</tr>
	<tr bgcolor="#FFFFFF">
	    <td class="smallfont1" style="font-weight: bold" width="30%">Expiration Date</td>
	    <td class="smallfont1" width="70%">
		<select name="CARDEXPMONTH" tabindex="20">
		    <option value="01" <TMPL_VAR NAME=CARDEXPMONTH_01>>01</option>
		    <option value="02" <TMPL_VAR NAME=CARDEXPMONTH_02>>02</option>
		    <option value="03" <TMPL_VAR NAME=CARDEXPMONTH_03>>03</option>
		    <option value="04" <TMPL_VAR NAME=CARDEXPMONTH_04>>04</option>
		    <option value="05" <TMPL_VAR NAME=CARDEXPMONTH_05>>05</option>
		    <option value="06" <TMPL_VAR NAME=CARDEXPMONTH_06>>06</option>
		    <option value="07" <TMPL_VAR NAME=CARDEXPMONTH_07>>07</option>
		    <option value="08" <TMPL_VAR NAME=CARDEXPMONTH_08>>08</option>
		    <option value="09" <TMPL_VAR NAME=CARDEXPMONTH_09>>09</option>
		    <option value="10" <TMPL_VAR NAME=CARDEXPMONTH_10>>10</option>
		    <option value="11" <TMPL_VAR NAME=CARDEXPMONTH_11>>11</option>
		    <option value="12" <TMPL_VAR NAME=CARDEXPMONTH_12>>12</option>
		</select>
		<select name="CARDEXPYEAR" tabindex="30">
		    <option value="2016" <TMPL_VAR NAME=CARDEXPYEAR_2016>>2016</option>
		    <option value="2017" <TMPL_VAR NAME=CARDEXPYEAR_2017>>2017</option>
		    <option value="2018" <TMPL_VAR NAME=CARDEXPYEAR_2018>>2018</option>
		    <option value="2019" <TMPL_VAR NAME=CARDEXPYEAR_2019>>2019</option>
		    <option value="2020" <TMPL_VAR NAME=CARDEXPYEAR_2020>>2020</option>
		    <option value="2021" <TMPL_VAR NAME=CARDEXPYEAR_2021>>2021</option>
		    <option value="2022" <TMPL_VAR NAME=CARDEXPYEAR_2022>>2022</option>
		    <option value="2023" <TMPL_VAR NAME=CARDEXPYEAR_2023>>2023</option>
		    <option value="2024" <TMPL_VAR NAME=CARDEXPYEAR_2024>>2024</option>
		    <option value="2025" <TMPL_VAR NAME=CARDEXPYEAR_2025>>2025</option>
		    <option value="2026" <TMPL_VAR NAME=CARDEXPYEAR_2026>>2026</option>
		    <option value="2027" <TMPL_VAR NAME=CARDEXPYEAR_2027>>2027</option>
		    <option value="2028" <TMPL_VAR NAME=CARDEXPYEAR_2028>>2028</option>
		    <option value="2029" <TMPL_VAR NAME=CARDEXPYEAR_2029>>2029</option>
		    <option value="2030" <TMPL_VAR NAME=CARDEXPYEAR_2030>>2030</option>
		</select>
	    </td>
	</tr>
	<tr bgcolor="#FFFFFF">
	<td class="smallfont1" style="font-weight: bold" width="30%">Name On Credit Card</td>
	    <td class="smallfont1" width="70%"><input type="text" name="CARDHOLDERNAME" size="30" maxlength="50" value="<TMPL_VAR NAME="CARDHOLDERNAME">" tabindex="40"></td>
	</tr>
	<tr bgcolor="#FFFFFF">
	<td class="smallfont1" style="font-weight: bold" width="30%">Statement Address 1</td>
	    <td class="smallfont1" width="70%"><input type="text" name="CARDADDR1" size="30" maxlength="50" value="<TMPL_VAR NAME="CARDADDR1">" tabindex="50"></td>
	</tr>
	<tr bgcolor="#FFFFFF">
	<td class="smallfont1" style="font-weight: bold" width="30%">Statement Address 2</td>
	    <td class="smallfont1" width="70%"><input type="text" name="CARDADDR2" size="30" maxlength="50" value="<TMPL_VAR NAME="CARDADDR2">" tabindex="60"></td>
	</tr>
	<tr bgcolor="#FFFFFF">
	<td class="smallfont1" style="font-weight: bold" width="30%">City</td>
	    <td class="smallfont1" width="70%"><input type="text" name="CARDCITY" size="30" maxlength="60" value="<TMPL_VAR NAME="CARDCITY">" tabindex="70"></td>
	</tr>
	<tr bgcolor="#FFFFFF">
	<td class="smallfont1" width="30%"><a href="javascript:void(0);" onClick="show_state_popup('statelist')" tabindex="75"><b>State</b></a></td>
	    <td class="smallfont1" width="70%"><input type="text" name="CARDSTATE" size="2" maxlength="2" value="<TMPL_VAR NAME="CARDSTATE">" tabindex="80"></td>
	</tr>
	<tr bgcolor="#FFFFFF">
	<td class="smallfont1" style="font-weight: bold" width="30%">Zip</td>
	    <td class="smallfont1" width="70%"><input type="text" name="CARDZIP" size="10" maxlength="10" value="<TMPL_VAR NAME="CARDZIP">" tabindex="90"></td>
	</tr>
	<TMPL_IF NAME="TIMESTAMP">
	<tr bgcolor="#FFFFFF">
	<td class="smallfont1" style="font-weight: bold" width="30%">Last Update</td>
	    <td class="smallfont1" width="70%"><TMPL_VAR NAME="TIMESTAMP"> (<TMPL_VAR NAME="USERCHANGED">)</td>
	</tr>
	</TMPL_IF>
	<tr>
	<td class="smallfont1" style="font-weight: bold" width="30%">&nbsp;</td>
	    <td align="right" class="smallfont1" width="70%"><a href="http://www.lexisnexis.com/privacy/secure-info.aspx" target="_blank">How secure is this information?</a></td>
	</tr>
	<tr>
	<td colspan="2" align="center" class="smallfont1"> 
	<TMPL_IF NAME="CREDITCARDID">
	    <a href="javascript:send_event('PAYMENT/SHOW_CC_PAYMENT');" tabindex="120"><img width="64" height="29" border="0" src="<TMPL_VAR NAME="IMGPATH">/cancel.gif"></a>&nbsp;&nbsp;&nbsp;&nbsp;<a href="javascript: if(validate_credit_card() && confirm_cc_usage()) send_event('PAYMENT/CONFIRM_CC');" tabindex="130"><img width="108" height="29" border="0" src="<TMPL_VAR NAME="IMGPATH">/update_account.gif"></a>&nbsp;&nbsp;&nbsp;&nbsp;<a href="javascript:<TMPL_IF NAME="CRNT_CARDFLAGS_0"> alert('You may not delete the End Of Month Billing card.');<TMPL_ELSE>send_event('PAYMENT/DELETE_CC');</TMPL_IF>" tabindex="140"><img width="108" height="29" border="0" src="<TMPL_VAR NAME="IMGPATH">/delete_account.gif"></a>
	<TMPL_ELSE>
	    <a href="javascript:send_event('PAYMENT/SHOW_CC_PAYMENT');" tabindex="150"><img width="64" height="29" border="0" src="<TMPL_VAR NAME="IMGPATH">/cancel.gif"></a>&nbsp;&nbsp;&nbsp;&nbsp;<a href="javascript: if(validate_credit_card() && confirm_cc_usage()) send_event('PAYMENT/CONFIRM_CC');" tabindex="160"><img width="95" height="29" border="0" src="<TMPL_VAR NAME="IMGPATH">/add_account.gif"></a>
	</TMPL_IF>
	</td>
	</tr>
	</table>
	<!-- end creditcard -->
</center>
<TMPL_INCLUDE NAME="payment_bottom.tpl">
<!-- END payments/cc_account.tpl -->
