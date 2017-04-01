<!-- begin accurint_js.tpl -->
<script language="javascript" type="text/javascript">//<![CDATA[

var Accurint = (function(I){

  // quasi-globals - server-side flags
  I.reportAction = "<TMPL_VAR ACTION_REPORT>";
  I.jsPath = "<TMPL_VAR JSPATH>";
  I.imgPath = "<TMPL_VAR IMGPATH>";
  I.sessionId = "<TMPL_VAR SESSION_ID>";
  I.cssPath = "<TMPL_VAR CSSPATH>";
<TMPL_IF MIGHT_SHOW_IN_THE_FUTURE>
  I.batchAction = "<TMPL_VAR ACTION_BATCH>";
  I.soundAction = "<TMPL_VAR ACTION_SOUND>";
  I.docketAction = "<TMPL_VAR ACTION_DOCKET>";
  I.action = "<TMPL_VAR ACTION>";
  I.miscAction = "<TMPL_VAR ACTION_MISC>";
  I.htmlPath = "<TMPL_VAR HTMLPATH>";
</TMPL_IF>
  return I;

})(window.Accurint || {});

//]]></script>
<script language="javascript" type="text/javascript" src="<TMPL_VAR JSPATH>/prototype.js"></script>
<script language="javascript" type="text/javascript" src="<TMPL_VAR JSPATH>/Accurint.js"></script>
<!-- end accurint_js.tpl -->