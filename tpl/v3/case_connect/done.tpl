<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
   "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="en" xml:lang="en">
<head>
  <title>Accurint Alerts - Case Deconfliction Alert Setup</title>
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
  <link href="<TMPL_VAR NAME='CSSPATH'>/accurint.css" rel="stylesheet" type="text/css">
  <link href="<TMPL_VAR NAME='CSSPATH'>/<TMPL_VAR NAME=SKIN_TYPE>/skin.css" rel="stylesheet" type="text/css">
  <link href="<TMPL_VAR NAME='CSSPATH'>/accurintSearch.css" rel="stylesheet" type="text/css">
  <link href="<TMPL_VAR NAME='CSSPATH'>/demo.css" rel="stylesheet" type="text/css">
  <link href="<TMPL_VAR NAME='CSSPATH'>/base.css" rel="stylesheet" type="text/css">
  <link href="<TMPL_VAR NAME='CSSPATH'>/sprites.css" rel="stylesheet" type="text/css">
  <link href="<TMPL_VAR NAME='CSSPATH'>/menus_alerts.css" rel="stylesheet" type="text/css">
</head>
<body topmargin="0" leftmargin="0" marginwidth="0" marginheight="0" bgcolor="#ffffff">
  <div id="pleasewait" style="position:absolute; visibility:hidden; z-index:1000;">
    <img src="<TMPL_VAR IMGPATH>/arrows_wait_full.gif" id="pw" name="pw" width="400"
     height="120" border="0" alt="">
  </div>
	<TMPL_INCLUDE NAME="../logo.tpl">
    
    <div align="center" role="dialog">
      <table border="0" cellpadding="0" cellspacing="0" width="880">
        <thead style="display: none">
          <tr>
            <th aria-label="Alert">&nbsp;</th>
          </tr>
        </thead>
        <tr>
          <td align="center" valign="top">
              <div class="txtWrapper">
                <div id="txtCon">
                    <div class="mfa-header" style="text-align:left;">Case Deconfliction Alert/Setup Enrollment</div>
                    <a title="Open help" class="btn red-btn" href="javascript:void(0);" onclick="javascript:open_help_html('v3/case_deconfliction_help.html#enroll','Deconfliction');" style="float:right;margin-top:-22px;margin-right:15px;">Help?</a>
                    <br />

                    <form id="CC_ENROLL" name="CC_ENROLL" action="<TMPL_VAR ACTION_REPORT>" method="post" onsubmit="validate();">
                      <TMPL_INCLUDE NAME="common_hidden_input.tpl">
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
                        <thead style="display: none">
                          <tr>
                            <th aria-label="Alert">&nbsp;</th>
                          </tr>
                        </thead>
                        <tr>
                          <td class="largefont1bold" style="text-align:left;" colspan="15">
                            Thank you for setting up a Case Deconfliction Alert.  You will be notified
                            of any users, who opt-in their search with the same permissions
                            that match the subject's information.
                          </td>
                        </tr>
                      </table>
                      <br />
                      <table align="left">
                        <thead style="display: none">
                          <tr>
                            <th aria-label="Alert">&nbsp;</th>
                          </tr>
                        </thead>
                        <tr>
                          <td style="text-align:left;"><strong>Name of Alert:</strong> &nbsp; &nbsp; </td>
                          <td><TMPL_VAR ALERT_NAME></td>
                        </tr>
                        <tr>
                          <td style="text-align:left;"><strong>Reference:</strong> &nbsp; &nbsp; </td>
                          <td><TMPL_VAR REFERENCE_CODE></td>
                        </tr>
                      </table>
                      <table align="left" width="100%">
                        <thead style="display: none">
                          <tr>
                            <th aria-label="Alert">&nbsp;</th>
                          </tr>
                        </thead>
                        <tr>
                          <td style="text-align:left;padding-right: 42px;">
                            <strong>Delivery:<font color="red">*</font></strong>
                          </td>
                          <td align="left" style="width:100%;text-align:left;">
                            <table border="0" cellpadding="0" cellspacing="0">
                              <thead style="display: none">
                                <tr>
                                  <th aria-label="Alert">&nbsp;</th>
                                </tr>
                              </thead>
                              <tr>
                                <td class="unifont1" colspan="2" style="text-align:left;">
                                  <TMPL_IF ALERT_EMAIL>Send Email alert</TMPL_IF>
                                </td>
                              </tr>
                              <tr>
                                <td class="unifont1" valign="top" nowrap="nowrap" style="text-align:left;">
                                  Email To: &nbsp; &nbsp;
                                </td>
                                <td class="unifont1" style="text-align:left;">
                                  <TMPL_VAR ALERT_DELIVERY_EMAIL>
                                </td>
                              </tr>
                              <TMPL_IF NOTE>
                              <tr>
                                <td class="unifont1" valign="top" nowrap="nowrap" style="text-align:left;">
                                  Add a Note: &nbsp; &nbsp;
                                </td>
                                <td class="unifont1" style="text-align:left;">
                                  <TMPL_VAR NOTE>
                                </td>
                              </tr>
                              </TMPL_IF>
                              <TMPL_IF SUBJ>
                              <tr>
                                <td class="unifont1" valign="top" nowrap="nowrap" style="text-align:left;">
                                  Subject Line: &nbsp; &nbsp;
                                </td>
                                <td class="unifont1" style="text-align:left;">
                                  <TMPL_VAR SUBJ>
                                </td>
                              </tr>
                              </TMPL_IF>
                            </table>
                          </td>
                        </tr>
                        <tr>
                          <td colspan="2" nowrap="nowrap" width="98%"  align="right">
                              <input class="myaccount-btn red-btn" name="MANAGER" value="Case Deconfliction Manager" onclick="window.opener.Accurint.winPost({event:'CC/MANAGER',name:'MyAccountWin',parameters:{DCONFLCT_ID:<TMPL_VAR DCONFLCT_ID>}});window.close();" type="button"/>
                              <input class="myaccount-btn darkgrey-btn" name="CLOSE" value="Close" onclick="window.close();" type="button"/>
                          </td>
                        </tr>
                      </table>
                    </form>
                </div>
            </div>
          </td>
        </tr>
      </table>
    </div>
</body>
</html>
