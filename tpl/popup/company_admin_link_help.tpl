
<html>
<head>
<title>Company Administrator Link Help</title>
<link href="<TMPL_VAR NAME='CSSPATH'>/style1.css" rel="stylesheet" type="text/css">
<link href="<TMPL_VAR NAME='CSSPATH'>/<TMPL_VAR NAME=SKIN_TYPE>/skin.css" rel="stylesheet" type="text/css">
<TMPL_IF ENABLE_V2>
<link href="<TMPL_VAR NAME='CSSPATH'>/accurint.css" rel="stylesheet" type="text/css">
<link href="<tmpl_var csspath>/<tmpl_var application_type>/diff.css" rel="stylesheet" type="text/css">
<link href="<TMPL_VAR NAME='CSSPATH'>/<TMPL_VAR NAME=APPLICATION_TYPE>/<TMPL_VAR NAME=USER_THEME>.css" rel="stylesheet" type="text/css">
</TMPL_IF>

<script src="<TMPL_VAR NAME='JSPATH'>/common.js"></script>
<script src="<TMPL_VAR NAME='JSPATH'>/shared.js"></script>

</head>

<body onLoad="window.focus();" topmargin="0" leftmargin="0" marginwidth="0" marginheight="0">

<TMPL_IF ENABLE_V2>
<div id="hd"><span id="hdr_top_logo"></span></div>
</TMPL_IF>

<div align="center">
<br><br>
<table border="0" cellpadding="10" cellspacing="0" width="90%">
  <tr>
    <td class="unifont1">
    <b>Company Administrator Link Help</b>
    <br><br>


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
    <td class="unifont1">
<br><br>
Additionally, the "Your Company Administrator" link will also be displayed in the "My Account" tab within the product:
<br>
</td></tr>

  <tr>
    <td align="center"><img style="border-style:solid; border-width:1px; border-color:#cccccc;" src="<TMPL_VAR NAME=IMGPATH>/your_admin_right_col.jpg" border="1"></td>
  </tr>
  

<tr>
<td class="unifont1">
    
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
<br><br>

</div>

</body>
</html>
