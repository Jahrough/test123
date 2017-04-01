<!-- begin report_manager.tpl -->
<!--<TMPL_VAR NAME=SERVER_ID>-->
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-15">
    <link rel="stylesheet" type="text/css" href="<TMPL_VAR NAME='CSSPATH'>/style1.css">
    <link rel="stylesheet" type="text/css" href="<TMPL_VAR NAME='CSSPATH'>/dni.css">
    <link href="<TMPL_VAR NAME='CSSPATH'>/dni_skin.css" rel="stylesheet" type="text/css">
    
    <link href="<TMPL_VAR NAME='CSSPATH'>/simple_date_picker.css" rel="stylesheet" type="text/css">
    <script src="<TMPL_VAR NAME='JSPATH'>/simple_date_picker.js"></script>
    
    <script src="<TMPL_VAR NAME='JSPATH'>/common.js"></script>
    <script src="<TMPL_VAR NAME='JSPATH'>/shared.js"></script>
    <script src="<TMPL_VAR NAME='JSPATH'>/dni/report_manager.js"></script>
    <script src="<TMPL_VAR NAME='JSPATH'>/overlibmws.js"></script>
    <script src="<TMPL_VAR NAME='JSPATH'>/please_wait.js"></script>
    <title>Report Manager</title>
  </head>

  <div id="pleasewait" style="position:absolute; visibility:hidden; z-index:1000;"><img src="<TMPL_VAR NAME=IMGPATH>/arrows_wait_full.gif" id="pw" name="pw" width="400" height="120" border="0"></div>
  
  <div id="overDiv" style="position:absolute; visibility:hidden; z-index:1000;"></div>
  
  <body onBlur="killpw();" topmargin="0" leftmargin="0" marginwidth="0" marginheight="0"<TMPL_IF NAME=STORED_BATCH_VIEWER> ONLOAD="on_load()" ONRESIZE="on_resize()"</TMPL_IF>>
  <form name="stored_search" method="post" action="<TMPL_VAR NAME='ACTION_LP'>">
    <TMPL_INCLUDE NAME=common_hidden_input.tpl>
    <input type=hidden name="EVENT" value="<TMPL_VAR NAME='DEFAULT_EVENT'>">
    <input type=hidden name="ERROR_ERROR" value="">
    <input type=hidden name="CURRENT_PAGE" value="<TMPL_VAR NAME="CURRENT_PAGE">">
    <input type=hidden name="TOTAL_RECS" value="<TMPL_VAR NAME="TOTAL_RECS">">
    <input type=hidden name="SEARCH_TRANSACTION" value="<TMPL_VAR NAME='SEARCH_TRANSACTION'>">
    <input type=hidden name="START_DATE_PREVIOUS" value="<TMPL_VAR NAME="START_DATE">">
    <input type=hidden name="END_DATE_PREVIOUS" value="<TMPL_VAR NAME="END_DATE">">
    <input type=hidden name="PREVIOUS_SEARCH" value="<TMPL_VAR NAME="SEARCH_FIELD">">
    <input type=hidden name="JOB_ID" value="<TMPL_VAR NAME="JOB_ID">">
    <input type=hidden name="SORT_ON" value="<TMPL_VAR NAME="SORT_ON">">
    <input type=hidden name="PREVIOUS_SORT_ON" value="<TMPL_VAR NAME="SORT_ON">">
    <input type=hidden name="SORT_DIRECTION" value="<TMPL_VAR NAME="SORT_DIRECTION">">
    <input type=hidden name="RESET_SORT" value="0">
    <input type=hidden name="SUBJECT_ID" value="">
    <input type=hidden name="ACTION_LP" value="<TMPL_VAR NAME="ACTION_LP">">

    <div align="center">
      <TMPL_UNLESS NAME="BATCH_RESULTS">
      <br>
      <table border="0" cellpadding="0" cellspacing="0" width="95%">
        <tr>
          <td valign="top" align="center" width="100%">
            <table border="0" cellpadding="0" cellspacing="0" width="100%">
              <tr>
                <TMPL_UNLESS NAME="BATCH_RESULTS">
                <td colspan="7" align="left" class="largefont1bold">Report Manager</td>
                </TMPL_UNLESS>
                <TMPL_IF NAME="BATCH_RESULTS">
                <td align="right"><a href="javascript:send_event('DNI/BATCHES')"><img src="<TMPL_VAR NAME='IMGPATH'>/../ln_images/res/reeb_batch_orders.gif" height="26" width="82" border="0"></a></td>
                <TMPL_ELSE>
                <td align="right"><a href="javascript:send_event('DNI/BATCHES')"><img src="<TMPL_VAR NAME='IMGPATH'>/../ln_images/res/reeb_refresh.gif" height="26" width="82" border="0"></a></td>
                </TMPL_IF>
                <td align="left"><a href="javascript:void(0);" onClick="self.onerror = function() {window.close(); return true;}; if (opener) {if (!opener.closed){opener.focus()}}; window.close();"><img src="<TMPL_VAR NAME='IMGPATH'>/../ln_images/res/reeb_close.gif" height="26" width="82" border="0"></a></td>
              </tr>
              <tr>
                <TMPL_UNLESS NAME="DONT_SHOW_DATES">
                <td height="40" class="unifont1"><a href="javascript:void(0);" onClick="displayDatePicker('START_DATE');"><b>From:</b></a>&nbsp;&nbsp;</td>
                <td height="40"><input type="text" size="12" maxlength="10" name="START_DATE" value="<TMPL_VAR NAME="START_DATE">"></td>
                <td height="40" class="unifont1">&nbsp;&nbsp;&nbsp;&nbsp;<a href="javascript:void(0);" onClick="displayDatePicker('END_DATE');"><b>To:</b></a>&nbsp;&nbsp;</td>
                <td height="40"><input type="text" size="12" maxlength="10" name="END_DATE" value="<TMPL_VAR NAME="END_DATE">"></td>
                <TMPL_ELSE>
                <td align="center" colspan="4">&nbsp;</td>
                </TMPL_UNLESS>
                <TMPL_UNLESS NAME="BATCH_RESULTS">
                <td height="40" class="unifont1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                <td align="right">&nbsp;</td>
                <td align="right"><TMPL_IF NAME="PREV_ACTIVE"><a href="javascript:send_event('<TMPL_VAR NAME='DEFAULT_EVENT'>_PREV')"><img src="<TMPL_VAR NAME='IMGPATH'>/../ln_images/res/reeb_back.gif" height="26" width="82" border="0"></a><TMPL_ELSE><img src="<TMPL_VAR NAME='IMGPATH'>/spacer.gif" height="26" width="82" border="0"></TMPL_IF></td>
                <td align="left"><TMPL_IF NAME="NEXT_ACTIVE"><a href="javascript:send_event('<TMPL_VAR NAME='DEFAULT_EVENT'>_NEXT')"><img src="<TMPL_VAR NAME='IMGPATH'>/../ln_images/res/reeb_next.gif" height="26" width="82" border="0"></a><TMPL_ELSE><img src="<TMPL_VAR NAME='IMGPATH'>/spacer.gif" height="26" width="82" border="0"></TMPL_IF></td>
                </TMPL_UNLESS>
              </tr>
            </table>
          </td>
        </tr>
      </table>
      </TMPL_UNLESS>
      <TMPL_IF NAME=BATCH_RESULTS>
        <TMPL_INCLUDE NAME="dni/batch_results.tpl">
      <TMPL_ELSE>
        <TMPL_INCLUDE NAME="dni/stored_batches.tpl">
      </TMPL_IF>
      <br>
      <table border="0" cellpadding="2" cellspacing="2" width="95%" bgcolor="white">
        <tr>
          <td><img src="<TMPL_VAR NAME=IMGPATH>/LogoCore.gif" alt="LexisNexis" width="126" height="25" border="0" title="LexisNexis" /></td>
          <td>
            <table>
              <tr>
                <td align="left" valign="top" class="unifont1bold" nowrap><a href="http://www.lexisnexis.com/terms/copyright.aspx" target="_blank">Copyright &copy;</a> <script>document.write(new Date().getFullYear());</script> LexisNexis Risk Solutions. All rights reserved.</td>
              </tr>
            </table>
          </td>
        </tr>
      </table>
    </div>
    <TMPL_IF NAME="ERROR_MESSAGE">
      <script>alert('<TMPL_VAR ERROR_MESSAGE>\n\n');</script>
    </TMPL_IF>
  </form>
  </body>
</html>
<!-- end report_manager.tpl -->
