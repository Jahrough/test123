<!-- begin search footer -->
<div id="searchResults">
	<TMPL_INCLUDE NAME="search_terms_echo.tpl">
	<TMPL_VAR NAME="RESULTS">

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
<TMPL_IF NAME="SEARCH_ERROR_MESSAGE">
<br/>
<div id="printResults" style="float:right">
         <p><img src="<TMPL_VAR NAME=IMGPATH>/icon_print.gif" alt="" width="24" height="11" /><a href="javascript:print_results('<TMPL_VAR NAME=CSSPATH>','<TMPL_VAR NAME=IMGPATH>/<TMPL_VAR NAME=APPLICATION_TYPE>');"><font style="font-size:61%" bold color="#CC3300"><b>Print Results</b></font></a>&nbsp;&nbsp;&nbsp;
</div>
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

<div id="glbdppaTable">
  <p style="margin-top:1px;"><b><TMPL_IF NAME="DYNAMIC_GLB_DPPA"><a href="javascript:show_post_popup('SEARCH/SHOW_DPPA_CLOSE','DPPAwin','','',1,1,1,1,1,0);">Your DPPA Permissible Use</a>:</b>&nbsp;<span name="dppa_reason" id="dppa_reason"><script>document.write(dppa_value);</script></span><TMPL_ELSE>Your DPPA Permissible Use:</b>&nbsp;<script>document.write(dppa_value);</script></TMPL_IF></p>
  <p style="margin-top:1px;"><b><TMPL_IF NAME="DYNAMIC_GLB_DPPA"><a href="javascript:show_post_popup('SEARCH/SHOW_GLB_CLOSE','GLBwin','','',1,1,1,1,1,0);">Your GLBA Permissible Use</a>:</b>&nbsp;<span name="glb_reason" id="glb_reason"><script>document.write(glb_purpose_value);</script></span><TMPL_ELSE>Your GLBA Permissible Use:</b>&nbsp;<script>document.write(glb_purpose_value);</script></TMPL_IF></p>
  <p style="margin-top:1px;"><b><TMPL_IF NAME="DYNAMIC_GLB_DPPA"><a href="javascript:show_post_popup('SEARCH/SHOW_DMF_CLOSE','GLBwin','','',1,1,1,1,1,0);">Your DMF Permissible Use</a>:</b>&nbsp;<span name="dmf_reason" id="dmf_reason"><script>document.write(dmf_purpose_value);</script></span><TMPL_ELSE>Your DMF Permissible Use:</b>&nbsp;<script>document.write(dmf_purpose_value);</script></TMPL_IF></p>
</div>

<script language="Javascript" type="text/javascript">
set_search_focus();
</script>
<!-- end search footer -->
