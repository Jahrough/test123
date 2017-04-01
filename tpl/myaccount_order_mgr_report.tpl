

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>Court Search Report</title>
    <link href="<TMPL_VAR NAME='CSSPATH'>/style1.css" rel="stylesheet" type="text/css">
<link href="<TMPL_VAR NAME='CSSPATH'>/<TMPL_IF NAME=ENABLE_V2>v2/</TMPL_IF><TMPL_VAR NAME=SKIN_TYPE>/skin.css" rel="stylesheet" type="text/css">
<TMPL_IF NAME="ENABLE_V2">
<link href="<tmpl_var csspath>/v2/<tmpl_var application_type>/diff.css" rel="stylesheet" type="text/css">
</TMPL_IF>
    <TMPL_IF ENABLE_V2>
    <link href="<TMPL_VAR NAME='CSSPATH'>/v2/accurint.css" rel="stylesheet" type="text/css">
    <link href="<tmpl_var csspath>/v2/<tmpl_var application_type>/diff.css" rel="stylesheet" type="text/css">
    </TMPL_IF>
    <script src="<TMPL_VAR NAME='JSPATH'>/common.js"></script>
    <script src="<TMPL_VAR NAME='JSPATH'>/shared.js"></script>
    <script src="<TMPL_VAR NAME='JSPATH'>/order_mgr.js"></script>
    <script>var back = -1;</script>
  </head>

  <body onload="set_window_focus();setInterval('checkparent()',2000);reset_parent_target();">
    
    <form name="MYACCOUNT_ORDER_REPORT" action="<TMPL_VAR NAME=ACTION>" method="post">
    <TMPL_INCLUDE NAME=common_hidden_input.tpl>
    <INPUT type=hidden NAME="SKIN_TYPE" VALUE="<TMPL_VAR NAME=SKIN_TYPE>">
    <INPUT type=hidden NAME="APPLICATION_TYPE" VALUE="<TMPL_VAR NAME=APPLICATION_TYPE>">
    <INPUT type=hidden NAME="EVENT">
    <INPUT type=hidden NAME="SUBJECT_ID">
    <INPUT type=hidden NAME="SEQ_NUM">
    <INPUT type=hidden NAME="VIEW_RESULTS_ORIGIN">
    <div align="center" class="myaccounttitle">Court Search Report</div><p>

    <div align="right"><TMPL_IF NAME="SHOW_BACK_BTN"><a href="javascript:history.go(back);"><img src="<TMPL_VAR NAME=IMGPATH>/back.gif" width="54" height="29" border="0"></a></TMPL_IF><a href="javascript:parent.close();"><img src="<TMPL_VAR NAME=IMGPATH>/close.gif" width="54" height="29" border="0"></a></div>

    <div class="myaccounttitle">Subject Information</div><p>

    <table width="100%">
	<tr>
	  <td valign="top">
	    <table width="50%" border="0" cellpadding="0" cellspacing="3">
		<tr>
		  <td class="smallfont1" nowrap valign="middle"><b>Name:</b></td>
		  <td class="smallfont1" nowrap valign="middle"><TMPL_VAR NAME="SUBJECT"></td>
		  <td class="smallfont1" nowrap valign="middle" width="50">&nbsp;</td>
		  <td class="smallfont1" nowrap valign="middle"><b>Order #:</b></td>
		  <td class="smallfont1" nowrap valign="middle"><TMPL_VAR NAME="SUBJECT_ID"></td>
		</tr>
		<tr>
      <TMPL_IF BUSINESS_CS>
		  <td class="smallfont1" nowrap valign="middle" colspan="2">&nbsp;</td>
      <TMPL_ELSE>
		  <td class="smallfont1" nowrap valign="middle"><b>SSN:</b></td>
		  <td class="smallfont1" nowrap valign="middle"><TMPL_VAR NAME="SSN"></td>
      </TMPL_IF>
		  <td class="smallfont1" nowrap valign="middle" width="50">&nbsp;</td>
		  <td class="smallfont1" nowrap valign="middle"><b>Order Status:</b></td>
		  <td class="smallfont1" nowrap valign="middle"><TMPL_VAR NAME="ORDER_STATUS"></td>
		</tr>
		<tr>
		  <td class="smallfont1" nowrap valign="middle"><b>Date Submitted:</b></td>
		  <td class="smallfont1" nowrap valign="middle"><TMPL_VAR NAME="DATE_CREATED"></td>
		  <td class="smallfont1" nowrap valign="middle" width="50">&nbsp;</td>
		  <td class="smallfont1" nowrap valign="middle"><b>Reference Code:</b></td>
		  <td class="smallfont1" nowrap valign="middle"><TMPL_VAR NAME="REFERENCE_CODE"></td>
		</tr>
	    </table>
	  </td>
	</tr>
    </table>

    <p>

    <div class="myaccounttitle">Order Summary</div>
    <p>
    <table width="100%" border="1" cellpadding="3" cellspacing="0">
	<tr height="20" bgcolor="#d0ccd0">
	  <td class="smallfont1" nowrap align="center" valign="middle" width="10%"><b>Line #</b></td>
	  <td class="smallfont1" nowrap align="center" valign="middle"><b>County/State</b></td>
	  <td class="smallfont1" nowrap align="center" valign="middle"><b>Report Type</b></td>
	  <td class="smallfont1" nowrap align="center" valign="middle"><b>Status</b></td>
	</tr>
      <TMPL_LOOP NAME="SUB_REPORTS">
	<tr>
	  <td class="smallfont1" nowrap align="center" valign="middle"><TMPL_VAR NAME="REPORT__SEQ_NUM"></td>
	  <td class="smallfont1" nowrap align="center" valign="middle"><TMPL_IF NAME="REPORT__COUNTY"><TMPL_VAR NAME="REPORT__COUNTY">, </TMPL_IF><TMPL_VAR NAME="REPORT__STATE"></td>
	  <td class="smallfont1" nowrap valign="middle"><TMPL_VAR NAME="REPORT__ITEM_DESC"></td>
	  <td class="smallfont1" nowrap align="center" valign="middle"><TMPL_IF NAME="REPORT__SHOW_ITEM"><a href="javascript:back--; location.hash='line-<TMPL_VAR NAME=REPORT__SEQ_NUM>'; void 0">Shown below</a><TMPL_ELSE><TMPL_IF NAME="REPORT__AVAILABLE"><a href="javascript:show_completed_order_item('<TMPL_VAR NAME=REPORT__SUBJECT_ID>', '<TMPL_VAR NAME=REPORT__SEQ_NUM>', 1);"><TMPL_VAR NAME="REPORT__STATUS"></a><TMPL_ELSE><TMPL_VAR NAME="REPORT__STATUS"></TMPL_IF></TMPL_IF></td>
	</tr>
      </TMPL_LOOP>
    </table>

    <p>

    <TMPL_IF NAME="SUB_REPORTS">
    <div class="myaccounttitle">Reports</div><p>

	<p>
	<table width="100%" border="1" cellpadding="0" cellspacing="0">
	  <TMPL_LOOP NAME="SUB_REPORTS">
	    <TMPL_IF NAME="REPORT__SHOW_ITEM">
	    <tr height="20" bgcolor="#d0ccd0">
	      <a name="line-<TMPL_VAR NAME='REPORT__SEQ_NUM'>"></a>
	      <td class="smallfont1" nowrap align="center" valign="middle"><b>Order #</b></td>
	      <td class="smallfont1" nowrap align="center" valign="middle"><b>Line #</b></td>
	      <td class="smallfont1" nowrap align="center" valign="middle"><b>Report Type</b></td>
	      <td class="smallfont1" nowrap align="center" valign="middle"><b>County/Federal District/State</b></td>
	    </tr>

	    <tr>
	      <td class="smallfont1" nowrap align="center" valign="middle"><TMPL_VAR NAME="REPORT__SUBJECT_ID"></td>
	      <td class="smallfont1" nowrap align="center" valign="middle"><TMPL_IF NAME="REPORT__SEQ_NUM"><TMPL_VAR NAME="REPORT__SEQ_NUM"><TMPL_ELSE>&nbsp;</TMPL_IF></td>
	      <td class="smallfont1" nowrap align="center" valign="middle"><TMPL_VAR NAME="REPORT__ITEM_DESC"></td>
	      <td class="smallfont1" nowrap align="center" valign="middle"><TMPL_IF NAME="REPORT__COUNTY"><TMPL_VAR NAME="REPORT__COUNTY"><TMPL_IF NAME="REPORT__STATE"> COUNTY,&nbsp;</TMPL_IF></TMPL_IF><TMPL_IF NAME="REPORT__STATE"><TMPL_VAR NAME="REPORT__STATE"><TMPL_ELSE>&nbsp;</TMPL_IF></td>
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
    </TMPL_IF>

	  <br> <br> <br> <br>

<table width="100%" border="0" cellpadding="0" cellspacing="0">
<tr>
<td class="smallfont1" align="center" valign="middle">
NOTE: The information contained in this report is secured from numerous third parties and processed by fallible sources. Such information may contain inaccuracies for which neither LexisNexis nor its subsidiaries or affiliated companies shall be responsible.  The information provided does not constitute a "Consumer Report" as defined in the federal Fair Credit Reporting Act, 15 U.S.C. 1681 et seq. (FCRA).  Accordingly, this product may not be used in whole or in part as a factor in determining eligibility for:  credit, insurance, employment or any other permissible purpose under the FCRA. Further, recipient shall not use this information in a manner that is contrary to, or in violation of any applicable federal, state, or local law, rule or regulation.
</td>
</tr>
</table>
    </form>
  </body>
</html>
