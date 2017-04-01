<!-- begin cdm_menu_tabs.tpl -->

<div id="tabs">
  <ul id="tablist">
	<TMPL_IF NAME=IM_ON_INPUT_DETAILS>
		<li class="active" ><a trackid="tab_person" href="javascript:pm_tab('CDM/SHOW_CDM');">Input Details</a></li>
	<TMPL_ELSE>
		<li class="firstTab" ><a trackid="tab_person" href="javascript:pm_tab('CDM/SHOW_CDM');">Input Details</a></li>
	</TMPL_IF>
	<TMPL_IF NAME=IM_ON_CDM_STND_LEXID>
		<li class="active" ><a trackid="tab_person" href="javascript:pm_tab('CDM/SHOW_LEXID');">Standardization/LexID</a></li>
	<TMPL_ELSE>
		<li class="firstTab" ><a trackid="tab_person" href="javascript:pm_tab('CDM/SHOW_LEXID');">Standardization/LexID</a></li>
	</TMPL_IF>
	<TMPL_IF NAME=IM_ON_CDM_ADDR>
		<li class="active" ><a trackid="tab_person" href="javascript:pm_tab('CDM/SHOW_ADDR');">Addresses</a></li>
	<TMPL_ELSE>
		<li class="firstTab" ><a trackid="tab_person" href="javascript:pm_tab('CDM/SHOW_ADDR');">Addresses</a></li>
	</TMPL_IF>
	<TMPL_IF NAME=IM_ON_CDM_PHONES>
		<li class="active" ><a trackid="tab_person" href="javascript:pm_tab('CDM/SHOW_PHONES');">Phones</a></li>
	<TMPL_ELSE>
		<li class="firstTab" ><a trackid="tab_person" href="javascript:pm_tab('CDM/SHOW_PHONES');">Phones</a></li>
	</TMPL_IF>
	<TMPL_IF NAME=IM_ON_CDM_IDENT>
		<li class="active" ><a trackid="tab_person" href="javascript:pm_tab('CDM/SHOW_IDENT');">Identity</a></li>
	<TMPL_ELSE>
		<li class="firstTab" ><a trackid="tab_person" href="javascript:pm_tab('CDM/SHOW_IDENT');">Identity</a></li>
	</TMPL_IF>
	<TMPL_IF NAME=IM_ON_CDM_ALL_ELEM>
		<li class="active" ><a trackid="tab_person" href="javascript:pm_tab('CDM/SHOW_ALL_ELEM');">All Data Elements</a></li>
	<TMPL_ELSE>
		<li class="firstTab" ><a trackid="tab_person" href="javascript:pm_tab('CDM/SHOW_ALL_ELEM');">All Data Elements</a></li>
	</TMPL_IF>
  </ul>
</div>


<!-- end cdm_menu_tabs.tpl -->