<!-- Begin group_detail_report.tpl -->
<html>
<head>
<title><TMPL_IF GROUP_REPORT><TMPL_VAR GROUP_REPORT><TMPL_ELSE><TMPL_VAR USER_REPORT></TMPL_IF> Detail Report</title>
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


<table border="0" cellpadding="0" cellspacing="0" width="100%" align="right">
  <tr>
    <td class="unifont1bold" align="center"><TMPL_IF GROUP_REPORT>Group Detail Report - <TMPL_VAR GROUPNAME></TMPL_IF><TMPL_IF USER_REPORT>User Detail Report - <TMPL_VAR LOGINID></TMPL_IF></td>
  </tr>
  <tr>
    <td class="unifont1bold" align="center"><br />Date Range: <TMPL_VAR DATE_BEGIN> - <TMPL_VAR DATE_END></td>
  </tr>
  <tr>
    <td class="smallfont1" align="center"><br />Note: The search results listed may not match your invoice</td>
  </tr>
</table>
<br />

    <table align="center" width="96%" border="0">
    <tr>
    <td align="center">
        <div align="left" id="mainbody">
          <br />
          <span class="unifont1boldred">Detailed Report:</span>
          <br />
          <br />
          <TMPL_UNLESS ERROR_MSG>
            <table align="center" border="1" cellpadding="2" cellspacing="0" width="95%">
                <tr style="background-color:#E0E0E0;">
                  <th class="unifont1" style="text-align:center;" nowrap="nowrap">Ref Id</th>
                  <th class="unifont1" style="text-align:center;">Group</th>
                  <TMPL_IF GROUP_REPORT>
                  <th class="unifont1" style="text-align:center;">Userid</th>
                  </TMPL_IF>
                  <th class="unifont1" style="text-align:center;">Date/Time</th>
                  <th class="unifont1" style="text-align:center;">Search Terms</th>
                  <th class="unifont1" style="text-align:center;">Form Searched</th>
                </tr>
                <TMPL_LOOP RESULT_LOOP>
                  <tr <TMPL_IF NAME="ODD">style="background-color:#E0E0E0;"</TMPL_IF>>
                    <td class="unifont1" style="text-align:left;"><TMPL_VAR NAME=REF_ID>&nbsp;</td>
                    <td class="unifont1" style="text-align:left;"><TMPL_VAR NAME=GROUP_NAME>&nbsp;</td>
                    <TMPL_IF GROUP>
                    <td class="unifont1" style="text-align:left;"><TMPL_VAR NAME=USERID>&nbsp;</td>
                    </TMPL_IF>
                    <td class="unifont1" style="text-align:left;" nowrap="nowrap"><TMPL_VAR NAME=DATE>&nbsp;</td>
                    <td class="unifont1" style="text-align:left;"><TMPL_VAR NAME=SEARCH_TERMS>&nbsp;</td>
                    <td class="unifont1" style="text-align:left;"><TMPL_VAR NAME=FUNCTION_NAME>&nbsp;</td>
                  </tr>
                </TMPL_LOOP>
            </table>
            <table align="center" border="0" cellpadding="2" cellspacing="0" width="95%">
              <tr>
                <td class="unifont1bold" style="text-align:right;">Total Searches:&nbsp;&nbsp;<TMPL_VAR TOTAL_SEARCHES></td> 
              </tr>
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
<!-- End group_detail_report.tpl -->
