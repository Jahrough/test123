<header id="search-form-header" style="margin-bottom:0px;">
	<TMPL_IF NAME="IRS_VERIFY">		
		<h2>
			<strong>IRS Verify</strong>
		</h2>						
	</TMPL_IF>
	<TMPL_IF NAME="SSA_VERIFY">		
		<h2>
			<strong>SSA Verify</strong>
		</h2>	
	</TMPL_IF>
	<div class="additional-info" id="add_to_fav">
		<button type="button" class="favorites-star-red svg-icon-normal btn btn-link">
			<span class="tooltip centered">Add to Favorites</span>
		</button>
	</div>
	<div class="additional-info" id="portal_verify_gohome">
		<TMPL_IF NAME="PORTAL_VERIFY_RETURN_TO_HOME">
		<a id="gohome" href="#" onClick="javascript:send_portal_event('SEARCH/SHOW_MENU'); return false;">
        <TMPL_ELSE>
        <a id="gohome" href="#" onClick="javascript:return_to_tab_view(); return false;">
		</TMPL_IF>
		<strong>Return to Tab View &#62;&#62;</strong>
		</a>		 
	</div>
	<div id="header-addl-wrapper">
		<div id="form-help-icon-container">
			<span class="additional-info">
				<a href="javascript:void(0);" class="help-search help-icon svg-icon-tiny">
					<span class="tooltip centered">Help</span>
				</a>
			</span>
		</div>
		<div class="additional-info" id="search-form-actions">
			<TMPL_IF NAME="SHOW_SAMPLE_REPORT">
				<a href="#" onClick="javascript:show_post_popup('SEARCH/SHOW_SAMPLE_REPORT','SampleReportWindow','','','','','',1,1,'','','','<INPUT type=\'hidden\' name=\'SEARCH_NAME\' value=\'<TMPL_VAR NAME=SEARCH_NAME>\'>'); return false;"  class="button-icon ctrls-text-link">Sample Report</a>
			</TMPL_IF>
			<a href="javascript:void(0);" id="source-link" class="button-icon ctrls-text-link">Source</a>
			<TMPL_INCLUDE NAME="start_page.tpl">
		</div>
	</div>	
</header>