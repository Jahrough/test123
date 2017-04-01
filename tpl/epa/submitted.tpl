<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"
   "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="en" xml:lang="en">
<!-- begin epa/submitted.tpl SRV: <TMPL_VAR SERVER_ID>-->
  <head>
    <title>Verification Confirmation</title>
    <link href="<TMPL_VAR CSSPATH>/epa.css" rel="stylesheet" type="text/css"/>
    <script type="text/javascript" src="<TMPL_VAR JSPATH>/prototype.js"></script>
    <script type="text/javascript">//<![CDATA[

      var css_path = "<TMPL_VAR CSSPATH>";

      function checkKey(e) {
          e = e || event;
          if (!e) {return true;}
          var code = e.keyCode || e.which || null;
          if (code) {
            //alert ("Key :" + code);
            return (code === 8 || code === 46) ? e.stop() : true;
          }
          return true;
      }

      //do onload
      document.observe('dom:loaded', function(evt){
        document.observe("keydown",checkKey);
        document.observe("keyup",checkKey);
      });

    //]]></script>
  </head>
  <body id="bd-logo<TMPL_IF NAME=SHOW_STATE_VERSION>-state</TMPL_IF>">
    <div id="center_all"><div id="content">
      <p>
      <br/><br/><br/>
      </p>
<TMPL_IF ERR>
  <TMPL_IF TRY4>
      <p>
        Your verification request cannot be processed at this time.  To return to the CDX registration,
        click the &#34;OK&#34; button.
      </p>
      <p>
        If the problem persists, contact the CDX helpdesk at 888-890-1995.
      </p>
  <TMPL_ELSE>
        There was an error processing your verification request.  Please try again by clicking the 
        &#34;Try Again&#34; button below. To return to the CDX registration, click the &#34;Cancel&#34; button.
      </p>
      <p>
        If the problem persists, contact the CDX helpdesk at 888-890-1995.
      </p>
  </TMPL_IF>
<TMPL_ELSE>
      <p>
        Thank you for completing the LexisNexis verification process on behalf of the U.S. Environmental
        Protection Agency.
      </p>
      <p>
        Please click the &#34;OK&#34; button below or close this window to <TMPL_IF NAME=SHOW_STATE_VERSION>continue with the registration process<TMPL_ELSE>return to CDX to continue</TMPL_IF>
        
      </p>
</TMPL_IF>
      <p id="ctr">
        <input onclick="javascript:window.close();" value="Ok" type="button" class="Btn"/>
      </p>
    </div></div>
  </body>
</html>
<!-- end epa/submitted.tpl -->
