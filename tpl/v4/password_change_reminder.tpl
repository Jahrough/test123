<!DOCTYPE html>
<html lang="en">
	<head>
		<!--<TMPL_VAR NAME=SERVER_ID>-->
		<!-- begin password_change_reminder.tpl -->
  		<TMPL_INCLUDE NAME="includes.tpl">
	</head>

	<body>  
		<header id="header">	
			<!-- end pulled right: nav area -->
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
		<div id="main" class="expanded clear center">
  		<form name="PASSWORD_CHANGE_REMINDER" action="<TMPL_VAR NAME=ACTION_OTHER>" method="post">
    		<TMPL_INCLUDE NAME=common_hidden_input.tpl>
    		<input type="hidden" name="EVENT" value='<TMPL_VAR NAME=EVENT>'>
    		<input type="hidden" name="APPLICATION_TYPE" value='<TMPL_VAR NAME=APPLICATION_TYPE>'>
         <input type="hidden" name="SKIP_PASSWORD_CHANGE" value="">
         <input type="hidden" name="REMIND_PASSWORD_CHANGE_ASK" value="1">

    		<br>
    			<span class="font-em-1_5 textRed clear">Change Password Reminder</span>
    			<p class="font-em-1_3">Your password will expire in <TMPL_VAR NAME="DAYS_TO_EXPIRY"> days.<br>Would you like to change it?</p>
    			<input class="btn btn-danger" type="button" name="Change" value="&nbsp;&nbsp;&nbsp;&nbsp;Change Now&nbsp;&nbsp;&nbsp;&nbsp;" onCLick="send_event('LOGIN/REMIND_PASSWORD_CHANGE_SHOW');">&nbsp;&nbsp;&nbsp;&nbsp;
    			<input class="btn" type="button" name="Cancel" value="&nbsp;&nbsp;&nbsp;&nbsp;Change Later&nbsp;&nbsp;&nbsp;&nbsp;" onCLick="document.forms[0].SKIP_PASSWORD_CHANGE.value=1;send_event('LOGIN/CONTINUE');">

  		</form>
  		</div>
		<TMPL_INCLUDE NAME="lexisnexis_footer.tpl">
	</body>
</html>

<!-- end password_change_reminder.tpl -->

