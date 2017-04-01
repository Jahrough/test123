<!-- BEGIN append_fields_body.tpl -->
<div class="fieldset-title">Append Fields</div>
<fieldset class="batchFieldset">
    <table style="width:100%;">
        <!-- BEGIN -->
        <tr>
            <td colspan="2" align="center">
                <script>
                    $j(function(){
                        <TMPL_IF SEARCH_OPTION-PHONES>
                            $j('#phones').show();
                            $j('#addresses').hide();
                        </TMPL_IF>
                        <TMPL_IF SEARCH_OPTION-ADDRESSES>
                            $j('#phones').hide();
                            $j('#addresses').show();
                        </TMPL_IF>
                    })
                </script>
                <noscript>Your browser does not support JavaScript!</noscript>
                <div class="batchpricingheader mgb10">
                    <span>
                        <input type='radio' id="srch_opt_ph" name='search_option' value='phones' <TMPL_VAR SEARCH_OPTION-PHONES> onclick="$j('#phones').slideDown();$j('#addresses').slideUp();setDisabled('phones', false);setDisabled('addresses',true);fillappendfields();setDedupe();">
                        <label for="srch_opt_ph">Search for Phones</label>
                    </span>
                    <span>
                        <input type='radio' id="srch_opt_adr" name='search_option' class="mgl10" value='addresses' <TMPL_VAR SEARCH_OPTION-ADDRESSES> onclick="$j('#phones').slideUp();$j('#addresses').slideDown();setDisabled('addresses', false);setDisabled('phones', true);setDedupe();">
                        <label for="srch_opt_adr">Search for Addresses</label>
                    </span>
                    <label>
                        <input type='radio' id="srch_opt_bth" name='search_option' class="mgl10" value='both' <TMPL_VAR SEARCH_OPTION-BOTH> onclick="$j('#phones').slideDown();$j('#addresses').slideDown();setDisabled('phones', false);setDisabled('addresses',false);fillappendfields();setDedupe();">
                        <label for="srch_opt_bth">Search for Phones and Addresses</label>
                    </label>
                </div>
            </td>
        </tr>
    </table>
    <div id="phones" class="mgb10"> 
        <table style="width:100%;">
            <tr>
                <td>
                    <table style="width:100%;">
                        <tbody>
                            <tr>
                                <td class="batchpricingheader batchsubheader"><b>Phone Append</b></td>
                            </tr>

                            <tr>
                                <td class="pd0 pdt3">
                                    <table border="0" cellpadding="0" cellspacing="0" width="100%">
                                        <tr>
                                            <td class="batchinputheader" colspan="2">
                                                <span id="sel_con_prc"><b>Select Confirmation Process:</b></span><br>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="batchinputwrapper" colspan="2" align="left">
                                                <span>
                                                    <input aria-labelledby="sel_con_prc" id="cp_none" type='radio' name='confirmation_process' value='NONE' <TMPL_VAR CONFIRMATION_PROCESS-NONE>>
                                                    <span><label for="cp_none">None</label>&nbsp;&nbsp;<a href="javascript:void(0);" onClick="var layerfgcolor = get_layer_colors('fgcolor');var layerbgcolor = get_layer_colors('bgcolor');return overlib_to_modal('<br>No confirmation of matched numbers<br><br>', CAPTIONSIZE, 2, BORDER, 3, FGCOLOR, layerfgcolor, BGCOLOR, layerbgcolor, CGCOLOR, layerbgcolor, WIDTH, 400, FIXX, 200, FIXY, 805, STICKY, CAPTION, 'Select Confirmation Process', CLOSECLICK, CLOSETEXT, '<img border=0 width=16 height=16 alt=\'Close\' title=\'Close\' src=\'<TMPL_VAR NAME=IMGPATH>/closex.gif\'>');"><img src="<TMPL_VAR NAME=IMGPATH>/info.gif" border="0" width="16" height="16" alt="More Info"></a></span>
                                                </span>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="batchinputwrapper" colspan="2" align="left">
                                                <span>
                                                    <input aria-labelledby="sel_con_prc" id="cp_cf" type='radio' name='confirmation_process' value='CONFIRMATION_FLAG' <TMPL_VAR CONFIRMATION_PROCESS-CONFIRMATION_FLAG>>
                                                    <span><label for="cp_cf">Confirmation Flag</label> &nbsp;&nbsp;<a href="javascript:void(0);" onClick="var layerfgcolor = get_layer_colors('fgcolor');var layerbgcolor = get_layer_colors('bgcolor');return overlib_to_modal('<br>Y/N whether result phone number matches any submitted phone number<br><br>', CAPTIONSIZE, 2, BORDER, 3, FGCOLOR, layerfgcolor, BGCOLOR, layerbgcolor, CGCOLOR, layerbgcolor, WIDTH, 400, FIXX, 200, FIXY, 805, STICKY, CAPTION, 'Select Confirmation Process', CLOSECLICK, CLOSETEXT, '<img border=0 width=16 height=16 alt=\'Close\' title=\'Close\' src=\'<TMPL_VAR NAME=IMGPATH>/closex.gif\'>');"><img src="<TMPL_VAR NAME=IMGPATH>/info.gif" border="0" width="16" height="16" alt="More Info"></a></span>
                                                </span>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="batchinputwrapper" colspan="2" align="left">
                                                <span>
                                                    <input aria-labelledby="sel_con_prc" id="cp_blnk" type='radio' name='confirmation_process' value='BLANKOUT_MATCHED_NUMBERS' <TMPL_VAR CONFIRMATION_PROCESS-BLANKOUT_MATCHED_NUMBERS>>
                                                    <span><label for="cp_blnk">Blank out Matched Numbers</label> &nbsp;&nbsp;<a href="javascript:void(0);" onClick="var layerfgcolor = get_layer_colors('fgcolor');var layerbgcolor = get_layer_colors('bgcolor');return overlib_to_modal('<br>Result phone numbers matching submitted phone numbers will be blanked out<br><br>', CAPTIONSIZE, 2, BORDER, 3, FGCOLOR, layerfgcolor, BGCOLOR, layerbgcolor, CGCOLOR, layerbgcolor, WIDTH, 400, FIXX, 200, FIXY, 805, STICKY, CAPTION, 'Select Confirmation Process', CLOSECLICK, CLOSETEXT, '<img border=0 width=16 height=16 alt=\'Close\' title=\'Close\' src=\'<TMPL_VAR NAME=IMGPATH>/closex.gif\'>');"><img src="<TMPL_VAR NAME=IMGPATH>/info.gif" border="0" width="16" height="16" alt="More Info"></a></span>
                                                </span>
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr>
                                <td class="smallfont1"><hr class="dashed-red"></td>
                            </tr>

                            <tr>
                                <td class="batchinputheader"><span id="rtn_fld"><b>Return Optional Phone Line Type Field:</span></b></td>
                            </tr>
                            <tr>
                                <td class="batchinputwrapper">
                                    <input aria-labelledby="rtn_fld" id="rtn_phn_typ" type="checkbox" name="includeswitchtype" value="1" <TMPL_VAR NAME=includeswitchtype> onClick="">
                                    <label for="rtn_phn_typ">Return phone line type (ie Cell, POTS, VOIP) with each phone</label>
                                    <a href="javascript:void(0);" onClick="var layerfgcolor = get_layer_colors('fgcolor');var layerbgcolor = get_layer_colors('bgcolor');return overlib_to_modal('<br>This option will append the phone line type (ie Cell, POTS, VOIP) to each phone.<br><br>', CAPTIONSIZE, 2, BORDER, 3, FGCOLOR, layerfgcolor, BGCOLOR, layerbgcolor, CGCOLOR, layerbgcolor, WIDTH, 400, FIXX, 60, FIXY, 205, STICKY, CAPTION, 'Return Phone Line Type', CLOSECLICK, CLOSETEXT, '<img border=0 width=16 height=16 alt=\'Close\' title=\'Close\' src=\'<TMPL_VAR NAME=IMGPATH>/closex.gif\'>');"><img src="<TMPL_VAR NAME=IMGPATH>/info.gif" border="0" width="16" height="16" alt="More Info"></a>
                                </td>
                            </tr>

                            <tr>
                                <td class="batchinputheader"><span id="rtn_cr_inf"><b>Return Optional Carrier Information:</b></span></td>
                            </tr>

                            <tr>
                                <td class="batchinputwrapper">
                                    <span>
                                        <input aria-labelledby="rtn_cr_inf" id="rtn_ph_inf" type="checkbox" name="phonesplusoutput" value="1" <TMPL_VAR NAME=phonesplusoutput> onClick="">
                                        <label for="rtn_ph_inf">Return carrier information with each phone</label>
                                    </span>
                                    <a href="javascript:void(0);" onClick="var layerfgcolor = get_layer_colors('fgcolor');var layerbgcolor = get_layer_colors('bgcolor');return overlib_to_modal('<br>This option will append the carrier name, location, and description for each phone.<br><br>', CAPTIONSIZE, 2, BORDER, 3, FGCOLOR, layerfgcolor, BGCOLOR, layerbgcolor, CGCOLOR, layerbgcolor, WIDTH, 400, FIXX, 60, FIXY, 205, STICKY, CAPTION, 'Return Carrier Information', CLOSECLICK, CLOSETEXT, '<img border=0 width=16 height=16 alt=\'Close\' title=\'Close\' src=\'<TMPL_VAR NAME=IMGPATH>/closex.gif\'>');"><img src="<TMPL_VAR NAME=IMGPATH>/info.gif" border="0" width="16" height="16" alt="More Info"></a>
                                </td>
                            </tr>
                            <tr>
                                <td class="batchinputheader"><b>Number of Phones to return:</b></td>
                            </tr>
                            <tr>
                                <td class="batchinputwrapper">
                                    <span>
                                        <label for="id_cnt">Total (max) number of phone numbers to be returned</label>
                                        <TMPL_IF COUNT_LOOP>
                                            <select id="id_cnt" name="count" width="10" height="3" size="1">
                                                <TMPL_LOOP COUNT_LOOP>
                                                    <option value="<TMPL_VAR VALUE>" <TMPL_IF SELECTED>selected</TMPL_IF>><TMPL_VAR DISPLAY_NAME></option>
                                                </TMPL_LOOP>
                                            </select>
                                        </TMPL_IF>
                                    </span>
                                    <a href="javascript:void(0);" onClick="var layerfgcolor = get_layer_colors('fgcolor');var layerbgcolor = get_layer_colors('bgcolor');return overlib_to_modal('<br>Choose the total number for phones to be returned. &nbsp;Default is set to 3.<br><br>', CAPTIONSIZE, 2, BORDER, 3, FGCOLOR, layerfgcolor, BGCOLOR, layerbgcolor, CGCOLOR, layerbgcolor, WIDTH, 400, FIXX, 200, FIXY, 205, STICKY, CAPTION, 'Additional Phone Options', CLOSECLICK, CLOSETEXT, '<img border=0 width=16 height=16 alt=\'Close\' title=\'Close\' src=\'<TMPL_VAR NAME=IMGPATH>/closex.gif\'>');"><img src="<TMPL_VAR NAME=IMGPATH>/info.gif" border="0" width="16" height="16" alt="More Info"></a>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </td>
            </tr>
        </table>
    </div>
    <div id="addresses">
        <table style="width:100%;">
            <tr>
                <td>
                    <table style="width:100%;">
                        <tr>
                            <td class="batchpricingheader batchsubheader">
                                <b>Address Append</b>
                            </td>
                        </tr>
                        <tr>
                            <td class="batchinputwrapper pdt3">
                                <span>
                                    <input id="only_rtn_adr" type="checkbox" name="newaddressesonly" value="1" <TMPL_VAR NAME=newaddressesonly> onClick="setDedupe();">
                                    <label for="only_rtn_adr">Only return addresses which differ from any provided address</label>
                                </label>
                                <a href="javascript:void(0);" onClick="var layerfgcolor = get_layer_colors('fgcolor');var layerbgcolor = get_layer_colors('bgcolor');return overlib_to_modal('<br>This option will append an address only if it does not match an input address provided for the subject.<br><br>', CAPTIONSIZE, 2, BORDER, 3, FGCOLOR, layerfgcolor, BGCOLOR, layerbgcolor, CGCOLOR, layerbgcolor, WIDTH, 400, FIXX, 200, FIXY, 805, STICKY, CAPTION, 'Return Different Addresses', CLOSECLICK, CLOSETEXT, '<img border=0 width=16 height=16 alt=\'Close\' title=\'Close\' src=\'<TMPL_VAR NAME=IMGPATH>/closex.gif\'>');">
                                    <img src="<TMPL_VAR NAME=IMGPATH>/info.gif" border="0" width="16" height="16" alt="More Info">
                                </a>
                            </td>
                        </tr>
                        <tr>
                            <td class="batchinputheader"><span id="lbl_option"><b>Options:</b></span></td>
                        </tr>
                        <tr>
                            <td class="batchinputwrapper">
                                <span>
                                    <input aria-labelledby="lbl_option" id="id_dedupe" type='radio' name='dedupe' value='1' <TMPL_VAR DEDUPE-1>>
                                    <label for="id_dedupe">Do not return any addresses</label>
                                </span>
                                <a href="javascript:void(0);" onClick="var layerfgcolor = get_layer_colors('fgcolor');var layerbgcolor = get_layer_colors('bgcolor');return overlib_to_modal('<br>Do not return anything if address is a duplicate.<br><br>', CAPTIONSIZE, 2, BORDER, 3, FGCOLOR, layerfgcolor, BGCOLOR, layerbgcolor, CGCOLOR, layerbgcolor, WIDTH, 400, FIXX, 200, FIXY, 805, STICKY, CAPTION, 'Dedupe Options', CLOSECLICK, CLOSETEXT, '<img border=0 width=16 height=16 alt=\'Close\' title=\'Close\' src=\'<TMPL_VAR NAME=IMGPATH>/closex.gif\'>');"><img src="<TMPL_VAR NAME=IMGPATH>/info.gif" border="0" width="16" height="16" alt="More Info"></a>
                            </td>
                        </tr>
                        <tr>
                            <td class="batchinputwrapper">
                                <span>
                                    <input aria-labelledby="lbl_option" id="id_rtn_nxt_adr" type='radio' name='dedupe' value='2' <TMPL_VAR DEDUPE-2>>
                                    <label for="id_rtn_nxt_adr">Return next most current address</label>
                                </span>
                                <a href="javascript:void(0);" onClick="var layerfgcolor = get_layer_colors('fgcolor');var layerbgcolor = get_layer_colors('bgcolor');return overlib_to_modal('<br>Return next most current address.<br><br>', CAPTIONSIZE, 2, BORDER, 3, FGCOLOR, layerfgcolor, BGCOLOR, layerbgcolor, CGCOLOR, layerbgcolor, WIDTH, 400, FIXX, 200, FIXY, 805, STICKY, CAPTION, 'Dedupe Options', CLOSECLICK, CLOSETEXT, '<img border=0 width=16 height=16 alt=\'Close\' title=\'Close\' src=\'<TMPL_VAR NAME=IMGPATH>/closex.gif\'>');"><img src="<TMPL_VAR NAME=IMGPATH>/info.gif" border="0" width="16" height="16" alt="More Info"></a>
                            </td>
                        </tr>
                        <tr>
                            <td class="batchinputwrapper">
                                <span>
                                    <input aria-labelledby="lbl_option" id="id_blnk_con_flg" type='radio' name='dedupe' value='3' <TMPL_VAR DEDUPE-3>>
                                    <label for="id_blnk_con_flg">Blank out Matches and return confirmation flag</label>
                                </span>
                                <a href="javascript:void(0);" onClick="var layerfgcolor = get_layer_colors('fgcolor');var layerbgcolor = get_layer_colors('bgcolor');return overlib_to_modal('<br>The flags indicate that the address is either our most current address (C) or a history address (H).<br><br>', CAPTIONSIZE, 2, BORDER, 3, FGCOLOR, layerfgcolor, BGCOLOR, layerbgcolor, CGCOLOR, layerbgcolor, WIDTH, 400, FIXX, 200, FIXY, 805, STICKY, CAPTION, 'Dedupe Options', CLOSECLICK, CLOSETEXT, '<img border=0 width=16 height=16 alt=\'Close\' title=\'Close\' src=\'<TMPL_VAR NAME=IMGPATH>/closex.gif\'>');"><img src="<TMPL_VAR NAME=IMGPATH>/info.gif" border="0" width="16" height="16" alt="More Info"></a>
                            </td>
                        </tr>
                        <tr>
                            <td class="batchinputwrapper">
                                <span>
                                    <label for="id_addresscount">Number of addresses to be returned</label>
                                    <TMPL_IF ADDRESSCOUNT_LOOP>
                                        <select id="id_addresscount" name="addresscount" width="10" height="3" size="1">
                                            <TMPL_LOOP ADDRESSCOUNT_LOOP>
                                                <option value="<TMPL_VAR VALUE>" <TMPL_IF SELECTED>selected</TMPL_IF>><TMPL_VAR ADDRESS_DISPLAY_NAME></option> 
                                            </TMPL_LOOP>
                                        </select>
                                    </TMPL_IF>
                                </span>
                                <a href="javascript:void(0);" onClick="var layerfgcolor = get_layer_colors('fgcolor');var layerbgcolor = get_layer_colors('bgcolor');return overlib_to_modal('<br>Choose the total number for addresses to be returned. Default total is set to 3.<br><br>', CAPTIONSIZE, 2, BORDER, 3, FGCOLOR, layerfgcolor, BGCOLOR, layerbgcolor, CGCOLOR, layerbgcolor, WIDTH, 400, FIXX, 200, FIXY, 805, STICKY, CAPTION, 'Additional Address Options', CLOSECLICK, CLOSETEXT, '<img border=0 width=16 height=16 alt=\'Close\' title=\'Close\' src=\'<TMPL_VAR NAME=IMGPATH>/closex.gif\'>');"><img src="<TMPL_VAR NAME=IMGPATH>/info.gif" border="0" width="16" height="16" alt="More Info"></a>
                            </td>
                        </tr>
                        <tr>
                            <td class="batchinputwrapper">
                                <span>
                                    <label for="id_mnth_cnt">Number of months of address history</label>
                                    <input id="id_mnth_cnt" type="text" name="monthcount" value="<TMPL_VAR MONTHCOUNT>" maxlength="3" size="2">
                                </span>
                                <a href="javascript:void(0);" onClick="var layerfgcolor = get_layer_colors('fgcolor');var layerbgcolor = get_layer_colors('bgcolor');return overlib_to_modal('<br>Choose the number of months of address history. The maximum valid value is 120 months of history.<br><br>', CAPTIONSIZE, 2, BORDER, 3, FGCOLOR, layerfgcolor, BGCOLOR, layerbgcolor, CGCOLOR, layerbgcolor, WIDTH, 400, FIXX, 200, FIXY, 805, STICKY, CAPTION, 'Months Address Options', CLOSECLICK, CLOSETEXT, '<img border=0 width=16 height=16 alt=\'Close\' title=\'Close\' src=\'<TMPL_VAR NAME=IMGPATH>/closex.gif\'>');"><img src="<TMPL_VAR NAME=IMGPATH>/info.gif" border="0" width="16" height="16" alt="More Info"></a>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
    </div>
</fieldset>
<!-- END append_fields_body.tpl -->
