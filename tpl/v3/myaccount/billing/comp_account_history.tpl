<!-- begin comp_account_history.tpl -->
<fieldset class="fieldset-with-datatable">
    <div class="section-row inline-block mgb10">
        <div class="left">
            <legend>Account History</legend>
        </div>
        <div class="right">
            <TMPL_IF NAME="SHOW_ALL_BILLING_PERIODS">
                <!-- Billing periods to display - display all periods -->
                <a class="mainmenu btn blue-btn" href="javascript:send_event('BILLING/SUMMARY')"><b>View last <TMPL_VAR NAME=BILLING_PERIODS_DEFAULT> Billing Periods</b></a>
                <!-- end: Post Payment -->
            <TMPL_ELSE>
                <!-- Billing periods to display - display n periods -->
                <a class="mainmenu btn blue-btn" href="javascript:send_event('BILLING/SUMMARY_FULL')"><b>View all Account History</b></a>
            </TMPL_IF>
        </div>
    </div>
      
    <table id="account-history" class="fieldset-datatable w100pc display">
        <thead>
            <tr>
                <th id="col_period">
                    <b>Period</b>
                </th>
                <th id="col_billed">
                    <b><label for="check_all_paid">Billed</label></b>
                    <TMPL_UNLESS NAME="HIDE_BILLING_DETAILS">
                        <input id="check_all_paid" type="checkbox" name="checkallpaid" onClick="checkall(this,'BILLING','accbilled','billedtotal')">
                    </TMPL_UNLESS>
                </th>
                <th id="col_crd_post">
                    <b><label for="check_all_billed">Credits Posted</label></b>
                    <TMPL_UNLESS NAME="HIDE_BILLING_DETAILS">
                        <input id="check_all_billed" type="checkbox" name="checkallbilled" onClick="checkall(this,'BILLING','accpaid','billedtotal')">
                    </TMPL_UNLESS>
                </th>
                <th id="col_pmnt_rec">
                    <b>Payments Received</b>
                </th>
                <th id="col_total">
                    <b>Total</b>
                </th>
                <th id="col_act_det">
                    <b>Activity Detail</b>
                </th>
                <th id="col_act_det1">
                    <b>Activity Detail</b>
                </th>
                <th id="col_mnt_stmnt">
                    <b>Monthly Statement</b>
                </th>
                <th id="col_inv">
                    <b>Invoices</b>
                </th>
            </tr>
        </thead>
        <tbody>
            <TMPL_LOOP NAME=COMP_PAY_DATA>
                <tr>
                    <td headers="col_period">
                        <TMPL_VAR NAME=start_date> - <TMPL_VAR NAME=end_date>
                    </td>
                    <td headers="col_billed">
                        <TMPL_UNLESS NAME="HIDE_BILLING_DETAILS"><font color=green><label for="bill-<TMPL_VAR NAME=billing_period_id>"><TMPL_VAR NAME=amount_billed_disp></label></font>&nbsp;&nbsp;<input id="bill-<TMPL_VAR NAME=billing_period_id>" type="checkbox" name="accbilled" value="<TMPL_VAR NAME=amount_billed>" onClick="sum_total(this,document.BILLING.billed_due,'billedtotal',document.BILLING.checkallpaid);"></TMPL_UNLESS>
                    </td>
                    <td headers="col_crd_post">
                        <TMPL_UNLESS NAME="HIDE_BILLING_DETAILS"><font color=red><label for="crd-post-<TMPL_VAR NAME=billing_period_id>"><TMPL_IF NAME=show_credit_link><a class="myaccLnk bold" href="javascript:this.document.forms[0].EVENT.value = 'BILLING/CREDIT_DETAILS'; this.document.forms[0].BILLING_PERIOD_ID.value = '<TMPL_VAR NAME=billing_period_id>'; this.document.forms[0].submit();"><TMPL_VAR NAME=amount_credit_disp></a><TMPL_ELSE><TMPL_VAR NAME=amount_credit_disp></TMPL_IF></label></font>&nbsp;&nbsp;<input id="crd-post-<TMPL_VAR NAME=billing_period_id>" type="checkbox" name="accpaid" value="<TMPL_VAR NAME=amount_credit>" onClick="sum_total(this,document.BILLING.billed_due,'billedtotal',document.BILLING.checkallbilled);"></TMPL_UNLESS>
                    </td>
                    <td headers="col_pmnt_rec">
                        <TMPL_UNLESS NAME="HIDE_BILLING_DETAILS"><TMPL_IF NAME=show_payment_link><a class="myaccLnk bold" href="javascript:this.document.forms[0].EVENT.value = 'BILLING/PAYMENT_DETAILS'; this.document.forms[0].BILLING_PERIOD_ID.value = '<TMPL_VAR NAME=billing_period_id>'; this.document.forms[0].submit();"><TMPL_VAR NAME=amount_payment></a><TMPL_ELSE>&nbsp;</TMPL_IF></TMPL_UNLESS>
                    </td>
                    <td headers="col_total">
                        <TMPL_UNLESS NAME="HIDE_BILLING_DETAILS"><TMPL_VAR NAME=amount_total></TMPL_UNLESS>
                    </td>
                    <td headers="col_act_det">
                        <TMPL_UNLESS NAME="ACTIVITY_DISABLED"><TMPL_IF NAME=show_activity><TMPL_IF NAME=SA><a class="myaccLnk bold" href="javascript:display_billing_activity('<TMPL_VAR NAME=start_date>','<TMPL_VAR NAME=end_date>');">View</a><TMPL_ELSE><TMPL_IF NAME=ACTIVITY_DETAIL><a class="mainmenu" href="javascript:display_billing_activity('<TMPL_VAR NAME=start_date>','<TMPL_VAR NAME=end_date>');">View</a></TMPL_IF></TMPL_IF><TMPL_ELSE>&nbsp;</TMPL_IF><TMPL_ELSE>Not Available</TMPL_UNLESS>
                    </td>
                    <td headers="col_act_det1">
                        <TMPL_UNLESS NAME="ACTIVITY_DISABLED"><TMPL_IF NAME=show_activity><TMPL_IF NAME=SA><a class="myaccLnk bold" href="javascript:download_win_v3('<TMPL_VAR NAME=ACTION>?EVENT=BILLING/SHOW_DOWNLOAD&SESSION_ID=<TMPL_VAR NAME=SESSION_ID>&CSRF_TOKEN=<TMPL_VAR NAME=CSRF_TOKEN>&BILLING_DATE_FROM=<TMPL_VAR NAME=start_date>&BILLING_DATE_TO=<TMPL_VAR NAME=end_date>');">Download</a><TMPL_ELSE><TMPL_IF NAME=ACTIVITY_DETAIL><a class="mainmenu" href="javascript:download_win_v3('<TMPL_VAR NAME=ACTION>?EVENT=BILLING/SHOW_DOWNLOAD&SESSION_ID=<TMPL_VAR NAME=SESSION_ID>&CSRF_TOKEN=<TMPL_VAR NAME=CSRF_TOKEN>&BILLING_DATE_FROM=<TMPL_VAR NAME=start_date>&BILLING_DATE_TO=<TMPL_VAR NAME=end_date>');">Download</a></TMPL_IF></TMPL_IF><TMPL_ELSE>&nbsp;</TMPL_IF><TMPL_ELSE>Not Available</TMPL_UNLESS>
                    </td>
                    <td headers="col_mnt_stmnt">
                        <TMPL_UNLESS NAME="HIDE_BILLING_DETAILS"><TMPL_IF NAME=statement_url><a class="myaccLnk bold" href="javascript:general_win('<TMPL_VAR NAME=statement_url>','Statement','','',1,1,1,1,1); void(0);">View</a><TMPL_ELSE>&nbsp;</TMPL_IF></TMPL_UNLESS>
                    </td>
                    <td headers="col_inv">
                        <TMPL_UNLESS NAME="HIDE_BILLING_DETAILS">
                            <TMPL_IF NAME=court_entries>
                                <a class="btn red-btn" href="javascript:this.document.forms[0].EVENT.value = 'BILLING/INVOICE_DETAILS'; this.document.forms[0].BILLING_PERIOD_ID.value = '<TMPL_VAR NAME=billing_period_id>'; this.document.forms[0].submit();">View</a>
                            <TMPL_ELSE>
                                <TMPL_IF NAME=invoice_url>
                                    <a class="btn red-btn" href="javascript:general_win('<TMPL_VAR NAME=invoice_url>','Invoice','','',1,1,1,1,1); void(0);">View</a>
                                <TMPL_ELSE>
                                    &nbsp;
                                </TMPL_IF>
                            </TMPL_IF>
                        </TMPL_UNLESS>
                    </td>
                </tr>
            </TMPL_LOOP>
        </tbody>
    </table>
</fieldset>
<fieldset>
    <div class="section-row">
        <TMPL_UNLESS NAME="HIDE_BILLING_DETAILS">
            <div class="left">Calculated Due:</div>
        </TMPL_UNLESS>
        <TMPL_UNLESS NAME="HIDE_BILLING_DETAILS">
            <script>
                if (document.getElementById) {
                    document.write('<div class="left mgl6"><b><span id="billedtotal">$0.00</span></b><input type="hidden" name="billed_due" size="12" value=""></div>');
                } else {
                    document.write('<div class="left mgl6"><input type="text" name="billed_due" size="12" value="" onFocus="this.blur()"></div>');
                }
            </script>
            <noscript>Your browser does not support JavaScript!</noscript>
        </TMPL_UNLESS>
        <div class="right">
            <TMPL_IF NAME="HIDE_BILLING_DETAILS">
                <span>Billing Authority for this company is <b><TMPL_VAR NAME="BA_NAME"> (ID: <TMPL_VAR NAME="BA_ID">)</b></span>
            <TMPL_ELSE>
                <span><b>Please Note:</b>&nbsp;&nbsp; Calculated Due is for display purposes only and does not represent an official invoice or statement.</span>
            </TMPL_IF>
        </div>
    </div>
</fieldset>

<!-- end comp_account_history.tpl -->
