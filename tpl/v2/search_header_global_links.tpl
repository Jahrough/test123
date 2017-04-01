<!-- begin search_header_global_links.tpl -->
	<ul>
	  <li class="first"><a trackid="hdr_contact_us" href="javascript:send_event('LOGOUT');">Sign Out</a></li>
	  <li><a trackid="hdr_help" href="javascript:show_post_popup('LOGIN/SHOW_POPUP','HTMLHelp','680','505',1,1,1,1,1,0,'','<TMPL_VAR NAME=APPLICATION_TYPE>/main_help');">Help</a></li>
	    <TMPL_IF IRS>
		<li><a trackid="hdr_my_account" href="javascript:show_post_popup('LOGIN/SHOW_POPUP','IRSCustomerSupport',450,400,0,0,0,0,0,0,'','irs/customer_support');">Customer Support</a></li>
	    <TMPL_ELSE>
	    <TMPL_IF IRB>
		<li><a trackid="hdr_my_account" href="javascript:show_post_popup('MYACCOUNT/SHOW_CONTACT_US','ContactUs',450,500);">Contact Us</a></li>
	    <TMPL_ELSE>
		<li><a trackid="hdr_my_account" href="javascript:show_post_popup('LOGIN/SHOW_POPUP','HTMLHelp','475','675',1,1,1,1,1,0,'','contact_select');">Contact Us</a></li>
	    </TMPL_IF>
	    </TMPL_IF>
	    <TMPL_IF NAME="RESULTS"><li><a class="hdr_print" href="javascript:print_results('<TMPL_VAR NAME='CSSPATH'>','<TMPL_VAR NAME=IMGPATH>/<TMPL_VAR NAME=APPLICATION_TYPE>');">Print</a></li></TMPL_IF>
          <TMPL_UNLESS DA_ONLY>
	     <li><a trackid="hdr_home_page" href="javascript:send_event('SEARCH/SHOW_MENU')">Home</a></li>
          </TMPL_UNLESS>
	</ul>
<!-- end search_header_global_links.tpl -->
