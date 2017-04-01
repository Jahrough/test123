<!-- payments/confirm_cc_payment.tpl -->
<TMPL_INCLUDE NAME="payment_top.tpl">

<fieldset>
    <div class="section-row">
        <div class="left mgb6">
            <legend>Payment Information</legend><br>
        </div>

        <table class="display">
            <thead>
                <tr>
                    <td>Credit Card</td>
                    <td>Amount</td>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>XXXX-XXXX-XXXX-<TMPL_VAR NAME="LAST4"></td>
                    <td><TMPL_VAR NAME="CC_AMOUNT_DSP"></td>
                </tr>
            </tbody>
        </table>
    </div>
<br/>
<TMPL_INCLUDE NAME="confirm_invoices.tpl">
    <div class="section-row">
        <TMPL_INCLUDE NAME="set_auto_debit_account.tpl">
    </div>

	<!-- cc hidden -->
	    <input type="hidden" name="PAYMENT_FORM_ID" value="<TMPL_VAR NAME="PAYMENT_FORM_ID">">
	    <input type="hidden" name="CC_AMOUNT" value="<TMPL_VAR NAME="CC_AMOUNT">">
	    <input type="hidden" name="PAY_CREDITCARDID" value="<TMPL_VAR NAME="CREDITCARDID">">
	    <input type="hidden" name="OVER_PAY_AMOUNT" value="<TMPL_VAR NAME="OVER_PAY_AMOUNT">">
	    <input type="hidden" name="OVER_PAY_AMOUNT_DSP" value="<TMPL_VAR NAME="OVER_PAY_AMOUNT_DSP">">
	<!-- end cc payment -->


    <div align="center" class="section-row">
            <div>
				<br/>
            	Is the above information correct?
            	<br/><br/>
                <a class="btn red-btn" href="javascript:send_payment_event('PAYMENT/POST_CC_PAYMENT');" tabindex="100">
                    Yes
                </a>
                &nbsp;&nbsp;&nbsp;&nbsp;
                <a class="btn darkgrey-btn" href="javascript:send_event('PAYMENT/SHOW_CC_PAYMENT');" tabindex="120">
                    No
                </a>
            </div>
    </div>


</fieldset>




<TMPL_INCLUDE NAME="payment_bottom.tpl">
<!-- END payments/confirm_cc_payment.tpl -->