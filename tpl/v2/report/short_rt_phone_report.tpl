<!-- begin: v2/report/short_rt_phone_report.tpl -->
<html xmlns="http://www.w3.org/1999/xhtml" lang="en" xml:lang="en">
  <head>
    <title><TMPL_VAR NAME="REPORT_NAME"> Options</title>
    <link href="<TMPL_VAR NAME='CSSPATH'>/accurint.css" rel="stylesheet" type="text/css">
    <link href="<TMPL_VAR NAME='CSSPATH'>/<TMPL_VAR APPLICATION_TYPE>/<TMPL_VAR NAME=USER_THEME>.css" rel="stylesheet" type="text/css">
    <script src="<TMPL_VAR NAME='JSPATH'>/common.js"></script>
    <script src="<TMPL_VAR NAME='JSPATH'>/shared.js"></script>
    <script src="<TMPL_VAR NAME='JSPATH'>/please_wait.js"></script>
  </head>
  <body id="hdNoLogo" onLoad="window.focus();">
    <div id="pleasewait" style="position:absolute; top:250px;left:300px; visibility:hidden; z-index:1000;">
    <img src="<TMPL_VAR NAME=IMGPATH>/bg_searching_report.gif" id="pw" name="pw" width="300" height="65" border="0">
    </div>

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
                <td align="center"><input name="BUTTON" tabindex="1" class="rb" type="button"
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

    <TMPL_INCLUDE NAME=short_rt_phone_report_body.tpl>
      </div>
    </form>
  </body>
</html>
<!-- end: v2/report/short_rt_phone_report.tpl -->
