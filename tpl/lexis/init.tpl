  
    
 
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
                    <td valign="middle"><a href="javascript:show_post_popup('LOGIN/SHOW_POPUP','InconInfo','328','250',0,0,0,1,0,0,'','<TMPL_VAR NAME="POPUP">');"><img src="<TMPL_VAR NAME="IMGPATH">/icon_legend.gif" width="100" height="22" border="0" alt="Icon Legend" /></a></td>
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
              <td class="smallfont1white" nowrap="" valign="top" ><b><TMPL_VAR NAME="TITLE"></b></td>

    </tr>
   </table>


</TMPL_UNLESS>


   
     <table border="0" cellpadding="0" cellspacing="0" width="95%" align="center">
   
        <TMPL_VAR NAME=RESULTS> 
  
     </table>
     

<TMPL_UNLESS NAME="TEXT_RESULT">



<table border="0" cellpadding="0" cellspacing="0" width="95%" class="searchresultsbot">
  <tr >
    <td><img border="0" width="20" height="25" src="<TMPL_VAR NAME=IMGPATH>/spacer.gif" /></td>
      
    <TMPL_IF NAME="RECORD_COUNT">
    <td><img src="<TMPL_VAR NAME=IMGPATH>/spacer.gif" height="1" width="20"></td>    
    <td align="center"><span class="searchmessagerec">Records:&nbsp; </span><span class="searchmessagenum"><TMPL_VAR NAME="START_RECORD"> to <TMPL_VAR NAME="END_RECORD"> of <TMPL_IF NAME="SHOW_ALL"><TMPL_VAR NAME="RECORD_COUNT"><TMPL_ELSE><TMPL_IF NAME="MORE_THAN_MAX_GEN">first </TMPL_IF><TMPL_VAR NAME="END_RECORD"></TMPL_IF></span></td>
        <INPUT type="hidden" NAME="PAGE">
        <INPUT type="hidden" NAME="START_RECORD" VALUE="<TMPL_VAR NAME=START_RECORD>">
        <INPUT type="hidden" NAME="END_RECORD" VALUE="<TMPL_VAR NAME=END_RECORD>">
        <INPUT type="hidden" NAME="RECORD_COUNT" VALUE="<TMPL_VAR NAME=RECORD_COUNT>">
        <TMPL_IF NAME="PAGE_LIST">
        <INPUT type="hidden" NAME="PAGE_LIST" VALUE="<TMPL_VAR NAME=PAGE_LIST>">
        </TMPL_IF>
    </TMPL_IF>
    <TMPL_IF NAME="PAGE_LINKS_LOOP"><td align="left" width="1%" height="37"  nowrap="nowrap" ><span class="searchmessagerec">Result Page: </span></td></TMPL_IF>
    <TMPL_IF NAME=PREV_PAGE><td align="left" width="1%" height="37"><TMPL_INCLUDE NAME=prev_url.tpl></td></TMPL_IF>
    <TMPL_IF NAME="PAGE_LINKS_LOOP">
	<td align="middle"  width="1%" nowrap="nowrap" height="37"><TMPL_IF NAME=PREV_PAGE>&nbsp;</TMPL_IF>
	<TMPL_LOOP PAGE_LINKS_LOOP>
	    <TMPL_IF NAME="CURRENT_PAGE">
	    <span class="search_results_current_page_number"><TMPL_VAR NAME="PAGE"></span>
	    <TMPL_ELSE>
	    <a class="search_results_paging" href="javascript:set_nextpage_search(<TMPL_VAR SEARCH_FORM_INDEX>,'<TMPL_VAR SEARCH_NAME>',<TMPL_VAR NAME=PAGE>)"><TMPL_VAR NAME="PAGE"></a>
	    </TMPL_IF>
	</TMPL_LOOP>&nbsp;
	</td>
    </TMPL_IF>
    <TMPL_IF NAME="SHOW_ALL"><TMPL_IF NAME=NEXT_PAGE><td align="right" width="1%" height="37"><TMPL_INCLUDE NAME=next_url.tpl></TMPL_IF></td></TMPL_IF>    

  </tr>
</table>

</TMPL_UNLESS>
