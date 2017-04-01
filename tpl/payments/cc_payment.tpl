<!-- payments/cc_payment.tpl -->
	<TMPL_INCLUDE NAME="payment_top.tpl">
    <table cellpadding="0" cellspacing="0" border="0" width="90%">
    <tr>
    <td width="100%">
	<br>
	<TMPL_INCLUDE NAME="balance_summary.tpl">
	<br>
	<!-- display registered cc_accounts -->
	<table border="0" cellpadding="3" cellspacing="2" width="100%">
	<tr bgcolor="#CFCFCF">
	<td colspan="6" align="left" class="unifont1" valign="middle">
	<table border="0" cellpadding="0" cellspacing="0" width="100%">
	 <tr>
	<td align="left" valign="middle"><span class="myaccountlabel">Credit Card Accounts On File&nbsp;</span><span class="smallfont1">(Select one for payment or click on credit card number to edit)</span></td>
	</td>
	<td align="right" class="unifont1" valign="middle">
	    <a href="javascript: document.PAYMENT.EDIT_ACCOUNT_ID.value = ''; send_event('PAYMENT/SHOW_CC');"><img width="95" height="24" border="0" src="<TMPL_VAR NAME="IMGPATH">/new_account.gif"></a>
	</td>
	  </tr>
	</table>
	</td>
	</tr>
	<tr bgcolor="#CFCFCF">
	<td class="smallfont1" width="5%">&nbsp;</td>
	<td class="smallfont1" width="20%">Credit Card</td>
	<td class="smallfont1" width="15%">Type</td>
	<td class="smallfont1" width="30%">Statement Address</td>
	<td class="smallfont1" width="30%">Card Usage</td>
	</tr>
	<TMPL_IF NAME="REGISTERED_ACCOUNTS">
	<TMPL_LOOP NAME="REGISTERED_ACCOUNTS">
	<tr bgcolor="#ffffff">
	    <td class="smallfont1"><input type="radio" name="PAY_CREDITCARDID" value="<TMPL_VAR NAME="CREDITCARDID">"  <TMPL_VAR NAME="ACCOUNT_CHECKED">></td>
	    <td class="smallfont1" nowrap="nowrap"><a href="javascript: document.PAYMENT.EDIT_ACCOUNT_ID.value = '<TMPL_VAR NAME="CREDITCARDID">'; send_event('PAYMENT/SHOW_CC');">XXXX-XXXX-XXXX-<TMPL_VAR NAME="LAST4"></a></td>
	    <td class="smallfont1"><TMPL_VAR NAME="CARDTYPE_DSP"></td>
	    <td class="smallfont1"><TMPL_VAR NAME="CARDADDR1"><TMPL_IF NAME="CARDADDR2">, <TMPL_VAR NAME="CARDADDR2"></TMPL_IF><br><TMPL_VAR NAME="CARDCITY">, <TMPL_VAR NAME="CARDSTATE"> - <TMPL_VAR NAME="CARDZIP"></td>
	    <td class="smallfont1"><TMPL_VAR NAME="CARD_USAGE">&nbsp;</td>
	</tr>
	</TMPL_LOOP>
	<TMPL_ELSE>
	<tr>
	    <td class="smallfont1" colspan="6" align="center">No accounts on file.</td>
	</tr>
	</TMPL_IF>
	</table>
	<!-- end registered accounts -->
	<br>
	<TMPL_UNLESS NAME="DISABLED">
	<TMPL_IF NAME="ALLOW_PAYMENT">
      <TMPL_INCLUDE NAME="invoices.tpl">
	    <table>
	    <tr bgcolor="#ffffff">
	    <td class="smallfont1" align="center" valign="middle">&nbsp;&nbsp;&nbsp;&nbsp;<a href="javascript: if(validate_cc_form()) send_event('PAYMENT/CONFIRM_CC_PAYMENT');"><img width="101" height="24" border="0" src="<TMPL_VAR NAME="IMGPATH">/make_payment.gif"></a>&nbsp;&nbsp;&nbsp;&nbsp;</td>
	    </tr>
	    </table>	
	<TMPL_ELSE>
	    <div align="center" class="unifont1"><i><b>No payments are required at this time.</b></i></div>
	</TMPL_IF>
	<TMPL_ELSE>
	    <div align="center" class="unifont1"><i><b>Online Payment is not available at this time.&nbsp;&nbsp;Please try again later.</b></i></div>
	</TMPL_UNLESS>
    </td>
    </tr>
    </table>
<TMPL_INCLUDE NAME="payment_bottom.tpl">
<TMPL_INCLUDE NAME="classic_footer.tpl">
<!-- END  payments/cc_payment.tpl -->
