<!-- begin case_connect/admin_cb_block.tpl -->
<script type="text/javascript">

    // admin page
    function avoid_empty(){
        var cb1 = document.getElementById("self_cb");
        var cb2 = document.getElementById("company_cb");
        var cb3 = document.getElementById("le_users_cb");
        var cb4 = document.getElementById("gov_users_cb");
        if( !cb1.checked && !cb2.checked && !cb3.checked && !cb4.checked  ){
            var enroll_rb = document.getElementById('CC_ENROLL_RB2') || {};
            var opt_in_rb = document.getElementById('CC_OPT_IN_RB2') || {};
            if (enroll_rb) {enroll_rb.checked = true};
            if (opt_in_rb) {opt_in_rb.checked = true};
            var cc_cb_block = document.getElementById('CC_CB_BLOCK');
            cc_cb_block.style.display = 'none';
        }
    }

</script>
<noscript>Your browser does not support JavaScript!</noscript>
          <div id="CC_CB_BLOCK" style="<TMPL_IF DISABLE_CASE_CONNECT_ENROLL><TMPL_IF
DISABLE_CASE_CONNECT_OPT_IN> display:none;<TMPL_ELSE> display:inline-block;</TMPL_IF><TMPL_ELSE> display:inline-block;</TMPL_IF>text-align:left;">
            <input id="self_cb" type="checkbox" name="PERM" value="1000"<TMPL_IF
             CC_DISABLED1> disabled="true"<TMPL_ELSE><TMPL_IF
             CC_CHECK1> checked="checked"</TMPL_IF></TMPL_IF>
             onclick="javascript:avoid_empty();"/>
            <label for="self_cb">Internal to My Account</label>
            <span style="display: inline-block;">
              <a href="javascript:void(0);" style="cursor: help;"
               onclick="javascript:open_help_html('v3/case_deconfliction_help.html#options','Deconfliction');">
              </a>
            </span>
            <br/>
            <input id="company_cb" type="checkbox" name="PERM" value="100"<TMPL_IF
             CC_DISABLED2> disabled="true"<TMPL_ELSE><TMPL_IF
             CC_CHECK2> checked="checked"</TMPL_IF></TMPL_IF>
             onclick="javascript:pair_acct_parent(this);"/>
            <label for="company_cb">Internal to My Parent Company (Agency)</label>
            <br/>
            <input id="le_users_cb" type="checkbox" name="PERM" value="10"<TMPL_IF
             CC_DISABLED3> disabled="true"<TMPL_ELSE><TMPL_IF
             CC_CHECK3> checked="checked"</TMPL_IF></TMPL_IF>
             onclick="javascript:avoid_empty();"/>
            <label for="le_users_cb">External (Other Law Enforcement Users)</label>
            <br/>
            <input id="gov_users_cb" type="checkbox" name="PERM" value="1"<TMPL_IF
             CC_DISABLED4> disabled="true"<TMPL_ELSE><TMPL_IF
             CC_CHECK4> checked="checked"</TMPL_IF></TMPL_IF>
             onclick="javascript:avoid_empty();"/>
            <label for="gov_users_cb">External (Other Government Users)</label>
          </div>
<!-- end case_connect/admin_cb_block.tpl -->
