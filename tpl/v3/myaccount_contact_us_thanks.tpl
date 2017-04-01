<!DOCTYPE html>
<html>
    <head>
        <TMPL_INCLUDE NAME="includes_info.tpl">
        <title><TMPL_IF NAME="TITLE"><TMPL_VAR NAME="TITLE"><TMPL_ELSE>Contact Us</TMPL_IF></title>
       <style>
       .txtWrapper{ min-width:550px;}
       .txtCon{ min-width:520px;}
       </style>
    </head>

  <body <TMPL_UNLESS VERIFY_PASSWORD>onLoad="window.focus();"</TMPL_UNLESS> topmargin="0" leftmargin="0" marginwidth="0" marginheight="0">
        <TMPL_INCLUDE NAME="header_info.tpl">

             <div class="txtWrapper">
                <div id="txtCon">
                    <table border="0" cellpadding="0" cellspacing="0" width="450">
                      <tr>
                        <td align="center">
                        <span class="largefont1"><br><br><br><br><b>Your Message Has Been Sent.</b>
                        <br><br>
                        </span>
                        <span class="unifont2">
                        Thank you.
                        <br><br><br><br><br><br><br>
                        <a class="btn red-btn" href="javascript:parent.close();"><b>Close Window</b></a></td>
                        </span>
                      </tr>
                    </table>


                </div>
            </div>
    </body>
</html>
