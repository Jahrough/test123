<!-- Begin v3/court/show_confirmation.tpl -->
<TMPL_INCLUDE NAME="court_header.tpl">

    <div class="wizard-content" style="border-radius: 8px;">
        <div>
            <div class="myaccount-section-title">Court Search &mdash; Order Confirmation</div>
            <div class="myaccount-containers">
                <div class="sections">
                    <div class="section-row">
                        <br>
                        <div class="wizard-font-16px bold">Subject Information</div>
                    </div>
                    <TMPL_IF IDENTITY_LOOP>
                        <TMPL_LOOP IDENTITY_LOOP>
                            <div class="section-row">
                                <TMPL_INCLUDE NAME="identity.tpl">
                            </div>
                        </TMPL_LOOP>
                    </TMPL_IF>
                    <div class="section-row">
                        To make modifications to your Court Search order, click the BACK button below.
                    </div>
                    <div class="section-row">
                        To place your order, click the PLACE ORDER button below.
                    </div>
                    <div class="section-row">
                        <span class="important">IMPORTANT</span>:&nbsp;&nbsp;Once an order is placed, it can not be cancelled. By clicking the PLACE ORDER button below, the charges shown will be automatically added to your bill.
                    </div>
                    <div class="section-row">
                        <b>TOTAL CHARGE FOR THIS ORDER: $<TMPL_VAR TOTAL></b>
                    </div>
                    <div class="section-row">
                        <input class="btn white-btn" type="BUTTON" name="PREVIOUS_BUTTON" value="Back" onClick="history.back();">
                        <input class="courtplaceorderbutton btn red-btn" type="button" name="SUBMIT" value="Place Order" onClick="showpw_v3();send_event('COURT/COURT_REQUEST');this.disabled=true">
                        <input class="courtcancelorderbutton btn darkgrey-btn" name="CANCEL_ORDER" type="button" value="Cancel Order" onclick="cancel_order_conf()">
                    </div>
                    <div class="section-row">
                        <div style="text-align:left;">
                            <b>Note:</b>&nbsp;&nbsp;As responses are returned for each search, results will be viewable by clicking the <b>Report Manager</b> link which can be found in the <b>My Account</b> section and then clicking on the <b>Court Search Reports</b> link.<br><br>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script>
        function cancel_order_conf() {
            var title = 'Cancellation Confirmation';
            var bdy = '<table style="width:100%;"><tr><td class="unifont1" valign="top" align="center">If you cancel your order now, <b>your selections will be lost</b> and this window will close.<br><br>To make changes or place this order, return to the Court Wizard.<br><br></td></tr><tr><td><input class="btn darkgrey-btn" name="CANCEL_COURT" type="button" value="Cancel Order Now" onclick="window.close();"><input class="btn red-btn right" name="CONTINUE_COURT" type="button" value="Return to Court Wizard" onclick="toggle_modal();"></td></tr></table>';
            new_modal(title,bdy,500);
        }
    </script>

<TMPL_INCLUDE NAME="court_footer.tpl">
<!-- End show_confirmation.tpl -->
