<!-- begin search footer -->
<div id="searchResults">
	<TMPL_INCLUDE NAME="search_terms_echo.tpl">
  <TMPL_IF NAME="FCRA_PICK_DATA">
    <TMPL_INCLUDE fcra_person_pick_list.tpl>
  <TMPL_ELSE>
        <TMPL_UNLESS FCRA_BK_EVENTS_SEARCH>
	<TMPL_VAR NAME="RESULTS">
        </TMPL_UNLESS>
        <TMPL_IF FCRA_BK_EVENTS_SEARCH>
        <TMPL_INCLUDE bk_events_search_display.tpl>
    </TMPL_IF>
  </TMPL_IF>

        <script>
	var allHTMLTags = new Array();
	var allHTMLTags=document.getElementsByTagName('td');
	
	for (i=0; i<allHTMLTags.length; i++) {
	if (allHTMLTags[i].className=='smallfont2') {
		allHTMLTags[i].innerHTML=allHTMLTags[i].innerHTML.replace(/(&nbsp;)/g, ' ');
	}
	}
        </script>
</div>

<TMPL_UNLESS NAME="RESULTS">
<TMPL_UNLESS NAME="DONT_SHOW_SEARCH_FOOTER_ERROR">
<TMPL_IF NAME="SEARCH_ERROR_MESSAGE">
<br/>
<div id="printResults" style="float:right">
         <p><img src="<TMPL_VAR NAME=IMGPATH>/icon_print.gif" alt="" width="24" height="11" />
         <TMPL_IF IRB>
         <a href="javascript:print_results('<TMPL_VAR NAME=CSSPATH>','<TMPL_VAR NAME=IMGPATH>/<TMPL_VAR NAME=APPLICATION_TYPE>');"><font size="+0.5" color="#CC3300">Print Results</font></a>
         <TMPL_ELSE><a href="javascript:print_results('<TMPL_VAR NAME=CSSPATH>','<TMPL_VAR NAME=IMGPATH>/<TMPL_VAR NAME=APPLICATION_TYPE>');"><font style="font-size:61%" bold color="#CC3300"><b>Print Results</b></font></a>&nbsp;&nbsp;&nbsp;
         </TMPL_IF>
</div>

<TMPL_IF SHOW_HOUSEHOLD_TAB_ON_ERROR>
<TMPL_IF IN_HOUSEHOLD_TAB> 
  <script>
  function call_event_by_tab(recid, type)
  {
     if (recid != '0')
     {
          document.getElementById('RECID_OVERRIDE').value = 1;
          document.getElementById('RECID').value = recid;
     }
     if (type == '1')
     {
          document.getElementById('IN_HOUSEHOLD_TAB').value = 0;
          javascript:send_event('SEARCH2/SEARCH_PERSON_PLUS_SUBJECT');
     }else
     {
          document.getElementById('IN_HOUSEHOLD_TAB').value = 1;
          javascript:send_event('SEARCH2/SEARCH_PERSON_PLUS_HOUSE');
     }
  }
  </script>

   <div id="subtab">
      <ul>
              <li class="inactive"><a trackid="subtab_subject_phones" href="javascript:call_event_by_tab('<TMPL_VAR NAME="RECID">',1);">Subject Results</a></li>
              <li id="activetab"><a trackid="subtab_household_phones" href="javascript:call_event_by_tab('<TMPL_VAR NAME="RECID">',2);">Household Results</a></li>
      </ul>

    <table id="searchResultsTblHeader" border="0" cellpadding="0" cellspacing="0" width="100%">

      <tr>
        <td id="tblHdrTab" width="2%" style="padding-left: 2px; padding-right: 2px;"></td>
        <td id="tblHdrTab" width="4%" align="center"><a class="clipalllink" href="javascript:copy_results(0);">All</a></td>
        <td id="tblHdrTab" width="3%">&nbsp;</td>
        <td id="tblHdrTab" width="16%">Full Name</td>
        <td id="tblHdrTab" width="10%">SSN</td>
        <td id="tblHdrTab" width="23%">Address</td>
        <td id="tblHdrTab" width="20%">Phone</td>
        <td id="tblHdrTab" align="left" width="21%"/>Next Steps</td>
        <td id="HdrResultR" width="1%">&nbsp;</td>
      </tr>
    </table>

</div>
</TMPL_IF>
</TMPL_IF>

<div id="resultsError">
	<p><img src="<TMPL_VAR NAME=IMGPATH>/ico_results_alert.gif" alt="" width="20" height="20" />
	<TMPL_VAR NAME="SEARCH_ERROR_MESSAGE">
	</p>
	<p></p>

    <TMPL_IF HINTS>
	<br/>
	<ul>
	<TMPL_LOOP NAME="HINTS">
	<li><TMPL_VAR NAME="HINT"></li>
	</TMPL_LOOP>
	</ul>
    </TMPL_IF>
</div>
</TMPL_IF>
</TMPL_UNLESS>
</TMPL_UNLESS>

<TMPL_IF NAME="SEARCH_UNAVAILABLE">
<br/>
<div id="resultsError">
	<p><img src="<TMPL_VAR NAME=IMGPATH>/ico_results_alert.gif" alt="" width="20" height="20" />
	This search is currently unavailable.  Please try again later.
	</p>
	<p></p>
</div>
<br/>
<TMPL_ELSE>
<TMPL_IF NAME="CFG_FORCE_DISABLED">
<br/>
<div id="resultsError">
	<p><img src="<TMPL_VAR NAME=IMGPATH>/ico_results_alert.gif" alt="" width="20" height="20" />
	<TMPL_VAR NAME="CFG_FORCE_DISABLED">
	</p>
	<p></p>
</div>
<br/>
<TMPL_ELSE>
<TMPL_IF NAME="SEARCH_DISABLED">
<br/>
<div id="resultsError">
	<p><img src="<TMPL_VAR NAME=IMGPATH>/ico_results_alert.gif" alt="" width="20" height="20" />
	<TMPL_IF NAME="BUS_INSTANT_ID_REPORT">
            Our Business InstantID Search has been disabled for all customers. We
            apologize for any inconvenience. The search will be available shortly.
        <TMPL_ELSE>
	  <TMPL_IF NAME="PERSON_DTR_REPORT">
	    The Direct-to-Report feature is currently not available to you. Please contact your administrator if this is in error or if you would like access.
          <TMPL_ELSE>
            This search is currently not available to you.  Please contact your administrator if this is in error or if you would like access.
          </TMPL_IF>
        </TMPL_IF>
	</p>
	<p></p>
</div>
<br/>
<TMPL_ELSE>
<TMPL_IF NAME="MORE_THAN_MAX_SUBJ_BK">
<br/>
<div id="resultsError">
	<p><img src="<TMPL_VAR NAME=IMGPATH>/ico_results_alert.gif" alt="" width="20" height="20" />
	The search you have requested resulted in too many matches.&nbsp; Try narrowing your search by including additional information such as any state or city that the subject lived in.
	</p>
	<p></p>
</div>
<br/>
<TMPL_ELSE>
<TMPL_IF NAME="MORE_THAN_MAX_SUBJ">
<br/>
<div id="resultsError">
	<p><img src="<TMPL_VAR NAME=IMGPATH>/ico_results_alert.gif" alt="" width="20" height="20" />
	The search you have requested resulted in over <TMPL_VAR NAME=MAX_RECS> matches.&nbsp; If you did not find the subject you were looking for, try narrowing your search by including additional information such as any state or city that the subject lived in.
	</p>
	<p></p>
</div>
<br/>
<TMPL_ELSE>
<TMPL_IF NAME="RI_STATE_RESTRICTIONS">
<br/>
<div id="resultsError">
	<p><img src="<TMPL_VAR NAME=IMGPATH>/ico_results_alert.gif" alt="" width="20" height="20" />
        Due to State restrictions, RI records have not been included in your results.
	</p>
	<p></p>
</div>
<br/>
<TMPL_ELSE>
<TMPL_IF NAME="SEARCH_INFO_MESSAGE">
  <TMPL_UNLESS NAME="RESULTS">
    <div id="resultsError">
     <TMPL_VAR NAME="SEARCH_INFO_MESSAGE">
    </div>
  </TMPL_UNLESS>
  <br/>
</TMPL_IF>
</TMPL_IF>
</TMPL_IF>
</TMPL_IF>
</TMPL_IF>
</TMPL_IF>
</TMPL_IF>

<div id="glbdppaTable">
  <p style="margin-top:1px;"><b><TMPL_IF NAME="DYNAMIC_GLB_DPPA"><a href="javascript:show_post_popup('SEARCH/SHOW_GLB_CLOSE','GLBwin','','',1,1,1,1,1,0);">Your DPPA Permissible Use</a>:</b>&nbsp;<span name="dppa_reason" id="dppa_reason"><script>document.write(dppa_value);</script></span><TMPL_ELSE>Your DPPA Permissible Use:</b>&nbsp;<script>document.write(dppa_value);</script></TMPL_IF></p>
  <p style="margin-top:1px;"><b><TMPL_IF NAME="DYNAMIC_GLB_DPPA"><a href="javascript:show_post_popup('SEARCH/SHOW_GLB_CLOSE','GLBwin','','',1,1,1,1,1,0);">Your GLBA Permissible Use</a>:</b>&nbsp;<span name="glb_reason" id="glb_reason"><script>document.write(glb_purpose_value);</script></span><TMPL_ELSE>Your GLBA Permissible Use:</b>&nbsp;<script>document.write(glb_purpose_value);</script></TMPL_IF></p>
  <p style="margin-top:1px;"><b><TMPL_IF NAME="DYNAMIC_GLB_DPPA"><a href="javascript:show_post_popup('SEARCH/SHOW_DMF_CLOSE','GLBwin','','',1,1,1,1,1,0);">Your DMF Permissible Use</a>:</b>&nbsp;<span name="dmf_reason" id="dmf_reason"><script>document.write(dmf_purpose_value);</script></span><TMPL_ELSE>Your DMF Permissible Use:</b>&nbsp;<script>document.write(dmf_purpose_value);</script></TMPL_IF></p>
  <TMPL_IF FCRA_MODE>
  <p style="margin-top:1px;"><b><TMPL_IF NAME="DYNAMIC_GLB_DPPA"><a href="javascript:show_post_popup('SEARCH/SHOW_FCRA_CLOSE','DPPAwin','','',1,1,1,1,1,0);">Your FCRA Permissible Use</a>:</b>&nbsp;<span name="fcra_reason" id="fcra_reason"><script>document.write(fcra_value);</script></span><TMPL_ELSE>Your FCRA Permissible Use:</b>&nbsp;<script>document.write(fcra_value);</script></TMPL_IF></p>
  </TMPL_IF>
</div>

<script language="Javascript" type="text/javascript">
set_search_focus();
</script>
<!-- end search footer -->
