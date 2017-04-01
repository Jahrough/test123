<div class="table-responsive">
    <br>Multiple addresses were found.  Please select the appropriate entity by clicking on the desired address.<br><br>
    <table class="table table-condensed table-hover">
        <thead>
            <tr>
                <th>Select an Address</th>
            </tr>
        </thead>
        <tbody>
            <TMPL_LOOP NAME="PROP_HIST_PICK_LIST">
                <tr class="<TMPL_VAR NAME=ROW_CLASS>">
                    <td>
                        <div class="col-xs-3 col-md-2">
                            <a href="javascript:build_report('<TMPL_VAR NAME="ACTION_MISC">', 0, <TMPL_VAR NAME="REPORT_ID">, 0, null, '<TMPL_VAR NAME="ROW_ID">')">
                                <TMPL_VAR NAME=STREET_ADDRESS><br />
                                <TMPL_VAR NAME=CSZ_LINE>
                            </a>
                        </div>
                        <div class="col col-1 no-print">
                            <div class="prevent-blur-hide additional-info block-display">
                                <a id='<TMPL_VAR NAME="ROW_ID">_map_button' onclick="javascript:show_google_map(<TMPL_VAR NAME="ROW_ID">_map, 'Address');" class="map_icon add-actions dropdown-toggle" data-toggle="dropdown"></a>
                                <span class="tooltip tooltip-25 hover">View Map</span>
                                <div class="dropdown-menu resizable-map fixed-center" role="dialog">
                                    <span class="map-address"><TMPL_VAR NAME=STREET_ADDRESS> <TMPL_VAR NAME=CSZ_LINE></span>
                                    <div id="<TMPL_VAR NAME="ROW_ID">_map" class="google_map" data-address="<TMPL_VAR NAME=STREET_ADDRESS> <TMPL_VAR NAME=CSZ_LINE>"></div>
                                    <a class="map-disclaimer-link info" onclick="javascript:show_map_disclaimer(<TMPL_VAR NAME="ROW_ID">_map, 'Address')">Disclaimer</a>
                                    <span class="resize_icon"></span>
                                    <a class="close-link close-icon"></a>
                                </div>
                            </div>
                        </div>
                        <input id='<TMPL_VAR NAME="ROW_ID">' name='<TMPL_VAR NAME="ROW_ID">' value="CITY|<TMPL_VAR NAME=CITY>|STATE|<TMPL_VAR NAME=STATE>|ZIP|<TMPL_VAR NAME=ZIP>|ZIP4|<TMPL_VAR NAME=ZIP4>|PRE_DIR|<TMPL_VAR NAME=PRE_DIR>|STREET_NUM|<TMPL_VAR NAME=STREET_NUM>|STREET_NAME|<TMPL_VAR NAME=STREET_NAME>|POST_DIR|<TMPL_VAR NAME=POST_DIR>|STREET_SUFFIX|<TMPL_VAR NAME=STREET_SUFFIX>|UNIT_NUM|<TMPL_VAR NAME=UNIT_NUM>|UNIT_DESIG|<TMPL_VAR NAME=UNIT_DESIG>|LOCATION_ID|<TMPL_VAR NAME=LOCATION_ID>|STREET_ADDRESS|<TMPL_VAR NAME=STREET_ADDRESS><TMPL_IF NAME=MORTGAGE_INPUT_FIELDS>|<TMPL_VAR NAME=MORTGAGE_INPUT_FIELDS></TMPL_IF>" type="HIDDEN">
                    </td>
                </tr>
            </TMPL_LOOP>
        </tbody>
    </table>
</div>   
