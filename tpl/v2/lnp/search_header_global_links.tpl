<!-- begin xbps/search_header_global_links.tpl -->
	<ul>
	  <li class="first"><a trackid="hdr_contact_us" href="javascript:send_event('LOGOUT');">Sign Out</a></li>
	  <li><a trackid="hdr_help" href="https://learn.lexisnexis.com/lexisnexis/user_home.aspx" target="_blank">Help</a></li>
	  <li><a trackid="hdr_my_account" href="https://accurint.custhelp.com/cgi-bin/accurint.cfg/php/enduser/chat.php " target="_blank">Live Chat</a></li>
	  <li><a trackid="hdr_my_account" href="javascript:show_post_popup('LOGIN/SHOW_POPUP','HTMLHelp','475','675',0,0,0,1,1,0,'','contact_select');">Contact Us</a></li>
	  <TMPL_IF NAME="RESULTS"><li><a class="hdr_print" href="javascript:print_results('<TMPL_VAR NAME='CSSPATH'>','<TMPL_VAR NAME=IMGPATH>/<TMPL_VAR NAME=APPLICATION_TYPE>');">Print</a></li></TMPL_IF>
          <TMPL_UNLESS DA_ONLY>
	     <li><a trackid="hdr_home_page" href="javascript:send_event('SEARCH/SHOW_MENU')">Home</a></li>
          </TMPL_UNLESS>
	</ul>
<!-- end xbps/search_header_global_links.tpl -->
