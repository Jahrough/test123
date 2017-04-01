<!-- Begin court_wizard_select_individual.tpl -->
<html>
<head>
<title>Court Search Wizard</title>
<link href="<TMPL_VAR NAME='CSSPATH'>/<TMPL_VAR NAME=SKIN_TYPE>/skin.css" rel="stylesheet" type="text/css">
<link href="<TMPL_VAR NAME='CSSPATH'>/style1.css" rel="stylesheet" type="text/css">
<link href="<TMPL_VAR NAME='CSSPATH'>/accurint.css" rel="stylesheet" type="text/css">
<link href="<tmpl_var csspath>/<tmpl_var application_type>/diff.css" rel="stylesheet" type="text/css">
<link href="<TMPL_VAR NAME='CSSPATH'>/<TMPL_VAR NAME=APPLICATION_TYPE>/<TMPL_VAR NAME=USER_THEME>.css" rel="stylesheet" type="text/css">
<script src="<TMPL_VAR NAME='JSPATH'>/common.js"></script>
<script src="<TMPL_VAR NAME='JSPATH'>/shared.js"></script>
</head>

<body onLoad="window.focus();" topmargin="0" leftmargin="0" marginwidth="0" marginheight="0">

<div id="hd">
<h2><a trackid="hdr_top_logo">LexisNexis Accurint</a></h2>
</div>

<form name="CONTACT_US" action="<TMPL_VAR NAME=ACTION>" method="post"> 
<TMPL_INCLUDE NAME=common_hidden_input.tpl>
<INPUT type=hidden NAME="SKIN_TYPE" VALUE="<TMPL_VAR NAME=SKIN_TYPE>">
<INPUT type=hidden NAME="APPLICATION_TYPE" VALUE="<TMPL_VAR NAME=APPLICATION_TYPE>">
<INPUT type=hidden NAME="EVENT" VALUE="<TMPL_VAR NAME=EVENT>">

<div align="center">

<table cellpadding="0" cellspacing="0" border="0">
  <tr>
    <td>
    <p class="smallgray" style="padding-left:20px; padding-right:10px;">Our user friendly <b>Court Search Wizard</b> will guide you through your order, allowing you to conduct on-site "Courthouse Searches" sending trained researchers to over 3,000 courthouses across the country to obtain county and federal civil and criminal histories as well as state criminal histories (where available) of your subject.</p>
    <p class="smallgray">&nbsp;</p>
    <p class="smallgray" style="padding-left:20px; padding-right:10px;">
    <ol class="smallgray" style="padding-left:25px; padding-right:50px;">
      <li>You must first run a search to locate the individual on which you would like to perform a Court Search.<br><br></li>
      <li>After locating the individual, click the Court Search icon on the search results screen. This will launch the Court Search ordering wizard.<br><br></li>
      <li>The first page of the wizard will display a list of current and prior addresses for your individual.<br><br></li>
      <li>After choosing the addresses you wish to use for your searches, you will then be shown the available search types (i.e. county, state and federal) and prompted to choose which type(s) of searches to perform on the addresses you chose.<br><br></li>
      <li>With each search type you choose, you know exactly how many searches will be performed, the unit price for each search, and the extended price.<br><br></li>
      <li>The total cost, including access fees, will be prominently displayed prior to the completion of your order.<br><br></li>
      <li>A notification email will be sent to you as results are returned for your order.<br><br></li>
      <li>To view returned results from this order, click on Report Manager under the My Account section.<br><br></li>
      <li>You may wish to <a href="javascript:void(0);" onClick="window.print();" title="Click to Print"><b>[ Print ]</b></a> these instructions before you begin.</li>
    </ol>
    </p>
    <p class="smallgray">&nbsp;</p>
    <p class="smallgray" style="font-weight: bold; padding-left:20px; padding-right:10px;">To begin using the Court Search Wizard please click:</p>
    <p class="smallgray">&nbsp;</p>
    <p align="center" class="smallgray" style="padding-left:20px; padding-right:10px;">
    <input name="BUTTON" tabindex="9" type="button" value="<  Search for an Individual  >" onClick="if(opener.document.forms[0].COURT_SEARCH_WIZARD){opener.document.forms[0].COURT_SEARCH_WIZARD.value=1}opener.send_event('SEARCH/SHOW_<TMPL_IF XBPS>ADV<TMPL_ELSE>SEARCH</TMPL_IF>');window.close();" />
    </p>
    </td>
  </tr>
</table>

</div>

</form>
</body>
</html>
<!-- End court_wizard_select_individual.tpl -->
