<!-- begin: v2/report/short_entitlem_report.tpl -->
<html xmlns="http://www.w3.org/1999/xhtml" lang="en" xml:lang="en">
  <head>
    <title><TMPL_VAR NAME="REPORT_NAME"> Options</title>
    <link href="<TMPL_VAR NAME='CSSPATH'>/accurint.css" rel="stylesheet" type="text/css">
    <link href="<TMPL_VAR NAME='CSSPATH'>/<TMPL_VAR APPLICATION_TYPE>/<TMPL_VAR NAME=USER_THEME>.css" rel="stylesheet" type="text/css">
    <script src="<TMPL_VAR NAME='JSPATH'>/common.js"></script>
    <script src="<TMPL_VAR NAME='JSPATH'>/shared.js"></script>
    <script src="<TMPL_VAR NAME='JSPATH'>/decision.js"></script>
    <script src="<TMPL_VAR NAME='JSPATH'>/report.js"></script>
    <script src="<TMPL_VAR NAME='JSPATH'>/search_javascript.js"></script>
    <script src="<TMPL_VAR NAME='JSPATH'>/please_wait.js"></script>
  </head>
  <body id="hdNoLogo" onLoad="window.focus();">
    <div id="pleasewait" style="position:absolute; top:250px;left:300px; visibility:hidden; z-index:1000;">
    <img src="<TMPL_VAR NAME=IMGPATH>/bg_searching_report.gif" id="pw" name="pw" width="300" height="65" border="0">
    </div>


<form name="SEARCH_RESULTS" action="<TMPL_VAR NAME=ACTION>" method="post">
      <div id="hidden_fields">
      <!-- hidden fields -->
        <TMPL_INCLUDE NAME=common_hidden_input.tpl>      
        <input type="hidden" name="RECID_REPORT" value="<TMPL_VAR NAME=RECID_REPORT>"/>
        <input type="hidden" name="MIDDLE_NAME" VALUE="<TMPL_VAR NAME=MIDDLE_NAME>"/>
        <input type="hidden" name="LAST_NAME" VALUE="<TMPL_VAR NAME=LAST_NAME>"/>
        <input type="hidden" name="REFERENCE_CODE" value="<TMPL_VAR REFERENCE_CODE>"/>
        <input type="hidden" name="UNIQUEID" value="<TMPL_VAR NAME=UNIQUEID>"/>
        <input type="hidden" name="FIRST_NAME" VALUE="<TMPL_VAR NAME=FIRST_NAME>"/>
        <input type="hidden" name="RECID" value="<TMPL_VAR NAME=RECID>"/>
        <input type="hidden" name="DOL_DATE" value="<TMPL_VAR NAME=DOL_DATE>"/>
        
        <input type="hidden" name="EVENT" value="<TMPL_VAR NAME="CURRENT_EVENT">"/>

        <input type="hidden" name="SUFFIX" VALUE="<TMPL_VAR NAME=SUFFIX>"/>
        
        <input type="hidden" name="FULL_NAME" VALUE="<TMPL_VAR NAME=FULL_NAME>"/>
        <input type="hidden" name="DOB" VALUE="<TMPL_VAR NAME=DOB>"/>
        <input type="hidden" name="SSN" VALUE="<TMPL_VAR NAME=SSN>"/>

        <input type="hidden" name="SHORT_REPORT" value="1"/>
<!--      
  <input type=hidden NAME="STREET_ADDRESS" VALUE="<TMPL_VAR NAME=STREET_ADDRESS>">
  <input type=hidden NAME="CITY" VALUE="<TMPL_VAR NAME=CITY>">
  <input type=hidden NAME="STATE" VALUE="<TMPL_VAR NAME=STATE>">
  <input type=hidden NAME="ZIP" VALUE="<TMPL_VAR NAME=ZIP>">
-->
      <!-- hidden fields -->
      </div>

      <div align="center" id="mainbody">
        <table border="0" cellpadding="0" cellspacing="0" width="100%" height="10">
          <tr height="10">
            <td height="10" class="unifont2pt">&nbsp;</td>
          </tr>
        </table>

        <table border="0" cellpadding="0" cellspacing="0" width="100%" height="10">
          <tr height="10">
            <td height="10" class="unifont2pt">&nbsp;</td>
          </tr>
        </table>

        <table border="1" cellpadding="0" cellspacing="0" width="640" bgcolor="#ffffff">
          <tr>
            <td>
              <div align="center">
                <table width="100%" border="0" cellpadding="2" cellspacing="0">
                  <tr class="medblack">
                    <td valign="top" align="left">&nbsp;</td>
                    <TMPL_LOOP NAME="REPORT_PARAMS">
                    <td valign="top" align="left" nowrap="nowrap"><b><TMPL_VAR PARAM_NAME></b></td>
                    </TMPL_LOOP>
                    <td valign="top" align="left">&nbsp;</td>
                  </tr>
                  <tr class="medblack">
                    <td valign="top" align="left">&nbsp;</td>
                    <TMPL_LOOP NAME="REPORT_PARAMS">
                    <td valign="top" align="left" nowrap="nowrap"><TMPL_VAR NAME=PARAM_VALUE>&nbsp;</td>
                    </TMPL_LOOP>
                    <td valign="top" align="left">&nbsp;</td>
                  </tr>
                </table>
              </div>
            </td>
          </tr>
        </table>

        <table border="0" cellpadding="0" cellspacing="0" width="100%" height="10">
          <tr height="10">
            <td height="10" class="unifont2pt">&nbsp;</td>
          </tr>
        </table>

        <table border="0" cellpadding="0" cellspacing="0" width="620">
          <tr>
            <td align="center" class="medblack">
            <table width="100%" border="0" cellpadding="2" cellspacing="0">
              <tr>
              
<!--
                <td align="center"><input name="BUTTON" tabindex="1" class="rb" type="button"
                 value="<TMPL_IF REPORT_BUTTON><TMPL_VAR NAME=REPORT_BUTTON><TMPL_ELSE>Request Report</TMPL_IF>"
                 onMouseDown="flip_style(this,'rbd');"
                 onClick="showpw();self.document.SHORT_REPORT.submit();disable_buttons('BUTTON');"
                 onMouseOut="flip_style(this,'rb');"/>
               </td>
-->               
              
                <td align="center">
<!--                
<input name="BUTTON" tabindex="1" type="button" value="<TMPL_IF REPORT_BUTTON><TMPL_VAR NAME=REPORT_BUTTON><TMPL_ELSE>Request Report</TMPL_IF>" onclick="showpw();send_event('SEARCH/SEARCH_PAW_POP');disable_buttons('BUTTON');" />
<input name="BUTTON" tabindex="1" type="button" value="<TMPL_IF REPORT_BUTTON><TMPL_VAR NAME=REPORT_BUTTON><TMPL_ELSE>Request Report</TMPL_IF>" onclick="showpw();send_event('REPORT/COMPREHENSIVE');disable_buttons('BUTTON');" />
<input name="BUTTON" tabindex="1" type="button" value="<TMPL_IF REPORT_BUTTON><TMPL_VAR NAME=REPORT_BUTTON><TMPL_ELSE>Request Report</TMPL_IF>" onclick="showpw();alert( 'after pw' );map_rtphone_address( '756%20ENFIELD%20ST', 'BOCA%20RATON', 'FL', '33487' );disable_buttons('BUTTON');" />
<input name="BUTTON" tabindex="1" type="button" value="<TMPL_IF REPORT_BUTTON><TMPL_VAR NAME=REPORT_BUTTON><TMPL_ELSE>Request Report</TMPL_IF>" onclick="showpw();send_event('SEARCH/SEARCH_PAW_POP');disable_buttons('BUTTON');" />
-->

<!--
<input name="BUTTON" tabindex="1" type="button" value="<TMPL_IF REPORT_BUTTON><TMPL_VAR NAME=REPORT_BUTTON><TMPL_ELSE>Request Report</TMPL_IF>" onclick="showpw();send_event('SEARCH/SEARCH_AIRCRAFT');disable_buttons('BUTTON');" />
-->
<input name="BUTTON" tabindex="1" type="button" value="<TMPL_IF REPORT_BUTTON><TMPL_VAR NAME=REPORT_BUTTON><TMPL_ELSE>Request Report</TMPL_IF>" onclick="showpw();send_event('SEARCH2/SEARCH_SNA');disable_buttons('BUTTON');" />


                
               </td>

<!--
<td>
<li><a href="javascript:carfax_report('1234567')">PAW Pop - carfax_vin</a></li>
</td>
              
<td>
<li><a href="javascript:build_report('/~llindquist/bps_health/cgi-bin/bps.pl',1,64,'1')">PAW Pop - build_report</a></li>
</td>
-->
              
              </tr>
            </table>
            </td>
          </tr>
        </table>

        <table border="0" cellpadding="0" cellspacing="0" width="100%" height="10">
          <tr height="10">
            <td height="10" class="unifont2pt">&nbsp;</td>
          </tr>
        </table>

        <TMPL_INCLUDE NAME=short_sna_report_body.tpl>
      </div>
    </form>
    
  </body>
</html>
<!-- end: v2/report/short_sna_report.tpl -->
