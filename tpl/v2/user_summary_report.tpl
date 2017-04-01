<!-- Begin user_summary_report.tpl -->
<html>
<head>
<title>User Summary Report</title>
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

<form name="BATCH_REPORTING_DASHBOARD" action="<TMPL_VAR NAME=ACTION_BATCH>" method="post">
<TMPL_INCLUDE NAME=common_hidden_input.tpl>
<INPUT type=hidden NAME="SKIN_TYPE" VALUE="<TMPL_VAR NAME=SKIN_TYPE>">
<INPUT type=hidden NAME="APPLICATION_TYPE" VALUE="<TMPL_VAR NAME=APPLICATION_TYPE>">
<INPUT type=hidden NAME="EVENT" VALUE="<TMPL_VAR NAME=EVENT>">
<INPUT type=hidden NAME="ACTION" VALUE="<TMPL_VAR NAME=ACTION_BATCH>">
<INPUT type=hidden NAME="SELECT_WORK_REQUEST" VALUE="">


<table border="0" cellpadding="0" cellspacing="0" width="100%" align="right">
  <tr>
    <td class="unifont1bold" align="center">User Summary Report - <TMPL_VAR LOGINID></td>
  </tr>
  <tr>
    <td class="unifont1" align="center"><br />Date Range: <TMPL_VAR DATE_BEGIN> - <TMPL_VAR DATE_END></td>
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
          <span class="unifont1boldred">Summary Report:</span>
          <br />
          <br />
          <TMPL_UNLESS ERROR_MSG>
            <span class="unifont1bold">&nbsp;&nbsp;&nbsp;Number of Searches By Search Type:</span>
            <br />
            <table align="center" border="0" cellpadding="2" cellspacing="0" width="95%">
                <TMPL_LOOP SEARCH_TYPE>
                  <tr <TMPL_IF NAME="ODD">style="background-color:#E0E0E0;"</TMPL_IF>>
                    <td class="unifont1" ><TMPL_VAR NAME=FUNCTION_NAME></td>
                    <td class="unifont1" style="text-align:right;"><TMPL_VAR NAME=TYPE_COUNT></td>
                  </tr>
                <TMPL_IF ODD></TMPL_IF></TMPL_LOOP>
              <tr>
                <td class="unifont1bold">&nbsp;&nbsp;&nbsp;Total:</td> 
                <td class="unifont1" style="text-align:right;"><TMPL_VAR SEARCH_TYPE_TOTAL></td> 
              </tr>
            </table>
            <br />
            <span class="unifont1bold">&nbsp;&nbsp;&nbsp;Number of Searches By Reference ID:</span>
            <br />
            <table align="center" border="0" cellpadding="2" cellspacing="0" width="95%">
                <TMPL_LOOP REFERENCE_CODE>
                  <tr <TMPL_IF NAME="ODD">style="background-color:#E0E0E0;"</TMPL_IF>>
                    <td class="unifont1" ><TMPL_VAR NAME=FUNCTION_NAME></td>
                    <td class="unifont1" style="text-align:right;"><TMPL_VAR NAME=TYPE_COUNT></td>
                  </tr>
                </TMPL_LOOP>
              <tr>
                <td class="unifont1bold">&nbsp;&nbsp;&nbsp;Total:</td> 
                <td class="unifont1" style="text-align:right;"><TMPL_VAR REFERENCE_CODE_TOTAL></td> 
              </tr>
            </table>
            <br />
            <span class="unifont1bold">&nbsp;&nbsp;&nbsp;Daily Average of Searches By Search Type:</span>
            <br />
            <table align="center" border="0" cellpadding="2" cellspacing="0" width="95%">
                <TMPL_LOOP SEARCH_TYPE_AVG>
                  <tr <TMPL_IF NAME="ODD">style="background-color:#E0E0E0;"</TMPL_IF>>
                    <td class="unifont1" ><TMPL_VAR NAME=FUNCTION_NAME></td>
                    <td class="unifont1" style="text-align:right;"><TMPL_VAR NAME=TYPE_COUNT></td>
                  </tr>
                </TMPL_LOOP>
            </table>
            <br />
            <span class="unifont1bold">&nbsp;&nbsp;&nbsp;Daily Average of Searches By Reference ID:</span>
            <br />
            <table align="center" border="0" cellpadding="2" cellspacing="0" width="95%">
                <TMPL_LOOP REFERENCE_CODE_AVG>
                  <tr <TMPL_IF NAME="ODD">style="background-color:#E0E0E0;"</TMPL_IF>>
                    <td class="unifont1" ><TMPL_VAR NAME=FUNCTION_NAME></td>
                    <td class="unifont1" style="text-align:right;"><TMPL_VAR NAME=TYPE_COUNT></td>
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
    <tr>
    <td><br /></td>
    </tr>
    </table>
</form>
</body>
</html>
<!-- End user_summary_report.tpl -->
