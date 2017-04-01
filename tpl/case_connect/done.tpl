<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
   "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="en" xml:lang="en">
<head>
  <title>Accurint Alerts - Case Deconfliction Alert Setup</title>
  <link href="<TMPL_VAR CSSPATH>/<TMPL_VAR SKIN_TYPE>/style1.css"
   rel="stylesheet" type="text/css"/>
  <link href="<TMPL_VAR CSSPATH>/<TMPL_VAR SKIN_TYPE>/skin.css"
   rel="stylesheet" type="text/css"/>
  <script type="text/javascript" src="<TMPL_VAR JSPATH>/please_wait.js"></script>
  <script type="text/javascript" src="<TMPL_VAR JSPATH>/shared.js"></script>
  <script type="text/javascript" src="<TMPL_VAR JSPATH>/common.js"></script>
  <script type="text/javascript">//<![CDATA[

    document.onload=window.focus();
    var help_path = '<TMPL_VAR HLPPATH>';
    function open_help_html(help_url, help_win) {
        general_win(help_path + '/' + help_url,'help_win',780,490,1,1,1,1,1,0);
    }

  //]]></script>
  <style type="text/css">
    body{
        font-family: Arial, Helvetica, sans-serif;
        background-color: #E6E7DE;
        font-size: 12px;
    }
    h1{
        font-size: 16px;
        font-weight: bolder;
        color: #003399;
    }
    ul{
        display: inline-block;
    }
    li{
        text-align: left;
        list-style: none;
    }
    .red{
        color: #ff0000;
    }
    #tt_bar{
        background-color: #999999;
        font-size: 16px;
        font-weight: bolder;
        padding: 10px;
    }
    #title_span{
        float: left;
    }
    #help_span{
        float: right;
    }
  </style>
</head>
<body>
  <div id="pleasewait" style="position:absolute; visibility:hidden; z-index:1000;">
    <img src="<TMPL_VAR IMGPATH>/arrows_wait_full.gif" id="pw" name="pw" width="400"
     height="120" border="0">
  </div>
  <div>
    <fieldset id="tt_bar">
      <span id="title_span">Case Deconfliction Alert/Setup Enrollment</span>
      <span id="help_span"><input id="help_bt" name="help" value="Help ?" type="button"
       onclick="javascript:open_help_html('case_deconfliction_help.html#enroll','Deconfliction');"/></span>
    </fieldset>
    <form id="CC_ENROLL" name="CC_ENROLL" action="<TMPL_VAR ACTION_REPORT>" method="post" onsubmit="validate();">
      <TMPL_INCLUDE NAME=common_hidden_input.tpl>
      <input type="hidden" name="DOL_DATE" value="<TMPL_VAR DOL_DATE>"/>
      <input type="hidden" name="SKIN_TYPE" value="<TMPL_VAR SKIN_TYPE>"/>
      <input type="hidden" name="APPLICATION_TYPE" value="<TMPL_VAR APPLICATION_TYPE>"/>
      <input type="hidden" name="EVENT" value="ALERT/SHOW_NEW"/>
      <input type="hidden" name="SUBSCRIBER_ID" value="<TMPL_VAR SUBSCRIBER_ID>"/>
      <input type="hidden" name="RECID_REPORT" value="<TMPL_VAR RECID_REPORT>"/>
      <input type="hidden" name="UNIQUEID" value="<TMPL_VAR UNIQUEID>"/>
      <input type="hidden" name="FIRST_NAME" value="<TMPL_VAR FIRST_NAME>"/>
      <input type="hidden" name="LAST_NAME" value="<TMPL_VAR LAST_NAME>"/>
      <input type="hidden" name="MIDDLE_NAME" value="<TMPL_VAR MIDDLE_NAME>"/>
      <input type="hidden" name="SUFFIX" value="<TMPL_VAR SUFFIX>"/>
      <input type="hidden" name="DOB" value="<TMPL_VAR DOB>"/>
      <input type="hidden" name="AGE" value="<TMPL_VAR AGE>"/>
      <input type="hidden" name="ADDRESS" value="<TMPL_VAR ADDRESS>"/>
      <input type="hidden" name="CSZ" value="<TMPL_VAR CSZ>"/>
      <input type="hidden" name="PHONE" value="<TMPL_VAR PHONE>"/>
      <input type="hidden" name="FROM_CC" value="1"/>
      <table class="alert_new">
        <tr>
          <td class="largefont1bold" colspan="15">
            Thank you for setting up a Case Deconfliction Alert.  You will be notified
            of any users, who opt-in their search with the same permissions
            that match the subject's information.
          </td>
        </tr>
      </table>
      <br />
      <table class="alert_new">
        <tr>
          <td class="unifont1 label_cell"><strong>Name of Alert:</strong> &nbsp; &nbsp; </td>
          <td class="unifont1"><TMPL_VAR ALERT_NAME></td>
        </tr>
      </table>
      <table class="alert_new">
        <tr>
          <td class="unifont1 label_cell"><strong>Reference Code:</strong> &nbsp; &nbsp; </td>
          <td class="unifont1"><TMPL_VAR REFERENCE_CODE></td>
        </tr>
      </table>
      <table class="alert_new" width="100%">
        <tr>
          <td class="unifont1 label_cell" valign="top" width="75">
            <strong>Delivery:<span class="red">*</span></strong>
            &nbsp; &nbsp;
          </td>
          <td align="left">
            <table border="0" cellpadding="0" cellspacing="0">
              <tr>
                <td class="unifont1" colspan="2">
                  <TMPL_IF ALERT_EMAIL>Send Email alert</TMPL_IF>
                </td>
              </tr>
              <tr>
                <td class="unifont1" valign="top" nowrap="nowrap">
                  Email To: &nbsp; &nbsp;
                </td>
                <td class="unifont1">
                  <TMPL_VAR ALERT_DELIVERY_EMAIL>
                </td>
              </tr>
              <TMPL_IF NOTE>
              <tr>
                <td class="unifont1" valign="top" nowrap="nowrap">
                  Add a Note: &nbsp; &nbsp;
                </td>
                <td class="unifont1">
                  <TMPL_VAR NOTE>
                </td>
              </tr>
              </TMPL_IF>
              <TMPL_IF SUBJ>
              <tr>
                <td class="unifont1" valign="top" nowrap="nowrap">
                  Subject Line: &nbsp; &nbsp;
                </td>
                <td class="unifont1">
                  <TMPL_VAR SUBJ>
                </td>
              </tr>
              </TMPL_IF>
            </table>
          </td>
        </tr>
        <tr>
          <td colspan="2" nowrap="nowrap" width="98%"  align="right">
              <input name="MANAGER" value="Case Deconfliction Manager" onclick="window.opener.Accurint.winPost({event:'CC/MANAGER',name:'MyAccountWin',parameters:{DCONFLCT_ID:<TMPL_VAR DCONFLCT_ID>}});window.close();" type="button"/>
              <input name="CLOSE" value="Close" onclick="window.close();" type="button"/>
          </td>
        </tr>
      </table>
    </form>
  </div>
</body>
</html>
