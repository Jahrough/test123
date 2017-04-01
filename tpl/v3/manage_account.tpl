<!DOCTYPE html>
<!-- begin manage_account.tpl -->
<!--<TMPL_VAR NAME=SERVER_ID>-->
<html>
    <head>
        <title>My Account</title>
        <TMPL_INCLUDE NAME="myaccount/myaccount_includes.tpl">
    </head>

    <body <TMPL_UNLESS SHOW_MYACC_WITHOUT_PARENT>onLoad="setInterval('checkparent()',2000);"</TMPL_UNLESS> topmargin="0" leftmargin="0" marginwidth="0" marginheight="0"<TMPL_UNLESS ENABLE_V2> class="alternatebody"</TMPL_UNLESS>>
       <div id="skiptocontent"><a href="#content" title="skip navigation">Skip Navigation</a></div>
        <TMPL_INCLUDE NAME="myaccount/header_info.tpl">

        <form name="MYACCOUNT" action="<TMPL_VAR NAME=ACTION>" method="post">
            <TMPL_INCLUDE NAME="common_hidden_input.tpl">
            <INPUT type=hidden NAME="SKIN_TYPE" VALUE="<TMPL_VAR NAME=SKIN_TYPE>">
            <INPUT type=hidden NAME="APPLICATION_TYPE" VALUE="<TMPL_VAR NAME=APPLICATION_TYPE>">
            <INPUT type=hidden NAME="EVENT" VALUE="">

            <TMPL_INCLUDE NAME="myaccount/myaccount_nav.tpl">

            <div class="myaccCon" style="border-radius: 0 0 8px 8px;">
                <div id="content">

                    <TMPL_IF NAME="SHOW_ACTIVE_COMPANY_LINK">
                        <TMPL_INCLUDE NAME=myaccount/active_company.tpl>
                    </TMPL_IF>

                    <TMPL_IF NAME="DISABLED">
                        <TMPL_INCLUDE NAME=myaccount_disabled.tpl>
                    <TMPL_ELSE>

                        <TMPL_IF NAME="MANAGE_SINGLE_ACCOUNT">
                            <TMPL_IF SA_DISABLED>
                                <TMPL_INCLUDE NAME="myaccount/sa_disabled_message.tpl">
                            <TMPL_ELSE>
                                <TMPL_IF NAME="MANAGE_SINGLE_ACCOUNT_MULTI">
                                    <TMPL_INCLUDE NAME=myaccount/manage_account_chpasswd_multi.tpl>
                                <TMPL_ELSE>
                                    <TMPL_IF NAME="MANAGE_SINGLE_ACCOUNT_SEC_Q">
                                        <TMPL_INCLUDE NAME=myaccount/manage_account_chsecurity_q.tpl>
                                    <TMPL_ELSE>
                                        <TMPL_INCLUDE NAME=myaccount/manage_account_chpasswd.tpl>
                                    </TMPL_IF>
                                </TMPL_IF>
                            </TMPL_IF>
                        </TMPL_IF>

                        <TMPL_IF NAME="MANAGE_CLONE_USER">
                            <TMPL_INCLUDE NAME=manage_clone_user.tpl>
                        </TMPL_IF>

                        <TMPL_IF NAME="MANAGE_CLONE_USER_RECEIPT">
                            <TMPL_INCLUDE NAME=manage_clone_user_receipt.tpl>
                        </TMPL_IF>

                        <TMPL_IF NAME="MANAGE_GROUPS_SHOW">
                            <TMPL_IF SA_DISABLED>
                                <TMPL_INCLUDE NAME="myaccount/sa_disabled_message.tpl">
                            <TMPL_ELSE>
                                <TMPL_INCLUDE NAME=myaccount/manage_groups.tpl>
                            </TMPL_IF>
                        </TMPL_IF>

                        <TMPL_IF NAME="ADD_GROUP">
                            <TMPL_INCLUDE NAME=myaccount/manage_account_add_group.tpl>
                        </TMPL_IF>

                        <TMPL_IF NAME="MANAGE_SHOW_USERS">
                            <TMPL_IF SA_DISABLED>
                                <TMPL_INCLUDE NAME="myaccount/sa_disabled_message.tpl">
                            <TMPL_ELSE>
                                <TMPL_INCLUDE NAME=myaccount/manage_account_users.tpl>
                            </TMPL_IF>
                        </TMPL_IF>

                        <TMPL_IF NAME="MANAGE_ADD_USER">
                            <TMPL_INCLUDE NAME=myaccount/manage_account_add_user.tpl>
                        </TMPL_IF>

                        <TMPL_IF NAME="MANAGE_ADD_GROUP">
                            <TMPL_INCLUDE NAME=myaccount/manage_account_add_group.tpl>
                        </TMPL_IF>

                        <TMPL_IF NAME="MANAGE_UPDATE_GROUP">
                            <TMPL_INCLUDE NAME=myaccount/manage_account_update_group.tpl>
                        </TMPL_IF>

                        <TMPL_IF NAME="MANAGE_UPDATE_USER">
                            <TMPL_INCLUDE NAME=myaccount/manage_account_update_user.tpl>
                        </TMPL_IF>

                        <TMPL_IF NAME="MANAGE_COPY_USER">
                            <TMPL_INCLUDE NAME=myaccount/manage_account_copy_user.tpl>
                        </TMPL_IF>

                        <TMPL_IF NAME="SHOW_DYNAMIC_DESKTOP_CHAT">
                            <INPUT type=hidden NAME="BUDDY_NAME" VALUE="">
                            <TMPL_INCLUDE NAME=myaccount/manage_chat.tpl>
                        </TMPL_IF>

                        <TMPL_IF NAME="CREDITCARDS">
                            <TMPL_INCLUDE NAME=manage_cards.tpl>
                        </TMPL_IF>

                        <TMPL_IF NAME="MANAGE_SITEKEY">
                            <TMPL_INCLUDE NAME=myaccount/manage_account_sitekey.tpl>
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
<!-- end manage_account.tpl -->
