<!DOCTYPE html>
<html lang="en">
<head>
  <title>Thank You</title>
  <TMPL_INCLUDE NAME="myaccount/myaccount_includes.tpl">
  <script type="text/javascript" src="<TMPL_VAR NAME=JSPATH>/v4/myaccount/users/investigate_user.js"></script>  
</head>
<body>
  <div id="container" role="dialog">
  <TMPL_INCLUDE NAME="myaccount/myaccount_header.tpl">
  <div id="maincontents">
  <form name="INVESTIGATE_USER" action="<TMPL_VAR NAME=ACTION>" method="post">
    <TMPL_INCLUDE NAME="myaccount/common_myaccount_hidden_input.tpl">
    <center><span class="largefont1"><strong>Your Investigation Referral Form Has Been Sent</strong></span></center>
    <br><br>
    <span class="unifont2">This matter has been submitted for investigation.&nbsp;An individual from our Corporate Security Office will be in contact with you.&nbsp; If you have any additional information that you need to provide in the future pertaining to this investigation, you may submit the information through the same Investigations Referral Form.
    <br><br><br><br><br><br>
    <center>
      <input type="button" value="Continue" id="go_back" title="Continue" /> &nbsp; 
    </center>
    </span>
    </form>
  </div>
  </div>
  <TMPL_INCLUDE NAME="myaccount/myaccount_footer.tpl">
</body>
</html>