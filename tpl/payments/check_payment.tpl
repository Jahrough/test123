<!-- payments/check_payment.tpl -->

    <TMPL_INCLUDE NAME="payment_top.tpl">
    <br>
    <table border="0" width="700">
    <tr>
    <td class="unifont1">
                <TMPL_IF ENABLE_EPIC360_PAYMENTS>

                <h3>LexisNexis Risk Solutions is no longer accepting check payments via Accurint My Account.  To initiate a payment online at no additional cost, please follow the below link for information on our new payment portal, EPIC 360.</h3>
                <br>
		<b>EPIC 360&deg; Now Available</b>
                <br><br>
                We are excited to announce Accurint&reg; invoices are now available to view and pay through the LexisNexis&reg; Electronic Payment &amp; Invoice Center, <b>EPIC 360&deg;</b>. This tool includes the following features:
                <ul>
                  <li>One login ID to access your LexisNexis&reg; Risk Solutions accounts and invoices;
                  <li>Ability to view your open account balances and pay invoices online;
                  <li>Opportunity to view, print, and save PDF copies of invoices; and
                  <li>Access to your account activity detail.
                </ul>
                Look for the link to EPIC 360&deg; on the My Account - Billing Info screen, or access the site directly via the following link:&nbsp; <a href="https://invoice.risk.lexisnexis.com" target="_blank"><b><u>https://invoice.risk.lexisnexis.com</u></b></a>.
                <br><br>
                Take a tour of EPIC 360&deg; by accessing the following link:&nbsp; <a href="https://invoice.risk.lexisnexis.com/index/tutorial" target="_blank"><b><u>https://invoice.risk.lexisnexis.com/index/tutorial</u></b></a>
                <br><br>
                This new feature is included in all price plans and is available at no additional cost to your agency.
                <br><br><br>


                <TMPL_ELSE>

                <h3>LexisNexis Risk Solutions is no longer accepting check payments via Accurint My Account.</h3>

                <br>

                Please contact your sales representative if you have any questions.

                </TMPL_IF>


    </td>
    </tr>
    </table>
    <TMPL_INCLUDE NAME="payment_bottom.tpl">

<!--  END payments/check_payment.tpl -->
