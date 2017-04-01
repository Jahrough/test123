<!-- BEGIN docket_error.tpl -->
<html>
<head>
<title>Error</title>
<link href="<TMPL_VAR NAME='CSSPATH'>/style1.css" rel="stylesheet" type="text/css">
<link href="<TMPL_VAR NAME='CSSPATH'>/<TMPL_VAR NAME=SKIN_TYPE>/skin.css" rel="stylesheet" type="text/css">
</head>

<body onload="window.focus();opener.closewaitwin();" topmargin="0" leftmargin="0" marginwidth="0" marginheight="0" >

<TMPL_INCLUDE NAME=generic_header.tpl>

<center>
<br><br><br>
<table border="0" cellpadding="0" cellspacing="0" width="500">
  <tr>
    <td class="unifont1">
We're sorry... 
        <TMPL_IF NAME="DOCKET_ERROR_MSG">
                 We have received the following message from the US Bankruptcy court, "<TMPL_VAR NAME="DOCKET_ERROR_MSG">".
                  You will not be charged for this <TMPL_IF NAME="ERROR_TYPE"><TMPL_VAR NAME="ERROR_TYPE"><TMPL_ELSE>image</TMPL_IF> request.
            <TMPL_ELSE>
                    the US Bankruptcy court is not responding at this time. You will not be charged for this <TMPL_IF NAME="ERROR_TYPE"><TMPL_VAR NAME="ERROR_TYPE"><TMPL_ELSE>image</TMPL_IF> request.  Please try again later.
            </TMPL_IF>
    <P>
  </tr>
</table>
<center>

</body>
</html>
<!-- END docket_error.tpl -->
