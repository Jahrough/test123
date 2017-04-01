<!-- begin myaccount/manage_groups.tpl -->
<input type=hidden name="PAGE_NUMBER" value=<TMPL_IF NAME="CURRENT_PAGE"><TMPL_VAR NAME="CURRENT_PAGE"><TMPL_ELSE>1</TMPL_IF>>
<input type=hidden name="PREVIOUS_ALL_GROUPS" value=<TMPL_VAR NAME="PREVIOUS_ALL_GROUPS">>
<input type=hidden name="SUSPEND_CHECKED_GROUPS" value=0>


<div class="myaccount-section-title">Manage Groups</div>
<div class="myaccount-sections">

    <div class="section">
        <div class="section-row mgt10 mgb10">
            <TMPL_UNLESS CANNOT_ADD_GROUP>
                <div class="btn red-btn mgl15">
                    <a href="javascript:send_event('MANAGE/ADD_GROUP')">Add Group</a>
                </div>
            </TMPL_UNLESS>
            <div class="btn grey-btn">
                <a href="javascript:send_event('MANAGE/DELETE_GROUP');" onClick="return delete_group()">Delete Group</a>
            </div>
        </div>
    </div>

    <TMPL_IF NAME="MANAGE_GROUP_ERROR">
        <div class="section">
            <div class="section-row mgt10 mgb10">
                 <div class="errormessage pd10 mgb5 bold">
                    <TMPL_IF NAME="ERROR_NOSELECT">Please Select a Group</TMPL_IF>
                </div>
            </div>
        </div>
    </TMPL_IF>

    <TMPL_IF NAME="GROUP_ADDED">
        <div class="section">
            <div class="section-row mgt10 mgb10">
                 <div class="successmessage pd10 mgb5 bold">
                    <TMPL_VAR NAME="GROUP_ADDED">
                </div>
            </div>
        </div>
    </TMPL_IF>

    <TMPL_IF NAME="MESSAGE">
        <div class="section">
            <div class="section-row mgt10 mgb10">
                 <div class="successmessage pd10 mgb5 bold">
                    <TMPL_VAR NAME=MESSAGE>
                </div>
            </div>
        </div>
    </TMPL_IF>

    <TMPL_IF NAME=GROUP_LIST>
        <div class="section">
            <div class="section-row">
                <table class="sortable" id="order_list">
                    <thead>
                        <tr>
                            <th id="col_del" style="width:40px !important;">Delete</th>
                            <th id="col_grp_nam">Group Name</th>
                        </tr>
                    </thead>
                    <tbody>
                    <TMPL_LOOP NAME=GROUP_LIST>
                        <tr>
                            <td headers="col_del" class="ta-center">
                                <input type="radio" name="admingroup" value="<TMPL_VAR NAME=GROUP_ID>" onClick="delete_group_set(<TMPL_VAR NAME=GROUP_ID>, '<TMPL_VAR NAME=GROUP_NAME_ESC>', <TMPL_VAR NAME=GROUP_USER_COUNT>,0)"/>
                            </td>
                            <td headers="col_grp_nam">
                                <a class="myaccLnk" href="javascript:update_group('<TMPL_VAR NAME=GROUP_ID>','<TMPL_VAR NAME=GROUP_NAME_ESC>', 1)"><b><TMPL_VAR NAME=GROUP_NAME></b></a>
                            </td>
                        </tr>
                    </TMPL_LOOP>
                    </tbody>
                </table>
            </div>
        </div>
    <TMPL_ELSE>
        <div class="section">
            <div class="section-row">
                <div>
                    Please add a group with the above "Add Group" button
                </div>
            </div>
        </div>
    </TMPL_IF>

</div>
<TMPL_INCLUDE NAME=myaccount_footer.tpl>


<INPUT TYPE="HIDDEN" NAME="LOGINID" VALUE="">
<INPUT TYPE="HIDDEN" NAME="SORT" VALUE="<TMPL_VAR NAME=SORT>">
<INPUT TYPE="HIDDEN" NAME="OLDSORT" VALUE="<TMPL_VAR NAME=SORT>">
<INPUT TYPE="HIDDEN" NAME="SORTDIR" VALUE="<TMPL_VAR NAME=SORTDIR>">
<INPUT TYPE="HIDDEN" NAME="GROUP_ID" VALUE="<TMPL_VAR NAME=GROUP_ID>">
<INPUT TYPE="HIDDEN" NAME="GROUP_NAME" VALUE="<TMPL_VAR NAME=GROUP_NAME>">
<INPUT TYPE="HIDDEN" NAME="GROUP_USER_COUNT" VALUE="<TMPL_VAR NAME=GROUP_USER_COUNT>">
<INPUT TYPE="HIDDEN" NAME="GROUP_STATUS" VALUE="<TMPL_VAR NAME=GROUP_STATUS>">
<!-- end myaccount/manage_groups.tpl -->
