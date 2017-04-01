<div class="col-xs-7 portfolio-item innercontent">
	<!-- People -->
	<div class="row">
		<h2 class="person_icon svg-icon-normal">People</h2>
		<div id="peoplelinks_ps_widget" class="col-3-grid collapsible-menu" data-link-threshold="18">
			<ul class="main-menu-ul col-xs-4">
			</ul>
			<ul class="main-menu-ul col-xs-4">
			</ul>
			<ul class="main-menu-ul col-xs-4">
			</ul>
			<div class="section-overflow hidden clear">
				<div>
					<hr/>
					<ul class="main-menu-ul col-xs-4">
					</ul>
					<ul class="main-menu-ul col-xs-4">
					</ul>
					<ul class="main-menu-ul col-xs-4">
					</ul>
					<br class="clear"/>
				</div>
				<button onclick="javascript:showHideOverflow('peoplelinks_ps_widget');" type="button" class="btn btn-default btn-sm hide-hidden-data-icon">Show Less</button>
			</div>
		</div>
	</div>
	<TMPL_IF HAS_FCRA><!-- TODO: We need some sort of flag that states if a user has FCRA.  
						   If so, then we can show this section.  This flag is a placeholder.
						   This meets the requirements to hide FCRA for initial release.-->
	<!-- FCRA -->
	<div class="row fcra">
		<h2 class="fcra_home_icon svg-icon-normal">FCRA Searches</h2>
		<div class="col-3-grid">
			<div class="no-padding col-xs-4">
				<strong>Credit Pursuit</strong>
				<ul class="main-menu-ul">
					<li>Equifax<sup class="sup-reg-symbol">&reg;</sup></li>
					<li>Equifax<sup class="sup-reg-symbol">&reg;</sup> Condensed Credit Report</li>
					<li>TransUnion<sup class="sup-reg-symbol">&reg;</sup></li>
					<li>TransUnion<sup class="sup-reg-symbol">&reg;</sup> Condensed Credit</li>
				</ul>
			</div>
			<div class="no-padding col-xs-4">
				<strong>Consumer Fraud</strong>
				<ul class="main-menu-ul">
					<li>
						<TMPL_IF DISABLE_IDENTITY_TRACE><TMPL_ELSE>
							<a href="javascript:fcra_v3('SEARCH2/SEARCH_IDENTITY_TRACE');">LexisNexis<sup class="sup-reg-symbol">&reg;</sup> Identity Trace</a>
						</TMPL_IF>
					</li>
				</ul>
			</div>
			<div class="no-padding col-xs-4">
				<strong>Credit Decisioning</strong>
				<ul class="main-menu-ul">
					<li>
						<a href="javascript:fcra_v3('SEARCH2/SHOW_RISKVIEW_REPORT');">RiskView Report</a>
					</li>
				</ul>
			</div>
		</div>
	</div>
	</TMPL_if>

	<!-- Business -->
	<div class="row">
		<h2 class="bus_icon svg-icon-normal">Business</h2>
		<div id="businesseslinks_ps_widget" class="col-3-grid collapsible-menu" data-link-threshold="15">
			<ul class="main-menu-ul col-xs-4">
			</ul>
			<ul class="main-menu-ul col-xs-4">
			</ul>
			<ul class="main-menu-ul col-xs-4">
			</ul>
			<div class="section-overflow hidden clear">
				<div>
					<hr/>
					<ul class="main-menu-ul col-xs-4">
					</ul>
					<ul class="main-menu-ul col-xs-4">
					</ul>
					<ul class="main-menu-ul col-xs-4">
					</ul>
					<br class="clear"/>
				</div>
				<button onclick="javascript:showHideOverflow('businesseslinks_ps_widget');" type="button" class="btn btn-default btn-sm hide-hidden-data-icon">Show Less</button>
			</div>
		</div>
	</div>

	<div class="row">
		<!-- Propery & Assets -->
		<div class="col-xs-4 no-padding-left">
			<h2 class="property_icon svg-icon-normal">Property &amp; Assets</h2>
			<div id="assetslinks_ps_widget">
				<ul class="main-menu-ul">
				</ul>
			</div>
		</div>
		<!-- Court & Admin Filings -->
		<div class="col-xs-4 no-padding-left">
			<h2 class="court_icon svg-icon-normal">Court &amp; Admin Filings</h2>
			<div id="courtslinks_ps_widget">
				<ul class="main-menu-ul">
				</ul>
			</div>
		</div>
		<!-- News -->
		<div class="col-xs-4 no-padding-left">
			<h2 class="news_icon svg-icon-normal">News</h2>
			<div id="newslinks_ps_widget">
				<ul class="main-menu-ul">
				</ul>
			</div>
		</div>
		<!-- International -->
		<div class="col-xs-4 no-padding-left">
			<h2 class="international_icon svg-icon-normal">International</h2>
			<div id="internationallinks_ps_widget">
				<ul class="main-menu-ul">
				</ul>
			</div>
		</div>
	</div>

	<div class="row">
		<!-- Requlations & Compliance -->
		<div class="col-xs-4 no-padding-left">
			<h2 class="regulations_icon svg-icon-normal">Regulations  &amp; Compliance</h2>
			<div id="regcompliancelinks_ps_widget">
				<ul class="main-menu-ul">
				</ul>
			</div>
		</div>
		<!-- Direct to Source -->
		<div class="col-xs-4 no-padding-left">
			<h2 class="direct_to_source_icon svg-icon-normal">Direct-to-Source</h2>
			<div id="directtosource_ps_widget">
				<ul class="main-menu-ul">
				</ul>
			</div>
		</div>		
		<!-- Authentication Services -->
		<div class="col-xs-4 no-padding-left">
			<h2 class="authentication_services_icon svg-icon-normal">Authentication Services</h2>
			<div id="authserviceslinks_ps_widget">
				<ul class="main-menu-ul">
				</ul>
			</div>
		</div>
	</div>

	<hr class="main-menu-divider"/>
</div>
