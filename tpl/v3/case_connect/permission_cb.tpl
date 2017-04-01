<!-- begin case_connect/permission_cb.tpl -->
<div class="pa-checkbox-con">
    <table style="width:100%;">
        <thead style="display: none">
          <tr>
            <th aria-label="Permission">&nbsp;</th>
          </tr>
        </thead>
        <tr>
            <td>
                <input id="CC_CHECK1" type="checkbox" name="PERM" value="1000"
                    <TMPL_IF NAME=CC_DISABLED1> disabled="true"<TMPL_ELSE>
                      <TMPL_IF NAME=CC_CHECK1> checked="checked"</TMPL_IF>
                    </TMPL_IF>/>
                  <label for="CC_CHECK1" class="f-13">Internal to my Account</label>
            </td>
            <td>
                <input id="CC_CHECK2" type="checkbox"  name="PERM" value="100"
                    <TMPL_IF NAME=CC_DISABLED2> disabled="true"<TMPL_ELSE>
                      <TMPL_IF NAME=CC_CHECK2> checked="checked"</TMPL_IF>
                    </TMPL_IF> onclick=" pair_acct_parent(this);"/>
                  <label for="CC_CHECK2" class="f-13">Internal to my Parent Company</label>
            </td>
            <td>
                <input id="CC_CHECK3" type="checkbox" name="PERM" value="10"
                    <TMPL_IF NAME=CC_DISABLED3> disabled="true"<TMPL_ELSE>
                      <TMPL_IF NAME=CC_CHECK3> checked="checked"</TMPL_IF>
                    </TMPL_IF>/>
                  <label for="CC_CHECK3" class="f-13">External (Other Law Enforcement)</label>
            <td>
                <input id="CC_CHECK4" type="checkbox"  name="PERM" value="1"
                    <TMPL_IF NAME=CC_DISABLED4> disabled="true"<TMPL_ELSE>
                      <TMPL_IF NAME=CC_CHECK4> checked="checked"</TMPL_IF>
                    </TMPL_IF>/>
                  <label for="CC_CHECK4" class="f-13">External (Other Government)</label>
            </td>
        </tr>
    </table>
</div>
<!-- end case_connect/permission_cb.tpl -->
