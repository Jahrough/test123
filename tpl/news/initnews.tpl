  
    
 
<TMPL_UNLESS NAME="TEXT_RESULT">
    <table border="0" cellpadding="0" cellspacing="0" width="95%" class="no-print">
      <tr>
        <td align="left" valign="bottom" width="1%"><img width="176"  height="35" src=<TMPL_VAR NAME="IMGPATH">/run_report1.gif alt="Click Below to Run a Report"></td>
        <td width="99%" valign=bottom>
          <table border="0" cellpadding="0" cellspacing="0" width="100%">
            <tr>
              <td><img width="1" height="10" border="0" src="<TMPL_VAR NAME="IMGPATH">/spacer.gif" /></td>
            </tr>
            <tr>
              <td align="center" class="searchresultstop1" >
                <table border="0" cellpadding="0" cellspacing="0">
                  <tr>
                    <td><img src="<TMPL_VAR NAME="IMGPATH">/spacer.gif" height="25" width="1" /></td>
                    <td><img src="<TMPL_VAR NAME="IMGPATH">/spacer.gif" height="1" width="25" /></td>
                    <td valign="middle"><a href="javascript:show_post_popup('LOGIN/SHOW_POPUP','InconInfo','328','250',0,0,0,1,0,0,'','legends/legend_news');"><img src="<TMPL_VAR NAME="IMGPATH">/icon_legend.gif" width="100" height="22" border="0" alt="Icon Legend" /></a></td>
                  </tr>
                </table>
              </td>
            </tr>
          </table>
        </td>
      </tr>
    </table>

    <table border="0" cellpadding="0" cellspacing="0" width="95%">
      <tr class="searchresultstop2 heading" >
              <td align="center" class="searchresultstop1 no-print" valign="bottom" width="28">
                <img width="21" height="15" border="0" src="<TMPL_VAR NAME="IMGPATH">/run_report2.gif" alt="Click Below to Run a Report" />
              </td>
              <td align="center" class="no-print smallfont1white" nowrap="" valign="middle"><!--<b><a class="clipalllink" href="javascript:copy_results(0);">All</a></b>--> &nbsp; &nbsp; &nbsp;</td>
              <td class="smallfont1" nowrap="" valign="top" width=275>&nbsp;</td>
              <td class="smallfont1white" nowrap="" valign="top" ><b>News Search Results</b></td>

    </tr>
   </table>


</TMPL_UNLESS>


   
     <table border="0" cellpadding="0" cellspacing="0" width="95%" bgcolor="white">
   
        <TMPL_VAR NAME=NEWSRESULTS> 
  
     </table>
     

<TMPL_UNLESS NAME="TEXT_RESULT">

<table border="0" cellpadding="0" cellspacing="0" width="95%" class="searchresultsbot">
  <tr >
    <td><img border="0" width="20" height="25" src="<TMPL_VAR NAME=IMGPATH>/spacer.gif" /></td>

    <td align="left" width="8%" height="37">
      <TMPL_IF NAME=PREV_PAGE><TMPL_INCLUDE NAME=prev_url.tpl>
       <TMPL_ELSE><img src="<TMPL_VAR NAME=IMGPATH>/spacer.gif" height="1" width="64">
      </TMPL_IF></td>
      
    <td align="center">
   
  <!-- 
		       <a href="javascript:var DownWin=general_win('<TMPL_VAR NAME="DOWNLOAD_ACTION">?EVENT=SEARCH_DOWNLOAD/SHOW_DOWNLOAD&amp;SESSION_ID=<TMPL_VAR NAME="SESSION_ID">&amp;FORM_INDEX=<TMPL_VAR NAME="FORM_INDEX">&amp;SEARCH_TYPE=<TMPL_VAR NAME="SEARCH_TYPE">&amp;START=<TMPL_VAR NAME="START_RECORD">&amp;TOTAL_RECS=<TMPL_VAR NAME="RECORD_COUNT">&amp;END=<TMPL_VAR NAME="END_RECORD">','DownloadSearchWin',340,200);DownWin.focus();void(0);">
		       <img border="0" width="117" height="23" alt="Export to Excel Format File" src="<TMPL_VAR NAME="IMGPATH">/exp_excel2.gif" />
		       </a>
     
   -->

     <img src="<TMPL_VAR NAME=IMGPATH>/spacer.gif" height="1" width="125">
   
    </td>
    
    <TMPL_IF NAME="RECORD_COUNT">
      <td><img src="<TMPL_VAR NAME=IMGPATH>/spacer.gif" height="1" width="20"></td>
      <td align="center"><span class="searchmessagewhite">Records:&nbsp; </span><span class="searchmessagewhite">
      <TMPL_VAR NAME="START_RECORD"> to <TMPL_VAR NAME="END_RECORD"> of 
      <TMPL_IF NAME="SHOW_ALL">
        <TMPL_VAR NAME="RECORD_COUNT">
       <TMPL_ELSE>
      <TMPL_IF NAME="MORE_THAN_MAX_GEN">first </TMPL_IF>
       <TMPL_VAR NAME="END_RECORD"></TMPL_IF></span>
       
      </td>

    </TMPL_IF>
    
    <td align="right" width="8%" height="37">
     <TMPL_IF NAME="SHOW_ALL"> <TMPL_IF NAME=NEXT_PAGE> <TMPL_INCLUDE NAME=next_url.tpl>
      <TMPL_ELSE>
       <img src="<TMPL_VAR NAME=IMGPATH>/spacer.gif" height="1" width="64"></TMPL_IF>
       <TMPL_ELSE>
        <img src="<TMPL_VAR NAME=IMGPATH>/spacer.gif" height="1" width="64"></TMPL_IF>
    </td>
    <td><img border="0" width="20" height="25" src="<TMPL_VAR NAME=IMGPATH>/spacer.gif" /></td>
  </tr>
</table>

</TMPL_UNLESS>
