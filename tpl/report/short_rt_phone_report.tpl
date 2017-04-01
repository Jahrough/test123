<!-- begin: $RCSfile: short_rt_phone_report.tpl,v $ -->
<html xmlns="http://www.w3.org/1999/xhtml" lang="en" xml:lang="en">
  <head>
    <title><TMPL_VAR NAME="REPORT_NAME"> Options</title>
    <link href="<TMPL_VAR NAME='CSSPATH'>/style1.css" rel="stylesheet" type="text/css"/>
    <link href="<TMPL_VAR NAME='CSSPATH'>/<TMPL_VAR NAME=SKIN_TYPE>/skin.css" rel="stylesheet" type="text/css"/>
    <script type="text/javascript" src="<TMPL_VAR NAME='JSPATH'>/common.js"></script>
    <script type="text/javascript" src="<TMPL_VAR NAME='JSPATH'>/shared.js"></script>
    <script type="text/javascript" src="<TMPL_VAR NAME='JSPATH'>/please_wait.js"></script>
  </head>
  <body onLoad="window.focus();" topmargin="0" leftmargin="0" marginwidth="0" marginheight="0">
    <div id="pleasewait" style="position:absolute; visibility:hidden; z-index:1000;"
     ><img alt="" src="<TMPL_VAR NAME=IMGPATH>/arrows_wait_full.gif" id="pw"  name="pw"
      width="400" height="120"  border="0" /></div>
    <form name="SHORT_REPORT" action="<TMPL_VAR NAME=ACTION_REPORT>" method="post">
      <div id="hidden_fields">
      <!-- hidden fields -->
        <TMPL_INCLUDE NAME=common_hidden_input.tpl>
        <input type="hidden" name="REFERENCE_CODE" value="<TMPL_VAR REFERENCE_CODE>"/>
        <input type="hidden" name="DOL_DATE" value="<TMPL_VAR NAME=DOL_DATE>"/>
        <input type="hidden" name="EVENT" value="<TMPL_VAR NAME="REPORT_EVENT">"/>
        <input type="hidden" name="SKIN_TYPE" value="<TMPL_VAR NAME=SKIN_TYPE>"/>
        <input type="hidden" name="APPLICATION_TYPE" value="<TMPL_VAR NAME=APPLICATION_TYPE>"/>
        <input type="hidden" name="XID" value="<TMPL_VAR NAME=XID>"/>
        <input type="hidden" name="PHONE" value="<TMPL_VAR NAME=PHONE>"/>
        <input type="hidden" name="IDX" value="<TMPL_VAR NAME=IDX>"/>
        <input type="hidden" name="STREET_ADDRESS" value="<TMPL_VAR NAME=STREET_ADDRESS>"/>
        <input type="hidden" name="CITY" value="<TMPL_VAR NAME=CITY>"/>
        <input type="hidden" name="STATE" value="<TMPL_VAR NAME=STATE>"/>
        <input type="hidden" name="ZIP" value="<TMPL_VAR NAME=ZIP>"/>
        <input type="hidden" name="ZIP4" value="<TMPL_VAR NAME=ZIP4>"/>
        <input type="hidden" name="COMPANY" value="<TMPL_VAR NAME=COMPANY>"/>
        <input type="hidden" name="SHORT_REPORT" value="1"/>
      <!-- hidden fields -->
      </div>
      <div align="center" id="mainbody">
        <table border="0" cellpadding="0" cellspacing="0">
          <tr>
            <td height="10" class="unifont2pt">&nbsp;</td>
          </tr>
        </table>
        <table border="0" cellpadding="0" cellspacing="0" width="620">
          <tr>
            <td align="center">
            <table border="0" cellpadding="2" cellspacing="0" bgcolor="#000000">
              <tr>
                <td><input name="BUTTON" tabindex="1" class="rb" type="button"
                 value="<TMPL_IF REPORT_BUTTON><TMPL_VAR NAME=REPORT_BUTTON><TMPL_ELSE>Request Report</TMPL_IF>"
                 onMouseDown="flip_style(this,'rbd');"
                 onClick="showpw();self.document.SHORT_REPORT.submit();disable_buttons('BUTTON');"
                 onMouseOut="flip_style(this,'rb');"/>
               </td>
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
                    <td valign="top" align="left" class="unifont1" nowrap="nowrap">&nbsp;&nbsp;</td>
                    <TMPL_LOOP NAME="REPORT_PARAMS">
                    <td valign="top" align="left" class="myaccountlabel" nowrap="nowrap"><TMPL_VAR PARAM_NAME>&nbsp;</td>
                    </TMPL_LOOP>
                  </tr>
                  <tr>
                    <td valign="top" align="left" class="unifont1" nowrap="nowrap">&nbsp;&nbsp;</td>
                    <TMPL_LOOP NAME="REPORT_PARAMS">
                    <td valign="top" align="left" class="smallfont1"><TMPL_VAR NAME=PARAM_VALUE>&nbsp;</td>
                    </TMPL_LOOP>
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
        <table border="0" cellpadding="0" cellspacing="0" width="620">
          <tr>
            <td align="left">
              <h2 class="myaccounttitle">Phone Detail Report</h2>
              <p class="smallfont1">The Phone Detail Report will contain data on landline phone numbers,
               wireless numbers, carrier company information, and additional details related to the phone number.</p>
              <p class="smallfont1">Click "Request Report" now to run the Phone Detail Report</p>
            </td>
          </tr>
        </table>
        <table border="0" cellpadding="0" cellspacing="0" width="640">
          <tr height="30">
            <td height="30" class="unifont2pt">&nbsp;</td>
          </tr>
          <tr>
            <td width="640" valign="top">
    <TMPL_INCLUDE NAME=short_rt_phone_report_body.tpl>
            </td>
          </tr>
        </table>
      </div>
    </form>
  </body>
</html>
<!-- end: $RCSfile: short_rt_phone_report.tpl,v $ -->
