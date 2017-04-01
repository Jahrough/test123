<!DOCTYPE html>
<!-- Begin supplemental_data_sources.tpl -->
<html>
<head>
<title>Company Administrator Link Help</title>
<TMPL_INCLUDE NAME="includes_info.tpl">
<style>
.txtWrapper{min-width:500px;}
.myaccountborder ol{font-size:12px;color: #666;}
</style>

</head>

<body onLoad="window.focus();" topmargin="0" leftmargin="0" marginwidth="0" marginheight="0">

<TMPL_INCLUDE NAME="header_info.tpl">

<form name="CONTACT_US" action="<TMPL_VAR NAME=ACTION>" method="post"> 
<TMPL_INCLUDE NAME="common_hidden_input.tpl">
<INPUT type=hidden NAME="SKIN_TYPE" VALUE="<TMPL_VAR NAME=SKIN_TYPE>">
<INPUT type=hidden NAME="APPLICATION_TYPE" VALUE="<TMPL_VAR NAME=APPLICATION_TYPE>">
<INPUT type=hidden NAME="EVENT" VALUE="<TMPL_VAR NAME=EVENT>">

   <div class="txtWrapper">
    <div id="txtCon">
        <div class="left-header">Company Administrator Link Help</div>
 
            <table border="0" cellpadding="10" cellspacing="0">
              <tr>
                <td>
            When the <b>Company Administrator Link</b> option
            is set to Yes, the "Your Company Administrator" link 
            will be visible in the page displayed when clicking 
            the "Contact Us" link within the product for all 
            company users:
            </td>
            </tr>

              <tr>
                <td align="center"><img style="border-style:solid; border-width:1px; border-color:#cccccc;" src="<TMPL_VAR NAME=IMGPATH>/your_admin_ca.jpg"></td>
              </tr>

              <tr>
                <td>
            <br><br>
            Additionally, the "Your Company Administrator" link will also be displayed in the "My Account" tab within the product:
            <br>
            </td></tr>

              <tr>
                <td align="center"><img style="border-style:solid; border-width:1px; border-color:#cccccc;" src="<TMPL_VAR NAME=IMGPATH>/your_admin_right_col.jpg" border="1"></td>
              </tr>
              

            <tr>
            <td>
                
            <br>
            Please note that if the feature is disabled by setting
            the option to "No", the "Your Company Administrator" link
            will not be visible for your company.
            <br><br>
            Clicking the link will open a webpage where the contact 
            information (Name, Phone Number and Email Address) 
            of the company's system administrators and/or those 
            users designated as a company contact will be displayed.  
            <br><br>
            Note:  To remove a system administrator's contact 
            information from display, go to the Manager Users tab 
            and select the desired User ID.  On the Update User 
            page, uncheck the Display to Users option under 
            General Settings / System Administrator.
            <br><br>
            To remove a company contact from display, go to the 
            Manager Users tab and select the desired User ID. 
            On the Update User page, set the Company Contact 
            option under General Settings to No.  
            <br><br>
                
                
                
                </td>
              </tr>
            </table>

        </div>
    </div>

</form>
</body>
</html>
<!-- End supplemental_data_sources.tpl -->
