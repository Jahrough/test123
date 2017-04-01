<!DOCTYPE html>
<html>
    <head>
        <title>Record Utilities</title>
        <TMPL_INCLUDE NAME="includes_info.tpl">
        <TMPL_IF NAME='COMMON_RECORD_UTILS_JS'><script src="<TMPL_VAR NAME='JSPATH'>/record_utilities/<TMPL_VAR NAME='COMMON_RECORD_UTILS_JS'>.js"></script></TMPL_IF>
        <script src="<TMPL_VAR NAME='JSPATH'>/record_utilities/<TMPL_VAR NAME='SEARCH_NAME'>.js"></script>
        <script src="<TMPL_VAR NAME='JSPATH'>/record_utilities/common.js"></script>
        <style type="text/css">
        .clipstyle {
            background:#d0d0d0 none repeat scroll 0 0;
            border:1px solid #6d6e71;
            height:250px;
            width:500px;
        }
        </style>
<script>
var water_down_non_fcra = <TMPL_IF NAME=WATER_DOWN_NON_FCRA>true<TMPL_ELSE>false</TMPL_IF>;
var fcra_request = <TMPL_IF NAME=FCRA_REQUEST>true<TMPL_ELSE>false</TMPL_IF>;
</script>
    </head>
  <body topmargin="0" leftmargin="0" marginwidth="0" marginheight="0" onLoad="window.focus();display_record();" >
        <TMPL_INCLUDE NAME="header_info.tpl">

            <form name="CLIP">
            <INPUT TYPE="HIDDEN" NAME="REC_TXT" VALUE="">

            <div class="txtWrapper" style="min-width:500px;">
            <div id="txtCon">
                <div class="mfa-header">Record Utilities</div>
                <br/>

                <table border="0" cellpadding="10" cellspacing="0">
                  <tr>
                    <script>display_text();</script>
                  </tr>
                </table>
                <table border="0" cellpadding="2" cellspacing="0" class="myaccountborder">
                  <tr>
                    <td valign="top">
                    <table border="0" cellpadding="5" cellspacing="0" width="100%" bgcolor="#ffffff">
                      <tr>
                        <td class="ctctextarea" colspan="2" align="center"><b>Quick Links</b></td>
                      </tr>
                      <tr>
                        <td class="ctcbody" align="center"><a href="javascript:print_rec();"><img src="/bps/images/icon_print.gif" border="0" alt="Print This Record" title="Print This Record"></a><br>&nbsp;<a alt="Print This Record" title="Print This Record" class="ctclinks" href="javascript:print_rec();">Print</a></td>
                        <td class="ctcbody" align="center"><a href="javascript:mail_rec();"><img src="/bps/images/icon_email.gif" border="0" alt="Email This Record" title="Email This Record"></a><br>&nbsp;<a alt="Email This Record" title="Email This Record" class="ctclinks" href="javascript:mail_rec();">Email</a></td>
                      </tr>
                    </table>
                    </td>
                  </tr>
                </table>
                <br>
                <table border="0" cellpadding="0" cellspacing="0" width="100%">
                  <tr>
                    <td class="ctctextarea" align="left">
                      <script>write_textarea();</script>
                    </td>
                  </tr>
                </table>


                    </div>
                </div>
            </div>
       
        </form>
    </body>
</html>
