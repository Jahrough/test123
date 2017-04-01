<!-- START myaccount_nav.tpl -->
<div id="myaccount-tabs">
    <TMPL_UNLESS BILL_PMT_ONLY>
		<TMPL_IF NAME="MOBILE_ONLY_USER">
			<TMPL_UNLESS HIDE_PASSWORD_CHANGE>
				<TMPL_IF NAME="SA">
					<div class="tab-wrapper" onClick="myaccount_event('MANAGE/MANAGE_ACCOUNTS');">
						<div id="tab-manage" <TMPL_IF MANAGE_TAB>class="myaccount-tab myaccount-tab-active"<TMPL_ELSE>class="myaccount-tab"</TMPL_IF>>
							<div class="myaccounttabstxt">
								<a <TMPL_IF MANAGE_TAB>class="active" </TMPL_IF>href="javascript:void(0);">Manage</a>
							</div>
						</div>
					</div>
				</TMPL_IF>
				<div class="tab-wrapper" onClick="myaccount_event('MANAGE/MANAGE_SINGLE_ACCOUNT');">
					<div id="tab-change-password" <TMPL_IF MANAGE_SINGLE_ACCOUNT>class="myaccount-tab myaccount-tab-active"<TMPL_ELSE>class="myaccount-tab"</TMPL_IF>>
						<div class="myaccounttabstxt">
							<a <TMPL_IF MANAGE_SINGLE_ACCOUNT>class="active" </TMPL_IF>href="javascript:void(0);">Account<br>Credentials</a>
						</div>
					</div>
				</div>
			</TMPL_UNLESS>
			<TMPL_UNLESS CSAML_LOGIN>
				<TMPL_UNLESS DA_ONLY>
					<div class="tab-wrapper" onClick="myaccount_event('MYACCOUNT/SHOW_PREFERENCES');">
						<div id="tab-preferences" <TMPL_IF MYACCOUNT_PREFERENCES>class="myaccount-tab myaccount-tab-active"<TMPL_ELSE>class="myaccount-tab"</TMPL_IF>>
							<div class="myaccounttabstxt">
								<a <TMPL_IF MYACCOUNT_PREFERENCES>class="active" </TMPL_IF>href="javascript:void(0);">Preferences</a>
							</div>
						</div>
					</div>
				</TMPL_UNLESS>
			</TMPL_UNLESS>
			<TMPL_UNLESS NON_BILLABLE_SYSTEM_ADMIN>
				<div class="tab-wrapper" onClick="myaccount_event('MYACCOUNT/SHOW_ORDER_MGR');">
					<div id="tab-report-manager" <TMPL_IF MYACCOUNT_ORDER_MGR>class="myaccount-tab myaccount-tab-active"<TMPL_ELSE>class="myaccount-tab"</TMPL_IF>>
						<div class="myaccounttabstxt">
							<a <TMPL_IF MYACCOUNT_ORDER_MGR>class="active" </TMPL_IF>href="javascript:void(0);">Report<br>Manager</a>
						</div>
					</div>
				</div>
			</TMPL_UNLESS>
		<TMPL_ELSE>
			<TMPL_UNLESS BILLING_END_USER>
				<div class="tab-wrapper" onClick="myaccount_event('MYACCOUNT/SHOW_PROFILE');">
					<div id="tab-summary" <TMPL_IF MYACCOUNT_PROFILE>class="myaccount-tab myaccount-tab-active"<TMPL_ELSE>class="myaccount-tab"</TMPL_IF>>
						<div class="myaccounttabstxt">
							<a <TMPL_IF MYACCOUNT_PROFILE>class="active" </TMPL_IF>>Summary</a>
						</div>
					</div>
				</div>
			</TMPL_UNLESS>

			<TMPL_IF NAME="SA">
				<div class="tab-wrapper" onClick="myaccount_event('MANAGE/MANAGE_ACCOUNTS');">
					<div id="tab-manage" <TMPL_IF MANAGE_TAB>class="myaccount-tab myaccount-tab-active"<TMPL_ELSE>class="myaccount-tab"</TMPL_IF>>
						<div class="myaccounttabstxt">
							<a <TMPL_IF MANAGE_TAB>class="active" </TMPL_IF>href="javascript:void(0);">Manage</a>
						</div>
					</div>
				</div>
			<TMPL_ELSE>
			<TMPL_IF NAME="DYNAMIC_DESKTOP_CHAT">
				<div class="tab-wrapper" onClick="myaccount_event('DYNAMIC_DESKTOP/MANAGE_CHAT');">
					<div id="tab-manage" <TMPL_IF MANAGE_TAB>class="myaccount-tab myaccount-tab-active"<TMPL_ELSE>class="myaccount-tab"</TMPL_IF>>
						<div class="myaccounttabstxt">
							<a <TMPL_IF MANAGE_TAB>class="active" </TMPL_IF>href="javascript:void(0);">Manage</a>
						</div>
					</div>
				</div>
			<TMPL_ELSE>
				<TMPL_IF NAME="SHOW_OTP_USER_TAB">
					<div class="tab-wrapper">
						<div id="tab-manage" <TMPL_IF MANAGE_TAB>class="myaccount-tab myaccount-tab-active"<TMPL_ELSE>class="myaccount-tab"</TMPL_IF>>
							<div class="myaccounttabstxt">Manage</div>
						</div>
					</div>
				</TMPL_IF>
			</TMPL_IF>
			</TMPL_IF>

			<TMPL_UNLESS HIDE_PASSWORD_CHANGE>
				<div class="tab-wrapper" onClick="myaccount_event('MANAGE/MANAGE_SINGLE_ACCOUNT');">
					<div id="tab-change-password" <TMPL_IF MANAGE_SINGLE_ACCOUNT>class="myaccount-tab myaccount-tab-active"<TMPL_ELSE>class="myaccount-tab"</TMPL_IF>>
						<div class="myaccounttabstxt">
							<a <TMPL_IF MANAGE_SINGLE_ACCOUNT>class="active" </TMPL_IF>href="javascript:void(0);">Account<br>Credentials</a>
						</div>
					</div>
				</div>
			</TMPL_UNLESS>

			<TMPL_IF CASE_AUDITOR_TAB>
				<TMPL_IF SHOW_CASE_CONNECT>
					<div class="tab-wrapper" onClick="myaccount_event('CC/MANAGER');">
						<div id="tab-case-connect" <TMPL_IF AUDITOR>class="myaccount-tab myaccount-tab-active"<TMPL_ELSE><TMPL_IF CC_MANAGER>class="myaccount-tab myaccount-tab-active"<TMPL_ELSE>class="myaccount-tab"</TMPL_IF></TMPL_IF>>
							<div class="myaccounttabstxt">
								<a <TMPL_IF AUDITOR>class="active" <TMPL_ELSE><TMPL_IF CC_MANAGER>class="active" </TMPL_IF></TMPL_IF>href="javascript:void(0);">Case<br>Connect</a>
							</div>
						</div>
					</div>
				<TMPL_ELSE>
					<div class="tab-wrapper" onClick="myaccount_event('CC/SHOW_AUDIT');">
						<div id="tab-case-audit" <TMPL_IF AUDITOR>class="myaccount-tab myaccount-tab-active"<TMPL_ELSE>class="myaccount-tab"</TMPL_IF>>
							<div class="myaccounttabstxt">
								<a <TMPL_IF AUDITOR>class="active" </TMPL_IF>href="javascript:void(0);">Case<br>Audit</a>
							</div>
						</div>
					</div>
				</TMPL_IF>
				<TMPL_ELSE>
					<TMPL_IF SHOW_CASE_CONNECT>
						<div class="tab-wrapper" onClick="myaccount_event('CC/MANAGER');">
							<div id="tab-case-connect" <TMPL_IF AUDITOR>class="myaccount-tab myaccount-tab-active"<TMPL_ELSE><TMPL_IF CC_MANAGER>class="myaccount-tab myaccount-tab-active"<TMPL_ELSE>class="myaccount-tab"</TMPL_IF></TMPL_IF>>
								<div class="myaccounttabstxt">
									<a <TMPL_IF AUDITOR>class="active" <TMPL_ELSE><TMPL_IF CC_MANAGER>class="active" </TMPL_IF></TMPL_IF>href="javascript:void(0);">Case<br>Connect</a>
								</div>
							</div>
						</div>
					</TMPL_IF>
			</TMPL_IF>

			<TMPL_IF NAME="SA">
				<div class="tab-wrapper" onClick="myaccount_event('BILLING/SUMMARY');">
					<div id="tab-billing" <TMPL_IF BILLING_SECTION>class="myaccount-tab myaccount-tab-active"<TMPL_ELSE>class="myaccount-tab"</TMPL_IF>>
						<div class="myaccounttabstxt">
							<a <TMPL_IF BILLING_SECTION>class="active" </TMPL_IF>href="javascript:void(0);">Billing<br>Information</a>
						</div>
					</div>
				</div>
				<TMPL_ELSE>
					<TMPL_IF NAME="BILLING_END_USER">
						<div class="tab-wrapper" onClick="myaccount_event('BILLING/SUMMARY');">
							<div id="tab-billing" <TMPL_IF BILLING_SECTION>class="myaccount-tab myaccount-tab-active"<TMPL_ELSE>class="myaccount-tab"</TMPL_IF>>
								<div class="myaccounttabstxt">
									<a <TMPL_IF BILLING_SECTION>class="active" </TMPL_IF>href="javascript:void(0);">Billing<br>Information</a>
								</div>
							</div>
						</div>
					</TMPL_IF>
			</TMPL_IF>

			<TMPL_UNLESS HIDE_ACTIVITY>
				<div class="tab-wrapper" onClick="myaccount_event('MYACCOUNT/SHOW_ACTIVITY', '<TMPL_VAR NAME=ACTION_ADMIN>');">
					<div id="tab-activity" <TMPL_IF MYACCOUNT_ACTIVITY>class="myaccount-tab myaccount-tab-active"<TMPL_ELSE>class="myaccount-tab"</TMPL_IF>>
						<div class="myaccounttabstxt">
							<a <TMPL_IF MYACCOUNT_ACTIVITY>class="active" </TMPL_IF>href="javascript:void(0);">Activity</a>
						</div>
					</div>
				</div>
			</TMPL_UNLESS>

			<div class="tab-wrapper" onClick="myaccount_event('SECURITY/SHOW_SECURITY', '<TMPL_VAR NAME=ACTION_ADMIN>');"> 
				<div id="tab-security" <TMPL_IF MYACCOUNT_SECURITY>class="myaccount-tab myaccount-tab-active"<TMPL_ELSE>class="myaccount-tab"</TMPL_IF>>
					<div class="myaccounttabstxt">
						<a <TMPL_IF MYACCOUNT_SECURITY>class="active" </TMPL_IF>href="javascript:void(0);">Company<br>Security</a>
					</div>
				</div>
			</div> 

			<TMPL_UNLESS CSAML_LOGIN>
				<TMPL_UNLESS DA_ONLY>
					<div class="tab-wrapper" onClick="myaccount_event('MYACCOUNT/SHOW_PREFERENCES');">
						<div id="tab-preferences" <TMPL_IF MYACCOUNT_PREFERENCES>class="myaccount-tab myaccount-tab-active"<TMPL_ELSE>class="myaccount-tab"</TMPL_IF>>
							<div class="myaccounttabstxt">
								<a <TMPL_IF MYACCOUNT_PREFERENCES>class="active" </TMPL_IF>href="javascript:void(0);">Preferences</a>
							</div>
						</div>
					</div>
				</TMPL_UNLESS>
			</TMPL_UNLESS>

			<div class="tab-wrapper" onClick="myaccount_event('MYACCOUNT/SHOW_ORDER_MGR');">
				<div id="tab-report-manager" <TMPL_IF MYACCOUNT_ORDER_MGR>class="myaccount-tab myaccount-tab-active"<TMPL_ELSE>class="myaccount-tab"</TMPL_IF>>
					<div class="myaccounttabstxt">
						<a <TMPL_IF MYACCOUNT_ORDER_MGR>class="active" </TMPL_IF>href="javascript:void(0);">Report<br>Manager</a>
					</div>
				</div>
			</div>
        </TMPL_IF>
        <TMPL_ELSE> 
        <div class="tab-wrapper" onClick="myaccount_event('MANAGE/MANAGE_SINGLE_ACCOUNT');">
            <div id="tab-change-password" <TMPL_IF MANAGE_SINGLE_ACCOUNT>class="myaccount-tab myaccount-tab-active"<TMPL_ELSE>class="myaccount-tab"</TMPL_IF>>
                <div class="myaccounttabstxt">
                    <a <TMPL_IF MANAGE_SINGLE_ACCOUNT>class="active" </TMPL_IF>href="javascript:void(0);">Account<br>Credentials</a>
                </div>
            </div>
        </div>
        <div class="tab-wrapper" onClick="myaccount_event('BILLING/SUMMARY');">
            <div id="tab-billing" <TMPL_IF BILLING_SECTION>class="myaccount-tab myaccount-tab-active"<TMPL_ELSE>class="myaccount-tab"</TMPL_IF>>
                <div class="myaccounttabstxt">
                    <a <TMPL_IF BILLING_SECTION>class="active" </TMPL_IF>href="javascript:void(0);">Billing<br>Information</a>
                </div>
            </div>
        </div>
    </TMPL_UNLESS>

    <TMPL_IF NAME="SA">
        <TMPL_IF PRICE_CAP_COMPANY>
            <div class="tab-wrapper" onClick="myaccount_event('MYACCOUNT/SHOW_PRICE_CAP_CONTROLS');">
                <div id="tab-usage-controls" <TMPL_IF MYACCOUNT_PRICE_CAP_CONTROLS>class="myaccount-tab myaccount-tab-active"<TMPL_ELSE>class="myaccount-tab"</TMPL_IF>>
                    <div class="myaccounttabstxt">
                        <a <TMPL_IF MYACCOUNT_PRICE_CAP_CONTROLS>class="active" </TMPL_IF>href="javascript:void(0);">Usage<br>Controls</a>
                    </div>
                </div>
            </div>
        </TMPL_IF>
    </TMPL_IF>

    <div class="close-button">
        <TMPL_UNLESS SHOW_MYACC_WITHOUT_PARENT>
            <a href="javascript:void(0);" onClick="self.onerror = function() {<TMPL_UNLESS NON_BILLABLE_SYSTEM_ADMIN>window.close();<TMPL_ELSE>javascript:send_event('LOGOUT');</TMPL_UNLESS> return true;}; if (opener) {if (!opener.closed){opener.focus()}}; <TMPL_UNLESS NON_BILLABLE_SYSTEM_ADMIN> window.close(); <TMPL_ELSE> javascript:send_event('LOGOUT'); </TMPL_UNLESS>">&nbsp;</a>
        </TMPL_UNLESS>
    </div>

</div>

<TMPL_INCLUDE NAME="myaccount_pulldown_menus.tpl">
<!-- END myaccount_nav.tpl -->
