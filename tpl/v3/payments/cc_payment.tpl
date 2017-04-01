<TMPL_INCLUDE NAME="payment_top.tpl">
<!-- START v3/payments/cc_payment.tpl -->
<!-- payment_top is included in this file before "START" -->
    
<TMPL_INCLUDE NAME="balance_summary.tpl">

<fieldset>
    <div class="section-row">
        <div class="left mgb6">
            <legend>Credit Card Accounts On File&nbsp;</legend><br>
            <span class="smallfont1">(Select one for payment or click on credit card number to edit)</span>
        </div>
        <div class="right">
            <a class="btn red-btn" href="javascript:document.PAYMENT.EDIT_ACCOUNT_ID.value = ''; send_event('PAYMENT/SHOW_CC');">
                New Account
            </a>
        </div>
    </div>

    <div class="section-row">
        <table class="display-not-dataTable">
            <thead>
                <tr>
                    <td style="text-decoration:none;width:50px;">&nbsp;</td>
                    <td>Credit Card</td>
                    <td>Type</td>
                    <td>Statement Address</td>
                    <td>Card Usage</td>
                </tr>
            </thead>
            <tbody>
                <TMPL_IF NAME="REGISTERED_ACCOUNTS">
                    <TMPL_LOOP NAME="REGISTERED_ACCOUNTS">
                        <tr>
                            <td>
                                <input type="radio" name="PAY_CREDITCARDID" value="<TMPL_VAR NAME="CREDITCARDID">" <TMPL_VAR NAME="ACCOUNT_CHECKED">>
                            </td>
                            <td>
                                <a href="javascript: document.PAYMENT.EDIT_ACCOUNT_ID.value = '<TMPL_VAR NAME="CREDITCARDID">'; send_event('PAYMENT/SHOW_CC');">XXXX-XXXX-XXXX-<TMPL_VAR NAME="LAST4"></a>
                            </td>
                            <td>
                                <TMPL_VAR NAME="CARDTYPE_DSP">
                            </td>
                            <td>
                                <TMPL_VAR NAME="CARDADDR1"><TMPL_IF NAME="CARDADDR2">, <TMPL_VAR NAME="CARDADDR2"></TMPL_IF><br><TMPL_VAR NAME="CARDCITY">, <TMPL_VAR NAME="CARDSTATE"> - <TMPL_VAR NAME="CARDZIP">
                            </td>
                            <td>
                                <TMPL_VAR NAME="CARD_USAGE">&nbsp;
                            </td>
                        </tr>
                    </TMPL_LOOP>
                <TMPL_ELSE>
                    <tr>
                        <td colspan="5" style="text-align:center;">No accounts on file.</td>
                    </tr>
                </TMPL_IF>
            </tbody>
        </table>
    </div>
</fieldset>

<fieldset>
    <TMPL_UNLESS NAME="DISABLED">
        <TMPL_IF NAME="ALLOW_PAYMENT">
            <div class="section-row mgb15">
                <TMPL_INCLUDE NAME="invoices.tpl">
            </div>
            <div class="section-row">
                <div>
                    <a class="btn red-btn" href="javascript: if(validate_cc_form()) send_event('PAYMENT/CONFIRM_CC_PAYMENT');">
                        Make Payment
                    </a>
                </div>
            </div>
        <TMPL_ELSE>
            <div class="section-row">
                <i><b>No payments are required at this time.</b></i>
            </div>
        </TMPL_IF>
    <TMPL_ELSE>
        <div class="section-row">
            <i><b>Online Payment is not available at this time.&nbsp;&nbsp;Please try again later.</b></i>
        </div>
    </TMPL_UNLESS>
</fieldset>

<TMPL_INCLUDE NAME="payment_bottom.tpl">
<!-- END v3/payments/cc_payment.tpl -->