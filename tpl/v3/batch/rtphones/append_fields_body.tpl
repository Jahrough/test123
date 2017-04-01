<!-- BEGIN v3/batch/rtphones/append_fields_body.tpl -->
<div class="fieldset-title">Select the fields you wish to have appended to your file</div>
<fieldset class="batchFieldset pdt0" style="border:0">
    <INPUT TYPE="HIDDEN" NAME="BATCH_TOTAL" VALUE="1">
    <table style="width:100%;">
        <tr>
            <td class="pdl0">
                <table style="width:100%;">
                    <tr>
                        <td class="batchpricingheader batchsubheader" colspan="2">&nbsp;<b>Select one of the following Search Options</b></td>
                    </tr>
                    <tr>
                        <td class="batchinputwrapper" valign="top">
                            <input id="id_srch_typ" type="radio" name="searchtype" id="10-digit_only" onClick="setSubOptions(this);" value="TEN DIGIT"<TMPL_IF NAME="searchtype-TEN DIGIT"> checked="checked"</TMPL_IF>><label for="id_srch_typ">10-digit Phone Number Search Only</label>
                        </td>
                    </tr>
                    <tr>
                        <td class="batchinputwrapper" valign="top">
                            <input id="id_nm_adr" type="radio" name="searchtype" id="name_address_only" onClick="setSubOptions(this);" value="NAME ADDR"<TMPL_IF NAME="searchtype-NAME ADDR"> CHECKED</TMPL_IF>><label for="id_nm_adr">Name and Address Search Only</label>
                        </td>
                    </tr>
                    <tr>
                        <td class="batchinputwrapper" valign="top">
                            <input id="id_dr_srh" type="radio" name="searchtype" id="address_only" onClick="setSubOptions(this);" value="ADDR ONLY"<TMPL_IF NAME="searchtype-ADDR ONLY"> CHECKED</TMPL_IF>><label for="id_dr_srh">Address Search Only</label>
                        </td>
                    </tr>
                    <tr>
                        <td class="batchinputwrapper" valign="top">
                            <input id="id_lx_srh" type="radio" name="searchtype" id="linkid_only" onClick="setSubOptions(this);" value="LINKID"<TMPL_IF NAME="searchtype-LINKID"> CHECKED</TMPL_IF>><label for="id_lx_srh">LexID Search Only</label>
                        </td>
                    </tr>
                    <tr>
                        <td class="batchinputwrapper" valign="top">
                            <input id="id_nm_srh" type="radio" name="searchtype" id="name_ssn_only" onClick="setSubOptions(this);" value="NAME SSN"<TMPL_IF NAME="searchtype-NAME SSN"> CHECKED</TMPL_IF>><label for="id_nm_srh">Name and Social Security Number Search Only</label>
                        </td>
                    </tr>
                    <tr>
                        <td class="batchinputwrapper" valign="top">
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <input id="id_wtr_srh" type="radio" name="strict_ssn" id="waterfall_option" onClick="" value=0 <TMPL_IF name="searchtype-NAME SSN"><TMPL_IF NAME="strict_ssn-0"> checked="checked"</TMPL_IF></TMPL_IF>><label for="id_wtr_srh">Waterfall Search</label>&nbsp;&nbsp;<a href="javascript:void(0);" onClick="var layerfgcolor = get_layer_colors('fgcolor');var layerbgcolor = get_layer_colors('bgcolor');return overlib_to_modal('<br>When users select the Waterfall search option the query will be conducted with the provided input data and attempt to find a result using the following search order:<br /><br /> <li>Subject First and Last Name and 9-digit Social Security Number</li> <li>Subject Last Name and 9-digit Social Security Number</li> <li>Subject First and Last Name and last 4-digits of Social Security Number</li> <li>Subject Last Name and last 4-digits of Social Security Number</li><br><br>', CAPTIONSIZE, 2, BORDER, 3, FGCOLOR, layerfgcolor, BGCOLOR, layerbgcolor, CGCOLOR, layerbgcolor, WIDTH, 400, FIXX, 200, FIXY, 805, STICKY, CAPTION, 'Name and SSN Waterfall Search', CLOSECLICK, CLOSETEXT, '<img border=0 width=16 height=16 alt=\'Close\' title=\'Close\' src=\'<TMPL_VAR NAME=IMGPATH>/closex.gif\'>');"><img src="<TMPL_VAR NAME=IMGPATH>/info.gif" border="0" width="16" height="16" alt="more info"></a>
                        </td>
                    </tr>
                    <tr>
                        <td class="batchinputwrapper" valign="top">
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <input id="id_strct_srh" type="radio" name="strict_ssn" id="strict_option" onClick="" value="1" <TMPL_IF name="searchtype-NAME SSN"><TMPL_IF NAME="strict_ssn-1"> checked="checked"</TMPL_IF></TMPL_IF>><label for="id_strct_srh">Strict Search</label>&nbsp;&nbsp;<a href="javascript:void(0);" onClick="var layerfgcolor = get_layer_colors('fgcolor');var layerbgcolor = get_layer_colors('bgcolor');return overlib_to_modal('<br>When users select the Strict search option the query will be conducted with the provided input data and a result will only be returned if an exact match is made.<br><br>', CAPTIONSIZE, 2, BORDER, 3, FGCOLOR, layerfgcolor, BGCOLOR, layerbgcolor, CGCOLOR, layerbgcolor, WIDTH, 400, FIXX, 200, FIXY, 805, STICKY, CAPTION, 'Name and SSN Strict Search', CLOSECLICK, CLOSETEXT, '<img border=0 width=16 height=16 alt=\'Close\' title=\'Close\' src=\'<TMPL_VAR NAME=IMGPATH>/closex.gif\'>');"><img src="<TMPL_VAR NAME=IMGPATH>/info.gif" border="0" width="16" height="16" alt="More Info"></a>
                        </td>
                    </tr>
                    <tr>
                        <td class="batchinputwrapper" valign="top">
                            <input id="id_inp_srh" type="radio" name="searchtype" id="selected_input_fields" onClick="setSubOptions(this);" value="SEARCH INPUT"<TMPL_IF NAME="searchtype-SEARCH INPUT"> CHECKED</TMPL_IF>><label for="id_inp_srh">Search with Selected Input Fields</label>&nbsp;&nbsp;<a href="javascript:void(0);" onClick="var layerfgcolor = get_layer_colors('fgcolor');var layerbgcolor = get_layer_colors('bgcolor');return overlib_to_modal('<br>When users select the Search Selected Input Fields option the query will be conducted with the provided input data and attempt to find a result using the following search order based on input provided: <br /><br /> <li>10-digit phone number</li> <li>Subject name and address</li> <li>Subject name and Social Security Number</li> <li>LexID</li> <li>Address Only</li><br><br>', CAPTIONSIZE, 2, BORDER, 3, FGCOLOR, layerfgcolor, BGCOLOR, layerbgcolor, CGCOLOR, layerbgcolor, WIDTH, 400, FIXX, 200, FIXY, 805, STICKY, CAPTION, 'Search with Selected Input Fields', CLOSECLICK, CLOSETEXT, '<img border=0 width=16 height=16 alt=\'Close\' title=\'Close\' src=\'<TMPL_VAR NAME=IMGPATH>/closex.gif\'>');"><img src="<TMPL_VAR NAME=IMGPATH>/info.gif" border="0" width="16" height="16"></a>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>

        <tr>
            <td class="pdl0">
                <table style="width:100%;">
                    <tr>
                        <td class="batchpricingheader batchsubheader" colspan="2">&nbsp;<b>Select Special Processing Options</b></td>
                    </tr>
                    <tr>
                        <td class="batchinputwrapper" colspan="2">
                            <select id="id_ph_cnt" name="phone-count"> 
                                <TMPL_LOOP PHONE_COUNT_LOOP>
                                <option value="<TMPL_VAR VALUE>"<TMPL_IF SELECTED> selected="selected"</TMPL_IF>><TMPL_VAR VALUE></option>
                                </TMPL_LOOP>
                            </select>
                            &nbsp;<label for="id_ph_cnt">Select number of phone results and details to be returned</label>
                        </td>
                    </tr>
                    <tr>
                        <td class="batchinputwrapper" colspan="2">
                            <span>
                                <input id="id_geo_cd_dtl" type="checkbox" name="geo_coding_detail" value="1"<TMPL_IF NAME="geo_coding_detail"> CHECKED</TMPL_IF>>
                                <label for="id_geo_cd_dtl">Include Geo Coding Detail &#8211; Geo coding information will include latitude and longitude of address(es) associated with phone number</label> 
                            </span>
                        </td>
                    </tr>
                    <tr>
                        <td class="batchinputwrapper" colspan="2">
                            <span>
                                <input id="id_adl_adr" type="checkbox" name="additional_address_detail" value="1"<TMPL_IF NAME="additional_address_detail"> CHECKED</TMPL_IF>>
                                <label for="id_adl_adr">Include Additional Address Detail &#8211; Address detail associated with phone may include Congressional District, Carrier Route, Sort Zone, FIPS (Federal Information Processing Standards), MSA (Metropolitan Statistical Area), and CMSA (Consolidated Metropolitan Statistical Area)</label>
                            </span>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</fieldset>

<!-- END rtphones/append_fields_body.tpl -->
