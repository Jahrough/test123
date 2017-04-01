<!-- begin admin_headbar.tpl -->
    <div class="top_border">
      <div class="nav">
        <ul>
          <li><a href="javascript:void(0);" id="SUMMARY"><span>Summary</span></a></li>
<TMPL_IF SA>
          <li><a href="javascript:void(0);" id="ACCOUNTS"><span>Manage Users</span></a></li>
  <TMPL_IF GROUPS_ENABLED>
          <li><a href="javascript:void(0);" id="GROUPS"><span>Manage Groups</span></a></li>
  </TMPL_IF>
  <TMPL_UNLESS MANAGE_COMPANY_DISABLED>
          <li><a href="javascript:void(0);" id="COMPANY"><span>Manage Company</span></a></li>
  </TMPL_UNLESS>
</TMPL_IF>
<TMPL_UNLESS DISABLE_USER_PASSWORD_CHANGES>
          <li><a href="javascript:void(0);" id="PASSWD"><span>Change Password</span></a></li>
</TMPL_UNLESS>
<TMPL_IF CASE_AUDITOR_TAB>
          <li><a href="javascript:void(0);" id="AUDIT"><span>Case Audit</span></a></li>
</TMPL_IF>
<TMPL_IF SA>
          <li><a href="javascript:void(0);" id="BILLING"><span>Billing Information</span></a></li>
</TMPL_IF>
          <li><a href="javascript:void(0);" id="ACTIVITY"><span>Activity</span></a></li>
          <li><a href="javascript:void(0);" id="SECURITY"><span>Company Security</span></a></li>
<TMPL_UNLESS DA_ONLY>
          <li><a href="javascript:void(0);" id="PREFS"><span>Preferences</span></a></li>
</TMPL_UNLESS>
<TMPL_UNLESS NON_BILLABLE_SYSTEM_ADMIN>
          <li><a href="javascript:void(0);" id="MANAGER"><span>Report Manager</span></a></li>
</TMPL_UNLESS>
        </ul>
      </div>
      <div class="top_right">
        <a href="javascript:void(0);" id="CLOSE"><span>Close</span></a>
      </div>
    </div>
    <div class="help_box">
      <a href="javascript:void(0);" id="HELP"><span>Help</span></a>
      24/7 Se4rch and Technical Assistance: 1-866-277-8407 OR
      <a id="CHAT" rel="external"
       href="https://accurint.custhelp.com/cgi-bin/accurint.cfg/php/enduser/chat.php">
        Click For Live Chat
      </a>
    </div>

<script type="text/javascript">//<![CDATA[

    Event.observe( "SUMMARY", "click", function(event){
      send_event("MYACCOUNT/SHOW_PROFILE");
    });

<TMPL_IF SA>
    Event.observe( "ACCOUNTS", "click", function(event){
      send_event("MANAGE/MANAGE_ACCOUNTS");
    });
    Event.observe( "GROUPS", "click", function(event){
      send_event("MANAGE/MANAGE_GROUPS");
    });

  <TMPL_UNLESS MANAGE_COMPANY_DISABLED>
    Event.observe( "COMPANY", "click", function(event){
      send_event("SECURITY/SHOW_COMPANY_SECURITY");
    });

  </TMPL_UNLESS>
</TMPL_IF>
<TMPL_UNLESS DISABLE_USER_PASSWORD_CHANGES>
    Event.observe( "PASSWD", "click", function(event){
      send_event("MANAGE/MANAGE_SINGLE_ACCOUNT");
    });

</TMPL_UNLESS>
<TMPL_IF CASE_AUDITOR_TAB>
    Event.observe( "AUDIT", "click", function(event){
      send_event("CC/SHOW_AUDIT");
    });

</TMPL_IF>
<TMPL_IF SA>
    Event.observe( "BILLING", "click", function(event){
      send_event("BILLING/SUMMARY");
    });

</TMPL_IF>
    Event.observe( "ACTIVITY", "click", function(event){
      send_event( "MYACCOUNT/SHOW_ACTIVITY", "<TMPL_VAR ACTION_ADMIN>" );
    });

    Event.observe( "SECURITY", "click", function(event){
      send_event( "SECURITY/SHOW_SECURITY", "<TMPL_VAR ACTION_ADMIN>" );
    });

<TMPL_UNLESS DA_ONLY>
    Event.observe( "PREFS", "click", function(event){
      send_event("MYACCOUNT/SHOW_PREFERENCES");
    });

</TMPL_UNLESS>
<TMPL_UNLESS NON_BILLABLE_SYSTEM_ADMIN>
    Event.observe( "MANAGER", "click", function(event){
<TMPL_IF ALLOW_BATCH_JOBS>
      send_event( "MYACCOUNT/SHOW_ORDER_MGR_BATCH", "<TMPL_VAR ACTION_BATCH>" );
<TMPL_ELSE>
      send_event("MYACCOUNT/SHOW_ORDER_MGR");
</TMPL_IF>
    });
</TMPL_UNLESS>

    Event.observe( "CLOSE", "click", function(event){
      window.close();
    });

//]]></script>

<!-- end admin_headbar.tpl -->
