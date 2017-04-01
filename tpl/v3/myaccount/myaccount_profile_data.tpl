<!-- begin myaccount_profile_data.tpl -->
<fieldset>
    <div>
        <legend>
            <TMPL_IF NAME="MYACCOUNT_COMPANY_TREE">Currently managing:<TMPL_ELSE>Company Information</TMPL_IF>
        </legend>
    </div>
    <table>
        <tbody>
            <tr>
                <td class="unifont2" width="400"><b>Company Name:</b> <TMPL_VAR NAME=C_COMPANYNAME></td>
                <td>
                    <TMPL_IF NAME="SA">
                        <TMPL_UNLESS NAME="DISABLE_COMPANY_INFO_CHANGE">
                            <div class="section-row" style="margin-top:15px;">
                                <div>
                                    <a name="button" class="btn red-btn" onclick="javascript:send_event('MYACCOUNT/SHOW_UPDATE_PROFILE');">Edit Company</a>
                                </div>
                            </div>
                        </TMPL_UNLESS>
                    </TMPL_IF>
                </td>
            </tr>
            <tr>
                <td class="unifont2" colspan="2" width="400"><b>Company ID:</b> <TMPL_VAR NAME=C_COMPANYID></td>
            </tr>
            <tr>
                <td class="unifont2" colspan="2"><b>Physical Address:</b></td>
            </tr>
            <tr>
                <td class="unifont2" colspan="2"><TMPL_VAR NAME='C_ADDR_LINE1'><TMPL_IF NAME='C_ADDR_LINE2'><BR><TMPL_VAR NAME='C_ADDR_LINE2'></TMPL_IF></td>
            </tr>
            <tr>
                <td class="unifont2" colspan="2"><TMPL_IF NAME=C_ADDR_CITY><TMPL_VAR NAME=C_ADDR_CITY>,</TMPL_IF> <TMPL_VAR NAME=C_ADDR_STATE>&nbsp;<TMPL_VAR NAME=C_ADDR_POSTALCODE></td>
            </tr>
            <tr>
                <td class="unifont2" colspan="2"><b>Phone:</b> <TMPL_VAR NAME=C_PHONE_VOICE1></td>
            </tr>
            <TMPL_IF NAME="C_PHONE_FAX">
                <tr>
                    <td class="unifont2" colspan="2"><b>Fax:</b> <TMPL_VAR NAME=C_PHONE_FAX></td>
                </tr>
            </TMPL_IF>
            <tr>
                <td class="unifont2" colspan="2" width="240"><b>Contact Name:</b> <TMPL_VAR NAME=C_MAINNAME></td>
            </tr>
            <tr>
                <td class="unifont2" colspan="2" width="240"><b>Contact Email:</b> <TMPL_VAR NAME=C_MAINEMAIL></td>
            </tr>


            <tr>
                <td valign="top" align="left" style="padding-top:15px;">
                    <table cellpadding="0" cellspacing="0">
                        <tbody>
                            <tr>
                                <td>
                                    <div>
                                        <legend>
                                            User Information
                                        </legend>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td class="unifont2"><b>Name:</b> <TMPL_VAR NAME=U_FIRSTNAME> <TMPL_VAR NAME=U_LASTNAME></td>
                            </tr>
                            <tr>
                                <td class="unifont2"><b>Login ID:</b> <TMPL_VAR NAME=U_LOGINID></td>
                            </tr>
                            <tr>
                                <td class="unifont2"><b>Phone:</b> <TMPL_VAR NAME=U_PHONE_VOICE1></td>
                            </tr>
                        </tbody>
                    </table>
                </td>

                <td valign="top" style="padding-top:15px;">
                    <table class="left">
                        <tbody>
                            <tr>
                                <td>
                                    <div>
                                        <legend>
                                            Sales Contact
                                        </legend>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td class="unifont2"><b>Account Manager:</b> <TMPL_VAR NAME=C_SALE_FIRSTNAME> <TMPL_VAR NAME=C_SALE_LASTNAME></td>
                            </tr>
                            <tr>
                                <td class="unifont2"><b>Phone:</b> <TMPL_VAR NAME=C_SALE_PHONE_VOICE1></td>
                            </tr>
                            <TMPL_IF NAME="C_SALE_EMAIL_ADDR">
                                <tr>
                                    <td class="unifont2" colspan="2"><b>Email:</b> <a href="mailto:<TMPL_VAR NAME=C_SALE_EMAIL_ADDR>"><TMPL_VAR NAME=C_SALE_EMAIL_ADDR></a></td>
                                </tr>
                            </TMPL_IF>
                        </tbody>
                    </table>
                </td>
            </tr>
        </tbody>
    </table>

</fieldset>
<!-- end myaccount_profile_data.tpl -->