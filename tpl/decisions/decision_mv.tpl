<!-- END decision_mv.tpl -->
<table border="0" cellpadding="0" cellspacing="0" width="250">
  <tr>
    <td class="style2" valign="top" NOWRAP width="250">
	<TMPL_UNLESS DISABLE_MV>
    <a href="javascript:setevent('WS_SEARCH/SEARCH_DL_REG');submitevent();window.close();"><script>write_image('motor_vehicles_pull');</script>&nbsp;MOTOR VEHICLES SEARCH</a><br>
	</TMPL_UNLESS>

	<TMPL_UNLESS DISABLE_ACCIDENT>
    <a href="javascript:setevent('SEARCH/SEARCH_ACCIDENT');submitevent();window.close();"><script>write_image('accidents_pull');</script>&nbsp;FLORIDA ACCIDENTS</a><br>
	</TMPL_UNLESS>

	<TMPL_UNLESS HIDE_RT_MVR>
	<TMPL_UNLESS DISABLE_RT_MVR>
        <a href="javascript:setevent('SEARCH/SEARCH_RT_MVR');submitevent();window.close();"><script>write_image('rt_mvr_pull');</script>&nbsp;REAL-TIME MOTOR VEHICLE REGISTRATIONS</a><br>
	</TMPL_UNLESS>
	</TMPL_UNLESS>

	<TMPL_IF DISABLE_RT_MVR>
	  <TMPL_IF DISABLE_MV>
	      <TMPL_IF DISABLE_ACCIDENT>
	      <TMPL_IF DISABLE_MV_WILDCARD>
    	<a class="unifont1" href="javascript:window.close();"><b><li>No Searches Available</b></a><br>
	      </TMPL_IF>
	      </TMPL_IF>
	  </TMPL_IF>
	</TMPL_IF>
    </td>
  </tr>	  
</table>
<!-- END decision_mv.tpl -->
