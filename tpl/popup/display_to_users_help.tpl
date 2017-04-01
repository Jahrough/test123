
<html>
<head>
<title>Display to Users Help</title>
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
    <b>Display to Users Help</b>
    <br><br>
When <b>Display to Users</b> is checked, the system administrator's contact information (Name, Phone Number and Email Address) will be displayed to all company users with access to the "Your Company Administrator" link located in the "Contact Us" page:

<br>
</td></tr>
  <tr>
    <td align="center"><img style="border-style:solid; border-width:1px; border-color:#cccccc;" src="<TMPL_VAR NAME=IMGPATH>/your_admin_ca.jpg"></td>
  </tr>

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


If you do not wish for the users to 
contact this administrator or do not 
wish for their contact information to 
be shared, uncheck the Display to Users 
option for each System Administrator.  
The default setting is checked.  
<br><br>

Note:  If the "Your Company Administrator" 
link is not visible, the Company Administrator Link 
option must be enabled in the Manage Company 
tab under Enable Features.
<br><br><br>
    </td>
  </tr>
</table>

</div>

</body>
</html>
