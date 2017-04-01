<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
   "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="en" xml:lang="en">
<head>
  <title>Accurint Alerts - Select Alert Option</title>
  <link href="<TMPL_VAR CSSPATH>/<TMPL_VAR SKIN_TYPE>/style1.css"
   rel="stylesheet" type="text/css"/>
  <link href="<TMPL_VAR CSSPATH>/<TMPL_VAR SKIN_TYPE>/skin.css"
   rel="stylesheet" type="text/css"/>
  <script type="text/javascript" src="<TMPL_VAR JSPATH>/please_wait.js"></script>
  <script type="text/javascript" src="<TMPL_VAR JSPATH>/common.js"></script>
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
<body on>
  <div id="pleasewait" style="position:absolute; visibility:hidden; z-index:1000;">
    <img src="<TMPL_VAR IMGPATH>/arrows_wait_full.gif" id="pw" name="pw" width="400"
     height="120" border="0">
  </div>
  <div align="center" id="mainbody">
    <h1>Got here!</h1>
    <TMPL_VAR DEBUG>
  </div>
</body>
</html>
