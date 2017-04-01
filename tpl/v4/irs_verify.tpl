<!DOCTYPE html>
<html lang="en">
	<head>
		<TMPL_INCLUDE NAME="includes.tpl">
		<script>
			var disable_search_buttons = <TMPL_IF RESTRICT_MULTIPLE_SUBMITS>true<TMPL_ELSE>false</TMPL_IF>;
			var search_report_event = <TMPL_IF REPORT_EVENT>true<TMPL_ELSE>false</TMPL_IF>;
			var glb_purpose_value = '<TMPL_VAR NAME=WEB20_GLB_PURPOSE_VALUE_DESC>';
			var dppa_value = '<TMPL_VAR NAME=WEB20_DPPA_VALUE_DESC>';
			var dmf_purpose_value = '<TMPL_VAR NAME=WEB20_DMF_PURPOSE_VALUE_DESC>';
			var _tto = <TMPL_VAR NAME=SESSION_TIME_TO_TIMEOUT>;
			var _count_down = <TMPL_VAR NAME=SESSION_EXPIRE_COUNTDOWN>;
			var show_print_warning = '<TMPL_VAR NAME=SHOW_PRINT_WARNING>';
		</script>   
		<TMPL_IF NEW_WIN>
			<script>
				var NEW_WIN = true;
				$(document).ready(function() {
					var web20_search_flags = parse_web20_search_flags($('#web20-search-flags'),true); // true means reset the ones already in dom
					if (should_update_tab_html(web20_search_flags)) {
						$("#history-tab-ul",opener.document).html($('#new-win-history-tab-data').text());
						opener.init_tabs();
					}		  
				});		  
			</script>	
		</TMPL_IF>
		<TMPL_IF NAME="IRS_VERIFY">
			<script src="<TMPL_VAR NAME='JSPATH'>/iframe_content.js"></script>
			<link rel="stylesheet" type="text/css" media="screen" href="<TMPL_VAR NAME='CSSPATH'>/occcr.css">
		</TMPL_IF>
		<TMPL_IF NAME="SSA_VERIFY">
			<script src="<TMPL_VAR NAME='JSPATH'>/iframe_content.js"></script>
			<link rel="stylesheet" type="text/css" media="screen" href="<TMPL_VAR NAME='CSSPATH'>/occcr.css">
		</TMPL_IF>
	</head>
	<body class="menu-on-top<TMPL_IF NEW_WIN> standalone</TMPL_IF>">
		<div id="main">
		<span id="web20-search-flags" class="hidden" 
		data-search-disabled="<TMPL_IF SEARCH_DISABLED>1<TMPL_ELSE>0</TMPL_IF>" 
		data-search-error-message="<TMPL_IF SEARCH_ERROR_MESSAGE>1<TMPL_ELSE>0</TMPL_IF>" 
		data-report-error-message="<TMPL_IF REPORT_ERROR_MESSAGE>1<TMPL_ELSE>0</TMPL_IF>" 
		data-is-from-main-menu="<TMPL_IF FROM_MAIN_MENU>1<TMPL_ELSE><TMPL_UNLESS ALLOW_BROWSER_CACHING>1<TMPL_ELSE>0</TMPL_UNLESS></TMPL_IF>" 
		data-hit-tab-limit="<TMPL_IF HIT_TAB_LIMIT>1<TMPL_ELSE>0</TMPL_IF>" 
		data-rerun-display-event="<TMPL_IF RERUN_EVENT_DISPLAY_FORM>1<TMPL_ELSE>0</TMPL_IF>" 
		data-web20-page-title="<TMPL_VAR NAME="PAGE_TITLE">" 
		data-search-idx="<TMPL_VAR NAME='SEARCH_IDX'>"
		data-clear-browser-cache-pages="<TMPL_IF CLEAR_BROWSER_CACHE_PAGES><TMPL_VAR NAME="CLEAR_BROWSER_CACHE_PAGES"></TMPL_IF>" 
		data-is-clk-search="<TMPL_IF IS_CLICK_SEARCH>1<TMPL_ELSE>0</TMPL_IF>" 
		data-is-search-within="<TMPL_IF IS_SEARCH_WITHIN>1<TMPL_ELSE>0</TMPL_IF>"
		data-search-within-terms="<TMPL_VAR NAME="SEARCH_WITHIN_TERMS">"
		data-webpubrec-request="<TMPL_IF IS_WEBPUBREC_REQUEST>1<TMPL_ELSE>0</TMPL_IF>"
		data-is-new-window="<TMPL_IF NEW_WIN>1<TMPL_ELSE>0</TMPL_IF>"
		data-active-tab="<TMPL_VAR NAME="ACTIVE_TAB">"
		data-tab-id="<TMPL_VAR NAME="TAB_ID">"
		data-page="<TMPL_IF NAME="PAGE"><TMPL_VAR NAME="PAGE"><TMPL_ELSE>0</TMPL_IF>"
		<TMPL_IF NAME="IS_REPORT_IN_TAB">data-is-report="1" data-report-has-form="<TMPL_IF NAME="DIRECT_REPORT">1<TMPL_ELSE>0</TMPL_IF>"<TMPL_ELSE>data-is-report="0" data-report-has-form="0"</TMPL_IF> 
		<TMPL_IF NAME="SHOW_EVENT_NAME">data-show-event="<TMPL_VAR NAME="SHOW_EVENT_NAME">"</TMPL_IF>
        data-no-tab="1" 
        data-irs-ssa-form="1"
		></span>
		<TMPL_IF NAME="NEW_WIN">
			<header id="header" class="sr-only">
				<h1>
					<TMPL_IF AML>
						LexisNexis&copy; AML Insight&trade;
					<TMPL_ELSE>
						LexisNexis&copy; Risk Management Solutions<sup class="sup-reg-symbol">&reg;</sup>
					</TMPL_IF>
				</h1>			   
			</header>
		<TMPL_ELSE>
			<TMPL_INCLUDE NAME="header.tpl">
		</TMPL_IF>
		<header id="topnav">
			<TMPL_UNLESS NAME="NEW_WIN">
				<TMPL_INCLUDE NAME="top_navigation.tpl">
			</TMPL_UNLESS>
			<TMPL_INCLUDE NAME="search_frequent_favorites_navbar.tpl">			
            <TMPL_IF NEW_WIN>
              <textarea id="new-win-history-tab-data" class="hidden"></textarea>
            <TMPL_ELSE>
              <ul id="history-tab-ul" class="nav nav-tabs multi-tab-view"></ul>
            </TMPL_IF>
		</header>
		<section>
          <TMPL_INCLUDE NAME="occcr_top_tabs.tpl">
          <div class="container-fluid<TMPL_IF WEB20_START_PAGE> with-banner-section</TMPL_IF>" id="search-container">
				<div id="search-form-row" class="row no-print">
					<TMPL_INCLUDE NAME="portal_verify_search_body_header.tpl">
					<form name="IRS_VERFY_FORM" action="<TMPL_VAR NAME=ACTION>" method="post">
						<TMPL_INCLUDE NAME="common_hidden_input.tpl">
						<INPUT type=hidden NAME="EVENT" VALUE="">
						<INPUT type=hidden NAME="CURRENT_EVENT" VALUE="<TMPL_VAR NAME=CURRENT_EVENT>">
						<INPUT type=hidden NAME="CLIENT_TYPE" VALUE="WEB">
						<INPUT type=hidden NAME="HIDE_COURT_POPUP" VALUE="">
						<INPUT type=hidden NAME="COURT_SEARCH_WIZARD" VALUE="">
						<INPUT type=hidden NAME="SKIN_TYPE" VALUE="<TMPL_VAR NAME=SKIN_TYPE>">
						<INPUT type=hidden NAME="APPLICATION_TYPE" VALUE="<TMPL_VAR NAME=APPLICATION_TYPE>">
						<INPUT type=hidden NAME="MYACCTAB" VALUE="0">
						<INPUT type=hidden NAME="PMTAB" VALUE="0">
						<INPUT type=hidden NAME="MYTASK" VALUE="0">
						<INPUT type="hidden" NAME="QS_OPTION" id="QS_OPTION" value="SSN" />
						<INPUT type=hidden NAME="ACTION_MISC" VALUE="<TMPL_VAR NAME=ACTION_MISC>">
						<input type=hidden name="DISABLED_SEARCHES" value="<TMPL_VAR DISABLED_SEARCHS>">					   
						
						<INPUT type=hidden NAME="IRS_VERIFY_URL" VALUE="<TMPL_VAR NAME=IRS_VERIFY_URL>"/>
						<INPUT type=hidden NAME="CURRENT_EVENT" VALUE="<TMPL_VAR NAME=CURRENT_EVENT>"/>
						<INPUT type=hidden NAME="CLIENT_TYPE" VALUE="WEB"/>
						<INPUT type=hidden NAME="HIDE_COURT_POPUP" VALUE=""/>
						<INPUT type=hidden NAME="COURT_SEARCH_WIZARD" VALUE=""/>
						<INPUT type=hidden NAME="SKIN_TYPE" VALUE="<TMPL_VAR NAME=SKIN_TYPE>"/>
						<INPUT type=hidden NAME="APPLICATION_TYPE" VALUE="<TMPL_VAR NAME=APPLICATION_TYPE>"/>
						<INPUT type=hidden NAME="MYACCTAB" VALUE="0"/>
						<INPUT type=hidden NAME="PMTAB" VALUE="0"/>
						<INPUT type=hidden NAME="ACTION_ADMIN" VALUE="<TMPL_VAR NAME=ACTION_ADMIN>"/>		

						<div id="infodivid"></div>
						<TMPL_IF NAME="SSA_VERIFY"><iframe id="irs_verify_redirect" name="irs_verify_redirect" style="overflow:hidden;min-height:2010px" width="100%" frameborder="0" seamless><p>Your browser does not support iframes.</p></iframe></TMPL_IF>
						<TMPL_IF NAME="IRS_VERIFY"><iframe id="irs_verify_redirect" name="irs_verify_redirect" style="overflow:hidden;min-height:2170px" width="100%" frameborder="0" seamless><p>Your browser does not support iframes.</p></iframe></TMPL_IF>
					</form>					
				</div>
				
				<TMPL_UNLESS WEB20_PRINT_RESULTS>
					<TMPL_INCLUDE NAME="search_hidden_form.tpl">
					<TMPL_INCLUDE NAME="map/hidden_form.tpl">
					<TMPL_INCLUDE NAME="prepare_search_decisions.tpl">
					<TMPL_INCLUDE NAME="search_decisions.tpl">
				</TMPL_UNLESS>
				<TMPL_INCLUDE NAME="search_terms_echo.tpl">
				<TMPL_INCLUDE NAME="prepare_search_data_from_main_menu.tpl">
          </div>
          <TMPL_IF NAME=WEB20_BANNER_IMG>                            
            <div class="col-1_5 start-page-banner">
                <a href="<TMPL_VAR NAME=WEB20_BANNER_HREF>" target="_blank">
                    <img id="BannerAd" src="<TMPL_VAR NAME=IMGPATH>/BANNERS/<TMPL_VAR NAME=WEB20_BANNER_IMG>" alt="Banner Ad"/><!-- TODO: the img and banner should be changed to proper value or generated based on current ad. -->
                </a>
            </div>
        </TMPL_IF>
		</section>
		</div>

		<TMPL_UNLESS WEB20_PRINT_RESULTS>
			<TMPL_INCLUDE NAME="footer.tpl">
		</TMPL_UNLESS>
	</body>
</html>
