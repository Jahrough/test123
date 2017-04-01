<!-- begin v2/hea/search_inputs_primary_tabs.tpl -->
<div id="tabs">
	<ul id="tablist" >

        <TMPL_UNLESS DA_ONLY>
            <li <TMPL_IF NAME=IM_ON_MYACCURINT>class="active"</TMPL_IF> ><a href="javascript:myacc('<TMPL_VAR MYA_1_EVT>');" onMouseOver='show_upper_tab_layer(this,"listMyAccurint");$("listMyAccurint").style.left = findPos(this) + "px";' onMouseOut='hide_upper_tab_layer("listMyAccurint");'>My Accurint</a></li>
        </TMPL_UNLESS>

        <li <TMPL_IF NAME=IM_ON_HEALTH_CARE_SEARCH>class="active"</TMPL_IF> ><a href="javascript:pm_tab('SEARCH/SHOW_PROVIDER');" onMouseOver='show_upper_tab_layer(this,"listHealthcareSearches");$("listHealthcareSearches").style.left = findPos(this) + "px";' onMouseOut='hide_upper_tab_layer("listHealthcareSearches");'>Health Care</a></li>

	<TMPL_UNLESS RESTRICT_LNLP_CONTENT><li <TMPL_IF NAME=IM_ON_NEWS_SEARCH>class="active"</TMPL_IF> ><a href="javascript:pm_tab('SEARCH/SHOW_NEWS');" onMouseOver='show_upper_tab_layer(this,"listNewsSearches");$("listNewsSearches").style.left = findPos(this) + "px";' onMouseOut='hide_upper_tab_layer("listNewsSearches");'>News</a></li></TMPL_UNLESS>

        <li <TMPL_IF NAME=IM_ON_SEARCH>class="active"</TMPL_IF> ><a href="javascript:pm_tab('SEARCH/SHOW_SEARCH');" onMouseOver='show_upper_tab_layer(this,"listPeopleSearches");$("listPeopleSearches").style.left = findPos(this) + "px";' onMouseOut='hide_upper_tab_layer("listPeopleSearches");'>People</a></li>

	<li <TMPL_IF NAME=IM_ON_BUS_SEARCH>class="active"</TMPL_IF> ><a href="javascript:pm_tab('SEARCH/SHOW_BUS');" onMouseOver='show_upper_tab_layer(this,"listBusSearches");$("listBusSearches").style.left = findPos(this) + "px";' onMouseOut='hide_upper_tab_layer("listBusSearches");'>Business</a></li>

	<li <TMPL_IF NAME=IM_ON_ASSET_SEARCH>class="active"</TMPL_IF> ><a href="javascript:pm_tab('SEARCH/SHOW_DL_REG');" onMouseOver='show_upper_tab_layer(this,"listAssetSearches");$("listAssetSearches").style.left = findPos(this) + "px";' onMouseOut='hide_upper_tab_layer("listAssetSearches");'>Assets</a></li>

	<li <TMPL_IF NAME=IM_ON_LICENSE_SEARCH>class="active"</TMPL_IF> ><a href="javascript:pm_tab('WS_SEARCH/SHOW_LICENSE');" onMouseOver='show_upper_tab_layer(this,"listLicenseSearches");$("listLicenseSearches").style.left = findPos(this) + "px";' onMouseOut='hide_upper_tab_layer("listLicenseSearches");'>Licenses</a></li>

	<li <TMPL_IF NAME=IM_ON_DA_SEARCH>class="active"</TMPL_IF> ><a href="javascript:pm_tab('SEARCH/SHOW_DA_WIRELESS');" onMouseOver='show_upper_tab_layer(this,"listPhoneSearches");$("listPhoneSearches").style.left = findPos(this) + "px";' onMouseOut='hide_upper_tab_layer("listPhoneSearches");'>Phones</a></li>

	<li <TMPL_IF NAME=IM_ON_LEGAL_SEARCH>class="active"</TMPL_IF> ><a href="javascript:pm_tab('SEARCH/SHOW_BANKRUPTCY');" onMouseOver='show_upper_tab_layer(this,"listLegalSearches");$("listLegalSearches").style.left = findPos(this) + "px";' onMouseOut='hide_upper_tab_layer("listLegalSearches");'>Courts</a></li>

  <TMPL_IF NAME=SHOW_IDM_ANALYSIS_SECTION>
    <TMPL_IF NAME=SHOW_IDM_VISUALIZATION>
      <li id="visualizationTab">
        <a trackid="tab_analysis" href="javascript:show_post_popup('SEARCH/SHOW_IDM_VISUALIZATION','IDMVisualizationWin',850,650,0,0,0,1,1,0);" onMouseOver='show_upper_tab_layer(this,"analysisSearches");$("analysisSearches").style.left = findPos(this) + "px";' onMouseOut='hide_upper_tab_layer("analysisSearches");'>Analytics</a>
      </li>
    </TMPL_IF>
  </TMPL_IF>

	</ul>
</div>
