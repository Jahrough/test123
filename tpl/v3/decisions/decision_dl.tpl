<!-- END decision_dl.tpl -->
<table border="0" cellpadding="0" cellspacing="0" width="250">
  <tr>
     <td valign="top" id="searchPop">
     <TMPL_IF FCOL_TCOL>
     <div style="margin-left: 20px;"><strong>NON-FCRA Searches</strong></div>
     </TMPL_IF>
     <ul>
  <TMPL_UNLESS DO_NOT_DISPLAY_COMBINED_MVR>
	<TMPL_UNLESS DISABLE_COMBINED_MVR>
	<TMPL_UNLESS MVSEARCH_CAP_MET>
		<li><a href="javascript:setevent('SEARCH2/SEARCH_COMBINED_MVR_MV');submitevent();window.close();">Advanced Motor Vehicles</a></li>
	</TMPL_UNLESS>
	</TMPL_UNLESS>
  </TMPL_UNLESS>

  <TMPL_UNLESS DO_NOT_DISPLAY_MV>
  <TMPL_UNLESS HIDE_MV>
	<TMPL_UNLESS DISABLE_MV>
	<TMPL_UNLESS MVSEARCH_CAP_MET>
		<li><a href="javascript:setevent('WS_SEARCH/SEARCH_DL_REG');submitevent();window.close();">Motor Vehicles</a></li>
	</TMPL_UNLESS>
	</TMPL_UNLESS>
  </TMPL_UNLESS>
  </TMPL_UNLESS>

	<TMPL_UNLESS DISABLE_DL>
		<li><a href="javascript:setevent('SEARCH/SEARCH_LICENSE');submitevent();window.close();"><span id="driver_licenses"></span></a></li>
	</TMPL_UNLESS>

	<TMPL_UNLESS DISABLE_ACCIDENT>
		<TMPL_IF NAME="NAT_ACC_ENABLE">
			<li><a href="javascript:setevent('SEARCH/SHOW_ACCIDENT');submitevent();window.close();">National Motor Vehicle Accidents</a></li>
		<TMPL_ELSE>
	    	<li><a href="javascript:setevent('SEARCH/SEARCH_ACCIDENT');submitevent();window.close();">Florida Accidents</a></li>
	   	</TMPL_IF>
	</TMPL_UNLESS>

	<TMPL_IF DISABLE_MV>
	  <TMPL_IF DISABLE_DL>
	    <TMPL_IF DISABLE_ACCIDENT>
	    <TMPL_IF MVSEARCH_CAP_MET>
    	<a class="unifont1" href="javascript:window.close();"><b><li>No Searches Available</b></a></li>
	      </TMPL_IF>
	    </TMPL_IF>
	  </TMPL_IF>
	</TMPL_IF>
	</ul>
    </td>
  </tr>
</table>
<script>get_search_labels();</script>
<!-- END decision_dl.tpl -->

