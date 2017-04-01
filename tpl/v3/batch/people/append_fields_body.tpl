<!-- BEGIN append_fields_body.tpl -->
        	<div class="fieldset-title">Select the fields you wish to have appended to your file</div>
			<!-- BEGIN -->
			<fieldset class="batchFieldset pdt0" style="border:0;">
				
                <TMPL_IF HEA>
                    <table style="width:100%;">
                        <tr>
                            <td class="batchsubheader">
                                Select Person Batch Options
                            </td>
                        </tr>
                        <tr>
                            <td valign="top">
                              &nbsp;<input type="checkbox" name="dateofdeath" value="1" onClick="check_bestaddress_special(this, <TMPL_VAR NAME=dateofdeath-price>, <TMPL_VAR NAME=base-batch-price>);" <TMPL_IF NAME=dateofdeath> CHECKED</TMPL_IF>>Date of Death <TMPL_UNLESS HIDE_PRICES> -- $.05 per input record plus $.60 per deceased record returned</TMPL_UNLESS>&nbsp;&nbsp;<a href="javascript:void(0);" onClick="var layerfgcolor = get_layer_colors('fgcolor');var layerbgcolor = get_layer_colors('bgcolor');return overlib_to_modal('<br> Date of death will display in your output file as the probable date of death for the individual\'s input information.<br><br>', CAPTIONSIZE, 2, BORDER, 3, FGCOLOR, layerfgcolor, BGCOLOR, layerbgcolor, CGCOLOR, layerbgcolor, WIDTH, 275, FIXX, 360, FIXY, 205, STICKY, CAPTION, 'Date of Death', CLOSECLICK, CLOSETEXT, '<img border=0 width=16 height=16 alt=\'Close\' title=\'Close\' src=\'<TMPL_VAR NAME=IMGPATH>/closex.gif\'>');"><img src="<TMPL_VAR NAME=IMGPATH>/info.gif" border="0" width="16" height="16"></a>
                            <br>
                              &nbsp;<input type="checkbox" name="dateofbirth" value="1" onClick="check_bestaddress_special(this, <TMPL_VAR NAME=dateofbirth-price>, <TMPL_VAR NAME=base-batch-price>);" <TMPL_IF NAME=dateofbirth> CHECKED</TMPL_IF>>Best Date of Birth <TMPL_UNLESS HIDE_PRICES> -- $.15 per per Date of Birth returned or verified Date of Birth</TMPL_UNLESS>&nbsp;&nbsp;<a href="javascript:void(0);" onClick="var layerfgcolor = get_layer_colors('fgcolor');var layerbgcolor = get_layer_colors('bgcolor');return overlib_to_modal('<br> Date of birth returned is the most commonly reported DOB for the individual. <br><br>', CAPTIONSIZE, 2, BORDER, 3, FGCOLOR, layerfgcolor, BGCOLOR, layerbgcolor, CGCOLOR, layerbgcolor, WIDTH, 275, FIXX, 360, FIXY, 205, STICKY, CAPTION, 'Date of Birth', CLOSECLICK, CLOSETEXT, '<img border=0 width=16 height=16 alt=\'Close\' title=\'Close\' src=\'<TMPL_VAR NAME=IMGPATH>/closex.gif\'>');"><img src="<TMPL_VAR NAME=IMGPATH>/info.gif" border="0" width="16" height="16"></a>
                            <br>
                              &nbsp;<input type="checkbox" name="bestssn" value="1" onClick="check_bestaddress_special(this, <TMPL_VAR NAME=bestssn-price>, <TMPL_VAR NAME=base-batch-price>);" <TMPL_IF NAME=bestssn> CHECKED</TMPL_IF>>Best SSN <TMPL_UNLESS HIDE_PRICES> -- $.35 per SSN returned or verified SSN</TMPL_UNLESS>&nbsp;&nbsp;<a href="javascript:void(0);" onClick="var layerfgcolor = get_layer_colors('fgcolor');var layerbgcolor = get_layer_colors('bgcolor');return overlib_to_modal('<br> Social Security Number returned is the most commonly reported SSN for the individual.<br><br>', CAPTIONSIZE, 2, BORDER, 3, FGCOLOR, layerfgcolor, BGCOLOR, layerbgcolor, CGCOLOR, layerbgcolor, WIDTH, 275, FIXX, 360, FIXY, 205, STICKY, CAPTION, 'Best SSN', CLOSECLICK, CLOSETEXT, '<img border=0 width=16 height=16 alt=\'Close\' title=\'Close\' src=\'<TMPL_VAR NAME=IMGPATH>/closex.gif\'>');"><img src="<TMPL_VAR NAME=IMGPATH>/info.gif" border="0" width="16" height="16"></a>
                            </td>
                        </tr>
                    </table>
                </TMPL_IF>

			<TMPL_IF SHOW_BATCH_UPDATE>
				<INPUT TYPE="HIDDEN" NAME="BATCH_TOTAL" VALUE="1">
			</TMPL_IF>
				<table>
					<tr>
                        <td class="batchsubheader">
                            <TMPL_IF NAME=INS>OR<TMPL_ELSE>Select</TMPL_IF> Special Processing Option
                        </td>
					</tr>
					<tr>
						<td class="pdt8 pdb8">
                            <input id="id_bst_adr" type="checkbox" name="dedupeall" onClick="check_bestaddress_special(this, <TMPL_VAR NAME=dedupeall-price>, <TMPL_VAR NAME=base-batch-price>);" value="1"<TMPL_IF NAME=dedupeall> CHECKED</TMPL_IF>><label for="id_bst_adr">Best Address -- By Date: Return Different Address and Phone.<TMPL_UNLESS HIDE_PRICES> Value Priced at $.25 per record</TMPL_UNLESS></label>&nbsp;&nbsp;<a href="javascript:void(0);" onClick="var layerfgcolor = get_layer_colors('fgcolor');var layerbgcolor = get_layer_colors('bgcolor');return overlib_to_modal('<br>Search returns addresses and/or phone numbers. If an address and/or phone number is provided as input, the search will be conducted to only find addresses and/or phone numbers that are different and more current.<br><br>', CAPTIONSIZE, 2, BORDER, 3, FGCOLOR, layerfgcolor, BGCOLOR, layerbgcolor, CGCOLOR, layerbgcolor, WIDTH, 275, FIXX, 360, FIXY, 380, STICKY, CAPTION, 'Best Address -- By Date: Return Different Address and Phone.', CLOSECLICK, CLOSETEXT, '<img border=0 width=16 height=16 alt=\'Close\' title=\'Close\' src=\'<TMPL_VAR NAME=IMGPATH>/closex.gif\'>');"><img src="<TMPL_VAR NAME=IMGPATH>/info.gif" border="0" width="16" height="16" alt="More information"></a>
                            <BR>
                            <input id="id_bst_adr_adr" type="checkbox" name="dedupeaddresses" onClick="check_bestaddress_special(this, <TMPL_VAR NAME=dedupeaddresses-price>, <TMPL_VAR NAME=base-batch-price>);" value="1"<TMPL_IF NAME=dedupeaddresses> CHECKED</TMPL_IF>><label for="id_bst_adr_adr">Best Address -- By Date: Return Different Address.</label>&nbsp;&nbsp;<TMPL_UNLESS HIDE_PRICES>$.05 per record plus $.20 per address returned&nbsp;&nbsp;</TMPL_UNLESS><a href="javascript:void(0);" onClick="var layerfgcolor = get_layer_colors('fgcolor');var layerbgcolor = get_layer_colors('bgcolor');return overlib_to_modal('<br>Search returns addresses. If an address is provided as input, the search will be conducted to only find addresses that are different and more current. Phone numbers are not returned.<br><br>', CAPTIONSIZE, 2, BORDER, 3, FGCOLOR, layerfgcolor, BGCOLOR, layerbgcolor, CGCOLOR, layerbgcolor, WIDTH, 275, FIXX, 360, FIXY, 380, STICKY, CAPTION, 'Best Address -- By Date: Return Different Address.', CLOSECLICK, CLOSETEXT, '<img border=0 width=16 height=16 alt=\'Close\' title=\'Close\' src=\'<TMPL_VAR NAME=IMGPATH>/closex.gif\'>');"><img src="<TMPL_VAR NAME=IMGPATH>/info.gif" border="0" width="16" height="16" alt="More information"></a>
                            <BR>
                            <input id="id_phns" type="checkbox" name="dedupephones" onClick="check_bestaddress_special(this, <TMPL_VAR NAME=dedupephones-price>, <TMPL_VAR NAME=base-batch-price>);" value="1"<TMPL_IF NAME=dedupephones> CHECKED</TMPL_IF>><label for="id_phns">Phones Only: Return Different Phone</label>&nbsp;&nbsp;<TMPL_UNLESS HIDE_PRICES>$.03 per record plus $.14 per phone returned.&nbsp;&nbsp;</TMPL_UNLESS><a href="javascript:void(0);" onClick="var layerfgcolor = get_layer_colors('fgcolor');var layerbgcolor = get_layer_colors('bgcolor');return overlib_to_modal('<br>Search returns phone numbers. If a phone number is provided as input, the search will be conducted to only find phone numbers that are different and more current. Up to three phones can be submitted for comparision. Addresses are not returned.<br><br>', CAPTIONSIZE, 2, BORDER, 3, FGCOLOR, layerfgcolor, BGCOLOR, layerbgcolor, CGCOLOR, layerbgcolor, WIDTH, 275, FIXX, 360, FIXY, 380, STICKY, CAPTION, 'Phones Only: Return Different Phone.', CLOSECLICK, CLOSETEXT, '<img border=0 width=16 height=16 alt=\'Close\' title=\'Close\' src=\'<TMPL_VAR NAME=IMGPATH>/closex.gif\'>');"><img src="<TMPL_VAR NAME=IMGPATH>/info.gif" border="0" width="16" height="16" alt="More information"></a>
                        </td>
					</tr>
				</table>
			

				<table>
                    <tr>
                        <td class="batchsubheader">
                            OR Choose one of the following Special Batch Options
                        </td>
                    </tr>
					<tr>
						<td class="pdt8"><input id="id_fve_prop" type="checkbox" name="includeproperty" value="1" <TMPL_VAR NAME=includeproperty> onClick="clearaccurintphones(<TMPL_VAR NAME=accurintphones-price>,<TMPL_VAR NAME=accurintphones_relatives-price>);clearbankruptcy(<TMPL_VAR NAME=bankruptciesonly-price>,<TMPL_VAR NAME=includedeceasedbk-price>);checksubtractbase(this,<TMPL_VAR NAME=base-batch-price>);quickpick(3,<TMPL_VAR NAME=includeassociates-price>,<TMPL_VAR NAME=includerelatives-price>,<TMPL_VAR NAME=includepaw-price>,<TMPL_VAR NAME=base-batch-price>);change_total(this, <TMPL_VAR NAME=includeproperty-price>,document.forms[0].BATCH_TOTAL,document.forms[0].BATCH_PRE_TOTAL)"><label for="id_fve_prop">Add Up to Five Properties owned by the subject<TMPL_UNLESS HIDE_PRICES> for only a <b>$1.00</b> per record match</TMPL_UNLESS></label>&nbsp;&nbsp;<a href="javascript:void(0);" onClick="var layerfgcolor = get_layer_colors('fgcolor');var layerbgcolor = get_layer_colors('bgcolor');return overlib_to_modal('<br>Appends to the output record property deed and assessment information on up to five (5) properties owned by the subject. Fields returned: parcel number, name owner 1, name owner 2, property address, property city, property state, property zip, total value, sale date, sale price, name seller, mortgage amount, assessed value, total market value, legal description..<br><br>', CAPTIONSIZE, 2, BORDER, 3, FGCOLOR, layerfgcolor, BGCOLOR, layerbgcolor, CGCOLOR, layerbgcolor, WIDTH, 275, FIXX, 360, FIXY, 280, STICKY, CAPTION, 'Properties Owned By Subject', CLOSECLICK, CLOSETEXT, '<img border=0 width=16 height=16 alt=\'Close\' title=\'Close\' src=\'<TMPL_VAR NAME=IMGPATH>/closex.gif\'>');"><img src="<TMPL_VAR NAME=IMGPATH>/info.gif" border="0" width="16" height="16" alt="More information"></a></td>
					</tr>
				</table>

			<TMPL_IF BATCH_ADMIN>
				<table>
                    <tr>
                        <td class="batchsubheader">
                            Roxie Batch Options
                        </td>
                    </tr>
				</table>
				<table>
				  <tr>
				    <td class="pdt8 pdb8">
					<input id="id_adl" type="checkbox" name="preconfig_adlonly" value="1" <TMPL_VAR NAME=preconfig_adlonly> onClick="check_roxie_special(this,<TMPL_VAR NAME=preconfig_adlonly-price>, <TMPL_VAR NAME=base-batch-price>);"><label for="id_adl">ADL Only</label>&nbsp;&nbsp;<a href="javascript:void(0);" onClick="var layerfgcolor = get_layer_colors('fgcolor');var layerbgcolor = get_layer_colors('bgcolor');return overlib_to_modal('<br>Returns ADL and score.<br><br>', CAPTIONSIZE, 2, BORDER, 3, FGCOLOR, layerfgcolor, BGCOLOR, layerbgcolor, CGCOLOR, layerbgcolor, WIDTH, 275, FIXX, 60, FIXY, 875, STICKY, CAPTION, 'ADL Only', CLOSECLICK, CLOSETEXT, '<img border=0 width=16 height=16 alt=\'Close\' title=\'Close\' src=\'<TMPL_VAR NAME=IMGPATH>/closex.gif\'>');"><img src="<TMPL_VAR NAME=IMGPATH>/info.gif" border="0" width="16" height="16" alt="More information"></a><INPUT TYPE="HIDDEN" NAME="ADLONLY_PRICE" VALUE="<TMPL_VAR NAME=preconfig_adlonly-price>">

					<br>

					<input id="id_impact" type="checkbox" name="preconfig_adlimpact" value="1" <TMPL_VAR NAME=preconfig_adlimpact> onClick="check_roxie_special(this,<TMPL_VAR NAME=preconfig_adlimpact-price>, <TMPL_VAR NAME=base-batch-price>);"><label for="id_impact">Impact</label>&nbsp;&nbsp;<a href="javascript:void(0);" onClick="var layerfgcolor = get_layer_colors('fgcolor');var layerbgcolor = get_layer_colors('bgcolor');return overlib_to_modal('<br>Returns Impact.<br><br>', CAPTIONSIZE, 2, BORDER, 3, FGCOLOR, layerfgcolor, BGCOLOR, layerbgcolor, CGCOLOR, layerbgcolor, WIDTH, 275, FIXX, 60, FIXY, 875, STICKY, CAPTION, 'Impact', CLOSECLICK, CLOSETEXT, '<img border=0 width=16 height=16 alt=\'Close\' title=\'Close\' src=\'<TMPL_VAR NAME=IMGPATH>/closex.gif\'>');"><img src="<TMPL_VAR NAME=IMGPATH>/info.gif" border="0" width="16" height="16" alt="More information"></a><INPUT TYPE="HIDDEN" NAME="ADLIMPACT_PRICE" VALUE="<TMPL_VAR NAME=preconfig_adlimpact-price>">
					<br>

					<input id="id_adl_bst" type="checkbox" name="preconfig_adlbestfull" value="1" <TMPL_VAR NAME=preconfig_adlbestfull> onClick="check_roxie_special(this,<TMPL_VAR NAME=preconfig_adlbestfull-price>, <TMPL_VAR NAME=base-batch-price>);"><label for="id_adl_bst">ADL with Best Data</label>&nbsp;&nbsp;<a href="javascript:void(0);" onClick="var layerfgcolor = get_layer_colors('fgcolor');var layerbgcolor = get_layer_colors('bgcolor');return overlib_to_modal('<br>Returns ADL, match score, all best data and all verification scores.<br><br>', CAPTIONSIZE, 2, BORDER, 3, FGCOLOR, layerfgcolor, BGCOLOR, layerbgcolor, CGCOLOR, layerbgcolor, WIDTH, 275, FIXX, 60, FIXY, 875, STICKY, CAPTION, 'ADL with Best Data', CLOSECLICK, CLOSETEXT, '<img border=0 width=16 height=16 alt=\'Close\' title=\'Close\' src=\'<TMPL_VAR NAME=IMGPATH>/closex.gif\'>');"><img src="<TMPL_VAR NAME=IMGPATH>/info.gif" border="0" width="16" height="16" alt="More information"></a><INPUT TYPE="HIDDEN" NAME="ADLBESTFULL_PRICE" VALUE="<TMPL_VAR NAME=preconfig_adlbestfull-price>">

					<br>

					<input id="id_hgh_impact" type="checkbox" name="preconfig_adlhighimpact" value="1" <TMPL_VAR NAME=preconfig_adlhighimpact> onClick="check_roxie_special(this,<TMPL_VAR NAME=preconfig_adlhighimpact-price>, <TMPL_VAR NAME=base-batch-price>);"><label for="id_hgh_impact">High Impact</label>&nbsp;&nbsp;<a href="javascript:void(0);" onClick="var layerfgcolor = get_layer_colors('fgcolor');var layerbgcolor = get_layer_colors('bgcolor');return overlib_to_modal('<br>Returns ADL High Impact.<br><br>', CAPTIONSIZE, 2, BORDER, 3, FGCOLOR, layerfgcolor, BGCOLOR, layerbgcolor, CGCOLOR, layerbgcolor, WIDTH, 275, FIXX, 60, FIXY, 875, STICKY, CAPTION, 'High Impact', CLOSECLICK, CLOSETEXT, '<img border=0 width=16 height=16 alt=\'Close\' title=\'Close\' src=\'<TMPL_VAR NAME=IMGPATH>/closex.gif\'>');"><img src="<TMPL_VAR NAME=IMGPATH>/info.gif" border="0" width="16" height="16" alt="More information"></a><INPUT TYPE="HIDDEN" NAME="ADLIMPACT_PRICE" VALUE="<TMPL_VAR NAME=preconfig_adlhighimpact-price>">

					<br>

					<input id="id_bst_dat" type="checkbox" name="preconfig_adlbest" value="1" <TMPL_VAR NAME=preconfig_adlbest> onClick="check_roxie_special(this,<TMPL_VAR NAME=preconfig_adlbest-price>, <TMPL_VAR NAME=base-batch-price>);"><label for="id_bst_dat">Best Data Only</label>&nbsp;&nbsp;<a href="javascript:void(0);" onClick="var layerfgcolor = get_layer_colors('fgcolor');var layerbgcolor = get_layer_colors('bgcolor');return overlib_to_modal('<br>Returns match score, all best data and all verification scores.<br><br>', CAPTIONSIZE, 2, BORDER, 3, FGCOLOR, layerfgcolor, BGCOLOR, layerbgcolor, CGCOLOR, layerbgcolor, WIDTH, 275, FIXX, 60, FIXY, 875, STICKY, CAPTION, 'Best Data Only', CLOSECLICK, CLOSETEXT, '<img border=0 width=16 height=16 alt=\'Close\' title=\'Close\' src=\'<TMPL_VAR NAME=IMGPATH>/closex.gif\'>');"><img src="<TMPL_VAR NAME=IMGPATH>/info.gif" border="0" width="16" height="16" alt="More information"></a><INPUT TYPE="HIDDEN" NAME="ADLBEST_PRICE" VALUE="<TMPL_VAR NAME=preconfig_adlbest-price>">
					
					<br>

					<input id="id_imp_pls" type="checkbox" name="preconfig_adlhighimpact_plus" value="1" <TMPL_VAR NAME=preconfig_adlhighimpact_plus> onClick="check_roxie_special(this,<TMPL_VAR NAME=preconfig_adlhighimpact_plus-price>, <TMPL_VAR NAME=base-batch-price>);"><label for="id_imp_pls">High Impact Plus</label>&nbsp;&nbsp;<a href="javascript:void(0);" onClick="var layerfgcolor = get_layer_colors('fgcolor');var layerbgcolor = get_layer_colors('bgcolor');return overlib_to_modal('<br>Returns ADL High Impact Plus.<br><br>', CAPTIONSIZE, 2, BORDER, 3, FGCOLOR, layerfgcolor, BGCOLOR, layerbgcolor, CGCOLOR, layerbgcolor, WIDTH, 275, FIXX, 60, FIXY, 875, STICKY, CAPTION, 'High Impact Plus', CLOSECLICK, CLOSETEXT, '<img border=0 width=16 height=16 alt=\'Close\' title=\'Close\' src=\'<TMPL_VAR NAME=IMGPATH>/closex.gif\'>');"><img src="<TMPL_VAR NAME=IMGPATH>/info.gif" border="0" width="16" height="16" alt="More information"></a><INPUT TYPE="HIDDEN" NAME="ADLIMPACT_PRICE" VALUE="<TMPL_VAR NAME=preconfig_adlhighimpact_plus-price>">

					<br>

					<input id="id_adl_up" type="checkbox" name="preconfig_adlupdate" value="1" <TMPL_VAR NAME=preconfig_adlupdate> onClick="check_roxie_special(this,<TMPL_VAR NAME=preconfig_adlupdate-price>, <TMPL_VAR NAME=base-batch-price>);"><label for="id_adl_up">ADL Updates</label>&nbsp;&nbsp;<a href="javascript:void(0);" onClick="var layerfgcolor = get_layer_colors('fgcolor');var layerbgcolor = get_layer_colors('bgcolor');return overlib_to_modal('<br>Returns ADL updates.<br><br>', CAPTIONSIZE, 2, BORDER, 3, FGCOLOR, layerfgcolor, BGCOLOR, layerbgcolor, CGCOLOR, layerbgcolor, WIDTH, 275, FIXX, 60, FIXY, 875, STICKY, CAPTION, 'ADL Updates', CLOSECLICK, CLOSETEXT, '<img border=0 width=16 height=16 alt=\'Close\' title=\'Close\' src=\'<TMPL_VAR NAME=IMGPATH>/closex.gif\'>');"><img src="<TMPL_VAR NAME=IMGPATH>/info.gif" border="0" width="16" height="16" alt="More information"></a><INPUT TYPE="HIDDEN" NAME="ADLUPDATE_PRICE" VALUE="<TMPL_VAR NAME=preconfig_adlupdate-price>">
					</td>

				  </tr>
				</table>
            </TMPL_IF>
    </fieldset>    
<!-- END append_fields_body.tpl -->
