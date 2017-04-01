<!DOCTYPE html>
<!-- Begin supplemental_data_sources.tpl -->
<html>
<head>
<title>Forgot Password Help and Information</title>
<TMPL_INCLUDE NAME="includes_info.tpl">
<style>
.txtWrapper{min-width:500px;}
.myaccountborder ol{font-size:12px;color: #666;}
</style>

</head>

<body onLoad="window.focus();" topmargin="0" leftmargin="0" marginwidth="0" marginheight="0">

<TMPL_INCLUDE NAME="header_info.tpl">

<form name="CONTACT_US" action="<TMPL_VAR NAME=ACTION>" method="post"> 
<TMPL_INCLUDE NAME="common_hidden_input.tpl">
<INPUT type=hidden NAME="SKIN_TYPE" VALUE="<TMPL_VAR NAME=SKIN_TYPE>">
<INPUT type=hidden NAME="APPLICATION_TYPE" VALUE="<TMPL_VAR NAME=APPLICATION_TYPE>">
<INPUT type=hidden NAME="EVENT" VALUE="<TMPL_VAR NAME=EVENT>">

   <div class="txtWrapper">
    <div id="txtCon">
        <div class="left-header">Forgot Password Feature</div>
 
        <table border="0" cellpadding="10" cellspacing="0">
          <tr>
            <td>
            <br>
            The Forgot Password feature allows you and your company's users to have a
            temporary password emailed to them following an unsuccessful password entry
            during a login attempt. Note: The user must enter a valid, registered Login ID
            with an incorrect password before the Forgot Password link will appear to them. 
        <br><br>
            In order to use this feature, you or another System Administrator must register
            your company. You can register your company by enabling the radio button on the
            Manage Company tab at any time. Following company registration, each user will
            be prompted to register with a valid email address and a security question and
            answer. 
        <br><br>
            Utilizing this feature does not vary the terms and conditions of your contract
            with us. Specifically, all security requirements remain in full force and
            effect and any misuse of your account, in connection with or related to the
            Forgot Password feature or otherwise, is strictly the responsibility of you and
            your company.
            </td>
          </tr>
        </table>


        </div>
    </div>

</form>
</body>
</html>
<!-- End supplemental_data_sources.tpl -->
