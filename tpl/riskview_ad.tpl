<!-- begin riskview_ad.tpl -->
<!--<TMPL_VAR NAME=SERVER_ID>-->
<html>

	<head>
		<meta http-equiv="content-type" content="text/html;charset=ISO-8859-1">
		<meta name="generator" content="Adobe GoLive 5">
		<title>RiskView for Auto Finance</title>
<link href="<TMPL_VAR NAME='CSSPATH'>/style1.css" rel="stylesheet" type="text/css">
<link href="<TMPL_VAR NAME='CSSPATH'>/<TMPL_VAR NAME=SKIN_TYPE>/skin.css" rel="stylesheet" type="text/css">
<TMPL_IF ENABLE_V2>
<link href="<TMPL_VAR NAME='CSSPATH'>/accurint.css" rel="stylesheet" type="text/css">
<link href="<tmpl_var csspath>/<tmpl_var application_type>/diff.css" rel="stylesheet" type="text/css">
</TMPL_IF>
    <script src="<TMPL_VAR NAME='JSPATH'>/common.js"></script>
    <script src="<TMPL_VAR NAME='JSPATH'>/shared.js"></script>
	</head>

	<body onLoad="window.focus();">

<TMPL_IF ENABLE_V2>
<div id="hd">
<h2><a trackid="hdr_top_logo">LexisNexis Accurint</a></h2>
</div>
</TMPL_IF>

  <form name="RISKVIEW_AD" action="<TMPL_VAR NAME=ACTION>" method="post">
  <TMPL_INCLUDE NAME=common_hidden_input.tpl>
  <INPUT type=hidden NAME="EVENT" VALUE="">
  <INPUT type=hidden NAME="CURRENT_EVENT" VALUE="<TMPL_VAR NAME=CURRENT_EVENT>">
  <INPUT type=hidden NAME="CLIENT_TYPE" VALUE="WEB">
  <INPUT type=hidden NAME="SKIN_TYPE" VALUE="<TMPL_VAR NAME=SKIN_TYPE>">
  <INPUT type=hidden NAME="APPLICATION_TYPE" VALUE="<TMPL_VAR NAME=APPLICATION_TYPE>">
	<center>
		<table border="0" cellpadding="0" cellspacing="0" width="90%">
			<tr height="235">
					<td height="235" width="100%" valign="top"><font color="#ff6600" size="2" face="Verdana,Arial"><br>
						</font><font color="#ed1c24" face="Verdana,Arial" size="4"><b>RiskView<SMALL><SUP>TM</SUP></SMALL> <I>for Auto Finance</I><br>
							</b></font><font size="2" face="Verdana,Arial"><br>
							RiskView <I>for Auto Finance</I> predicts the likelihood that a consumer will become delinquent in the next 24 months.  RiskView credit scores can augment credit bureau-based scores when credit history is present, and replace a traditional credit bureau-based score when limited or no credit history is found.<br><br>
              RiskView <I>for Auto Finance</I> is specially formulated for auto lenders, other versions are available in batch or integrated machine-to-machine delivery formats.<br><br>
              Submit <a class="searchheader" href="javascript:show_post_popup('MYACCOUNT/SHOW_RISKVIEW','ContactUs',450,500);">this email</a> request for more information on RiskView <I>for Auto Finance</I>. Your Account Manager will contact you with details.
						</font>
					</td>
				</tr>
		</table>
		<p></p>
	    </center>
  </form> 
	</body>

</html>
<!-- end riskview_ad.tpl -->

