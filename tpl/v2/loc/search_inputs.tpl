<!-- begin min/search_inputs.tpl -->

<div id="tabs">
        <ul id="tablist">

         <li class="<TMPL_IF IM_ON_SEARCH>active</TMPL_IF>"><a trackid="tab_person" href="javascript:send_event('SEARCH/SHOW_SEARCH');">Find Person</a></li>

         <li class="<TMPL_IF IM_ON_BUS_SEARCH>active</TMPL_IF>"><a trackid="tab_business" href="javascript:send_event('SEARCH/SHOW_BUS');">Find Business</a></li>

         <li class="<TMPL_IF IM_ON_DA_SEARCH>active</TMPL_IF>"><a trackid="tab_phones" href="javascript:send_event('SEARCH/SHOW_DA_BASIC');">Find Phone</a></li>

        </ul>
</div>


<div id="tabBkg">
  <div id="tabBkgRight">

  <!-- Include the min Search Input form for the search -->
  <TMPL_INCLUDE NAME="search_inputs_search_form.tpl">

</div>
</div>
<div id="tabBotR"><div id="tabBotL"></div></div>
<p>&nbsp;</p>


<!-- end min/search_inputs.tpl -->
