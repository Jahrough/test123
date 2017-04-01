<!-- Start Recent Searches section -->

    <div id="recentSearch" onMouseOver="show_section('recentContainer');" onMouseOut="hide_section('recentContainer');">
    <div id="recentContainertitle" style="cursor: pointer;" class="recentSearchHdr" onClick="toggle_section('recentContainer');"></div>
    <p>[<a href="javascript:show_post_popup('MYACCOUNT/SHOW_ALL_RECENT','MyAccountWin','','',1,1,1,1,1,0,'<TMPL_VAR NAME=ACTION_ADMIN>');" title="Show All Recent Searches">Show All</a>]</p>
    <div id="recentContainer">
    <div id="rsContainer">

	<br>
	<tmpl_if rcs_loop>
	<tmpl_loop rcs_loop>
	   <tmpl_if even><span></tmpl_if>
		  <div class="rsLeft" title="<tmpl_var title>" ><tmpl_var type> </div> 
		  <div class="rsRight">
		      <tmpl_if lnk>
		       <a href="javascript:rerun_recent(<tmpl_var lnk>)"> <tmpl_var crit></a>
		      <tmpl_else>
			  <tmpl_var crit>
		      </tmpl_if>
		  </div>
	   <tmpl_if even></span></tmpl_if>
		  <br>
	</tmpl_loop>
	<tmpl_else>
           <br> <div class="rsLeft">&nbsp;&nbsp;No Activity</div><div class="rsRight"> (Last 24 Hours)</div> <br/>
	</tmpl_if>
	<div class="smallgray2">Use of Recent Searches is subject to <br/>your <a href="javascript:void(0);" onclick="alert('The selection of a recent search will be subject to your currently selected permissible purposes certified to at login of this session pursuant to the Gramm-Leach-Bliley Act (15 U.S.C. &sect; 6801 et seq.) and its implementing regulations and the Driver&rsquo;s Privacy Protection Act (18 U.S.C. &sect; 2721 et seq.) and related state laws.')">Permissible Use</a> selections.</div>

    </div>
    </div>
</div>
<div id="recentSearchBot"></div>
    <br>
