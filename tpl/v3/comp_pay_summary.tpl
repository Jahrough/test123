<!DOCTYPE html>
<!-- begin comp_pay_summary.tpl -->
<!--<TMPL_VAR NAME=SERVER_ID>-->
<html>
    <head>
        <title>Company Payment Summary</title>
        <TMPL_INCLUDE NAME="myaccount/myaccount_includes.tpl">

        <script src="<TMPL_VAR NAME='JSPATH'>/pricing.js"></script>
        <script src="<TMPL_VAR NAME='JSPATH'>/myaccount.js"></script>
        <script src="<TMPL_VAR NAME='JSPATH'>/entity_alerting.js"></script>
        <script src="<TMPL_VAR NAME='JSPATH'>/options_selection.js"></script>
        <TMPL_IF EDIT_ALERT>
            <script src="<TMPL_VAR NAME='JSPATH'>/validate.js"></script>
        </TMPL_IF>
        <TMPL_IF MYACCOUNT_SECURITY>
            <script src="<TMPL_VAR NAME='JSPATH'>/security.js"></script>
        </TMPL_IF>
            <TMPL_IF NAME="MYACCOUNT_COMPANY_TREE">
            <script src="<TMPL_VAR NAME='JSPATH'>/mktree.js"></script>
        </TMPL_IF>

        <script src="<TMPL_VAR NAME='JSPATH'>/prototype.js"></script>
        <script src="<TMPL_VAR NAME='JSPATH'>/billing.js"></script>
        <script src="<TMPL_VAR NAME='JSPATH'>/v3/jquery.dataTables.js"></script>
        
        <script>
            var dTables;
            $j(function() {
                dTables = $j('table.display').DataTable();
                $j('.dataTables_empty').closest('.dataTables_wrapper').find('div.dataTables_length,div.dataTables_filter,div.dataTables_info,div.dataTables_paginate').hide();

                $j.each($j('div.dataTables_wrapper div.dataTables_paginate'),function(){
                    if($j(this).children('a.disabled').length === 2){
                        var sel = 'div.dataTables_info,div.dataTables_paginate,div.dataTables_length';
                        $j(this).parent().find(sel).css('display','none');
                    }
                });

                $j('.dataTables_filter').remove();
            });
        </script>
    </head>

    <body onLoad="<TMPL_UNLESS SHOW_MYACC_WITHOUT_PARENT>setInterval('checkparent()',2000);</TMPL_UNLESS><TMPL_UNLESS VERIFY_PASSWORD>window.focus();</TMPL_UNLESS><TMPL_IF EXTRA_ONLOAD><TMPL_VAR EXTRA_ONLOAD></TMPL_IF>" topmargin="0" leftmargin="0" marginwidth="0" marginheight="0"<TMPL_UNLESS ENABLE_V2> class="alternatebody"</TMPL_UNLESS>>

        <TMPL_INCLUDE NAME="header_info.tpl">

        <form name="BILLING" action="<TMPL_VAR NAME=ACTION>" method="post">
            <TMPL_INCLUDE NAME="common_hidden_input.tpl">
            <INPUT type=hidden NAME="SKIN_TYPE" VALUE="<TMPL_VAR NAME=SKIN_TYPE>">
            <INPUT type=hidden NAME="APPLICATION_TYPE" VALUE="<TMPL_VAR NAME=APPLICATION_TYPE>">
            <INPUT type=hidden NAME="EVENT">
            <INPUT type=hidden NAME="BILLING_PERIOD_ID">

            <TMPL_INCLUDE NAME="myaccount/myaccount_nav.tpl">

            <div class="myaccCon" style="border-radius: 0 0 8px 8px;">
                <div>
                    <div class="myaccount-containers">
                        <div class="myaccount-section-title">Billing - Payment Summary</div>
                        <div class="section" style="padding: 15px 150px;">
                            <fieldset>
                                <div class="section-row mgb15">
                                    <div>
                                        <a class="btn darkgrey-btn" href="javascript:send_event('BILLING/SUMMARY');">
                                            &lt; Back
                                        </a>
                                    </div>
                                </div>
                                <div class="section-row">
                                    <table class="display">
                                        <thead>
                                            <tr>
                                                <td>Payment ID</td>
                                                <td>Date</td>
                                                <td>Amount</td>
                                                <td>Type</td>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <TMPL_LOOP NAME=COMP_PAYMENT_DATA>
                                                <tr bgcolor="#ffffff">
                                                    <td><TMPL_VAR name=arid></td>
                                                    <td><TMPL_VAR name=pay_date>&nbsp;<TMPL_VAR NAME=DISPLAY_TZ></td>
                                                    <td><font color=red><TMPL_VAR name=amount></font></td>
                                                    <td><TMPL_VAR name=type></td>
                                                </tr>
                                            </TMPL_LOOP>
                                        </tbody>
                                    </table>
                                </div>
                            </fieldset>
                        </div>
                    </div>
                </div>
            </div>
            <TMPL_INCLUDE NAME=myaccount_footer.tpl>
        </form>
        <TMPL_INCLUDE NAME="search_hidden_form.tpl">
        <TMPL_INCLUDE NAME="billing_activity_hidden_form.tpl">
    </body>
</html>
<!-- end comp_pay_summary.tpl -->
