<!--
IM_ON_MYACCURINT=[ <TMPL_VAR IM_ON_MYACCURINT> ]<br>
MYA_LINK_EVT=[ <TMPL_VAR MYA_LINK_EVT> ]<br>
MYA_1_EVT=[ <TMPL_VAR MYA_1_EVT> ]<br>
EVT=[ <TMPL_VAR EVT> ]<br>
-->

<!-- begin gov/search_header_global_links.tpl -->
	<ul>
	  <li class="first"><a trackid="hdr_contact_us" href="javascript:send_event('LOGOUT');">Sign Out</a></li>

          <TMPL_IF NAME="SHOW_DEMO_ENV">
          <li><a trackid=hdr_my_account" href="javascript:open_demo_env('<TMPL_VAR NAME="SHOW_DEMO_ENV">');">Enter Demo Environment</a></li>
          <TMPL_ELSE>
          <TMPL_IF NAME="IS_DEMO_ENV">
          <li><font color="#ed1c24"><small><b>Currently Demo Environment</b></small></font></li>
          </TMPL_IF>
          </TMPL_IF>


	  <li><a trackid="hdr_help" href="https://learn.lexisnexis.com/lexisnexis/user_home.aspx?portal=gov" target="_blank">Help</a></li>
	  <li><a trackid="hdr_my_account" href="https://accurint.custhelp.com/cgi-bin/accurint.cfg/php/enduser/chat.php " target="_blank">Live Chat</a></li>
	  <li><a trackid="hdr_my_account" href="javascript:show_post_popup('LOGIN/SHOW_POPUP','HTMLHelp','475','640',0,0,0,1,1,0,'','contact_select');">Contact Us</a></li>
	  <TMPL_IF NAME="RESULTS"><li><a class="hdr_print" href="javascript:print_results('<TMPL_VAR NAME='CSSPATH'>','<TMPL_VAR NAME=IMGPATH>/<TMPL_VAR NAME=APPLICATION_TYPE>');">Print</a></li></TMPL_IF>
	  <TMPL_IF NAME="SHOW_CLASSIC_ACCURINT"><li><a trackid="hdr_classic" href="javascript:send_event('SEARCH/SHOW_CLASSIC')">Classic View</a></li></TMPL_IF>

          <TMPL_IF NAME="IM_ON_MYACCURINT">
             <TMPL_UNLESS DA_ONLY>
   	        <li><a trackid="hdr_home_page" href="javascript:send_event('SEARCH/SHOW_MENU')">Main Menu</a></li>
             </TMPL_UNLESS>
          <TMPL_ELSE>
          
             <TMPL_IF NAME="MYA_LINK_EVT">
                <TMPL_UNLESS DA_ONLY>
                   <li><a trackid="hdr_home_page" href="javascript:myacc('<TMPL_VAR MYA_LINK_EVT>');">My Accurint</a></li>
                </TMPL_UNLESS>
             <TMPL_ELSE>
                <TMPL_UNLESS DA_ONLY>
      	           <li><a trackid="hdr_home_page" href="javascript:send_event('SEARCH/SHOW_MENU')">Main Menu</a></li>
                </TMPL_UNLESS>
             </TMPL_IF>


          </TMPL_IF>
        </ul>
<!-- end col/search_header_global_links.tpl -->
