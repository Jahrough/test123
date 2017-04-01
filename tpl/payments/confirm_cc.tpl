<!-- payments/confirm_cc.tpl -->
<TMPL_INCLUDE NAME="payment_top.tpl">
<center>
	<table border="0" cellpadding="3" cellspacing="2" width="50%">
	<tr bgcolor="#CFCFCF">
	<td colspan="6" align="left" class="myaccountlabel">Credit Card Information</td>
	</tr>
	<tr bgcolor="#FFFFFF">
	<td class="smallfont1" style="font-weight: bold">Creditcard Number</td>
	    <td class="smallfont1">XXXX-XXXX-XXXX-<TMPL_VAR NAME="LAST4">&nbsp;</td>
	</tr>
	<tr bgcolor="#FFFFFF">
	<td class="smallfont1" style="font-weight: bold">Name On Credit Card</td>
	    <td class="smallfont1"><TMPL_VAR NAME="CARDHOLDERNAME">&nbsp;</td>
	</tr>
	<tr bgcolor="#FFFFFF">
	<td class="smallfont1" style="font-weight: bold">Statement Address 1</td>
	    <td class="smallfont1"><TMPL_VAR NAME="CARDADDR1">&nbsp;</td>
	</tr>
	<tr bgcolor="#FFFFFF">
	<td class="smallfont1" style="font-weight: bold">Statement Address 2</td>
	    <td class="smallfont1"><TMPL_VAR NAME="CARDADDR2">&nbsp;</td>
	</tr>
	<tr bgcolor="#FFFFFF">
	<td class="smallfont1" style="font-weight: bold">City</td>
	    <td class="smallfont1"><TMPL_VAR NAME="CARDCITY">&nbsp;</td>
	</tr>
	<tr bgcolor="#FFFFFF">
	<td class="smallfont1" style="font-weight: bold">State</td>
	    <td class="smallfont1"><TMPL_VAR NAME="CARDSTATE">&nbsp;</td>
	</tr>
	<tr bgcolor="#FFFFFF">
	<td class="smallfont1" style="font-weight: bold">Zip</td>
	    <td class="smallfont1"><TMPL_VAR NAME="CARDZIP">&nbsp;</td>
	</tr>
  
  <TMPL_UNLESS NAME="DELETE">
      <tr>
	<td colspan="2"><img src="<TMPL_VAR NAME=IMGPATH>/spacer.gif" width="1" height="10" border="0"></td>
      </tr>
      <tr>
	<td colspan="2"><TMPL_INCLUDE NAME="set_auto_debit_account.tpl"></td>
      </tr>
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
	<a href="javascript: send_event('PAYMENT/PROCESS_CC');" tabindex="20"><img src="<TMPL_VAR NAME="IMGPATH">/yes.gif" height="29" width="54" border="0"></a>&nbsp;&nbsp;&nbsp;&nbsp;<a href="javascript:send_event('PAYMENT/SHOW_CC');" tabindex="10"><img src="<TMPL_VAR NAME="IMGPATH">/no.gif" height="29" width="54" border="0"></a>
	</td>
	</tr>
	</table>

	<!-- cc hidden -->
	    <input type="hidden" name="CARDNUMBER" value="<TMPL_VAR NAME="CARDNUMBER">">
	    <input type="hidden" name="LAST4" value="<TMPL_VAR NAME="LAST4">">
	    <input type="hidden" name="CREDITCARDID" value="<TMPL_VAR NAME="CREDITCARDID">">
	    <input type="hidden" name="CARDEXPMONTH" value="<TMPL_VAR NAME="CARDEXPMONTH">">
	    <input type="hidden" name="CARDEXPYEAR" value="<TMPL_VAR NAME="CARDEXPYEAR">">
	    <input type="hidden" name="CARDHOLDERNAME" value="<TMPL_VAR NAME="CARDHOLDERNAME">">
	    <input type="hidden" name="CARDADDR1" value="<TMPL_VAR NAME="CARDADDR1">">
	    <input type="hidden" name="CARDADDR2" value="<TMPL_VAR NAME="CARDADDR2">">
	    <input type="hidden" name="CARDCITY" value="<TMPL_VAR NAME="CARDCITY">">
	    <input type="hidden" name="CARDSTATE" value="<TMPL_VAR NAME="CARDSTATE">">
	    <input type="hidden" name="CARDZIP" value="<TMPL_VAR NAME="CARDZIP">">
	    <input type="hidden" name="CARDFLAGS_0" value="<TMPL_VAR NAME="CARDFLAGS_0">">
	    <input type="hidden" name="CARDFLAGS_1" value="<TMPL_VAR NAME="CARDFLAGS_1">">
	    <input type="hidden" name="CARDFLAGS_2" value="<TMPL_VAR NAME="CARDFLAGS_2">">
	    <input type="hidden" name="CRNT_CARDFLAGS_0" value="<TMPL_VAR NAME="CRNT_CARDFLAGS_0">">
	    <input type="hidden" name="CRNT_CARDFLAGS_1" value="<TMPL_VAR NAME="CRNT_CARDFLAGS_1">">
	    <input type="hidden" name="CRNT_CARDFLAGS_2" value="<TMPL_VAR NAME="CRNT_CARDFLAGS_2">">
	<!-- end cc hidden -->

<TMPL_INCLUDE NAME="payment_bottom.tpl">
</center>
<!-- END payments/confirm_cc.tpl -->
