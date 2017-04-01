<div id="tab-search-settings" class="tab-pane <TMPL_IF NAME="SEARCH_AND_RESULT">active</TMPL_IF>">
    <h3 class="svg-icon-normal search-within-icon">Search &amp; Results Settings<a href="javascript:void(0);" data-helpid = "PREFERENCES_SEARCH_RESULTS"  class="help-search help-icon svg-icon-normal pull-right "></a></h3>
    <div role="settings-container">
        <form class="smart-form prefs-form" id="prefs-form-search-results-settings">
            <h4>Search Settings</h4>
            <div class="row">
                <div class="col-lg-8 col-md-9 col-sm-12">
                    <label class="checkbox-toggle" for="REMEMBER_LAST_SEARCH_TERMS">
                        <span>Remember last entered terms in search form.</span>
                        <input type="checkbox" id="REMEMBER_LAST_SEARCH_TERMS" name="REMEMBER_LAST_SEARCH_TERMS" <TMPL_IF REMEMBER_LAST_SEARCH_TERMS>checked="checked"</TMPL_IF>>
                        <span class="toggle pull-right">
                            <span class="toggle-on">ON</span>
                            <span class="toggle-switch"></span>
                            <span class="toggle-off">OFF</span>
                        </span>
                    </label>
                </div>
            </div>
            <h4>Results Settings</h4>
            <div class="row">
                <div class="col-lg-8 col-md-9 col-sm-12"">
                    <label class="checkbox-toggle" for="ABBREVIATE_AKAS_LIST">
                        <span>Display abbreviated AKA list.</span>
                        <input type="checkbox" id="ABBREVIATE_AKAS_LIST" name="ABBREVIATE_AKAS_LIST" <TMPL_IF ABBREVIATE_AKAS_LIST>checked="checked"</TMPL_IF>>
                        <span class="toggle pull-right">
                            <span class="toggle-on">ON</span>
                            <span class="toggle-switch"></span>
                            <span class="toggle-off">OFF</span>
                        </span>
                    </label>
                </div>
                <div class="col-lg-8 col-md-9 col-sm-12">
                    <label class="checkbox-toggle" for="FAP_RECENT_ADDRESSES_ONLY">
                        <span>Display only most recent addresses for Find a Person (12 months).</span>
                        <input type="checkbox" id="FAP_RECENT_ADDRESSES_ONLY" name="FAP_RECENT_ADDRESSES_ONLY" <TMPL_IF FAP_RECENT_ADDRESSES_ONLY>checked="checked"</TMPL_IF>>
                        <span class="toggle pull-right">
                            <span class="toggle-on">ON</span>
                            <span class="toggle-switch"></span>
                            <span class="toggle-off">OFF</span>
                        </span>
                    </label>
                </div>
<!--                
                <div class="col-5">
                    <label class="checkbox-toggle" for="NEWS_DUPLICATE_ROLLUP">
                        <span>Roll up duplicate News results.</span>
                        <input type="checkbox" id="NEWS_DUPLICATE_ROLLUP" name="NEWS_DUPLICATE_ROLLUP" <TMPL_IF NEWS_DUPLICATE_ROLLUP>checked="checked"</TMPL_IF>>
                        <span class="toggle pull-right">
                            <span class="toggle-on">ON</span>
                            <span class="toggle-switch"></span>
                            <span class="toggle-off">OFF</span>
                        </span>
                    </label>
                </div>
-->
                <div class="col-lg-8 col-md-9 col-sm-12">
                    <label class="checkbox-toggle" for="PRINT_ON_NEW_PAGE">
                        <span>Print each document on a new page.</span>
                        <input type="checkbox" id="PRINT_ON_NEW_PAGE" name="PRINT_ON_NEW_PAGE" <TMPL_IF PRINT_ON_NEW_PAGE>checked="checked"</TMPL_IF>>
                        <span class="toggle pull-right">
                            <span class="toggle-on">ON</span>
                            <span class="toggle-switch"></span>
                            <span class="toggle-off">OFF</span>
                        </span>
                    </label>
                </div>
                <div class="col-lg-8 col-md-9 col-sm-12">
                    <label for="DISPLAY_RECORD_COUNT">
                        <span class="pull-left col-8">Number of results per page to display</span>
                        <select id="DISPLAY_RECORD_COUNT" name="DISPLAY_RECORD_COUNT" class="form-control col-2 input-xs">
                            <option value="25" <TMPL_IF 25_SELECTED>selected="selected"</TMPL_IF>>25</option>
                            <option value="50" <TMPL_IF 50_SELECTED>selected="selected"</TMPL_IF>>50</option>
                            <option value="75" <TMPL_IF 75_SELECTED>selected="selected"</TMPL_IF>>75</option>
                            <option value="100" <TMPL_IF 100_SELECTED>selected="selected"</TMPL_IF>>100</option>
                        </select>
                    </label>
                </div>
     
               
            </div>
            <h4>Confirmation Messages</h4>
            <div class="row">
                <div class="col-lg-8 col-md-9 col-sm-12">
                    <label for="CLEAR_TABS_PROMPT">
                        <input type="checkbox" id="CLEAR_TABS_PROMPT" name="CLEAR_TABS_PROMPT" <TMPL_IF CLEAR_TABS_PROMPT>checked="checked"</TMPL_IF>>Do not display Sign Out confirmation.
                    </label>
                </div>
                <div class="col-lg-8 col-md-9 col-sm-12 <TMPL_UNLESS CLEAR_TABS_PROMPT>hidden</TMPL_UNLESS>" id="clear-tabs-pref">
                    <label class="checkbox-toggle" for="CLEAR_TABS">
                        <span>Save your Search tabs. Tabs will be kept till midnight ET.</span>
                        <input type="checkbox" id="CLEAR_TABS" name="CLEAR_TABS" <TMPL_UNLESS CLEAR_TABS>checked="checked"</TMPL_UNLESS>>
                        <span class="toggle pull-right">
                            <span class="toggle-on">YES</span>
                            <span class="toggle-switch"></span>
                            <span class="toggle-off">NO</span>
                        </span>
                    </label>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-8 col-md-9 col-sm-12">
                    <label for="CHANGE_GROUP_PROMPT">
                        <input type="checkbox" id="CHANGE_GROUP_PROMPT" name="CHANGE_GROUP_PROMPT" <TMPL_IF CHANGE_GROUP_PROMPT>checked="checked"</TMPL_IF>>Do not display Change Group confirmation.
                    </label>
                    <br/>
                </div>
            </div>
            <input type="hidden" name="EVENT" value="MISC/SAVE_WEB20_PREFS">
            <div class="pull-right">
                <input type="button" class="btn btn-danger" value="Save Search and Results Settings" onclick="javascript:save_prefs_data(this,1);$('#pref_content').data('changed', false);">
                <input type="button" class="btn btn-exit-prefs" onclick="javascript:check_display_cancel_confirmation_dialog(this);return false;" value="Exit Preferences" data-module_num="4">
            </div>
        </form>
    </div>
</div>
