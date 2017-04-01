<!-- Begin custom_state_selection.tpl -->
<TMPL_INCLUDE NAME="court_header.tpl">
<script src="<TMPL_VAR NAME='JSPATH'>/court/search_select.js"></script>

<div class="wizard-content" style="border-radius: 8px;">
    <div>
        <div class="myaccount-section-title">Court Search &mdash; Customize &mdash; Custom State Selection</div>
        <div class="myaccount-containers">
            <div class="sections">
                <div class="section-row">
                    <br>
                    <div class="wizard-font-16px bold">Subject Information</div>
                </div>
                <TMPL_IF IDENTITY_LOOP>
                    <TMPL_LOOP IDENTITY_LOOP>
                        <div class="section-row">
                            <TMPL_INCLUDE NAME="identity.tpl">
                        </div>
                    </TMPL_LOOP>
                </TMPL_IF>
                <div class="section-row">
                    <table class="wizard-grey-table" style="width:100%;">
                        <tr>
                            <th class="largefont1bold" style="width:38%;">Choose States</th>
                            <th class="largefont1bold">Selected States</th>
                        </tr>
                        <tr>
                            <td class="pdt10">
                                <select name="STATE_SELECTION" style="margin:0;width:61%;height:250px;" size="10" multiple ondblclick="javascript:showpw_v3();send_event('COURT/CUSTOM_STATES_ADD')">
                                    <TMPL_LOOP NAME="STATE_LOOP">
                                        <option value="<TMPL_VAR NAME="STATE">"><TMPL_VAR NAME="NAME">  -  $<TMPL_VAR NAME="PRICE">
                                    </TMPL_LOOP>
                                </select>
                            </td>
                            <td class="pdt10">
                                <select name="STATE_SELECTION_SELECTED" style="margin:0;width:37%;height:250px;" size="10" multiple ondblclick="javascript:showpw_v3();send_event('COURT/CUSTOM_STATES_DELETE')">
                                    <TMPL_IF NAME="STATE_LOOP_SELECTED">
                                        <TMPL_LOOP NAME="STATE_LOOP_SELECTED">
                                            <option value="<TMPL_VAR NAME="STATE">"><TMPL_VAR NAME="NAME">
                                        </TMPL_LOOP>
                                    <TMPL_ELSE>
                                        <option value="0">No States Selected
                                    </TMPL_IF>
                                </select>
                            </td>
                        </tr>
                        <tr>
                            <td class="pdb10 pdt8">
                                <input class="btn darkgrey-btn mg0" type="button" name="SUBMIT" value="ADD" style="margin:0;" onClick="showpw_v3();send_event('COURT/CUSTOM_STATES_ADD');this.disabled=true">
                            </td>
                            <td class="pdb10 pdt8">
                                <input class="btn darkgrey-btn mg0" type="button" name="SUBMIT" value="DELETE" style="margin:0;" onClick="showpw_v3();send_event('COURT/CUSTOM_STATES_DELETE');this.disabled=true">
                            </td>
                        </tr>
                    </table>
                </div>
                <div class="section-row">
                    After making your additional state selections, please click the CONTINUE button to save your selections and return to the previous screen.
                </div>
                <div class="section-row">
                    <input class="btn red-btn" type="button" name="SUBMIT" value="Continue" onClick="showpw_v3();send_event('COURT/CUSTOM_STATES_BACK');this.disabled=true">
                </div>
            </div>
        </div>
    </div>
</div>
    
    
<TMPL_INCLUDE NAME="court_footer.tpl">
<!-- End custom_state_selection.tpl -->
