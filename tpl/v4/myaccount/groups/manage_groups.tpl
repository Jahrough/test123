<i class="fa fa-16 fa-pencil pos_1 fa-fw bluetxt"></i> <span class="fa-16 bluetxt">Manage Groups</span>
<p></p>

<TMPL_INCLUDE NAME="myaccount/groups/select_billgroups.tpl">
<TMPL_IF NAME=SHOW_DATA_IN_GRID>
<TMPL_INCLUDE NAME="myaccount/groups/groups_list.tpl">
</TMPL_IF>
