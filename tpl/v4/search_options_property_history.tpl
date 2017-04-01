        <script type="text/javascript">
            $(function() {
                var tempField;

                $('#PARCEL_RADIO').click();
                $('#PARCEL_RADIO').click(function () {
                    $('#address_div').hide();
                    $('#parcel_div').show();
                    tempField = document.getElementById('FORCE_STREET_ADDRESS');
                    tempField.value = "";
                    tempField = document.getElementById('FORCE_CITY');
                    tempField.value = "";
                    tempField = document.getElementById('FORCE_STATE');
                    tempField.value = "-";
                    tempField = document.getElementById('FORCE_ZIP');
                    tempField.value = "";
                });
                $('#ADDRESS_RADIO').click();
                $('#ADDRESS_RADIO').click(function () {
                    $('#address_div').show();
                    $('#parcel_div').hide();
                    tempField = document.getElementById('FORCE_PARCEL');
                    tempField.value = "";
                });
            });
        </script>

        <div class="row">
            <section>
                <div class="col col-3" style="width:155px; padding-right:0px;">
                    <label class="radio">
                        <input name="ADDRESS_OR_PARCEL" checked="checked" type="radio" id="ADDRESS_RADIO">
                            <i></i>Find by Address
                    </label>
                </div>

                <div class="col col-3" style="width:315px;">
                        <label class="radio">
                            <input name="ADDRESS_OR_PARCEL" type="radio" id="PARCEL_RADIO"><i></i>Find by Assessor Parcel Number (APN)
                        </label>
                </div>
            </section>
            <div id="address_div" class="collapse in" style="padding-left: 10px;">
                <div class="row">
                    <section class="col col-3">
                    <br>
                    </section>
                </div>

                <div class="row">
                    <section class="col col-6">
                        <label class="input">
                            <input type="text" id="FORCE_STREET_ADDRESS" name="FORCE_STREET_ADDRESS" value="<TMPL_VAR NAME=FORCE_STREET_ADDRESS>" placeholder="Street Address *" maxlength="35">
                            <b class="tooltip tooltip-top-left">
                                <i class="fa fa-warning txt-color-teal"></i> 
                                Street Address *</b> 
                        </label>
                    </section>
                </div>
                <div class="row">
                    <section class="col col-3">
                        <label class="input">
                            <input type="text" id="FORCE_CITY" name="FORCE_CITY" value="<TMPL_VAR NAME=FORCE_CITY>" placeholder="City" maxlength="45">
                            <b class="tooltip tooltip-top-left">
                                <i class="fa fa-warning txt-color-teal"></i> 
                                City
                            </b> 
                        </label>
                    </section>
                    <section class="col col-3">
                        <label class="select">
                            <select id="FORCE_STATE" name="FORCE_STATE">
                                <option value="-">State</option>
                                <TMPL_INCLUDE NAME="all_states_options_list.tpl">
                            </select>
                        </label>
                    </section>
                    <section class="col col-1_5">
                        <label class="input">
                            <input type="text" id="FORCE_ZIP" name="FORCE_ZIP" value="<TMPL_VAR NAME=FORCE_ZIP>" placeholder="Zip" maxlength="10">
                            <b class="tooltip tooltip-top-left">
                                <i class="fa fa-warning txt-color-teal"></i> 
                                Zip</b> 
                        </label>
                    </section>
                    <span class="descripG"><br/><br/><br/>&nbsp;&nbsp;&nbsp;&nbsp;* Street address and Zip are required <b>or</b> Street address, City, State are required.</span>
                </div>
            </div>
            <div id="parcel_div" class="collapse in" style="padding-left: 10px;display:none;">
                <div class="row">
                    <section class="col col-3">
                    <br>
                    </section>
                </div>

                <div class="row">
                    <section class="col col-3">
                        <label class="input">
                            <input type="text" id="FORCE_PARCEL" name="FORCE_PARCEL" value="<TMPL_VAR NAME=FORCE_PARCEL>" placeholder="Parcel Number *" maxlength="55">
                            <strong class="tooltip tooltip-top-left">
                                <span class="fa fa-warning txt-color-teal"></span>
                                Parcel Number *
                            </strong>
                        </label>
                    </section>
                </div>
            </div>
        </div>    
