<!DOCTYPE html>
<html>
    <head>
        <title>Change Password</title>
        <TMPL_INCLUDE NAME="includes_info.tpl">
        <script src="<TMPL_VAR NAME='JSPATH'>/user_admin.js"></script>
        <style>
            .myaccountborder ol{width:250px;}
            .myaccountborder{background:#d0d0d0;border:solid 1px #6d6e71;}
        </style>
    </head>
  <body topmargin="0" leftmargin="0" marginwidth="0" marginheight="0">
        <TMPL_INCLUDE NAME="header_info.tpl">

            <div class="txtWrapper w98pc">
                <div id="txtCon">
                    <div class="lnin-header"> Change Password</div>
                    <br/>


                    <form name="MYACCOUNT" action="<TMPL_VAR NAME=ACTION>" method="post">
                      <TMPL_INCLUDE NAME="common_hidden_input.tpl">
                      <input type="hidden" name="SKIN_TYPE" value="<TMPL_VAR NAME=SKIN_TYPE>">
                      <input type="hidden" name="APPLICATION_TYPE" value="<TMPL_VAR NAME=APPLICATION_TYPE>">
                      <input type="hidden" name="EVENT" value="">
                      <input type="hidden" name="REQUIRE_PASSWORD_CHANGE" value="1">

                      <div align="center">
                      <TMPL_INCLUDE NAME=manage_account_chpasswd.tpl>
                      </div>

                    </form>
                    <TMPL_INCLUDE NAME="search_hidden_form.tpl">
 
                    </div>
                </div>
            </div>
       
    </body>
</html>