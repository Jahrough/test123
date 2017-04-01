<!-- begin myaccount.tpl -->
<TMPL_INCLUDE NAME="myaccount_top.tpl">
    <TMPL_IF NAME="INIT_CHECK_ERR_MSG">
    <TMPL_INCLUDE NAME=myaccount_init_checks_err.tpl>
    </TMPL_IF>
    <TMPL_IF NAME="SHOW_ACTIVE_COMPANY_LINK">
    <TMPL_INCLUDE NAME=active_company.tpl>
    </TMPL_IF>
<TMPL_IF NAME="DISABLED">
  <TMPL_INCLUDE NAME=myaccount_disabled.tpl>
<TMPL_ELSE>
  <TMPL_IF NAME="MYACCOUNT_SECURITY">
    <TMPL_INCLUDE NAME=security/myaccount_security.tpl>
  </TMPL_IF>
  <TMPL_IF NAME="MYACCOUNT_ACTIVITY">
    <TMPL_IF SA_DISABLED>
      <TMPL_INCLUDE NAME="sa_disabled_message.tpl">
    <TMPL_ELSE>
      <TMPL_IF ENABLE_GROUP_REPORTS>
        <TMPL_IF MANAGEMENT_REPORTS>
          <TMPL_INCLUDE NAME=myaccount_group_management.tpl>
        <TMPL_ELSE>
          <TMPL_IF NAME="MYACCOUNT_USER_REPORTING">
            <TMPL_INCLUDE NAME=myaccount_user_reporting.tpl>
          <TMPL_ELSE>
            <TMPL_INCLUDE NAME=myaccount_group_activity.tpl>
          </TMPL_IF>
        </TMPL_IF>
      <TMPL_ELSE>
        <TMPL_INCLUDE NAME=myaccount_activity.tpl>
      </TMPL_IF>
    </TMPL_IF>
  </TMPL_IF>
  <TMPL_IF NAME="MYACCOUNT_PROFILE">
    <TMPL_IF SA_DISABLED>
      <TMPL_INCLUDE NAME="sa_disabled_message.tpl">
    <TMPL_ELSE>
      <TMPL_IF NAME="MYACCOUNT_PROFILE_EDIT">
        <TMPL_IF NAME="MYACCOUNT_PROFILE_RCPT">
            <TMPL_INCLUDE NAME=myaccount_chg_receipt.tpl>
        <TMPL_ELSE>
            <TMPL_INCLUDE NAME=myaccount_profile_edit.tpl>
        </TMPL_IF>
      <TMPL_ELSE>
          <TMPL_INCLUDE NAME=myaccount_profile.tpl>
      </TMPL_IF>
    </TMPL_IF>
  </TMPL_IF>
  <TMPL_IF NAME="MYACCOUNT_PREFERENCES">
    <TMPL_IF SA_DISABLED>
      <TMPL_INCLUDE NAME="sa_disabled_message.tpl">
    <TMPL_ELSE>
      <TMPL_IF NAME="IRS">
        <TMPL_INCLUDE NAME=irs/myaccount_preferences.tpl>
      <TMPL_ELSE>
        <TMPL_IF NAME="XBPS">
	   <TMPL_INCLUDE NAME=xbps/myaccount_preferences.tpl>
	<TMPL_ELSE>
	        <TMPL_IF NAME="LOC">
			<TMPL_INCLUDE NAME=loc/myaccount_preferences.tpl>
		<TMPL_ELSE>
	        <TMPL_IF NAME="LNP">
			<TMPL_INCLUDE NAME=lnp/myaccount_preferences.tpl>
		<TMPL_ELSE>
	        <TMPL_IF NAME="TCOL">
			<TMPL_INCLUDE NAME=tcol/myaccount_preferences.tpl>
		<TMPL_ELSE>
	        <TMPL_IF NAME="FCOL">
			<TMPL_INCLUDE NAME=fcol/myaccount_preferences.tpl>
		<TMPL_ELSE>
	        <TMPL_IF NAME="GCOL">
			<TMPL_INCLUDE NAME=gcol/myaccount_preferences.tpl>
		<TMPL_ELSE>
	           <TMPL_INCLUDE NAME=myaccount_preferences.tpl>
		</TMPL_IF>
		</TMPL_IF>
		</TMPL_IF>
		</TMPL_IF>
		</TMPL_IF>
	</TMPL_IF>
      </TMPL_IF>
    </TMPL_IF>
  </TMPL_IF>
  <TMPL_IF NAME="MYACCOUNT_COMPANY_SECURITY">
    <TMPL_INCLUDE NAME=security/myaccount_security.tpl>
  </TMPL_IF>
  <TMPL_IF NAME="MYACCOUNT_ORDER_MGR">
      <TMPL_INCLUDE NAME=myaccount_order_mgr.tpl>
  </TMPL_IF>
  <TMPL_IF CC_MANAGER>
    <TMPL_IF RUN_CC_SUBSCRIBER_LIST>
      <TMPL_INCLUDE case_connect/subscribers.tpl>
    <TMPL_ELSE>
      <TMPL_INCLUDE case_connect/manager.tpl>
    </TMPL_IF>
  </TMPL_IF>
  <TMPL_IF MYACCOUNT_SHOW_PRICE_CAP_CONTORLS>
      <TMPL_INCLUDE NAME=myaccount_price_cap_controls.tpl>
  </TMPL_IF>
</TMPL_IF>
<TMPL_INCLUDE myaccount_bottom.tpl>

<!-- end myaccount.tpl -->
