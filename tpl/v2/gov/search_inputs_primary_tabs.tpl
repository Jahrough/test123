<!-- begin v2/gov/search_inputs_primary_tabs.tpl -->

<div id="tabs">
	<ul id="tablist" >

    <TMPL_UNLESS DA_ONLY>
	<li <TMPL_IF NAME=IM_ON_MYACCURINT>class="active"</TMPL_IF> ><a href="javascript:myacc('<TMPL_VAR MYA_1_EVT>');" onMouseOver='show_upper_tab_layer(this,"listMyAccurint");$("listMyAccurint").style.left = findPos(this) + "px";' onMouseOut='hide_upper_tab_layer("listMyAccurint");'>My Accurint</a></li>
    </TMPL_UNLESS>

	<li <TMPL_IF NAME=IM_ON_SEARCH>class="active"</TMPL_IF> ><a href="javascript:pm_tab('SEARCH/SHOW_ADV');" onMouseOver='show_upper_tab_layer(this,"listPeopleSearches");$("listPeopleSearches").style.left = findPos(this) + "px";' onMouseOut='hide_upper_tab_layer("listPeopleSearches");'>People</a></li>

	<li <TMPL_IF NAME=IM_ON_BUS_SEARCH>class="active"</TMPL_IF> ><a trackid="tab_business" href="javascript:pm_tab('SEARCH/SHOW_BUS');" onMouseOver='show_upper_tab_layer(this,"listBusSearches");$("listBusSearches").style.left = findPos(this) + "px";' onMouseOut='hide_upper_tab_layer("listBusSearches");'>Business</a></li>

	<li <TMPL_IF NAME=IM_ON_ASSET_SEARCH>class="active"</TMPL_IF> ><a trackid="tab_assets" href="javascript:pm_tab('WS_SEARCH/SHOW_DL_REG');" onMouseOver='show_upper_tab_layer(this,"listAssetSearches");$("listAssetSearches").style.left = findPos(this) + "px";' onMouseOut='hide_upper_tab_layer("listAssetSearches");'>Assets</a></li>

	 <li <TMPL_IF NAME=IM_ON_LICENSE_SEARCH>class="active"</TMPL_IF> ><a trackid="tab_licenses" href="javascript:pm_tab('WS_SEARCH/SHOW_LICENSE');" onMouseOver='show_upper_tab_layer(this,"listLicenseSearches");$("listLicenseSearches").style.left = findPos(this) + "px";' onMouseOut='hide_upper_tab_layer("listLicenseSearches");'>Licenses</a></li>

	<li <TMPL_IF NAME=IM_ON_LEGAL_SEARCH>class="active"</TMPL_IF> ><a trackid="tab_courts" href="javascript:pm_tab('SEARCH/SHOW_CRIM');" onMouseOver='show_upper_tab_layer(this,"listLegalSearches");$("listLegalSearches").style.left = findPos(this) + "px";' onMouseOut='hide_upper_tab_layer("listLegalSearches");'>Courts</a></li>

	<li <TMPL_IF NAME=IM_ON_DA_SEARCH>class="active"</TMPL_IF> ><a trackid="tab_phones" href="javascript:pm_tab('SEARCH/<TMPL_IF DELETE_CUSTOM_DA_WIRELESS>SHOW_DA_BASIC<TMPL_ELSE>SHOW_DA_WIRELESS</TMPL_IF>');" onMouseOver='show_upper_tab_layer(this,"listPhoneSearches");$("listPhoneSearches").style.left = findPos(this) + "px";' onMouseOut='hide_upper_tab_layer("listPhoneSearches");'>Phones</a></li>

        <TMPL_UNLESS DELETE_HEALTHCARE_HEADING>
          <TMPL_UNLESS DELETE_CUSTOM_PROVIDER>
                <li <TMPL_IF NAME=IM_ON_HEALTH_CARE_SEARCH>class="active"</TMPL_IF> ><a trackid="tab_courts" href="javascript:pm_tab('SEARCH/SHOW_PROVIDER');" onMouseOver='show_upper_tab_layer(this,"listHealthcareSearches");$("listHealthcareSearches").style.left = findPos(this) + "px";' onMouseOut='hide_upper_tab_layer("listHealthcareSearches");'>Health Care</a></li>
          <TMPL_ELSE>
            <TMPL_UNLESS DELETE_CUSTOM_SANCTION>
                  <li <TMPL_IF NAME=IM_ON_HEALTH_CARE_SEARCH>class="active"</TMPL_IF> ><a trackid="tab_courts" href="javascript:pm_tab('SEARCH/SHOW_SANCTION');" onMouseOver='show_upper_tab_layer(this,"listHealthcareSearches");$("listHealthcareSearches").style.left = findPos(this) + "px";' onMouseOut='hide_upper_tab_layer("listHealthcareSearches");'>Health Care</a></li>
            <TMPL_ELSE>
              <TMPL_UNLESS DELETE_IND_QUALIFIER_REPORTS>
                  <li <TMPL_IF NAME=IM_ON_HEALTH_CARE_SEARCH>class="active"</TMPL_IF> ><a trackid="tab_courts" href="javascript:pm_tab('SEARCH/SHOW_IND_QUALIFIER');" onMouseOver='show_upper_tab_layer(this,"listHealthcareSearches");$("listHealthcareSearches").style.left = findPos(this) + "px";' onMouseOut='hide_upper_tab_layer("listHealthcareSearches");'>Health Care</a></li>
                <TMPL_ELSE>
                  <TMPL_UNLESS DELETE_BUS_QUALIFIER_REPORTS>
                    <li <TMPL_IF NAME=IM_ON_HEALTH_CARE_SEARCH>class="active"</TMPL_IF> ><a trackid="tab_courts" href="javascript:pm_tab('SEARCH/SHOW_BUS_QUALIFIER');" onMouseOver='show_upper_tab_layer(this,"listHealthcareSearches");$("listHealthcareSearches").style.left = findPos(this) + "px";' onMouseOut='hide_upper_tab_layer("listHealthcareSearches");'>Health Care</a></li>
                  <TMPL_ELSE>
                      <TMPL_UNLESS DELETE_CUSTOM_OABMS>
                        <li <TMPL_IF NAME=IM_ON_HEALTH_CARE_SEARCH>class="active"</TMPL_IF> ><a trackid="tab_courts" href="javascript:pm_tab('SEARCH2/SHOW_OABMS');" onMouseOver='show_upper_tab_layer(this,"listHealthcareSearches");$("listHealthcareSearches").style.left = findPos(this) + "px";' onMouseOut='hide_upper_tab_layer("listHealthcareSearches");'>Health Care</a></li>
                      <TMPL_ELSE>
                        <TMPL_UNLESS DELETE_CUSTOM_NPI_SEARCH>
                          <li <TMPL_IF NAME=IM_ON_HEALTH_CARE_SEARCH>class="active"</TMPL_IF> ><a trackid="tab_courts" href="javascript:pm_tab('SEARCH/SHOW_NPI');" onMouseOver='show_upper_tab_layer(this,"listHealthcareSearches");$("listHealthcareSearches").style.left = findPos(this) + "px";' onMouseOut='hide_upper_tab_layer("listHealthcareSearches");'>Health Care</a></li>
                        <TMPL_ELSE>
                          <TMPL_UNLESS DELETE_CUSTOM_CLIA_SEARCH>
                            <li <TMPL_IF NAME=IM_ON_HEALTH_CARE_SEARCH>class="active"</TMPL_IF> ><a trackid="tab_courts" href="javascript:pm_tab('SEARCH/SHOW_CLIA');" onMouseOver='show_upper_tab_layer(this,"listHealthcareSearches");$("listHealthcareSearches").style.left = findPos(this) + "px";' onMouseOut='hide_upper_tab_layer("listHealthcareSearches");'>Health Care</a></li>
                          <TMPL_ELSE>
                            <li <TMPL_IF NAME=IM_ON_HEALTH_CARE_SEARCH>class="active"</TMPL_IF> ><a trackid="tab_courts" href="javascript:pm_tab('SEARCH/SHOW_PROVIDER');" onMouseOver='show_upper_tab_layer(this,"listHealthcareSearches");$("listHealthcareSearches").style.left = findPos(this) + "px";' onMouseOut='hide_upper_tab_layer("listHealthcareSearches");'>Health Care</a></li>
                          </TMPL_UNLESS>
                        </TMPL_UNLESS>
                      </TMPL_UNLESS>
                  </TMPL_UNLESS>
              </TMPL_UNLESS>
            </TMPL_UNLESS>
          </TMPL_UNLESS>
        </TMPL_UNLESS>

        <TMPL_UNLESS DELETE_TRIMERGE_REPORT>
			<TMPL_IF SHOW_TRIMERGE_REPORTS_ESP>
          		<li id="fcraTab">
          			<a trackid="tab_fcra"<TMPL_UNLESS OFFLINE_TRIMERGE_REPORT> href="javascript:show_post_popup('SEARCH/SHOW_TRIMERGE_ESP','TrimergeESPShow',800,800,0,0,0,1,1,0);"</TMPL_UNLESS> onMouseOver='show_upper_tab_layer(this,"fcraSearches");$("fcraSearches").style.left = findPos(this) + "px";' onMouseOut='hide_upper_tab_layer("fcraSearches");'>
          				FCRA Gateway
          			</a>
          		</li>
			<TMPL_ELSE>
          		<li id="fcraTab">
          			<a trackid="tab_fcra"<TMPL_UNLESS OFFLINE_TRIMERGE_REPORT> href="javascript:show_post_popup('TM/SHOW','TrimergeReport',800,722,0,0,0,1,1,0,'<TMPL_VAR ACTION_REPORT>');"</TMPL_UNLESS> onMouseOver='show_upper_tab_layer(this,"fcraSearches");$("fcraSearches").style.left = findPos(this) + "px";' onMouseOut='hide_upper_tab_layer("fcraSearches");'>
          				FCRA Gateway
          			</a>
          		</li>
			</TMPL_IF>
        </TMPL_UNLESS>
     <TMPL_IF SHOW_IDM_ANALYSIS_SECTION>
       <TMPL_IF SHOW_IDM_VISUALIZATION>
       <li id="visualizationTab">
         <a trackid="tab_analysis" href="javascript:show_post_popup('SEARCH/SHOW_IDM_VISUALIZATION','IDMVisualizationWin',800,722,0,0,0,1,1,0);" onMouseOver='show_upper_tab_layer(this,"analysisSearches");$("analysisSearches").style.left = findPos(this) + "px";' onMouseOut='hide_upper_tab_layer("analysisSearches");'>Analytics</a>
       </li>
       </TMPL_IF>
     </TMPL_IF>
  </ul>
</div>

