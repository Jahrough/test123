<TMPL_IF LE>
    <a style="cursor: help;" href="javascript:void(0);" onClick="general_win('<TMPL_VAR NAME=HLPPATH>/le/batch/batch_how_to.html','HelpWindow',780,490,1,1,1,1,1,0);">Help |</a> <a href="http://risk.lexisnexis.com/contact" target="_blank"> Contact</a>
  <TMPL_ELSE>
  <TMPL_IF GOV>
    <a style="cursor: help;" href="javascript:void(0);" onClick="general_win('<TMPL_VAR NAME=HLPPATH>/gov/batch/batch_how_to.html','HelpWindow',780,490,1,1,1,1,1,0);">Help |</a> <a href="http://risk.lexisnexis.com/contact" target="_blank"> Contact</a>
    <TMPL_ELSE>
    <TMPL_IF COL>
      <a style="cursor: help;" href="javascript:void(0);" onClick="general_win('<TMPL_VAR NAME=HLPPATH>/col/batch/batch_how_to.html','HelpWindow',780,490,1,1,1,1,1,0);">Help |</a> <a href="http://risk.lexisnexis.com/contact" target="_blank"> Contact</a>
    <TMPL_ELSE>
      <TMPL_IF INS>
        <a style="cursor: help;" href="javascript:void(0);" onClick="general_win('<TMPL_VAR NAME=HLPPATH>/ins/batch/batch_how_to.html','HelpWindow',780,490,1,1,1,1,1,0);">Help |</a> <a href="http://risk.lexisnexis.com/contact" target="_blank"> Contact</a>      
      <TMPL_ELSE>
        <a style="cursor: help;" href="javascript:void(0);" onClick="general_win('<TMPL_VAR NAME=HLPPATH>/batch/batch_how_to.html','HelpWindow',780,490,1,1,1,1,1,0);">Help |</a> <a href="http://risk.lexisnexis.com/contact" target="_blank"> Contact</a>
      </TMPL_IF>
    </TMPL_IF>
  </TMPL_IF>
</TMPL_IF>

