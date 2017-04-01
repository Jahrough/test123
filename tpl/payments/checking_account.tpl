<!-- payments/checking_account.tpl -->
<TMPL_INCLUDE NAME="payment_top.tpl">
<center>
	<INPUT type=hidden NAME="CHECKING_ACCOUNT_ID" VALUE="<TMPL_VAR NAME="CHECKING_ACCOUNT_ID">">
	<!-- display checking_accounts -->
	<table border="0" cellpadding="3" cellspacing="2" width="80%">
	<tr bgcolor="#CFCFCF">
	<td colspan="6" align="left" class="myaccountlabel">Checking Account Information</td>
	</tr>
	<tr bgcolor="#FFFFFF">
	<td class="smallfont1" style="font-weight: bold">Name On Check</td>
	    <td class="smallfont1"><input type="text" name="NAME_ON_CHECK" size="30" maxlength="60" value="<TMPL_VAR NAME="NAME_ON_CHECK">" tabindex="10"></a></td>
	</tr>
	<tr bgcolor="#FFFFFF">
	<td class="smallfont1" style="font-weight: bold">Street Address 1</td>
	    <td class="smallfont1"><input type="text" name="STREET_ADDRESS1" size="30" maxlength="50" value="<TMPL_VAR NAME="STREET_ADDRESS1">" tabindex="20"></td>
	</tr>
	<tr bgcolor="#FFFFFF">
	<td class="smallfont1" style="font-weight: bold">Street Address 2</td>
	    <td class="smallfont1"><input type="text" name="STREET_ADDRESS2" size="30" maxlength="50" value="<TMPL_VAR NAME="STREET_ADDRESS2">" tabindex="30"></td>
	</tr>
	<tr bgcolor="#FFFFFF">
	<td class="smallfont1" style="font-weight: bold">City</td>
	    <td class="smallfont1"><input type="text" name="CITY" size="30" maxlength="60" value="<TMPL_VAR NAME="CITY">" tabindex="40"></td>
	</tr>
	<tr bgcolor="#FFFFFF">
	<td class="smallfont1" style="font-weight: bold"><a href="javascript:void(0);" onClick="show_state_popup('statelist')" tabindex="40"><b>State</b></a></td>
	    <td class="smallfont1"><input type="text" name="STATE" size="5" maxlength="2" value="<TMPL_VAR NAME="STATE">" tabindex="50"></td>
	</tr>
	<tr bgcolor="#FFFFFF">
	<td class="smallfont1" style="font-weight: bold">Zip</td>
	    <td class="smallfont1"><input type="text" name="ZIP" size="10" maxlength="10" value="<TMPL_VAR NAME="ZIP">" tabindex="60"></td>
	</tr>
	<tr bgcolor="#FFFFFF">
	<td class="smallfont1" style="font-weight: bold">Bank Name</td>
	    <td class="smallfont1"><input type="text" name="BANK_NAME" size="30" maxlength="60" value="<TMPL_VAR NAME="BANK_NAME">" tabindex="70"></td>
	</tr>
	<tr bgcolor="#FFFFFF">
	<td class="smallfont1" style="font-weight: bold">Routing Number</td>
	    <td class="smallfont1"><input type="text" name="BANK_ROUTING_NUMBER" size="30" maxlength="9" value="<TMPL_VAR NAME="BANK_ROUTING_NUMBER">" tabindex="80"></td>
	</tr>
	<tr bgcolor="#FFFFFF">
	<td class="smallfont1" style="font-weight: bold">Account Number</td>
	    <td class="smallfont1">
	    <TMPL_IF NAME="BANK_ACCOUNT_NUMBER_MASK"><TMPL_VAR NAME="BANK_ACCOUNT_NUMBER_MASK"><br></TMPL_IF>
	    <input type="hidden" name="BANK_ACCOUNT_NUMBER_MASK" size="30" maxlength="16" value="<TMPL_VAR NAME="BANK_ACCOUNT_NUMBER_MASK">">
	    <input type="text" name="BANK_ACCOUNT_NUMBER" size="20" maxlength="30" value="<TMPL_VAR NAME="BANK_ACCOUNT_NUMBER">" tabindex="90"></td>
	</tr>
	<TMPL_IF NAME="DATEUPDATED">
	<tr bgcolor="#FFFFFF">
	<td class="smallfont1" style="font-weight: bold">Last Update</td>
	    <td class="smallfont1"><TMPL_VAR NAME="DATEUPDATED"> (<TMPL_VAR NAME="USERUPDATED">)</td>
	</tr>
	</TMPL_IF>
	<tr bgcolor="#FFFFFF">
	<td class="smallfont1" valign="top" style="font-weight: bold">Need help locating<br> these numbers?</td>
	<td class="smallfont1"><img width="400" height="82" border="0" src="<TMPL_VAR NAME="IMGPATH">/accurint_check.gif"></td>
	</tr>
	<tr>
	<td colspan="2" align="center" class="smallfont1"> 
	<TMPL_IF NAME="CHECKING_ACCOUNT_ID">
	    <a href="javascript:send_event('PAYMENT/SHOW_CHECK_PAYMENT');" tabindex="100"><img width="64" height="29" border="0" src="<TMPL_VAR NAME="IMGPATH">/cancel.gif"></a>&nbsp;&nbsp;&nbsp;&nbsp;<a href="javascript:if(validate_checks()) send_event('PAYMENT/CONFIRM_CHECK');" tabindex="110"><img width="108" height="29" border="0" src="<TMPL_VAR NAME="IMGPATH">/update_account.gif"></a>&nbsp;&nbsp;&nbsp;&nbsp;<a href="javascript:send_event('PAYMENT/DELETE_CHECK');" tabindex="120"><img width="108" height="29" border="0" src="<TMPL_VAR NAME="IMGPATH">/delete_account.gif"></a>
	<TMPL_ELSE>
	    <a href="javascript:send_event('PAYMENT/SHOW_CHECK_PAYMENT');" tabindex="130"><img width="64" height="29" border="0" src="<TMPL_VAR NAME="IMGPATH">/cancel.gif"></a>&nbsp;&nbsp;&nbsp;&nbsp;<a href="javascript: if(validate_checks()) send_event('PAYMENT/CONFIRM_CHECK');" tabindex="140"><img width="95" height="29" border="0" src="<TMPL_VAR NAME="IMGPATH">/add_account.gif"></a>
	</TMPL_IF>
	</td>
	</tr>
	</table>
	<!-- end checkingaccount -->
</center>
<TMPL_INCLUDE NAME="payment_bottom.tpl">
<!-- END payments/checking_account.tpl -->
