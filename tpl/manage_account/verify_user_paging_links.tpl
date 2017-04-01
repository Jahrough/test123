
<!-- begin: $RCSfile: verify_user_paging_links.tpl,v $ -->
    <TMPL_IF NAME=OFFSET>
    <a href="javascript:show_verify_users_pos(<TMPL_VAR NAME=PREV_OFFSET>)">&lt; PREV</a>
    <TMPL_ELSE> 
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </TMPL_IF>
    &nbsp;&nbsp;
    <b>Results <TMPL_VAR NAME=RESULT_START> - <TMPL_VAR NAME=RESULT_END> of <TMPL_VAR NAME=TOTAL_ACTIVE_USERS></b>
    &nbsp;&nbsp;
    <TMPL_IF NAME=NEXT_OFFSET>
    <a href="javascript:show_verify_users_pos(<TMPL_VAR NAME=NEXT_OFFSET>)">NEXT &gt;</a>
    <TMPL_ELSE> 
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </TMPL_IF>
<!-- end: $RCSfile: verify_user_paging_links.tpl,v $ -->
