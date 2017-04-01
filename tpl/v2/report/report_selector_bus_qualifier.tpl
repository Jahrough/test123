<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<!-- Begin v2/report/report_selector_bus_qualifier.tpl -->
<!--<TMPL_VAR NAME=SERVER_ID>-->
<html>
<head>
<title>Comprehensive Health Care Business Report -- Select your report</title>
<link href="<TMPL_VAR NAME='CSSPATH'>/<TMPL_VAR APPLICATION_TYPE>/diff.css" rel="stylesheet" type="text/css">
<link href="<TMPL_VAR NAME='CSSPATH'>/accurint.css" rel="stylesheet" type="text/css">
<script src="<TMPL_VAR NAME='JSPATH'>/common.js"></script>
<script src="<TMPL_VAR NAME='JSPATH'>/shared.js"></script>
<script src="<TMPL_VAR NAME='JSPATH'>/report.js"></script>
<script src="<TMPL_VAR NAME='JSPATH'>/please_wait.js"></script>
</head>

<body style="background-image:url(<TMPL_VAR NAME=IMGPATH>/hdr_bar.gif); background-repeat:no-repeat;">
<p>&nbsp;</p>
<div id="pleasewait" style="position:absolute; top:250px;left:300px; visibility:hidden; z-index:1000;">
<img src="<TMPL_VAR NAME=IMGPATH>/bg_searching_report.gif" id="pw" name="pw" width="300" height="65" border="0">
</div>

<form name="SHORT_REPORT" action="<TMPL_VAR NAME=ACTION_REPORT>" method="post">
      <TMPL_INCLUDE NAME=common_hidden_input.tpl>
      <input type="hidden" name="REFERENCE_CODE" value="<TMPL_VAR REFERENCE_CODE>"/>
      <INPUT type=hidden NAME="SKIN_TYPE" VALUE="<TMPL_VAR NAME=SKIN_TYPE>">
      <INPUT type=hidden NAME="APPLICATION_TYPE" VALUE="<TMPL_VAR NAME=APPLICATION_TYPE>">
      <INPUT type=hidden NAME="EVENT" VALUE="REPORT/SAVE_PREFS">
      <INPUT type=hidden NAME="ADDRESS" VALUE="<TMPL_VAR NAME="ADDRESS">">
      <INPUT type=hidden NAME="STREET_ADDRESS" VALUE="<TMPL_VAR NAME="STREET_ADDRESS">">
      <INPUT type=hidden NAME="CITY" VALUE="<TMPL_VAR NAME="CITY">">
      <INPUT type=hidden NAME="STATE" VALUE="<TMPL_VAR NAME="STATE">">
      <INPUT type=hidden NAME="ZIP" VALUE="<TMPL_VAR NAME="ZIP">">
      <INPUT type=hidden NAME="FEIN" VALUE="<TMPL_VAR NAME="FEIN">">
      <INPUT type=hidden NAME="COMPANY_NAME" VALUE="<TMPL_VAR NAME="COMPANY_NAME">">
      <INPUT type=hidden NAME="PHONE" VALUE="<TMPL_VAR NAME="PHONE">">
      <INPUT type=hidden NAME="BDIDS" VALUE="<TMPL_VAR NAME="BDIDS">">
      
      <p>&nbsp;</p>
      <table border="0" cellpadding="0" cellspacing="0" width="575" align="center">
        <tr>
        <td valign="top">


<TMPL_UNLESS DELETE_CUSTOM_BUS_FR_QUALIFIER_REPORT>
<TMPL_UNLESS DELETE_BUS_FR_QUALIFIER_REPORT>
<!-- Start Comprehensive Report Section -->
<div id="reportPopContainer">
 <div id="reportPop">
   <div class="reportPopHdr">Comprehensive Report</div>
      <ul>

        <li>Name and TIN Variations</li>
        <li>Parent Company and Industry Information</li>
        <li>Bankruptcy</li>
        <li>Liens &amp; Judgments</li>
        <li>Corporation Filings</li>
        <li>Business Registrations</li>
        <li>UCC Filings</li>
        <li>Associated Businesses</li>
        <li>Associated People</li>
        <li>Business Phone Matches</li>
        <li>Motor Vehicles</li>
        <li>Properties</li>
        <li>FAA Aircraft</li>
        <li>Watercraft</li>
        <li>Internet Domain Names</li>
        <li>IRS5500</li>
        <li>Sanctions</li>
        <TMPL_UNLESS DELETE_CUSTOM_D_AND_B>
        <li>Dun &amp; Bradstreet Records</li>
        </TMPL_UNLESS>
        </ul>

      <div align="center">
        <TMPL_IF NAME="DISABLE_BUS_FR_QUALIFIER_REPORT">
            <input tabindex="4" class="rb" type="button" value="Report Disabled" onClick="void(0);" disabled>
        <TMPL_ELSE>
            <input name="BUTTON" tabindex="3" type="button" value="<TMPL_IF REPORT_BUTTON><TMPL_VAR NAME=REPORT_BUTTON><TMPL_ELSE>Request Report</TMPL_IF>" onclick="showpw();send_event('REPORT/BUS_FR_QUALIFIER_REPORT');disable_buttons('BUTTON');" />
        </TMPL_IF>
      </div>

 </div>
  <div id="reportPopBot"></div>
<div id="clear"></div>
<p>&nbsp;</p>
<!-- End Comprehensive Report Section -->
</TMPL_UNLESS>
</TMPL_UNLESS>

</td>


<td valign="top">

<TMPL_UNLESS DELETE_CUSTOM_BUS_QUALIFIER_REPORT>
<TMPL_UNLESS DELETE_BUS_QUALIFIER_REPORT>
<!-- Start Custom Comp Report Section -->   
<div id="reportPopContainer">
 <div id="reportPop">
   <div class="reportPopHdr">Custom Comp Report</div>
	    <ul>
	     <li>Pick and choose your <br />
	       report selections)     </li>
	   </ul>
	   <p>&nbsp;</p>

	   <div align="center">
	   <TMPL_IF NAME="DISABLE_BUS_QUALIFIER_REPORT">
	       <input tabindex="6" class="rb" type="button" value="Report Disabled" onClick="void(0);" disabled>
	   <TMPL_ELSE>
	       <input name="BUTTON" tabindex="5" type="button" value="<TMPL_IF REPORT_BUTTON><TMPL_VAR NAME=REPORT_BUTTON><TMPL_ELSE>Request Report</TMPL_IF>" onClick="showpw();send_event('REPORT/BUS_QUALIFIER_REPORT');disable_buttons('BUTTON');" />
	   </TMPL_IF>
	   </div>
 </div>
  <div id="reportPopBot"></div>
</div>
<!-- End Custom Comp Report Section -->
</TMPL_UNLESS>  
</TMPL_UNLESS>  

</td>
</tr>
</table>

</form>

<TMPL_INCLUDE NAME="lexisnexis_footer.tpl">

</body>
</html>
<!-- End v2/report/report_selector_bus_qualifier.tpl -->
