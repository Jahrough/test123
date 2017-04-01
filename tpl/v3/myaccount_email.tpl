<!DOCTYPE html>
<!-- begin v3/myaccount_email.tpl -->
<html>
<head>
<meta http-equiv="X-UA-Compatible" content="IE=Edge" />
<title>Email Information</title>

<link href="<TMPL_VAR NAME='CSSPATH'>/accurint.css" rel="stylesheet" type="text/css">
<link href="<TMPL_VAR NAME='CSSPATH'>/<TMPL_VAR NAME=SKIN_TYPE>/skin.css" rel="stylesheet" type="text/css">
<link href="<TMPL_VAR NAME='CSSPATH'>/demo.css" rel="stylesheet" type="text/css">
<link href="<TMPL_VAR NAME='CSSPATH'>/demo2.css" rel="stylesheet" type="text/css">
<link href="<TMPL_VAR NAME='CSSPATH'>/sprites.css" rel="stylesheet" type="text/css">
<link href="<TMPL_VAR NAME='CSSPATH'>/menus_alerts.css" rel="stylesheet" type="text/css">

<script src="<TMPL_VAR NAME='JSPATH'>/common.js"></script>
<script src="<TMPL_VAR NAME='JSPATH'>/shared.js"></script>
<script src="<TMPL_VAR NAME='JSPATH'>/user_admin.js"></script>

<script>
 

function email_domain_chk(){
    var df = document.forms[0];

    email_prefix = trim(df.EMAIL_ADDR_PREFIX.value);
    conf_email_prefix = trim(df.EMAIL_ADDR_PREFIX2.value);
    email_domain = trim(df.EMAIL_DOMAIN[df.EMAIL_DOMAIN.selectedIndex].text);
    conf_email_domain = trim(df.EMAIL_DOMAIN2.options[df.EMAIL_DOMAIN2.selectedIndex].text);
    pattern = /^[a-zA-Z0-9]['\w\.-]*[a-zA-Z0-9]/;

    if(email_prefix != conf_email_prefix){
        alert('\'Email Prefix:\' and \'Confirm Email Prefix:\' Do Not Match.\n\n');
        return false;
    }
    if(email_domain != conf_email_domain){
        alert('\'Email Domain:\' and \'Confirm Email Domain:\' Do Not Match.\n\n');
        return false;
    }else if (email_domain == 'Select One' || conf_email_domain == 'Select One'){
        alert('Please select a domain and cofirm it.\n\n');
        return false;
    }
    if (email_prefix == '' || email_prefix == null ||  !email_prefix.match(pattern)){
        alert('You entered your email prefix in the wrong format. Note that the email prefix is the portion of your email address preceding the "@" sign and typically contains only letters, numbers, and certain special characters. \n\nPlease try again.\n\n');
        return false;
    }

    df.EMAIL_ADDR.value = trim(email_prefix + '@' + email_domain);
    return true;
}
</script>

  <script src="<TMPL_VAR NAME='JSPATH'>/v3/jquery.min.js"></script>
  <script type="text/javascript">
    var $j = jQuery.noConflict();
  </script>
  <script src="<TMPL_VAR NAME='JSPATH'>/v3/make_table_508.js"></script>

</head>

<body topmargin="0" leftmargin="0" marginwidth="0" marginheight="0" bgcolor="#ffffff">
<TMPL_INCLUDE NAME="logo.tpl">

<form name="MYACCOUNT" action="<TMPL_VAR NAME=ACTION>" method="post">
      <TMPL_INCLUDE NAME="common_hidden_input.tpl">
      <INPUT type=hidden NAME="SKIN_TYPE" VALUE="<TMPL_VAR NAME=SKIN_TYPE>">
      <INPUT type=hidden NAME="APPLICATION_TYPE" VALUE="<TMPL_VAR NAME=APPLICATION_TYPE>">
  <TMPL_IF NAME="MAIN">
      <INPUT type=hidden NAME="EVENT" VALUE="MYACCOUNT/UPDATE_MAINEMAIL">
  <TMPL_ELSE>
  <TMPL_IF NAME="BILL">
      <INPUT type=hidden NAME="EVENT" VALUE="MYACCOUNT/UPDATE_BILLEMAIL">
  <TMPL_ELSE>
  <TMPL_IF NAME="USER">
      <INPUT type=hidden NAME="EVENT" VALUE="MYACCOUNT/UPDATE_USEREMAIL">
  </TMPL_IF>
  </TMPL_IF>
  </TMPL_IF>
      <INPUT type=hidden NAME="BOTH" VALUE="<TMPL_VAR NAME=BOTH>">

      <div align="center">
        <table border="0" cellpadding="0" cellspacing="0">
          <tr>
            <td align="center" valign="top">

            <div class="txtWrapper">
                <div id="txtCon">
                    <div class="mfa-header">Email Information</div>
                    <br/>


              <table border="0" cellpadding="10" cellspacing="0" class="myaccountalert" style="border:none;">
          <TMPL_IF NAME="MAIN">
                <TMPL_IF NAME="ERROR_MSG">
                  <TR>
                    <td align="center" colspan="2"><b><font color="red"><TMPL_VAR NAME="ERROR_MSG"></font></b>&nbsp;</TD>
                  </TR>
                </TMPL_IF>
                  <tr>
                <td  align="left">
                <TMPL_VAR NAME=FIRSTNAME> <TMPL_VAR NAME=LASTNAME>,
                </td>
                  </tr>
                  <tr>
                <td  align="left">
                You are listed as an administrator for your company's <TMPL_IF IRB>IRBsearch<TMPL_ELSE><TMPL_IF FCOL>Collection Solutions<TMPL_ELSE>Accurint</TMPL_IF></TMPL_IF> Account. In order to ensure you are informed of important notifications and communications relevant to <TMPL_IF IRB>IRBsearch<TMPL_ELSE><TMPL_IF FCOL>Collection Solutions<TMPL_ELSE>Accurint</TMPL_IF></TMPL_IF> account administrators, we need to confirm your e-mail address.
                </td>
                  </tr>
                  <tr>
                <td  align="left"><label for="main_eml">My current e-mail address is:</label>&nbsp;&nbsp;&nbsp;&nbsp;<INPUT id="main_eml" TYPE="text" NAME="MAINEMAIL" SIZE="30" VALUE="<TMPL_IF NAME=NEW_MAINEMAIL><TMPL_VAR NAME=NEW_MAINEMAIL><TMPL_ELSE><TMPL_VAR NAME=MAINEMAIL></TMPL_IF>" MAXLENGTH=60>
                </td>
                  </tr>
                  <tr>
                <td align="center">
                    <a class="myaccount-btn red-btn" href="javascript:send_event('MYACCOUNT/UPDATE_MAINEMAIL')" onClick="if(!validate_email('MAINEMAIL')) {return false;}">Yes, this is my current e-mail address</a>
                </td>
                  </tr>
                  <tr>
                <td align="left">
                   Your e-mail address will be kept confidential and will be used only for communication between you and <TMPL_IF IRB>IRBsearch<TMPL_ELSE><TMPL_IF FCOL>Collection Solutions<TMPL_ELSE>Accurint</TMPL_IF></TMPL_IF> personnel.  This information will not be provided or sold to any third party.
                </td>
                  </tr>
          <TMPL_ELSE>
          <TMPL_IF NAME="BILL">
                <TMPL_IF NAME="ERROR_MSG">
                  <TR>
                    <td align="center" colspan="2"><b><font color="red"><TMPL_VAR NAME="ERROR_MSG"></font></b>&nbsp;</TD>
                  </TR>
                </TMPL_IF>
                  <tr>
                <td  align="left">
                <TMPL_VAR NAME=FIRSTNAME> <TMPL_VAR NAME=LASTNAME>,
                </td>
                  </tr>
                  <tr>
                <td  align="left">
                You are listed as the billing contact for your company's <TMPL_IF IRB>IRBsearch<TMPL_ELSE><TMPL_IF FCOL>Collection Solutions><TMPL_ELSE>Accurint</TMPL_IF></TMPL_IF> Account. In order to ensure you are informed of important notifications and communications relevant to <TMPL_IF IRB>IRBsearch<TMPL_ELSE><TMPL_IF FCOL>Collection Solutions<TMPL_ELSE>Accurint</TMPL_IF></TMPL_IF> billing, we need to confirm your e-mail address.
                </td>
                  </tr>
                  <tr>
                <td  align="left" width="400">
                <label for="bl_eml">My current e-mail address is:</label>&nbsp;&nbsp;<INPUT id="bl_eml" TYPE="text" NAME="BILLEMAIL" SIZE="30" VALUE="<TMPL_IF NAME=NEW_BILLEMAIL><TMPL_VAR NAME=NEW_BILLEMAIL><TMPL_ELSE><TMPL_VAR NAME=BILLEMAIL></TMPL_IF>" MAXLENGTH=60>
                </td>
                  </tr>
                  <tr>
                <td align="center">
                    <a class="myaccount-btn red-btn" href="javascript:send_event('MYACCOUNT/UPDATE_BILLEMAIL')" onClick="if(!validate_email('BILLEMAIL')) {return false;}">Yes, this is my current e-mail address</a>
                </td>
                  </tr>
                  <tr>
                <td align="left">
                Your e-mail address will be kept confidential and will be used only for communication between you and <TMPL_IF IRB>IRBsearch<TMPL_ELSE><TMPL_IF FCOL>Collection Solutions<TMPL_ELSE>Accurint</TMPL_IF></TMPL_IF> personnel.  This information will not be provided or sold to any third party.
                </td>
                  </tr>
          <TMPL_ELSE>
          <TMPL_IF NAME="USER">
                <TMPL_IF NAME="ERROR_MSG">
                  <TR>
                    <td align="center" colspan="2"><b><font color="red"><TMPL_VAR NAME="ERROR_MSG"></font></b>&nbsp;</TD>
                  </TR>
                </TMPL_IF>
                  <tr>
                <td  align="left">
                <TMPL_VAR NAME=FIRSTNAME> <TMPL_VAR NAME=LASTNAME>,
                </td>
                  </tr>
                  <tr>
                <td  align="left">
                <TMPL_IF NAME=ADMIN>
                You are listed as an administrator for your company's <TMPL_IF IRB>IRBsearch<TMPL_ELSE><TMPL_IF FCOL>Collection Solutions<TMPL_ELSE>Accurint</TMPL_IF></TMPL_IF> Account. In order to ensure you are informed of important notifications and communications relevant to <TMPL_IF IRB>IRBsearch<TMPL_ELSE><TMPL_IF FCOL>Collection Solutions<TMPL_ELSE>Accurint</TMPL_IF></TMPL_IF> account administrators, we need to confirm your e-mail address.
                <TMPL_ELSE>
                In order to ensure you are informed of important notifications and communications relevant to you as an <TMPL_IF IRB>IRBsearch<TMPL_ELSE><TMPL_IF FCOL>Collection Solutions<TMPL_ELSE>Accurint</TMPL_IF></TMPL_IF> user, we need to confirm your e-mail address.
                </TMPL_IF>
                </td>
                  </tr>


                <TMPL_IF NAME="ENABLE_EMAIL_DOMAIN">
                    <TMPL_IF NAME="EMAIL_ADDR_NOMATCH">
                    <tr>
                        <td colspan="2">
                            <span style="color: #ed1c24; font-weight: bold;"><TMPL_VAR NAME="EMAIL_ADDR"> needs to be updated below</span>
                        </td>
                    </tr>
                    </TMPL_IF>
                <tr>
                    <td>
                        <table width="75%">
                            <tr>
                                <td  align="left">
                                    <label for="eml_pref">Email Prefix:</label>
                                </td>
                                <td  align="left">
                                    <INPUT id="eml_pref" NAME="EMAIL_ADDR_PREFIX" VALUE="<TMPL_UNLESS NAME="EMAIL_ADDR_NOMATCH"><TMPL_VAR NAME=EMAIL_ADDR_PREFIX></TMPL_UNLESS>"> <label for="eml_dom">@</label>
                                    <select id="eml_dom" name="EMAIL_DOMAIN">
                                        <option value="" selected>Select One</option>
                                        <TMPL_LOOP NAME="EMAIL_DOMAIN_LIST">
                                            <option<TMPL_IF NAME='EMAIL_CURR_DOMAIN'> selected</TMPL_IF> value="<TMPL_VAR NAME='EMAIL_DOMAIN'>"><TMPL_VAR NAME='EMAIL_DOMAIN'></option>
                                        </TMPL_LOOP>
                                    </select>
                                </td>
                            </tr>
                            <tr>
                                <td  align="left">
                                    <label for="conf_eml">Confirm Email Prefix:</label>
                                </td>
                                <td  align="left">
                                    <input id="conf_eml" name="EMAIL_ADDR_PREFIX2" VALUE="<TMPL_UNLESS NAME="EMAIL_ADDR_NOMATCH"><TMPL_VAR NAME=EMAIL_ADDR_PREFIX2></TMPL_UNLESS>"> <label for="dom_eml">@</label>
                                    <select id="dom_eml" name="EMAIL_DOMAIN2">
                                        <option value="" selected>Select One</option>
                                        <TMPL_LOOP NAME="EMAIL_DOMAIN_LIST">
                                            <option<TMPL_IF NAME='EMAIL_CURR_DOMAIN'> selected</TMPL_IF> value="<TMPL_VAR NAME='EMAIL_DOMAIN'>"><TMPL_VAR NAME='EMAIL_DOMAIN'></option>
                                        </TMPL_LOOP>
                                    </select>
                                    <input name="EMAIL_ADDR" type="hidden" value=""/>
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <TMPL_ELSE>


                  <tr>
                <td  align="left"><label for="cur_eml_adr">My current e-mail address is:</label>&nbsp;&nbsp;&nbsp;&nbsp;<INPUT id="cur_eml_adr" TYPE="text" NAME="EMAIL_ADDR" SIZE="30" VALUE="<TMPL_IF NAME=NEW_EMAIL_ADDR><TMPL_VAR NAME=NEW_EMAIL_ADDR><TMPL_ELSE><TMPL_VAR NAME=EMAIL_ADDR></TMPL_IF>" MAXLENGTH=60>
                </td>
                  </tr>

                </TMPL_IF>
                  <tr>
                <td align="center">
                    <br/><br/>
                    <TMPL_IF NAME="ENABLE_EMAIL_DOMAIN">
                        <a class="myaccount-btn red-btn" name="accept" href="javascript:send_event('MYACCOUNT/UPDATE_USEREMAIL')" onClick="if(!email_domain_chk()) {return false;}">Yes, this is my current e-mail address</a>
                    <TMPL_ELSE>
                        <a class="myaccount-btn red-btn" name="accept" href="javascript:send_event('MYACCOUNT/UPDATE_USEREMAIL')" onClick="if(!validate_email('EMAIL_ADDR')) {return false;}">Yes, this is my current e-mail address</a>
                    </TMPL_IF>
                </td>
                  </tr>
                  <tr>
                <td align="left">
                   Your e-mail address will be kept confidential and will be used only for communication between you and <TMPL_IF IRB>IRBsearch<TMPL_ELSE><TMPL_IF FCOL>Collection Solutions<TMPL_ELSE>Accurint</TMPL_IF></TMPL_IF> personnel.  This information will not be provided or sold to any third party.
                </td>
                  </tr>
          </TMPL_IF>
          </TMPL_IF>
          </TMPL_IF>
        </table>
        </div>
        </div>
      </td>
    </tr>
   </table>    
 </div>

</form>
</body>
</html>
<!-- end myaccount_email.tpl -->
