<!-- BEGIN: history_results_nav_bar.tpl -->
<div class="additional-info">
    <button type="button" data-placement="bottom" class="btn-actions btn print-icon svg-icon-tiny" data-original-title="Print Results" aria-label="Print Results" onclick="show_print_download_dialog('0','print_history','<TMPL_VAR NAME="HISTORY_ACTIVE_PREVIOUS">');"></button>
    <span class="tooltip tooltip-35 hover">Print Results</span>
</div>
<div class="additional-info">
        <button type="button" data-placement="bottom" class="btn-actions btn download-icon svg-icon-tiny" data-original-title="Download" aria-label="Download" onclick="show_print_download_dialog('0','download_history', '<TMPL_VAR NAME="HISTORY_ACTIVE_PREVIOUS">');"></button>
        <span class="tooltip tooltip-35 hover">Download Results</span>
</div>
<button type="button" class="btn pull-right pull-right-margin-13" onclick="exit_history_page()">Exit History</button>
<div class="additional-info">
    <button type="button" data-placement="bottom" class="btn-actions btn help-search help-icon svg-icon-tiny" onclick="javascript:void(0);">
        <span class="tooltip centered">Help</span>
    </button>
</div>
<!-- END: history_results_nav_bar.tpl -->
