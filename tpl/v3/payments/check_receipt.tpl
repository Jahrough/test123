<!-- payments/check_receipt.tpl -->
    <TMPL_INCLUDE NAME="payment_top.tpl">

    <fieldset>
        <div class="section-row">
            <p>Thank you for your <TMPL_IF NAME="CHECK_RECEIPT">check<TMPL_ELSE>credit card</TMPL_IF> payment of <b><TMPL_VAR NAME="RECEIPT_AMOUNT"></b> on <TMPL_VAR NAME="RECEIPT_DATE">.  Your confirmation number is <b>(#<TMPL_VAR NAME="RECEIPT_NUMBER">)</b>.</p>
            <p>Please print this page for your records.</p>

            <TMPL_IF NAME="STANDALONE_PAYMENTS">
                <p><b>PLEASE NOTE:</b><br><br>If your account is inactive and the payment satisfies the outstanding amount due, your account should be activated within 24 hours.&nbsp; If you need more immediate action, please call Customer Accounting Monday through Friday at 866-818-0183 between the hours of 8:00-5:30 EST.</p>
            </TMPL_IF>
        </div>

        <div class="section-row">
                <div>

                    <TMPL_IF NAME="STANDALONE_PAYMENTS">
                        <a class="btn red-btn" href="javascript:send_event('LOGOUT');">Logout</a>
                        &nbsp;&nbsp;&nbsp;&nbsp;
                        <a class="btn grey-btn" href="javascript: printit();">Print</a>
                    <TMPL_ELSE>
                        <a class="btn red-btn" href="javascript:send_event('BILLING/SUMMARY');">Back</a>
                        &nbsp;&nbsp;&nbsp;&nbsp;
                        <a class="btn grey-btn" href="javascript: printit();">Print</a>
                    </TMPL_IF>
                </div>
        </div>

    </fieldset>

    <TMPL_INCLUDE NAME="payment_bottom.tpl">
<!--  END payments/check_receipt.tpl -->
