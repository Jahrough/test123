<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
   "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="en" xml:lang="en">
<head>
  <title>Accurint Case Connect Disclaimer</title>
  <script type="text/javascript">//<![CDATA[

    function revert_cc(){
        var myform = document.forms[0];
        var enroll = document.getElementById('OLD_ENROLL').value;
        var opt_in = document.getElementById('OLD_OPT_IN').value;
        myform.elements["DISABLE_CASE_CONNECT_ENROLL"].value = ( enroll == 1 ) ? 0 : 1;
        myform.elements["DISABLE_CASE_CONNECT_OPT_IN"].value = ( opt_in == 1 ) ? 0 : 1;
        myform.elements["DECLINE"].value = 1;
        myform.submit();
    }
    
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
    
    <form name="CASE_CONNECT_DISCLAIMER" method="post" action="<TMPL_VAR ACTION>">
      <div role="dialog">
        <table border="0" cellpadding="0" cellspacing="0">
          <thead style="display: none">
            <tr>
              <th aria-label="Disclaimer">&nbsp;</th>
            </tr>
          </thead>
          <tr>
            <td valign="top">
                <div class="txtWrapper">
                   <div id="txtCon">
                      <TMPL_VAR HIDDEN_FIELDS>
                      <input name="DECLINE" value="0" type="hidden"/>
                      <input name="EVENT" value="CC/COMPANY_EDIT" type="hidden"/>
                      <font color="#ed1c24" face="Arial,Helvetica,Geneva,Swiss,SunSans-Regular" size="3"><b>Legal Disclaimer for Changing Case Deconfliction Configuration</b></font>
                      <p>
                        By enabling Case Deconfliction, you are choosing to allow certain information that your Users have submitted
                        to be shared with other parties. Case Deconfliction will auto-notify 2 or more Users that have searched on the
                        same record, either inter-agency or intra-agency, including other external Government and/or Law Enforcement
                        Users, as allowed by you, the Administrator, to agree to connect to discuss case similarities.
                      </p>
                      <p>
                        This tool can improve case investigations and workflow efficiencies by the cross referencing of searches so
                        that Users may decide to share case notes or collaborate on investigations. This will apply to all Users on
                        your account.  By proceeding, you agree to such use and disclosure.
                      </p>
                      <div align="center">
                        <input class="myaccount-btn red-btn" name="ACCEPT" value="Accept" type="submit">
                        <input class="myaccount-btn darkgrey-btn" name="CLOSE" value="Cancel" onclick="javascript:revert_cc();" type="button">
                      </div>
                   </div>
                </div>
             </td>
           </tr>
        </table>
      </div>
    </form>
</body>
</html>
