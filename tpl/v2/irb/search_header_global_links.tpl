<!-- begin col/search_header_global_links.tpl -->
	<ul>
	  <li class="first"><a trackid="hdr_contact_us" href="javascript:send_event('LOGOUT');">Sign Out</a></li>
	  <!--<li><a trackid="hdr_help" href="https://secure.irbsearch.com/elearning/index.html" target="_blank">Help</a></li>-->
	  <li><a trackid="hdr_my_account" href="javascript:show_post_popup('MYACCOUNT/SHOW_CONTACT_US','ContactUs',450,500);">Contact Us</a></li>
	  <li><a class="hdr_print" href="javascript:print_results('<TMPL_VAR NAME='CSSPATH'>','<TMPL_VAR NAME=IMGPATH>/<TMPL_VAR NAME=APPLICATION_TYPE>');">Print</a></li>
          <TMPL_UNLESS DA_ONLY>
	     <li><a trackid="hdr_home_page" href="javascript:send_event('SEARCH/SHOW_MENU')">Home</a></li>
          </TMPL_UNLESS>
	</ul>
<!-- end col/search_header_global_links.tpl -->
