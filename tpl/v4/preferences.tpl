<!-- BEGIN: preferences.tpl -->
<div id="history-preferences-content">
    <script> var isSha2Password = "<TMPL_VAR SHA2_PASSWORD>";</script>
    <script> var minPasswordLen = "<TMPL_VAR MIN_PASSWORD_LENGTH>";</script>
    <h3 id="pref_header">&nbsp;&nbsp;Preferences</h3>
    <nav id="pref_navigation">
        <TMPL_INCLUDE NAME="preferences/prefs_left_menu.tpl">
    </nav>
    <div id="pref_content">
        <TMPL_INCLUDE NAME="preferences/prefs_account_settings.tpl">
        <TMPL_INCLUDE NAME="preferences/prefs_change_password.tpl">
        <TMPL_INCLUDE NAME="preferences/prefs_sec_questions.tpl">
        <TMPL_INCLUDE NAME="preferences/prefs_search_results_settings.tpl">
        <TMPL_INCLUDE NAME="preferences/prefs_fav_settings.tpl">
    </div>
</div>

    <div id="clear-prefs-modal" class="modal fade bs-example-modal-sm" aria-live="polite" role="dialog" aria-labelledby="clearPrefsModal" aria-hidden="true">
        <div class="modal-dialog trap">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">
                        <span aria-hidden="true">x</span>
                        <span class="sr-only">Close</span>
                    </button>
                    <h4 class="modal-title">Unsaved Changes on <span class="prefs-section-title">Account Settings</span></h4>
                </div>
                <div class="modal-body">
                    <div style="text-align:center;">
                        <p>There are unsaved changes to your <span class="prefs-section-title">Account Settings</span> and the changes will be lost if you continue. Are you sure that you want to continue?</p>
                        <p>Click OK to Continue. You will lose all your unsaved changes.</p>
                        <p>Click Cancel to go back and save the changes before continuing</p>

                        <button data-type="confirm" class="btn btn-danger" type="button">&nbsp;&nbsp;OK&nbsp;&nbsp;</button>
                        <button data-type="cancel" class="btn btn-default" type="button">&nbsp;&nbsp;Cancel&nbsp;&nbsp;</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
<!-- END: preferences.tpl -->
