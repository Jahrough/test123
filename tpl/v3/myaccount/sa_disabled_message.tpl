<!-- Begin sa_disabled_message.tpl -->


<div class="myaccount-containers">
    <div class="section">
            <div class="section-row">
                <fieldset>
                    <div class="myaccount-section-title">Please Note </div><br/>

                    <div class="warningmessage pd10 bold">
                    <table border="0">
                      <tr>
                        <td valign="top">
                        <table border="0" class="myaccountborder">
                          <tr>
                            <td align="center">
                            <table border="0" class="myaccountbody bold" style="color:#fff;">
                              <tr>
                                  <TMPL_IF NAME="SA_DISABLED_REASON_OTP_ROAMING">
                                        <td>
                                        <br><br>
                                        Your administrator privileges have been temporarily revoked because you bypassed the Secure Token Authentication.
                                        <br><br>
                                        Thank you for your cooperation in making our systems secure.
                                        <br><br>

                                        </td>
                                  <TMPL_ELSE>
                                      <TMPL_IF NAME="SA_DISABLED_REASON_MOBILE">
                                        <td>
                                        <br><br>
                                        Your administrator privileges have been temporarily revoked because you are accessing our system from a mobile device.
                                        <br><br>
                                        Thank you for your cooperation in making our systems secure.
                                        <br><br>

                                        </td>
                                      <TMPL_ELSE>
                                        <td>
                                        <br><br>
                                        Your administrator privileges have been temporarily revoked because you are accessing our system from a location not in the list of approved locations.
                                        <br><br>
                                        If you want to add this location, please contact Customer Support.
                                        <br><br>
                                        Thank you for your cooperation in making our systems secure.
                                        <br><br>

                                        </td>
                                      </TMPL_IF>
                                 </TMPL_IF>
                              </tr>
                            </table>
                            </td>
                          </tr>
                            </table>
                            </td>
                          </tr>
                        </table>
                         </td>
                      </tr>
                    </table>
                    </div>
                  <br><br><br><br>


                </fieldset>

        </div>
    </div>
</div>


<!-- End sa_disabled_message.tpl -->
