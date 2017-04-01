<div class="topBarCon">
    <div class="topBarConMiddle">
        <div class="left">
            <ul>
                <li class="ln-logo ln-logo-gov"><div>&nbsp;</div></li>
            </ul>
        </div>
        <div class="right" role="menubar">
            <ul class="topBarButtons">
                <li class="my-accurint-btn">
                    <a href="javascript:void(0);" title="My Accurint">
                        <i class="topbar_myAccurint"></i>
                    </a>
                </li>
                <TMPL_IF NAME="SHOW_CLASSIC_ACCURINT">
                    <li class="former-view-btn">
                        <a href="javascript:send_event_v3('SEARCH/SHOW_CURRENT_VIEW')" title="Former View">
                            <i class="topbar_formerView"></i>
                        </a>
                    </li>
                </TMPL_IF>
                <li class="account-btn">
                    <a href="javascript:show_acct_popover_v3();" title="Account">
                        <i class="topbar_account"></i>
                    </a>
                    <TMPL_INCLUDE NAME="myaccount_menu.tpl">
                </li>
                <li class="sign-out-btn">
                    <a href="javascript:send_event_v3('LOGOUT');" title="Sign Out">
                        <i class="topbar_signOut"></i>
                    </a>
                </li>
            </ul>
        </div>
    </div>
</div>
