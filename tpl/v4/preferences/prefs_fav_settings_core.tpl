<div role="content">
    <div class="settings-container">
        <form class="smart-form prefs-form container" id="prefs-form-favs-settings" name="PREFS_FORM_FAVS_SETTINGS" novalidate="novalidate">
            <div class="row flat-row">
                <h4 class="col-xs-12 flat-col">Available Searches</h4>
                <div class="inline-display col-xs-12 flat-col" id="myfavs_toggle">
                    <strong>Sort Searches</strong>
                    <label>
                        <input type="radio" name="FAVS_SORT" <TMPL_IF NAME="FAVS_SORT_CATEGORY">checked="checked"</TMPL_IF> id="FAVS_SORT_CATEGORY" onclick="javascript:myfavs_apply_sort_mode();" value="c"/>
                        <span>By category</span>
                    </label>
                    <label>
                        <input type="radio" name="FAVS_SORT" <TMPL_IF NAME="FAVS_SORT_ALPHABETICALLY">checked="checked"</TMPL_IF> id="FAVS_SORT_ALPHA" onclick="javascript:myfavs_apply_sort_mode();" value="a"/>
                        <span>Alphabetically</span>
                    </label>
                </div>
                <div class="col-xs-5 flat-col">
                    <label>
                        <input id="MYFAVS_FILTER" class="form-control" type="text" placeholder="Filter Searches" name="MYFAVS_FILTER" oninput="javascript:myfavs_filter_searches(this);" onkeyup="javascript:myfavs_filter_searches(this);" onblur="javascript:myfavs_filter_searches(this);">
                        <span class="tooltip">Filter Searches</span>
                    </label>
                </div>
            </div>
            <div class="row flat-row">
                <div class="col-xs-5 flat-col">
                    <div class="ulm-wrapper">
                        <ul id="myfavs_full_list" class="ul-multiselect"></ul>
                    </div>
                </div>
                <div class="col-xs-1 flat-col">
                    <div class="myfavs-arrows">
                        <div class="col-xs-12">
                            <a id="myfavs_add" class="btn btn-default btn-sm myfav-arrow-button" onclick="javascript:myfavs_add();" aria-label="Add to Favorites">
                                <i class="fa fa-arrow-circle-right"></i>
                            </a>
                        </div>
                        <div class="col-xs-12">
                            <a id="myfavs_remove" class="btn btn-default btn-sm myfav-arrow-button" onclick="javascript:myfavs_remove();" aria-label="Return to Favorites">
                                <i class="fa fa-arrow-circle-left"></i>
                            </a>
                        </div>
                    </div>
                </div>
                <div class="col-xs-5 flat-col">
                    <div class="ulm-wrapper">
                        <ul id="myfavs_selected_list" class="ul-multiselect"></ul>
                    </div>
                </div>
                <div class="col-xs-1 flat-col">
                    <div class="myfavs-arrows">
                        <div class="col-xs-12">
                            <a id="myfavs_up" class="btn btn-default btn-sm myfav-arrow-button" onclick="javascript:myfavs_up();" aria-label="Move Search Up">
                                <i class="fa fa-arrow-circle-up"></i>
                            </a>
                        </div>
                        <div class="col-xs-12">
                            <a id="myfavs_down" class="btn btn-default btn-sm myfav-arrow-button" onclick="javascript:myfavs_down();" aria-label="Move Search Down">
                                <i class="fa fa-arrow-circle-down"></i>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
            <input type="hidden" name="EVENT" value="MISC/SAVE_WEB20_FAVS">
            <div class="pull-right" id="myfavs-save-exit">
                <input type="button" class="btn btn-danger" value="Save Favorites Settings" onclick="javascript:save_prefs_data(this, 1);
                        $('#pref_content').data('changed', false);
                        return false;">
                <input type="button" class="btn btn-exit-prefs" id="myfavs-exit-btn" onclick="javascript:check_display_cancel_confirmation_dialog(this);
                        return false;" value="Exit Preferences" data-module_num="5">
            </div>
        </form>
        <script>
            $(function () {

                init_myfavs_multiselect();
                //myfavs_apply_sort_mode();
                $(document).off('click', 'li[data-searchidx]');
                $(document).on('click', 'li[data-searchidx]', function (e) {
                    var $li = $(this);
                    if (!e.shiftKey && !e.ctrlKey) {
                        if ($li.hasClass('selected')) {
                            $('.ul-multiselect li.selected').removeClass('selected').removeClass('latest-selected');
                        } else {
                            $('.ul-multiselect li.selected').removeClass('selected');
                            $li.addClass('selected').addClass('latest-selected');
                        }
                    } else if (e.shiftKey) {
                        var $ul = $li.closest('.ul-multiselect');
                        var $all_li = $ul.find('li[data-searchidx]');
                        var this_idx = $all_li.index($li);
                        $all_li.eq(this_idx).prevAll('.selected').first();
                    } else if (e.ctrlKey) {
                        $('.ul-multiselect li.selected').not($li.closest('ul.ul-multiselect').find('li.selected')).removeClass('selected');
                        if ($li.hasClass('selected')) {
                            $li.removeClass('selected');
                        } else {
                            $li.addClass('selected');
                        }
                    }
                });
            });
        </script>
    </div>
</div>
