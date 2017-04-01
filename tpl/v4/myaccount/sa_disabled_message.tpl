<!-- Begin sa_disabled_message.tpl -->


<div class="myaccount-containers">
    <div class="section">
            <div class="section-row">
                    <div class="myaccount-section-title">Please Note </div><br/>

                    <div class="warningmessage pd10 bold">
                                  <TMPL_IF NAME="SA_DISABLED_REASON_OTP_ROAMING">
                                        <br><br>
                                        Your administrator privileges have been temporarily revoked because you bypassed the Secure Token Authentication.
                                        <br><br>
                                        Thank you for your cooperation in making our systems secure.
                                        <br><br>
                                  <TMPL_ELSE>
                                      <TMPL_IF NAME="SA_DISABLED_REASON_MOBILE">
                                        <br><br>
                                        Your administrator privileges have been temporarily revoked because you are accessing our system from a mobile device.
                                        <br><br>
                                        Thank you for your cooperation in making our systems secure.
                                        <br><br>
                                      <TMPL_ELSE>
                                        <br><br>
                                        Your administrator privileges have been temporarily revoked because you are accessing our system from a location not in the list of approved locations.
                                        <br><br>
                                        If you want to add this location, please contact Customer Support.
                                        <br><br>
                                        Thank you for your cooperation in making our systems secure.
                                        <br><br>
                                      </TMPL_IF>
                                 </TMPL_IF>
                    </div>
                  <br><br><br><br>
        </div>
    </div>
</div>


<!-- End sa_disabled_message.tpl -->
