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

        <form name="CONTACT_US" action="<TMPL_VAR NAME=ACTION>" method="post"> 
              <TMPL_INCLUDE NAME="common_hidden_input.tpl">
              <INPUT type=hidden NAME="SKIN_TYPE" VALUE="<TMPL_VAR NAME=SKIN_TYPE>">
              <INPUT type=hidden NAME="APPLICATION_TYPE" VALUE="<TMPL_VAR NAME=APPLICATION_TYPE>">
              <INPUT type=hidden NAME="EVENT" VALUE="<TMPL_VAR NAME=EVENT>">


            <div class="txtWrapper">
                <div id="txtCon">
                        <table border="0" cellpadding="0" cellspacing="0">
                          <tr>
                            <td>
                            <table border="0" cellpadding="0" cellspacing="0">
                            <TMPL_IF NAME="ERROR_MSG">
                              <tr>
                                <td colspan="3"><br><font color="red"><TMPL_VAR NAME="ERROR_MSG"></font><br></td>
                              </tr>
                             </TMPL_IF>
                              <tr>
                                <td colspan="3"><br><b><TMPL_IF INSTRUCTIONS><TMPL_VAR INSTRUCTIONS><TMPL_ELSE>Please Type Your Message Below.</TMPL_IF>&nbsp; Click SEND When You Are Finished<TMPL_IF IRB> or call 1-800-447-2112</TMPL_IF>.</b><br><br></td>
                              </tr>
                              <tr>
                                <td width="100"><img alt="" height="1" width="100" border="0" src="<TMPL_VAR NAME=IMGPATH>/spacer.gif"></td>
                                <td width="340" colspan="2"><td>
                              </tr>
                              <tr>
                                <td width="100" class="myaccountlabel">Company ID:</td>
                                <td width="1"><img alt="" border="0" height="22" width="1" src="<TMPL_VAR NAME=IMGPATH>/spacer.gif"></td>
                                <td width="339" class="myaccountlabel"><TMPL_VAR NAME=COMPANYID></td>
                              </tr>
                              <tr>
                                <td width="100" class="myaccountlabel">Login ID:</td>
                                <td width="1"><img alt="" border="0" height="22" width="1" src="<TMPL_VAR NAME=IMGPATH>/spacer.gif"></td>
                                <td width="339" class="myaccountlabel"><TMPL_VAR NAME=LOGINID></td>
                              </tr>
                              <tr>
                                <td width="100">First Name:</td>
                                <td colspan="2" width="340"><input type="text" name="FIRST_NAME" tabindex="1" size="25" value="<TMPL_VAR NAME=FIRSTNAME>"></td>
                              </tr>

                              <tr>
                                <td width="100">Last Name:</td>
                                <td colspan="2" width="340"><input type="text" name="LAST_NAME" tabindex="1" size="25" value="<TMPL_VAR NAME=LASTNAME>"></td>
                              </tr>
                              <tr>
                                <td width="100">Email:</td>
                                <td colspan="2" width="340"><input type="text" name="FROM_EMAIL" tabindex="1" size="25" value="<TMPL_VAR NAME=EMAIL_ADDR>"></td>
                              </tr>

                              <tr>
                                <td width="100" valign="top"><br>Message:</td>
                            <td width="340" colspan="2"><br><textarea cols="40" rows="6" name="MESSAGE"></textarea></td>
                              </tr>
                              <tr>
                                <td colspan="3" align="center">
                                <br><br>
                                <input class="btn red-btn" name="sendmessage" type="button" value="<TMPL_IF NAME=BUTTON_NAME><TMPL_VAR BUTTON_NAME><TMPL_ELSE>Send Message</TMPL_IF>" onClick="this.value='*** Sending ***';this.disabled=true;this.form.submit();">
                                </td>
                              </tr>
                            </table>
                            </td>
                          </tr>
                        </table>

                </div>
            </div>
        
        </form>
    </body>
</html>
