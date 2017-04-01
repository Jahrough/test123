<!-- begin riskview_ad.tpl -->
<!--<TMPL_VAR NAME=SERVER_ID>-->
<html>

	<head>
		<meta http-equiv="content-type" content="text/html;charset=ISO-8859-1">
		<meta name="generator" content="Adobe GoLive 5">
		<title>RiskView for Auto Finance</title>
    <script src="<TMPL_VAR NAME='JSPATH'>/common.js"></script>
    <script src="<TMPL_VAR NAME='JSPATH'>/shared.js"></script>
	</head>

	<body onLoad="window.focus();" bgcolor="#ebebd8">
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
							RiskView <I>for Auto Finance</I> is a new credit score provided by LexisNexis Risk & Information Analytics Group Inc. that helps auto finance professionals accurately predict the likelihood that a consumer will become delinquent in the next 18 months.  RiskView <I>for Auto Finance</I> assists auto finance professionals in confidently extending credit to consumers who have derogatory or even little to no credit history.<br><br>
              By combining the vast LexisNexis public records data collection with advanced matching, linking and scoring technology, RiskView augments credit-based scores when credit history is present, and replaces a traditional credit-based score when limited or no credit history is found.<br><br>
              To view a Sample Report of RiskView <I>for Auto Finance</I> <a href="<TMPL_VAR NAME=HTMLPATH>/riskview_auto_finance_sample_report.html" target="_blank">click here</a>.<br><br>
						</font>
						<font size="1" face="Verdana,Arial">
            RiskView is a consumer reporting agency product provided by LexisNexis Risk & Information Analytics Group Inc., and although a link to RiskView is accessible from the Accurint, RiskView is a distinct and separate product from Accurint.<br><br>
            Accurint is not a consumer reporting agency, and the information contained in Accurint does not bear upon an individual's creditworthiness, credit standing, credit capacity, character, general reputation, personal characteristics, or mode of living, and as such, Accurint does not constitute a consumer report as such term is defined in the Fair Credit Reporting Act, 15 U.S.C. Sec. 1681, et seq. ("FCRA").  Accurint may not be used to determine a consumer's eligibility for credit or insurance for personal, family, or household purposes, or for employment purposes, or for any other purpose permitted by the FCRA.<br><br>
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

