<!-- begin one_report_results.tpl -->
<!--<TMPL_VAR NAME=SERVER_ID>-->
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-15">
    <link rel="stylesheet" type="text/css" href="<TMPL_VAR NAME='CSSPATH'>/style1.css">
    <link href="<TMPL_VAR NAME='CSSPATH'>/<TMPL_VAR NAME=SKIN_TYPE>/skin.css" rel="stylesheet" type="text/css">
<TMPL_IF ENABLE_V2>
<link href="<TMPL_VAR NAME='CSSPATH'>/accurint.css" rel="stylesheet" type="text/css">
<link href="<tmpl_var csspath>/<tmpl_var application_type>/diff.css" rel="stylesheet" type="text/css">
<link href="<TMPL_VAR NAME='CSSPATH'>/<TMPL_VAR NAME=APPLICATION_TYPE>/<TMPL_VAR NAME=USER_THEME>.css" rel="stylesheet" type="text/css">
</TMPL_IF>
    
    <link href="<TMPL_VAR NAME='CSSPATH'>/simple_date_picker.css" rel="stylesheet" type="text/css">
    <script src="<TMPL_VAR NAME='JSPATH'>/simple_date_picker.js"></script>
    
    <script src="<TMPL_VAR NAME='JSPATH'>/common.js"></script>
    <script src="<TMPL_VAR NAME='JSPATH'>/shared.js"></script>
    <script src="<TMPL_VAR NAME='JSPATH'>/res/report_manager.js"></script>
    <script src="<TMPL_VAR NAME='JSPATH'>/overlibmws.js"></script>
    <script src="<TMPL_VAR NAME='JSPATH'>/res/result_viewer.js"></script>
    <title>Rate Evasion Report</title>
  </head>

  <div id="overDiv" style="position:absolute; visibility:hidden; z-index:1000;"></div>
  
  <body topmargin="0" leftmargin="0" marginwidth="0" marginheight="0" ONLOAD="on_load()" ONRESIZE="on_resize()">
<TMPL_IF ENABLE_V2>
<div id="hd">
<h2><a trackid="hdr_top_logo">LexisNexis Accurint</a></h2>
</div>
</TMPL_IF>
  <form name="stored_search" method="post" action="<TMPL_VAR NAME='ACTION_BATCH'>">
    <TMPL_INCLUDE NAME=common_hidden_input.tpl>
    <input type=hidden name="ERROR_ERROR" value="">
    <input type=hidden name="EVENT" value="">
    <input type=hidden name="ORDERS_ID" value="<TMPL_VAR NAME=ORDERS_ID>">
    <input type=hidden name="ACTION_BATCH" value="<TMPL_VAR NAME="ACTION_BATCH">">

    <TMPL_UNLESS ENABLE_V2>
    <table width="100%" cellpadding="0" cellspacing="0">
      <tr>
        <td valign="top">
          <table border="0" cellpadding="0" cellspacing="0" width="100%" bgcolor="#cccccc">
            <tr>
              <td><img src="<TMPL_VAR NAME=IMGPATH>/res/batch22_ree.gif" width="680" height="66" border="0"></td>
            </tr>
            <tr>
              <td class="headerseparator" height="10"><img border="0" height="10" width="1" src="<TMPL_VAR NAME=IMGPATH>/spacer.gif"></td>
            </tr>
          </table>
        </td>
      </tr>
    </table>
    </TMPL_UNLESS>
    <div align="center">
      <br>
      <TMPL_INCLUDE NAME="res/stored_batch_viewer.tpl">
    </div>
    <TMPL_IF NAME="ERROR_MESSAGE">
      <script>alert('<TMPL_VAR ERROR_MESSAGE>\n\n');</script>
    </TMPL_IF>
  </form>
  </body>
</html>
<!-- end one_report_results.tpl -->
