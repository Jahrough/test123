<!DOCTYPE html>
<!-- START v3/payments/payment_top.tpl -->
<!--<TMPL_VAR NAME=SERVER_ID>-->
<html>
    <head>
        <title><TMPL_VAR NAME="PAGE_TITLE"></title>
        <TMPL_INCLUDE NAME="myaccount/myaccount_includes.tpl">

        <script src="<TMPL_VAR NAME='JSPATH'>/v3/jquery.dataTables.js"></script>
        
        <script src="<TMPL_VAR NAME='JSPATH'>/prototype.js"></script>
        <script src="<TMPL_VAR NAME='JSPATH'>/billing.js"></script>
        
        <script src="<TMPL_VAR NAME='JSPATH'>/common.js"></script>
        <script src="<TMPL_VAR NAME='JSPATH'>/shared.js"></script>
        <script src="<TMPL_VAR NAME='JSPATH'>/payments.js"></script>
        <script src="<TMPL_VAR NAME='JSPATH'>/user_admin.js"></script>
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

    <body <TMPL_UNLESS NAME="STANDALONE_PAYMENTS">onLoad="<TMPL_UNLESS SHOW_MYACC_WITHOUT_PARENT>setInterval('checkparent()',2000);</TMPL_UNLESS>"</TMPL_UNLESS> topmargin="0" leftmargin="0" marginwidth="0" marginheight="0"<TMPL_UNLESS ENABLE_V2> class="alternatebody"</TMPL_UNLESS>>
        <TMPL_INCLUDE NAME="myaccount/header_info.tpl">
    
        <form name="PAYMENT" action="<TMPL_VAR NAME=ACTION>" method="post">
            <TMPL_INCLUDE NAME="common_hidden_input.tpl">        
            <INPUT type=hidden NAME="SKIN_TYPE" VALUE="<TMPL_VAR NAME=SKIN_TYPE>">
            <INPUT type=hidden NAME="APPLICATION_TYPE" VALUE="<TMPL_VAR NAME=APPLICATION_TYPE>">
            <INPUT type=hidden NAME="EVENT">
            <INPUT type=hidden NAME="EDIT_ACCOUNT_ID" VALUE="">

            <TMPL_UNLESS NAME="STANDALONE_PAYMENTS">
                <TMPL_INCLUDE NAME="myaccount/myaccount_nav.tpl">
            </TMPL_UNLESS>
            
            <div class="myaccCon" style="border-radius: 0 0 8px 8px;">
                <div>
                    <div class="myaccount-containers">
                        <div class="myaccount-section-title mgb15"><TMPL_VAR NAME="PAGE_TITLE"></div>
                        <div class="section" style="padding:0px 150px;">

                            <TMPL_IF NAME="DISPLAY_BACK">
                                <fieldset>
                                    <div class="section-row mgb0">
                                        <div class="left mgr15">
                                            <TMPL_UNLESS NAME="STANDALONE_PAYMENTS">
                                                <a class="btn darkgrey-btn" href="javascript:send_event('BILLING/SUMMARY');">
                                                    &lt; Back
                                                </a>
                                            <TMPL_ELSE>
                                                <a class="btn darkgrey-btn" href="javascript: send_event('LOGOUT');">
                                                    Log Out
                                                </a>
                                            </TMPL_UNLESS>
                                        </div>
                                        <div class="left">
                                            <TMPL_IF NAME="PAYMENT_PAGE">
                                                <TMPL_UNLESS NAME="DISABLE_CHECK_PAYMENTS">
                                                    <span><label for="pym_typ"><b>Payment Type:</b></label></span>
                                                    <select id="pym_typ" name="PAYMENT_METHOD" onchange="send_event(this.options[this.selectedIndex].value);">
                                                        <option name="cc" value="PAYMENT/SHOW_CC_PAYMENT" <TMPL_IF NAME="IS_CC_TPL">selected</TMPL_IF>>Credit Card Payments</option>
                                                        <option name="cc" value="PAYMENT/SHOW_CHECK_PAYMENT" <TMPL_IF NAME="IS_CHECK_TPL">selected</TMPL_IF>>Check Payments</option>
                                                    </select>
                                                </TMPL_UNLESS>
                                            </TMPL_IF>
                                        </div>
                                    </div>
                                </fieldset>
                            <TMPL_ELSE>
                                <TMPL_IF NAME="PAYMENT_PAGE">
                                    <fieldset>
                                        <div class="left">
                                            <TMPL_UNLESS NAME="DISABLE_CHECK_PAYMENTS">
                                                <span><b><label for="pay_typ">Payment Type:</label></b></span>
                                                <select id="pay_typ" name="PAYMENT_METHOD" onchange="send_event(this.options[this.selectedIndex].value);">
                                                    <option name="cc" value="PAYMENT/SHOW_CC_PAYMENT" <TMPL_IF NAME="IS_CC_TPL">selected</TMPL_IF>>Credit Card Payments</option>
                                                    <option name="cc" value="PAYMENT/SHOW_CHECK_PAYMENT" <TMPL_IF NAME="IS_CHECK_TPL">selected</TMPL_IF>>Check Payments</option>
                                                </select>
                                            </TMPL_UNLESS>
                                        </div>
                                    </fieldset>
                                </TMPL_IF>
                            </TMPL_IF>

                            <TMPL_IF NAME="ALERT_MSG">
                                <fieldset>
                                    <div class="section-row">
                                        <span><TMPL_VAR NAME="ALERT_MSG"></span>
                                    </div>
                                </fieldset>
                            </TMPL_IF>
                            
<!-- END v3/payments/payment_top.tpl -->
