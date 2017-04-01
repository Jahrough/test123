 <!-- begin myaccount_navigation.tpl -->
<div id="topheader" class="original" style="visibility: visible;">
        <!-- dropdown menu -->
      <div class="dropdown_menu">
        <ul>
            <li><a <tmpl_unless MANAGE_SHOW_REPORTS><tmpl_if MANAGE_ACCOUNTS>class="active_tab"</tmpl_if></tmpl_unless> href="javascript:show_user_list();" title="Users"><span class="fa fa-16 fa-user pos_1 fa-fw"></span> Users</a></li>
            <li><a <tmpl_unless MANAGE_SHOW_REPORTS><TMPL_IF MANAGE_GROUPS>class="active_tab" </TMPL_IF></tmpl_unless> href="javacript:void(0)" onclick="javascript: return false;" title="Groups"><span class="fa fa-14 fa-users pos_1 fa-fw"></span> Groups <span class="fa fa-angle-down fa-fw"></span></a>
            <ul>
              <li><a <TMPL_UNLESS DISABLE_GROUP_MANAGE>href="javascript:show_billgroups();"</TMPL_UNLESS> title="Manage Groups"><span class="fa fa-14 fa-pencil pos_1 fa-fw"></span> Manage Groups</a></li>
              <li><a href="javascript:myaccount_event('MANAGE/ADD_GROUP');" title="Create Group"><span class="fa fa-14 fa-users pos_1 fa-fw"></span> Create Group</a></li>
            </ul>
          </li>
          <li><a <tmpl_if MANAGE_SHOW_REPORTS>class="active_tab"</tmpl_if> href="javacript: void(0)" onclick="javascript: return false;" title="Reports"><span class="fa fa-14 fa-file pos_1 fa-fw"></span> Reports <span class="fa fa-angle-down fa-fw"></span></a>
            <TMPL_UNLESS DISABLE_RUN_REPORT>
            <ul>
              <li><a href="javascript:show_user_report();" title="User Report"><span class="fa fa-14 fa-user pos_1 fa-fw"></span> User Report</a></li>
              <li><a href="javascript:show_group_report();" title="Group Report"><span class="fa fa-14 fa-users pos_1 fa-fw"></span> Group Report</a></li>
              <li><a href="javascript:show_user_list_report();" title="User List Report"><span class="fa fa-14 fa-list pos_1 fa-fw"></span> User List Report</a></li>
              <li><a href="javascript:show_management_report();" title="Management Report"><span class="fa fa-14 fa-briefcase pos_1 fa-fw"></span> Management Report</a></li>
              <li><a href="javascript:show_activity_report();" title="Activity Report"><span class="fa fa-14 fa-history pos_1 fa-fw"></span> Activity Report</a></li>
              <!--  <li><a href="javascript:show_alert_report();" title="Alert Report"><span class="fa fa-14 fa-exclamation-triangle pos_1 fa-fw"></span> Alert Report</a></li>  -->
              <li><a href="javascript:show_admin_report();" title="Admin Report"><span class="fa fa-14 fa-file-text-o pos_1 fa-fw"></span> Admin Report</a></li>
              <!--  <li><a href="javascript:alert('coming up soon');" title="Archive Report"><span class="fa fa-14 fa-file-archive-o pos_1 fa-fw"></span> Archive Report</a></li> -->
              <li><a href="javascript:show_authentication_service();" title="Authentication Services"><span class="fa fa-14 fa-check-circle-o pos_1 fa-fw"></span> Authentication Services</a></li>
            </ul>
            </TMPL_UNLESS>
          </li>
          <li><a href="https://learn.lexisnexis.com/lexisnexis/user_training.aspx" target="_blank" title="Tutorial"><span class="fa fa-17 fa-info-circle pos_1 fa-fw"></span> Tutorial</a></li>
          <li><a id="risk-admin-help" href="javascript:get_web20_help('risk-admin', $(this));" title="Help"><span class="fa fa-17 fa-question-circle pos_1 fa-fw"></span> Help</a></li>
        </ul>
        
      </div>
      <!-- /dropdown menu -->
      </div>
<!-- end myaccount_navigation.tpl -->
