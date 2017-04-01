<!-- Begin user_list_report.tpl -->
<html>
<head>
<title>User List Report</title>
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

<body onLoad="" topmargin="0" leftmargin="0" marginwidth="0" marginheight="0">

<div id="hd">
<h2><a trackid="hdr_top_logo">LexisNexis <TMPL_IF FCOL>Collection Solutions<TMPL_ELSE>Accurint</TMPL_IF></a></h2>
</div>

<form name="GROUP_DETAIL_REPORT" action="<TMPL_VAR NAME=ACTION>" method="post">
<TMPL_INCLUDE NAME=common_hidden_input.tpl>
<INPUT type=hidden NAME="SKIN_TYPE" VALUE="<TMPL_VAR NAME=SKIN_TYPE>">
<INPUT type=hidden NAME="APPLICATION_TYPE" VALUE="<TMPL_VAR NAME=APPLICATION_TYPE>">
<INPUT type=hidden NAME="EVENT" VALUE="<TMPL_VAR NAME=EVENT>">
<INPUT type=hidden NAME="ACTION" VALUE="<TMPL_VAR NAME=ACTION_BATCH>">
<INPUT type=hidden NAME="SELECT_WORK_REQUEST" VALUE="">

<table align="center" width="96%" border="0">
<tr>
<td align="center">
    <div align="left" id="mainbody">
      <br />
      <span class="unifont1boldred">User List Report:</span>
      <br />
      <br />
      <TMPL_UNLESS ERROR_MSG>
        <table align="center" border="1" cellpadding="2" cellspacing="0" width="95%">
           <tr style="background-color:#E0E0E0;">
              <th class="unifont1" style="text-align:left;">Group</th>
              <th class="unifont1" style="text-align:left;">Account Number</th>
              <th class="unifont1" style="text-align:left;">Last Name</th>
              <th class="unifont1" style="text-align:left;">First Name</th>
              <th class="unifont1" style="text-align:left;">Userid</th>
              <th class="unifont1" style="text-align:left;">Status</th>
            </tr>
            <TMPL_LOOP RESULT_LOOP>
              <tr <TMPL_IF NAME="ODD">style="background-color:#E0E0E0;"</TMPL_IF>>
                <td class="unifont1" style="text-align:left;"><TMPL_IF NAME=GROUP_NAME><TMPL_VAR NAME=GROUP_NAME><TMPL_ELSE>&nbsp;</TMPL_IF></td>
                <td class="unifont1" style="text-align:left;"><TMPL_IF NAME=ACCOUNTNUMBER><TMPL_VAR NAME=ACCOUNTNUMBER><TMPL_ELSE>&nbsp;</TMPL_IF></td>
                <td class="unifont1" style="text-align:left;"><TMPL_IF NAME=LAST_NAME><TMPL_VAR LAST_NAME><TMPL_ELSE>&nbsp;</TMPL_IF></td>
                <td class="unifont1" style="text-align:left;"><TMPL_IF NAME=FIRST_NAME><TMPL_VAR FIRST_NAME><TMPL_ELSE>&nbsp;</TMPL_IF></td>
                <td class="unifont1" style="text-align:left;"><TMPL_IF NAME=USERID><TMPL_VAR NAME=USERID><TMPL_ELSE>&nbsp;</TMPL_IF></td>
                <td class="unifont1" style="text-align:left;"><TMPL_IF NAME=STATUS><TMPL_VAR NAME=STATUS><TMPL_ELSE>&nbsp;</TMPL_IF></td>
              </tr>
            </TMPL_LOOP>
        </table>
      <TMPL_ELSE>
        <table border="0" cellpadding="2" cellspacing="0" width="100%">
          <tr>
            <td class="unifont1" align="center"><TMPL_VAR ERROR_MSG></td>
          </tr>
        </table>
      </TMPL_UNLESS>
  </div>
</td>
</tr>
</table>
</form>
</body>
</html>
<!-- End user_list_report.tpl -->
