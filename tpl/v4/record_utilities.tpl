<!DOCTYPE html>
<html lang="en">
<head>
<!-- begin record_utilities.tpl -->
<title>LexisNexis&reg;</title>
<link href="<TMPL_VAR NAME='CSSPATH'>/<TMPL_VAR NAME=SKIN_TYPE>/skin.css" rel="stylesheet" type="text/css">
<link href="<TMPL_VAR NAME='CSSPATH'>/accurint.css" rel="stylesheet" type="text/css">
<link href="<TMPL_VAR NAME='CSSPATH'>/<TMPL_VAR NAME=APPLICATION_TYPE>/<TMPL_IF NAME="FCRA_MODE">2<TMPL_ELSE><TMPL_VAR NAME=USER_THEME></TMPL_IF>.css" rel="stylesheet" type="text/css">


<script src="<TMPL_VAR NAME=JSPATH>/v4/libs/jquery-1.11.1.min.js"></script>
<script src="<TMPL_VAR NAME=JSPATH>/v4/libs/jquery-ui-1.10.3.min.js"></script>
<!-- JQUERY VALIDATE (Must load before ie8fixes.js) -->
<script defer src="<TMPL_VAR NAME='JSPATH'>/v4/plugin/jquery-validate/jquery.validate.min.js"></script>
<script defer src="<TMPL_VAR NAME='JSPATH'>/v4/usertiming.min.js"></script>
<script defer src="<TMPL_VAR NAME='JSPATH'>/v4/web20_markers.js"></script>

<!-- IE 8&9 Compatibility -->
<!--[if lt IE 9]>
    <script>
        isIE8 = true;
        _allow_browser_caching = false;
        if (!window.console) console = {log: function() {}};
    </script>
    <link rel="stylesheet" type="text/css" media="screen" href="<TMPL_VAR NAME='CSSPATH'>/ie8fixes.css" />
    <script src="<TMPL_VAR NAME='JSPATH'>/v4/bootstrap/html5shiv.min.js"></script>
    <script defer src="<TMPL_VAR NAME='JSPATH'>/v4/bootstrap/respond.min.js"></script>
    <script defer src="<TMPL_VAR NAME='JSPATH'>/v4/ie8fixes.js"></script>
<![endif]-->
<!--[if IE 9]>
    <script>
        if (!window.console) console = {log: function() {}};
    </script>
    <link rel="stylesheet" type="text/css" media="screen" href="<TMPL_VAR NAME='CSSPATH'>/ie9fixes.css" />
<![endif]-->

<script src="<TMPL_VAR NAME='JSPATH'>/v4/record_utilities/common.js"></script>
<TMPL_IF NAME='COMMON_RECORD_UTILS_JS'><script src="<TMPL_VAR NAME='JSPATH'>/v4/record_utilities/<TMPL_VAR NAME='COMMON_RECORD_UTILS_JS'>.js"></script></TMPL_IF>
<script src="<TMPL_VAR NAME='JSPATH'>/v4/record_utilities/<TMPL_VAR NAME='SEARCH_NAME'>.js"></script>

<style type="text/css">
.clipstyle {
	background:#F4F0DE none repeat scroll 0 0;
	border:1px solid #336699;
	height:250px;
	width:500px;
}
footer {
    height: 84px;
    background-color: #f5f5f5;
    padding: 10px;
    border-top: #EE7623;
    border-top-style: dashed;
    border-top-width: thin;
    clear: both;
    font-family: "Helvetica Neue",Helvetica,Arial,sans-serif;
    font-size: .8em;
    line-height: 1.5;
}
footer p {
    margin: 0;
}
footer a + a {
    padding-left: 5px;
    margin-left: 5px;
    border-left: 1px solid #333;
}
footer.announcements{
    margin-top: 0px;
    border-top-style:inherit;
}
footer a, a:link, a:active, a:visited {
    text-decoration: none;
    color: #00778B;
}
footer a:hover {
    text-decoration: underline;
    color: #00778B;
}
</style>
<script>
var water_down_non_fcra = <TMPL_IF NAME=WATER_DOWN_NON_FCRA>true<TMPL_ELSE>false</TMPL_IF>;
var fcra_request = <TMPL_IF NAME=FCRA_REQUEST>true<TMPL_ELSE>false</TMPL_IF>;
</script>


</head>

<TMPL_IF NAME=CUSTOM_DISPLAY_RECORD>
<body onLoad="window.focus();<TMPL_VAR NAME=CUSTOM_DISPLAY_RECORD>();" topmargin="0" leftmargin="0" marginwidth="0" marginheight="0">
<TMPL_ELSE>
<body onLoad="window.focus();display_record('<TMPL_VAR ESCAPE=HTML NAME='LBL'>');" topmargin="0" leftmargin="0" marginwidth="0" marginheight="0">
</TMPL_IF>


<TMPL_IF AML>
    <header><h1><img src="<tmpl_var name=IMGPATH>/LN-AML-Insight.png" alt="LexisNexis&copy; AML Insight&trade;"/></h1></header>
<TMPL_ELSE>
    <header><h1><img src="<tmpl_var name=IMGPATH>/LN-RSKM.png" alt="LexisNexis&copy; Risk Management Solutions&reg;"/></h1></header>
</TMPL_IF>

<form name="CLIP">
<INPUT TYPE="HIDDEN" NAME="REC_TXT" VALUE="">

<table width="95%" border="0" align="center" cellpadding="5" cellspacing="0">
  <tr>
    <script>display_text_v4();</script>
  </tr>
</table>

<br>
<table width="75%" border="0" align="center" cellpadding="5" cellspacing="0">
  <tr>
    <td align="left">
      <script>write_textarea_v4();</script>
    </td>
  </tr>
</table>
</form>

<br>

<TMPL_INCLUDE NAME="lexisnexis_footer.tpl">

</body>
</html>
<!-- end record_utilities.tpl -->
