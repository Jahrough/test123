<!-- begin myaccount_security.tpl -->

<TMPL_IF SECURITY_MAIN>
  <TMPL_IF SA_DISABLED>
    <TMPL_INCLUDE NAME="myaccount/sa_disabled_message.tpl">
  <TMPL_ELSE>
    <TMPL_INCLUDE NAME="security/security_body.tpl">
  </TMPL_IF>
</TMPL_IF>
<TMPL_IF SECURITY_COMPANY>
  <TMPL_IF SA_DISABLED>
    <TMPL_INCLUDE NAME="myaccount/sa_disabled_message.tpl">
  <TMPL_ELSE>
    <TMPL_IF MANAGE_COMPANY_DISABLED>
      <TMPL_IF ALLOW_NON_BILLABLE_MANAGE_COMP>
        <TMPL_INCLUDE security/non_billable_manage_company.tpl>
      </TMPL_IF>
    <TMPL_ELSE>
      <TMPL_INCLUDE NAME="myaccount/company_security.tpl">
    </TMPL_IF>
  </TMPL_IF>
</TMPL_IF>
<TMPL_IF UPDATE_RESTRICT_IP>
	<TMPL_INCLUDE NAME="security/restrict_ip_update.tpl">
</TMPL_IF>
<TMPL_IF UPDATE_RESTRICT_IP_STATUS>
	<TMPL_INCLUDE NAME="security/restrict_ip_update_status.tpl">
</TMPL_IF>
<TMPL_IF RESTRICT_IP_HELP>
	<TMPL_INCLUDE NAME="security/restrict_ip_help.tpl">
</TMPL_IF>
<TMPL_IF RESTRICT_IP>
	<TMPL_INCLUDE NAME="security/restrict_ip.tpl">
</TMPL_IF>
<TMPL_IF ADD_RESTRICT_IP>
	<TMPL_INCLUDE NAME="security/restrict_ip_add.tpl">
</TMPL_IF>
<TMPL_IF SEND_RESTRICT_IP_REQUEST>
	<TMPL_INCLUDE NAME="security/restrict_ip_request_form.tpl">
</TMPL_IF>

<!-- end myaccount_security.tpl -->
