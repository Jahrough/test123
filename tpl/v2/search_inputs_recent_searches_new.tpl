<TMPL_UNLESS BLIND>
<TMPL_UNLESS HIDE_RECENT_SEARCHES>
<div id="rpRecentSearch">

	<tmpl_if rcs_loop>
	<tmpl_loop rcs_loop>
	   <tmpl_if even><span></tmpl_if>
		  <div class="rtcolLeft" title="<tmpl_var title>" ><tmpl_var type> </div> 
		  <div class="rtcolRight">
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
           <br> <div class="rtcolLeft">&nbsp;&nbsp;No Activity</div><div class="rtcolRight"> (Last 24 Hours)</div> <br/>
	</tmpl_if>

        <p style="padding-top:15px; padding-bottom:5px; "><a href="javascript:show_post_popup('MYACCOUNT/SHOW_ALL_RECENT','MyAccountWin','','',1,1,1,1,1,0,'<TMPL_VAR NAME=ACTION_ADMIN>');">All Recent Searches</a> &raquo;</p>

	<p>Use of Recent Searches is subject to <br/>your <a href="javascript:void(0);" onclick="alert('The selection of a recent search will be subject to your currently selected permissible purposes certified to at login of this session pursuant to the Gramm-Leach-Bliley Act (15 U.S.C. &sect; 6801 et seq.) and its implementing regulations and the Driver&rsquo;s Privacy Protection Act (18 U.S.C. &sect; 2721 et seq.) and related state laws.')">Permissible Use</a> selections.</p>
</div>
</TMPL_UNLESS>
</TMPL_UNLESS>
