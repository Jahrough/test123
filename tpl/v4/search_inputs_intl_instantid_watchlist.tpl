<TMPL_INCLUDE NAME="search_inputs_intl_instantid_watchlistsonly.tpl">
<div class="row" id='passportorvisa-info'>
    <div class="col col-9">
        <button type="button" id="passportsorvisa" class="btn btn-link">
            <strong>Format Validation: <span id='passportorvisa-selected'>Passport</span></strong>
            <span class="show-hidden-data-icon"></span>
        </button>
    </div>

    <div id="passportorvisa_more" class="clear col col-9 collapse in">
        <div class="row left-spacing-0 right-spacing-0">
            <div class="input col col-6">
                <label>
                <input id="MACHINE_READONE" name="MACHINE_READONE" value="<TMPL_VAR NAME=MACHINE_READONE>" placeholder="Passport upper line (Format validation only)" class="form-control">
                    <span class="tooltip">
                        Passport upper line (Format validated only)
                        <span class="font-10">(P&lt;UTOERIKSSON&lt;&lt;ANNA&lt;MARIA&lt;&lt;&lt;&lt;&lt;&lt;&lt;&lt;&lt;&lt;&lt;&lt;&lt;&lt;&lt;&lt;&lt;&lt;&lt;)</span>
                    </span>
                </label>
            </div>
        </div>

        <div class="row left-spacing-0 right-spacing-0">
            <div class="input col col-6">
                <label>
                    <input id="MACHINE_READTWO" name="MACHINE_READTWO" value="<TMPL_VAR NAME=MACHINE_READTWO>" placeholder="Passport lower line (Format validation only)" class="form-control">
                    <span class="tooltip">
                        Passport lower line (Format validated only)
                        <span class="font-10">(L898902C&lt;3UTO6908061F9406236ZE184226B&lt;&lt;&lt;&lt;&lt;14)</span>
                    </span>
                </label>
            </div>
            <TMPL_UNLESS NAME=SHOW_INTL_INSTANTID>
                <div class="input col col-2" >
                    <label>
                        <select name="PASSPORT_GENDER" id="PASSPORT_GENDER" class="form-control">
                            <option value="">Select Gender</option>
                            <option <TMPL_IF PASSPORT_GENDER_DROPDOWN_F>selected="selected"</TMPL_IF> value="F">Female</option>
                            <option <TMPL_IF PASSPORT_GENDER_DROPDOWN_M>selected="selected"</TMPL_IF> value="M">Male</option>
                            <option <TMPL_IF PASSPORT_GENDER_DROPDOWN_X>selected="selected"</TMPL_IF> value="X">Not Specified</option>
                        </select>
                    </label>
                </div>
                <div class="col col-2">
                    <span class="font-10">(For passport validation, passport upper and lower lines, DOB, and Gender are required.)</span>
                </div>
            </TMPL_UNLESS>
        </div>

        <TMPL_IF NAME="SHOW_INTL_INSTANTID">
            <div class="row left-spacing-0 right-spacing-0">
                <div class="input col col-6">
                    <label>
                        <input id="VISA_MACHINE_READONE" name="VISA_MACHINE_READONE" value="<TMPL_VAR NAME=VISA_MACHINE_READONE>" placeholder="VISA upper line (Format validation only)" class="form-control">
                        <span class="tooltip">
                            VISA upper line (Format validated only)
                            <span class="font-10">(V&lt;UTOERIKSSON&lt;&lt;ANNA&lt;MARIA&lt;&lt;&lt;&lt;&lt;&lt;&lt;&lt;&lt;&lt;&lt;&lt;&lt;&lt;&lt;&lt;&lt;&lt;&lt;)</span>
                        </span>
                    </label>
                </div>
            </div>

            <div class="row left-spacing-0 right-spacing-0">
                <div class="input col col-6">
                    <label>
                        <input id="VISA_MACHINE_READTWO" name="VISA_MACHINE_READTWO" value="<TMPL_VAR NAME=VISA_MACHINE_READTWO>" placeholder="VISA lower line (Format validation only)" class="form-control">
                        <b class="tooltip">
                            VISA lower line (Format validated only)
                            <span class="font-10">(L898902C&lt;3UTO6908061F9406236ZE184226B&lt;&lt;&lt;&lt;&lt;14)</span>
                        </b>
                    </label>
                </div>
            </div>
        </TMPL_IF>
    </div>
</div>
