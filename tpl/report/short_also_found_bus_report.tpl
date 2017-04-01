<!-- begin: $RCSfile: short_also_found_bus_report.tpl,v $ -->
<html>
<head>
<title><TMPL_VAR NAME="REPORT_NAME"></title>
<link href="<TMPL_VAR NAME='CSSPATH'>/style1.css" rel="stylesheet" type="text/css">
<link href="<TMPL_VAR NAME='CSSPATH'>/<TMPL_VAR NAME=SKIN_TYPE>/skin.css" rel="stylesheet" type="text/css">
<script src="<TMPL_VAR NAME='JSPATH'>/common.js"></script>
<script src="<TMPL_VAR NAME='JSPATH'>/shared.js"></script>
<script src="<TMPL_VAR NAME='JSPATH'>/please_wait.js"></script>
</head>

<body onLoad="window.focus();" topmargin="0" leftmargin="0" marginwidth="0" marginheight="0">

<div id="pleasewait" style="position:absolute; visibility:hidden; z-index:1000;"><img src="<TMPL_VAR NAME=IMGPATH>/arrows_wait_full.gif" id="pw" name="pw" width="400" height="120" border="0"></div>

<form name="SHORT_REPORT" action="<TMPL_VAR NAME=ACTION_REPORT>" method="post">

<TMPL_INCLUDE NAME=common_hidden_input.tpl>
<INPUT type=hidden NAME="SKIN_TYPE" VALUE="<TMPL_VAR NAME=SKIN_TYPE>">
<INPUT type=hidden NAME="APPLICATION_TYPE" VALUE="<TMPL_VAR NAME=APPLICATION_TYPE>">
<!--<INPUT type=hidden NAME="EVENT" VALUE="WS_REPORT/ALSO_FOUND_BUS_REPORT">-->
<INPUT type=hidden NAME="EVENT" VALUE="REPORT/SAVE_ALSO_FOUND_BUS_PREFS">
<INPUT type=hidden NAME="COMPANY" VALUE="<TMPL_VAR NAME="COMPANY">">
<INPUT type=hidden NAME="UNIQUE_ID" VALUE="<TMPL_VAR NAME="UNIQUE_ID">">
<INPUT type=hidden NAME="uccs" VALUE="<TMPL_VAR NAME="INCLUDE_UCCS">">
<INPUT type=hidden NAME="properties" VALUE="<TMPL_VAR NAME="INCLUDE_PROPERTIES">">
<INPUT type=hidden NAME="corporate-filings" VALUE="<TMPL_VAR NAME="INCLUDE_CORPORATE-FILINGS">">
<INPUT type=hidden NAME="motor-vehicles" VALUE="<TMPL_VAR NAME="INCLUDE_MOTOR-VEHICLES">">
<INPUT type=hidden NAME="contacts" VALUE="<TMPL_VAR NAME="INCLUDE_CONTACTS">">

<div align="center" id="mainbody">
<table border="0" cellpadding="0" cellspacing="0" height="10">
  <tr height="10">
    <td height="10" class="unifont2pt">&nbsp;</td>
  </tr>
</table>

<table border="0" cellpadding="0" cellspacing="0" width="620">
  <tr>
    <td align="center">
    <table border="0" cellpadding="2" cellspacing="0" bgcolor="#000000">
      <tr>
        <td><input name="BUTTON" tabindex="1" class="rb" type="button" value="Purchase" onMouseDown="flip_style(this,'rbd');" onClick="showpw();self.document.SHORT_REPORT.submit();disable_buttons('BUTTON');" onMouseOut="flip_style(this,'rb');"></td>
      </tr>
    </table>
    </td>
  </tr>
</table>

<table border="0" cellpadding="0" cellspacing="0" height="10">
  <tr height="10">
    <td height="10" class="unifont2pt">&nbsp;</td>
  </tr>
</table>
<table border="1" cellpadding="0" cellspacing="0" width="640" bgcolor="#ffffff">
  <tr>
    <td>
    <div align="center">
    <table border="0" cellpadding="2" cellspacing="0">
      <tr>
        <td valign="top" align="left" class="myaccountlabel">Company Name</td>
	<td valign="top" align="left" class="unifont1">&nbsp;&nbsp;</td>
	<td valign="top" align="left" class="myaccountlabel">Unique Id</td>
      </tr>
      <tr>
	<td valign="top" align="left" class="smallfont1"><TMPL_VAR NAME=COMPANY></td>
	<td valign="top" align="left" class="unifont1">&nbsp;&nbsp;</td>
	<td valign="top" align="left" class="smallfont1"><TMPL_VAR NAME=UNIQUE_ID></td>
      </tr>
    </table>
    </div>  
    </td>
  </tr>
</table>

<table border="0" cellpadding="0" cellspacing="0" height="10">
  <tr height="30">
    <td height="30" class="unifont2pt">&nbsp;</td>
  </tr>
</table>

	<table border="0" cellpadding="2" cellspacing="0" width="640" class="myaccountborder">
	<tr>
	<td valign="top">
	<table border="0" cellpadding="2" cellspacing="0" width="100%" class="reportselectbody">
	  <tr>
	    <td class="smallfont1">
	    <!--<span class="myaccountlabel">&nbsp;<TMPL_UNLESS HIDE_PRICES>Base Report Price:&nbsp;&nbsp;$<TMPL_VAR NAME="base-bus-price"><TMPL_ELSE>Base Report Features:</TMPL_UNLESS></span>-->
	    <span class="myaccountlabel">&nbsp;Included Options:</span>
	   <br>
	    </td>
	  </tr>

	  <TMPL_IF NAME=INCLUDE_CONTACTS>
	  <tr>
		<td class="smallfont1" valign="top">&nbsp;&nbsp;&nbsp;&nbsp;
		<span class="disabled_small"><input type="checkbox" name="contacts" value="1" id="contacts" checked="true" disabled="true"><label for="contacts">Business Contacts</label></span>
		</td>
	  </tr>
	  </TMPL_IF>

	  <TMPL_IF NAME=INCLUDE_MOTOR-VEHICLES>
	  <tr>
		<td class="smallfont1" valign="top">&nbsp;&nbsp;&nbsp;&nbsp;
		<span class="disabled_small"><input type="checkbox" name="motor-vehicles" value="1" id="motor-vehicles" checked="true" disabled="true"><label for="motor-vehicles">Motor Vehicles</label></span>
		    <!--&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="disabled_small">Motor Vehicles </span>-->
		</td>
	  </tr>
	  </TMPL_IF>

	  <TMPL_IF NAME=INCLUDE_UCCS>
	  <tr>
		<td class="smallfont1" valign="top">&nbsp;&nbsp;&nbsp;&nbsp;
		<span class="disabled_small"><input type="checkbox" name="uccs" value="1" id="uccs" checked="true" disabled="true"><label for="uccs">UCC Filings</label></span>
		    <!--&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="disabled_small"></span>-->
		</td>
	  </tr>
	  </TMPL_IF>

	  <TMPL_IF NAME=INCLUDE_PROPERTIES>
	  <tr>
		<td class="smallfont1" valign="top">&nbsp;&nbsp;&nbsp;&nbsp;
		<span class="disabled_small"><input type="checkbox" name="properties" value="1" id="properties" checked="true" disabled="true"><label for="properties">Properties</label></span>
		    <!--&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="disabled_small"></span>-->
		</td>
	  </tr>
	  </TMPL_IF>

	  <TMPL_IF NAME=INCLUDE_CORPORATE-FILINGS>
	  <tr>
		<td class="smallfont1" valign="top">&nbsp;&nbsp;&nbsp;&nbsp;
		<span class="disabled_small"><input type="checkbox" name="corporate-filings" value="1" id="corporate-filings" checked="true" disabled="true"><label for="corporate-filings">Corporation Filings</label></span>
		    <!--&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="disabled_small">Secretary of State Filings </span>-->
		</td>
	  </tr>
	  </TMPL_IF>

	</table>
	</td>
	</tr>
	</table>


<tmpl_include name="short_others_report_body.tpl">

</div>

</form>
</body>
</html>
<!-- end: $RCSfile: short_also_found_bus_report.tpl,v $ -->
