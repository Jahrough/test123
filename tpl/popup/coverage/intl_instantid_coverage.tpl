<html>
<head>
<title>International InstantId</title>
<link href="<TMPL_VAR NAME='CSSPATH'>/<TMPL_VAR NAME=SKIN_TYPE>/coverage.css" rel="stylesheet" type="text/css">
<script src="<TMPL_VAR NAME='JSPATH'>/common.js"></script>
<script src="<TMPL_VAR NAME='JSPATH'>/shared.js"></script>
<script>
function display_coverage(tpl_name) {
    document.COVERAGE.TPL.value = tpl_name;
    send_event("LOGIN/SHOW_POPUP");
}
</script>
</head>
<body onLoad="window.focus();" topmargin="0" leftmargin="0" marginwidth="0" marginheight="0">

<form name="COVERAGE" action="<TMPL_VAR NAME=ACTION>" method="post">
  <TMPL_INCLUDE NAME=common_hidden_input.tpl>
  <INPUT type=hidden NAME="EVENT" VALUE="">
  <INPUT type=hidden NAME="TPL" VALUE="">
  <INPUT type=hidden NAME="CURRENT_EVENT" VALUE="<TMPL_VAR NAME=CURRENT_EVENT>">
  <INPUT type=hidden NAME="SKIN_TYPE" VALUE="<TMPL_VAR NAME=SKIN_TYPE>">
  <INPUT type=hidden NAME="APPLICATION_TYPE" VALUE="<TMPL_VAR NAME=APPLICATION_TYPE>">

<table border="0" cellpadding="5" cellspacing="0" width="100%">
    <tr>
    <td align="center" width="99%" valign="top"><span class="coveragetitle"><B>InstantID&reg; International Source</B></span></td>
	<td align="right" width="1%" valign="top"><TMPL_INCLUDE NAME="print_button.tpl"></td>
    </tr>
</table>
<div class="coveragetext">
    Please note that depending on your product subscription, you may or may not have this source available. An account addendum is required for access to this search feature. 
    <br /><br /><br />
    LexisNexis® InstantID International uses sophisticated, multi-source data comparisons to verify the entered information.
    <br><br /> 
    The sources used vary by country and include electronic directory assistance, electronic electoral roll, and other sources that are updated regularly. 
    <br /><br /> 
    The data entered is verified using these sources, as well as validated using sophisticated software tools.
    <br /><br /> 
    The searchable fields vary by country and your input screen changes upon selection of a country in which to perform your search.
</div>
</form>
</body>
</html>
