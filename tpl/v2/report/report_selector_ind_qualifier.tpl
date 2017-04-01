<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<!-- Begin v2/report/report_selector_ind_qualifier.tpl -->
<!--<TMPL_VAR NAME=SERVER_ID>-->
<html>
<head>
<title>Comprehensvie Health Care Provider Report -- Select your report</title>
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
      <INPUT type=hidden NAME="REFERENCE_CODE" VALUE="<TMPL_VAR NAME=REFERENCE_CODE>">
      <INPUT type=hidden NAME="SKIN_TYPE" VALUE="<TMPL_VAR NAME=SKIN_TYPE>">
      <INPUT type=hidden NAME="APPLICATION_TYPE" VALUE="<TMPL_VAR NAME=APPLICATION_TYPE>">
      <INPUT type=hidden NAME="EVENT" VALUE="REPORT/SAVE_PREFS">
      <INPUT type=hidden NAME="RECID_REPORT" VALUE="<TMPL_VAR NAME="RECID_REPORT">">
      <INPUT type=hidden NAME="UNIQUEID" VALUE="<TMPL_VAR NAME="UNIQUEID">">
      <INPUT type=hidden NAME="FIRST_NAME" VALUE="<TMPL_VAR NAME="FIRST_NAME">">
      <input type="hidden" name="STREET_ADDRESS" value="<TMPL_VAR NAME=STREET_ADDRESS>"/>
      <input type="hidden" name="CITY" value="<TMPL_VAR NAME=CITY>"/>
      <input type="hidden" name="STATE" value="<TMPL_VAR NAME=STATE>"/>
      <input type="hidden" name="ZIP" value="<TMPL_VAR NAME=ZIP>"/>
      <input type="hidden" name="ZIP4" value="<TMPL_VAR NAME=ZIP4>"/>
      <INPUT type=hidden NAME="SSN" VALUE="<TMPL_VAR NAME="SSN">">
      <INPUT type=hidden NAME="COMPANY_NAME" VALUE="<TMPL_VAR NAME="COMPANY_NAME">">
      <INPUT type=hidden NAME="PHONE" VALUE="<TMPL_VAR NAME="PHONE">">
      <INPUT type=hidden NAME="LAST_NAME" VALUE="<TMPL_VAR NAME="LAST_NAME">">
      <INPUT type=hidden NAME="MIDDLE_NAME" VALUE="<TMPL_VAR NAME="MIDDLE_NAME">">
      <input type="hidden" name="MI" value="<TMPL_VAR NAME=MI>"/>
      <INPUT type=hidden NAME="DOB" VALUE="<TMPL_VAR NAME="DOB">">
      <INPUT type=hidden NAME="NPI_NUMBER" VALUE="<TMPL_VAR NAME="NPI_NUMBER">">
      <input type="hidden" name="CC_OPT_IN" value="<TMPL_VAR CC_OPT_IN>"/>
      <input type="hidden" name="PERM" value="<TMPL_VAR PERM>"/>
      <input type="hidden" name="PROVIDER_ID" value="<TMPL_VAR PROVIDER_ID>"/>
      <input type="hidden" name="PROVIDER_SRC" value="<TMPL_VAR PROVIDER_SRC>"/>
    
      <p>&nbsp;</p>
      <table border="0" cellpadding="0" cellspacing="0" width="575" align="center">
        <tr>
        <td valign="top">

<TMPL_UNLESS DELETE_CUSTOM_IND_FR_QUALIFIER_REPORT>
<TMPL_UNLESS DELETE_IND_FR_QUALIFIER_REPORT>
<!-- Start Comprehensive Report Section -->
<div id="reportPopContainer">
 <div id="reportPop">
   <div class="reportPopHdr">Comprehensive Report</div>
      <ul>

        <li>Verification</li>
        <li>Business Address Summary</li>
        <li>Residencies</li>
        <li>Associates</li>
        <li>Professional Licenses</li>
        <li>Specialties</li>
        <li>Licenses</li>
        <li>DEA Information</li>
        <li>Corporate Affiliations</li>
        <li>Group Affiliations</li>
        <li>Hospital Affiliations</li>
        <li>Education</li>
        <li>Degrees</li>
        <li>Sanctions</li>
        <li>GSA Sanctions</li>
        <li>Possible Criminal Records</li>
        <li>Bankruptcy</li>
        <li>Add'l Deceased Data Sources</li>
        <li>Liens and Judgments</li>
        <TMPL_UNLESS DELETE_SEXPREDATOR>
         <TMPL_UNLESS DISABLE_SEXPREDATOR>
          <li>Sex Offenders</li>
         </TMPL_UNLESS>
        </TMPL_UNLESS>
        </ul>

      <div align="center">
        <TMPL_IF NAME="DISABLE_IND_FR_QUALIFIER_REPORT">
            <input tabindex="4" class="rb" type="button" value="Report Disabled" onClick="void(0);" disabled>
        <TMPL_ELSE>
            <input name="BUTTON" tabindex="3" type="button" value="<TMPL_IF REPORT_BUTTON><TMPL_VAR NAME=REPORT_BUTTON><TMPL_ELSE>Request Report</TMPL_IF>" onclick="showpw();send_event('REPORT/IND_FR_QUALIFIER_REPORT');disable_buttons('BUTTON');" />
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

<TMPL_UNLESS DELETE_CUSTOM_IND_QUALIFIER_REPORT>
<TMPL_UNLESS DELETE_IND_QUALIFIER_REPORT>
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
	   <TMPL_IF NAME="DISABLE_IND_QUALIFIER_REPORT">
	       <input tabindex="6" class="rb" type="button" value="Report Disabled" onClick="void(0);" disabled>
	   <TMPL_ELSE>
	       <input name="BUTTON" tabindex="5" type="button" value="<TMPL_IF REPORT_BUTTON><TMPL_VAR NAME=REPORT_BUTTON><TMPL_ELSE>Request Report</TMPL_IF>" onClick="showpw();send_event('REPORT/IND_QUALIFIER_REPORT');disable_buttons('BUTTON');" />
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
<!-- end v2/report/report_selector_ind_qualifier.tpl -->
