<!-- Begin custom_federal_selection.tpl -->
<TMPL_INCLUDE NAME="court_header.tpl">
<script src="<TMPL_VAR NAME='JSPATH'>/court/search_select.js"></script>

<div class="wizard-content" style="border-radius: 8px;">
    <div>
        <div class="myaccount-section-title">Court Search &mdash; Customize &mdash; Custom Federal District Selection</div>
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
                            <th colspan=2 align="left" class="largefont1bold">Choose State</th>
                        </tr>
                        <tr>
                            <td colspan=2>
                                <select name="STATE_SELECTION" size="1" onchange="javascript:showpw_v3();send_event('COURT/CUSTOM_FEDERAL_RELOAD')">
                                    <option value="0">
                                    <TMPL_LOOP NAME="STATE_LOOP">
                                        <option value="<TMPL_VAR NAME="STATE">"<TMPL_IF NAME="SELECTED"> selected</TMPL_IF>><TMPL_VAR NAME="STATE">
                                    </TMPL_LOOP>
                                </select>
                            </td>
                        </tr>
                        <tr>
                            <th class="largefont1bold" style="width:50%;">Choose Federal Districts</th>
                            <th class="largefont1bold">Selected Federal Districts</th>
                        </tr>
                        <tr>
                            <td class="pdt10">
                                <select name="FEDERAL_SELECTION" style="margin:0;width:100%;height:250px;" size="10" multiple ondblclick="javascript:showpw_v3();send_event('COURT/CUSTOM_FEDERAL_ADD')">
                                    <TMPL_IF NAME="FEDERAL_LOOP">
                                        <TMPL_LOOP NAME="FEDERAL_LOOP">
                                            <option value="<TMPL_VAR NAME="FIP">:<TMPL_VAR NAME="CODE">:<TMPL_VAR NAME="DISTRICT_NAME">"><TMPL_VAR NAME="DISTRICT_NAME">  -  $<TMPL_VAR NAME="PRICE">
                                        </TMPL_LOOP>
                                    <TMPL_ELSE>
                                        <option value="0">Select a State
                                    </TMPL_IF>
                                </select>
                            </td>
                            <td class="pdt10">
                                <select name="FEDERAL_SELECTION_SELECTED" style="margin:0;width:100%;height:250px;" size="10" multiple ondblclick="javascript:showpw_v3();send_event('COURT/CUSTOM_FEDERAL_DELETE')">
                                    <TMPL_IF NAME="FEDERAL_LOOP_SELECTED">
                                        <TMPL_LOOP NAME="FEDERAL_LOOP_SELECTED">
                                            <option value="<TMPL_VAR NAME="FIP">:<TMPL_VAR NAME="CODE">"><TMPL_VAR NAME="DISTRICT_NAME">
                                        </TMPL_LOOP>
                                    <TMPL_ELSE>
                                        <option value="0">No Federal Districts Selected
                                    </TMPL_IF>
                                </select>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <input class="btn darkgrey-btn mg0" type="button" name="SUBMIT" value="ADD" onClick="showpw_v3();send_event('COURT/CUSTOM_FEDERAL_ADD');this.disabled=true">
                            </td>
                            <td>
                                <input class="btn darkgrey-btn mg0" type="button" name="SUBMIT" value="DELETE" onClick="showpw_v3();send_event('COURT/CUSTOM_FEDERAL_DELETE');this.disabled=true">
                            </td>
                        </tr>
                    </table>
                </div>
                <div class="section-row">
                    After making your additional Federal District selections, please click the CONTINUE button to save your selections and return to the previous screen.
                </div>
                <div class="section-row">
                    <input class="btn red-btn" type="button" name="SUBMIT" value="Continue" onClick="showpw_v3();send_event('COURT/CUSTOM_FEDERAL_BACK');this.disabled=true">
                </div>
            </div>
        </div>
    </div>
</div>
    
<TMPL_INCLUDE NAME="court_footer.tpl">
<!-- End custom_federal_selection.tpl -->