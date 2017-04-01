<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
   "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="en" xml:lang="en">
<head>
  <title>Accurint Alerts - Select Alert Option</title>
  <script type="text/javascript">//<![CDATA[
    document.onload=window.focus();
  //]]></script>
  <link href="<TMPL_VAR NAME='CSSPATH'>/accurint.css" rel="stylesheet" type="text/css">
  <link href="<TMPL_VAR NAME='CSSPATH'>/<TMPL_VAR NAME=SKIN_TYPE>/skin.css" rel="stylesheet" type="text/css">
  <link href="<TMPL_VAR NAME='CSSPATH'>/accurintSearch.css" rel="stylesheet" type="text/css">
  <link href="<TMPL_VAR NAME='CSSPATH'>/demo.css" rel="stylesheet" type="text/css">
  <link href="<TMPL_VAR NAME='CSSPATH'>/demo2.css" rel="stylesheet" type="text/css">
  <link href="<TMPL_VAR NAME='CSSPATH'>/sprites.css" rel="stylesheet" type="text/css">
  <link href="<TMPL_VAR NAME='CSSPATH'>/menus_alerts.css" rel="stylesheet" type="text/css">
</head>
<body topmargin="0" leftmargin="0" marginwidth="0" marginheight="0" bgcolor="#ffffff">
	<TMPL_INCLUDE NAME="../logo.tpl">
    <form name="CC_CONNECT_DISCLAIMER" action="<TMPL_VAR ACTION_REPORT>" method="post">
      <div align="center" role="dialog">
        <table border="0" cellpadding="0" cellspacing="0" width="880">
          <thead style="display:none">
            <tr>
              <th aria-label="Disclaimer">&nbsp;</th>
            </tr>
          </thead>
          <tr>
            <td align="center" valign="top">
                <div class="txtWrapper">
                   <div id="txtCon">
                      <TMPL_VAR HIDDEN_FIELDS>
                      <div class="mfa-header">Legal Disclaimer for Case Deconfliction</div>
                      <p>
                        By selecting “Connect Me” you are consenting to allow information that you have provided to be shared with
                        another user of this product, as well as consenting to having your contact information provided.  That user
                        may be a person within your Agency, another agency, including other external Government and/or Law Enforcement
                        Users.
                      </p>
                      <p>
                        Case Deconfliction will auto-notify 2 or more Users that have searched on the same record, either inter-agency
                        or intra-agency, including other external Government and/or Law Enforcement Users, as allowed by your
                        Administrator, to agree to connect to discuss case similarities.  This tool can improve case investigations
                        and workflow efficiencies by the cross referencing of searches so that you may decide to share case notes
                        or collaborate on investigations. By proceeding, you agree to such use and disclosure.
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
