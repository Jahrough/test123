<!-- payments/confirm_cc.tpl -->
<TMPL_INCLUDE NAME="payment_top.tpl">
<center>
	<table class="w50pc display dataTable no-footer">
		<tr role="row" bgcolor="#CFCFCF">
			<th colspan="2" align="center">Credit Card Information</th>
		</tr>
	<tr>
	<td class="bold">Creditcard Number</td>
	    <td>XXXX-XXXX-XXXX-<TMPL_VAR NAME="LAST4">&nbsp;</td>
	</tr>
	<tr>
	<td class="bold">Name On Credit Card</td>
	    <td><TMPL_VAR NAME="CARDHOLDERNAME">&nbsp;</td>
	</tr>
	<tr>
	<td class="bold">Statement Address 1</td>
	    <td><TMPL_VAR NAME="CARDADDR1">&nbsp;</td>
	</tr>
	<tr>
	<td class="bold">Statement Address 2</td>
	    <td><TMPL_VAR NAME="CARDADDR2">&nbsp;</td>
	</tr>
	<tr>
	<td class="bold">City</td>
	    <td><TMPL_VAR NAME="CARDCITY">&nbsp;</td>
	</tr>
	<tr>
	<td class="bold">State</td>
	    <td><TMPL_VAR NAME="CARDSTATE">&nbsp;</td>
	</tr>
	<tr>
	<td class="bold">Zip</td>
	    <td><TMPL_VAR NAME="CARDZIP">&nbsp;</td>
	</tr>
 </table>
 <table>
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
	    <td colspan="2" align="center">Are you sure you want to delete this account?
	      <INPUT type=hidden NAME="DELETE" value="<TMPL_VAR NAME="DELETE">">
	    </td>
	<TMPL_ELSE>
	    <td colspan="2" align="center">Is the above information correct?</td>
	</TMPL_IF>
	</tr>
	<tr>
	<td colspan="2" align="center" >
	<a class="btn red-btn" href="javascript: send_event('PAYMENT/PROCESS_CC');" tabindex="20">Yes</a>&nbsp;&nbsp;&nbsp;&nbsp;<a class="btn grey-btn" href="javascript:send_event('PAYMENT/SHOW_CC');" tabindex="10">No</a>
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
