<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"
   "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="en" xml:lang="en">
<!-- begin epa/input.tpl SRV: <TMPL_VAR SERVER_ID>-->
  <head>
    <title>LexisNexis Verification for EPA</title>
    <link href="<TMPL_VAR CSSPATH>/epa.css" rel="stylesheet" type="text/css"/>
  </head>
  <body id="bd-logo<TMPL_IF NAME=SHOW_STATE_VERSION>-state</TMPL_IF>">
    <div id="center_all"><div id="content">
      <p>
      <br/><br/><br/>
      </p>
      <TMPL_IF NAME=SHOW_STATE_VERSION>
      <p>
        To return to the registration process, click the &#34;OK&#34; button.
      </p>
      <TMPL_ELSE>
      <p>
        Your verification request cannot be processed at this time.  To return to the CDX registration, click the &#34;OK&#34; button.
      </p>
      <p>
        If the problem persists, contact the CDX helpdesk at 888-890-1995.
      </p>
      </TMPL_IF>
      <TMPL_IF ERROR_CODE><h1>Code <TMPL_VAR ERROR_CODE>: <TMPL_IF ERROR_MESSAGE><TMPL_VAR ERROR_MESSAGE></TMPL_IF></h1></TMPL_IF>
      <p id="ctr">
        <input onclick="javascript:window.close();" value="Ok" type="button" class="Btn"/>
      </p>
    </div></div>
  </body>
</html>
<!-- end epa/input.tpl SRV: <TMPL_VAR SERVER_ID>-->
