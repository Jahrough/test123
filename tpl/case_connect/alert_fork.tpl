<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
   "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="en" xml:lang="en">
<head>
  <title>Accurint Alerts - Select Alert Option</title>
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
    <form name="SHORT_REPORT" action="<TMPL_VAR NAME=ACTION_REPORT>" method="post" onsubmit="return validate();">
      <TMPL_INCLUDE NAME=common_hidden_input.tpl>
      <input type="hidden" name="REFERENCE_CODE" value="<TMPL_VAR NAME=REFERENCE_CODE>"/>
      <input type="hidden" name="DOL_DATE" value="<TMPL_VAR NAME=DOL_DATE>"/>
      <input type="hidden" name="SKIN_TYPE" value="<TMPL_VAR NAME=SKIN_TYPE>"/>
      <input type="hidden" name="APPLICATION_TYPE" value="<TMPL_VAR NAME=APPLICATION_TYPE>"/>
      <input type="hidden" name="RECID_REPORT" value="<TMPL_VAR NAME=RECID_REPORT>"/>
      <input type="hidden" name="UNIQUEID" value="<TMPL_VAR NAME=UNIQUEID>"/>
      <input type="hidden" name="FIRST_NAME" value="<TMPL_VAR NAME=FIRST_NAME>"/>
      <input type="hidden" name="LAST_NAME" value="<TMPL_VAR NAME=LAST_NAME>"/>
      <input type="hidden" name="MIDDLE_NAME" value="<TMPL_VAR NAME=MIDDLE_NAME>"/>
      <input type="hidden" name="SUFFIX" value="<TMPL_VAR NAME=SUFFIX>"/>
      <input type="hidden" name="DOB" value="<TMPL_VAR NAME=DOB>"/>
      <input type="hidden" name="AGE" value="<TMPL_VAR NAME=AGE>"/>
      <input type="hidden" name="ADDRESS" value="<TMPL_VAR NAME=ADDRESS>"/>
      <input type="hidden" name="CSZ" value="<TMPL_VAR NAME=CSZ>"/>
      <input type="hidden" name="PHONE" value="<TMPL_VAR NAME=PHONE>"/>
      <h1>Select Alert Option:</h1>
      <ul>
        <li>
          <input id="person_alert" type="radio" name="EVENT" value="ALERT/SHOW_NEW" onclick="this.form.submit()"/>
          <label for="person_alert">Person Alert</label>
        </li>
        <li>
          <input id="deconflict" type="radio" name="EVENT" value="CC/ENROLL"
           <TMPL_IF NAME=DISABLED>disabled="disabled" <TMPL_ELSE>onclick="this.form.submit()" </TMPL_IF>/>
          <label for="deconflict">Case Deconfliction Alert</label>
        </li>
      </ul>
    </form>
  </div>
</body>
</html>
