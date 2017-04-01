<!-- BEGIN v2/decisions/decision_aircraft $ -->
<table border="0" cellpadding="0" cellspacing="0" width="250">
  <thead style="display: none">
    <tr>
      <th aria-label="Menu">&nbsp;</th>
    </tr>
  </thead>
  <tr>
     <td valign="top" id="searchPop">
     <ul>
      <TMPL_UNLESS DISABLE_AIRCRAFT>
      <li><a title="Search FAA Aircraft" href="javascript:setevent('SEARCH/SEARCH_AIRCRAFT');submitevent();window.close();">FAA AIRCRAFT</a></li>
      </TMPL_UNLESS>

      <TMPL_IF DISABLE_AIRCRAFT>
        <li><a title="Close this window" class="unifont1" href="javascript:window.close();"><strong>No Searches Available</strong></a></li>
      </TMPL_IF>
    </ul>
    </td>
  </tr>   
</table>
<!-- END v2/decisions/decision_aircraft $ -->
