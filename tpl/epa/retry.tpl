<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"
   "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="en" xml:lang="en">
<!-- begin epa/input.tpl SRV: <TMPL_VAR SERVER_ID>-->
  <head>
    <title>LexisNexis Verification for EPA</title>
    <script type="text/javascript" src="<TMPL_VAR JSPATH>/prototype.js"></script>
    <script type="text/javascript" src="<TMPL_VAR JSPATH>/PopupBox.js"></script>
    <script type="text/javascript">//<![CDATA[

      var css_path = "<TMPL_VAR CSSPATH>";
      document.observe("dom:loaded",function(event) {
        $$("a").each(function(lnk){
          if( lnk.getAttribute("rel") === "external" ) {
            lnk.onclick = function() {
              return ! window.open(this.href);
            }
          }
        });
        var pop =  new PopupProcessing("SUBMIT");
        $("CANCEL").observe("click",function(){
          window.close();
        });
        $("SUBMIT").observe("click",function(){
          this.form.submit();
        });
      });

    //]]></script>
    <link href="<TMPL_VAR CSSPATH>/epa.css" rel="stylesheet" type="text/css"/>
  </head>
  <body id="bd-logo<TMPL_IF NAME=SHOW_STATE_VERSION>-state</TMPL_IF>">
    <form action="<TMPL_VAR EPA_ACTION>" method="post" id="EPAFORM">
      <div>
        <input type="hidden" name="EVENT" value="EPA/SUBMIT"/>
        <input type="hidden" name="EPA_PREFILL" value="<TMPL_VAR EPA_PREFILL>"/>
        <input type="hidden" name="COMPANY_NAME" value="<TMPL_VAR COMPANY_NAME>"/>
        <input type="hidden" name="STREET_ADDRESS" value="<TMPL_VAR STREET_ADDRESS>"/>
        <input type="hidden" name="CITY" value="<TMPL_VAR CITY>"/>
        <input type="hidden" name="STATE" value="<TMPL_VAR STATE>"/>
        <input type="hidden" name="ZIP" value="<TMPL_VAR ZIP>"/>
        <input type="hidden" name="WORK_PHONE" value="<TMPL_VAR WORK_PHONE>"/>
        <input type="hidden" name="FEIN" value="<TMPL_VAR FEIN>"/>
        <input type="hidden" name="LAST_NAME" value="<TMPL_VAR LAST_NAME>"/>
        <input type="hidden" name="FIRST_NAME" value="<TMPL_VAR FIRST_NAME>"/>
        <input type="hidden" name="MIDDLE_NAME" value="<TMPL_VAR MIDDLE_NAME>"/>
        <input type="hidden" name="SSN4" value="<TMPL_VAR SSN4>"/>
        <input type="hidden" name="HOME_ADDRESS" value="<TMPL_VAR HOME_ADDRESS>"/>
        <input type="hidden" name="HOME_CITY" value="<TMPL_VAR HOME_CITY>"/>
        <input type="hidden" name="HOME_STATE" value="<TMPL_VAR HOME_STATE>"/>
        <input type="hidden" name="HOME_ZIP" value="<TMPL_VAR HOME_ZIP>"/>
        <input type="hidden" name="HOME_PHONE" value="<TMPL_VAR HOME_PHONE>"/>
        <input type="hidden" name="DOB" value="<TMPL_VAR DOB>"/>
        <p>
          There was an error processing your verification request.  Please try again by clicking the 
          &quot;Try Again&quot; button below. To return to the CDX registration, click the &quot;Cancel&quot; button.
        </p>
        <p id="ctr">
          <input id="SUBMIT" name="SUBMIT" value="Try Again" type="button" class="Btn"/>
          <input id="CANCEL" value="Cancel" type="button" class="Btn"/>
        </p>
      </div>
    </form>
<!-- begin footer -->
<div id="footer">
      <a href="http://www.lexisnexis.com/terms/copyright.aspx" target="_blank">Copyright &copy;</a> <script>document.write(new Date().getFullYear());</script> LexisNexis. All rights Reserved.&nbsp; <a href="http://www.lexisnexis.com/risk/terms/" target="_blank">Terms &amp; Conditions</a> <span>|</span> <a rel="external" href="<TMPL_VAR NAME=HTMLPATH>/epa/privacy.html">Privacy & Security</a>
</div>
<!-- end footer -->
  </body>
</html>
<!-- end epa/input.tpl SRV: <TMPL_VAR SERVER_ID>-->
