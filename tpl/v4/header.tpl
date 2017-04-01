<header id="header">	
	<!-- end pulled right: nav area -->
    <TMPL_INCLUDE NAME="header_logo.tpl">
	<!-- #TOGGLE LAYOUT BUTTONS -->
	<!-- pulled right: nav area -->
	<div class="pull-right">	
            <TMPL_IF EXPR="USER_GROUP_LIST_COUNT > 1">
		<TMPL_IF NAME=USER_GROUP_LIST>
			<div class="btn-group btn-group2" role="group">
         <TMPL_UNLESS ANNOUNCEMENT_RESULTS_LOOP>
         <TMPL_UNLESS ANNOUNCEMENT_MSG>
				<button type="button" <TMPL_IF NAME=PRIMARY_TAB_COUNT>data-tab-count="<TMPL_VAR PRIMARY_TAB_COUNT>"</TMPL_IF> <TMPL_IF NAME="WEB20_CHANGE_GROUP_PROMPT">data-change-group-prompt=true<TMPL_ELSE>data-change-group-prompt=false</TMPL_IF> id="group-modal-button" class="btn btn-link" onclick="javascript:maybe_show_prefs_save_dialog(show_group_modal);">
					Group:&nbsp;&nbsp;<TMPL_VAR NAME=CURRENT_GROUP>
				</button>
         </TMPL_UNLESS>
         </TMPL_UNLESS>
       	     	<!-- <ul role="menu" class="dropdown-menu">
       	     		<TMPL_UNLESS NAME=HIDE_OPTION_FOR_NO_GROUP>
       	     			<li>
       	     				<a href="javascript:void(0);" class="qsOptions" data-qsplaceholder="No Group" data-qsoption="No Group" title="No Group" onClick="select_group_v4('0')">No Group</a>
						</li>
					</TMPL_UNLESS>
               		<TMPL_LOOP NAME=USER_GROUP_LIST>
                    	<li>
                    		<a href="javascript:void(0);" class="qsOptions" data-qsplaceholder="<TMPL_VAR NAME=GROUP_NAME_ESC>" data-qsoption="<TMPL_VAR NAME=GROUP_NAME_ESC>" title="<TMPL_VAR NAME=GROUP_NAME_ESC>" onClick="select_group_v4('<TMPL_VAR NAME=GROUP_ID>')">
     		               		<TMPL_VAR NAME=GROUP_NAME_ESC>
                    		</a>
                    	</li>
                	</TMPL_LOOP>
            	</ul> -->
			</div>
		</TMPL_IF>
            </TMPL_IF>
      <TMPL_UNLESS ANNOUNCEMENT_RESULTS_LOOP>
      <TMPL_UNLESS ANNOUNCEMENT_MSG>
		<div class="btn-group btn-group2" role="group">
			<button data-toggle="dropdown" id="options-list" type="button" class="btn btn-link dropdown-toggle">
				<TMPL_IF NAME="USER_NAME">
					<TMPL_VAR NAME="USER_NAME">
				<TMPL_ELSE>
					Unknown
				</TMPL_IF>
				<span class="gear svg-icon-tiny"></span>
				<span class="fa fa-caret-down"></span>
			</button>
			<ul role="menu" class="dropdown-menu">
				<li class="hlOptions">
					<a href="#" onClick="javascript:maybe_show_prefs_save_dialog(function(){get_prefs_data(1);}); return false;">Preferences</a>
				</li>
				<TMPL_IF IS_USER_ADMIN>
				<li class="hlOptions">
					<a href="#" onClick="javascript:maybe_show_prefs_save_dialog(show_risk_admin); return false;">Administration</a>
				</li>
            <TMPL_ELSE>
               <TMPL_IF SA_DISABLED>
               <li class="hlOptions">
                  <a href="javascript:show_risk_admin();">Administration</a>
               </li>
               </TMPL_IF>
				</TMPL_IF>
				<li class="hlOptions">
					<a href="#" onClick="javascript:maybe_show_prefs_save_dialog(function(){get_prefs_data(2);}); return false;">Change Password</a>
				</li>
                <TMPL_IF SHOW_HIDDEN_SEARCHES>
    				<li class="hlOptions" id="disabled_searches_li">
    					<a href="#" onClick="javascript:maybe_show_prefs_save_dialog(display_disable_searches_modal); return false;">Disabled Searches</a>
    				</li>
                </TMPL_IF> 
				<li class="divider"></li>
				<li>
					<a href="#" onClick="javascript:maybe_show_prefs_save_dialog(function(){show_post_popup('MESSAGE/SHOW_ANNOUNCEMENT_LIST','AnnouncementWin','1000','725',1,1,1,1,1,0,'<TMPL_VAR NAME=ACTION>');}); return false;">Announcements</a>
				</li>
			</ul>
		</div>	
		<div class="btn-group btn-group2" role="group">
			<button data-toggle="dropdown" 
					type="button" 
					class="btn btn-link sign-up" 
                                        id="logout-button"
					data-logout-msg="You can improve your security further after logging out by closing this opened browser" 
					data-action="userLogout" 
					onclick="javascript:maybe_show_prefs_save_dialog(<TMPL_IF WEB20_CLEAR_TABS_PROMPT>display_logout_clear_tabs_dialog<TMPL_ELSE>web20_logout</TMPL_IF>);">
				Sign Out
			</button>
		</div>
      </TMPL_UNLESS>
      </TMPL_UNLESS>
	</div>
</header>




