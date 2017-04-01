<!-- payments/checking_account.tpl -->
<TMPL_INCLUDE NAME="payment_top.tpl">
<INPUT type=hidden NAME="CHECKING_ACCOUNT_ID" VALUE="<TMPL_VAR NAME="CHECKING_ACCOUNT_ID">">
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
                <label for="nam_on_chk" style="display:none">Dummy</label>
                <input id="nam_on_chk" type="text" placeholder="Name On Check" name="NAME_ON_CHECK" size="30" maxlength="60" value="<TMPL_VAR NAME="NAME_ON_CHECK">" tabindex="10">
            </td>
        </tr>
        <tr>
            <td>
                <label for="str_adr1" style="display:none">Dummy</label>
                <input id="str_adr1" type="text" placeholder="Street Address 1" name="STREET_ADDRESS1" size="30" maxlength="50" value="<TMPL_VAR NAME="STREET_ADDRESS1">" tabindex="20">
            </td>
        </tr>
        <tr>
            <td>
                <label for="str_adr2" style="display:none">Dummy</label>
                <input id="str_adr2" type="text" placeholder="Street Address 2" name="STREET_ADDRESS2" size="30" maxlength="50" value="<TMPL_VAR NAME="STREET_ADDRESS2">" tabindex="30">
            </td>
        </tr>
        <tr>
            <td>
                <label for="cty" style="display:none">Dummy</label>
                <input id="cty" type="text" placeholder="City" name="CITY" size="30" maxlength="60" value="<TMPL_VAR NAME="CITY">" tabindex="40">
            </td>
        </tr>
        <tr>
            <td>
                <label for="st" style="display:none">Dummy</label>
                <input id="st" type="text" placeholder="State" name="STATE" size="5" maxlength="2" value="<TMPL_VAR NAME="STATE">" tabindex="50">
            </td>
        </tr>
        <tr>
            <td>
                <label for="zip" style="display:none">Dummy</label>
                <input id="zip" type="text" placeholder="Zip" name="ZIP" size="10" maxlength="10" value="<TMPL_VAR NAME="ZIP">" tabindex="60">
            </td>
        </tr>
        <tr>
            <td>
                <label for="bnk_nam" style="display:none">Dummy</label>
                <input id="bnk_nam" type="text" placeholder="Bank Name" name="BANK_NAME" size="30" maxlength="60" value="<TMPL_VAR NAME="BANK_NAME">" tabindex="70">
            </td>
        </tr>
        <tr>
            <td>
                <label for="rut_num" style="display:none">Dummy</label>
                <input id="rut_num" type="text" placeholder="Routing Number" name="BANK_ROUTING_NUMBER" size="30" maxlength="9" value="<TMPL_VAR NAME="BANK_ROUTING_NUMBER">" tabindex="80">
            </td>
        </tr>
        <tr>
            <td>
                <TMPL_IF NAME="BANK_ACCOUNT_NUMBER_MASK"><TMPL_VAR NAME="BANK_ACCOUNT_NUMBER_MASK"><br></TMPL_IF>
                <input type="hidden" name="BANK_ACCOUNT_NUMBER_MASK" size="30" maxlength="16" value="<TMPL_VAR NAME="BANK_ACCOUNT_NUMBER_MASK">">
                <label for="act_num" style="display:none">Dummy</label>
                <input id="act_num" type="text" placeholder="Account Number" name="BANK_ACCOUNT_NUMBER" size="20" maxlength="30" value="<TMPL_VAR NAME="BANK_ACCOUNT_NUMBER">" tabindex="90">
            </td>
        </tr>
        <TMPL_IF NAME="DATEUPDATED">
            <tr>
                <td style="font-weight: bold">Last Update: <TMPL_VAR NAME="DATEUPDATED"> (<TMPL_VAR NAME="USERUPDATED">)</td>
            </tr>
        </TMPL_IF>
        <tr>
            <td valign="top" style="font-weight: bold">
                Need help locating these numbers?<br>
                <img alt="" width="400" height="82" border="0" src="<TMPL_VAR NAME="IMGPATH">/accurint_check.gif">
            </td>
        </tr>
    </table>
    <div class="section-row">
        <TMPL_IF NAME="CHECKING_ACCOUNT_ID">
            <div>
                <a class="btn darkgrey-btn" href="javascript:send_event('PAYMENT/SHOW_CHECK_PAYMENT');" tabindex="100">
                    Cancel
                </a>
                &nbsp;&nbsp;&nbsp;&nbsp;
                <a class="btn red-btn" href="javascript:if(validate_checks()) send_event('PAYMENT/CONFIRM_CHECK');" tabindex="110">
                    Update Account
                </a>
                &nbsp;&nbsp;&nbsp;&nbsp;
                <a class="btn darkgrey-btn" href="javascript:send_event('PAYMENT/DELETE_CHECK');" tabindex="120">
                    Delete Account
                </a>
            </div>
        <TMPL_ELSE>
            <div>
                <a class="btn darkgrey-btn" href="javascript:send_event('PAYMENT/SHOW_CHECK_PAYMENT');" tabindex="130">
                    Cancel
                </a>
                &nbsp;&nbsp;&nbsp;&nbsp;
                <a class="btn red-btn" href="javascript: if(validate_checks()) send_event('PAYMENT/CONFIRM_CHECK');" tabindex="140">
                    Add Account
                </a>
            </div>
        </TMPL_IF>
    </div>
</fieldset>
<!-- end checkingaccount -->
<TMPL_INCLUDE NAME="payment_bottom.tpl">
<!-- END payments/checking_account.tpl -->
