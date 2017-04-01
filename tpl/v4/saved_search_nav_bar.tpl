<!-- BEGIN:saved_search_nav_bar.tpl  -->
<div class="additional-info">
    <button type="button" data-placement="bottom" class="btn-actions btn print-icon svg-icon-tiny" data-original-title="Print Results" aria-label="Print Results" onclick="show_print_download_dialog('0','print_history');"></button>
    <span class="tooltip tooltip-30 hover">Print Results</span>
</div>
<div class="additional-info">
        <button type="button" data-placement="bottom" class="btn-actions btn download-icon svg-icon-tiny" data-original-title="Download" aria-label="Download" onclick="show_print_download_dialog('0','download_history', '<TMPL_VAR NAME="HISTORY_ACTIVE_PREVIOUS">');"></button>
        <span class="tooltip tooltip-30 hover">Download Results</span>
</div>
<button class="btn pull-right" href="javascript:void(0);" onclick="cancel_saved_searches_page()">Cancel</button>
<div class="additional-info">
    <button type="button" data-placement="bottom" class="btn-actions btn help-search help-icon svg-icon-tiny" onclick="javascript:void(0);">
        <span class="tooltip centered">Help</span>
    </button>
</div>
<!-- END: saved_search_nav_bar.tpl -->
