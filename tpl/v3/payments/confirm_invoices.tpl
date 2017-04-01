<!-- payments/confirm_invoices.tpl -->

    <div class="section-row">
        <table class="display-not-dataTable">
            <thead>
                <tr>
                    <td>Invoice #</td>
                    <td>Date</td>
                    <td>Balance</td>
                    <td>Amount to Apply</td>
                </tr>
            </thead>
            <tbody>
              <TMPL_LOOP NAME=INVOICES>
                <tr>
                    <td><TMPL_VAR NAME="INVOICE_NUMBER"></td>
                    <td><TMPL_VAR NAME="INVOICE_DATE"></td>
                    <td><TMPL_VAR NAME="BALANCE_DISP"></td>
                    <td><TMPL_VAR NAME="PAY_AMOUNT_DISP"></td>
                    <input type="hidden"  name="INVOICE_PAY_AMOUNT_<TMPL_VAR NAME=INVOICE_ID>" size="20" maxlength="15" value="<TMPL_VAR NAME="PAY_AMOUNT">">
                </tr>
              </TMPL_LOOP>

                <tr>
                    <td colspan="3">Total Invoice Payments</td>
                    <td><TMPL_VAR NAME="TOTAL_INVOICE_AMOUNT_DSP"></td>
                </tr>

                <TMPL_IF NAME=OVER_PAY_AMOUNT>
                    <tr>
                        <td colspan="3">Total Pre-Payments:</td>
                        <td><TMPL_VAR NAME="OVER_PAY_AMOUNT_DSP"></td>
                    </tr>
                </TMPL_IF>


            </tbody>
        </table>
    </div>

      <p>I authorize Seisint Inc. to charge my <TMPL_IF NAME=CC_AMOUNT>credit card<TMPL_ELSE>bank account</TMPL_IF> as listed. I guarantee and warrant I have legal ownership of this account or am legally authorized to enter into this payment agreement with Seisint Inc.</p>

      <p>If approved, the payment will be credited to your account within 48 hours. A service fee of $25.00 will be charged for each returned payment. If you have any questions on this program, please contact Customer Accounting at 866-818-0183 0183 8:30am-5:00pm EST M-F or email us at <a href="mailto:Customer_Accounting@Seisint.com">Customer_Accounting@Seisint.com</a>.</p>
      
<!-- END  payments/confirm_invoices.tpl -->
