<!-- Begin batch_reporting_dashboard.tpl -->
<html>
<head>
<title>Batch Reporting Dashboard</title>
<link href="<TMPL_VAR NAME='CSSPATH'>/<TMPL_VAR NAME=SKIN_TYPE>/skin.css" rel="stylesheet" type="text/css">
<link href="<TMPL_VAR NAME='CSSPATH'>/style1.css" rel="stylesheet" type="text/css">
<link href="<TMPL_VAR NAME='CSSPATH'>/accurint.css" rel="stylesheet" type="text/css">
<link href="<tmpl_var csspath>/<tmpl_var application_type>/diff.css" rel="stylesheet" type="text/css">
<link href="<TMPL_VAR NAME='CSSPATH'>/<TMPL_VAR NAME=APPLICATION_TYPE>/<TMPL_VAR NAME=USER_THEME>.css" rel="stylesheet" type="text/css">
<script src="<TMPL_VAR NAME='JSPATH'>/common.js"></script>
<script src="<tmpl_var name='JSPATH'>/prototype.js"></script>
<script src="<TMPL_VAR NAME='JSPATH'>/shared.js"></script>
<script src="<TMPL_VAR NAME='JSPATH'>/batch_reporting_dashboard.js"></script>

<style>

body,div,dl,dt,dd,ul,ol,li,h1,h2,h3,h4,h5,h6,pre,code,form,fieldset,legend,input,textarea,p,blockquote,th{
    overflow:moz-scrollbars-vertical;
    margin:0;
    padding:0;
}
h1,h2,h3,h4,h5,h6 {
    font-weight:bold;
}
a,a:link,a:active,a:visited,a:focus{
    color:#0066CC;
}
a:hover {color:#ed1c24; text-decoration:underline;}
/*
table {
    border-collapse:collapse;
    border-spacing:0;
    font-size:82%;
    font:100%;
}
*/

fieldset,img {border:0;}

address,caption,cite,code,dfn,em,strong,th,var {font-style:normal;}

li{list-style:none;}

caption,th {text-align:left;}

abbr,acronym{
    border:0;
    font-variant:normal;
}

sup,sub{
    line-height:-1px;
    vertical-align:text-top;
}
sub{vertical-align:text-bottom;}

input, textarea, select{
    font-family:inherit;
    font-size:inherit;
    font-weight:normal;
    padding: 1;
}
#clear {clear:both;}

#newsHdr {
    background-image:url(<TMPL_VAR NAME=IMGPATH>/v2/news_LT.gif);
    background-position:left top;
    background-repeat:no-repeat;
    height:32px;
    position:relative;
    width:100%;
}
#newsHdr div.NewsHeader{
    background-image:url(<TMPL_VAR NAME=IMGPATH>/v2/news_RT.gif);
    background-position:right top;
    background-repeat:no-repeat;
    height:32px;
}
#newsHdr div.NewsHeader H2{
    color:#FFFFFF;
    font-weight:bold;
    margin-top:8px;
    margin-left:15px;
    background-image:url(<TMPL_VAR NAME=IMGPATH>/v2/ico_hdrarrow_white.gif);
    background-repeat:no-repeat;
    background-position: left .42em;
    padding-left:15px;
    width:65%;
    position:absolute;
    font-size:92%;
}
#newsHdr div.NewsHeader SPAN A {
    float:right;
    width:auto;
    font-size:71%;
    text-align:right;
    padding-right:15px;
    margin:0;
    margin-top:10px;
    display:block;
    position:relative;
    color:#CCCCCC;
}
#newsHdr div.NewsHeader A:HOVER {
    color:#FFFFFF;
    text-decoration:none;
}
#newsBlock{
    background-image:url(<TMPL_VAR NAME=IMGPATH>/v2/news_Lbkg.gif);
    background-position:left top;
    background-repeat:repeat-y;
    height:auto;
    position:relative;
    width:100%;
    min-width:440px;
    font-size: 81%;
}
#newsBlock div.newsRightBkg{
    background-image:url(<TMPL_VAR NAME=IMGPATH>/v2/news_Rbkg.gif);
    background-position:right top;
    background-repeat:repeat-y;
    height:auto;
}
#newsBlock UL{
    padding:0 0 0 25px;
    margin-left:10px;
}
#newsBlock LI{
    list-style-type:disc;
    padding-top:5px;
}
.indent1{
    margin-left:8px;
}
.indent2{
    margin-left:15px;
}
.indent3{
    padding-left:86px;
}
#newsBot{
    background-image:url(<TMPL_VAR NAME=IMGPATH>/v2/news_LB.gif);
    background-position:left top;
    background-repeat:no-repeat;
    width:100%;
    height:14px;
    float:left;
}
#newsBot div.newsBottom{
    background-image:url(<TMPL_VAR NAME=IMGPATH>/v2/news_RB.gif);
    background-position:right top;
    background-repeat:no-repeat;
    width:100%;
    height:14px;
    float:left;
}
</style>

</head>

<body onLoad="setForm();drawChart(1);drawChart(2);set_initial_states();window.focus();" topmargin="0" leftmargin="0" marginwidth="0" marginheight="0">

<div id="hd">
<h2><a trackid="hdr_top_logo">LexisNexis Accurint</a></h2>
</div>

<form name="BATCH_REPORTING_DASHBOARD" action="<TMPL_VAR NAME=ACTION_BATCH>" method="post">
<TMPL_INCLUDE NAME=common_hidden_input.tpl>
<INPUT type=hidden NAME="SKIN_TYPE" VALUE="<TMPL_VAR NAME=SKIN_TYPE>">
<INPUT type=hidden NAME="APPLICATION_TYPE" VALUE="<TMPL_VAR NAME=APPLICATION_TYPE>">
<INPUT type=hidden NAME="EVENT" VALUE="<TMPL_VAR NAME=EVENT>">
<INPUT type=hidden NAME="ACTION" VALUE="<TMPL_VAR NAME=ACTION_BATCH>">
<INPUT type=hidden NAME="ACTION_BATCH" VALUE="<TMPL_VAR NAME=ACTION_BATCH>">
<INPUT type=hidden NAME="ACTION_MAIN" VALUE="<TMPL_VAR NAME=ACTION>">
<INPUT type=hidden NAME="SELECT_WORK_REQUEST" VALUE="">

<table border="0" cellpadding="0" cellspacing="0" width="98%" align="center">
  <tr>
    <td class="unifont1" align="left" rowspan="2"><img alt="" src="<TMPL_VAR NAME=IMGPATH>/spacer.gif" width="1" height="1" border="0">
    </td>
    <td class="unifont1" align="right" width="70%" valign="bottom"><TMPL_UNLESS IRB><TMPL_UNLESS IRS><b>24/7 Search and Technical Assistance&nbsp; <font color="#ed1c24">1-866-277-8764 or <a href="mailto:batchtechsupport@lexisnexis.com">Batch Tech Support Email</a></font></b>&nbsp;</TMPL_UNLESS></TMPL_UNLESS>&nbsp;</td>
  </tr>
  <tr>
    <td class="unifont1" align="right" width="70%">
	<ul>
<TMPL_IF BATCH_DASHBOARD_ONLY>
	  <li class="first"><a trackid="hdr_contact_us" href="javascript:send_event('LOGOUT');">Sign Out</a>&nbsp;&nbsp;</li>
</TMPL_IF>
        <li><a trackid="hdr_help" href="#" onClick="general_win('<TMPL_VAR NAME=HLPPATH>/batch_dashboard_help.html','HelpWindow',790,600,1,1,1,1,1,0);void(0);">Help</a>&nbsp;&nbsp;</li>
	</ul>
    </td>
  </tr>
<TMPL_IF STANDALONE_ACTIONS>
  <tr>
    <td colspan="2" height="30" align="right">
    <TMPL_INCLUDE NAME="standalone_actions.tpl">
    </td>
  </tr>
</TMPL_IF>
</table>

  <TMPL_IF NAME=ERROR>
<tr>
<table align="center" width="94%" border="0">
<td align="center">
<div style="width:800px;"> 
    <div id="resultsError">
      <p><img src="<TMPL_VAR NAME=IMGPATH>/v2/ico_results_alert.gif" alt="" width="20" height="20" /><TMPL_VAR NAME=ERROR_MSG>
    <br />
    </div>
</div>
</td>
</table>
</tr>
  </TMPL_IF>

<table cellspacing="12" cellpadding="0" width="860" border="0" align="center">
  <tr>
  <td align="right">
    <table border="0" width="470" cellspacing="0" cellpadding="0">
      <tr>
        <td width="100%" nowrap="nowrap">
        <div id="newsHdr">
          <div class="NewsHeader"><h2>Chart</h2></div>
        </div>
        </td>
      </tr>
      <tr>
        <td class="unifont1" style="font-size:9pt;font-weight:bold;text-align:center;" nowrap="nowrap" colspan="4" valign="bottom">
           <div id="newsBlock">
             <div class="newsRightBkg">
               <table cellspacing="2" cellpadding="6" align="center" valign="top">
                 <tr>
                   <td style="font-size:10pt;font-weight:bold;vertical-align:top;" >
                      Landing Zone:<br /> 
                      <select name="landingzone1" id="landingzone1" size="3" onChange="drawChart(1)" multiple="multiple">
                         <TMPL_LOOP LANDINGZONE_LOOP>
                           <option value="<TMPL_VAR VALUE>"<TMPL_IF SELECTED> SELECTED</TMPL_IF>><TMPL_VAR DESC></option>
                         </TMPL_LOOP>
                       </select>
                   </td>
                   <td style="font-size:10pt;font-weight:bold;vertical-align:top;" >
                   Period:<br />
                       <select name="chart_period1" id="chart_period1" onChange="selectYear(this, 1);drawChart(1)" <TMPL_IF NAME=DISABLE_CHARTS>disabled=1</TMPL_IF>>
                         <option value='current_month'>Current Month</option>
                         <option value='quarterly'>Quarterly</option>
                         <option value='previous_six_months'>Previous 6 Months</option>
                         <option value='year'>Year</option>
                        </select>
                   </td>
                   <td style="font-size:10pt;font-weight:bold;vertical-align:top;" >
                   Year:<br />
                        <span id="yearspan1"></span>
                   </td>
                   <td style="font-size:10pt;font-weight:bold;vertical-align:top;" >
                   Type:<br />
                        <select name="chart_type1" id="chart_type1" onChange="drawChart(1)" <TMPL_IF NAME=DISABLE_CHARTS>disabled=1</TMPL_IF>>
                         <option value='bars'>Bar</option>
                         <option value='line'>Line</option>
                        </select>
                   </td>
                 </tr>
               </table>
               <table border="0" cellspacing="2" cellpadding="6" align="center" width="440">
                 <tr>
                   <td colspan="4" >
                     <div id="waiting" style="display:none;">
                       <img id="loading" src="/bps/images/v2/bg_processing.gif" border="0" width="300" height="65"></img>
                     </div>
                     <div id="chart1div" style="width:330px; height:240; text-align:right;">
                       <IMG id="chartimg1" name="chartimg1" src="" height="230" width="380">
                     </div>
                   </td>
                 </tr>
               </table>
             </div>
           </div>
      <div id="newsBot">
        <div class="newsBottom"></div>
      </div>
      <div id="clear"></div>
        </td>
      </tr>
    </table>

    <table border="0" width="470" cellspacing="0" cellpadding="0">
      <tr>
        <td width="100%" nowrap="nowrap">
        <div id="newsHdr">
          <div class="NewsHeader"><h2>Chart</h2></div>
        </div>
        </td>
      </tr>

      <tr>
        <td class="unifont1" style="font-size:9pt;font-weight:bold;text-align:center;" nowrap="nowrap" colspan="4" valign="bottom">
           <div id="newsBlock">
             <div class="newsRightBkg">
               <table border="0" cellspacing="2" cellpadding="6" align="center">
                 <tr>
                   <td style="font-size:10pt;font-weight:bold;vertical-align:top;" >
                      Landing Zone:<br /> 
                      <select name="landingzone2" id="landingzone2" size="3" onChange="drawChart(2)" multiple="multiple">
                         <TMPL_LOOP LANDINGZONE_LOOP>
                           <option value="<TMPL_VAR VALUE>"<TMPL_IF SELECTED> SELECTED</TMPL_IF>><TMPL_VAR DESC></option>
                         </TMPL_LOOP>
                       </select>
                   </td>
                   <td style="font-size:10pt;font-weight:bold;vertical-align:top;" >
                   Period:<br />
                       <select name="chart_period2" id="chart_period2" onChange="selectYear(this, 2);drawChart(2)" 
                       <TMPL_IF NAME=DISABLE_CHARTS>disabled=1</TMPL_IF>>
                         <option value='current_month'>Current Month</option>
                         <option value='quarterly'>Quarterly</option>
                         <option value='previous_six_months'>Previous 6 Months</option>
                         <option value='year'>Year</option>
                        </select>
                   </td>
                   <td style="font-size:10pt;font-weight:bold;vertical-align:top;" >
                   Year:<br />
                        <span id="yearspan2"></span>
                   </td>
                   <td style="font-size:10pt;font-weight:bold;vertical-align:top;" >
                   Type:<br />
                        <select name="chart_type2" id="chart_type2" onChange="drawChart(2)" <TMPL_IF NAME=DISABLE_CHARTS>disabled=1</TMPL_IF>>
                         <option value='bars'>Bar</option>
                         <option value='line'>Line</option>
                        </select>
                   </td>
                 </tr>
               </table>
               <table border="0" cellspacing="2" cellpadding="6" align="center" width="440">
                 <tr>
                   <td colspan="4" >
                     <div id="waiting" style="display:none;">
                       <img id="loading" src="/bps/images/v2/bg_processing.gif" border="0" width="300" height="65"></img>
                     </div>
                     <div id="chart2div" style="width:330px; height:240; text-align:right;">
                       <IMG id="chartimg2" name="chartimg2" src="" height="230" width="380">
                     </div>
                   </td>
                 </tr>
               </table>
             </div>
           </div>
           <div id="newsBot">
             <div class="newsBottom"></div>
           </div>
           <div id="clear"></div>
        </td>
      </tr>
    </table>
    </td>

    <td>
      <div id="newsHdr"><div class="NewsHeader">
        <h2>Report</h2>
      </div></div>

      <div id="newsBlock" style="height:732px;"><div class="newsRightBkg" style="height:732px;">
        <p class="indent1" style="font-size: 10pt; font-weight: bold;vertical-align:top;"><br />1. Select Report Type: </p>
        <p class="indent2"><input type=radio name="report_type" id="report_type" value="HIGH_DETAIL"<TMPL_IF CHECKED_HIGH_DETAIL> CHECKED</TMPL_IF> onClick="checkbox_set(this);"> Billing Detail Report - High Detail</p>
        <p class="indent2"><input type=radio name="report_type" id="report_type" value="MEDIUM_DETAIL"<TMPL_IF CHECKED_MEDIUM_DETAIL> CHECKED</TMPL_IF> onClick="checkbox_set(this);"> Billing Detail Report - Medium Detail</p>
        <p class="indent2"><input type=radio name="report_type"  id="report_type" value="LOW_DETAIL"<TMPL_IF CHECKED_LOW_DETAIL> CHECKED</TMPL_IF> onClick="checkbox_set(this);"> Billing Detail Report - Low Detail</p>

        <!-- <p class="indent2"><input type=radio name="report_type"  id="report_type" value="SUMMARY"<TMPL_IF CHECKED_JOB_SUMMARY> CHECKED</TMPL_IF> onClick="checkbox_set(this);"> Billing Detail Report - Summary</p>
        -->

        <br />
        <table border="0" width="450px">
          <tr>
            <td style="font-size: 10pt; font-weight: bold;vertical-align:top;" nowrap="nowrap">
               <p class="indent1">2. Select Report Billgroup*: </p>
            </td>
            <td class="unifont1" style="text-align: left; font-size: 10pt; font-weight: bold;" nowrap="nowrap">
              <select name="SELECT_REPORT_BILLGROUP" id="SELECT_REPORT_BILLGROUP" onClick="clearIdSelection(this);" multiple="true" size="3" onChange="">
                <TMPL_LOOP BILL_GROUP_LOOP>
                  <option value="<TMPL_VAR VALUE>"<TMPL_IF SELECTED> SELECTED</TMPL_IF>><TMPL_VAR DESC></option>
                </TMPL_LOOP>
              </select>
            </td>
          </tr>
          <tr>
            <td style="font-size: 10pt; font-weight: bold;text-align:left;" nowrap="nowrap">
               <span class="indent3">-- or --</span>
               <br />
               <br />
               <br />
            </td>
          </tr>
          <tr>
            <td style="font-size: 10pt; font-weight: bold;vertical-align:top;" nowrap="nowrap">
               <p class="indent1">&nbsp;&nbsp;&nbsp;&nbsp;Select Report Landing Zone*: </p>
            </td>
            <td class="unifont1" style="text-align: left; font-size: 10pt; font-weight: bold;" nowrap="nowrap">
              <select name="LANDINGZONE3" id="LANDINGZONE3" size="3" onClick="clearIdSelection(this);" multiple="true">
                <TMPL_LOOP LANDINGZONE_LOOP>
                  <option value="<TMPL_VAR VALUE>"<TMPL_IF SELECTED> SELECTED</TMPL_IF>><TMPL_VAR DESC></option>
                </TMPL_LOOP>
              </select>
            </td>
          </tr>
        </table>

         <p class="indent1" style="font-size: 10pt; font-weight: bold;vertical-align:top;">3. Select Report Date Range: </p>

        <p class="indent2"><input type=radio name="date_range" id="date_range" value="BILLING_PERIOD"<TMPL_IF BILLING_PERIOD> CHECKED</TMPL_IF> OnClick="checkbox_set(this);"> Billing Period:<span class="indent3">
           <select name="BILLING_PERIOD" id="BILLING_PERIOD" onChange=""> 
           <TMPL_LOOP BILLING_CUTOFF_LOOP>
             <option value="<TMPL_VAR VALUE>"<TMPL_IF SELECTED> SELECTED</TMPL_IF>><TMPL_VAR DESC></option>
           </TMPL_LOOP>
           </select>
        </span>
        </p>

        <!-- <p class="indent2"><input type=radio name="date_range" id="date_range" value="CUSTOM_DATE_RANGE"<TMPL_IF CUSTOM_DATE_RANGE> CHECKED</TMPL_IF> OnClick="checkbox_set(this);"> Custom Date Range:&nbsp;From&nbsp;<input type="text" name="FROM_DATE" id="FROM_DATE" size="12" tabindex="10" maxlength="18" value="<TMPL_VAR NAME=FROM_DATE>"'> 
        To&nbsp;<input type="text" name="TO_DATE" id="TO_DATE" size="12" tabindex="10" maxlength="18" value="<TMPL_VAR NAME=TO_DATE>"'>
        </p> -->
        <p class="indent2"><input type=radio name="date_range" id="date_range" value="CURRENT_MONTH_TO_DATE" <TMPL_IF CURRENT_MONTH_TO_DATE> CHECKED</TMPL_IF> OnClick="checkbox_set(this);"> Current Month-To-Date 
        </p>

        <br />
        <p class="indent2">* Multi-Select</p>

        <div align="center"><input type=button value="Report" <TMPL_IF NAME=DISABLE_REPORTS>disabled=1</TMPL_IF> onclick="get_batch_dashboard_report('MYACCOUNT/SHOW_BATCH_REPORTING_DASHBOARD_PDF');"></div>

        <TMPL_IF PROVIDER_SCREENING_REPORTING>
        <br />
        <div>
        <table border="0" width="450px">
          <tr>
            <td style="font-size: 10pt; font-weight: bold;vertical-align:top; text-align: center;" nowrap="nowrap" >Provider Integrity Scan Reports</td>
          <tr>
            <td style="font-size: 10pt; font-weight: bold;vertical-align:top;" nowrap="nowrap">
                <p class="indent1" style="font-size: 10pt; font-weight: bold;vertical-align:top;"><br />1. Select Report: </p>
                <TMPL_IF ENABLE_PROVIDER_SCREENING_SCORING>
                <p class="indent2"><input type=radio name="report_select" id="report_select_score" value="SCORE_REPORT"<TMPL_IF CHECKED_SCORE_REPORT> CHECKED</TMPL_IF> onClick="setProviderScreenReports();"> Provider Score Report </p>
                </TMPL_IF>
                <p class="indent2"><input type=radio name="report_select" id="report_select_attrib" value="ATTRIBUTE_REPORT"<TMPL_IF CHECKED_ATTRIBUTE_REPORT> CHECKED</TMPL_IF> onClick="setProviderScreenReports();"> Provider Integrity Scan Attribute and Record Report</p>
                <p class="indent2"><input type=radio name="report_select"  id="report_select_compare" value="COMPARISON_REPORT"<TMPL_IF CHECKED_COMPARISON_REPORT> CHECKED</TMPL_IF> onClick="setProviderScreenReports();"> Comparison Trend Report</p>
            </td>
          </tr>
        </table>
        </div>
        </TMPL_IF>
        <div id="score_div" style="display: none" >
          <table border="0" width="450px">
            <tr>
            <td style="font-size: 10pt; font-weight: bold;vertical-align:top;" nowrap="nowrap" colspan="2"><p class="indent1" style="font-size: 10pt; font-weight: bold;vertical-align:top;">2. Select Score Report Jobid:</p></td>
            </tr>
            <tr>
              <td style="font-size: 10pt; font-weight: bold;vertical-align:middle; text-align:left;" nowrap="nowrap"><p class="indent2">Jobid - Filename - Date:</p></td>
            </tr>
            <tr>
              <td style="font-size: 10pt; font-weight: bold;vertical-align:middle; text-align:left;" nowrap="nowrap" colspan="2"><p class="indent2">
                 <select name="SCORE_FILE_SELECT" id="SCORE_FILE_SELECT" onChange=""> 
                    <TMPL_LOOP JOB_ID_LOOP>
                        <option value="<TMPL_VAR VALUE>"<TMPL_IF SELECTED> SELECTED</TMPL_IF>><TMPL_VAR DESC></option>
                    </TMPL_LOOP>
                 </select>
                 </p>
              </td>
            </tr>
          </table>
          <br />
          <div align="center"><input type=button value="        Score Report        " onclick="get_batch_dashboard_report('MYACCOUNT/SHOW_PROVIDER_SCREENING_SCORE_REPORT');"></div>
        </div>
        <div id="attrib_div" style="display: none" >
          <table border="0" width="450px">
            <tr>
            <td style="font-size: 10pt; font-weight: bold;vertical-align:top;" nowrap="nowrap" colspan="2"><p class="indent1" style="font-size: 10pt; font-weight: bold;vertical-align:top;">2. Select Screening Attribue and Record Report File:</p></td>
            </tr>
            <tr>
              <td style="font-size: 10pt; font-weight: bold;vertical-align:middle; text-align:left;" nowrap="nowrap"><p class="indent2">Jobid - Filename - Date:</p></td>
            </tr>
            <tr>
              <td style="font-size: 10pt; font-weight: bold;vertical-align:middle; text-align:left;" nowrap="nowrap">
              <p class="indent2">
                 <select name="ATTRIB_FILE_SELECT" id="ATTRIB_FILE_SELECT" onChange=""> 
                    <TMPL_LOOP JOB_ID_LOOP>
                        <option value="<TMPL_VAR VALUE>"<TMPL_IF SELECTED> SELECTED</TMPL_IF>><TMPL_VAR DESC></option>
                    </TMPL_LOOP>
                 </select>
              </p>
              </td>
            </tr>
          </table> 
          <br />
          <div align="center"><input type=button value="Screening Attribute and Record Report" onclick="get_batch_dashboard_report('MYACCOUNT/SHOW_PROVIDER_SCREENING_ATTRIB_REPORT');"></div>
        </div>
        <div id="compare_div" style="display: none" >
          <table border="0" width="450px">
            <tr>
            <td style="font-size: 10pt; font-weight: bold;vertical-align:top;" nowrap="nowrap" colspan="2"><p class="indent1" style="font-size: 10pt; font-weight: bold;vertical-align:top;">2. Select Comparison Trend Report Attribute and JobId:</p></td>
            </tr>
            <tr>
              <td style="font-size: 10pt; font-weight: bold;vertical-align:middle; text-align:left;" nowrap="nowrap">
              <p class="indent2">Attribute:</p></td>
            </tr>
            <tr>
              <td style="font-size: 10pt; font-weight: bold;vertical-align:middle; text-align:left;" nowrap="nowrap">
              <p class="indent2">
                <select name="ATTRIB_SELECT" id="ATTRIB_SELECT" onChange=""> 
                   <option value="BKT">Bankruptcy Record</option>
                   <option value="CRIM">Criminal Record</option>
                   <option value="DCD">Deceased Record</option>
                   <option value="DISIP">Disciplinary Sanction</option>
                   <option value="GSABUS">GSA Business Sanction</option>
                   <option value="GSAIND">GSA Individual Sanction</option>
                   <option value="INCARC">Incarceration Record</option>
                   <option value="JUDGLEIN">Judgment & Lien Record</option>
                   <option value="SEXOFF">Sex Offense Record</option>
                 </select>
              </p>
              </td>
            </tr>
            <tr>
              <td style="font-size: 10pt; font-weight: bold;vertical-align:middle; text-align:left;" nowrap="nowrap"><p class="indent2">Jobid - Filename - Date:</p></td>
            </tr>
            <tr>
              <td style="font-size: 10pt; font-weight: bold;vertical-align:middle; text-align:left;" nowrap="nowrap">
              <p class="indent2">
                 <select name="COMPARE_FILE_SELECT" id="COMPARE_FILE_SELECT" onChange="" multiple="multiple">
                    <TMPL_LOOP JOB_ID_LOOP>
                        <option value="<TMPL_VAR VALUE>"<TMPL_IF SELECTED> SELECTED</TMPL_IF>><TMPL_VAR DESC></option>
                    </TMPL_LOOP>
                 </select>
              </p>
              </td>
            </tr>
          </table>
          <br />
          <div align="center"><input type=button value="Comparison Trend Report" onclick="if(! validate_compare(this)){return false};get_batch_dashboard_report('MYACCOUNT/SHOW_PROVIDER_SCREENING_COMPARE_REPORT');"></div>
         </div>

      </div></div>

      <div id="newsBot">
        <div class="newsBottom">
        </div>
      </div>
      <div id="clear"></div>

    </td>
    </tr>
</table>

</div>

</form>
</body>
</html>
<!-- End batch_reporting_dashboard.tpl -->
