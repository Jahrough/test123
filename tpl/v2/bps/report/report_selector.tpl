<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<!-- Begin bps/report/report_selector.tpl -->
<!--<TMPL_VAR NAME=SERVER_ID>-->
<html>
<head>
<title>Report -- Select your report</title>
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

      <p>&nbsp;</p>
      <table border="0" cellpadding="0" cellspacing="0" width="575" align="center">
        <tr>
        <td valign="top">

<TMPL_UNLESS DELETE_SUMMARY_REPORT>
<!-- Start Summary Report Section -->
<div id="reportPopContainer">
 <div id="reportPop">
   <div class="reportPopHdr">Summary Report</div>
      <ul>
        <li>Address Summary</li>
        <li>Others using SSN</li>
        <li>Date/Locations where SSN Issued</li>
        <li>Census Data</li>
        <li>Bankruptcy Indicator</li>
        <li>Property Indicator</li>
        <li>Corporate Affiliations Indicator</li>
      </ul>
        <div align="center">
              <TMPL_IF NAME="DISABLE_SUMMARY_REPORT">
                   <input tabindex="11" class="rb" type="button" value="Report Disabled" onClick="void(0);" disabled>
              <TMPL_ELSE>
                   <input name="BUTTON" tabindex="11" type="button" value="<TMPL_IF REPORT_BUTTON><TMPL_VAR NAME=REPORT_BUTTON><TMPL_ELSE>Request Report</TMPL_IF>" onclick="showpw();send_event('REPORT/SUMMARY');disable_buttons('BUTTON');" />
              </TMPL_IF>
        </div>

 </div>
  <div id="reportPopBot"></div>
</div>
<div id="clear"></div>
<p>&nbsp;</p>
<!-- End Summary Report Section -->
</TMPL_UNLESS>


<TMPL_UNLESS DELETE_COMPREHENSIVE_REPORT>
<!-- Start Comprehensive Report Section -->
<div id="reportPopContainer">
 <div id="reportPop">
   <div class="reportPopHdr">Comprehensive  Report</div>
      <ul>

        <li>Summary Report <br />
        <span class="smallblack">(Indicators and more)</span></li>
        <li>Bankruptcy</li>
        <li>Liens and Judgments</li>
        <li>UCC Filings</li>
        <li>DEA Controlled Substances</li>
        <li>People at Work</li>

        <li>Driver Licenses</li>
        <li>Vehicle Registrations</li>
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
        <li>Associates</li>

        <li>Relatives <span class="smallblack">(3 Degrees)</span></li>
        <li>Neighbors</li>
        <li>Criminal Records</li>
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


<TMPL_UNLESS DELETE_COMP_REPORT>
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
           <TMPL_IF NAME="DISABLE_COMP_REPORT">
               <input tabindex="6" class="rb" type="button" value="Report Disabled" onClick="void(0);" disabled>
           <TMPL_ELSE>
               <input name="BUTTON" tabindex="5" type="button" value="<TMPL_IF REPORT_BUTTON><TMPL_VAR NAME=REPORT_BUTTON><TMPL_ELSE>Request Report</TMPL_IF>" onClick="showpw();send_event('REPORT/SHORT_REPORT');disable_buttons('BUTTON');" />
           </TMPL_IF>
           </div>
 </div>
  <div id="reportPopBot"></div>
<div id="clear"></div>
<p>&nbsp;</p>
<!-- End Custom Comp Report Section -->
</TMPL_UNLESS>


</td>


<td valign="top">

        <TMPL_UNLESS NAME="DELETE_PEOPLE_FINDER_REPORT">
        <div id="reportPopContainer">
         <div id="reportPop">
           <div class="reportPopHdr">Finder Report</div>
                <ul>
                <li>Summary Report <br />
                        <span class="smallblack">(Indicators and more)</span></li>
                <li>Phone Summary<br />
                        <span>
                        &nbsp;- Current Listed Phones<br />
                        &nbsp;- Unverified phones<br />
                        &nbsp;- Current Neighbor Phones<br />
                        &nbsp;- Possible Relatives Phones<br />
                        &nbsp;&nbsp;&nbsp;(2 Degrees)<br />
                        &nbsp;- Possible Associate Phones<br />
                        &nbsp;- Phones at Historical Addresses<br />
                        </span>
                </li><li>Bankruptcy Filings</li>
                <li>Corporate Affiliations</li>
                </ul>

                <div align="center">
                <TMPL_IF NAME="DISABLE_PEOPLE_FINDER_REPORT">
                        <input tabindex="2" type="button" value="Report Disabled" onClick="void(0);" disabled>
                <TMPL_ELSE>
                        <input name="BUTTON" tabindex="1" type="button" value="<TMPL_IF REPORT_BUTTON><TMPL_VAR NAME=REPORT_BUTTON><TMPL_ELSE>Request Report</TMPL_IF>" onclick="showpw();send_event('REPORT/SHORT_PHONE_REPORT');disable_buttons('BUTTON');" />
                </TMPL_IF>
                </div>
         </div>
          <div id="reportPopBot"></div>
        </div>
        <div id="clear"></div>
        <p>&nbsp;</p>
        </TMPL_UNLESS>

<TMPL_UNLESS NAME="DELETE_ASSET_REPORT">
<!-- Start Asset Report Section -->
<div id="reportPopContainer">
 <div id="reportPop">
   <div class="reportPopHdr">Asset Report</div>
      <ul>

        <li>Summary Report<br />
          <span class="smallblack">(Indicators and more)</span></li>
        <li>Property Deeds &amp; Assessments</li>
        <li>Vehicle Registrations</li>
        <li>Watercraft</li>

        <li>FAA Pilots &amp; FAA Aircraft</li>
        <li>UCC Filings</li>
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
<!-- End Asset Report Section -->
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
<div id="clear"></div>
<p>&nbsp;</p>
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
