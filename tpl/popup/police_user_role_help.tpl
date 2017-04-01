
<html>
<head>
<title>Police Report User Role Help</title>
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
<br><br><br>
<table border="0" cellpadding="10" cellspacing="0" width="80%">
  <tr>
    <td class="unifont1">
    <b>Police Report User Role Feature</b>
    <br><br>
    The Police Records feature allows you and your company's users the ability to order and receive a broad range of reports including:
        <p>&nbsp;</p>
        <p><b>Auto Accident</b></p>
        <p><b>Arrest Report</b></p>
        <p><b>DUI Report</b></p>
        <p><b>Homicide Report</b></p>
        <p><b>Birth Certificate</b></p>
        <p><b>Death Certificate</b></p>
<br><br>
    Once the feature has been enabled the System Administrator is able to assign one
    of 4 different User Roles to each user.
        <p>&nbsp;</p>
        <p><b>Order/View - Company: Users can can place an order for any user in the 
              company, and can view all orders for the company.</b></p>
        <p>&nbsp;</p>
        <p><b>Order/View - User: User can only place and view orders made under and
              for their own account. </b></p>
        <p>&nbsp;</p>
        <p><b>Order Only: User can only place report orders. No results (i.e. reports
              ) can be viewed. This option is primarily used by companies that hava a 
                data entry operator that places orders for multiple users.</b></p>
        <p>&nbsp;</p>
        <p><b>View Only: User can view results only. No orders can be placed.</b></p>
<br><br>
    </td>
  </tr>
</table>

</div>

</body>
</html>
