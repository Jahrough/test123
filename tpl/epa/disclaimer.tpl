<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"
   "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="en" xml:lang="en">
<!-- begin epa/disclaimer.tpl SRV: <TMPL_VAR SERVER_ID>-->
  <head>
    <title>Verification Acknowledgement</title>
    <link href="<TMPL_VAR CSSPATH>/epa.css" rel="stylesheet" type="text/css"/>
  </head>
  <body>
    <form method="post" action="<TMPL_VAR EPA_ACTION>">
      <div id="center_all">
      <div id="content">
        <input type="hidden" name="CRYPTO" value="<TMPL_VAR CRYPTO>"/>
        <input type="hidden" name="EVENT" value="EPA/SHOW"/>
        <p>
          Please click &#34;OK&#34; to perform identity verification conducted by LexisNexis<sup>&reg;</sup><TMPL_UNLESS NAME=SHOW_STATE_VERSION> on behalf of the US Environmental Protection Agency</TMPL_UNLESS>. 
        </p>
        <p>
        <TMPL_IF NAME=SHOW_STATE_VERSION>
          Canceling this process may require additional information to be provided in order to supply sufficient proof of identity under Title 40 CFR &sect; 3.2000(b)(5)(vii).
        <TMPL_ELSE>
          Canceling this process may require additional information be mailed to the US Environmental Protection Agency in order to continue your CDX registration process.
        </TMPL_IF>
        </p>
        <p id="ctr">
          <input id="SUBMIT" name="SUBMIT" value="OK" type="submit" class="Btn"/>
          <input onclick="javascript:window.close();" value="Cancel" type="button" class="Btn"/>
        </p>
      </div>
      <div><span><a href="<TMPL_VAR HTMLPATH>/epa/privacy.html" target="_new">LexisNexis<sup>&reg;</sup> Privacy Policy</a></span></div>
      </div>
    </form>
    <script type="text/javascript" src="<TMPL_VAR JSPATH>/prototype.js"></script>
    <script type="text/javascript" src="<TMPL_VAR JSPATH>/PopupBox.js"></script>
    <script type="text/javascript">//<![CDATA[

      var css_path = "<TMPL_VAR CSSPATH>";
      document.observe('dom:loaded',function(event){
        var pop =  new PopupProcessing('SUBMIT','');
        return event;
      });

    //]]></script>
  </body>
</html>
<!-- end epa/disclaimer.tpl -->
