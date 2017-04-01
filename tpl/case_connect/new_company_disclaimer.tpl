<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
   "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="en" xml:lang="en">
<head>
  <title>Accurint Case Connect Disclaimer</title>
  <link href="<TMPL_VAR NAME=CSSPATH>/<TMPL_VAR NAME=SKIN_TYPE>/style1.css"
   rel="stylesheet" type="text/css"/>
  <link href="<TMPL_VAR NAME=CSSPATH>/<TMPL_VAR NAME=SKIN_TYPE>/skin.css"
   rel="stylesheet" type="text/css"/>
  <script type="text/javascript" src="<TMPL_VAR NAME=JSPATH>/please_wait.js"></script>
  <script type="text/javascript" src="<TMPL_VAR NAME=JSPATH>/common.js"></script>
  <script type="text/javascript">//<![CDATA[
    document.onload=window.focus();
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
  </style>
</head>
<body>
  <div id="pleasewait" style="position:absolute; visibility:hidden; z-index:1000;">
    <img src="<TMPL_VAR NAME=IMGPATH>/arrows_wait_full.gif" id="pw" name="pw" width="400"
     height="120" border="0">
  </div>
  <div align="center" id="mainbody">
<TMPL_IF ACCEPT>
    Company Created Successfully!
  <script type="text/javascript">//<![CDATA[
    window.close();
  //]]></script>
<TMPL_ELSE>
    <form name="CASE_CONNECT_DISCLAIMER" action="<TMPL_VAR NAME=ACTION_MISC>" method="post">
      <TMPL_INCLUDE NAME=common_hidden_input.tpl>
      <input name="EVENT" value="CC/COMPANY_ADD" type="hidden"/>
      <input name="CC_PERMISSIONS" value="<TMPL_VAR CC_PERMISSIONS>" type="hidden"/>
      <h1>Legal Disclaimer for Enabling Case Deconfliction</h1>
      <p>
        By enabling Case Deconfliction, you are choosing to allow certain information that your Users have submitted
        to be shared with other parties. Case Deconfliction will auto-notify two or more Users that have searched on
        the same record, either inter-agency or intra-agency, including other external Government and/or Law Enforcement
        Users, as allowed by you, the Administrator, to agree to connect to discuss case similarities.
      </p>
      <p>
        This tool can improve case investigations and workflow efficiencies by the cross referencing of searches so
        that Users may decide to share case notes or collaborate on investigations. This will apply to all Users on
        your account.  By proceeding, you agree to such use and disclosure.
      </p>
      <input name="ACCEPT" value="Accept" type="submit"/>
      <input name="CLOSE" value="Cancel" onclick="window.close();" type="button"/>
    </form>
</TMPL_IF>
  </div>
</body>
</html>
