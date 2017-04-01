<script>
    var _start_page_banner    = <TMPL_IF WEB20_START_PAGE>true<TMPL_ELSE>false</TMPL_IF>;
</script>
<span id="start-page-link" class="button-icon <TMPL_IF WEB20_START_PAGE><TMPL_ELSE>hidden</TMPL_IF> start-page" data-placement="bottom" data-original-title="My Start Page">My Start Page</span>
<a href="#" onClick="javascript:update_start_page_prefs(this); return false;" id="make-start-page-link" class="button-icon <TMPL_IF WEB20_START_PAGE>hidden<TMPL_ELSE></TMPL_IF> make-start-page" data-placement="bottom" data-original-title="Make This My Start Page" data-startpage-idx="<TMPL_VAR NAME="START_PAGE_IDX">">Make This My Start Page</a>
