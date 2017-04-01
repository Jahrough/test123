<!-- begin: case_connect/deconflict_prefs.tpl -->
  <script type="text/javascript">//<![CDATA[

    function check_case_connect(cb){
        var enroll_rb = document.getElementById("enroll_en") || {};
        var opt_in_rb = document.getElementById("opt_in_en") || {};
        var cb = [];
        cb[1] = document.getElementById("self_cb");
        cb[2] = document.getElementById("company_cb");
        cb[3] = document.getElementById("le_users_cb");
        cb[4] = document.getElementById("gov_users_cb");
        if( cb[2].checked && !cb[1].checked){
            cb[1].checked = true;
        }
        if( enroll_rb.checked || opt_in_rb.checked ){
          if( !cb[1].checked && !cb[2].checked && !cb[3].checked && !cb[4].checked  ){
            alert('You must choose at least one Permission Level to save your preferences.\n\n');
            cb[1].checked = true;
          }
        }
        try{ // try to chenge opener window as well, search forms tend to maintain input
          var enable = window.opener.document.getElementById("ENABLE_OPT_IN");
          var disable = window.opener.document.getElementById("DISABLE_OPT_IN");
          if(opt_in_rb.checked){
            enable.checked = true;
            disable.checked = false;
          }
          else{
            enable.checked = false;
            disable.checked = true;            
          }
          window.opener.show_hide_perm();
          for(var idx = 1; idx < 5; idx+=1 ){
            var tmp_cb = window.opener.document.getElementById('CC_CHECK'+idx);
            if(tmp_cb){
              if(cb[idx].checked){
                tmp_cb.checked = true;
              }
              else{
                tmp_cb.checked = false;
              }             
            }
          }
        }
        catch(e){}
        return;
    }

  //]]></script>
<noscript>Your browser does not support JavaScript!</noscript>

<div>
    <TMPL_IF NAME="PREFERENCES_ERROR_MESSAGE">
        <div><TMPL_VAR NAME="PREFERENCES_ERROR_MESSAGE"></div>
    </TMPL_IF>
    <div>
        <div style="text-align: left; padding: 4px;">
            <span class="myaccountlabel bold" style="width:260px;display:inline-block;">Case Deconfliction Alert (Enrollment):</span>
            <span style="padding: 2px 25px 2px 10px;">
                <input id="enroll_en" type="radio" name="enroll" value="yes"<TMPL_IF DISABLE_CASE_CONNECT_ENROLL> disabled="true"<TMPL_ELSE><TMPL_IF NAME=enroll> checked="checked"</TMPL_IF></TMPL_IF> onclick="javascript:check_case_connect();"/>
                <label for="enroll_en">Enabled for all searches</label>
            </span>
            <span style="padding: 2px 25px 2px 10px;">
                <input id="enroll_dis" type="radio" name="enroll" value="no"<TMPL_IF DISABLE_CASE_CONNECT_ENROLL> disabled="true" checked="checked"/><TMPL_ELSE><TMPL_UNLESS enroll> checked="checked"</TMPL_UNLESS> onclick="javascript:check_case_connect();"/></TMPL_IF>
                <label for="enroll_dis">Disabled for all searches</label>
            </span>
        </div>
        <div style="text-align: left; padding: 4px;">
            <span class="myaccountlabel bold" style="width:260px;display:inline-block;">Case Deconfliction Opt-In:</span>
            <span style="padding: 2px 25px 2px 10px;">
                <input id="opt_in_en" type="radio" name="opt_in" value="yes"<TMPL_IF DISABLE_CASE_CONNECT_OPT_IN> disabled="true"<TMPL_ELSE><TMPL_IF opt_in>checked="checked" </TMPL_IF></TMPL_IF> onclick="javascript:check_case_connect();"/>
                <label for="opt_in_en">Enabled for all searches</label>
            </span>
            <span style="padding: 2px 25px 2px 10px;">
                <input id="opt_in_dis" type="radio" name="opt_in" value="no"<TMPL_IF DISABLE_CASE_CONNECT_OPT_IN> disabled="true" checked="checked"<TMPL_ELSE><TMPL_UNLESS NAME=opt_in> checked="checked"</TMPL_UNLESS></TMPL_IF> onclick="javascript:check_case_connect();"/>
                <label for="opt_in_dis">Disabled for all searches</label>
            </span>
        </div>
        <div style="text-align: left; padding: 10px 4px 10px 4px;">
            <b>Note:</b> You will have to override this enabled/disabled setting per search if you
            choose to do so. Even if you choose to disable by default, you should select
            choices for which groups you will allow deconfliction to occur, in case
            you allow at search screen.
        </div>
        <div style="text-align: left; padding: 4px;">
            <span style="display: inline-block; padding: 2px 35px 20px 10px;">
                <input id="self_cb" type="checkbox" name="self" value="yes"<TMPL_IF NAME=CC_DISABLED1> disabled="true"<TMPL_ELSE><TMPL_IF NAME=CC_CHECK1> checked="checked"</TMPL_IF></TMPL_IF> onclick="javascript:check_case_connect();"/>
                <label for="self_cb">Internal to My Account</label>
                <span>
                    <a href="javascript:void(0);" style="cursor: help;" onClick="javascript:open_help_html('v3/case_deconfliction_help.html#options','Deconfliction');">
                        <img src="<TMPL_VAR NAME=IMGPATH>/v2/ico_question.gif" alt="More Information" border="0" height="13" hspace="5" width="14"/>
                    </a>
                </span>
                <br/>
                <input id="company_cb" type="checkbox" name="company" value="yes"<TMPL_IF NAME=CC_DISABLED2> disabled="true"<TMPL_ELSE><TMPL_IF NAME=CC_CHECK2> checked="checked"</TMPL_IF></TMPL_IF> onclick="javascript:check_case_connect();"/>
                <label for="company_cb">Internal to My Parent Company (Agency)</label>
            </span>
            <span style="display: inline-block; padding: 2px 35px 20px 10px;">
                <input id="le_users_cb" type="checkbox" name="le_users" value="yes"<TMPL_IF NAME=CC_DISABLED3> disabled="true"<TMPL_ELSE><TMPL_IF NAME=CC_CHECK3> checked="checked"</TMPL_IF></TMPL_IF> onclick="javascript:check_case_connect();"/>
                <label for="le_users_cb">External (Other Law Enforcement Users)</label>
                <br/>
                <input id="gov_users_cb" type="checkbox" name="gov_users" value="yes"<TMPL_IF NAME=CC_DISABLED4> disabled="true"<TMPL_ELSE><TMPL_IF NAME=CC_CHECK4> checked="checked"</TMPL_IF></TMPL_IF> onclick="javascript:check_case_connect();"/>
                <label for="_cb">External (Other Government Users)</label>
            </span>
        </div>
    </div>
</div>
<!-- end: case_connect/deconflict_prefs.tpl -->
