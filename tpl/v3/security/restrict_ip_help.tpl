<!-- begin security/restrict_ip_help.tpl -->
<div class="myaccount-section-title">Restrict Access By IP Address</div>
<div class="myaccount-containers">
    <div class="section">
            <div class="section-row">
                <fieldset>
                    <br/>
                    <table cellpadding="0" cellspacing="0" class="myaccountbody">

                      <tr>
                          <td class="ta-center">
                            <a  class="btn grey-btn" href="javascript:send_event('SECURITY/SHOW_SECURITY', '<TMPL_VAR NAME=ACTION_ADMIN>')">Back</a>
                            <TMPL_IF SHOW_RESTRICT_IP>
                                <a  class="btn red-btn" href="javascript:send_event('SECURITY/SHOW_RESTRICT_IP')">Continue</a>
                            </TMPL_IF>
                          </td>
                      </tr>


                     <tr>
                          <td>
                                <br/>
                                <p>
                                This feature allows you to specify the ip address or addresses your
                                company and users must come from to access our system. Restricting IP
                                addresses denies access to anyone that is <b>NOT</b> in the IP address which
                                you specify. This feature should only be used by network administrators
                                or experienced users who know the following information: 
                                </p>

                                <ol>
                                <li>The IP address of your company/computer. 
                                <li>Whether your company utilizes sub-networks (subnets) 
                                <li>The IP Type (Static or Dynamic) 
                                </ol>

                                <p>
                                A static IP address is one in which your
                                connection to the Internet gets the same value every time you connect. 
                                </p>

                                <p>
                                A dynamic IP address is one in which a different IP address
                                is assigned every time you connect to the Internet. This is typically
                                the case if you have a dial-up connection, a DSL line or a cable modem.
                                This feature cannot be used if you have a dynamic IP address. If you
                                are unsure of whether you have a dynamic or static IP address, contact
                                your Internet Service Provider (ISP). 
                                </p>

                                <p>
				If you would like assistance with setting up IP Restrictions for your company please contact Customer Support.
                                </p>	
                                    <br><br>


                          </td>
                    </tr>


                    </table> 
                </fieldset>
            </div>
    </div>
</div>

<INPUT TYPE="HIDDEN" NAME="IP_ACCESS_ID" VALUE="">
<!-- end security/restrict_ip_help.tpl -->
