<!-- begin case_connect/permission_cb.tpl -->
            <span style="display: inline-block; padding: 1px 25px 10px 20px;">
                <div style="padding: 3px;">
                  <input id="CC_CHECK1" type="checkbox" name="PERM" value="1000"
                    <TMPL_IF NAME=CC_DISABLED1> disabled="true"<TMPL_ELSE>
                      <TMPL_IF NAME=CC_CHECK1> checked="checked"</TMPL_IF>
                    </TMPL_IF>/>
                  <label for="CC_CHECK1">Internal to my Account</label>
                </div>
                <div style="padding: 3px;">
                  <input id="CC_CHECK2" type="checkbox"  name="PERM" value="100"
                    <TMPL_IF NAME=CC_DISABLED2> disabled="true"<TMPL_ELSE>
                      <TMPL_IF NAME=CC_CHECK2> checked="checked"</TMPL_IF>
                    </TMPL_IF> onclick=" pair_acct_parent(this);"/>
                  <label for="CC_CHECK2">Internal to my Parent Company</label>
                </div>
            </span>
            <span style="display: inline-block; padding: 1px 25px 10px 20px;">
                <div style="padding: 3px;">
                  <input id="CC_CHECK3" type="checkbox" name="PERM" value="10"
                    <TMPL_IF NAME=CC_DISABLED3> disabled="true"<TMPL_ELSE>
                      <TMPL_IF NAME=CC_CHECK3> checked="checked"</TMPL_IF>
                    </TMPL_IF>/>
                  <label for="CC_CHECK3">External (Other Law Enforcement)</label>
                </div>
                <div style="padding: 3px;">
                  <input id="CC_CHECK4" type="checkbox"  name="PERM" value="1"
                    <TMPL_IF NAME=CC_DISABLED4> disabled="true"<TMPL_ELSE>
                      <TMPL_IF NAME=CC_CHECK4> checked="checked"</TMPL_IF>
                    </TMPL_IF>/>
                  <label for="CC_CHECK4">External (Other Government)</label>
                </div>
            </span>
<!-- end case_connect/permission_cb.tpl -->
