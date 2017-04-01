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
			<TMPL_IF NAME=ID_QUIZ>
			function goback() {
				window.history.back();
			}
			</TMPL_IF>
			<TMPL_IF NAME=ID_AUTH>
			function go() {
				window.history.go(-2);
			}
			</TMPL_IF>
		</script>   
		<TMPL_IF NEW_WIN>
			<script>
				var NEW_WIN = true;
				$(document).ready(function() {
					var web20_search_flags = parse_web20_search_flags($('#web20-search-flags'),true); // true means reset the ones already in dom
					if (should_update_tab_html(web20_search_flags)) {
						$("#history-tab-ul",opener.document).html($('#new-win-history-tab-data').text());
						opener.adjust_tabs();
					}		  
				});		  
			</script>	
		</TMPL_IF>
	
	</head>
        
	<body class="menu-on-top<TMPL_IF NEW_WIN> standalone</TMPL_IF>">
		<div id="main">
		<TMPL_UNLESS NAME="NEW_WIN">
			<TMPL_INCLUDE NAME="header.tpl">
		</TMPL_UNLESS>
		<header id="topnav">
			<TMPL_UNLESS NAME="NEW_WIN">
				<TMPL_INCLUDE NAME="top_navigation.tpl">
			</TMPL_UNLESS>

				<TMPL_INCLUDE NAME="search_history_home_contents.tpl">
		</header>
		<section>
			
				<tmpl_if mytask_results>
                    <TMPL_INCLUDE NAME="mytask/mytask_header.tpl">
                        <TMPL_INCLUDE NAME="search_hidden_form.tpl">
                        <TMPL_INCLUDE NAME="map/hidden_form.tpl">
                        <TMPL_INCLUDE NAME="prepare_search_decisions.tpl">
                        <TMPL_INCLUDE NAME="search_decisions.tpl">
                <tmpl_else>
					<TMPL_INCLUDE NAME="occcr_top_tabs.tpl">

					
					<div class="container-fluid<TMPL_IF WEB20_START_PAGE> with-banner-section</TMPL_IF>" id="search-container">
						<TMPL_INCLUDE NAME="mytask/search_body.tpl">
						<TMPL_UNLESS WEB20_PRINT_RESULTS>
							<TMPL_INCLUDE NAME="search_hidden_form.tpl">
							<TMPL_INCLUDE NAME="map/hidden_form.tpl">
							<TMPL_INCLUDE NAME="prepare_search_decisions.tpl">
							<TMPL_INCLUDE NAME="search_decisions.tpl">
						</TMPL_UNLESS>
						<TMPL_INCLUDE NAME="search_terms_echo.tpl">
						<TMPL_UNLESS FROM_MAIN_MENU>
							<TMPL_INCLUDE NAME="search_results.tpl">
						</TMPL_UNLESS>
						
						<TMPL_INCLUDE NAME="prepare_search_data_from_main_menu.tpl">
					</div>
					<TMPL_INCLUDE NAME="glb_dppa_selections.tpl">
				</tmpl_if>
			
		</section>
		</div>
		<TMPL_UNLESS WEB20_PRINT_RESULTS>
			<TMPL_INCLUDE NAME="footer.tpl">
		</TMPL_UNLESS>
	</body>
</html>
