<!-- begin: $RcsFile: $ -->
<!--<TMPL_VAR NAME=SERVER_ID>-->
<html>
<head>
<TMPL_IF CC_MANAGER><meta http-equiv="X-UA-Compatible" content="IE=EmulateIE9"></TMPL_IF>
<title>My Account</title>

<link href="<TMPL_VAR NAME='CSSPATH'>/style1.css" rel="stylesheet" type="text/css">
<link href="<TMPL_VAR NAME='CSSPATH'>/<TMPL_IF NAME=ENABLE_V2>v2/</TMPL_IF><TMPL_VAR NAME=SKIN_TYPE>/skin.css" rel="stylesheet" type="text/css">

<TMPL_IF NAME="MYACCOUNT_COMPANY_TREE">
<link href="<TMPL_VAR NAME='CSSPATH'>/mktree.css" rel="stylesheet" type="text/css">
</TMPL_IF>

<link href="<TMPL_VAR NAME='CSSPATH'>/simple_date_picker.css" rel="stylesheet" type="text/css">
<script src="<TMPL_VAR NAME='JSPATH'>/simple_date_picker.js"></script>

<script src="<TMPL_VAR NAME='JSPATH'>/common.js"></script>
<script src="<TMPL_VAR NAME='JSPATH'>/shared.js"></script>
<script src="<TMPL_VAR NAME='JSPATH'>/pricing.js"></script>
<script src="<TMPL_VAR NAME='JSPATH'>/myaccount.js"></script>
<script src="<TMPL_VAR NAME='JSPATH'>/entity_alerting.js"></script>
<script src="<TMPL_VAR NAME='JSPATH'>/options_selection.js"></script>
<TMPL_IF EDIT_ALERT>
<script src="<TMPL_VAR NAME='JSPATH'>/validate.js"></script>
</TMPL_IF>
<TMPL_IF MYACCOUNT_SECURITY>
<script src="<TMPL_VAR NAME='JSPATH'>/security.js"></script>
</TMPL_IF>
<TMPL_IF NAME="MYACCOUNT_COMPANY_TREE">
<script src="<TMPL_VAR NAME='JSPATH'>/mktree.js"></script>
</TMPL_IF>

<script src="<TMPL_VAR NAME='JSPATH'>/prototype.js"></script>
<style type="text/css">
#info_rem { border-color: #4E8CB9 !important; }
#info_rem_title { background-color: #4E8CB9 !important; }
#wrapperoverlay {
    position: absolute;
    top: 0;
    left: 0;
    width: 100%;
    background: #333;
    z-index:999;
    display: none;
}

</style>

<TMPL_IF CC_MANAGER>
<link href="<TMPL_VAR CSSPATH>/CaseConnect.css" rel="stylesheet" type="text/css">
<link href="<TMPL_VAR CSSPATH>/PagingTable.css" rel="stylesheet" type="text/css">
<link href="<TMPL_VAR CSSPATH>/CaseConnect/edit.css" rel="stylesheet" type="text/css"/>
</TMPL_IF>

</head>

<body onLoad="<TMPL_UNLESS SHOW_MYACC_WITHOUT_PARENT>setInterval('checkparent()',2000);</TMPL_UNLESS><TMPL_UNLESS VERIFY_PASSWORD>window.focus();</TMPL_UNLESS><TMPL_IF EXTRA_ONLOAD><TMPL_VAR EXTRA_ONLOAD></TMPL_IF>" topmargin="0" leftmargin="0" marginwidth="0" marginheight="0"<TMPL_UNLESS ENABLE_V2> class="alternatebody"</TMPL_UNLESS>>

<form name="MYACCOUNT" action="<TMPL_VAR NAME=ACTION>" method="post">

    <TMPL_INCLUDE NAME=common_hidden_input.tpl>
    <INPUT type=hidden NAME="SKIN_TYPE" VALUE="<TMPL_VAR NAME=SKIN_TYPE>">
    <INPUT type=hidden NAME="APPLICATION_TYPE" VALUE="<TMPL_VAR NAME=APPLICATION_TYPE>">
      <TMPL_IF NAME="MYACCOUNT_PREFERENCES">
        <INPUT type=hidden NAME="EVENT" VALUE="MYACCOUNT/SAVE_PREFERENCES">
      <TMPL_ELSE>
        <INPUT type=hidden NAME="EVENT">
      </TMPL_IF>


<!--
<table border="0" cellpadding="0" cellspacing="0" width="100%" height="5">
  <tr height="5">
    <td height="5" bgcolor="#cccccc" class="unifont2pt">&nbsp;</td>
  </tr>
</table>
-->


<center>

<TMPL_INCLUDE NAME="admin_header.tpl">
<!-- end: $RcsFile: $ -->
