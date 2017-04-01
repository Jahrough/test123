        <script type="text/javascript">
            $(function() {
                $('#trace-more-options').click();
                $('#trace-more-options').click(function () {
                    if($(this).text().match(/Show/g)) {
                        var _html = $(this).html().replace("Show","Hide");
                        $(this).html(_html);
                        $('#demo_more').show();
                    } else {
                        var _html = $(this).html().replace("Hide","Show");
                        $(this).html(_html);
                        $('#demo_more').hide();
                    }
                });
            });
        </script>

        <div class="row">
            <section>
                <button type="button" id="trace-more-options" class="btn btn-link" style="margin-left: 10px; padding: 1px 0px;">
                    <strong style="font-size: 13px; color: green;">Show Secondary Name/AKA Filters</strong> <i class="fa fa-chevron-circle-right"></i>
                </button>
            </section>
            <div id="demo_more" class="collapse in" style="padding-left: 10px;display:none;">
                <div class="row">
                    <section class="col col-3">
                        <label class="input">
                            <input id="OTHER_LAST_NAME" name="OTHER_LAST_NAME" value="<TMPL_VAR NAME=OTHER_LAST_NAME>" placeholder="Last Name" type="text">
                            <b class="tooltip tooltip-top-left">
                                <i class="fa fa-warning txt-color-teal"></i> 
                            Other Last Name
                            </b> 
                        </label> 
                    </section>

                    <section class="col col-3">
                        <label class="input">
                            <input id="OTHER_FIRST_NAME" name="OTHER_FIRST_NAME" value="<TMPL_VAR NAME=OTHER_FIRST_NAME>" placeholder="First Name" type="text">
                            <b class="tooltip tooltip-top-left">
                                <i class="fa fa-warning txt-color-teal"></i> 
                            Other First Name
                            </b> 
                        </label> 
                    </section>

                    <section class="col col-3">
                        <label class="input">
                            <input type="text" id="OTHER_MI" name="OTHER_MI" value="<TMPL_VAR NAME=OTHER_MI>" placeholder="Middle Name">
                            <b class="tooltip tooltip-top-left">
                                <i class="fa fa-warning txt-color-teal"></i> 
                                Other Middle Name</b> 
                        </label>
                    </section>

                    <section class="col col-3">
                        <label class="select">
                            <select id="OTHER_GENERATION" name="OTHER_GENERATION">
                                <option value="-">Generation</option>
                                <option value="I">I - First</option>
                                <option value="II">II - Second</option>
                                <option value="III">III - Third</option>
                                <option value="IV">IV - Fourth</option>
                                <option value="V">V - Fifth</option>
                                <option value="VI">VI - Sixth</option>
                                <option value="VII">VII - Seventh</option>
                                <option value="VIII">VIII - Eigth</option>
                                <option value="IX">IX - Ninth</option>
                                <option value="JR">JR - Junior</option>
                                <option value="SR">SR - Senior</option>
                            </select>
                        </label>
                    </section>
                    
                    <section class="col col-3">
                        <label class="select">
                            <select id="OTHER_SUFFIX" name="OTHER_SUFFIX">
                                <option value="-">Suffix</option>
                                <option value="DD">DD - Doctor of Divinity</option>
                                <option value="DDS">DDS - Doctor of Dental Science</option>
                                <option value="DMD">DMD - Doctor of Medical Dentistry</option>
                                <option value="DO">DO - Doctor of Osteopathy</option>
                                <option value="DVM">DVM - Doctor of Veterinary Medicine</option>
                                <option value="MD">MD - Medical Doctor</option>
                                <option value="ML">ML - Military</option>
                                <option value="OD">OD - Orthopedic Doctor</option>
                                <option value="PHD">PHD - Doctorate Degree</option>
                                <option value="RN">RN - Registered Nurse</option>
                            </select>
                        </label>
                    </section>
                </div>

                <div class="row">
                    <section class="col col-3">

                    </section>
                </div>
        </div>
        <div class="row" style="padding-left: 15px;">
            <section class="col col-3" style="width:155px">
                <label class="input">
                    <input type="text" id="STREET_NUMBER" name="STREET_NUMBER" value="<TMPL_VAR NAME=STREET_NUMBER>" placeholder="Street Number *">
                    <b class="tooltip tooltip-top-left">
                        <i class="fa fa-warning txt-color-teal"></i> 
                        Street Number
                    </b> 
                </label>
            </section>

            <section class="col col-3" style="width:145px">
                <label class="select">
                    <select id="PRE_DIRECTION" name="PRE_DIRECTION">
                        <option value="-">Pre-direction</option>
                        <option value="North">North</option>
                        <option value="South">South</option>
                        <option value="East">East</option>
                        <option value="West">West</option>
                        <option value="North-East">North-East</option>
                        <option value="South-East">South-East</option>
                        <option value="North-West">North-West</option>
                        <option value="South-West">South-West</option>
                    </select>
                </label>
            </section>

            <section class="col col-4">
                <label class="input">
                    <input type="text" id="TRACE_STREET_NAME" name="TRACE_STREET_NAME" value="<TMPL_VAR NAME=TRACE_STREET_NAME>" placeholder="Street Name *">
                    <b class="tooltip tooltip-top-left">
                        <i class="fa fa-warning txt-color-teal"></i> 
                        Street Name *
                    </b> 
                </label>
            </section>

            <section class="col col-3" style="width:150px">
                <label class="select">
                    <select id="POST_DIRECTION" name="POST_DIRECTION">
                        <option value="-">Post-direction</option>
                        <option value="North">North</option>
                        <option value="South">South</option>
                        <option value="East">East</option>
                        <option value="West">West</option>
                        <option value="North-East">North-East</option>
                        <option value="South-East">South-East</option>
                        <option value="North-West">North-West</option>
                        <option value="South-West">South-West</option>
                    </select>
                </label>
            </section>

            <section class="col col-3" style="width:150px">
                <label class="select">
                    <select id="STREET_TYPE" name="STREET_TYPE">
                        <option value="-">Street Type</option>
                        <option value="Arcade">Arcade</option>
                        <option value="Alley">Alley</option>
                        <option value="Avenue">Avenue</option>
                        <option value="Annex">Annex</option>
                        <option value="Bend">Bend</option>
                        <option value="Bridge">Bridge</option>
                        <option value="Bluff">Bluff</option>
                        <option value="Beach">Beach</option>
                        <option value="Brook">Brook</option>
                        <option value="Bluffs">Bluffs</option>
                        <option value="Bottom">Bottom</option>
                        <option value="Branch">Branch</option>
                        <option value="Bypass">Bypass</option>
                        <option value="Brooks">Brooks</option>
                        <option value="Burgs">Burgs</option>
                        <option value="Boulevard">Boulevard</option>
                        <option value="Bayou">Bayou</option>
                        <option value="Circle">Circle</option>
                        <option value="Center">Center</option>
                        <option value="Crescent">Crescent</option>
                        <option value="Court">Court</option>
                        <option value="Dale">Dale</option>
                        <option value="Drive">Drive</option>
                        <option value="Expressway">Expressway</option>
                        <option value="Freeway">Freeway</option>
                        <option value="Garden">Garden</option>
                        <option value="Grove">Grove</option>
                        <option value="Hill">Hill</option>
                        <option value="Heights">Heights</option>
                        <option value="Highway">Highway</option>
                        <option value="Knoll">Knoll</option>
                        <option value="Lane">Lane</option>
                        <option value="Loop">Loop</option>
                        <option value="Mall">Mall</option>
                        <option value="Path">Path</option>
                        <option value="Pike">Pike</option>
                        <option value="Park">Park</option>
                        <option value="Place">Place</option>
                        <option value="Point">Point</option>
                        <option value="Parkway">Parkway</option>
                        <option value="Plaza">Plaza</option>
                        <option value="Road">Road</option>
                        <option value="Run">Run</option>
                        <option value="Row">Row</option>
                        <option value="Route">Route</option>
                        <option value="Square">Square</option>
                        <option value="Street">Street</option>
                        <option value="Terrace">Terrace</option>
                        <option value="Turnpike">Turnpike</option>
                        <option value="Trail">Trail</option>
                        <option value="Viaduct">Viaduct</option>
                        <option value="Walk">Walk</option>
                        <option value="Way">Way</option>
                    </select>
                </label>
            </section>

            <section class="col col-3" style="width:150px">
                <label class="select">
                    <select id="UNIT_TYPE" name="UNIT_TYPE">
                        <option value="-">Unit Type</option>
                        <option value="None">None or unable to determine</option>
                        <option value="Apartment">Apartment</option>
                        <option value="Basement">Basement</option>
                        <option value="Building">Building</option>
                        <option value="Department">Department</option>
                        <option value="Floor">Floor</option>
                        <option value="Hanger">Hanger</option>
                        <option value="Key">Key</option>
                        <option value="Lobby">Lobby</option>
                        <option value="Lot">Lot</option>
                        <option value="Lower">Lower</option>
                        <option value="Office">Office</option>
                        <option value="Penthouse">Penthouse</option>
                        <option value="Pier">Pier</option>
                        <option value="Rear">Rear</option>
                        <option value="Room">Room</option>
                        <option value="Side">Side</option>
                        <option value="Slip">Slip</option>
                        <option value="Space">Space</option>
                        <option value="Stop">Stop</option>
                        <option value="Suite">Suite</option>
                        <option value="Trailer">Trailer</option>
                        <option value="Unit">Unit</option>
                        <option value="Upper">Upper</option>
                    </select>
                </label>
            </section>

            <section class="col col-2">
                <label class="input">
                    <input type="text" id="UNIT_NUMBER" name="UNIT_NUMBER" value="<TMPL_VAR NAME=UNIT_NUMBER>" placeholder="Unit #">
                    <b class="tooltip tooltip-top-left">
                        <i class="fa fa-warning txt-color-teal"></i> 
                        Unit #
                    </b> 
                </label>
            </section>
        </div>
        <div class="row" style="padding-left: 15px;">
            <section class="col col-3">
                <label class="input">
                    <input type="text" id="TRACE_CITY" name="TRACE_CITY" value="<TMPL_VAR NAME=TRACE_CITY>" placeholder="City *">
                    <b class="tooltip tooltip-top-left">
                        <i class="fa fa-warning txt-color-teal"></i> 
                        City *
                    </b> 
                </label>
            </section>

            <section class="col col-3">
                <label class="select">
                    <select id="TRACE_STATE" name="TRACE_STATE">
                        <option value="-">State *</option>
                        <TMPL_INCLUDE NAME="all_states_options_list.tpl">
                    </select>
                </label>
            </section>

            <section class="col col-3" style="width:120px">
                <label class="input">
                    <input type="text" id="TRACE_ZIP" name="TRACE_ZIP" value="<TMPL_VAR NAME=TRACE_ZIP>" placeholder="Zip *">
                    <b class="tooltip tooltip-top-left">
                        <i class="fa fa-warning txt-color-teal"></i> 
                        Zip</b> 
                </label>
            </section>

            <section class="col col-3" style="width:90px">
                <label class="input">
                    <input type="text" id="TRACE_ZIP4" name="TRACE_ZIP4" value="<TMPL_VAR NAME=TRACE_ZIP4>" placeholder="Zip4">
                    <b class="tooltip tooltip-top-left">
                        <i class="fa fa-warning txt-color-teal"></i> 
                        Zip4</b> 
                </label>
            </section>
        </div>
        <div class="row" style="padding-left: 15px;">
            <section class="col col-3">
                <label class="input">
                    <input type="text" id="TRACE_PHONE" name="TRACE_PHONE" value="<TMPL_VAR NAME=TRACE_PHONE>" placeholder="Phone Number">
                    <b class="tooltip tooltip-top-left">
                        <i class="fa fa-warning txt-color-teal"></i> 
                        Phone Number<br/>(Examples: 123-456-7890, (123) 456-7890, 1234567890)</b> 
                </label>
            </section>
