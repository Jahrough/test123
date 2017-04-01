<!DOCTYPE html>
<html lang="en">
	<head>
		<!--<TMPL_VAR NAME=SERVER_ID>-->
		<TMPL_INCLUDE NAME="includes.tpl">
	</head>
	<body>  
		<div id="main" class="clear center">
			<header id="header">	
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
			<form name="LOGOUT_THANK_YOU" action="<TMPL_VAR NAME=ACTION_OTHER>" method="post">
				<input type="hidden" name="EVENT" value='<TMPL_VAR NAME=EVENT>'>
				<input type="hidden" name="APPLICATION_TYPE" value='<TMPL_VAR NAME=APPLICATION_TYPE>'>

                                <TMPL_IF NAME="LOGOUT_MESSAGE_1">
				<span class="font-em-1_5 textRed clear">This session has expired</span>
				<p class="font-em-1_3"><TMPL_VAR NAME="LOGOUT_MESSAGE_1"></p>
				<p class="font-em-1_3"><TMPL_VAR NAME="LOGOUT_MESSAGE_2"></p>
                                <TMPL_ELSE>
				<span class="font-em-1_5 textRed clear">Thank You</span>
				<p class="font-em-1_3">You have successfully signed off.</p>
                                </TMPL_IF>
				<button class="btn btn-danger" type="button" onCLick="send_event('LOGIN/SHOW_LOGIN');">Sign In</button>
			</form>
		</div>
		<TMPL_INCLUDE NAME="lexisnexis_footer.tpl">
	</body>
</html>
