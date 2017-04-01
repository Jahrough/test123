<!-- payments/confirm_payment.tpl -->
<TMPL_INCLUDE NAME="payment_top.tpl">

<fieldset>
    <div class="section-row">
        <div class="left mgb6">
            <legend>Payment Information</legend><br>
        </div>

        <table class="display">
            <thead>
                <tr>
                    <td>Name On Check</td>
                    <td>Bank Name</td>
                    <td>Check Number</td>
                    <td>Amount</td>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td><TMPL_VAR NAME="NAME_ON_CHECK"></td>
                    <td><TMPL_VAR NAME="BANK_NAME"></td>
                    <td><TMPL_VAR NAME="CHECK_NUMBER"></td>
                    <td><TMPL_VAR NAME="CHECK_AMOUNT_DSP"></td>
                </tr>
            </tbody>
        </table>
    </div>
<br/>
<TMPL_INCLUDE NAME="confirm_invoices.tpl">

  <TMPL_UNLESS HIDE_CHECK_AUTO_PAY>
    <div class="section-row">
        <TMPL_INCLUDE NAME="set_auto_debit_account.tpl">
    </div>
  </TMPL_UNLESS>

<input type="hidden" name="PAYMENT_FORM_ID" value="<TMPL_VAR NAME="PAYMENT_FORM_ID">">
<input type="hidden" name="CHECK_NUMBER" value="<TMPL_VAR NAME="CHECK_NUMBER">">
<input type="hidden" name="CHECK_AMOUNT" value="<TMPL_VAR NAME="CHECK_AMOUNT">">
<input type="hidden" name="PAY_CHECKING_ACCOUNT_ID" value="<TMPL_VAR NAME="CHECKING_ACCOUNT_ID">">
<input type="hidden" name="OVER_PAY_AMOUNT" value="<TMPL_VAR NAME="OVER_PAY_AMOUNT">">
<input type="hidden" name="OVER_PAY_AMOUNT_DSP" value="<TMPL_VAR NAME="OVER_PAY_AMOUNT_DSP">">


    <div class="section-row">
            <div>
                <a class="btn red-btn" href="javascript:send_payment_event('PAYMENT/POST_CHECK_PAYMENT');" tabindex="100">
                    Yes
                </a>
                &nbsp;&nbsp;&nbsp;&nbsp;
                <a class="btn darkgrey-btn" href="javascript:send_event('PAYMENT/SHOW_CHECK_PAYMENT');" tabindex="120">
                    No
                </a>
            </div>
    </div>


</fieldset>




<TMPL_INCLUDE NAME="payment_bottom.tpl">
<!-- END payments/confirm_payment.tpl -->
