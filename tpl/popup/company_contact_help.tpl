
<html>
<head>
<title>Company Contact Help</title>
<link href="<TMPL_VAR NAME='CSSPATH'>/style1.css" rel="stylesheet" type="text/css">
<link href="<TMPL_VAR NAME='CSSPATH'>/<TMPL_VAR NAME=SKIN_TYPE>/skin.css" rel="stylesheet" type="text/css">
<TMPL_IF ENABLE_V2>
<link href="<TMPL_VAR NAME='CSSPATH'>/accurint.css" rel="stylesheet" type="text/css">
<link href="<tmpl_var csspath>/<tmpl_var application_type>/diff.css" rel="stylesheet" type="text/css">
<link href="<TMPL_VAR NAME='CSSPATH'>/<TMPL_VAR NAME=APPLICATION_TYPE>/<TMPL_VAR NAME=USER_THEME>.css" rel="stylesheet" type="text/css">
</TMPL_IF>

<script src="<TMPL_VAR NAME='JSPATH'>/common.js"></script>
<script src="<TMPL_VAR NAME='JSPATH'>/shared.js"></script>
<script src="<TMPL_VAR NAME='JSPATH'>/please_wait.js"></script>

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
    <b>Company Contact Help</b>
    <br><br>

When the <b>Company Contact</b> option is set to Yes, the 
user's contact information (Name, Phone Number 
and Email Address) will be displayed to all 
company users with access to the 
"Your Company Administrator" link located in 
the "Contact Us" page:

<br>
</td></tr>
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


You may choose to mark a user as a Company Contact 
when it is preferred that this individual be 
contacted for administrative requests instead 
of or in addition to a system administrator.  
A user does not have to be a system administrator 
to be marked as a Company Contact.  In addition, 
an existing system administrator may be marked 
as a Company Contact if desired; however, it is 
not necessary to set a system administrator as a 
company contact to have their contact information 
displayed.  Simply ensure the Display to Users 
option is checked under the System Administrator 
option for the user.



<br>
<br>
To remove the user's contact information from the 
"Your Company Administrator" web page, set the Company
Contact option to No.  The default setting is No for 
all users.  
    


<br><br><br>
    </td>
  </tr>
</table>

</div>

</body>
</html>
