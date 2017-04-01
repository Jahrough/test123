<!DOCTYPE html>
<!-- begin myaccount.tpl -->

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
    <TMPL_IF CC_MANAGER>
      <TMPL_INCLUDE NAME=myaccount/case_connect/includes.tpl>    
    </TMPL_IF>
    <TMPL_IF MYACCOUNT_ORDER_MGR>
      <script src="<TMPL_VAR NAME='JSPATH'>/order_mgr.js"></script>
      <script src="<TMPL_VAR NAME='JSPATH'>/v3/initReport.js"></script>
      <script src="<TMPL_VAR NAME='JSPATH'>/sorttable.js"></script>
      <link href="<TMPL_VAR NAME='CSSPATH'>/jquery.dataTables.css" rel="stylesheet" type="text/css">
      <script src="<TMPL_VAR NAME='JSPATH'>/v3/jquery.dataTables.js"></script>
      <script>

        $j(function() {
          $j('#dataTables').DataTable({
            paging: false,
            searching: false,
            info: false
          });
        });
      </script>

      <style>
        table.dataTable.no-footer {
          border-bottom: none;
      }
      </style>

      <script>
        function refresh_page() {
          send_event('MYACCOUNT/SHOW_ORDER_MGR_REPORTS');
        }
      </script>
      
    </TMPL_IF>    
</head>


<body onLoad="<TMPL_UNLESS SHOW_MYACC_WITHOUT_PARENT>setInterval('checkparent()',2000);</TMPL_UNLESS><TMPL_UNLESS VERIFY_PASSWORD>window.focus();</TMPL_UNLESS><TMPL_IF EXTRA_ONLOAD><TMPL_VAR EXTRA_ONLOAD></TMPL_IF>" topmargin="0" leftmargin="0" marginwidth="0" marginheight="0"<TMPL_UNLESS ENABLE_V2> class="alternatebody"</TMPL_UNLESS>>
<div id="skiptocontent"><a href="#content" title="skip navigation">Skip Navigation</a></div>
<TMPL_INCLUDE NAME="myaccount/header_info.tpl">
<form name="MYACCOUNT" action="<TMPL_VAR NAME=ACTION>" method="post">
    <TMPL_INCLUDE NAME="common_hidden_input.tpl">
    <INPUT type=hidden NAME="SKIN_TYPE" VALUE="<TMPL_VAR NAME=SKIN_TYPE>">
    <INPUT type=hidden NAME="APPLICATION_TYPE" VALUE="<TMPL_VAR NAME=APPLICATION_TYPE>">
    <TMPL_IF NAME="MYACCOUNT_PREFERENCES">
        <INPUT type=hidden NAME="EVENT" VALUE="MYACCOUNT/SAVE_PREFERENCES">
    <TMPL_ELSE>
        <INPUT type=hidden NAME="EVENT">
    </TMPL_IF>

    <TMPL_INCLUDE NAME="myaccount/myaccount_nav.tpl">

    <div class="myaccCon" style="border-radius: 0 0 8px 8px;">
        <div id="content">
            <TMPL_IF NAME="INIT_CHECK_ERR_MSG">
                <TMPL_INCLUDE NAME=myaccount_init_checks_err.tpl>
            </TMPL_IF>
            <TMPL_IF NAME="SHOW_ACTIVE_COMPANY_LINK">
                <TMPL_INCLUDE NAME=myaccount/active_company.tpl>
            </TMPL_IF>

            <TMPL_IF NAME="DISABLED">
                <TMPL_INCLUDE NAME=myaccount_disabled.tpl>
            <TMPL_ELSE>

                <TMPL_IF NAME="MYACCOUNT_SECURITY">
                    <TMPL_INCLUDE NAME=myaccount/myaccount_security.tpl>
                </TMPL_IF>

                <TMPL_IF NAME="MYACCOUNT_ACTIVITY">
                    <TMPL_IF SA_DISABLED>
                        <TMPL_INCLUDE NAME="myaccount/sa_disabled_message.tpl">
                    <TMPL_ELSE>
                        <TMPL_IF ENABLE_GROUP_REPORTS>
                            <TMPL_IF MANAGEMENT_REPORTS>
                                <TMPL_INCLUDE NAME=myaccount/myaccount_group_management.tpl>
                            <TMPL_ELSE>
                                <TMPL_IF NAME="MYACCOUNT_USER_REPORTING">
                                    <TMPL_INCLUDE NAME=myaccount/myaccount_user_reporting.tpl>
                                <TMPL_ELSE>
                                    <TMPL_INCLUDE NAME=myaccount/myaccount_group_activity.tpl>
                                </TMPL_IF>
                            </TMPL_IF>
                        <TMPL_ELSE>
                            <TMPL_INCLUDE NAME=myaccount/myaccount_activity.tpl>
                        </TMPL_IF>
                    </TMPL_IF>
                </TMPL_IF>

                <TMPL_IF NAME="MYACCOUNT_PROFILE">
                    <TMPL_IF SA_DISABLED>
                        <TMPL_INCLUDE NAME="myaccount/sa_disabled_message.tpl">
                    <TMPL_ELSE>
                        <TMPL_IF NAME="MYACCOUNT_PROFILE_EDIT">
                            <TMPL_IF NAME="MYACCOUNT_PROFILE_RCPT">
                                <TMPL_INCLUDE NAME=myaccount/myaccount_chg_receipt.tpl>
                            <TMPL_ELSE>
                                <TMPL_INCLUDE NAME=myaccount/myaccount_profile_edit.tpl>
                            </TMPL_IF>
                        <TMPL_ELSE>
                            <TMPL_INCLUDE NAME=myaccount/myaccount_profile.tpl>
                        </TMPL_IF>
                    </TMPL_IF>
                </TMPL_IF>
                <TMPL_IF NAME="MYACCOUNT_PREFERENCES">
                    <TMPL_IF SA_DISABLED>
                        <TMPL_INCLUDE NAME="myaccount/sa_disabled_message.tpl">
                    <TMPL_ELSE>
                        <TMPL_IF NAME="IRS">
                            <TMPL_INCLUDE NAME=irs/myaccount_preferences.tpl>
                        <TMPL_ELSE>
                            <TMPL_IF NAME="XBPS">
                                <TMPL_INCLUDE NAME=xbps/myaccount_preferences.tpl>
                            <TMPL_ELSE>
                                <TMPL_IF NAME="LOC">
                                    <TMPL_INCLUDE NAME=loc/myaccount_preferences.tpl>
                                <TMPL_ELSE>
                                    <TMPL_IF NAME="TCOL">
                                        <TMPL_INCLUDE NAME=tcol/myaccount_preferences.tpl>
                                    <TMPL_ELSE>
                                        <TMPL_IF NAME="FCOL">
                                            <TMPL_INCLUDE NAME=fcol/myaccount_preferences.tpl>
                                        <TMPL_ELSE>
                                            <TMPL_IF MOBILE_ONLY_USER>
                                                 <TMPL_INCLUDE NAME=v3/myaccount/mobile_user_settings_prefs.tpl>
                                            <TMPL_ELSE>
                                                 <TMPL_INCLUDE NAME=myaccount/myaccount_preferences.tpl>
                                            </TMPL_IF>
                                        </TMPL_IF>
                                    </TMPL_IF>
                                </TMPL_IF>
                            </TMPL_IF>
                        </TMPL_IF>
                    </TMPL_IF>
                </TMPL_IF>
                <TMPL_IF NAME="MYACCOUNT_COMPANY_SECURITY">
                    <TMPL_INCLUDE NAME=myaccount/myaccount_security.tpl>
                </TMPL_IF>
                <TMPL_IF NAME="MYACCOUNT_ORDER_MGR">
                    <TMPL_INCLUDE NAME=myaccount/myaccount_order_mgr.tpl>
                </TMPL_IF>
                <TMPL_IF CC_MANAGER>
                    <TMPL_IF RUN_CC_SUBSCRIBER_LIST>
                        <TMPL_INCLUDE NAME=myaccount/case_connect/subscribers.tpl>
                    <TMPL_ELSE>
                        <TMPL_INCLUDE NAME=myaccount/case_connect/manager.tpl>
                    </TMPL_IF>
                </TMPL_IF>
                <TMPL_IF MYACCOUNT_SHOW_PRICE_CAP_CONTORLS>
                    <TMPL_INCLUDE NAME=myaccount_price_cap_controls.tpl>
                </TMPL_IF>
            </TMPL_IF>
        </div>
    </div>
</form>

<TMPL_INCLUDE NAME="classic_footer.tpl">
<TMPL_INCLUDE NAME="search_hidden_form.tpl">
<TMPL_INCLUDE NAME="verify_password_trigger.tpl">

</body>
</html>



<!-- end myaccount.tpl -->
