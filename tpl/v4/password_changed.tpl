<!DOCTYPE html>
<html lang="en">
  <head>
    <!-- begin v4/require_password_change.tpl -->
    <!--<TMPL_VAR NAME=SERVER_ID>-->
    <TMPL_INCLUDE NAME="includes.tpl">

    <script src="<TMPL_VAR NAME='JSPATH'>/user_admin.js"></script>

  </head>

  <body topmargin="0" leftmargin="0" marginwidth="0" marginheight="0">

  <header>
    <h1>
		<TMPL_IF AML>
			<img src="<tmpl_var name=IMGPATH>/LN-AML-Insight.png" alt="LexisNexis&copy; AML Insight&trade;"/>
		<TMPL_ELSE>
			<TMPL_IF RSKM>
				<img src="<tmpl_var name=IMGPATH>/LN-RSKM.png" alt="LexisNexis&copy; Risk Management Solutions&reg;"/>
			<TMPL_ELSE>
				<TMPL_IF RSKAD>
					<img src="<tmpl_var name=IMGPATH>/LN-Admin.png" alt="LexisNexis&copy; Risk Administration&reg;"/>
				</TMPL_IF>
			</TMPL_IF>
		</TMPL_IF>
    </h1>
  </header>

<div id="main" class="clear">
<div id="wrapper">

<form name="MYACCOUNT" action="<TMPL_VAR NAME=ACTION>" method="post">
  <TMPL_INCLUDE NAME=common_hidden_input.tpl>
  <input type="hidden" name="SKIN_TYPE" value="<TMPL_VAR NAME=SKIN_TYPE>">
  <input type="hidden" name="APPLICATION_TYPE" value="<TMPL_VAR NAME=APPLICATION_TYPE>">
  <input type="hidden" name="EVENT" value="">
  <input type="hidden" name="REQUIRE_PASSWORD_CHANGE" value="1">
  <input type="hidden" name="LOGINID" value="<TMPL_VAR NAME='LOGINID'>">
  <input type="hidden" name="MIN_PW_LEN" value="<TMPL_VAR NAME='MIN_PASSWORD_LENGTH'>">



<table border="0" >
  <tr>
    <div class="row"></div>
    <td width="15">&nbsp; &nbsp;</td>
    <td width="700">
    <div class="row"></div>
    <div class="row"></div>
    <div class="row"></div>
    <div class="row">
    <h4><strong>Change Password Successful</strong></h4>
    </div>
    <div class="row"></div>
    <div class="row"></div>
    <div class="row"></div>
    <div class="row">
    You have successfully changed the password for the ID: <TMPL_VAR NAME="LOGINID">
    </div>
    <div class="row"></div>
    <div class="row"></div>

    <center>
    <div class="row"></div>
    <div class="row"></div>

    <input class="btn btn-danger" type="button" name="Done" value="Continue" onClick="send_event('LOGIN/CONTINUE');">

    </center>

    </td>
    <td>&nbsp; &nbsp; </td>
  </tr>
</table>

</form>

</div>
</div>
	
<TMPL_INCLUDE NAME="search_hidden_form.tpl">
<TMPL_INCLUDE NAME="lexisnexis_footer.tpl">

  </body>
</html>

<!-- end v4/require_password_change.tpl -->
