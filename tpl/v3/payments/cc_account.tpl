<!-- payments/checking_account.tpl -->
<TMPL_INCLUDE NAME="payment_top.tpl">
    <INPUT type=hidden NAME="CREDITCARDID" VALUE="<TMPL_VAR NAME="CREDITCARDID">">
	<TMPL_IF NAME="CRNT_CARDFLAGS_0"><INPUT type=hidden NAME="CRNT_CARDFLAGS_0" VALUE="<TMPL_VAR NAME="CRNT_CARDFLAGS_0">"><INPUT type=hidden NAME="CARDFLAGS_0" VALUE="<TMPL_VAR NAME="CARDFLAGS_0">"></TMPL_IF>
	<TMPL_IF NAME="CRNT_CARDFLAGS_1"><INPUT type=hidden NAME="CRNT_CARDFLAGS_1" VALUE="<TMPL_VAR NAME="CRNT_CARDFLAGS_1">"><INPUT type=hidden NAME="CARDFLAGS_1" VALUE="<TMPL_VAR NAME="CARDFLAGS_1">"></TMPL_IF>
	<TMPL_IF NAME="CRNT_CARDFLAGS_2"><INPUT type=hidden NAME="CRNT_CARDFLAGS_2" VALUE="<TMPL_VAR NAME="CRNT_CARDFLAGS_2">"></TMPL_IF>
<!-- display checking_accounts -->
<style>
    input[type="text"]{
        padding-left:6px;
        margin-bottom:6px;
    }
</style>
<fieldset>
    <table class="mgb15 noCellPadding">
        <tr>
            <td>
                <TMPL_IF NAME="LAST4">XXXX-XXXX-XXXX-<TMPL_VAR NAME="LAST4"><br></TMPL_IF>
                <input type="hidden" name="LAST4" size="20" maxlength="16" value="<TMPL_VAR NAME="LAST4">">
                <input type="text" name="CARDNUMBER" placeholder="Credit Card Number" size="20" maxlength="16" value="<TMPL_VAR NAME="CARDNUMBER">" tabindex="10">
            </td>
        </tr>
        <tr>
            <td>Expiration Date:</td>
        </tr>
        <tr>
            <td class="smallfont1">
                <select name="CARDEXPMONTH" tabindex="20">
                    <option value="01" <TMPL_VAR NAME=CARDEXPMONTH_01>>01</option>
                    <option value="02" <TMPL_VAR NAME=CARDEXPMONTH_02>>02</option>
                    <option value="03" <TMPL_VAR NAME=CARDEXPMONTH_03>>03</option>
                    <option value="04" <TMPL_VAR NAME=CARDEXPMONTH_04>>04</option>
                    <option value="05" <TMPL_VAR NAME=CARDEXPMONTH_05>>05</option>
                    <option value="06" <TMPL_VAR NAME=CARDEXPMONTH_06>>06</option>
                    <option value="07" <TMPL_VAR NAME=CARDEXPMONTH_07>>07</option>
                    <option value="08" <TMPL_VAR NAME=CARDEXPMONTH_08>>08</option>
                    <option value="09" <TMPL_VAR NAME=CARDEXPMONTH_09>>09</option>
                    <option value="10" <TMPL_VAR NAME=CARDEXPMONTH_10>>10</option>
                    <option value="11" <TMPL_VAR NAME=CARDEXPMONTH_11>>11</option>
                    <option value="12" <TMPL_VAR NAME=CARDEXPMONTH_12>>12</option>
                </select>
                <select name="CARDEXPYEAR" tabindex="30">
                    <option value="2016" <TMPL_VAR NAME=CARDEXPYEAR_2016>>2016</option>
                    <option value="2017" <TMPL_VAR NAME=CARDEXPYEAR_2017>>2017</option>
                    <option value="2018" <TMPL_VAR NAME=CARDEXPYEAR_2018>>2018</option>
                    <option value="2019" <TMPL_VAR NAME=CARDEXPYEAR_2019>>2019</option>
                    <option value="2020" <TMPL_VAR NAME=CARDEXPYEAR_2020>>2020</option>
                    <option value="2021" <TMPL_VAR NAME=CARDEXPYEAR_2021>>2021</option>
                    <option value="2022" <TMPL_VAR NAME=CARDEXPYEAR_2022>>2022</option>
                    <option value="2023" <TMPL_VAR NAME=CARDEXPYEAR_2023>>2023</option>
                    <option value="2024" <TMPL_VAR NAME=CARDEXPYEAR_2024>>2024</option>
                    <option value="2025" <TMPL_VAR NAME=CARDEXPYEAR_2025>>2025</option>
                    <option value="2026" <TMPL_VAR NAME=CARDEXPYEAR_2026>>2026</option>
                    <option value="2027" <TMPL_VAR NAME=CARDEXPYEAR_2027>>2027</option>
                    <option value="2028" <TMPL_VAR NAME=CARDEXPYEAR_2028>>2028</option>
                    <option value="2029" <TMPL_VAR NAME=CARDEXPYEAR_2029>>2029</option>
                    <option value="2030" <TMPL_VAR NAME=CARDEXPYEAR_2030>>2030</option>
                </select>
            </td>
        </tr>
        <tr>
            <td><input type="text" name="CARDHOLDERNAME" placeholder="Name On Credit Card" size="30" maxlength="50" value="<TMPL_VAR NAME="CARDHOLDERNAME">" tabindex="40"></td>
        </tr>
        <tr>
            <td><input type="text" name="CARDADDR1" placeholder="Statement Address 1" size="30" maxlength="50" value="<TMPL_VAR NAME="CARDADDR1">" tabindex="50"></td>
        </tr>
        <tr>
            <td><input type="text" name="CARDADDR2" placeholder="Statement Address 2" size="30" maxlength="50" value="<TMPL_VAR NAME="CARDADDR2">" tabindex="60"></td>
        </tr>
        <tr>
            <td><input type="text" name="CARDCITY" placeholder="City" size="30" maxlength="60" value="<TMPL_VAR NAME="CARDCITY">" tabindex="70"></td>
        </tr>
        <tr>
            <td><input type="text" name="CARDSTATE" placeholder="State" maxlength="2" value="<TMPL_VAR NAME="CARDSTATE">" tabindex="80"></td>
        </tr>
        <tr>
            <td><input type="text" name="CARDZIP" placeholder="Zip" size="10" maxlength="10" value="<TMPL_VAR NAME="CARDZIP">" tabindex="90"></td>
        </tr>
        <TMPL_IF NAME="TIMESTAMP">
            <tr>
                <td><TMPL_VAR NAME="TIMESTAMP"> (<TMPL_VAR NAME="USERCHANGED">)</td>
            </tr>
        </TMPL_IF>
        <tr>
            <td>
                <a class="myaccLnk" href="http://www.lexisnexis.com/privacy/secure-info.aspx" target="_blank">
                    How secure is this information?
                </a>
            </td>
        </tr>
    </table>
    <div class="section-row">
        <div>
            <TMPL_IF NAME="CREDITCARDID">
                <a class="btn darkgrey-btn" href="javascript:send_event('PAYMENT/SHOW_CC_PAYMENT');" tabindex="100">
                    Cancel
                </a>
                <a class="btn red-btn" href="javascript:if(validate_checks()) send_event('PAYMENT/CONFIRM_CC');" tabindex="110">
                    Update Account
                </a>
                <a class="btn darkgrey-btn" href="javascript:send_event('PAYMENT/DELETE_CC');" tabindex="120">
                    Delete Account
                </a>
            <TMPL_ELSE>
                <a class="btn darkgrey-btn" href="javascript:send_event('PAYMENT/SHOW_CC_PAYMENT');" tabindex="130">
                    Cancel
                </a>
                <a class="btn red-btn" href="javascript: if(validate_checks()) send_event('PAYMENT/CONFIRM_CC');" tabindex="140">
                    Add Account
                </a>
            </TMPL_IF>
        </div>
    </div>
</fieldset>
<!-- end checkingaccount -->
<TMPL_INCLUDE NAME="payment_bottom.tpl">
<!-- END payments/checking_account.tpl -->
