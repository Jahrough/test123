            <div class="row"/>
            <div class="row"/>
            <div class="row">
            <TMPL_IF SA_DISABLED>
                <h2 class="panel-title pref-section">Administrator Privileges Unavailable in an Unsecure Location</h2>
            <TMPL_ELSE>
                <h2 class="panel-title pref-section">User Privileges Unavailable in an Unsecure Location</h2>
            </TMPL_IF>
            </div>
            <div class="row"/>
            <div class="row"/>
            <div class="row"/>
            <div class="row"/>
            <TMPL_IF SA_DISABLED>
            <div class="row">
                Your administrator privileges have been temporarily suspended because you are accessing our system from a location that is not in the list of approved secure locations.
            </div>
            <TMPL_ELSE>
            <div class="row">
                Some privileges have been temporarily revoked because you are accessing our system from a location not in the list of approved locations
            </div>
            </TMPL_IF>
            <div class="row"/>
            <div class="row">
                To add this location to the list, contact Customer Support at 1-866-277-8407.
            </div>
            <input type="hidden" name="EVENT" value="MISC/SAVE_WEB20_PREFS">
            <div class="row"/>
            <div class="row"/>
            <div class="row"/>
            <div class="row"/>
            <div class="row"/>
            <div class="row"/>
            <div class="center">
                <input type="button" class="btn btn-exit-prefs" onclick="javascript:display_cancel_confirmation_dialog(this);return false;" value="Exit Preferences" data-module_num="4">
            </div>
