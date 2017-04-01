<!-- begin report_manager.tpl -->
<!--<TMPL_VAR NAME=SERVER_ID>-->
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-15">
    <link rel="stylesheet" type="text/css" href="<TMPL_VAR NAME='CSSPATH'>/style1.css">
    <link href="<TMPL_VAR NAME='CSSPATH'>/<TMPL_VAR NAME=SKIN_TYPE>/skin.css" rel="stylesheet" type="text/css">
<TMPL_IF ENABLE_V2>
<link href="<TMPL_VAR NAME='CSSPATH'>/v2/accurint.css" rel="stylesheet" type="text/css">
<link href="<tmpl_var csspath>/v2/<tmpl_var application_type>/diff.css" rel="stylesheet" type="text/css">
</TMPL_IF>

    <link href="<TMPL_VAR NAME='CSSPATH'>/simple_date_picker.css" rel="stylesheet" type="text/css">
    <script src="<TMPL_VAR NAME='JSPATH'>/simple_date_picker.js"></script>

    <script src="<TMPL_VAR NAME='JSPATH'>/common.js"></script>
    <script src="<TMPL_VAR NAME='JSPATH'>/shared.js"></script>
    <script src="<TMPL_VAR NAME='JSPATH'>/res/report_manager.js"></script>
    <script src="<TMPL_VAR NAME='JSPATH'>/overlibmws.js"></script>
    <script src="<TMPL_VAR NAME='JSPATH'>/res/result_viewer.js"></script>
    <script src="<TMPL_VAR NAME='JSPATH'>/please_wait.js"></script>
    <title>Report Manager</title>
  </head>

  <div id="pleasewait" style="position:absolute; visibility:hidden; z-index:1000;"><img src="<TMPL_VAR NAME=IMGPATH>/arrows_wait_full.gif" id="pw" name="pw" width="400" height="120" border="0"></div>
  
  <div id="overDiv" style="position:absolute; visibility:hidden; z-index:1000;"></div>
  
  <body onBlur="killpw();" topmargin="0" leftmargin="0" marginwidth="0" marginheight="0"<TMPL_IF NAME=STORED_BATCH_VIEWER> ONLOAD="on_load()" ONRESIZE="on_resize()"</TMPL_IF>>
<TMPL_IF ENABLE_V2>
<div id="hd">
<h2><a trackid="hdr_top_logo">LexisNexis Accurint</a></h2>
</div>
</TMPL_IF>
  <form name="stored_search" method="post" action="<TMPL_VAR NAME='ACTION_BATCH'>">
    <TMPL_INCLUDE NAME=common_hidden_input.tpl>
    <input type=hidden name="EVENT" value="<TMPL_VAR NAME='DEFAULT_EVENT'>">
    <input type=hidden name="ERROR_ERROR" value="">
    <input type=hidden name="CURRENT_PAGE" value="<TMPL_VAR NAME="CURRENT_PAGE">">
    <input type=hidden name="TOTAL_RECS" value="<TMPL_VAR NAME="TOTAL_RECS">">
    <input type=hidden name="SEARCH_TRANSACTION" value="<TMPL_VAR NAME='SEARCH_TRANSACTION'>">
    <input type=hidden name="START_DATE_PREVIOUS" value="<TMPL_VAR NAME="START_DATE">">
    <input type=hidden name="END_DATE_PREVIOUS" value="<TMPL_VAR NAME="END_DATE">">
    <input type=hidden name="JOB_ID" value="<TMPL_VAR NAME="JOB_ID">">
    <input type=hidden name="ORDERS_ID" value="<TMPL_VAR NAME=ORDERS_ID>">
    <input type=hidden name="CURRENT_SECTION" value="<TMPL_VAR NAME="CURRENT_SECTION">">
    <input type=hidden name="ACTION_BATCH" value="<TMPL_VAR NAME="ACTION_BATCH">">

    <TMPL_UNLESS ENABLE_V2>
    <table width="100%" cellpadding="0" cellspacing="0">
      <tr>
        <td valign="top">
          <table width="100%" border=0 cellpadding=0 cellspacing=0 bgcolor="#cccccc">
            <tr height="66">
              <td><img src="<TMPL_VAR NAME=IMGPATH>/res/batch22_reeb.gif" width="680" height="66" border="0"></td>
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
      <table border="0" cellpadding="0" cellspacing="0" width="90%">
        <tr>
          <td valign="top" align="center" width="100%">
	    <table border="0" cellpadding="0" cellspacing="0" width="100%">
              <tr>
                <td colspan="7" align="left" class="largefont1bold">Report Manager
                <TMPL_IF NAME="STORED_BATCHES"> - Batch Orders</TMPL_IF>
                <TMPL_IF NAME="STORED_BATCH_SEARCHES"> - Batch Results</TMPL_IF>
                </td>
                <TMPL_IF NAME="STORED_BATCH_SEARCHES">
                <td align="right"><a href="javascript:send_event('RESMAIN/BATCHES')"><img src="<TMPL_VAR NAME='IMGPATH'>/res/reeb_batch_orders.gif" height="26" width="82" border="0"></a></td>
                <TMPL_ELSE>
                <td align="right"><a href="javascript:send_event('RESMAIN/BATCHES')"><img src="<TMPL_VAR NAME='IMGPATH'>/res/reeb_refresh.gif" height="26" width="82" border="0"></a></td>
                </TMPL_IF>
                <td align="left"><a href="javascript:void(0);" onClick="self.onerror = function() {window.close(); return true;}; if (opener) {if (!opener.closed){opener.focus()}}; window.close();"><img src="<TMPL_VAR NAME='IMGPATH'>/res/reeb_close.gif" height="26" width="82" border="0"></a></td>
              </tr>
              <tr>
                <TMPL_UNLESS NAME="DONT_SHOW_DATES">
                <td height="40" class="unifont1"><a href="javascript:void(0);" onClick="displayDatePicker('START_DATE','below');"><b>From:</b></a>&nbsp;&nbsp;</td>
                <td height="40"><input onClick="displayDatePicker('START_DATE','below');" type="text" size="12" maxlength="10" name="START_DATE" value="<TMPL_VAR NAME="START_DATE">"></td>
                <td height="40" class="unifont1">&nbsp;&nbsp;&nbsp;&nbsp;<a href="javascript:void(0);" onClick="displayDatePicker('END_DATE','below');"><b>To:</b></a>&nbsp;&nbsp;</td>
                <td height="40"><input onClick="displayDatePicker('END_DATE','below');" type="text" size="12" maxlength="10" name="END_DATE" value="<TMPL_VAR NAME="END_DATE">"></td>
                <TMPL_ELSE>
                <td align="center" colspan="4">&nbsp;</td>
                </TMPL_UNLESS>
                <TMPL_IF NAME="TOTAL_RECS">
                <TMPL_IF NAME="STARTING_COUNT_DISPLAYED">
                <td height="40" class="unifont1" nowrap>&nbsp;&nbsp;&nbsp;&nbsp;<b>Records <TMPL_VAR NAME="STARTING_COUNT_DISPLAYED"></b>&nbsp;to&nbsp;<b><TMPL_VAR NAME="ENDING_COUNT_DISPLAYED"></b>&nbsp;of&nbsp;<b><TMPL_VAR NAME="TOTAL_RECS"></b></td>
                <TMPL_ELSE>
                <td height="40" class="unifont1" nowrap>&nbsp;&nbsp;&nbsp;&nbsp;<b>Records <input type="text" size="5" maxlength="5" name="GO_TO_RECORD" value="<TMPL_VAR NAME="CURRENT_PAGE">"></b>&nbsp;of&nbsp;<b><TMPL_VAR NAME="TOTAL_RECS"></b></td>
                </TMPL_IF>
                <TMPL_ELSE>
                <td align="center">&nbsp;</td>
                </TMPL_IF>
                <td height="40" class="unifont1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                <td align="right">&nbsp;</td>
                <td align="right"><TMPL_IF NAME="PREV_ACTIVE"><a href="javascript:send_event('<TMPL_VAR NAME='DEFAULT_EVENT'>_PREV')"><img src="<TMPL_VAR NAME='IMGPATH'>/res/reeb_back.gif" height="26" width="82" border="0"></a><TMPL_ELSE><img src="<TMPL_VAR NAME='IMGPATH'>/spacer.gif" height="26" width="82" border="0"></TMPL_IF></td>
                <td align="left"><TMPL_IF NAME="NEXT_ACTIVE"><a href="javascript:send_event('<TMPL_VAR NAME='DEFAULT_EVENT'>_NEXT')"><img src="<TMPL_VAR NAME='IMGPATH'>/res/reeb_next.gif" height="26" width="82" border="0"></a><TMPL_ELSE><img src="<TMPL_VAR NAME='IMGPATH'>/spacer.gif" height="26" width="82" border="0"></TMPL_IF></td>
              </tr>
              <TMPL_IF NAME="JOB_DATE">
              <tr>
                <td align="left" class="largefont1bold" nowrap="1">Batch Name:</td>
                <td colspan="4" align="left" class="largefont1"><TMPL_VAR NAME="JOB_NAME"></td>
                <td align="center">&nbsp;</td>
                <td colspan="2" align="right" class="largefont1bold" nowrap="1">Search:&nbsp;&nbsp;&nbsp;<input type="text" size="20" maxlength="50" name="SEARCH_FIELD" value="<TMPL_VAR NAME="SEARCH_FIELD">">&nbsp;&nbsp;&nbsp;</td>
                <td align="left" class="largefont1bold" nowrap="1">
                  <select name="SEARCH_TYPE">
                    <option value="0">Choose One</option>
                    <option value="1"<TMPL_IF SEARCH_1> SELECTED</TMPL_IF>>Policy Number</option>
                    <option value="2"<TMPL_IF SEARCH_2> SELECTED</TMPL_IF>>First Name</option>
                    <option value="3"<TMPL_IF SEARCH_3> SELECTED</TMPL_IF>>SSN</option>
                    <option value="4"<TMPL_IF SEARCH_4> SELECTED</TMPL_IF>>DOB</option>
                    <option value="5"<TMPL_IF SEARCH_5> SELECTED</TMPL_IF>>Last Name</option>
                    <option value="6"<TMPL_IF SEARCH_6> SELECTED</TMPL_IF>>VIN</option>
                    <option value="7"<TMPL_IF SEARCH_7> SELECTED</TMPL_IF>>Agency</option>
                  </select>
                </td>
              </tr>
              </TMPL_IF>
              <TMPL_IF NAME="BATCH_SEARCHES_DATA">
              <tr>
                <td align="left" class="largefont1bold" nowrap="1">Batch Date:</td>
                <td colspan="4" align="left" class="largefont1"><TMPL_VAR NAME="JOB_DATE"></td>
                <td colspan="2" align="center">&nbsp;</td>
                <td align="right"><a href="javascript:send_event('<TMPL_VAR NAME='DEFAULT_EVENT'>')"><img src="<TMPL_VAR NAME='IMGPATH'>/res/reeb_search.gif" height="26" width="82" border="0"></a></td>
                <td align="left"><a href="javascript:reset();"><img src="<TMPL_VAR NAME='IMGPATH'>/res/reeb_reset_srch.gif" height="26" width="82" border="0"></a></td>
              </tr>
              <tr>
                <td colspan="7" align="center">&nbsp;</td>
                <td align="right"><a href="javascript:showpw();send_download_event('RESMAIN/CSV_FILE')"><img src="<TMPL_VAR NAME='IMGPATH'>/res/reeb_dwnld_psnl_info.gif" height="26" width="82" border="0"></a><a href="javascript:showpw();send_download_event('RESMAIN/CSV_VIN_FILE')"><img src="<TMPL_VAR NAME='IMGPATH'>/res/reeb_dwnld_vin_info.gif" height="26" width="82" border="0"></a></td>
                <td align="left"><a href="javascript:showpw();send_download_event('RESMAIN/CSV_ADDITIONAL_DRIVER_FILE')"><img src="<TMPL_VAR NAME='IMGPATH'>/res/addlDrvButt.gif" height="26" width="82" border="0"></a></td>
              </tr>
              </TMPL_IF>
            </table>
          </td>
        </tr>
      </table>
      <TMPL_IF NAME="STORED_BATCHES">
        <TMPL_INCLUDE NAME="res/stored_batches.tpl">
      </TMPL_IF>
      <TMPL_IF NAME="STORED_BATCH_SEARCHES">
        <TMPL_INCLUDE NAME="res/stored_batch_viewer.tpl">
      </TMPL_IF>
    </div>
    <TMPL_IF NAME="ERROR_MESSAGE">
      <script>alert('<TMPL_VAR ERROR_MESSAGE>\n\n');</script>
    </TMPL_IF>
  </form>
  </body>
</html>
<!-- end report_manager.tpl -->
