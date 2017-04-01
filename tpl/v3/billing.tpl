<!DOCTYPE html>
<!--<TMPL_VAR NAME=SERVER_ID>-->
<html>
    <head>
        <title>My Account</title>
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
                dTables = $j('table.display').DataTable({
                    "paging": false,
                    "info": false,
                });
                $j('.dataTables_empty').closest('.dataTables_wrapper').find('div.dataTables_length,div.dataTables_filter,div.dataTables_info,div.dataTables_paginate').hide();
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

            <TMPL_INCLUDE NAME="myaccount/myaccount_nav.tpl">

            <div class="myaccCon" style="border-radius: 0 0 8px 8px;">
                <div class="pd15">
                    <TMPL_IF NAME="DISABLED">
                        <TMPL_INCLUDE NAME=myaccount/myaccount_disabled.tpl>
                    <TMPL_ELSE>
                        <TMPL_IF NAME="BILLING_ACTIVITY">
                            <TMPL_INCLUDE NAME=myaccount/billing_activity.tpl>
                        </TMPL_IF>
                    </TMPL_IF>
                </div>
            </div>

        </form>
        <TMPL_INCLUDE NAME="classic_footer.tpl">
        <TMPL_INCLUDE NAME="search_hidden_form.tpl">
        <TMPL_INCLUDE NAME="billing_activity_hidden_form.tpl">
    </body>
</html>
<!-- END billing.tpl -->
