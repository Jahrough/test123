<!-- END decision_mv.tpl -->
<table border="0" cellpadding="0" cellspacing="0" width="600">
  <tr>
    <td valign="top" id="searchPop" nowrap="nowrap">
     <TMPL_IF FCOL_TCOL>
     <div style="margin-left: 20px;"><strong>NON-FCRA Searches</strong></div>
     </TMPL_IF>
      <ul>
      <TMPL_UNLESS HIDE_MV>
      <TMPL_UNLESS DISABLE_MV>
      <TMPL_UNLESS MVSEARCH_CAP_MET>
        <li><a href="javascript:setevent('WS_SEARCH/SEARCH_DL_REG');submitevent();window.close();">Motor Vehicles</span></a></li>
      </TMPL_UNLESS>
      </TMPL_UNLESS>
      </TMPL_UNLESS>

      <TMPL_UNLESS DISABLE_ACCIDENT>
      <TMPL_IF NAME="NAT_ACC_ENABLE">
        <li><a href="javascript:setevent('SEARCH/SHOW_ACCIDENT');submitevent();window.close();">National Motor Vehicle Accidents</a></li>
      <TMPL_ELSE>
        <li><a href="javascript:setevent('SEARCH/SEARCH_ACCIDENT');submitevent();window.close();">Florida Accidents</a></li>
      </TMPL_IF>
      </TMPL_UNLESS>
      <TMPL_UNLESS HIDE_RT_MVR>
      <TMPL_UNLESS DISABLE_RT_MVR>
      <TMPL_UNLESS MVSEARCH_CAP_MET>
        <li><a href="javascript:setevent('SEARCH/SEARCH_RT_MVR');submitevent();window.close();"><span id="rt_mvr"></span></a></li>
      </TMPL_UNLESS>
      </TMPL_UNLESS>
      </TMPL_UNLESS>
      <TMPL_IF NAME="SHOW_EXTRA_VIN_OPTIONS">
        <TMPL_UNLESS HIDE_CARRIER_ID>
        <TMPL_UNLESS DISABLE_CARRIER_ID>
          <li><a href="javascript:setevent('SEARCH2/SHOW_CARRIER_ID');submitevent();window.close();"><span id="carrier_id"></span></a></li>
        </TMPL_UNLESS>
        </TMPL_UNLESS>
        <TMPL_UNLESS HIDE_CLAIMS_DISCOVERY_CONTRIBUTOR>
        <TMPL_UNLESS DISABLE_CLAIMS_DISCOVERY>
          <li><a href="javascript:setevent('SEARCH2/SHOW_CLAIMS_DISCOVERY');submitevent();window.close();"><span id="claims_disc"></span></a></li>
        </TMPL_UNLESS>
        </TMPL_UNLESS>
        <TMPL_UNLESS HIDE_CARRIER_DISCOVERY_CONTRIBUTOR>
        <TMPL_UNLESS DISABLE_CARRIER_DISCOVERY>
          <li><a href="javascript:setevent('SEARCH2/SHOW_CARRIER_DISCOVERY');submitevent();window.close();"><span id="carrier_disc"></span></a></li>
        </TMPL_UNLESS>
        </TMPL_UNLESS>
      </TMPL_IF>

      <TMPL_IF DISABLE_RT_MVR>
      <TMPL_IF DISABLE_MV>
      <TMPL_IF DISABLE_ACCIDENT>
      <TMPL_IF DISABLE_MV_WILDCARD>
      <TMPL_IF NAME="SHOW_EXTRA_VIN_OPTIONS">
        <TMPL_IF DISABLE_CARRIER_ID>
        <TMPL_IF DISABLE_CLAIMS_DISCOVERY>
        <TMPL_IF DISABLE_CARRIER_DISCOVERY>
      </TMPL_IF>
        <li><a class="unifont1" href="javascript:window.close();"><b>No Searches Available</b></a></li>
      <TMPL_IF NAME="SHOW_EXTRA_VIN_OPTIONS">
        </TMPL_IF>
        </TMPL_IF>
        </TMPL_IF>
      </TMPL_IF>
      </TMPL_IF>
      </TMPL_IF>
      </TMPL_IF>
      </TMPL_IF>
      </ul>
    </td>
  </tr>
</table>
<script>get_search_labels();</script>
<!-- END decision_mv.tpl -->
