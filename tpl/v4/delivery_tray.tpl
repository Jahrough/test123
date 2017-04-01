<!-- BEGIN: delivery_tray.tpl --> 
<script type="text/javascript">
    $(function () {
        // Set labels for each row in each group table
        set_group_checkboxes_labels();

        // Hack to undo the main_menu.tpl issue where sides are not flush with container
        $('#main').removeClass('container-fluid');

        // Toggle checkmark for print/download combo buttons
        $('.delivery-tray-download-print-section ul.dropdown-menu li > a').each(
            function (intIndex) {
            $(this).bind("click", function () {
                if (!$(this).prev().html()) {
                    $(this).prev().html('&#x2713');
                    $(this).parent().siblings("li").children("span").empty();

                    var dropdowntype = $(this).parents('ul').children('span').html();

                    // Use this to set a flag somewhere
                    console.log(intIndex === 0 ? 'Using current for all...' : 'Select for each...');
                    console.log('Dropdown Type is: ' + dropdowntype);
                }
            });
        });

        // Set behavior for selecting all groups in the tray with one checkbox
        $('#select-all-groups').change(function(){
            if ($(this).is(':checked')){
                $('.delivery-tray-group-results input[type=checkbox]').prop("checked", true);
            } 
        });

        // Set behavior for each group's toggle-all checkbox to work on that group only as above
        $('.toggle-entire-group-selection').change(function(){
            var $checkboxes = $(this).closest('table').find('input[type=checkbox]');
            if ($(this).is(':checked')){
                $checkboxes.prop("checked", true);
            } else {
                $checkboxes.prop("checked", false);
            }
        });

        // Unchecking any checkbox should also uncheck the 'select all groups' checkbox
        // and the group's toggle-all checkbox 
        $('.delivery-tray-group-results input[type=checkbox]').change(function(){
            if(!$(this).is(':checked'))
                $('#select-all-groups').prop("checked", false);
                $(this).parents('table').find('.toggle-entire-group-selection').prop("checked", false);
        });

    });
</script>

<!-- <TMPL_INCLUDE NAME="search_frequent_favorites_navbar.tpl"> -->
<div id="delivery-tray-content">
        <div id="delivery-tray-header">
            <span class="delivery-tray-icon-black svg-icon-small"></span>
            <span class="delivery-tray-title">Delivery Tray</span>
            <span class="tab-view-return"><a href="#">Return to Tab View >></a></span>
        </div>

        <div class="delivery-tray-download-print-section">
            <div class="btn-group">
              <button type="button" class="btn btn-primary"><img src="<TMPL_VAR NAME=IMGPATH>/v4/SVGs/Download.svg" height="15" width="15"/></button>
              <button type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown">
                <span class="caret"></span>
              </button>
              <ul class="dropdown-menu" role="menu">
                <span>Download Settings</span>
                <li><span>&#x2713</span><a href="#">Use current settings for all downloads</a></li>
                <li><span></span><a href="#">Select settings for every download</a></li>
              </ul>
            </div>
            <div class="btn-group">
              <button type="button" class="btn btn-primary"><img src="<TMPL_VAR NAME=IMGPATH>/v4/SVGs/Print.svg" height="15" width="15"/></button>
              <button type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown">
                <span class="caret"></span>
              </button>
              <ul class="dropdown-menu" role="menu">
                <span>Print Settings</span>
                <li><span>&#x2713</span><a href="#">Use current settings for all printing</a></li>
                <li><span></span><a href="#">Select settings for all printing</a></li>
              </ul>
            </div>
            <span class="help-span">
                <a href="javascript:void(0);" class="help-search help-icon svg-icon-tiny">
                    <span class="tooltip centered">Help</span>
                </a>
            </span>
        </div>

        <p style="text-align: center">Select documents below to deliver them by download or print. Documents in the delivery tray will expire and be removed at the end of the day.</p>

        <div id="delivery-tray-select-remove-all">
            <div>
                <input type="checkbox" name="select-all-groups" id="select-all-groups">
                <label for="select-all-groups">Select all groups in the tray</label>
            </div>
            <div style="text-align: center">
                <span><a href="#"><<</a></span>
                <span><a href="#"><</a></span>
                <span>1 of 1 pages</span>
                <span><a href="#">></a></span>
                <span><a href="#">>></a></span>
            </div>
            <div style="text-align: right">
                <a href="javascript:update_delivery_tray({ACTION_TYPE: 'DELETE', TRAY_ID: get_all_tray_ids()});">
                    <span class="circled-red-x svg-icon-small"></span>
                    <span>Remove all groups</span>
                </a>
            </div>
        </div>

    <TMPL_IF NAME="FAP_SEARCH_LOOP">
        <TMPL_LOOP NAME="FAP_SEARCH_LOOP">
            <table class="delivery-tray-group-results">
                <thead>
                    <tr>
                        <th colspan="2">
                            <span class="person_icon svg-icon-tiny"></span>
                            <span>NAME PLACEHOLDER</span>
                        </th>
                        <th colspan="3">
                        <TMPL_IF NAME="SEARCH_TERMS">
                            <div class="search-terms-con">
                                <b>Search Terms: </b>
                                <TMPL_LOOP NAME="SEARCH_TERMS">
                                    <span class="search-term-label"><TMPL_VAR NAME="TERM_NAME"></span>:&nbsp;<span class="search-term-text"><TMPL_VAR NAME="TERM_VALUE"></span><TMPL_UNLESS IS_LAST_TERM>;&nbsp;</TMPL_UNLESS>
                                </TMPL_LOOP>
                            </div>
                        </TMPL_IF>
                        </th>
                    </tr>
                    <tr>
                        <th style="width: 10%">
                            <label>
                                <input type="checkbox" class="toggle-entire-group-selection"> <strong>Group</strong>
                            </label>
                        </th>
                        <th style="width: 20%"><span>Activity</span></th>
                        <th style="width: 60%"><span>Details</span></th>
                        <th style="width: 5%"><span>Delivered</span></th>
                        <th style="width: 5%; text-align: center">
                            <span class="circled-red-x svg-icon-small"></span>
                        </th>
                    </tr>
                </thead>
                <tbody>
                    <TMPL_LOOP NAME="SEARCH_ROWS">
                        <tr data-tray-record-id="<TMPL_VAR NAME=TRAY_RECORD_ID>">
                            <td>
                                <label><input type="checkbox" /></label>
                            </td>
                            <td><TMPL_VAR NAME=ACTIVITY_NAME></td>
                            <!-- Next script call only works for search results -->
                            <td><a href="javascript:process_tab_request( '<TMPL_VAR NAME=TABID>' , 0, 1 )">
                                <div class='detail-fullname'><TMPL_VAR NAME=DETAIL_FULL_NAME></div>
                                <div class='detail-address'>
                                    <TMPL_VAR NAME="DETAIL_ADDRESS">
                                </div>
                                </a>
                            </td>
                            <td style="text-align: center">
                                <span class="print-icon svg-icon-small"></span>
                            </td>
                            <td style="text-align: center">
                                <a href="javascript:update_delivery_tray({ACTION_TYPE: 'DELETE', TRAY_ID: '<TMPL_VAR NAME=TRAY_RECORD_ID>'});">
                                    <span class="circled-red-x svg-icon-small"></span>
                                </a>
                            </td>
                        </tr>
                    </TMPL_LOOP>
                </tbody>
            </table>
        </TMPL_LOOP>

        <div id="delivery-tray-footer">
            <div style="text-align: center">
                <span><a href="#"><<</a></span>
                <span><a href="#"><</a></span>
                <span>1 of 1 pages</span>
                <span><a href="#">></a></span>
                <span><a href="#">>></a></span>
            </div>
        </div>
    <TMPL_ELSE>
        <h2 style="text-align: center"><TMPL_VAR NAME=EMPTY_TRAY_MESSAGE></h2>
    </TMPL_IF>
</div>
<TMPL_INCLUDE NAME="glb_dppa_selections.tpl">
<!-- END: delivery_tray.tpl
