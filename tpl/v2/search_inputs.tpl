<!-- begin search_inputs.tpl -->

  <TMPL_INCLUDE NAME="search_inputs_primary_tabs.tpl">

<!-- OPEN THE DIV NOW -->
<div id="tabBkg">
  <div id="tabBkgRight">

    <!--Start Sub Secondary Tab Navigation -->

  <TMPL_INCLUDE NAME="search_inputs_secondary_tabs.tpl">


<!-- Include the Search Input form for the search -->
  <TMPL_IF NAME="SHOW_MYACC_APPRISS">
  <TMPL_INCLUDE NAME="search_myacc_appriss.tpl">
  <TMPL_ELSE>
  <TMPL_INCLUDE NAME="search_inputs_search_form.tpl">
  </TMPL_IF>

</div>
</div>
<div id="tabBotR"><div id="tabBotL"></div></div>
<p>&nbsp;</p>


<!-- end search_inputs.tpl -->
