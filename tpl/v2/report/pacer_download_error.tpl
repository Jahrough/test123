<!-- BEGIN claims_register_error.tpl -->
<html>
<head>
<title>PACER Error</title>
<link href="<TMPL_VAR NAME='CSSPATH'>/style1.css" rel="stylesheet" type="text/css">
<link href="<TMPL_VAR NAME='CSSPATH'>/<TMPL_VAR NAME=SKIN_TYPE>/skin.css" rel="stylesheet" type="text/css">
</head>

<body onload="window.focus();opener.closewaitwin();" topmargin="0" leftmargin="0" marginwidth="0" marginheight="0" >

<div id="hd">
<h2><a trackid="hdr_top_logo"></a></h2>
</div>

<center>
<br><br><br>
<table border="0" cellpadding="0" cellspacing="0" width="500">
  <tr>
    <td class="unifont1">
We're sorry... 
    	<TMPL_IF NAME="CLAIMS_REG_ERROR_MSG">
            We have received the following message from PACER, "<TMPL_VAR NAME="CLAIMS_REG_ERROR_MSG">". This can happen when no claims have been filed yet on this case.
            If you believe you have received this message in error, or believe there are claims filed in this case, 
            please contact customer support at 1-866-277-9986.  Thank you.
        <TMPL_ELSE>
          <TMPL_IF NAME="NO_CLAIMS_REG_MSG">
            the US Bankruptcy court is not responding at this time. You will not be charged for this <TMPL_VAR NAME="NO_CLAIMS_REG_MSG"> request.  Please try again later.
          <TMPL_ELSE>
    	    <TMPL_IF NAME="NO_CLAIMS_REGISTER_MSG">
               We have received the following message from PACER, "<TMPL_VAR NAME="NO_CLAIMS_REGISTER_MSG">".
               <br /><br />If you believe you have received this message in error, please contact customer support at 1-866-277-9986.  Thank you.
            <TMPL_ELSE>
              <TMPL_IF NAME="UNAUTH_IMAGE">
                Our system has detected an unauthorized image transaction attempt. Your request will not be completed.
                If you believe you have received this message in error, please contact customer support at 1-866-277-9986.  Thank you.
              <TMPL_ELSE>
                the US Bankruptcy court is not responding at this time. You will not be charged for this <TMPL_VAR NAME="NO_CLAIMS_REGISTER_MSG"> request.  Please try again later.			
              </TMPL_IF>
            </TMPL_IF>
          </TMPL_IF>
        </TMPL_IF>
    <P>
  </tr>

</table>
</center>


</body>
</html>
<!-- END claims_register_error.tpl -->
