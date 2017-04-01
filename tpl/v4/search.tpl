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
				$(document).ready(function() {
                                        var opw = get_main_window();
					var web20_search_flags = parse_web20_search_flags($('#web20-search-flags'),true); // true means reset the ones already in dom
					if (should_update_tab_html(web20_search_flags)) {
						$("#history-tab-ul",opw.document).html($('#new-win-history-tab-data').text());
						opw.init_tabs();
					}		  
				});		  
			</script>	
		</TMPL_IF>
		<TMPL_IF NAME="IRS_VERIFY">
			<script src="<TMPL_VAR NAME='JSPATH'>/iframe_content.js"></script>
		</TMPL_IF>
		<TMPL_IF NAME="SSA_VERIFY">
			<script src="<TMPL_VAR NAME='JSPATH'>/iframe_content.js"></script>
		</TMPL_IF>
		<TMPL_IF MAIN_MENU>
                    <script>$(function(){setTimeout(function(){show_main_menu_section(true);},10);});</script>
		<TMPL_ELSE>
                    <script>$(function(){setTimeout(function(){show_search_section();},10);});</script>
		</TMPL_IF>
	</head>
	<body class="menu-on-top<TMPL_IF NEW_WIN> standalone</TMPL_IF>">
		<div id="main">
		<TMPL_IF NAME="NEW_WIN">
		    <header id="header">
			<TMPL_INCLUDE NAME="header_logo.tpl">
		    </header>
		<TMPL_ELSE>
			<TMPL_INCLUDE NAME="header.tpl">
		</TMPL_IF>
		<header id="topnav"<TMPL_IF MAIN_MENU> class="main-menu-topnav"</TMPL_IF>>
			<TMPL_UNLESS NAME="NEW_WIN">
				<TMPL_INCLUDE NAME="top_navigation.tpl">
			</TMPL_UNLESS>
			<TMPL_UNLESS NAME="IRS_VERIFY">
			<TMPL_UNLESS NAME="SSA_VERIFY">			
				<TMPL_INCLUDE NAME="search_history_home_contents.tpl">			
			</TMPL_UNLESS>
			</TMPL_UNLESS>
		</header>
		<section id="search-section"<TMPL_IF MAIN_MENU> class="hidden"</TMPL_IF>>
                    <tmpl_if mytask_results>
                        <TMPL_UNLESS NAME="OCCCR_ORDER_RESULTS_SEARCH">
                            <TMPL_INCLUDE NAME="mytask/mytask_header.tpl">
                            <TMPL_INCLUDE NAME="search_hidden_form.tpl">
                            <TMPL_INCLUDE NAME="map/hidden_form.tpl">
                            <TMPL_INCLUDE NAME="prepare_search_decisions.tpl">
                            <TMPL_INCLUDE NAME="search_decisions.tpl">
                        </TMPL_UNLESS>
                    <tmpl_else>
                        <TMPL_UNLESS NAME="OCCCR_ORDER_RESULTS_SEARCH">
                            <TMPL_INCLUDE NAME="occcr_top_tabs.tpl">
                                    <div class="container-fluid<TMPL_IF WEB20_START_PAGE> with-banner-section</TMPL_IF>" id="search-container">
                        </TMPL_UNLESS>
                                        <TMPL_INCLUDE NAME="search_body.tpl">
                        <TMPL_UNLESS NAME="OCCCR_ORDER_RESULTS_SEARCH">
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
	                                        <TMPL_IF NAME="IDENTITY_TRACE_SEARCH">
	                                            <TMPL_INCLUDE NAME="tracesmart_disclaimer.tpl">
	                                        </TMPL_IF>
	                                        <TMPL_INCLUDE NAME="prepare_search_data_from_main_menu.tpl">
                                    </div>
                                    <TMPL_IF NAME=WEB20_BANNER_IMG>                            
                                        <div class="col-1_5 start-page-banner">
                                            <a href="<TMPL_VAR NAME=WEB20_BANNER_HREF>" target="_blank">
                                                <img id="BannerAd" src="<TMPL_VAR NAME=IMGPATH>/BANNERS/<TMPL_VAR NAME=WEB20_BANNER_IMG>" alt="Banner Ad"/><!-- TODO: the img and banner should be changed to proper value or generated based on current ad. -->
                                            </a>
                                        </div>
                                    </TMPL_IF>
                                    <TMPL_IF NAME=HID_DPPA_PERMISSBLE_USE>
                                        <TMPL_INCLUDE NAME="glb_dppa_selections.tpl">
                                    <TMPL_ELSE>
                                        <TMPL_IF NAME=HID_GLBA_PERMISSBLE_USE>
                                            <TMPL_INCLUDE NAME="glb_dppa_selections.tpl">
                                        <TMPL_ELSE>
                                            <TMPL_IF NAME=HID_DMF_PERMISSBLE_USE>
                                                <TMPL_INCLUDE NAME="glb_dppa_selections.tpl">
                                            </TMPL_IF>
                                        </TMPL_IF>
                                    </TMPL_IF>
                        </TMPL_UNLESS>
                    </TMPL_IF>
            </section>
            <section id="main-menu-section"<TMPL_UNLESS MAIN_MENU> class="hidden"</TMPL_UNLESS>>
                    <div class="row" id="main-menu">
                        <TMPL_INCLUDE NAME="main_menu_form.tpl">
                        <TMPL_INCLUDE NAME="search_hidden_form.tpl">
                        <TMPL_INCLUDE NAME="map/hidden_form.tpl">
                        <TMPL_INCLUDE NAME="main_menu_body.tpl">
                        <TMPL_IF NAME="OCCCR_ORDER_RESULTS_SEARCH">
                            <TMPL_INCLUDE NAME="occcr_inputs_form.tpl">
                        </TMPL_IF>
                    </div>
            </section>
    </div>
		<TMPL_UNLESS WEB20_PRINT_RESULTS>
			<TMPL_INCLUDE NAME="footer.tpl">
		</TMPL_UNLESS>
	</body>
</html>
