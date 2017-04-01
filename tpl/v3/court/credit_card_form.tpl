<!-- Begin v3/court/credit_card_form.tpl -->
<input type="hidden" name="COMPANYBILLING_EDIT" value="0">
<table class="wizard-grey-table">
    <TMPL_IF NAME="SUCCESS_MSG">
        <tr>
            <td class="unifont1" align="center" width="640" colspan="2"><b><font color="blue"><TMPL_VAR NAME="SUCCESS_MSG"></font></b>&nbsp;</td>
        </tr>
    </TMPL_IF>
    <TMPL_IF NAME="VERSION">
        <TMPL_IF NAME="CONFIRMATION">
            <tr>
                <td align="left" width="640"><br><b>NOTE:&nbsp;&nbsp;Your credit card will not be charged until you confirm your order. (A later screen)</b></td>
            </tr>
        <TMPL_ELSE>
            <tr>
                <td align="left" width="640"><br><b>NOTE:&nbsp;&nbsp;Your credit card will not be charged until you confirm your order. (A later screen)</b></td>
            </tr>
        </TMPL_IF>
    </TMPL_IF>
    <TMPL_IF NAME="COMPANYBILLING_EDIT">
        <tr>
            <td class="unifont1" align="left" width="640">
                <table border="0" cellpadding="0" cellspacing="0">
                    <tr>
                        <td class="unifont1bold" width="40%">
                            Name as it appears on the Card:
                        </td>
                        <td class="pdt6" width="60%">
                            <input type="text" name="CARDHOLDERNAME" tabindex="1" size="20" value="<TMPL_VAR NAME=CARDHOLDERNAME>" maxlength=20><br>
                        </td>
                    </tr> 
                    <TMPL_IF NAME="CREDITCARDID">
                        <tr>
                            <td class="unifont1bold" width="40%">
                                Card Number on File: 
                            </td>
                            <td class="pdt6" width="60%">
                                <table border="0" cellpadding="0" cellspacing="0">
                                    <tr>
                                        <TMPL_IF NAME="CONFIRMATION">
                                            <td class="unifont1"><b><TMPL_IF NAME=NEWCARDNUMBER_DSP><TMPL_VAR NAME=NEWCARDNUMBER_DSP><TMPL_ELSE>XXXX-XXXX-XXXX-<TMPL_VAR NAME=LAST4></TMPL_IF></b></td>
                                        <TMPL_ELSE>
                                            <td class="unifont1"><b>XXXX-XXXX-XXXX-<TMPL_VAR NAME=LAST4></b></td>
                                        </TMPL_IF>
                                        <td class="unifont1"><b>&nbsp;&nbsp;<TMPL_VAR NAME="CARDTYPE_DSP"></b></td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                    </TMPL_IF>
                    <tr>
                        <td width="40%"class="unifont1bold">New Card Number:</td>
                        <td class="pdt6" width="60%">
                            <table border="0" cellpadding="0" cellspacing="0">
                                <tr>
                                    <td><input type="text" name="NEWCARDNUMBER" tabindex="2" size="20" value="<TMPL_VAR NAME=NEWCARDNUMBER>" maxlength=20 onBlur="get_card_type(this.value);"></td>
                                    <td class="unifont1bold pdl10" style="white-space:nowrap;">New Card Type:</td>
                                    <td class="pdl3">
                                        <select name="CARDTYPE" tabindex="3">
                                            <option value="">Card Type...</option>
                                            <option value="VM" <TMPL_VAR NAME=CARDTYPE_VM>>VISA</option>
                                            <option value="MC" <TMPL_VAR NAME=CARDTYPE_MC>>MASTERCARD</option>
                                            <option value="AM" <TMPL_VAR NAME=CARDTYPE_AM>>AMEX</option>
                                        </select>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td class="unifont1bold" width="40%">
                            Expiration Date:
                        </td>
                        <td class="pdt6" width="60%">
                            <select name="CARDEXPMONTH" tabindex="4">
                                <option value="01">01</option>
                                <option value="02">02</option>
                                <option value="03">03</option>
                                <option value="04">04</option>
                                <option value="05">05</option>
                                <option value="06">06</option>
                                <option value="07">07</option>
                                <option value="08">08</option>
                                <option value="09">09</option>
                                <option value="10">10</option>
                                <option value="11">11</option>
                                <option value="12">12</option>
                            </select>
                            <select name="CARDEXPYEAR" tabindex="5">
                                    <option value="2016">2016</option>
                                    <option value="2017">2017</option>
                                    <option value="2018">2018</option>
                                    <option value="2019">2019</option>
                                    <option value="2020">2020</option>
                                    <option value="2021">2021</option>
                                    <option value="2022">2022</option>
                                    <option value="2023">2023</option>
                                    <option value="2024">2024</option>
                                    <option value="2025">2025</option>
                                    <option value="2026">2026</option>
                                    <option value="2027">2027</option>
                                    <option value="2028">2028</option>
                                    <option value="2029">2029</option>
                                    <option value="2030">2030</option>
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <td class="unifont1bold" width="40%" valign="top">
                            Statement Address1: 
                        </td>
                        <td class="pdt6" align="left" width="60%">
                            <INPUT TYPE="text" NAME="CARDADDR1" SIZE="50" VALUE="<TMPL_VAR NAME=CARDADDR1>" MAXLENGTH=100 tabindex="6">
                        </td>
                    </tr>
                    <tr>
                        <td class="unifont1bold" width="40%" valign="top">
                            Statement Address2: 
                        </td>
                        <td class="pdt6" align="left" width="60%">
                            <INPUT TYPE="text" NAME="CARDADDR2" SIZE="50" VALUE="<TMPL_VAR NAME=CARDADDR2>" MAXLENGTH=100 tabindex="7">
                        </td>
                    </tr>
                    <tr>
                        <td class="unifont1bold" width="40%" valign="top">City / State / Zip:</td>
                        <td class="pdt6" width="60%">
                            <INPUT TYPE="text" NAME="CARDCITY" SIZE="20" VALUE="<TMPL_VAR NAME=CARDCITY>" MAXLENGTH=30 tabindex="8">
                            <INPUT TYPE="text" NAME="CARDSTATE" SIZE="2" VALUE="<TMPL_VAR NAME=CARDSTATE>" MAXLENGTH=2 tabindex="9">
                            <INPUT TYPE="text" NAME="CARDZIP" SIZE="9" VALUE="<TMPL_VAR NAME=CARDZIP>" MAXLENGTH="10" tabindex="10">
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    <TMPL_ELSE>
        <tr>
            <td class="unifont1" align="left" width="640">
                <table>
                    <TMPL_IF NAME="TOTAL">
                        <tr>
                            <td class="unifont1bold f-red" width="40%">
                                <b>Total charge amount:</b>
                            </td>
                            <td width="60%" class="unifont1 f-red"><b>$<TMPL_VAR TOTAL></b></td>
                        </tr>
                    </TMPL_IF>
                    <tr>
                        <td class="unifont1bold" width="40%">
                            Name as it appears on the Card:
                        </td>
                        <td width="60%" class="unifont1">
                            <TMPL_VAR NAME=CARDHOLDERNAME>
                        </td>
                    </tr> 
                    <tr>
                        <td class="unifont1bold" width="40%">
                            Card Number: 
                        </td>
                        <td width="60%">
                            <table border="0" cellpadding="0" cellspacing="0">
                                <tr>
                                    <TMPL_IF NAME="CONFIRMATION">
                                        <td class="unifont1"><TMPL_IF NAME=NEWCARDNUMBER_DSP><TMPL_VAR NAME=NEWCARDNUMBER_DSP><TMPL_ELSE>XXXX-XXXX-XXXX-<TMPL_VAR NAME=LAST4></TMPL_IF></td>
                                    <TMPL_ELSE>
                                        <td class="unifont1">XXXX-XXXX-XXXX-<TMPL_VAR NAME=LAST4></td>
                                    </TMPL_IF>
                                    <td class="unifont1">&nbsp;&nbsp;<TMPL_VAR NAME="CARDTYPE_DSP"></td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td class="unifont1bold" width="40%" valign="top">
                            Statement Address: 
                        </td>
                        <td width="60%" class="unifont1">
                            <TMPL_VAR NAME=CARDADDR1><TMPL_IF NAME="CARDADDR2"><br><TMPL_VAR NAME=CARDADDR2></TMPL_IF><br><TMPL_VAR NAME=CARDCITY><TMPL_IF NAME=CARDSTATE>,&nbsp;<TMPL_VAR NAME=CARDSTATE></TMPL_IF>&nbsp;<TMPL_VAR NAME=CARDZIP>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </TMPL_IF>
</table>
<TMPL_IF NAME="COMPANYBILLING_EDIT">
    <TMPL_IF NAME="VERSION">
        <div class="section-row">
            <table class="wizard-grey-table mgt15 mgb15" style="width:100%;">
                <tr>
                    <th class="unifont1">
                        Other Options
                    </th>
                </tr>
                <tr>
                    <td class="unifont1">
                        <input type="checkbox" name="CARDFLAG" value="default" checked>&nbsp;<b>Save credit card information for future Court Searches</b>
                    </td>
                </tr>
                <tr>
                    <td>(Will not affect existing payment arrangements on your <TMPL_IF IRB>IRBsearch<TMPL_ELSE>Accurint</TMPL_IF> account)</td>
                </tr>
            </table>
        </div>
    </TMPL_IF>
</TMPL_IF>
<div class="section-row">
    <table style="width:100%;">
        <TMPL_IF NAME="COMPANYBILLING_EDIT">
            <tr>
                <TMPL_IF NAME="VERSION">
                    <td class="unifont1" align="right">
                        <input class="btn white-btn" type="button" name="PREVIOUS_BUTTON" value="Back" onclick="<TMPL_IF NAME="FROM_DETAIL">showpw_v3();send_event('COURT/SHOW_SUMMARY');<TMPL_ELSE>showpw_v3();send_event('COURT/SHOW_SUMMARY');</TMPL_IF>">
                        <input class="btn red-btn" type="button" name="SAVE_CHANGES_BUTTON" value="Next" onclick="showpw_v3();send_event('MANAGE/<TMPL_VAR NAME="VERSION">CONFIRM_CARD');">
                    </td>
                <TMPL_ELSE>
                    <td class="unifont1" align="center">
                        <a class="btn white-btn" href="javascript: history.back();">
                            Back
                        </a>
                        <a class="btn red-btn" href="javascript:showpw_v3();send_event('MANAGE/<TMPL_VAR NAME="VERSION">CONFIRM_CARD');" >
                            Save Changes
                        </a>
                    </td>
                </TMPL_IF>
            </tr>
        <TMPL_ELSE>
            <TMPL_IF NAME="CONFIRMATION">
                <tr>
                    <td class="courtpagetitle" align="center" width="640">Is this correct?</td>
                </tr>
                <tr>
                    <TMPL_IF NAME="VERSION">
                        <td class="unifont1" align="center">
                            <input class="btn red-btn" type="button" name="SAVE_BUTTON" value="Yes" onclick="showpw_v3();send_event('MANAGE/<TMPL_VAR NAME="VERSION">SAVE_CARD');">
                            <input class="btn darkgrey-btn" type="button" name="NO_SAVE_BUTTON" value="No" onclick="history.back();">
                        </td>
                    <TMPL_ELSE>
                        <td class="unifont1" align="center">
                            <a class="btn red-btn" href="javascript:showpw_v3();send_event('MANAGE/<TMPL_VAR NAME="VERSION">SAVE_CARD');">
                                Yes
                            </a>
                            <a class="btn darkgrey-btn" href="javascript: history.back();">
                                No
                            </a>
                        </td>
                    </TMPL_IF>
                </tr>
            <TMPL_ELSE>
                <tr>
                    <TMPL_UNLESS NAME="VERSION">
                        <td class="unifont1" align="left">
                            <a class="btn white-btn" href="javascript: showpw_v3();send_event('BILLING/SUMMARY');">
                                Back
                            </a>
                            <TMPL_UNLESS NAME="SUCCESS_MSG">
                                <a class="btn red-btn" href="javascript:document.forms[0].COMPANYBILLING_EDIT.value='1';showpw_v3();send_event('MANAGE/<TMPL_VAR NAME="VERSION">MANAGE_CARDS');">
                                   Edit Record
                                </a>
                            </TMPL_UNLESS>
                        </td>
                    <TMPL_ELSE>
                        <TMPL_UNLESS NAME="SUCCESS_MSG">
                            <td class="unifont1" align="left">
                                <a class="btn white-btn" href="javascript: history.back()">
                                    Back
                                </a>
                                <TMPL_UNLESS NAME="SUCCESS_MSG">
                                    <a class="btn red-btn" href="javascript:document.forms[0].COMPANYBILLING_EDIT.value='1';showpw_v3();send_event('MANAGE/<TMPL_VAR NAME="VERSION">MANAGE_CARDS');">
                                       Edit Record
                                    </a>
                                </TMPL_UNLESS>
                            </td>
                        <TMPL_ELSE>
                            <td class="unifont1" align="center">
                                <input class="btn red-btn" type="button" name="" value="Next" onClick="showpw_v3();send_event('COURT/SHOW_CONFIRM_FINAL');">
                            </td>
                        </TMPL_UNLESS>
                    </TMPL_UNLESS>
                </tr>
            </TMPL_IF>
        </TMPL_IF>
    </table>
</div>

<TMPL_IF NAME="ERROR_MSG">
    <script>alert('<TMPL_VAR NAME=ERROR_MSG>\n'.replace("&#39;","'"));</script>
</TMPL_IF>

<input type="hidden" name="TOTAL" value="<TMPL_VAR NAME=TOTAL>">
<input type="hidden" name="CREDITCARDID" value="<TMPL_VAR NAME=CREDITCARDID>">
<input type="hidden" name="LAST4" value="<TMPL_VAR NAME=LAST4>">
<input type="hidden" name="VERSION" value="<TMPL_VAR NAME=VERSION>">

<TMPL_IF NAME="CONFIRMATION">
    <input type="hidden" name="NEWCARDNUMBER" value="<TMPL_VAR NAME=NEWCARDNUMBER>">
    <input type="hidden" name="CARDHOLDERNAME" value="<TMPL_VAR NAME=CARDHOLDERNAME>">
    <input type="hidden" name="CARDEXPMONTH" value="<TMPL_VAR NAME=CARDEXPMONTH>">
    <input type="hidden" name="CARDEXPYEAR" value="<TMPL_VAR NAME=CARDEXPYEAR>">
    <input type="hidden" name="CARDTYPE" value="<TMPL_VAR NAME=CARDTYPE>">
    <input type="hidden" name="CARDFLAG" value="<TMPL_VAR NAME=CARDFLAG>">
    <input type="hidden" name="CARDADDR1" value="<TMPL_VAR NAME=CARDADDR1>">
    <input type="hidden" name="CARDADDR2" value="<TMPL_VAR NAME=CARDADDR2>">
    <input type="hidden" name="CARDCITY" value="<TMPL_VAR NAME=CARDCITY>">
    <input type="hidden" name="CARDSTATE" value="<TMPL_VAR NAME=CARDSTATE>">
    <input type="hidden" name="CARDZIP" value="<TMPL_VAR NAME=CARDZIP>">
</TMPL_IF>
<!-- end credit_card_form.tpl -->
