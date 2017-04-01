<!-- Begin report/customized/prudential_report.tpl -->
<!--<TMPL_VAR NAME=SERVER_ID>-->
<html>
<head>
<title>Combined Comp Report</title>
<link href="<TMPL_VAR NAME='CSSPATH'>/style1.css" rel="stylesheet" type="text/css">
<link href="<TMPL_VAR NAME='CSSPATH'>/<TMPL_VAR NAME=SKIN_TYPE>/report.css" rel="stylesheet" type="text/css">
<script>function logout(){document.forms[0].submit(); } </script>
<script src="<TMPL_VAR NAME='JSPATH'>/shared.js"></script>
<script src="<TMPL_VAR NAME='JSPATH'>/common.js"></script>
<script src="<TMPL_VAR NAME='JSPATH'>/report.js"></script>

</head>

<body ONLOAD="window.focus()" topmargin="0" leftmargin="0" marginwidth="0" marginheight="0" bgcolor="#ffffff">
<TMPL_UNLESS FROM_WEB>
<XML ID="XMLID">
    <XMLDATA>
	<status><TMPL_VAR NAME=XML_STATUS></status>
	<reportreference><TMPL_VAR NAME=XML_REPORTREFERENCE></reportreference>
	<prureference><TMPL_VAR NAME=XML_PRUREFERENCE></prureference>
	<reportdate><TMPL_VAR NAME=XML_REPORTDATE></reportdate>
    </XMLDATA>
</XML>
<table width="100%" align=right><tr><td width="100%" align=right class="smallfont1"><a class="searchresultslink" href="javascript:logout()">Logout</a></td></tr></table>
<br>
<form method=post action="<TMPL_VAR NAME=ACTION>"><input type="hidden" name="EVENT" value="LOGOUT"></form>
</TMPL_UNLESS>
<center>
<br/>

<center>
<table align=center width="75%">    
<tr>
     <td align="right" class="smallfont1"><b>Report ID :</b></td><td align="left" class="smallfont1"><TMPL_VAR NAME=XML_REPORTREFERENCE></td>
     <td align="right" class="smallfont1"><b>Report Date  :</b></td><td align="left" class="smallfont1"><TMPL_VAR NAME=XML_REPORTDATE></td>
     <td align="right" class="smallfont1"><b>Reference Code  :</b></td><td align="left" class="smallfont1"><TMPL_VAR NAME=XML_PRUREFERENCE></td>
    </tr>
</table>    
</center>

<table width="75%" bgcolor="<TMPL_IF FROM_WEB>#ebebd8<TMPL_ELSE>#ffffcc</TMPL_IF>" border=1><tr>
<td width="50%" align="left" valign="top">
<table cellpadding="2" cellspacing="0" width="100%">
    <tr><td colspan=2 align=left  class="smallfont1"><b><u>Person Input Data</u></b></td></tr>
    <tr><td width="15%" class="smallfont1">Name</td> <td class="smallfont1"><TMPL_VAR NAME=name></td> </tr>
    <tr><td class="smallfont1">SSN</td> <td class="smallfont1" align="left"><TMPL_VAR NAME=ssn></td></tr>
    <tr><td class="smallfont1">DOB</td> <td class="smallfont1" align="left"><TMPL_VAR NAME=dob></td></tr>
    <tr><td class="smallfont1">Address</td> <td class="smallfont1" ><TMPL_VAR NAME=addr></td></tr>
    <tr><td class="smallfont1">City</td> <td class="smallfont1"><TMPL_VAR NAME=city></td></tr>
    <tr><td class="smallfont1">State</td> <td class="smallfont1" align="left"><TMPL_VAR NAME=state></td></tr>
    <tr><td class="smallfont1">Zip</td> <td class="smallfont1" align="left"><TMPL_VAR NAME=zip></td></tr>
    <tr><td class="smallfont1">Telephone</td> <td class="smallfont1"><TMPL_VAR NAME=tel></td></tr>
</table>
</td>
<td width="50%" align="left" valign="top">
<table cellpadding="2" cellspacing="0" width="100%">
    <tr><td colspan=2 align=left  class="smallfont1"><b><u>Business Input Data</u></b></td></tr>
    <tr><td width="15%" class="smallfont1">Company</td><td class="smallfont1"><TMPL_VAR NAME=company></td></tr>
    <tr><td class="smallfont1">Address</td> <td class="smallfont1"><TMPL_VAR NAME=busaddr></td></tr>
    <tr><td class="smallfont1">City</td> <td class="smallfont1"><TMPL_VAR NAME=buscity></td></tr>
    <tr><td class="smallfont1">State</td> <td class="smallfont1"><TMPL_VAR NAME=busstate></td></tr>
    <tr><td class="smallfont1">Zip</td> <td class="smallfont1"><TMPL_VAR NAME=buszip></td></tr>
    <tr><td class="smallfont1">Telephone</td><td class="smallfont1"><TMPL_VAR NAME=bustel></td></tr>
</table>
</td>
</tr></table>

</center>
<br><br>
<TMPL_IF NAME=COMP_NUM>
&#160;&#160;&#160;&#160;&#160;<a class="searchresultslink" href="#compreport"><TMPL_VAR NAME=COMP_NUM>. Comprehensive Report</a><br/>
</TMPL_IF>
<TMPL_IF NAME=BUS_NUM>
&#160;&#160;&#160;&#160;&#160;<a class="searchresultslink" href="#busreport"><TMPL_VAR NAME=BUS_NUM>. Business Report</a><br/>
</TMPL_IF>
<TMPL_IF NAME=PAT_NUM>
&#160;&#160;&#160;&#160;&#160;<a class="searchresultslink" href="#patreport"><TMPL_VAR NAME=PAT_NUM>. USA PATRIOT Act Search Results for the Individual</a><br/>
</TMPL_IF>
<TMPL_IF NAME=PAT_BUS_NUM>
&#160;&#160;&#160;&#160;&#160;<a class="searchresultslink" href="#patbusreport"><TMPL_VAR NAME=PAT_BUS_NUM>. USA PATRIOT Act Search Results for the Company</a><br/>
</TMPL_IF>
<br/>

<TMPL_IF NAME=COMP_NUM>
<a id="compreport"> </a>
&#160;&#160;&#160;&#160;&#160;<span class="reportheader3"><TMPL_VAR NAME=COMP_NUM>. Comprehensive Report</span>
    <TMPL_VAR NAME='COMP_REPORT'>
<br/><br/>
</TMPL_IF>

<TMPL_IF NAME=BUS_NUM>
<a id="busreport"> </a>
&#160;&#160;&#160;&#160;&#160;<span class="reportheader3"><TMPL_VAR NAME=BUS_NUM>. Business Report</span>
    <TMPL_VAR NAME='BUS_REPORT'>
<br/><br/>
</TMPL_IF>

<TMPL_IF NAME=PAT_NUM>
<a id="patreport"> </a>
&#160;&#160;&#160;&#160;&#160;<span class="reportheader3"><TMPL_VAR NAME=PAT_NUM>. USA PATRIOT Act Search Results for an Individual</span>
    <TMPL_VAR NAME='PAT_REPORT'>
<br/><br/>
</TMPL_IF>

<TMPL_IF NAME=PAT_BUS_NUM>
<a id="patbusreport"> </a>
&#160;&#160;&#160;&#160;&#160;<span class="reportheader3"><TMPL_VAR NAME=PAT_BUS_NUM>. USA PATRIOT Act Search Results for a Company</span>
    <TMPL_VAR NAME='PAT_BUS_REPORT'>
</TMPL_IF>

</body>
</html>
<!-- End report/customized/prudential_report.tpl -->
