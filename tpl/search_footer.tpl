<!-- begin search footer -->
<TMPL_UNLESS RESULTS_TEXT>
    <TMPL_INCLUDE NAME="search_terms_echo.tpl">
</TMPL_UNLESS>

<table width="790" border="0" cellpadding="0" cellspacing="0">
  <tr>
    <td class="smallfont1" align="left"><b><TMPL_IF NAME="DYNAMIC_GLB_DPPA"><a href="javascript:show_post_popup('SEARCH/SHOW_DPPA_CLOSE','DPPAwin','','',1,1,1,1,1,0);">Your DPPA Permissible Use</a>:</b>&nbsp; <span name="dppa_reason" id="dppa_reason"><script>document.write(dppa_value);</script></span><TMPL_ELSE>Your DPPA Permissible Use:</b>&nbsp; <script>document.write(dppa_value);</script></TMPL_IF></td>
  </tr>
  <tr>
    <td class="smallfont1" align="left"><b><TMPL_IF NAME="DYNAMIC_GLB_DPPA"><a href="javascript:show_post_popup('SEARCH/SHOW_GLB_CLOSE','GLBwin','','',1,1,1,1,1,0);">Your GLBA Permissible Use</a>:</b>&nbsp; <span name="glb_reason" id="glb_reason"><script>document.write(glb_purpose_value);</script></span><TMPL_ELSE>Your GLBA Permissible Use:</b>&nbsp; <script>document.write(glb_purpose_value);</script></TMPL_IF></td>
  </tr>
  <tr>
    <td class="smallfont1" align="left"><b><TMPL_IF NAME="DYNAMIC_GLB_DPPA"><a href="javascript:show_post_popup('SEARCH/SHOW_DMF_CLOSE','GLBwin','','',1,1,1,1,1,0);">Your DMF Permissible Use</a>:</b>&nbsp; <span name="dmf_reason" id="dmf_reason"><script>document.write(dmf_purpose_value);</script></span><TMPL_ELSE>Your DMF Permissible Use:</b>&nbsp; <script>document.write(dmf_purpose_value);</script></TMPL_IF></td>
  </tr>
  <TMPL_IF NAME="ENABLE_SOURCE_DOCS_INFO">
    <tr>
	<td class="smallfont1" align="left"><b>*View Sources:&nbsp;</b>The number of source documents used is approximate. 
	</td>
    </tr>
  </TMPL_IF>
</table>

<TMPL_IF NAME="SEARCH_UNAVAILABLE">
<table cellpadding="5" cellspacing="0" border="1" width="450">
  <tr>
    <td>
    <table cellpadding="0" cellspacing="0" border="0">
      <tr>
        <td class="unifont1" align="center">
        <span class="searchmessageunavail">This search is currently unavailable.  Please try again later.</span>
        </td>
      </tr>
    </table>
    </td>
  </tr>
</table>
<TMPL_ELSE>
<TMPL_IF NAME="CFG_FORCE_DISABLED">
<table cellpadding="5" cellspacing="0" border="1" width="450">
  <tr>
    <td>
    <table cellpadding="0" cellspacing="0" border="0">
      <tr>
        <td class="unifont1" align="center">
        <span class="searchmessageunavail"><TMPL_VAR NAME="CFG_FORCE_DISABLED"></span>
        </td>
      </tr>
    </table>
    </td>
  </tr>
</table>
<TMPL_ELSE>
<TMPL_IF NAME="SEARCH_DISABLED">
<table cellpadding="5" cellspacing="0" border="1" width="450">
  <tr>
    <td>
    <table cellpadding="0" cellspacing="0" border="0">
      <tr>
        <td class="unifont1" align="center">
        <span class="searchmessageunavail">
	      <TMPL_IF NAME="BUS_INSTANT_ID_REPORT">
            Our Business Instant ID Search has been disabled for all customers. We
            apologize for any inconvenience. The search will be available shortly.
        <TMPL_ELSE>
            This search is currently not available to you.  Please contact your administrator if this is in error or if you would like access.
        </TMPL_IF>
        </span>
        </td>
      </tr>
    </table>
    </td>
  </tr>
</table>
<TMPL_ELSE>
<TMPL_IF NAME="MORE_THAN_MAX_SUBJ_BK">
<table cellpadding="5" cellspacing="0" border="1" width="450">
  <tr>
    <td>
    <table cellpadding="0" cellspacing="0" border="0">
      <tr>
        <td class="unifont1" align="center">
        <span class="searchmessagetoomany">The search you have requested resulted in too many matches.&nbsp; Try narrowing your search by including additional information such as any state or city that the subject lived in.</span>
        </td>
      </tr>
    </table>
    </td>
  </tr>
</table>
<TMPL_ELSE>
<TMPL_IF NAME="MORE_THAN_MAX_SUBJ">
<table cellpadding="5" cellspacing="0" border="1" width="450">
  <tr>
    <td>
    <table cellpadding="0" cellspacing="0" border="0">
      <tr>
        <td class="unifont1" align="center">
        <span class="searchmessagetoomany">The search you have requested resulted in over <TMPL_VAR NAME=MAX_RECS> matches.&nbsp; If you did not find the subject you were looking for, try narrowing your search by including additional information such as any state or city that the subject lived in.</span>
        </td>
      </tr>
    </table>
    </td>
  </tr>
</table>
</TMPL_IF>
</TMPL_IF>
</TMPL_IF>
</TMPL_IF>
</TMPL_IF>
<br>&nbsp;

<script language="Javascript" type="text/javascript">
set_search_focus();
</script>

<!-- end search footer -->
