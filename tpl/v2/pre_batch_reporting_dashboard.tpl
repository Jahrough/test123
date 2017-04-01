<!-- Begin pre_reporting_dashboard.tpl -->
<html>
<head>
<title>Batch Reporting Dashboard Redirect</title>
<link href="<TMPL_VAR NAME='CSSPATH'>/<TMPL_VAR NAME=SKIN_TYPE>/skin.css" rel="stylesheet" type="text/css">
<link href="<TMPL_VAR NAME='CSSPATH'>/style1.css" rel="stylesheet" type="text/css">
<link href="<TMPL_VAR NAME='CSSPATH'>/accurint.css" rel="stylesheet" type="text/css">
<link href="<tmpl_var csspath>/<tmpl_var application_type>/diff.css" rel="stylesheet" type="text/css">
<link href="<TMPL_VAR NAME='CSSPATH'>/<TMPL_VAR NAME=APPLICATION_TYPE>/<TMPL_VAR NAME=USER_THEME>.css" rel="stylesheet" type="text/css">
<script src="<TMPL_VAR NAME='JSPATH'>/common.js"></script>
<script src="<tmpl_var name='JSPATH'>/prototype.js"></script>
<script src="<TMPL_VAR NAME='JSPATH'>/shared.js"></script>
<script src="<TMPL_VAR NAME='JSPATH'>/batch_reporting_dashboard.js"></script>

</head>

<body onLoad="send_event('MYACCOUNT/SHOW_BATCH_REPORTING_DASHBOARD');" topmargin="0" leftmargin="0" marginwidth="0" marginheight="0">

<div id="hd">
<h2><a trackid="hdr_top_logo">LexisNexis Accurint</a></h2>
</div>

<form name="BATCH_REPORTING_DASHBOARD" action="<TMPL_VAR NAME=ACTION_BATCH>" method="post">
<TMPL_INCLUDE NAME=common_hidden_input.tpl>
<INPUT type=hidden NAME="SKIN_TYPE" VALUE="<TMPL_VAR NAME=SKIN_TYPE>">
<INPUT type=hidden NAME="APPLICATION_TYPE" VALUE="<TMPL_VAR NAME=APPLICATION_TYPE>">
<INPUT type=hidden NAME="EVENT" VALUE="<TMPL_VAR NAME=EVENT>">
<INPUT type=hidden NAME="ACTION" VALUE="<TMPL_VAR NAME=ACTION_BATCH>">
<INPUT type=hidden NAME="SELECT_WORK_REQUEST" VALUE="">


<table border="0" cellpadding="0" cellspacing="0" width="89%" align="right">
  <tr>
    <td class="unifont1" align="left" rowspan="2"><img alt="" src="<TMPL_VAR NAME=IMGPATH>/spacer.gif" width="1" height="1" border="0">
    </td>
    <td class="unifont1" align="right" width="70%" valign="bottom"><TMPL_UNLESS IRB><TMPL_UNLESS IRS><b>24/7 Search and Technical Assistance&nbsp; <font color="#ed1c24">1-866-277-8407</font></b>&nbsp;</TMPL_UNLESS></TMPL_UNLESS>&nbsp;</td>
  </tr>
</table>
<br />
<br />
<br />
<br />
<br />
<br />
<div id="waiting" style="display:visible;" align="center">
  <img id="loading" src="/bps/images/v2/bg_processing.gif" border="0" width="300" height="65"></img>
</div>

</div>

</form>
</body>
</html>
<!-- End pre_reporting_dashboard.tpl -->
