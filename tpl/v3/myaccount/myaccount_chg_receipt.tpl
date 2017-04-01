<!-- begin myaccount/myaccount_chg_receipt.tpl -->

<div class="section">
    <div class="section-row" style="padding-right: 150px;padding-left: 150px;">
        <div>
            <fieldset>
                <div class="myaccount-section-title">Company Edit Receipt</div><br/>

                <div class="successmessage pd10 mgb5 bold" colspan="2">
                    Your request was successfully submitted: <TMPL_VAR NAME="TIMESTAMP">
                </div>

                <table class="mgb10">
                    <tbody>
                        <tr>
                            <td class="unifont2 bold w25pc">Company Name</td>
                            <td class="unifont2">:&nbsp;<TMPL_VAR NAME=COMPANYNAME></td>
                        </tr>

                        <tr>
                            <td class="unifont2 bold w25pc">Company Id</td>
                            <td class="unifont2">:&nbsp;<TMPL_VAR NAME=C_COMPANYID></td>
                        </tr>

                        <tr>
                            <td class="unifont2 bold w25pc">Contact Name</td>
                            <td class="unifont2">:&nbsp;<TMPL_VAR NAME="CONTACT_FIRST_NAME">&nbsp;<TMPL_VAR NAME="CONTACT_MIDDLE_NAME">&nbsp;<TMPL_VAR NAME="CONTACT_LAST_NAME">
                            </td>
                        </tr>
                      </tbody>
                </table>
                
                <table>
                    <tbody>
                        <tr>
                            <td>
                                <div>
                                    <legend>
                                        Main Address
                                    </legend>
                                </div>
                            </td>
                        </tr>

                        <tr>
                            <td class="unifont2 bold w25pc"><b>Address 1: </b></td>
                            <td class="unifont2">:&nbsp;<TMPL_VAR NAME="MAIN_ADDR_LINE1"></td>
                        </tr>
                        <tr>
                            <td class="unifont2 bold w25pc"><b>Address 2: </b></td>
                            <td class="unifont2">:&nbsp;<TMPL_VAR NAME="MAIN_ADDR_LINE2"></td>
                        </tr>
                        <tr>
                            <td class="unifont2 bold w25pc"><b>City: </b></td>
                            <td class="unifont2">:&nbsp;<TMPL_VAR NAME="MAIN_ADDR_CITY"></td>
                        </tr>
                        <tr>
                            <td class="unifont2 bold w25pc"><b>State: </b></td>
                            <td class="unifont2">:&nbsp;<TMPL_VAR NAME="MAIN_ADDR_STATE"></td>
                        </tr>
                        <tr>
                            <td class="unifont2 bold w25pc"><b>Zip: </b></td>
                            <td class="unifont2">:&nbsp;<TMPL_VAR NAME="MAIN_ADDR_POSTALCODE"></td>
                        </tr>
                        <tr>
                            <td class="unifont2 bold w25pc"><b>Phone:</b></td>
                            <td class="unifont2">:&nbsp;<TMPL_VAR NAME="MAIN_PHONE_VOICE1"></td>
                        </tr>
                      </tbody>
                </table>
    
                <div class="mgt10">
                    <a class="btn grey-btn" href="javascript:printit()">Print</a>
                    <a class="btn red-btn" href="javascript:send_event('MYACCOUNT/SHOW_PROFILE');"> << Back</a>
                </div>


             </fieldset>


        </div>
    </div>
</div>

<!-- end myaccount/myaccount_chg_receipt.tpl -->