<!DOCTYPE html>
<!-- BEGIN myaccount/comp_account_summary.tpl -->
<!--<TMPL_VAR NAME=SERVER_ID>-->
<html>
    <head>
        <title>Company Payment Summary</title>
        <TMPL_INCLUDE NAME="myaccount/myaccount_includes.tpl">

        <link href="<TMPL_VAR NAME='CSSPATH'>/simple_date_picker.css" rel="stylesheet" type="text/css">
        <script src="<TMPL_VAR NAME='JSPATH'>/simple_date_picker.js"></script>

        <script src="<TMPL_VAR NAME='JSPATH'>/common.js"></script>
        <script src="<TMPL_VAR NAME='JSPATH'>/shared.js"></script>
        <script src="<TMPL_VAR NAME='JSPATH'>/billing.js"></script>
        <script src="<TMPL_VAR NAME='JSPATH'>/acchistory.js"></script>
        <script src="<TMPL_VAR NAME='JSPATH'>/v3/jquery.dataTables.js"></script>
        <script src="<TMPL_VAR NAME='JSPATH'>/v3/extends.js"></script>
        <script>
            var account_summary;
            var account_history;
            var test = [];
            
            $j(function() {
                account_summary = $j('#account-summary').DataTable({
                    "bPaginate": false,
                    "info":false
                });
                account_history = $j('#account-history').DataTable({
                    "order": [1, 'desc'],
                    "bPaginate": false,
                    info:false,
                    "columns": [
                        { "type": "date-range" },
                        { "type": "myacc-price" },
                        { "type": "myacc-price" },
                        { "type": "myacc-price" },
                        { "type": "myacc-price" },
                        { "type": "string", "orderable": false },
                        { "type": "string", "orderable": false },
                        { "type": "string", "orderable": false },
                        { "type": "string", "orderable": false }
                    ]
                });
                $j.each($j('div.dataTables_wrapper div.dataTables_paginate'),function(){
                    if($j(this).children('a.disabled').length === 2){
                        var sel = 'div.dataTables_info,div.dataTables_paginate,div.dataTables_length';
                        $j(this).parent().find(sel).css('display','none');
                    }
                });
                $j('table#account-history > thead > tr > td').click(function(){
                    $j('table#account-history > thead > tr > td > div').remove();
                });
            });
        </script>
        <style>
            /* Custom CSS for Billing Info tables */
            table > tbody > tr > td{
                font-size:14px;
            }
            div.section-row input[type="checkbox"]{
                margin:0;
            }
            fieldset.fieldset-with-datatable .dataTables_filter{
                display:none;
            }
            table#account-history > thead > tr > td > b{
                display: inline-block;
                text-decoration: underline;
            }
            table#account-history > thead > tr > td > input{
                float:right;
            }
            table#account-history > thead > tr > td:first-child{
                width:170px !important;
            }
            table#account-history > thead > tr > td:first-child + td{
                width:125px !important;
            }
            table#account-history > thead > tr > td:first-child + td + td{
                width:135px !important;
            }
            table#account-history > thead > tr > td:first-child + td + td + td{
                width:130px !important;
            }
            table#account-history > thead > tr > td:first-child + td + td + td + td{
                width:125px !important;
            }
            table#account-history > thead > tr > td:first-child + td + td + td + td + td{
                width:105px !important;
            }
            table#account-history > thead > tr > td:first-child + td + td + td + td + td + td{
                width:105px !important;
            }
            table#account-history > thead > tr > td:first-child + td + td + td + td + td + td + td{
                width:140px !important;
            }
            table#account-history > thead > tr > td:first-child + td + td + td + td + td + td + td + td{
                width:90px !important;
            }
            table#account-history > tbody > tr > td{
                text-align:center;
                background:#fff;
            }
            table#account-history > tbody > tr > td:first-child{
                text-align:left;
            }
            table#account-history > tbody > tr > td:first-child + td,
            table#account-history > tbody > tr > td:first-child + td + td,
            table#account-history > tbody > tr > td:first-child + td + td + td,
            table#account-history > tbody > tr > td:first-child + td + td + td + td{
                text-align:right;
            }
            table#account-history>thead>tr>td{
                text-align:center;
            }
            table#account-history>thead>tr>td:first-child,
            table#account-history>thead>tr>td:first-child + td,
            table#account-history>thead>tr>td:first-child + td + td{
                text-align:left;
            }
        </style>
    </head>

    <body onLoad="<TMPL_UNLESS SHOW_MYACC_WITHOUT_PARENT>setInterval('checkparent()',2000);</TMPL_UNLESS>" topmargin="0" leftmargin="0" marginwidth="0" marginheight="0">
    <div id="skiptocontent"><a href="#content" title="skip navigation">Skip Navigation</a></div>
        <TMPL_INCLUDE NAME="myaccount/header_info.tpl">
        <form name="BILLING" action="<TMPL_VAR NAME=ACTION>" method="post">
            <TMPL_INCLUDE NAME="common_hidden_input.tpl">
            <INPUT type=hidden NAME="SKIN_TYPE" VALUE="<TMPL_VAR NAME=SKIN_TYPE>">
            <INPUT type=hidden NAME="APPLICATION_TYPE" VALUE="<TMPL_VAR NAME=APPLICATION_TYPE>">
            <INPUT type=hidden NAME="EVENT">
            <INPUT type=hidden NAME="BILLING_PERIOD_ID">

            <TMPL_INCLUDE NAME="myaccount/myaccount_nav.tpl">
            <TMPL_IF SA_DISABLED>
            <div class="myaccCon" style="border-radius: 0 0 8px 8px;">
            <div class="myaccount-containers">
                <div class="sections">
                        <TMPL_INCLUDE NAME="v3/myaccount/sa_disabled_message.tpl">
                </div>
            </div>
            </div>
            <TMPL_ELSE>
            <div class="myaccCon" style="border-radius: 0 0 8px 8px;">
                <div>
                    <div class="myaccount-section-title">Self-Serve Billing Change to EPIC 360&deg;</div>
		    <div class="myaccount-containers">
                        <div class="sections">
                            <div class="section-row">

    As of May 20th, 2016, existing self-serve billing options available on the Billing Information tab have been removed and transitioned to the enhanced Electronic Payment & Invoice Center, EPIC 360&reg;.   This change will not impact the way invoices and other billing information is sent today on an automated basis, but is specific to how self-serve billing options will be accessed going forward.
    <br><br>
    Please register and begin using EPIC 360&deg; today!
    <br><br>
    <font color="#ed1c24"><b>EPIC 360&deg;</b></font>
    <br><br>
    <a href="https://invoice.risk.lexisnexis.com/" target="_blank"><b><u>https://invoice.risk.lexisnexis.com/</u></b></a>
    <br><br>
    <b>EPIC 360&deg; Features include:</b>
    <ul>
      <li>One login ID to access your LexisNexis&reg; Risk Solutions accounts and invoices
      <li>Ability to view your open account balances and pay invoices online
      <li>Opportunity to view, print, and save PDF copies of invoices
      <li>Access to your account activity detail
    </ul>
    <font color="#ed1c24"><b>Take a Tour of EPIC 360&deg;:</b></font>
    <br><br>
    <a href="https://invoice.risk.lexisnexis.com/index/tutorial" target="_blank"><b><u>https://invoice.risk.lexisnexis.com/index/tutorial</u></b></a>
    <br><br>
    Module 1:  <u>Registration and Login</u><br>
    Module 2:  <u>Dashboard and Basic Navigation</u><br>
    Module 3:  <u>Working with Payable Invoices</u><br>
    Module 4:  <u>Paying Invoices</u><br>
    Module 5:  <u>Reporting and Download Reports</u><br>
    Module 6:  <u>Account Administration</u><br>
    <br>
    If you have any questions please contact LexisNexis Customer Support at <b>866.528.0570</b> or <a href="https://accurint.custhelp.com/" target="_blank"><b><u>Email Us.</u></b></a>
    <br><br>
    <b>Epic 360&deg; Tutorial URLs</b>
    <br><br>

    Module 1: <a href="https://learn.lexisnexis.com/lexisnexis/resources/courses/EPIC_360/Registration_and_SignIn/index.html" target="_blank"><b><u>https://learn.lexisnexis.com/lexisnexis/resources/courses/EPIC_360/Registration_and_SignIn/index.html</u></b></a>
    <br><br>
    Module 2: <a href="https://learn.lexisnexis.com/lexisnexis/resources/courses/EPIC_360/Dashboard_and_BasicNavigation/index.html" target="_blank"><b><u>https://learn.lexisnexis.com/lexisnexis/resources/courses/EPIC_360/Dashboard_and_BasicNavigation/index.html</u></b></a>
    <br><br>
    Module 3: <a href="https://learn.lexisnexis.com/lexisnexis/resources/courses/EPIC_360/Working_with_Payable_Invoices/index.html" target="_blank"><b><u>https://learn.lexisnexis.com/lexisnexis/resources/courses/EPIC_360/Working_with_Payable_Invoices/index.html</u></b></a>
    <br><br>
    Module 4: <a href="https://learn.lexisnexis.com/lexisnexis/resources/courses/EPIC_360/Paying_Invoices/index.html" target="_blank"><b><u>https://learn.lexisnexis.com/lexisnexis/resources/courses/EPIC_360/Paying_Invoices/index.html</u></b></a>
    <br><br>
    Module 5: <a href="https://learn.lexisnexis.com/lexisnexis/resources/courses/EPIC_360/Reporting_and_Download_Reports/index.html" target="_blank"><b><u>https://learn.lexisnexis.com/lexisnexis/resources/courses/EPIC_360/Reporting_and_Download_Reports/index.html</u></b></a>
    <br><br>
    Module 6: <a href="https://learn.lexisnexis.com/lexisnexis/resources/courses/EPIC_360/Account_Administration/index.html" target="_blank"><b><u>https://learn.lexisnexis.com/lexisnexis/resources/courses/EPIC_360/Account_Administration/index.html</u></b></a>
    <br><br><br>
				
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            </TMPL_IF>
        </form>

        <TMPL_INCLUDE NAME="classic_footer.tpl">
        <TMPL_INCLUDE NAME="search_hidden_form.tpl">
        <TMPL_INCLUDE NAME="billing_activity_hidden_form.tpl">
    </body>
</html>
<!-- END myaccount/comp_account_summary.tpl -->
