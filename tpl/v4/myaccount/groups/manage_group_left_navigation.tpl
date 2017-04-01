<!-- inline left -->
<div id="group_left_nav" class="group_inline_left">
  <ul> 
    <li class="group_pick_all" title="Show All">
      <a class="show_all_icon svg-icon-tiny" href="javascript:void(0);">Show All</a>
    </li>
    <li class="group_pick active" section="1" title="Know Your Customer">
      <a class="person_icon svg-icon-tiny" href="javascript:void(0);">People</a>
    </li>
    <li class="group_pick" section="2" title="Business">
      <a class="bus_icon svg-icon-tiny" href="javascript:void(0);">Business</a>
    </li>
    <li class="group_pick" section="3" title="Property &amp; Assets">
      <a class="property_icon svg-icon-tiny" href="javascript:void(0);">Property &amp; Assets</a>
    </li>
    <li class="group_pick" section="4" title="Court &amp; Admin Filings">
      <a class="court_icon svg-icon-tiny" href="javascript:void(0);">Court &amp; Admin Filings</a>
    </li>
    <li class="group_pick" section="5" title="News">
      <a class="news_icon svg-icon-tiny" href="javascript:void(0);">News</a>
    </li>
    <li class="group_pick" section="6" title="Direct-to-Source Records">
      <a class="direct_to_source_icon svg-icon-tiny" href="javascript:void(0);">Direct-to-Source Records</a>
    </li>
    <TMPL_IF SHOW_REG_COMPLIANCE>
      <li class="group_pick" section="7" title="Regulations &amp; Compliance">
        <a class="regulations_icon svg-icon-tiny" href="javascript:void(0);">Regulations &amp; Compliance</a>
      </li>
    </TMPL_IF>
    <li class="group_pick" section="8" title="International">
      <a class="international_icon svg-icon-tiny" href="javascript:void(0);">International</a>
    </li>
    <li class="group_pick" section="9" title="Authentications Services">
      <a class="authentication_services_icon svg-icon-tiny" href="javascript:void(0);">Authentications Services</a>
    </li>
    <TMPL_IF ENABLE_CREDIT_PURSUIT>
      <li class="group_pick" section="10" title="LexisNexis® Credit Pursuit (FCRA)">
        <i class="fa fa-10 fa-credit-card pos2 fa-fw"></i> 
        <a href="javascript:void(0);">LexisNexis® Credit Pursuit (FCRA)</a>
      </li>
    </TMPL_IF>
    <li class="group_pick" section="11" title="Optional Group Selections">
      <a class="optional_group_icon svg-icon-tiny" href="javascript:void(0);">Optional Group Selections</a>
    </li>
    <li class="group_pick" section="12" title="Reports">
      <a class="document-icon svg-icon-tiny" href="javascript:void(0);">Reports</a>
    </li>
    <TMPL_UNLESS IS_DEFAULT_GROUP>
      <li class="group_pick" section="13" title="Assign Users">
        <a class="assign_users_icon svg-icon-tiny" href="javascript:void(0);">Assign Users</a>
      </li>
    </TMPL_UNLESS>
  </ul>
  <p></p>
  <div id="group_form_buttons">
    <a class="submitBtn" href="javascript:confirm_add_group_fields();" title="<TMPL_UNLESS MANAGE_UPDATE_GROUP><TMPL_UNLESS IS_DEFAULT_GROUP>Create<TMPL_ELSE>Save</TMPL_UNLESS><TMPL_ELSE>Save</TMPL_UNLESS>">
      <TMPL_IF MANAGE_UPDATE_GROUP>
        Save
      <TMPL_ELSE>
        <TMPL_IF IS_DEFAULT_GROUP>
          Save
        <TMPL_ELSE>
          Create
        </TMPL_IF>
      </TMPL_IF>
    </a>
    &nbsp;
    <a class="cancelBtn" href="javascript:myaccount_event('MANAGE/MANAGE_GROUPS')" title="Cancel">Cancel</a>        
  </div>
</div>
<!-- /inline left -->