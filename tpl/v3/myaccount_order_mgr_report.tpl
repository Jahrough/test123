<html>
  <head>
    <title>Court Search Report</title>
  <meta http-equiv="X-UA-Compatible" content="IE=Edge" />
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
  <script type="text/javascript" src="<TMPL_VAR JSPATH>/please_wait.js"></script>
  <script type="text/javascript" src="<TMPL_VAR JSPATH>/shared.js"></script>
  <script type="text/javascript" src="<TMPL_VAR JSPATH>/common.js"></script>
  <script src="<TMPL_VAR NAME='JSPATH'>/order_mgr.js"></script>
  <link href="<TMPL_VAR NAME='CSSPATH'>/myaccount.css" rel="stylesheet" type="text/css">
  <link href="<TMPL_VAR NAME='CSSPATH'>/base.css" rel="stylesheet" type="text/css">
  <script>var back = -1;</script>
  <script type="text/javascript">
  var vertical = '<TMPL_VAR NAME=APPLICATION_TYPE>';
  function open_help() {
      if (vertical == 'gov' || vertical == 'le') {
          window.open ("https://learn.lexisnexis.com/lexisnexis/user_home.aspx?portal=gov");
      } else {
          window.open ("https://learn.lexisnexis.com/lexisnexis/user_home.aspx");
      }
  }
  function open_help_html(help_url,help_win) {
      general_win('<TMPL_VAR NAME=HLPPATH>/' + help_url,help_win,780,490,1,1,1,1,1,0);
  }
  function myaccount_event(param1,param2) { // IE 6 Needs
      if (param2) {
  	setTimeout(function(){send_event(param1,param2)},250);
      } else {
  	setTimeout(function(){send_event(param1)},250);
      }
      showpw();
  }
</script>
  </head>

  <body onload="set_window_focus();setInterval('checkparent()',2000);reset_parent_target();">
  <div id="pleasewait" style="position:absolute; visibility:hidden; z-index:1000;">
    <img src="<TMPL_VAR IMGPATH>/arrows_wait_full.gif" id="pw" name="pw" width="400"
     height="120" border="0">
  </div>
    <div class="topBarCon">
        <div class="topBarConMiddle" style="margin-left:5px;">
            <div class="left">
                <ul>
                <TMPL_IF GOV>
                    <li class="ln-logo ln-logo-gov"><div>&nbsp;</div></li>
                </TMPL_IF>
                <TMPL_IF LE>
                    <li class="ln-logo ln-logo-le"><div>&nbsp;</div></li>
                </TMPL_IF>
                <TMPL_IF HEA>
                    <li class="ln-logo ln-logo-hea"><div>&nbsp;</div></li>
                </TMPL_IF>
                </ul>
            </div>
			<div class="right">
				<TMPL_UNLESS IRS>
					<TMPL_UNLESS IRB>
						<ul id="support-links">
							<li><a target="_blank" href="https://accurint.custhelp.com/cgi-bin/accurint.cfg/php/enduser/chat.php">Live Chat</a></li>
							<li><a href="javascript:void(0);" onclick="javascript:open_help();">Help?</a></li>
							<li>1-866-277-8407</li>
							<li>
								<TMPL_UNLESS SHOW_MYACC_WITHOUT_PARENT>
									<a href="javascript:void(0);" onClick="self.onerror = function() {<TMPL_UNLESS NON_BILLABLE_SYSTEM_ADMIN>window.close();<TMPL_ELSE>javascript:send_event('LOGOUT');</TMPL_UNLESS> return true;}; if (opener) {if (!opener.closed){opener.focus()}}; <TMPL_UNLESS NON_BILLABLE_SYSTEM_ADMIN>window.close();<TMPL_ELSE>javascript:send_event('LOGOUT');</TMPL_UNLESS>">Close</a>
								</TMPL_UNLESS>                        
							</li>
						</ul>
					</TMPL_UNLESS>
				</TMPL_UNLESS>
			</div>
        </div>
    </div>
    
    <form name="MYACCOUNT_ORDER_REPORT" action="<TMPL_VAR NAME=ACTION>" method="post">
    <TMPL_INCLUDE NAME="common_hidden_input.tpl">
    <INPUT type=hidden NAME="SKIN_TYPE" VALUE="<TMPL_VAR NAME=SKIN_TYPE>">
    <INPUT type=hidden NAME="APPLICATION_TYPE" VALUE="<TMPL_VAR NAME=APPLICATION_TYPE>">
    <INPUT type=hidden NAME="EVENT">
    <INPUT type=hidden NAME="SUBJECT_ID">
    <INPUT type=hidden NAME="SEQ_NUM">
    <!-- <INPUT type=hidden NAME="VIEW_RESULTS_ORIGIN"> -->
      <table>
        <tr>
          <td>
              <div class="txtWrapper">
                <div id="txtCon">
					<div class="myaccount-section-title">Court Search Report</div>
					
					<div align="right"><TMPL_IF NAME="SHOW_BACK_BTN"><a class="btn red-btn" href="javascript:history.go(back);">Back</a>&nbsp;&nbsp;&nbsp;</TMPL_IF><a class="btn red-btn" href="javascript:parent.close();">Close</a></div>
					<fieldset>
						<div class="inline-block mgb10"><legend>Subject Information</legend></div>

						<table width="100%">
						<tr>
						  <td valign="top">
							<table width="50%" border="0" cellpadding="0" cellspacing="3">
							<tr>
							  <td nowrap valign="middle"><b>Name:</b></td>
							  <td nowrap valign="middle"><TMPL_VAR NAME="SUBJECT"></td>
							  <td nowrap valign="middle" width="50">&nbsp;</td>
							  <td nowrap valign="middle"><b>Order #:</b></td>
							  <td nowrap valign="middle"><TMPL_VAR NAME="SUBJECT_ID"></td>
							</tr>
							<tr>
						  <TMPL_IF BUSINESS_CS>
							  <td nowrap valign="middle" colspan="2">&nbsp;</td>
						  <TMPL_ELSE>
							  <td nowrap valign="middle"><b>SSN:</b></td>
							  <td nowrap valign="middle"><TMPL_VAR NAME="SSN"></td>
						  </TMPL_IF>
							  <td nowrap valign="middle" width="50">&nbsp;</td>
							  <td nowrap valign="middle"><b>Order Status:</b></td>
							  <td nowrap valign="middle"><TMPL_VAR NAME="ORDER_STATUS"></td>
							</tr>
							<tr>
							  <td nowrap valign="middle"><b>Date Submitted:</b></td>
							  <td nowrap valign="middle"><TMPL_VAR NAME="DATE_CREATED"></td>
							  <td nowrap valign="middle" width="50">&nbsp;</td>
							  <td nowrap valign="middle"><b>Reference Code:</b></td>
							  <td nowrap valign="middle"><TMPL_VAR NAME="REFERENCE_CODE"></td>
							</tr>
							</table>
						  </td>
						</tr>
						</table>
					</fieldset>

					<fieldset>
						<div class="inline-block mgb10"><legend>Order Summary</legend></div>
						<p>
						<table width="100%" border="1" cellpadding="3" cellspacing="0">
						<tr height="20" bgcolor="#d0ccd0">
						  <td nowrap align="center" valign="middle" width="10%"><b>Line #</b></td>
						  <td nowrap align="center" valign="middle"><b>County/State</b></td>
						  <td nowrap align="center" valign="middle"><b>Report Type</b></td>
						  <td nowrap align="center" valign="middle"><b>Status</b></td>
						</tr>
						  <TMPL_LOOP NAME="SUB_REPORTS">
						<tr>
						  <td nowrap align="center" valign="middle"><TMPL_VAR NAME="REPORT__SEQ_NUM"></td>
						  <td nowrap align="center" valign="middle"><TMPL_IF NAME="REPORT__COUNTY"><TMPL_VAR NAME="REPORT__COUNTY">, </TMPL_IF><TMPL_VAR NAME="REPORT__STATE"></td>
						  <td nowrap valign="middle"><TMPL_VAR NAME="REPORT__ITEM_DESC"></td>
						  <td nowrap align="center" valign="middle"><TMPL_IF NAME="REPORT__SHOW_ITEM"><a href="javascript:back--; location.hash='line-<TMPL_VAR NAME=REPORT__SEQ_NUM>'; void 0">Shown below</a><TMPL_ELSE><TMPL_IF NAME="REPORT__AVAILABLE"><a href="javascript:show_completed_order_item('<TMPL_VAR NAME=REPORT__SUBJECT_ID>', '<TMPL_VAR NAME=REPORT__SEQ_NUM>', 1);"><TMPL_VAR NAME="REPORT__STATUS"></a><TMPL_ELSE><TMPL_VAR NAME="REPORT__STATUS"></TMPL_IF></TMPL_IF></td>
						</tr>
						  </TMPL_LOOP>
						</table>
					</fieldset>

					<TMPL_IF NAME="SUB_REPORTS">
					<fieldset>
						<div class="inline-block mgb10"><legend>Reports</legend></div>

						<p>
						<table width="100%" border="1" cellpadding="0" cellspacing="0">
						  <TMPL_LOOP NAME="SUB_REPORTS">
							<TMPL_IF NAME="REPORT__SHOW_ITEM">
							<tr height="20" bgcolor="#d0ccd0">
							  <a name="line-<TMPL_VAR NAME='REPORT__SEQ_NUM'>"></a>
							  <td nowrap align="center" valign="middle"><b>Order #</b></td>
							  <td nowrap align="center" valign="middle"><b>Line #</b></td>
							  <td nowrap align="center" valign="middle"><b>Report Type</b></td>
							  <td nowrap align="center" valign="middle"><b>County/Federal District/State</b></td>
							</tr>

							<tr>
							  <td nowrap align="center" valign="middle"><TMPL_VAR NAME="REPORT__SUBJECT_ID"></td>
							  <td nowrap align="center" valign="middle"><TMPL_IF NAME="REPORT__SEQ_NUM"><TMPL_VAR NAME="REPORT__SEQ_NUM"><TMPL_ELSE>&nbsp;</TMPL_IF></td>
							  <td nowrap align="center" valign="middle"><TMPL_VAR NAME="REPORT__ITEM_DESC"></td>
							  <td nowrap align="center" valign="middle"><TMPL_IF NAME="REPORT__COUNTY"><TMPL_VAR NAME="REPORT__COUNTY"><TMPL_IF NAME="REPORT__STATE"> COUNTY,&nbsp;</TMPL_IF></TMPL_IF><TMPL_IF NAME="REPORT__STATE"><TMPL_VAR NAME="REPORT__STATE"><TMPL_ELSE>&nbsp;</TMPL_IF></td>
							</tr>

							<tr>
							  <td colspan="5"><pre><TMPL_VAR NAME="REPORT__DATA"></pre></td>
							</tr>

							<TMPL_IF NAME="REPORT__SUPPORTING_DATA">
							  <tr>
								<td colspan="5"><pre><TMPL_VAR NAME="REPORT__SUPPORTING_DATA"></pre></td>
							  </tr>
							</TMPL_IF>
						  <TMPL_IF NAME="RESULT_TABLE_OVERRIDE">
							  <tr>
								<td colspan="5"><pre><TMPL_VAR NAME="RESULT_TABLE_OVERRIDE"></pre></td>
							  </tr>
						  <TMPL_ELSE>
							<TMPL_IF NAME="RESULT_TABLE">
							  <tr>
								<td colspan="5"><TMPL_VAR NAME="RESULT_TABLE"></td>
							  </tr>
							</TMPL_IF>
						  </TMPL_IF>
							</TMPL_IF>
						  </TMPL_LOOP>
						</table>
						<TMPL_ELSE>
						<strong>No reports found</strong>
					</fieldset>
					</TMPL_IF>

						  <br> <br> <br> <br>

					<table width="100%" border="0" cellpadding="0" cellspacing="0">
					<tr>
					<td align="center" valign="middle">
					NOTE: The information contained in this report is secured from numerous third parties and processed by fallible sources. Such information may contain inaccuracies for which neither LexisNexis nor its subsidiaries or affiliated companies shall be responsible.  The information provided does not constitute a "Consumer Report" as defined in the federal Fair Credit Reporting Act, 15 U.S.C. 1681 et seq. (FCRA).  Accordingly, this product may not be used in whole or in part as a factor in determining eligibility for:  credit, insurance, employment or any other permissible purpose under the FCRA. Further, recipient shall not use this information in a manner that is contrary to, or in violation of any applicable federal, state, or local law, rule or regulation.
					</td>
					</tr>
					</table>
			</td>
		</tr>
	</table>
					
    </form>
	<TMPL_INCLUDE NAME="classic_footer.tpl">
  </body>
</html>
