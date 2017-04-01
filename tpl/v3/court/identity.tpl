<div class="br8" style="overflow:hidden;">
    <table class="wizard-darkgrey-table">
        <thead>
            <tr>
                <th>Name</th>
                <TMPL_IF BUSINESS_CS>
                    <TMPL_IF USE_THIS_AKA>
                        <th>Using AKA(s)</th>
                    </TMPL_IF>
                <TMPL_ELSE>
                    <th>DOB</th>
                    <th>SSN</th>
                    <th>Age</th>
                    <TMPL_IF USE_THIS_AKA>
                        <th>Using AKA(s)</th>
                    </TMPL_IF>
                    <TMPL_IF USE_THIS_DOB>
                        <th>Using DOB</th>
                    </TMPL_IF>
                </TMPL_IF>
                <TMPL_IF REFERENCE_CODE>
                    <th>Reference Code</th>
                </TMPL_IF>
            </tr>
        </thead>
        <tbody>
            <tr>
                <TMPL_IF BUSINESS_CS>
                    <td style="white-space:nowrap;"><TMPL_VAR NAME="COMPANY_NAME"></td>
                    <TMPL_IF USE_THIS_AKA>
                        <td>
                            <TMPL_LOOP USE_THIS_AKA>
                                <TMPL_VAR NAME="COMPANY_NAME"> <br><i class="f-11">(This is the name that will be used in this Court Search)</i>
                            </TMPL_LOOP>
                        </td>
                    </TMPL_IF>
                <TMPL_ELSE>
                    <td style="white-space:nowrap;"><TMPL_VAR NAME="NAME_FIRST"><TMPL_IF NAME_MIDDLE> <TMPL_VAR NAME_MIDDLE></TMPL_IF> <TMPL_VAR NAME_LAST><TMPL_IF NAME_SUFFIX> <TMPL_VAR NAME_SUFFIX></TMPL_IF>&nbsp;</td>
                    <td><TMPL_VAR DOB></td>
                    <td><TMPL_VAR SSN_DSP><TMPL_IF SSN_LOCATION> issued in <TMPL_VAR SSN_LOCATION> <TMPL_VAR SSN_DATE_RANGE></TMPL_IF>&nbsp;</td>
                    <td><TMPL_VAR AGE></td>
                    <TMPL_IF USE_THIS_AKA>
                        <td>
                            <TMPL_LOOP USE_THIS_AKA>
                                <TMPL_VAR NAME="FIRST_NAME"><TMPL_IF MIDDLE_NAME> <TMPL_VAR MIDDLE_NAME></TMPL_IF> <TMPL_VAR LAST_NAME><TMPL_IF SUFFIX> <TMPL_VAR SUFFIX></TMPL_IF> <i class="f-11"><br>(This is the name that will be used in this court search)</i><br>
                            </TMPL_LOOP>
                            &nbsp;
                        </td>
                    </TMPL_IF>
                    <TMPL_IF USE_THIS_DOB>
                        <td>
                            <TMPL_LOOP USE_THIS_DOB>
                                <TMPL_VAR NAME="DOB_MONTH"><TMPL_IF DOB_DAY>/<TMPL_VAR DOB_DAY></TMPL_IF>/<TMPL_VAR DOB_YEAR> <i class="f-11"><br>(This is the dob that will be used in this court search)</i><br>
                            </TMPL_LOOP>
                            &nbsp;
                        </td>
                    </TMPL_IF>
                </TMPL_IF>
                <TMPL_IF REFERENCE_CODE>
                    <td><TMPL_VAR REFERENCE_CODE>&nbsp;</td>
                </TMPL_IF>
            </tr>
        </tbody>
    </table>
</div>
