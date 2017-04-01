<script type="text/javascript">
    $(function() {
        $('#passportsorvisa').click();
        $('#passportsorvisa').click(function () {
            if($('#passportorvisa_more').hasClass('hidden')) {
                $('#passportorvisa_more').removeClass('hidden');
                $('#passportsorvisa').removeClass('collapsed');
            } else {
                $('#passportorvisa_more').addClass('hidden');
                $('#passportsorvisa').addClass('collapsed');
            }
        });

        $('#watchlists_global').click();
        $('#watchlists_global').click(function () {
            if($('#watchlists_global_more').hasClass('hidden')) {
                $('#watchlists_global_more').removeClass('hidden');
                $('#watchlists_global').removeClass('collapsed');
            } else {
                $('#watchlists_global_more').addClass('hidden');
                $('#watchlists_global').addClass('collapsed');
            }
        });

        $('#farapep-watchlists').click();
        $('#farapep-watchlists').click(function () {
            if($('#watchlist_fara_more').hasClass('hidden')) {
                $('#watchlist_fara_more').removeClass('hidden');
                $('#farapep-watchlists').removeClass('collapsed');
            } else {
                $('#watchlist_fara_more').addClass('hidden');
                $('#farapep-watchlists').addClass('collapsed');
            }
        });        
        
        $('#GLOB_ALLSACTIONS').change(function() {
            if($(this).is(':checked')){
                $('#watchlist_global').find(':checkbox').prop('checked', true);
            } else {
                $('#watchlist_global').find(':checkbox').removeAttr('checked');
            }
        });
    });
</script>
<TMPL_IF NAME=SHOW_INTL_INSTANTID>
    <div class="row hidden" id="watchlists_container">
        <TMPL_INCLUDE NAME="ofac_watchlists.tpl">
    </div>
    <div class="row hidden" id="instantid_birthdate">
        <TMPL_INCLUDE NAME="instantid_birthdate_radius.tpl">
    </div>
</TMPL_IF>
<div class="row" id='watchlists-info'>
    <div id="watchlists_more" class="clear col col-9 collapse in">
        <div id="watchlist_fara" class="clear col col-9 collapse in hidden">
            <div class="col col-9">
                <button type="button" id="farapep-watchlists" class="btn btn-link">
                    <strong><span>FARA &amp; PEP</span></strong>
                    <span class="show-hidden-data-icon"></span>
                </button><br />
            </div>
            <div id="watchlist_fara_more" class="clear col col-9 collapse in hidden">
                <ul class="unmarked_list">
                    <li>
                        <label for="FAR_CHECK" class="check">
                            <input type="checkbox" name="far_check" id="FAR_CHECK" checked="checked"><span>Foreign Agent Registrations</span>         
                        </label>
                    </li>
                    <li>
                        <label for="PEP_CHECK" class="check">
                            <input type="checkbox" name="pep_check" id="PEP_CHECK" checked="checked"><span>Politically Exposed Persons</span>
                        </label>
                    </li>
                </ul>
            </div>
        </div>

        <div id="watchlist_global" class="hidden">
            <div class="col col-9">
                <button type="button" id="watchlists_global" class="btn btn-link">
                    <strong><span>OFAC &amp; Global Sanctions Watchlists: All</span></strong>
                    <span class="show-hidden-data-icon"></span>
                </button>
            </div>
            <div id="watchlists_global_more" class="clear col col-9 collapse in hidden">
                <ul class="unmarked_list">
                    <li>
                        <label for="GLOB_ALLSACTIONS" class="check">
                            <input type="checkbox" name="glob_allsactions" id="GLOB_ALLSACTIONS" checked="checked">
                            <span>All</span>
                        </label>
                    </li>
                    <TMPL_UNLESS NAME=SHOW_INTL_INSTANTID>
                        <li>
                            <label for="GLOB_OFAC" class="check">
                                <input type="checkbox" name="glob_ofac" id="GLOB_OFAC" checked="checked">
                                <span>OFAC - Office of Foreign Assets Control</span>
                            </label>
                        </li>
                    </TMPL_UNLESS>
                    <li>
                        <label for="GLOB_COMMO" class="check">
                            <input type="checkbox" name="glob_commo" id="GLOB_COMMO" checked="checked">
                            <span>Commodity Futures Trading Commission List of Regulatory &amp; Self-Regulatory Authorities</span>
                        </label>
                    </li>
                    <li>
                        <label for="GLOB_DTC" class="check">
                            <input type="checkbox" name="glob_dtc" id="GLOB_DTC" checked="checked">
                            <span>Defense Trade Controls (DTC) Debarred Parties</span>
                        </label>
                    </li>
                    <li>
                        <label for="GLOB_EUDT" class="check">
                            <input type="checkbox" name="glob_eudt" id="GLOB_EUDT" checked="checked">
                            <span>European Union Designated Terrorists</span>
                        </label>
                    </li>
                    <li>
                        <label for="GLOB_FBI" class="check">
                            <input type="checkbox" name="glob_fbi" id="GLOB_FBI" checked="checked">
                            <span>Federal Bureau of Investigations (FBI) Lists</span>
                        </label>
                    </li>
                    <li class="padding-left-15">
                        <label for="GLOB_FAR2" class="check">
                            <input type="checkbox" name="GLOB_FAR2" id="GLOB_FAR2" checked="checked">
                            <span>Foreign Agent Registrations Act</span>
                        </label>
                    </li>
                    <li>
                        <label for="GLOB_FCEN" class="check">
                            <input type="checkbox" name="glob_fcen" id="GLOB_FCEN" checked="checked">
                            <span>Financial Crimes Enforcement Network Special Alert List <TMPL_IF NAME=SHOW_INTL_INSTANTID>(FCEN)</TMPL_IF></span>
                        </label>
                    </li>
                    <li>
                        <label for="GLOB_MAJESTY" class="check">
                            <input type="checkbox" name="glob_majesty" id="GLOB_MAJESTY" checked="checked">
                            <span>Her Majesty's Treasury's Consolidated List of Financial Sanctions Targets<TMPL_IF NAME=SHOW_INTL_INSTANTID> (formerly known as Bank of England Consolidated Sanctions)</TMPL_IF></span>
                        </label>
                    </li>
                    <li>
                        <label for="GLOB_MOST_WANTED" class="check">
                            <input type="checkbox" name="glob_most_wanted" id="GLOB_MOST_WANTED" checked="checked">
                            <span>International Police Most Wanted and Red Alerts</span>
                        </label>
                    </li>
                    <li>
                        <label for="GLOB_CONTROLLER" class="check">
                            <input type="checkbox" name="glob_controller" id="GLOB_CONTROLLER" checked="checked">
                            <span>Office of Controller of Currency - Unauthorized Banks</span>
                        </label>
                    </li>
                    <li>
                        <label for="GLOB_OSFI" class="check">
                            <input type="checkbox" name="glob_osfi" id="GLOB_OSFI" checked="checked">
                            <span>OSFI - Canada</span>
                        </label>
                    </li>
                    <li>
                        <label for="GLOB_PEP" class="check">
                            <input type="checkbox" name="glob_pep" id="GLOB_PEP" checked="checked">
                            <span>Politically Exposed Persons</span>
                        </label>
                    </li>
                    <li>
                        <label for="GLOB_TERROR" class="check">
                            <input type="checkbox" name="glob_terror" id="GLOB_TERROR" checked="checked">
                            <span>State Department Terrorist Exclusions</span>
                        </label>
                    </li>
                    <li>
                        <label for="GLOB_UNNT" class="check">
                            <input type="checkbox" name="glob_unnt" id="GLOB_UNNT" checked="checked">
                            <span>United Nations Named Terrorists</span>
                        </label>
                    </li>
                    <li>
                        <label for="GLOB_USIS" class="check">
                            <input type="checkbox" name="glob_usis" id="GLOB_USIS" checked="checked">
                            <span>US Bureau of Industry &amp; Security<TMPL_UNLESS NAME=SHOW_INTL_INSTANTID> – Unverified Entities, Denied Entities and Denied Persons List</TMPL_UNLESS></span>
                        </label>
                    </li>
                    <li>
                        <label for="GLOB_FIRMS" class="check">
                            <input type="checkbox" name="glob_firms" id="GLOB_FIRMS" checked="checked">
                            <span>World Bank Ineligible Firms</span>
                        </label>
                    </li>
                </ul>
            </div>
        </div>
    </div>
</div>
