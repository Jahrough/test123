<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<!-- Begin xbps/report/report_selector.tpl -->
<!--<TMPL_VAR NAME=SERVER_ID>-->
<html>
<head>
<title>Report -- Select your report</title>
<link href="<TMPL_VAR NAME='CSSPATH'>/<TMPL_VAR APPLICATION_TYPE>/diff.css" rel="stylesheet" type="text/css">
<link href="<TMPL_VAR NAME='CSSPATH'>/accurint.css" rel="stylesheet" type="text/css">
<link href="<TMPL_VAR NAME='CSSPATH'>/<TMPL_VAR NAME=APPLICATION_TYPE>/<TMPL_VAR NAME=USER_THEME>.css" rel="stylesheet" type="text/css">
<script src="<TMPL_VAR NAME='JSPATH'>/common.js"></script>
<script src="<TMPL_VAR NAME='JSPATH'>/shared.js"></script>
<script src="<TMPL_VAR NAME='JSPATH'>/report.js"></script>
<script src="<TMPL_VAR NAME='JSPATH'>/please_wait.js"></script>
</head>

<body>
<div id="hd"><span id="hdr_top_logo"></span></div>
<div id="pleasewait" style="position:absolute; top:250px;left:300px; visibility:hidden; z-index:1000;">
<img src="<TMPL_VAR NAME=IMGPATH>/bg_searching_report.gif" id="pw" name="pw" width="300" height="65" border="0">
</div>

<form name="SHORT_REPORT" action="<TMPL_VAR NAME=ACTION_REPORT>" method="post">
      <TMPL_INCLUDE NAME=common_hidden_input.tpl>
      <INPUT type=hidden NAME="SKIN_TYPE" VALUE="<TMPL_VAR NAME=SKIN_TYPE>">
      <INPUT type=hidden NAME="APPLICATION_TYPE" VALUE="<TMPL_VAR NAME=APPLICATION_TYPE>">
      <INPUT type=hidden NAME="EVENT" VALUE="REPORT/SAVE_PREFS">
      <INPUT type=hidden NAME="RECID_REPORT" VALUE="<TMPL_VAR NAME="RECID_REPORT">">
      <INPUT type=hidden NAME="UNIQUEID" VALUE="<TMPL_VAR NAME="UNIQUEID">">
      <INPUT type=hidden NAME="FULL_NAME" VALUE="<TMPL_VAR NAME="FULL_NAME">">
      <INPUT type=hidden NAME="FIRST_NAME" VALUE="<TMPL_VAR NAME="FIRST_NAME">">
      <INPUT type=hidden NAME="ADDRESS" VALUE="<TMPL_VAR NAME="ADDRESS">">
      <INPUT type=hidden NAME="CSZ" VALUE="<TMPL_VAR NAME="CSZ">">
      <INPUT type=hidden NAME="AGE" VALUE="<TMPL_VAR NAME="AGE">">
      <INPUT type=hidden NAME="PHONE" VALUE="<TMPL_VAR NAME="PHONE">">
      <INPUT type=hidden NAME="LAST_NAME" VALUE="<TMPL_VAR NAME="LAST_NAME">">
      <INPUT type=hidden NAME="MIDDLE_NAME" VALUE="<TMPL_VAR NAME="MIDDLE_NAME">">
      <INPUT type=hidden NAME="SUFFIX" VALUE="<TMPL_VAR NAME="SUFFIX">">
      <INPUT type=hidden NAME="DOB" VALUE="<TMPL_VAR NAME="DOB">">
      <INPUT type=hidden NAME="relative-depth" VALUE="<TMPL_VAR NAME="relative-depth">">
      <INPUT type=hidden NAME="neighborhood-count" VALUE="<TMPL_VAR NAME="neighborhood-count">">
      <INPUT type=hidden NAME="neighbor-count" VALUE="<TMPL_VAR NAME="neighbor-count">">
      
    
      <p>&nbsp;</p>
      <table border="0" cellpadding="0" cellspacing="0" width="575" align="center">
        <tr>
        <td valign="top">


<TMPL_UNLESS NAME="DELETE_ASSET_REPORT">
<!-- Start Asset Report Section -->   
<div id="reportPopContainer">
 <div id="reportPop">
   <div class="reportPopHdr">Asset Report</div>
      <ul>

        <li>Summary Report<br />
          <span class="smallblack">(Indicators and more)</span></li>
        <li>Property Deeds &amp; Assessments</li>
        <li>Vehicle Investigations</li>
        <li>Watercraft</li>

        <li>FAA Pilots &amp; FAA Aircraft</li>
        <li>UCC Filings</li>
        <li>People at Work</li>
        </ul>

	<div align="center">
	      <TMPL_IF NAME="DISABLE_ASSET_REPORT">
		   <input tabindex="10" class="rb" type="button" value="Report Disabled" onClick="void(0);" disabled>
	      <TMPL_ELSE>
		   <input name="BUTTON" tabindex="9" type="button" value="<TMPL_IF REPORT_BUTTON><TMPL_VAR NAME=REPORT_BUTTON><TMPL_ELSE>Request Report</TMPL_IF>" onclick="showpw();send_event('REPORT/ASSET');disable_buttons('BUTTON');" />
	      </TMPL_IF>
        </div>

 </div>
  <div id="reportPopBot"></div>
</div>
<div id="clear"></div>
<p>&nbsp;</p>
<p>&nbsp;</p>
<!-- End Asset Report Section -->
</TMPL_UNLESS>  

<TMPL_UNLESS DELETE_COMPREHENSIVE_REPORT>
<!-- Start Comprehensive Report Section -->   
<div id="reportPopContainer">
 <div id="reportPop">
   <div class="reportPopHdr">National Comp. Report</div>
      <ul>

        <li>Summary Report <br />
        <span class="smallblack">(Indicators and more)</span></li>
        <li>Bankruptcy</li>
        <li>Liens and Judgments</li>
        <li>UCC Filings</li>
        <li>Fictitious Business Name (DBA)</li>
        <li>People at Work</li>

        <li>Driver Licenses</li>
        <li>Vehicle Investigations</li>
        <li>Motor Vehicle Gateway</li>
        <li>Property</li>
        <li>Watercraft</li>
        <li>FAA Pilots</li>
        <li>FAA Aircraft</li>

        <li>Professional Licenses</li>
        <li>Florida Accidents</li>
        <li>Voter Registration</li>
        <li>Hunting/Fishing Permits</li>
        <li>Concealed Weapons Permits</li>
        <li>Federal Firearms & Explosives</li>

        <li>Criminal Records</li>
        <li>DEA Controlled Substances</li>
        <li>Sexual Offenders</li>
        <li>Phones Plus</li>
        </ul>

      <div align="center">
	<TMPL_IF NAME="DISABLE_COMPREHENSIVE_REPORT">
	    <input tabindex="4" class="rb" type="button" value="Report Disabled" onClick="void(0);" disabled>
	<TMPL_ELSE>
            <input name="BUTTON" tabindex="3" type="button" value="<TMPL_IF REPORT_BUTTON><TMPL_VAR NAME=REPORT_BUTTON><TMPL_ELSE>Request Report</TMPL_IF>" onclick="showpw();send_event('REPORT/COMPREHENSIVE');disable_buttons('BUTTON');" />
	</TMPL_IF>
      </div>

 </div>
  <div id="reportPopBot"></div>
<div id="clear"></div>
<p>&nbsp;</p>
<!-- End Comprehensive Report Section -->
</TMPL_UNLESS>  


</td>


<td valign="top">


<TMPL_IF NAME="ENABLE_BASIC_PLUS_ASSOCIATES_REPORT">
<TMPL_INCLUDE NAME="short_basic_plus_assoc_report_body.tpl">
</TMPL_IF>  


<TMPL_UNLESS DELETE_PRE_LIT_REPORT>
<!-- Start Pre-Litigation Report Section -->   
<div id="reportPopContainer">
 <div id="reportPop">

   <div class="reportPopHdr">Pre-Litigation Report</div>
      <ul>
        <li>Summary Report <br />
          <span class="smallblack">(Indicators and more)</span></li>
        <li>Address Summary</li>
        <li>Property Deeds &amp; Assessments</li>

        <li>Vehicle Investigations</li>
        <li>Watercraft</li>
        <li>UCC Filings</li>
        <li>People at Work</li>
        <li>Bankruptcy</li>
        <li>Liens and Judgments</li>

        <li>Deceased Indicator</li>
        <li> Licenses</li>
      </ul>
      <div align="center">
	   <TMPL_IF NAME="DISABLE_PRE_LIT_REPORT">
	       <input tabindex="8" class="rb" type="button" value="Report Disabled" onClick="void(0);" disabled>
	   <TMPL_ELSE>
	       <input name="BUTTON" tabindex="7" type="button" value="<TMPL_IF REPORT_BUTTON><TMPL_VAR NAME=REPORT_BUTTON><TMPL_ELSE>Request Report</TMPL_IF>" onClick="showpw();send_event('REPORT/PRE_LIT');disable_buttons('BUTTON');" />
	   </TMPL_IF>
      </div>

 </div>
  <div id="reportPopBot"></div>
</div>
<div id="clear"></div>
<p>&nbsp;</p>
<p>&nbsp;</p>
<!-- End Pre-Litigation Report Section -->
</TMPL_UNLESS>  

<TMPL_UNLESS DELETE_COMPREHENSIVE_REPORT>
<!-- Start Comprehensive Report plus Associates Section -->   
<div id="reportPopContainer">
 <div id="reportPop">
   <div class="reportPopHdr">Nat. Comp. plus Associates</div>
	    <ul>
	     <li>National Comprehensive Report plus the following:<br />
                        <span>
                        &nbsp;- Associates<br />
                        &nbsp;- Relatives (3 Degrees)<br />
                        &nbsp;- Neighbors<br />
                        </span>
       </li>
	   </ul>
	   <p>&nbsp;</p>

	   <div align="center">
	   <TMPL_IF NAME="DISABLE_COMP_REPORT">
	       <input tabindex="6" class="rb" type="button" value="Report Disabled" onClick="void(0);" disabled>
	   <TMPL_ELSE>
	       <input name="BUTTON" tabindex="5" type="button" value="<TMPL_IF REPORT_BUTTON><TMPL_VAR NAME=REPORT_BUTTON><TMPL_ELSE>Request Report</TMPL_IF>" onClick="showpw();send_event('REPORT/SHORT_REPORT');disable_buttons('BUTTON');" />
	   </TMPL_IF>
	   </div>
 </div>
  <div id="reportPopBot"></div>
</div>
<!-- End Comprehensive Report plus Associates Section -->   
</TMPL_UNLESS>  

<TMPL_UNLESS NAME="DELETE_CONTACT_CARD_REPORT">
<!-- Start Contact Card Report Section -->
<div id="reportPopContainer">
 <div id="reportPop">
   <div class="reportPopHdr">Contact Card Report</div>

   <p>&nbsp;</p> <p>&nbsp;</p>
    <ul>
      <li>Summary Report <br />
        <span class="smallblack">(Indicators and more)</span><br />
      </li>
      <li>Contact List<br />
      <span>

        &nbsp;- At Home<br />
        &nbsp;- At Work<br />
        &nbsp;- Through Family<br />
        &nbsp;- Through Family<br />
        &nbsp;- Through Associates<br />
        &nbsp;- Phones Plus (optional)<br />

        &nbsp;- Through Neighbors<br />
        &nbsp;- Possible Relocation<br />
      </span></li>
      <li>Address Summary</li>
      <li>Bankruptcy Filings</li>
   </ul>
   <p>&nbsp;</p>

   <div align="center">
      <TMPL_IF NAME="DISABLE_CONTACT_CARD_REPORT">
       <input tabindex="12" class="rb" type="button" value="Report Disabled" onClick="void(0);" disabled>
      <TMPL_ELSE>
       <input name="BUTTON" tabindex="11" type="button" value="<TMPL_IF REPORT_BUTTON><TMPL_VAR NAME=REPORT_BUTTON><TMPL_ELSE>Request Report</TMPL_IF>" onclick="showpw();send_event('REPORT/CONTACT_CARD_REPORT');disable_buttons('BUTTON');" />
      </TMPL_IF>
   </div>
 </div>
  <div id="reportPopBot"></div>
</div>
<!-- End Contact Record Report Section -->
</TMPL_UNLESS>
</td>
</tr>
</table>

</form>

<TMPL_INCLUDE NAME="lexisnexis_footer.tpl">

</body>
</html>
<!-- End xbps/report/short_report.tpl -->
