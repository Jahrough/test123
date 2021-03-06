<!-- Begin management_user_report.tpl -->
<html>
<head>
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

<form name="GROUP_SUMMARY_REPORT" action="<TMPL_VAR NAME=ACTION>" method="post">
<TMPL_INCLUDE NAME=common_hidden_input.tpl>
<INPUT type=hidden NAME="SKIN_TYPE" VALUE="<TMPL_VAR NAME=SKIN_TYPE>">
<INPUT type=hidden NAME="APPLICATION_TYPE" VALUE="<TMPL_VAR NAME=APPLICATION_TYPE>">
<INPUT type=hidden NAME="EVENT" VALUE="<TMPL_VAR NAME=EVENT>">
<INPUT type=hidden NAME="ACTION" VALUE="<TMPL_VAR NAME=ACTION_BATCH>">
<INPUT type=hidden NAME="SELECT_WORK_REQUEST" VALUE="">
<INPUT type=hidden NAME="PATH" VALUE="<TMPL_VAR IMGPATH>">


<table border="0" cellpadding="0" cellspacing="0" width="100%" align="right">
  <tr>
    <td class="unifont1bold" align="center">Management Group Report</td>
  </tr>
</table>
<br />
    <table align="center" width="96%" border="0">
    <tr>
    <td align="center">
        <div align="left" id="mainbody">
          <br />
          <TMPL_UNLESS ERROR_MSG>
            <span class="unifont1bold">&nbsp;&nbsp;&nbsp;BillGroup:&nbsp;<TMPL_VAR BILLGROUP></span>
            <br />
            <br />
            <table align="center" border="1" cellpadding="2" cellspacing="0" width="95%">
                <TMPL_LOOP RESULT_LOOP>
                  <tr>
                    <td colspan="2"><span class="unifont1bold">Group Name:</span>&nbsp;<span class="unifont1"><TMPL_VAR GROUP_NAME></span></td>
                  </tr>
                  <tr>
                      <td class="unifont1bold">User Name</td>
                      <td class="unifont1bold" align="left">User ID</td>
                  </tr>
                  <TMPL_LOOP GROUP_USERS>
                  <tr>
                    <td class="unifont1" ><TMPL_VAR USERNAME>&nbsp;</td>
                    <td class="unifont1" ><TMPL_VAR USERID>&nbsp;</td>
                  </tr>
                  </TMPL_LOOP>
                  <tr>
                  <td colspan="2">&nbsp;</td>
                  </tr>
                </TMPL_LOOP>
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
<!-- End management_user_report.tpl -->
