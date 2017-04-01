    <input name="BILL_GROUP" id="billgroup_hidden" value="<TMPL_VAR BILL_GROUP>" type="hidden">
    <input name="IS_UPDATE" id="is_update" value="<TMPL_VAR MANAGE_UPDATE_GROUP>" type="hidden">
    <input name="GROUP_ID" id="group_id" value="<TMPL_VAR GROUP_ID>" type="hidden">
    <input type="hidden" name="HELP_PAGE_NAME" value="bsp_admin_groups_create_t.html">
    
    <a name="top"></a>
    <div class="group_header">
        <TMPL_UNLESS MANAGE_UPDATE_GROUP>
        <TMPL_IF IS_DEFAULT_GROUP>
          <i class="fa fa-16 fa-cog fa-spin pos_1 fa-fw bluetxt"></i>
          <span class="fa-16 bluetxt margin_right_30">Edit: <span class="urlGname"><TMPL_VAR GROUP_NAME></span> <a class="changegroups smalltxt tooltipstered" id="change_groups" href="javascript:myaccount_event('MANAGE/MANAGE_GROUPS');">(Change Group)</a></span>          
        <TMPL_ELSE>
        <i class="fa fa-16 fa-users pos_1 fa-fw bluetxt"></i> 
        <span class="fa-16 bluetxt margin_right_30">Create Group</span>
        </TMPL_IF>
        <TMPL_ELSE>
          <i class="fa fa-16 fa-cog fa-spin pos_1 fa-fw bluetxt"></i>
          <span class="fa-16 bluetxt margin_right_30">Edit: <span class="urlGname"><TMPL_VAR GROUP_NAME></span> <a class="changegroups smalltxt tooltipstered" id="change_groups" href="javascript:myaccount_event('MANAGE/MANAGE_GROUPS');">(Change Group)</a></span>          
        </TMPL_UNLESS>
        Billgroup: <span class="urlGroup"><TMPL_VAR ACTIVE_BILLGROUP_NAME></span> <a class="changebillgroup smalltxt tooltipstered" id="change_billgroup" href="javascript:myaccount_event('MANAGE/MANAGE_GROUPS');">(Change Billgroup)</a>
        <span class="pull-right padding-right-25">  
          <a class="group_remove_link iconButton" title="Delete <TMPL_VAR NAME=GROUP_ID>" href="javascript:delete_group(<TMPL_VAR NAME=GROUP_ID>,'<TMPL_VAR NAME=GROUP_NAME>','<TMPL_VAR NAME=NUM_GROUP_USERS>')"><i class="fa fa-15 fa-trash pos_1 fa-fw"></i>Delete: <TMPL_VAR NAME=GROUP_NAME></a>
        </span>
    </div>
    <div class="group_content">
        <TMPL_IF ERROR_GENERAL>
          <div class="add_edit_error_message redtxt rcorner3">
            <i class="fa fa-14 fa-exclamation-triangle pos_1 fa-fw redtxt"></i> <TMPL_VAR name=ERROR_GENERAL>
          </div>
        </TMPL_IF> 
        <div class="group_settings">
            <strong><label for="group_name">Group Name</label></strong>:
            <TMPL_IF MANAGE_UPDATE_GROUP>
            <INPUT <TMPL_IF IS_DEFAULT_GROUP>readonly </TMPL_IF>TYPE="text" placeholder="Group Name" NAME="GROUP_NAME" id="group_name" SIZE="25" VALUE="<TMPL_VAR NAME=GROUP_NAME>" MAXLENGTH=30>
            <TMPL_ELSE> 
            <INPUT  <TMPL_IF IS_DEFAULT_GROUP>readonly </TMPL_IF>TYPE="text" placeholder="Group Name" NAME="GROUPNAME" id="group_name" SIZE="25" VALUE="<TMPL_VAR NAME=GROUP_NAME>" MAXLENGTH=30>
            </TMPL_IF>
             &nbsp;&nbsp;&nbsp;
            <strong><label for="groupdesc">Group Description</label></strong>: <INPUT <TMPL_IF IS_DEFAULT_GROUP>readonly </TMPL_IF> id="groupdesc" placeholder="Group Description" TYPE="text" NAME="GROUP_DESCRIPTION" SIZE="50" VALUE="<TMPL_VAR NAME=GROUP_DESCRIPTION>" MAXLENGTH=50>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <a class="changebillgroup txt_right tooltipstered" id="change_billgroup" href="javascript:get_show_home_screen();">Simulate the Home Screen</a>
        </div>
        <p>
            <span class="group_selection_note">Group Search Options: All available searches have been preselected.</span>
        </p>

        <div class="group_sections">
            <TMPL_INCLUDE NAME="myaccount/groups/manage_group_left_navigation.tpl">            
                <div class="group_inline_right">
                    <input type="hidden" name="ADDEDUSERS" value="">
                    <TMPL_INCLUDE NAME="myaccount/groups/manage_group_sections.tpl">
                    <TMPL_UNLESS IS_DEFAULT_GROUP>
                    <TMPL_INCLUDE NAME="myaccount/groups/manage_group_users.tpl">
                    </TMPL_UNLESS> 
                </div>
        </div>
    </div>
