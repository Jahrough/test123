<!DOCTYPE html>
<html lang="en">
  <head>
    <TMPL_INCLUDE NAME="myaccount/myaccount_includes.tpl">
    <script type="text/javascript" src="<TMPL_VAR NAME=JSPATH>/v4/myaccount/alerts/person.js"></script>
    <script type="text/javascript" src="<TMPL_VAR NAME=JSPATH>/v4/myaccount/jquery-check-all.js"></script>    
  </head>
  <body>
    <div id="container" role="dialog">
      <TMPL_INCLUDE NAME="myaccount/myaccount_header.tpl">
      <div id="maincontents">
        <i class="fa fa-16 fa-bell pos_1 fa-fw bluetxt"></i> <span class="fa-16">Alerts for <TMPL_VAR ALT_SUBJECT_USER_NAME> (<TMPL_VAR ALT_SUBJECT_USER_ID>)</span>
        <p>
        <form name="ALERTS_MANAGE" id="ALERTS_MANAGE" action="<TMPL_VAR NAME=ACTION>" method="post">
        <TMPL_INCLUDE NAME="myaccount/common_myaccount_hidden_input.tpl"> 
        <input type="hidden" name="ALT_SUBJECT_USER_NAME" value="<TMPL_VAR ALT_SUBJECT_USER_NAME>">
        <input type="hidden" name="ALT_SUBJECT_USER_ID" value="<TMPL_VAR ALT_SUBJECT_USER_ID>">
        <div class="alert-containers">
          <div class="section">
            <TMPL_IF SUBSCRIPTIONS>
              <TMPL_VAR NAME="SUBSCRIPTIONS">
            <TMPL_ELSE>
              <span><strong>No Alert found</strong></span><br>
              <input title="Back" onclick="javascript:parent.close()" type="button" value="Back">  
            </TMPL_IF>
          </div>
        </div>  
        </form>
      </div>
    </div>
  </body>
</html>