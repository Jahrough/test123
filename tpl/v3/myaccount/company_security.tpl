<!-- BEGIN myaccount/company_security.tpl -->
<TMPL_IF NAME="ALERT_MSG">
    <div class="section-row" style="padding:0 15px 15px 15px;">
        <div class="warningmessage"><TMPL_VAR NAME="ALERT_MSG"></div>
    </div>
</TMPL_IF>
<div class="myaccount-section-title">Manage Company</div>
<div class="myaccount-containers">
    <div class="section">
        <div class="section-row">
            <table class="twoColTable">
                <tbody>
                    <tr>
                        <td>
                            <div class="section-row" style="height:37px;">
                                <div class="left" style="width:70%;">
                                    <b>Company Security:</b>
                                    <span class="smallfont1">Changes made within this section will be applied to all users in your company.</span>
                                </div>
                                <div class="right">
                                    <a class="btn red-btn" href="javascript: confirm_submit();">
                                        Save Changes
                                    </a>
                                </div>
                            </div>
                            <TMPL_IF LOC>
                                <TMPL_INCLUDE NAME="../loc/manage_account_disable_reports.tpl">
                            <TMPL_ELSE>
                                <TMPL_IF TCOL>
                                    <TMPL_INCLUDE NAME="../tcol/manage_account_disable_reports.tpl">
                                <TMPL_ELSE>
                                    <TMPL_IF FCOL>
                                        <TMPL_INCLUDE NAME="../fcol/manage_account_disable_reports.tpl">
                                    <TMPL_ELSE>
                                        <TMPL_INCLUDE NAME="../manage_account_disable_reports.tpl">
                                    </TMPL_IF>
                                </TMPL_IF>
                            </TMPL_IF>

                            <TMPL_IF DISABLE_WATCHDOG>
                                <INPUT TYPE=HIDDEN NAME="DISABLE_WATCHDOG" VALUE="1">
                            <TMPL_ELSE>
                                <INPUT TYPE=HIDDEN NAME="DISABLE_WATCHDOG" VALUE="0">
                            </TMPL_IF>

                            <TMPL_IF DISABLE_COURT>
                                <INPUT TYPE=HIDDEN NAME="DISABLE_COURT" VALUE="1">
                            <TMPL_ELSE>
                                <INPUT TYPE=HIDDEN NAME="DISABLE_COURT" VALUE="0">
                            </TMPL_IF>

                            <TMPL_INCLUDE NAME="myaccount/manage_account_disable_features.tpl">

                            <TMPL_INCLUDE NAME="../manage_account_disable_skiptrace.tpl">

                            <TMPL_IF NAME="SHOW_EMAIL_DOMAIN">
                                <TMPL_INCLUDE NAME="myaccount/manage_account_email_domain.tpl">
                            </TMPL_IF>

                            <div class="section-row">
                                <div class="right">
                                    <a class="btn red-btn" href="javascript: confirm_submit();">
                                        Save Changes
                                    </a>
                                </div>
                            </div>
                        </td>
                        <td>
                            <TMPL_IF NAME="IRS">
                                <TMPL_INCLUDE NAME="../irs/manage_account_disable_searches.tpl">
                            <TMPL_ELSE>
                                <TMPL_IF NAME="HEA">
                                    <TMPL_INCLUDE NAME="../hea/manage_account_disable_searches.tpl">
                                <TMPL_ELSE>
                                    <TMPL_IF NAME="INS">
                                        <TMPL_INCLUDE NAME="../ins/manage_account_disable_searches.tpl">
                                    <TMPL_ELSE>
                                        <TMPL_IF NAME="LEG">
                                            <TMPL_INCLUDE NAME="../leg/manage_account_disable_searches.tpl">
                                        <TMPL_ELSE>
                                            <TMPL_IF NAME="XBPS">
                                                <TMPL_INCLUDE NAME="../xbps/manage_account_disable_searches.tpl">
                                            <TMPL_ELSE>
                                                <TMPL_IF NAME="GOV">
                                                    <TMPL_INCLUDE NAME="gov/manage_account_disable_searches.tpl">
                                                <TMPL_ELSE>
                                                    <TMPL_IF NAME="LE">
                                                        <TMPL_INCLUDE NAME="le/manage_account_disable_searches.tpl">
                                                    <TMPL_ELSE>
                                                        <TMPL_IF NAME="COL">
                                                            <TMPL_INCLUDE NAME="../col/manage_account_disable_searches.tpl">
                                                        <TMPL_ELSE>
                                                            <TMPL_IF NAME="TCOL">
                                                                <TMPL_INCLUDE NAME="../tcol/manage_account_disable_searches.tpl">
                                                            <TMPL_ELSE>
                                                                <TMPL_IF NAME="FCOL">
                                                                    <TMPL_INCLUDE NAME="../fcol/manage_account_disable_searches.tpl">
                                                                <TMPL_ELSE>
                                                                    <TMPL_IF NAME="LOC">
                                                                        <TMPL_INCLUDE NAME="../loc/manage_account_disable_searches.tpl">
                                                                    <TMPL_ELSE>
                                                                        <TMPL_INCLUDE NAME="manage_account_disable_searches.tpl">
                                                                    </TMPL_IF>
                                                                </TMPL_IF>
                                                            </TMPL_IF>
                                                        </TMPL_IF>
                                                    </TMPL_IF>
                                                </TMPL_IF>
                                            </TMPL_IF>
                                        </TMPL_IF>
                                    </TMPL_IF>
                                </TMPL_IF>
                            </TMPL_IF>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
    </div>
</div>
<TMPL_INCLUDE NAME=myaccount_footer.tpl>

<!-- END myaccount/company_security.tpl -->
