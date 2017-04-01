
<html>
<head>
<title>Help Menu</title>
<link href="<TMPL_VAR NAME='CSSPATH'>/<TMPL_VAR NAME=SKIN_TYPE>/skin.css" rel="stylesheet" type="text/css">
<link href="<TMPL_VAR NAME='CSSPATH'>/style1.css" rel="stylesheet" type="text/css">
<link href="<TMPL_VAR NAME='CSSPATH'>/accurint.css" rel="stylesheet" type="text/css">
<link href="<tmpl_var csspath>/<tmpl_var application_type>/diff.css" rel="stylesheet" type="text/css">
<link href="<TMPL_VAR NAME='CSSPATH'>/<TMPL_VAR NAME=APPLICATION_TYPE>/<TMPL_VAR NAME=USER_THEME>.css" rel="stylesheet" type="text/css">

<script src="<TMPL_VAR NAME='JSPATH'>/common.js"></script>
<script src="<TMPL_VAR NAME='JSPATH'>/shared.js"></script>
<script src="<TMPL_VAR NAME='JSPATH'>/please_wait.js"></script>
<script>

var vertical = '<TMPL_VAR NAME=APPLICATION_TYPE>';

function open_elearning_help() {
    window.moveTo (50,50);
    if (document.all) {
	top.window.resizeTo ((screen.availWidth - 100), (screen.availHeight - 100));
    } else if (document.layers||document.getElementById) {
	if (top.window.outerHeight < screen.availHeight || top.window.outerWidth < screen.availWidth) {
	    top.window.outerHeight = (screen.availHeight - 100);
	    top.window.outerWidth = (screen.availWidth - 100);
	}
    }
    if (vertical == 'irb') {
	location.href = "https://secure.irbsearch.com/elearning/index.html";
    } else if (vertical == 'gov' || vertical == 'le' || vertical == 'gcol') {
	location.href = "https://learn.lexisnexis.com/lexisnexis/user_home.aspx?portal=gov";
    } else {
	location.href = "https://learn.lexisnexis.com/lexisnexis/user_home.aspx";
    }
}
    

function open_html_help () {
    top.location.href = "<TMPL_VAR NAME=HLPPATH>/" + opener.help_html_file;
}

</script>

</head>

<body onLoad="window.focus();" topmargin="0" leftmargin="0" marginwidth="0" marginheight="0">

<div id="hd"><span id="hdr_top_logo"></span></h2></div>

<form name="HELP_OPTION" action="<TMPL_VAR NAME=ACTION_MISC>" method="post">
  <TMPL_INCLUDE NAME=common_hidden_input.tpl>
  <INPUT type=hidden NAME="EVENT" VALUE="MISC/SHOW_FLASH_HELP">
  <INPUT type=hidden NAME="SKIN_TYPE" VALUE="<TMPL_VAR NAME=SKIN_TYPE>">
  <INPUT type=hidden NAME="APPLICATION_TYPE" VALUE="<TMPL_VAR NAME=APPLICATION_TYPE>">
  <INPUT type=hidden NAME="HELP_NAME" VALUE="">


<div id="mainbody" align="center">

<table border="0" cellpadding="10" cellspacing="0">
  <tr>
    <td>
    <center><b>Select Text Only Help<TMPL_UNLESS IRB> OR launch the <TMPL_IF IRB>IRBsearch<TMPL_ELSE>LexisNexis&reg;</TMPL_IF> Training Center!</TMPL_UNLESS></b></center>
    <BR><BR>
    <font size="-1">
    <b>1.</b>&nbsp; <a href="javascript:open_html_help();"><b><u>Search-Specific help in HTML format</u></b></a>
    <br><br>
    This <a href="javascript:open_html_help();"><b><u>HTML Help</u></b></a> file is specifically tailored to this particular search or product.&nbsp; There is a link inside this help file at the bottom providing you a PDF formatted version for printing purposes.
    <br><br>
    <TMPL_IF IRB>
    <b>2.</b>&nbsp; For technical assistance, call <b><TMPL_IF IRB>1-800-447-2112<TMPL_ELSE>1-866-277-8407</TMPL_IF></b>.
    <TMPL_ELSE>
    <b>2.</b>&nbsp; <a href="javascript:open_elearning_help();"><b><u><TMPL_IF IRB>IRBsearch<TMPL_ELSE>LexisNexis&reg;</TMPL_IF> Training Center</b></u></a>
    <br><br>
    To access <TMPL_IF IRB>IRBsearch<TMPL_ELSE>Accurint</TMPL_IF> eLearning, please visit the  <a href="javascript:open_elearning_help();"><b><u><TMPL_IF IRB>IRBsearch<TMPL_ELSE>LexisNexis&reg;</TMPL_IF> Training Center</u></b></a>, our complimentary interactive, self-service website which allows you to easily view, access and engage in a variety of training experiences.
    <br><br>
    <b>3.</b>&nbsp; For technical assistance, call <b><TMPL_IF IRB>1-800-447-2112<TMPL_ELSE>1-866-277-8407</TMPL_IF></b>.
    </TMPL_IF>
    </font>
    </td>
  </tr>
</table>

</div>

</form>

</div>

<TMPL_INCLUDE NAME="lexisnexis_footer.tpl">

</body>
</html>
