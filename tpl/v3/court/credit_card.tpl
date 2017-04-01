<!-- Begin credit_card.tpl -->
<TMPL_INCLUDE NAME="court_header.tpl">

    <div class="wizard-content" style="border-radius: 8px;">
        <div>
            <TMPL_IF NAME="CONFIRMATION">
                <div class="myaccount-section-title">Court Search &mdash; Verify Credit Card Information</div>
            <TMPL_ELSE>
                <div class="myaccount-section-title">Court Search &mdash; Credit Card Information</div>
            </TMPL_IF>
            <div class="myaccount-containers">
                <div class="sections">
                    <TMPL_IF IS_EXEMPT>
                        <div class="section-row">
                            <TMPL_INCLUDE NAME="exempt_user_msg.tpl">
                        </div>
                    </TMPL_IF>
                    <div class="section-row">
                        <TMPL_INCLUDE NAME="credit_card_form.tpl">
                    </div>
                </div>
            </div>
        </div>
    </div>



<TMPL_INCLUDE NAME="court_footer.tpl">
<!-- End credit_card.tpl -->
