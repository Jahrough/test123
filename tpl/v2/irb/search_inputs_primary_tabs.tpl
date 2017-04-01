<div id="tabs">
	<ul id="tablist" >

	<TMPL_UNLESS DA_ONLY>
	    <li <TMPL_IF NAME=IM_ON_MYACCURINT>class="active"</TMPL_IF> ><a href="javascript:myacc('<TMPL_VAR MYA_1_EVT>');" onMouseOver='show_upper_tab_layer(this,"listMyAccurint");$("listMyAccurint").style.left = findPos(this) + "px";' onMouseOut='hide_upper_tab_layer("listMyAccurint");'>My Favorites</a></li>
	</TMPL_UNLESS>

	    <li <TMPL_IF NAME=IM_ON_SEARCH>class="active"</TMPL_IF> ><a trackid="tab_person" href="javascript:pm_tab('SEARCH/SHOW_SEARCH');" onMouseOver='show_upper_tab_layer(this,"listPeopleSearches");$("listPeopleSearches").style.left = findPos(this) + "px";' onMouseOut='hide_upper_tab_layer("listPeopleSearches");'>People</a></li>

	    <li <TMPL_IF NAME=IM_ON_DA_SEARCH>class="active"</TMPL_IF> ><a trackid="tab_phones" href="javascript:pm_tab('SEARCH/SHOW_DA_WIRELESS');" onMouseOver='show_upper_tab_layer(this,"listPhoneSearches");$("listPhoneSearches").style.left = findPos(this) + "px";' onMouseOut='hide_upper_tab_layer("listPhoneSearches");'>Phones</a></li>

	    <li <TMPL_IF NAME=IM_ON_BUS_SEARCH>class="active"</TMPL_IF> ><a trackid="tab_business" href="javascript:pm_tab('SEARCH/SHOW_BUS');" onMouseOver='show_upper_tab_layer(this,"listBusSearches");$("listBusSearches").style.left = findPos(this) + "px";' onMouseOut='hide_upper_tab_layer("listBusSearches");'>Business</a></li>

	    <li <TMPL_IF NAME=IM_ON_ASSET_SEARCH>class="active"</TMPL_IF> ><a trackid="tab_assets" href="javascript:pm_tab('WS_SEARCH/SHOW_DL_REG');" onMouseOver='show_upper_tab_layer(this,"listAssetSearches");$("listAssetSearches").style.left = findPos(this) + "px";' onMouseOut='hide_upper_tab_layer("listAssetSearches");'>Assets</a></li>

	    <li <TMPL_IF NAME=IM_ON_LICENSE_SEARCH>class="active"</TMPL_IF> ><a trackid="tab_licenses" href="javascript:pm_tab('WS_SEARCH/SHOW_LICENSE');" onMouseOver='show_upper_tab_layer(this,"listLicenseSearches");$("listLicenseSearches").style.left = findPos(this) + "px";' onMouseOut='hide_upper_tab_layer("listLicenseSearches");'>Licenses</a></li>

	    <li <TMPL_IF NAME=IM_ON_LEGAL_SEARCH>class="active"</TMPL_IF> ><a trackid="tab_courts" href="javascript:pm_tab('SEARCH/SHOW_BANKRUPTCY');" onMouseOver='show_upper_tab_layer(this,"listLegalSearches");$("listLegalSearches").style.left = findPos(this) + "px";' onMouseOut='hide_upper_tab_layer("listLegalSearches");'>Courts</a></li>

	</ul>
</div>
