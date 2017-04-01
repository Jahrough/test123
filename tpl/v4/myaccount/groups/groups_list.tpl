<div style="display: block;" class="group_edit_list">
    <div style="display: block;">
        
        <input type="hidden" id="can_add_group" value="<TMPL_UNLESS CANNOT_ADD_GROUP>1<TMPL_ELSE>0</TMPL_UNLESS>">
        <input type="hidden" id="is_admin_reporting" value="<TMPL_VAR IS_ADMIN_REPORTING>"> 
        <input type="hidden" name="IS_DEFAULT_GROUP" id="IS_DEFAULT_GROUP">      
        <input type="hidden" name="HELP_PAGE_NAME" value="bsp_lp_admin_groups_c.html">
        
        <!-- Group: 1234567890 -->
        <table id="groupList" class="table data_table" style="clear:both;">
            <thead>
                <tr>
                    <th id="col_grp_name">Group Name</th>
                    <th id="col_grp_desc">Group Description</th>
                     <TMPL_IF IS_ADMIN_REPORTING>
                       <th id="col_action">Run Report</th>
                     <TMPL_ELSE>
                       <th id="col_action">Delete</th>
                     </TMPL_IF>
                </tr>
            </thead>
            <tbody>
            <TMPL_LOOP NAME=GROUP_LIST>
              <tr>
                <td headers="col_grp_name">
                  <TMPL_UNLESS IS_ADMIN_REPORTING>
                  <a title="<TMPL_VAR NAME=GROUP_NAME>" href="javascript:update_selected_group('<TMPL_VAR NAME=GROUP_ID>','<TMPL_VAR NAME=GROUP_NAME_ESC>', 1, '<TMPL_VAR NAME=GROUP_DESCRIPTION_ESC>',<TMPL_VAR DEFAULT_GROUP>)"><TMPL_VAR NAME=GROUP_NAME></a><TMPL_IF DEFAULT_GROUP> (Your "Default" group cannot be deleted.)</TMPL_IF>
                  <TMPL_ELSE>
                  <TMPL_VAR NAME=GROUP_NAME>
                  </TMPL_UNLESS>
                </td>
                <td headers="col_grp_desc">
                    <TMPL_VAR NAME=GROUP_DESCRIPTION>
                </td>
                <td headers="col_action">
                    <TMPL_IF IS_ADMIN_REPORTING>
                        <a href="javascript:void(0);" class="rptlink iconButton grpRpt" data-group-id="<TMPL_VAR NAME=GROUP_ID>" data-group-desc="<TMPL_VAR NAME=GROUP_NAME_ESC>" title="Run report for group <TMPL_VAR NAME=GROUP_NAME_ESC>">
                            <span class="fa fa-13 fa-file-text pos_1 fa-fw"></span>
                        </a>                         
                    <TMPL_ELSE>
                      <TMPL_UNLESS DEFAULT_GROUP>
                        <a class="group_remove_link iconButton" title="Delete <TMPL_VAR NAME=GROUP_ID>" href="javascript:delete_group(<TMPL_VAR NAME=GROUP_ID>, '<TMPL_VAR NAME=GROUP_NAME_ESC>', <TMPL_VAR NAME=GROUP_USER_COUNT>,0)"><i class="fa fa-15 fa-trash pos_1 fa-fw"></i></a>
                      </TMPL_UNLESS>  
                    </TMPL_IF>
                </td>
              </tr>
            </TMPL_LOOP>
            </tbody>
        </table>
        <!-- /Group: 1234567890 -->
    </div>

    <div style="display: none;" id="delete_group_confirm">
        <div class="fa-16"><i class="fa fa-20 fa-trash pos1 fa-fw redtxt"></i> <span class="gname"></span></div>
        <p>
            Are you sure you want to delete this group?  <span class="fl_right"><a class="group_remove_this" href="javascript:void(0);" rel="modal:close">Yes</a>&nbsp; | &nbsp;<a href="javascript:void(0);" rel="modal:close">No</a></span><span class="clear"></span>
        </p><p>
            Collaboratively aggregate backward-compatible ideas and market positioning bandwidth. Dramatically synergize bleeding-edge expertise before professional outsourcing. Monotonectally parallel task one-to-one imperatives via real-time infrastructures. Quickly formulate parallel action items through backend interfaces.
        </p></div>

</div>



<INPUT TYPE="HIDDEN" NAME="LOGINID" VALUE="">
<INPUT TYPE="HIDDEN" NAME="SORT" VALUE="<TMPL_VAR NAME=SORT>">
<INPUT TYPE="HIDDEN" NAME="OLDSORT" VALUE="<TMPL_VAR NAME=SORT>">
<INPUT TYPE="HIDDEN" NAME="SORTDIR" VALUE="<TMPL_VAR NAME=SORTDIR>">
<INPUT TYPE="HIDDEN" NAME="GROUP_ID" VALUE="<TMPL_VAR NAME=GROUP_ID>">
<INPUT TYPE="HIDDEN" NAME="GROUP_NAME" VALUE="<TMPL_VAR NAME=GROUP_NAME>">
<INPUT TYPE="HIDDEN" NAME="GROUP_USER_COUNT" VALUE="<TMPL_VAR NAME=GROUP_USER_COUNT>">
<INPUT TYPE="HIDDEN" NAME="GROUP_STATUS" VALUE="<TMPL_VAR NAME=GROUP_STATUS>">
<INPUT TYPE="HIDDEN" NAME="GROUP_DESCRIPTION" VALUE="<TMPL_VAR NAME=GROUP_DESCRIPTION>">
<INPUT TYPE="HIDDEN" NAME="DD_BILLGROUP" VALUE="<TMPL_VAR NAME=DD_BILLGROUP>">
