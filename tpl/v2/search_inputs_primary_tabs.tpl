<div id="tabs">
	<!--<ul id="tablist" > -->
	<ul id="tablist" >
	<!--<li class="firstTab"><a trackid="tab_myAccurint" href="#">My Accurint</a></li>-->

        <TMPL_UNLESS DA_ONLY>        
	<TMPL_IF NAME=IM_ON_MYACCURINT>
	   <li class="active" ><a trackid="tab_person" href="javascript:myacc('<TMPL_VAR MYA_1_EVT>');">My Accurint</a></li>
	<TMPL_ELSE>
	   <li class="firstTab" ><a trackid="tab_person" href="javascript:myacc('<TMPL_VAR MYA_1_EVT>');">My Accurint</a></li>
	</TMPL_IF>
	</TMPL_UNLESS>

        <TMPL_IF NAME=IM_ON_SEARCH>
            <TMPL_UNLESS DELETE_PERSON>
		<li class="active" ><a trackid="tab_person" href="javascript:pm_tab('SEARCH/SHOW_SEARCH');">People</a></li>
	    </TMPL_UNLESS>
	<TMPL_ELSE>
		<li class="firstTab" ><a trackid="tab_person" href="javascript:pm_tab('SEARCH/SHOW_SEARCH');">People</a></li>
	</TMPL_IF>

        <TMPL_IF NAME=IM_ON_BUS_SEARCH>
	    <TMPL_UNLESS DELETE_BUS>
	        <li class="active" ><a trackid="tab_business" href="javascript:pm_tab('SEARCH/SHOW_BUS');">Business</a></li>
	    </TMPL_UNLESS>
	<TMPL_ELSE>
		<li ><a trackid="tab_business" href="javascript:pm_tab('SEARCH/SHOW_BUS');">Business</a></li>
	</TMPL_IF>

	<TMPL_IF NAME=IM_ON_ASSET_SEARCH>
	  <TMPL_UNLESS DELETE_MV> 
		<li class="active" ><a trackid="tab_assets" href="javascript:pm_tab('WS_SEARCH/SHOW_DL_REG');">Assets</a></li>
	  </TMPL_UNLESS>
	<TMPL_ELSE>
		<li ><a trackid="tab_assets" href="javascript:pm_tab('WS_SEARCH/SHOW_DL_REG');">Assets</a></li>
	</TMPL_IF>

        <TMPL_IF NAME=IM_ON_LICENSE_SEARCH>
	  <TMPL_UNLESS DELETE_DL>
 		<li class="active" ><a trackid="tab_licenses" href="javascript:pm_tab('WS_SEARCH/SHOW_LICENSE');">Licenses</a></li>
	  </TMPL_UNLESS>
	<TMPL_ELSE>
		<li ><a trackid="tab_licenses" href="javascript:pm_tab('WS_SEARCH/SHOW_LICENSE');">Licenses</a></li>
	</TMPL_IF>

        <TMPL_IF NAME=IM_ON_DA_SEARCH>
	  <TMPL_UNLESS DELETE_DA_WIRELESS>
 		<li class="active" ><a trackid="tab_phones" href="javascript:pm_tab('SEARCH/SHOW_DA_WIRELESS');">Phones</a></li>
	  </TMPL_UNLESS>
	<TMPL_ELSE>
		<li ><a trackid="tab_phones" href="javascript:pm_tab('SEARCH/SHOW_DA_WIRELESS');">Phones</a></li>
	</TMPL_IF>

        <TMPL_IF NAME=IM_ON_LEGAL_SEARCH>
	  <TMPL_UNLESS DELETE_BANKRUPTCY>
 		<li class="active" ><a trackid="tab_courts" href="javascript:pm_tab('SEARCH/SHOW_BANKRUPTCY');">Courts</a></li>
	  </TMPL_UNLESS>
	<TMPL_ELSE>
		<li ><a trackid="tab_courts" href="javascript:pm_tab('SEARCH/SHOW_BANKRUPTCY');">Courts</a></li>
	</TMPL_IF>
	</ul>
</div>
