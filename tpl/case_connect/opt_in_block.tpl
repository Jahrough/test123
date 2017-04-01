<!-- begin case_connect/opt_in_block.tpl -->
      <tr>
        <td valign="top" align="left">
          <div id="lineVertRedDot"></div>
          <div>
  <script type="text/javascript">//<![CDATA[

    function show_hide_perm(){
        var rb = document.getElementById("ENABLE_OPT_IN");
        var dv = document.getElementById("CC_CB_GROUP");
        if(rb.checked){
            dv.style.display = 'block';
        }
        else{
            dv.style.display = 'none';
        }
        return;
    }

    function toggle_opt_in(cb){
        var options_group = cb.name;
        if(cb && cb.checked == false) {
            // one being turned off check if they are all off and disable opt in
            var options = document.getElementsByName(options_group);
            for(var i=0; i<options.length;i++) {
              var option = options[i];
              if(option.checked)
                  return;
            }
            // all off
            var enable = document.getElementById("ENABLE_OPT_IN");
            var disable = document.getElementById("DISABLE_OPT_IN");
            enable.checked = false;
            disable.checked = true;
            show_hide_perm();
        }
        return;
    }

    function pair_acct_parent(cb){
        var cb1 = document.getElementById("CC_CHECK1");
        if( cb.checked && !cb1.checked){
            cb1.checked = "checked";
        }
        return;
    }

  //]]></script>
            <span style="display: inline-block; padding: 6px 6px 2px 6px;">
              &nbsp;<b><label for="ENABLE_OPT_IN">Case Deconfliction Opt-In:</label></b>&nbsp;
            </span>
            <span style="display: inline-block;">
              <input type="radio" name="CC_OPT_IN" id="ENABLE_OPT_IN" tabindex="13" value="1"<TMPL_IF
               DISABLED_OPT_IN> disabled="true"<TMPL_ELSE> onclick="show_hide_perm();"</TMPL_IF><TMPL_IF
               CC_OPT_IN> checked="checked"</TMPL_IF>/>
              <b><label for="ENABLE_OPT_IN">Enable for this Search</label></b>
            </span>
            <span style="display: inline-block;">
              <input type="radio" name="CC_OPT_IN" id="DISABLE_OPT_IN" tabindex="14" value="0"<TMPL_IF
               DISABLED_OPT_IN> disabled="true"<TMPL_ELSE> onclick="show_hide_perm();"</TMPL_IF>
               <TMPL_UNLESS CC_OPT_IN> checked="checked"</TMPL_UNLESS>/>
              <b><label for="DISABLE_OPT_IN">Disable for this Search</label></b>
            </span>
            <span style="display: inline-block;">
              <a href="javascript:void(0);" style="cursor: help; font: bolder 14px;"
               onClick="javascript:general_win('http://www.accurint.com/help/bps/case_deconfliction_help.html#optin','HelpWindow',680,490,1,1,1,1,1,0);void(0);">
               <img src="<TMPL_VAR NAME=IMGPATH>/ico_question.gif" alt="? Help" 
                border="0" height="13" hspace="5" width="14"/> 
              </a>
            </span>
          </div>
          <div id="CC_CB_GROUP" style="display: <TMPL_IF CC_OPT_IN>block<TMPL_ELSE>none</TMPL_IF>;">
            <span style="display: inline-block; padding: 1px 25px 10px 20px;">
                <div style="padding: 3px;">
                  <input id="CC_CHECK1" type="checkbox" name="PERM" value="1000"
                   onclick="javascript:toggle_opt_in(this);"
                    <TMPL_IF NAME=CC_DISABLED1> disabled="true"<TMPL_ELSE>
                      <TMPL_IF NAME=CC_CHECK1> checked="checked"</TMPL_IF>
                    </TMPL_IF>/>
                  <label for="CC_CHECK1">Internal to my Account</label>
                  <span style="display: inline-block;">
                    <a href="javascript:void(0);" style="cursor: help;"
                     onClick="javascript:general_win('http://www.accurint.com/help/bps/case_deconfliction_help.html#options','HelpWindow',680,490,1,1,1,1,1,0);void(0);">
                      <img src="<TMPL_VAR NAME=IMGPATH>/ico_question.gif" alt="More Information"
                       height="13" hspace="5" width="14"/>
                    </a>
                  </span>
                </div>
                <div style="padding: 3px;">
                  <input id="CC_CHECK2" type="checkbox"  name="PERM" value="100"
                   onclick="javascript:toggle_opt_in(this); pair_acct_parent(this);"
                    <TMPL_IF NAME=CC_DISABLED2> disabled="true"<TMPL_ELSE>
                      <TMPL_IF NAME=CC_CHECK2> checked="checked"</TMPL_IF>
                    </TMPL_IF>/>
                  <label for="CC_CHECK2">Internal to my Parent Company</label>
                </div>
            </span>
            <span style="display: inline-block; padding: 1px 25px 10px 20px;">
                <div style="padding: 3px;">
                  <input id="CC_CHECK3" type="checkbox" name="PERM" value="10"
                   onclick="javascript:toggle_opt_in(this)"
                    <TMPL_IF NAME=CC_DISABLED3> disabled="true"<TMPL_ELSE>
                      <TMPL_IF NAME=CC_CHECK3> checked="checked"</TMPL_IF>
                    </TMPL_IF>/>
                  <label for="CC_CHECK3">External (Other Law Enforcement)</label>
                </div>
                <div style="padding: 3px;">
                  <input id="CC_CHECK4" type="checkbox"  name="PERM" value="1"
                   onclick="javascript:toggle_opt_in(this)"
                    <TMPL_IF NAME=CC_DISABLED4> disabled="true"<TMPL_ELSE>
                      <TMPL_IF NAME=CC_CHECK4> checked="checked"</TMPL_IF>
                    </TMPL_IF>/>
                  <label for="CC_CHECK4">External (Other Government)</label>
                </div>
            </span>
          </div>
        </td>
      </tr>
<!-- end case_connect/opt_in_block.tpl -->
