<!-- BEGIN: v4/header_logo.tpl -->
<h1>
	<TMPL_UNLESS WEB20_PRINT_DOWNLOAD>
		<a href="javascript:maybe_show_prefs_save_dialog(function(){send_portal_event('SEARCH/SHOW_MENU')});">
	</TMPL_UNLESS>
			<TMPL_IF AML>
				<img src="<tmpl_var name=IMGPATH>/LN-AML-Insight.png" alt="LexisNexis&copy; AML Insight&trade;"/>
			<TMPL_ELSE>
	          <TMPL_IF RSKM>
				<img src="<tmpl_var name=IMGPATH>/LN-RSKM.png" alt="LexisNexis&copy; Risk Management Solutions&reg;"/>
	          <TMPL_ELSE>
	            <TMPL_IF RSKAD>
	              <img src="<tmpl_var name=IMGPATH>/LN-Admin.png" alt="LexisNexis&copy; Risk Administration&reg;"/>
	            </TMPL_IF>
	          </TMPL_IF>
			</TMPL_IF>
	<TMPL_UNLESS WEB20_PRINT_DOWNLOAD>
		</a>
	</TMPL_UNLESS>

	<TMPL_IF NAME="WEB20_CUSTOMER_LOGO">
		<span id="customer-logo">for 
			<img src="<TMPL_VAR NAME="IMGPATH">/custlogo/<TMPL_VAR NAME="WEB20_CUSTOMER_LOGO">" alt="<TMPL_VAR NAME="WEB20_LOGO_TEXT">"/>
		</span>
	</TMPL_IF>
</h1>    
<!-- END: v4/header_logo.tpl -->
