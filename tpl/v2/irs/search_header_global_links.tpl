<!-- begin irs/search_header_global_links.tpl -->
	<ul>
	  <li class="first"><a trackid="hdr_contact_us" href="javascript:send_event('LOGOUT');">Sign Out</a></li>
	  <TMPL_IF NAME="RESULTS">
	    <li><a class="hdr_print" href="javascript:print_results('<TMPL_VAR NAME='CSSPATH'>','<TMPL_VAR NAME=IMGPATH>/<TMPL_VAR NAME=APPLICATION_TYPE>');">Print</a></li>
	  </TMPL_IF>
	<TMPL_IF NAME="SHOW_DEMO_ENV">
	  <li><a trackid=hdr_my_account" href="javascript:open_demo_env('<TMPL_VAR NAME="SHOW_DEMO_ENV">');">Enter Demo Environment</a></li>
	<TMPL_ELSE>
	<TMPL_IF NAME="IS_DEMO_ENV">
	  <li><font color="#ed1c24"><small><b>Currently Demo Environment</b></small></font></li>
	<TMPL_ELSE>
	</TMPL_IF>
	</TMPL_IF>
	  <li><a trackid="hdr_my_account" href="javascript:show_post_popup('LOGIN/SHOW_POPUP','IRSCustomerSupport',450,400,0,0,0,1,1,0,'','irs/customer_support');">Customer Support</a></li>
	  <TMPL_UNLESS IS_RESELLER>
	    <li><a href="javascript:show_post_popup('LOGIN/SHOW_POPUP','TrainingMaterials','700','500',0,0,0,1,1,0,'','irs/training_materials');">Training</a></li>
	  </TMPL_UNLESS>
	  <TMPL_UNLESS IS_RESELLER>
	    <li><a href="javascript:send_event('LOGIN/SHOW_WELCOME');">Announcements</a></li>
	  </TMPL_UNLESS>
	  <TMPL_UNLESS DA_ONLY>
	    <li><a trackid="hdr_home_page" href="javascript:send_event('SEARCH/SHOW_MENU')">Home</a></li>
          </TMPL_UNLESS>
	</ul>
<!-- end irs/search_header_global_links.tpl -->
