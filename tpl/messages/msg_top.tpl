<TMPL_IF ENABLE_V3>
   
<!DOCTYPE html>
<html lang="en">
    <head>

        <title><TMPL_IF NAME="PAGE_TITLE"><TMPL_VAR NAME="PAGE_TITLE"><TMPL_ELSE>Search</TMPL_IF></title>

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

        <script src="<TMPL_VAR NAME='JSPATH'>/v3/jquery.min.js"></script>
        <script src="<TMPL_VAR NAME='JSPATH'>/v3/jquery-ui-1.10.3.custom.min.js"></script>
        <script>
            var $j = jQuery.noConflict();
        </script>
        <script src="<TMPL_VAR NAME='JSPATH'>/v2/search.js"></script>
        <script src="<TMPL_VAR NAME='JSPATH'>/shared.js"></script>
        <script src="<TMPL_VAR NAME='JSPATH'>/common.js"></script>
        <link href="<TMPL_VAR NAME='CSSPATH'>/accurint.css" rel="stylesheet" type="text/css">
        <link href="<TMPL_VAR NAME='CSSPATH'>/accurintSearch.css" rel="stylesheet" type="text/css">
        <link href="<TMPL_VAR NAME='CSSPATH'>/main_menu.css" rel="stylesheet" type="text/css">
        <link href="<TMPL_VAR NAME='CSSPATH'>/demo.css" rel="stylesheet" type="text/css">
        <link href="<TMPL_VAR NAME='CSSPATH'>/demo2.css" rel="stylesheet" type="text/css">
        <link href="<TMPL_VAR NAME='CSSPATH'>/sprites.css" rel="stylesheet" type="text/css">
        <link href="<TMPL_VAR NAME='CSSPATH'>/skin.css" rel="stylesheet" type="text/css">
        <link href="<TMPL_VAR NAME='CSSPATH'>/menus_alerts.css" rel="stylesheet" type="text/css">

        <style>
        .termsAcceptBtn,
        .termsDeclineBtn{
            width:auto;
            height:28px;
            background:#F3352E;
            padding:5px 8px 0px 15px;
            cursor:pointer;
            font:normal 12px "Tahoma";
            color:#fff;
            margin-right:10px;
        }
        .termsDeclineBtn{
            background:#888A8A;
        }
        #msgDate{
            text-align:center;
            margin-bottom:15px;
        }
        </style>
        <script src="<TMPL_VAR NAME='JSPATH'>/v3/make_table_508.js"></script>
    </head>

    <body>

    <form name="LOGIN" action="<TMPL_VAR NAME=ACTION>" method="post">
      <TMPL_INCLUDE NAME="common_hidden_input.tpl">
      <INPUT type=hidden NAME="EVENT" VALUE="">
      <INPUT type=hidden NAME="SKIN_TYPE" VALUE="<TMPL_VAR NAME=SKIN_TYPE>">
      <INPUT type=hidden NAME="APPLICATION_TYPE" VALUE="<TMPL_VAR NAME=APPLICATION_TYPE>">
      <INPUT type=hidden NAME="CURRENT_EVENT" VALUE="<TMPL_VAR NAME=CURRENT_EVENT>">
      <INPUT type=hidden NAME="CLIENT_TYPE" VALUE="WEB">
      <INPUT type=hidden NAME="MSG_ID" VALUE="<TMPL_VAR NAME=MSG_ID>">

        <div class="topBarCon">
            <div class="topBarConMiddle" style="margin-left:5px;">
                <div class="left">
                    <ul>
                        <TMPL_IF GOV>
                            <li class="ln-logo ln-logo-gov"><div>&nbsp;</div></li>
                        </TMPL_IF>
                        <TMPL_IF LE>
                            <li class="ln-logo ln-logo-le"><div>&nbsp;</div></li>
                        </TMPL_IF>
                        <TMPL_IF HEA>
                            <li class="ln-logo ln-logo-hea"><div>&nbsp;</div></li>
                        </TMPL_IF>
                    </ul>
                </div>
            </div>
        </div>

        <div class="txtWrapper">
            <div id="txtCon">
                <div id="msgDate">

<TMPL_ELSE>
<html>
<head>

<title>Welcome</title>

<link href="<TMPL_VAR NAME='CSSPATH'>/style1.css" rel="stylesheet" type="text/css">
<link href="<TMPL_VAR NAME='CSSPATH'>/<TMPL_VAR NAME=SKIN_TYPE>/skin.css" rel="stylesheet" type="text/css">
<TMPL_IF ENABLE_V2>
<style type="text/css">
body {
        color:#333333;
        background:#FCFAF5;
        font-family:Verdana, Arial, Helvetica, sans-serif;
        line-height:110%;
}
</style>
<link href="<tmpl_var csspath>/v2/<tmpl_var application_type>/diff.css" rel="stylesheet" type="text/css">
<link href="<TMPL_VAR NAME='CSSPATH'>/v2/<TMPL_VAR NAME=APPLICATION_TYPE>/<TMPL_VAR NAME=USER_THEME>.css" rel="stylesheet" type="text/css">
</TMPL_IF>
<style>
a { color: #0000FF; }
a:link { color: #0000FF; }
a:visited { color: #0000FF; }
a:hover { color: #ed1c24; }
a:active { color: #0000FF; }
</style>
<script src="<TMPL_VAR NAME='JSPATH'>/common.js"></script>
<script src="<TMPL_VAR NAME='JSPATH'>/shared.js"></script>

</head>
<body leftmargin="0" marginwidth="0" topmargin="0" marginheight="0" text="black" >

<form name="LOGIN" action="<TMPL_VAR NAME=ACTION>" method="post">
  <TMPL_INCLUDE NAME=common_hidden_input.tpl>
  <INPUT type=hidden NAME="EVENT" VALUE="">
  <INPUT type=hidden NAME="SKIN_TYPE" VALUE="<TMPL_VAR NAME=SKIN_TYPE>">
  <INPUT type=hidden NAME="APPLICATION_TYPE" VALUE="<TMPL_VAR NAME=APPLICATION_TYPE>">
  <INPUT type=hidden NAME="CURRENT_EVENT" VALUE="<TMPL_VAR NAME=CURRENT_EVENT>">
  <INPUT type=hidden NAME="CLIENT_TYPE" VALUE="WEB">
  <INPUT type=hidden NAME="MSG_ID" VALUE="<TMPL_VAR NAME=MSG_ID>">

<table border="0" cellpadding="0" cellspacing="0" width="100%" height="450">
  <tr>
    <td valign="top" align="left">
    <TMPL_IF ENABLE_V2>
    <table border="0" cellpadding="0" cellspacing="0" width="800">
      <tr>
        <td width="510"><div id="hd"><span trackid="hdr_top_logo"></span></div></td>
	<td width="290" valign="middle" align="center">
    <TMPL_ELSE>
    <table border="0" cellpadding="0" cellspacing="0" width="100%">
      <tr class="announcementheaderarea">
        <td width="338"><img src="<TMPL_VAR NAME=IMGPATH>/<tmpl_if name="ADMIN_ANNOUNCEMENT">admin_</tmpl_if>annceleft.gif" width="311" height="52" border="0"></td>
        <td width="386" valign="middle" align="center">
    </TMPL_IF>
        <table border="0" cellpadding="0" cellspacing="0" width="290">
          <tr>
            <td><img src="<TMPL_VAR NAME=IMGPATH>/leftdate.gif" width="8" height="29" border="0"></td>
            <td valign="middle" align="center" width="254">
            <div align="center">
</TMPL_IF>
