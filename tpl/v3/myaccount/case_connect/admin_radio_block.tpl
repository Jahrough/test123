<!-- begin case_connect/admin_radio_block.tpl -->
    <script type="text/javascript">
    // admin page
    function show_hide_cc_block(){
        var enroll_rb = document.getElementById('CC_ENROLL_RB');
        var opt_in_rb = document.getElementById('CC_OPT_IN_RB');
        var cc_cb_block = document.getElementById('CC_CB_BLOCK');
        if( (enroll_rb && enroll_rb.checked) || (opt_in_rb && opt_in_rb.checked) ){
            cc_cb_block.style.display = 'inline-block';
        }
        else{
            cc_cb_block.style.display = 'none';
        }
        return;
    }

    // admin page
    function pair_acct_parent(cb){
        var cb1 = document.getElementById("self_cb");
        if( cb.checked && !cb1.checked){
            cb1.checked = true;
        }
        return;
    }

    </script>
<noscript>Your browser does not support JavaScript!</noscript>
<TMPL_IF SHOW_CASE_CONNECT_ENROLL>
        <fieldset>
          <span class="unifont1bold">
            <legend class="unifont1bold">Case Connect
              <a href="javascript:void(0);" style="cursor: help; font: bolder 12px;"
               onclick="javascript:open_help_html('v3/case_deconfliction_help.html#<TMPL_IF
USERID>setupUser<TMPL_ELSE>setup</TMPL_IF>','Deconfliction');">
              </a>
            </legend>
          </span>
          <table cellpadding="0" cellspacing="0" width="95%">
  <TMPL_IF COMPANY_DISABLE_CASE_CONNECT_ENROLL>
          <input type="hidden" name="DISABLE_CASE_CONNECT_ENROLL" value="<TMPL_IF DISABLE_CASE_CONNECT_ENROLL>1<TMPL_ELSE>0</TMPL_IF>"/>
  <TMPL_ELSE>
          <tr>
            <td class="perc75 unifont1" align="left">&nbsp;Case Deconfliction Alert (Enroll):&nbsp;&nbsp;</td>
            <td class="perc25" align="left">
            <table cellpadding="0" cellspacing="0">
              <tr>
          <td><input type="radio" id="CC_ENROLL_RB" onclick="show_hide_cc_block();"
           name="DISABLE_CASE_CONNECT_ENROLL" value="0" <TMPL_UNLESS DISABLE_CASE_CONNECT_ENROLL>checked="checked" </TMPL_UNLESS>/></td>
          <td class="unifont1">Yes&nbsp;&nbsp;&nbsp;</td>
          <td><input type="radio" id="CC_ENROLL_RB2" onclick="show_hide_cc_block();"
           name="DISABLE_CASE_CONNECT_ENROLL" value="1" <TMPL_IF DISABLE_CASE_CONNECT_ENROLL>checked="checked" </TMPL_IF>/></td>
          <td class="unifont1">No</td>
              </tr>
            </table>
            </td>
          </tr>
  </TMPL_IF>
<TMPL_ELSE>
  <TMPL_IF SHOW_CASE_CONNECT_OPT_IN>
        <fieldset>
          <legend class="unifont1bold">Case Connect
            <a href="javascript:void(0);" style="cursor: help; font: bolder 12px arial,sans-serif;"
             onclick="javascript:open_help_html('v3/case_deconfliction_help.html#<TMPL_IF
USERID>setupUser<TMPL_ELSE>setup</TMPL_IF>','Deconfliction');">
            </a></legend>
          <table cellpadding="0" cellspacing="0" width="95%">
  <TMPL_ELSE>
    <TMPL_IF SHOW_CASE_AUDIT_OPT>
      <TMPL_UNLESS COMPANY_DISABLE_CASE_AUDIT>
        <fieldset>
          <legend class="unifont1bold">Case Connect
            <a href="javascript:void(0);" style="cursor: help; font: bolder 12px arial,sans-serif;"
             onclick="javascript:open_help_html('v3/case_deconfliction_help.html#<TMPL_IF
USERID>setupUser<TMPL_ELSE>setup</TMPL_IF>','Deconfliction');">
            </a>
          </legend>
          <table cellpadding="0" cellspacing="0" width="95%">
      </TMPL_UNLESS>
    </TMPL_IF>
  </TMPL_IF>
</TMPL_IF>
<TMPL_IF SHOW_CASE_CONNECT_OPT_IN>
  <TMPL_IF COMPANY_DISABLE_CASE_CONNECT_OPT_IN>
          <input type="hidden" name="DISABLE_CASE_CONNECT_OPT_IN" value="<TMPL_IF DISABLE_CASE_CONNECT_OPT_IN>1<TMPL_ELSE>0</TMPL_IF>"/>
  <TMPL_ELSE>
          <tr>
            <td class="perc75 unifont1" align="left">&nbsp;Case Deconfliction Opt-in:&nbsp;&nbsp;</td>
            <td class="perc25" align="left">
              <table cellpadding="0" cellspacing="0">
                <tr>
                  <td><input type="radio" id="CC_OPT_IN_RB" onclick="show_hide_cc_block();"
                   name="DISABLE_CASE_CONNECT_OPT_IN" value="0" <TMPL_UNLESS DISABLE_CASE_CONNECT_OPT_IN>checked="checked" </TMPL_UNLESS>/></td>
                  <td class="unifont1">Yes&nbsp;&nbsp;&nbsp;</td>
                  <td><input type="radio" id="CC_OPT_IN_RB2" onclick="show_hide_cc_block();"
                   name="DISABLE_CASE_CONNECT_OPT_IN" value="1" <TMPL_IF DISABLE_CASE_CONNECT_OPT_IN>checked="checked" </TMPL_IF>/></td>
                  <td class="unifont1">No</td>
                </tr>
              </table>
            </td>
          </tr>
  </TMPL_IF>
            <tr>
              <td class="unifont1" colspan="2" align="center">
    <TMPL_INCLUDE NAME=myaccount/case_connect/admin_cb_block.tpl>
              </td>
            </tr>
<TMPL_ELSE>
  <TMPL_IF SHOW_CASE_CONNECT_ENROLL>
            <tr>
              <td class="unifont1" colspan="2" align="center">
      <TMPL_INCLUDE NAME=myaccount/case_connect/admin_cb_block.tpl>
              </td>
            </tr>
  </TMPL_IF>
</TMPL_IF>
<TMPL_IF SHOW_CASE_AUDIT_OPT>
  <TMPL_IF SECURITY_COMPANY>
            <tr>
              <td class="perc75 unifont1" align="left">
                &nbsp;Case Audit Compliance:&nbsp;
                <a href="javascript:void(0);" style="cursor: help;"
                 onclick="javascript:open_help_html('case_audit_help.html#setup','Audit');">
                </a>
              </td>
              <td class="perc25" align="left">
                <table cellpadding="0" cellspacing="0">
                  <tr>
                    <td>
                      <input type="radio" name="DISABLE_CASE_AUDIT" value="0"
                       <TMPL_UNLESS DISABLE_CASE_AUDIT>checked="checked" </TMPL_UNLESS>/>
                    </td>
                    <td class="unifont1">Yes&nbsp;&nbsp;&nbsp;</td>
                    <td>
                      <input type="radio" name="DISABLE_CASE_AUDIT" value="1"
                       <TMPL_IF DISABLE_CASE_AUDIT>checked="checked" </TMPL_IF>/>
                    </td>
                    <td class="unifont1">No</td>
                  </tr>
                </table>
              </td>
            </tr>
  <TMPL_ELSE>
    <TMPL_IF COMPANY_DISABLE_CASE_AUDIT>
            <input type="hidden" name="CASE_AUDIT_EXEMPT"
             value="<TMPL_IF CASE_AUDIT_EXEMPT>1<TMPL_ELSE>0</TMPL_IF>"/>
            <input type="hidden" name="CASE_CONNECT_AUDITOR"
             value="<TMPL_IF CASE_CONNECT_AUDITOR>1<TMPL_ELSE>0</TMPL_IF>"/>
    <TMPL_ELSE>
            <tr>
              <td class="perc75 unifont1" align="left">
                &nbsp;Case Auditor:&nbsp;
                <a href="javascript:void(0);" style="cursor: help;"
                 onclick="javascript:open_help_html('case_audit_help.html#user','Audit');">
                </a>
              </td>
              <td class="perc25" align="left">
              <table cellpadding="0" cellspacing="0">
                <tr>
                  <td>
                    <input type="radio" name="CASE_CONNECT_AUDITOR" value="1"
                     <TMPL_IF CASE_CONNECT_AUDITOR>checked="checked" </TMPL_IF>/>
                  </td>
                  <td class="unifont1">Yes&nbsp;&nbsp;&nbsp;</td>
                  <td>
                    <input type="radio" name="CASE_CONNECT_AUDITOR" value="0"
                     <TMPL_UNLESS CASE_CONNECT_AUDITOR>checked="checked" </TMPL_UNLESS>/>
                  </td>
                  <td class="unifont1">No</td>
                </tr>
              </table>
              </td>
            </tr>
            <tr>
              <td class="perc75 unifont1" align="left">
                &nbsp;User Audit Exempt:&nbsp;
                <a href="javascript:void(0);" style="cursor: help;"
                 onclick="javascript:open_help_html('case_audit_help.html#exempt','Audit');">
                </a>
              </td>
              <td class="perc25" align="left">
              <table cellpadding="0" cellspacing="0">
                <tr>
                  <td>
                    <input type="radio" name="CASE_AUDIT_EXEMPT" value="1"
                     <TMPL_IF CASE_AUDIT_EXEMPT>checked="checked" </TMPL_IF>/>
                  </td>
                  <td class="unifont1">Yes&nbsp;&nbsp;&nbsp;</td>
                  <td>
                    <input type="radio" name="CASE_AUDIT_EXEMPT" value="0"
                     <TMPL_UNLESS CASE_AUDIT_EXEMPT>checked="checked" </TMPL_UNLESS>/>
                  </td>
                  <td class="unifont1">No</td>
                </tr>
              </table>
              </td>
            </tr>
    </TMPL_IF>
  </TMPL_IF>
</TMPL_IF>
<TMPL_IF SHOW_CASE_CONNECT_ENROLL>
          </table>
        </fieldset>
<TMPL_ELSE>
  <TMPL_IF SHOW_CASE_CONNECT_OPT_IN>
          </table>
        </fieldset>
  <TMPL_ELSE>
    <TMPL_IF SHOW_CASE_AUDIT_OPT>
      <TMPL_UNLESS COMPANY_DISABLE_CASE_AUDIT>
          </table>
        </fieldset>
      </TMPL_UNLESS>
    </TMPL_IF>
  </TMPL_IF>
</TMPL_IF>
<!-- end case_connect/admin_radio_block.tpl -->
