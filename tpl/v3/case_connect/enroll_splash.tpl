<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
   "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="en" xml:lang="en">
<head>
  <title>Accurint Alerts - First Opt-In Disclaimer</title>
  <script type="text/javascript" src="<TMPL_VAR JSPATH>/please_wait.js"></script>
  <script type="text/javascript" src="<TMPL_VAR JSPATH>/common.js"></script>
  <script type="text/javascript" src="<TMPL_VAR JSPATH>/shared.js"></script>
  <link href="<TMPL_VAR NAME='CSSPATH'>/accurint.css" rel="stylesheet" type="text/css">
  <link href="<TMPL_VAR NAME='CSSPATH'>/<TMPL_VAR NAME=SKIN_TYPE>/skin.css" rel="stylesheet" type="text/css">
  <link href="<TMPL_VAR NAME='CSSPATH'>/accurintSearch.css" rel="stylesheet" type="text/css">
  <link href="<TMPL_VAR NAME='CSSPATH'>/demo.css" rel="stylesheet" type="text/css">
  <link href="<TMPL_VAR NAME='CSSPATH'>/demo2.css" rel="stylesheet" type="text/css">
  <link href="<TMPL_VAR NAME='CSSPATH'>/sprites.css" rel="stylesheet" type="text/css">
  <link href="<TMPL_VAR NAME='CSSPATH'>/menus_alerts.css" rel="stylesheet" type="text/css">
</head>

<body topmargin="0" leftmargin="0" marginwidth="0" marginheight="0" bgcolor="#ffffff">
  <div id="pleasewait" style="position:absolute; top: 200px; left:300px; visibility:hidden; z-index:1000;">
   
  </div>
	<TMPL_INCLUDE NAME="../logo.tpl">
    
    <form name="SHORT_REPORT" action="<TMPL_VAR NAME=ACTION_REPORT>" method="post">
      <TMPL_INCLUDE NAME="common_hidden_input.tpl">
      <input type="hidden" name="REFERENCE_CODE" value="<TMPL_VAR NAME=REFERENCE_CODE>"/>
      <input type="hidden" name="DOL_DATE" value="<TMPL_VAR NAME=DOL_DATE>"/>
      <input type="hidden" name="SKIN_TYPE" value="<TMPL_VAR NAME=SKIN_TYPE>"/>
      <input type="hidden" name="APPLICATION_TYPE" value="<TMPL_VAR NAME=APPLICATION_TYPE>"/>
      <input type="hidden" name="RECID_REPORT" value="<TMPL_VAR NAME=RECID_REPORT>"/>
      <input type="hidden" name="UNIQUEID" value="<TMPL_VAR NAME=UNIQUEID>"/>
      <input type="hidden" name="FIRST_NAME" value="<TMPL_VAR NAME=FIRST_NAME>"/>
      <input type="hidden" name="FULL_NAME" value="<TMPL_VAR NAME=FULL_NAME>"/>
      <input type="hidden" name="LAST_NAME" value="<TMPL_VAR NAME=LAST_NAME>"/>
      <input type="hidden" name="MIDDLE_NAME" value="<TMPL_VAR NAME=MIDDLE_NAME>"/>
      <input type="hidden" name="SUFFIX" value="<TMPL_VAR NAME=SUFFIX>"/>
      <input type="hidden" name="DOB" value="<TMPL_VAR NAME=DOB>"/>
      <input type="hidden" name="AGE" value="<TMPL_VAR NAME=AGE>"/>
      <input type="hidden" name="ADDRESS" value="<TMPL_VAR NAME=ADDRESS>"/>
      <input type="hidden" name="CSZ" value="<TMPL_VAR NAME=CSZ>"/>
      <input type="hidden" name="PHONE" value="<TMPL_VAR NAME=PHONE>"/>
      <input type="hidden" name="EVENT" value="CC/ENROLL"/>

      <div role="dialog">
        <table border="0" cellpadding="0" cellspacing="0">
          <thead style="display:none">
            <tr>
              <th aria-label="Disclaimer">&nbsp;</th>
            </tr>
          </thead>
          <tr>
            <td valign="top">
                <div class="txtWrapper" style="min-width:900px;">
                   <div id="txtCon">
                    <div class="lnin-header">First Enrollment Disclaimer</div>
                    <br/>
                      <p>
                        By enabling Case Deconfliction, you are choosing to allow certain information that you have submitted to be
                        shared with other parties. Case Deconfliction will auto-notify 2 or more Users that have searched on the same
                        record, either inter-agency or intra-agency, including other external Government and/or Law Enforcement Users,
                        as allowed by your Administrator, to agree to connect to discuss case similarities.
                      </p>
                      <p>
                        This tool can improve case investigations and workflow efficiencies by the cross referencing of searches so
                        that you may decide to share case notes or collaborate on investigations. This will apply to all searches on
                        your account.  By proceeding, you agree to such use and disclosure.
                      </p>
                      <p align="center">
                        <input class="myaccount-btn red-btn" name="ACCEPT" value="Accept" type="submit">
                        <input class="myaccount-btn darkgrey-btn" name="CLOSE" value="Cancel" onclick="window.close();" type="button">
                      </p>
                   </div>
                </div>
              </td>
          </tr>
        </table>
      </div>
    </form>
  
</body>
</html>
