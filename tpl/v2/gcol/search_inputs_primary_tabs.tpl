<div id="workStream">
<TMPL_IF FCRA_MODE>Decisioning<TMPL_ELSE>Contact &amp; Locate</TMPL_IF>
</div>
<div id="tabs">
	<ul id="tablist" >

            <TMPL_UNLESS NAME="FCRA_MODE">
	    <li <TMPL_IF NAME=IM_ON_SEARCH>class="active"</TMPL_IF> ><a href="javascript:pm_tab('SEARCH/SHOW_SEARCH');" onMouseOver='show_upper_tab_layer(this,"listPeopleSearches");$("listPeopleSearches").style.left = findPos(this) + "px";' onMouseOut='hide_upper_tab_layer("listPeopleSearches");'>People</a></li>

	    <li <TMPL_IF NAME=IM_ON_BUS_SEARCH>class="active"</TMPL_IF> ><a href="javascript:pm_tab('SEARCH/SHOW_BUS');" onMouseOver='show_upper_tab_layer(this,"listBusSearches");$("listBusSearches").style.left = findPos(this) + "px";' onMouseOut='hide_upper_tab_layer("listBusSearches");'>Business</a></li>

	    <li <TMPL_IF NAME=IM_ON_DA_SEARCH>class="active"</TMPL_IF> ><a href="javascript:pm_tab('SEARCH/SHOW_DA_WIRELESS');" onMouseOver='show_upper_tab_layer(this,"listPhoneSearches");$("listPhoneSearches").style.left = findPos(this) + "px";' onMouseOut='hide_upper_tab_layer("listPhoneSearches");'>Phones</a></li>
	    <li class="toggle"><a href="javascript:pm_tab('SEARCH2/SHOW_FCRA_BANKRUPTCY');" onMouseOver='show_upper_tab_layer(this,"listFCRASearches");$("listFCRASearches").style.left = findPos(this) + "px";' onMouseOut='hide_upper_tab_layer("listFCRASearches");'>Decisioning</a></li>
       

<!-- new tab for Analytics here, can never be active; hover-click only -->
       <TMPL_IF SHOW_BIZ_ANALYTICS>
            <li><a onMouseOver='show_upper_tab_layer(this,"listAnalyticsSearches");$("listAnalyticsSearches").style.left = findPos(this) + "px";' onMouseOut='hide_upper_tab_layer("listAnalyticsSearches");'>Analytics</a></li>
       </TMPL_IF>




            <TMPL_ELSE>

	    <li <TMPL_IF NAME=IM_ON_LEGAL_SEARCH>class="active"</TMPL_IF> ><a href="javascript:pm_tab('SEARCH2/SHOW_FCRA_BANKRUPTCY');" onMouseOver='show_upper_tab_layer(this,"listLegalSearches");$("listLegalSearches").style.left = findPos(this) + "px";' onMouseOut='hide_upper_tab_layer("listLegalSearches");'>People &amp; Courts</a></li>
	    <li <TMPL_IF NAME=IM_ON_ASSET_SEARCH>class="active"</TMPL_IF> ><a href="javascript:pm_tab('SEARCH/SHOW_FCRA_REAL_PROPERTY');" onMouseOver='show_upper_tab_layer(this,"listAssetSearches");$("listAssetSearches").style.left = findPos(this) + "px";' onMouseOut='hide_upper_tab_layer("listAssetSearches");'>Assets</a></li>
	    <li <TMPL_IF NAME=IM_ON_LICENSE_SEARCH>class="active"</TMPL_IF> ><a href="javascript:pm_tab('SEARCH/SHOW_FCRA_HUNTING_LICENSE');" onMouseOver='show_upper_tab_layer(this,"listLicenseSearches");$("listLicenseSearches").style.left = findPos(this) + "px";' onMouseOut='hide_upper_tab_layer("listLicenseSearches");'>Licenses</a></li>

	    <li class="toggle"><a href="javascript:pm_tab('SEARCH/SHOW_SEARCH');" onMouseOver='show_upper_tab_layer(this,"listNonFCRASearches");$("listNonFCRASearches").style.left = findPos(this) + "px";' onMouseOut='hide_upper_tab_layer("listNonFCRASearches");'>Contact & Locate</a></li>
       
<!-- new tab for Analytics here, can never be active; hover-click only -->
       <TMPL_IF SHOW_BIZ_ANALYTICS>
            <li><a onMouseOver='show_upper_tab_layer(this,"listAnalyticsSearches");$("listAnalyticsSearches").style.left = findPos(this) + "px";' onMouseOut='hide_upper_tab_layer("listAnalyticsSearches");'>Analytics</a></li>
       </TMPL_IF>

            </TMPL_UNLESS>
	    

	</ul>
</div>
