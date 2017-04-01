<!-- begin: $RCSfile: short_contact_card_report.tpl,v $ -->
<!--<TMPL_VAR NAME=SERVER_ID>-->
<html>
<head>
<title><TMPL_VAR NAME="REPORT_NAME"></title>
<!-- Begin short_contact_card_report.tpl -->
<TMPL_INCLUDE NAME="includes_info.tpl">
<link href="<TMPL_VAR NAME='CSSPATH'>/reports.css" rel="stylesheet" type="text/css">
<script src="<TMPL_VAR NAME='JSPATH'>/pricing.js"></script>
<script src="<TMPL_VAR NAME='JSPATH'>/report.js"></script>
</head>

<body class="ac_report" topmargin="0" leftmargin="0" marginwidth="0" marginheight="0"  onLoad="window.focus();">
<TMPL_INCLUDE NAME="report_header.tpl">

<form name="SHORT_REPORT" action="<TMPL_VAR NAME=ACTION_REPORT>" method="post"> 
<TMPL_INCLUDE NAME="short_report_hidden_inputs.tpl">	

<div id="mainbody" role="dialog" class="w770px reportCon">
  <div class="row-wrapper">
      <h1><TMPL_VAR NAME="REPORT_NAME"></h1>
  </div>
  <div class="row-wrapper">
      <h2>Subject Information</h2>
  </div>
  <div class="row-wrapper">
    <div class="ta-center">
      <input name="BUTTON" class="report-btn red-btn" type="button" value="<TMPL_IF REPORT_BUTTON><TMPL_VAR NAME=REPORT_BUTTON><TMPL_ELSE>Request Report</TMPL_IF>" onClick="send_report_selector('<TMPL_VAR NAME="REPORT_EVENT">');">
      <input name="BUTTON" class="report-btn grey-btn" type="button" value="Cancel" onClick="window.close();">
    </div>
  </div>
  <div class="row-wrapper" style="margin-bottom:30px;">
    <table class="info-table">
      <tr>
	    <th id="col_name"><strong>Name</strong></th>
	    <th id="col_addr"><b>Address</b></th>
	    <th id="col_lexid"><b>LexID</b></th>
      </tr>
      <tr>
	    <td headers="col_name"><TMPL_VAR NAME=FULL_NAME></td>
	    <td headers="col_adr"><TMPL_VAR NAME=ADDRESS><br><TMPL_VAR NAME=CSZ></td>
	    <td headers="col_lexid"><TMPL_VAR NAME=UNIQUEID></td>
      </tr>
    </table>
  </div>
<TMPL_INCLUDE NAME="short_contact_card_report_body.tpl">
</div>

</form>

<TMPL_INCLUDE NAME="report_footer.tpl">

</body>
</html>
<!-- end: $RCSfile: short_contact_card_report.tpl,v $ -->
