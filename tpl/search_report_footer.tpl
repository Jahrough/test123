<!-- begin search footer -->
<TMPL_UNLESS NAME="NO_LINKS">
<div align="center">
<!--
      <a href="javascript:document.execCommand('SaveAs');">Save This Document</a>&nbsp;&nbsp;
-->      
      <a href="javascript:void 0" onClick="printit();"><img border="0" width="92" height="25" src="<TMPL_VAR NAME=IMGPATH>/printreport.gif"></a>&nbsp;&nbsp;
      <a href="javascript:history.go(history_back);"><img border="0" width="92" height="25" src="<TMPL_VAR NAME=IMGPATH>/goback.gif"></a>&nbsp; &nbsp;
      <a href="javascript:parent.close();"><img border="0" width="92" height="25" src="<TMPL_VAR NAME=IMGPATH>/closereport.gif"></a>
</div>
</TMPL_UNLESS>
<!-- end search footer -->
