<div id="left_qs" style="position:relative;">
<div id="workStream" style="position:absolute; top:23px;">
<TMPL_IF FCRA_MODE>Decisioning<TMPL_ELSE>Contact &amp; Locate</TMPL_IF>
</div>
</div>
<div id="right_qs">
<div style="">
    <TMPL_INCLUDE name="quick_search.tpl">
</div>
</div>
<div class="clear_class"></div>
<div id="tabs">
	<ul id="tablist" >

            <TMPL_UNLESS NAME="FCRA_MODE">
	    <li <TMPL_IF NAME=IM_ON_SEARCH>class="active"</TMPL_IF> ><a onMouseOver='show_upper_tab_layer(this,"listPeopleSearches");$("listPeopleSearches").style.left = findPos(this) + "px";' onMouseOut='hide_upper_tab_layer("listPeopleSearches");'>People</a></li>

	    <li <TMPL_IF NAME=IM_ON_BUS_SEARCH>class="active"</TMPL_IF> ><a onMouseOver='show_upper_tab_layer(this,"listBusSearches");$("listBusSearches").style.left = findPos(this) + "px";' onMouseOut='hide_upper_tab_layer("listBusSearches");'>Business</a></li>

	    <TMPL_UNLESS NAME="DO_NOT_DISPLAY_ALL_PHONES">
	        <li <TMPL_IF NAME=IM_ON_DA_SEARCH>class="active"</TMPL_IF> ><a onMouseOver='show_upper_tab_layer(this,"listPhoneSearches");$("listPhoneSearches").style.left = findPos(this) + "px";' onMouseOut='hide_upper_tab_layer("listPhoneSearches");'>Phones</a></li>
            </TMPL_UNLESS>
            <TMPL_UNLESS NAME="DO_NOT_DISPLAY_IRS_VERIFY">
                <TMPL_IF IRS_VERIFY_ONLY>
                    <li ><a onMouseOver='show_upper_tab_layer(this,"listVerification");$("listVerification").style.left = findPos(this) + "px";' onMouseOut='hide_upper_tab_layer("listVerification");'>Verification</a></li>
                </TMPL_IF>
            </TMPL_UNLESS>
	    <li class="toggle"><a onMouseOver='show_upper_tab_layer(this,"listFCRASearches");$("listFCRASearches").style.left = findPos(this) + "px";' onMouseOut='hide_upper_tab_layer("listFCRASearches");'>Decisioning</a></li>
            <TMPL_ELSE>

	    <li <TMPL_IF NAME=IM_ON_LEGAL_SEARCH>class="active"</TMPL_IF> ><a onMouseOver='show_upper_tab_layer(this,"listLegalSearches");$("listLegalSearches").style.left = findPos(this) + "px";' onMouseOut='hide_upper_tab_layer("listLegalSearches");'>People &amp; Courts</a></li>
	    <li <TMPL_IF NAME=IM_ON_ASSET_SEARCH>class="active"</TMPL_IF> ><a onMouseOver='show_upper_tab_layer(this,"listAssetSearches");$("listAssetSearches").style.left = findPos(this) + "px";' onMouseOut='hide_upper_tab_layer("listAssetSearches");'>Assets</a></li>
	    <li <TMPL_IF NAME=IM_ON_LICENSE_SEARCH>class="active"</TMPL_IF> ><a onMouseOver='show_upper_tab_layer(this,"listLicenseSearches");$("listLicenseSearches").style.left = findPos(this) + "px";' onMouseOut='hide_upper_tab_layer("listLicenseSearches");'>Licenses</a></li>
            <TMPL_IF ALLOW_FIRSTPURSUIT_FCRA_SEARCHES>
            <li><a onMouseOver='show_upper_tab_layer(this,"listCreditPursuitSearches");$("listCreditPursuitSearches").style.left = findPos(this) + "px";' onMouseOut='hide_upper_tab_layer("listCreditPursuitSearches");'>FCRA Gateway</a></li>
            </TMPL_IF>

	    <li class="toggle"><a onMouseOver='show_upper_tab_layer(this,"listNonFCRASearches");$("listNonFCRASearches").style.left = findPos(this) + "px";' onMouseOut='hide_upper_tab_layer("listNonFCRASearches");'>Contact & Locate</a></li>
            </TMPL_UNLESS>
	    

	</ul>
</div>
