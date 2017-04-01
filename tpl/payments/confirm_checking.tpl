<!-- payments/checking_account.tpl -->
<TMPL_INCLUDE NAME="payment_top.tpl">
<center>
	<!-- display checking_accounts -->
	<table border="0" cellpadding="3" cellspacing="2" width="50%">
	<tr bgcolor="#CFCFCF">
	<td colspan="6" align="left" class="myaccountlabel">Checking Account Information</td>
	</tr>
	<tr bgcolor="#FFFFFF">
	<td class="smallfont1" style="font-weight: bold">Name On Check</td>
	    <td class="smallfont1"><TMPL_VAR NAME="NAME_ON_CHECK">&nbsp;</td>
	</tr>
	<tr bgcolor="#FFFFFF">
	<td class="smallfont1" style="font-weight: bold">Bank Name</td>
	    <td class="smallfont1"><TMPL_VAR NAME="BANK_NAME">&nbsp;</td>
	</tr>
	<tr bgcolor="#FFFFFF">
	<td class="smallfont1" style="font-weight: bold">Routing Number</td>
	    <td class="smallfont1"><TMPL_VAR NAME="BANK_ROUTING_NUMBER">&nbsp;</td>
	</tr>
	<tr bgcolor="#FFFFFF">
	<td class="smallfont1" style="font-weight: bold">Account Number</td>
	    <td class="smallfont1"><TMPL_VAR NAME="BANK_ACCOUNT_NUMBER_MASK">&nbsp;</td>
	</tr>
	<tr bgcolor="#FFFFFF">
	<td class="smallfont1" style="font-weight: bold">Street Address 1</td>
	    <td class="smallfont1"><TMPL_VAR NAME="STREET_ADDRESS1">&nbsp;</td>
	</tr>
	<tr bgcolor="#FFFFFF">
	<td class="smallfont1" style="font-weight: bold">Street Address 2</td>
	    <td class="smallfont1"><TMPL_VAR NAME="STREET_ADDRESS2">&nbsp;</td>
	</tr>
	<tr bgcolor="#FFFFFF">
	<td class="smallfont1" style="font-weight: bold">City</td>
	    <td class="smallfont1"><TMPL_VAR NAME="CITY">&nbsp;</td>
	</tr>
	<tr bgcolor="#FFFFFF">
	<td class="smallfont1" style="font-weight: bold">State</td>
	    <td class="smallfont1"><TMPL_VAR NAME="STATE">&nbsp;</td>
	</tr>
	<tr bgcolor="#FFFFFF">
	<td class="smallfont1" style="font-weight: bold">Zip</td>
	    <td class="smallfont1"><TMPL_VAR NAME="ZIP">&nbsp;</td>
	</tr>
  <TMPL_UNLESS NAME="DELETE">
  <TMPL_UNLESS HIDE_CHECK_AUTO_PAY>
      <tr>
	<td colspan="2"><img src="<TMPL_VAR NAME=IMGPATH>/spacer.gif" width="1" height="10" border="0"></td>
      </tr>
      <tr>
	<td colspan="2"><TMPL_INCLUDE NAME="set_auto_debit_account.tpl"></td>
      </tr>
  </TMPL_UNLESS>
  </TMPL_UNLESS>
      <tr>
	<td colspan="2"><img src="<TMPL_VAR NAME=IMGPATH>/spacer.gif" width="1" height="10" border="0"></td>
      </tr>
	<tr>
	<TMPL_IF NAME="DELETE">
	    <td class="smallfont1" colspan="2" align="center">Are you sure you want to delete this account?
	      <INPUT type=hidden NAME="DELETE" value="<TMPL_VAR NAME="DELETE">">
	    </td>
	<TMPL_ELSE>
	    <td class="smallfont1" colspan="2" align="center">Is the above information correct?</td>
	</TMPL_IF>
	</tr>
	<tr>
	<td colspan="2" align="center" class="smallfont1"> 
	<a href="javascript: send_event('PAYMENT/PROCESS_CHECK');" tabindex="20"><img src="<TMPL_VAR NAME="IMGPATH">/yes.gif" height="29" width="54" border="0"></a>&nbsp;&nbsp;&nbsp;&nbsp;<a href="javascript:send_event('PAYMENT/SHOW_CHECK');" tabindex="10"><img src="<TMPL_VAR NAME="IMGPATH">/no.gif" height="29" width="54" border="0"></a>
	</td>
	</tr>
	</table>

	<!-- checking hidden -->

	    <input type="hidden" name="NAME_ON_CHECK" value="<TMPL_VAR NAME="NAME_ON_CHECK">">
	    <input type="hidden" name="BANK_NAME" value="<TMPL_VAR NAME="BANK_NAME">">
	    <input type="hidden" name="BANK_ROUTING_NUMBER" value="<TMPL_VAR NAME="BANK_ROUTING_NUMBER">">
	    <input type="hidden" name="BANK_ACCOUNT_NUMBER" value="<TMPL_VAR NAME="BANK_ACCOUNT_NUMBER">">
	    <input type="hidden" name="BANK_ACCOUNT_NUMBER_MASK" value="<TMPL_VAR NAME="BANK_ACCOUNT_NUMBER_MASK">">
	    <input type="hidden" name="STREET_ADDRESS1" value="<TMPL_VAR NAME="STREET_ADDRESS1">">
	    <input type="hidden" name="STREET_ADDRESS2" value="<TMPL_VAR NAME="STREET_ADDRESS2">">
	    <input type="hidden" name="CITY" value="<TMPL_VAR NAME="CITY">">
	    <input type="hidden" name="STATE" value="<TMPL_VAR NAME="STATE">">
	    <input type="hidden" name="ZIP"  value="<TMPL_VAR NAME="ZIP">">
	    <input type="hidden" name="CHECKING_ACCOUNT_ID"  value="<TMPL_VAR NAME="CHECKING_ACCOUNT_ID">">
	<!-- end checkingaccount -->

<TMPL_INCLUDE NAME="payment_bottom.tpl">
</center>
<!-- END payments/checking_account.tpl -->
