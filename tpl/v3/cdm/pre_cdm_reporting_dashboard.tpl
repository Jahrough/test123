<!-- Begin pre_cdm_reporting_dashboard.tpl -->
<html>
<head>
<title>Core Data Management Reporting Dashboard</title>
<link href="<TMPL_VAR NAME='CSSPATH'>/<TMPL_VAR NAME=SKIN_TYPE>/skin.css" rel="stylesheet" type="text/css">
<link href="<TMPL_VAR NAME='CSSPATH'>/style1.css" rel="stylesheet" type="text/css">
<link href="<TMPL_VAR NAME='CSSPATH'>/accurint.css" rel="stylesheet" type="text/css">
<link href="<tmpl_var csspath>/<tmpl_var application_type>/diff.css" rel="stylesheet" type="text/css">
<link href="<TMPL_VAR NAME='JSPATH'>/assets/ui/css/style.css" rel="stylesheet" type="text/css" />
<link href="<TMPL_VAR NAME='CSSPATH'>/simple_date_picker.css" rel="stylesheet" type="text/css">
<TMPL_IF NAME="CDM_HEA">
<link href="<TMPL_VAR NAME='CSSPATH'>/hea/tabs.css" rel="stylesheet" type="text/css">
<TMPL_ELSE>
<link href="<TMPL_VAR NAME='CSSPATH'>/<TMPL_VAR NAME=APPLICATION_TYPE>/<TMPL_VAR NAME=USER_THEME>.css" rel="stylesheet" type="text/css">
</TMPL_IF>
<script src="<TMPL_VAR NAME='JSPATH'>/common.js"></script>
<script src="<tmpl_var name='JSPATH'>/prototype.js"></script>
<script src="<TMPL_VAR NAME='JSPATH'>/shared.js"></script>
<script src="<TMPL_VAR NAME='JSPATH'>/simple_date_picker.js"></script>
<script src="<TMPL_VAR NAME='JSPATH'>/search_javascript.js"></script>

<script type="text/javascript" src="<TMPL_VAR NAME='JSPATH'>/Charts/FusionCharts.js"></script>
<script type="text/javascript" language="Javascript" src="<TMPL_VAR NAME='JSPATH'>/assets/ui/js/jquery.min.js"></script>
<script type="text/javascript" language="Javascript" src="<TMPL_VAR NAME='JSPATH'>/assets/ui/js/lib.js"></script>


<link rel="stylesheet" href="http://code.jquery.com/ui/1.9.2/themes/base/jquery-ui.css" />
<script src="http://code.jquery.com/jquery-1.8.3.js"></script>
<script src="http://code.jquery.com/ui/1.9.2/jquery-ui.js"></script>
</head>

<body onLoad="send_event('CDM/SHOW_CDM');" topmargin="0" leftmargin="0" marginwidth="0" marginheight="0">

<div id="hd">
<h2><a trackid="hdr_top_logo">LexisNexis Accurint</a></h2>
</div>

<form name="CDM_REPORTING_DASHBOARD" action="<TMPL_VAR NAME=ACTION>" method="post">
    <TMPL_INCLUDE NAME=common_hidden_input.tpl>
    <INPUT type=hidden NAME="SKIN_TYPE" VALUE="<TMPL_VAR NAME=SKIN_TYPE>">
    <INPUT type=hidden NAME="APPLICATION_TYPE" VALUE="<TMPL_VAR NAME=APPLICATION_TYPE>">
    <INPUT type=hidden NAME="EVENT" VALUE="<TMPL_VAR NAME=EVENT>">
    <INPUT type=hidden NAME="ACTION" VALUE="<TMPL_VAR NAME=ACTION_BATCH>">
    <INPUT type=hidden NAME="SELECT_WORK_REQUEST" VALUE="">
    <INPUT type=hidden NAME="PMTAB" VALUE="0">


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
<!-- End pre_cdm_reporting_dashboard.tpl -->