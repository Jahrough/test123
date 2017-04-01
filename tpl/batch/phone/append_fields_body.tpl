<!-- BEGIN append_fields_body.tpl -->

<table border="0" width="600">
  <tr>
    <td width="600">
    <br>
    <table border="0" cellpadding="0" cellspacing="0" width="600">
      <tr>
        <td class="wizardcounter" width="30%" align="left" nowrap="nowrap"><TMPL_INCLUDE NAME="title_line.tpl"></td>
	<td class="wizardcounter" width="30%" align="right"><b>Click the&nbsp;<a href="javascript:void(0);" onClick="var layerfgcolor = get_layer_colors('fgcolor');var layerbgcolor = get_layer_colors('bgcolor');return overlib('<br>Click this button for more detail regarding a particular corresponding item.<br><br>', CAPTIONSIZE, 2, BORDER, 3, FGCOLOR, layerfgcolor, BGCOLOR, layerbgcolor, CGCOLOR, layerbgcolor, WIDTH, 300, BELOW, LEFT, STICKY, CAPTION, 'More Detail', CLOSECLICK, CLOSETEXT, '<img border=0 width=16 height=16 alt=\'Close\' title=\'Close\' src=\'<TMPL_VAR NAME=IMGPATH>/closex.gif\'>');"><img src="<TMPL_VAR NAME=IMGPATH>/info.gif" border="0" width="16" height="16"></a>&nbsp;Button For More Detail&nbsp;</b></td>
      </tr>
      <tr>
        <td class="wizardcounter" width="30%" align="left"><TMPL_INCLUDE NAME="../help_contact_line.tpl"></td>
      </tr>
    </table>
    </td>
  </tr>
  <tr>
    <td align="center" class="batchbanner" colspan="2"><b>Append Fields</b></td>
  </tr>
<!-- BEGIN -->
<TMPL_IF FREE_TRIAL_CREDITS>
  <tr>
    <td class="batchalert" align="center"><br><b>This account has <TMPL_VAR FREE_TRIAL_CREDITS> free records to process</b></td>
  </tr>
</TMPL_IF>

  <tr>
    <td colspan="2" align="center">
    <br>
    <span class="batchpricingheader">
	<input type='radio' name='search_option' value='phones' <TMPL_VAR SEARCH_OPTION-PHONES> onclick="setDisabled('phones', false);setDisabled('addresses',true);fillappendfields();setDedupe();"> Search for Phones
	<input type='radio' name='search_option' value='addresses' <TMPL_VAR SEARCH_OPTION-ADDRESSES> onclick="setDisabled('addresses', false);setDisabled('phones', true);setDedupe();"> Search for Addresses
    <input type='radio' name='search_option' value='both' <TMPL_VAR SEARCH_OPTION-BOTH> onclick="setDisabled('phones', false);setDisabled('addresses',false);fillappendfields();setDedupe();"> Search for Phones and Addresses
    </span>
    </td>
  </tr>
</table>

  
<div id="phones"> 
<br>

<table border="1" cellpadding="0" cellspacing="0" width="600" bordercolor="#000000">
  <tr>
    <td>
    <table border="0" cellpadding="2" cellspacing="0" width="100%">
  <tr>
    <td class="batchpricingheader" colspan="2">&nbsp;<b>Phone Append: <BR></b></td>
  </tr>
  <tr>
    <td class="batchpricingheader" colspan="2">&nbsp;<b>Select Confirmation Process: <BR></b></td>
  </tr>
  <tr>
              <td class="smallfont1" colspan="2" align="left">&nbsp;<input type='radio' name='confirmation_process' value='NONE' <TMPL_VAR CONFIRMATION_PROCESS-NONE>> None&nbsp;&nbsp;<a href="javascript:void(0);" onClick="var layerfgcolor = get_layer_colors('fgcolor');var layerbgcolor = get_layer_colors('bgcolor');return overlib('<br>No confirmation of matched numbers<br><br>', CAPTIONSIZE, 2, BORDER, 3, FGCOLOR, layerfgcolor, BGCOLOR, layerbgcolor, CGCOLOR, layerbgcolor, WIDTH, 400, FIXX, 225, FIXY, 205, STICKY, CAPTION, 'Confirmation Process', CLOSECLICK, CLOSETEXT, '<img border=0 width=16 height=16 alt=\'Close\' title=\'Close\' src=\'<TMPL_VAR NAME=IMGPATH>/closex.gif\'>');"><img src="<TMPL_VAR NAME=IMGPATH>/info.gif" border="0" width="16" height="16"></a>
              </td>
  </tr>
  <tr>
               <td class="smallfont1" colspan="2" align="left">&nbsp;<input type='radio' name='confirmation_process' value='CONFIRMATION_FLAG' <TMPL_VAR CONFIRMATION_PROCESS-CONFIRMATION_FLAG>> Confirmation Flag&nbsp;&nbsp;<a href="javascript:void(0);" onClick="var layerfgcolor = get_layer_colors('fgcolor');var layerbgcolor = get_layer_colors('bgcolor');return overlib('<br>Y/N whether result phone number matches any submitted phone number.<br><br>', CAPTIONSIZE, 2, BORDER, 3, FGCOLOR, layerfgcolor, BGCOLOR, layerbgcolor, CGCOLOR, layerbgcolor, WIDTH, 400, FIXX, 225, FIXY, 200, STICKY, CAPTION, 'Confirmation Process', CLOSECLICK, CLOSETEXT, '<img border=0 width=16 height=16 alt=\'Close\' title=\'Close\' src=\'<TMPL_VAR NAME=IMGPATH>/closex.gif\'>');"><img src="<TMPL_VAR NAME=IMGPATH>/info.gif" border="0" width="16" height="16"></a>
               </td>
  </tr>
  <tr>
               <td class="smallfont1" colspan="2" align="left">&nbsp;<input type='radio' name='confirmation_process' value='BLANKOUT_MATCHED_NUMBERS' <TMPL_VAR CONFIRMATION_PROCESS-BLANKOUT_MATCHED_NUMBERS>> Blank out Matched Numbers&nbsp;&nbsp;<a href="javascript:void(0);" onClick="var layerfgcolor = get_layer_colors('fgcolor');var layerbgcolor = get_layer_colors('bgcolor');return overlib('<br>Result phone numbers matching submitted phone numbers will be blanked out.<br><br>', CAPTIONSIZE, 2, BORDER, 3, FGCOLOR, layerfgcolor, BGCOLOR, layerbgcolor, CGCOLOR, layerbgcolor, WIDTH, 400, FIXX, 225, FIXY, 200, STICKY, CAPTION, 'Confirmation Process', CLOSECLICK, CLOSETEXT, '<img border=0 width=16 height=16 alt=\'Close\' title=\'Close\' src=\'<TMPL_VAR NAME=IMGPATH>/closex.gif\'>');"><img src="<TMPL_VAR NAME=IMGPATH>/info.gif" border="0" width="16" height="16"></a>
               </td>
  </tr>
  <tr>
    <td class="batchpricingheader" colspan="2">&nbsp;<b>Return Optional Phone Line Type Field: <BR></b></td>
  </tr>
  <tr>
    <td class="smallfont1" colspan="2"><input type="checkbox" name="includeswitchtype" value="1" <TMPL_VAR NAME=includeswitchtype> onClick="">Return phone line type (ie Cell, POTS, VOIP) with each phone&nbsp;&nbsp;<a href="javascript:void(0);" onClick="var layerfgcolor = get_layer_colors('fgcolor');var layerbgcolor = get_layer_colors('bgcolor');return overlib('<br>This option will append the phone line type (ie Cell, POTS, VOIP) to each phone.<br><br>', CAPTIONSIZE, 2, BORDER, 3, FGCOLOR, layerfgcolor, BGCOLOR, layerbgcolor, CGCOLOR, layerbgcolor, WIDTH, 400, FIXX, 60, FIXY, 205, STICKY, CAPTION, 'Return Phone Line Type', CLOSECLICK, CLOSETEXT, '<img border=0 width=16 height=16 alt=\'Close\' title=\'Close\' src=\'<TMPL_VAR NAME=IMGPATH>/closex.gif\'>');"><img src="<TMPL_VAR NAME=IMGPATH>/info.gif" border="0" width="16" height="16"></a></td>
  </tr>

  <tr>
    <td class="batchpricingheader" colspan="2">&nbsp;<b>Return Optional Carrier Information:<BR></b></td>
  </tr>

  <tr>
    <td class="smallfont1" colspan="2"><input type="checkbox" name="phonesplusoutput" value="1" <TMPL_VAR NAME=phonesplusoutput> onClick="">Return carrier information with each phone&nbsp;&nbsp;<a href="javascript:void(0);" onClick="var layerfgcolor = get_layer_colors('fgcolor');var layerbgcolor = get_layer_colors('bgcolor');return overlib('<br>This option will append the carrier name, location, and description for each phone.<br><br>', CAPTIONSIZE, 2, BORDER, 3, FGCOLOR, layerfgcolor, BGCOLOR, layerbgcolor, CGCOLOR, layerbgcolor, WIDTH, 400, FIXX, 60, FIXY, 205, STICKY, CAPTION, 'Return Carrier Information', CLOSECLICK, CLOSETEXT, '<img border=0 width=16 height=16 alt=\'Close\' title=\'Close\' src=\'<TMPL_VAR NAME=IMGPATH>/closex.gif\'>');"><img src="<TMPL_VAR NAME=IMGPATH>/info.gif" border="0" width="16" height="16"></a></td>
  </tr>
  <tr>
    <td class="batchpricingheader" colspan="2">&nbsp;<b>Number of Phones to return:<br></b></td>
  </tr>
  <tr>
                <td class="smallfont1" colspan="2">Total (max) number of phone numbers to be returned
<TMPL_IF COUNT_LOOP>
                <select name="count" width="10" height="3" size="1">
<TMPL_LOOP COUNT_LOOP>
                <option value="<TMPL_VAR VALUE>" <TMPL_IF SELECTED>selected</TMPL_IF>><TMPL_VAR DISPLAY_NAME></option>
</TMPL_LOOP>
                </select>
</TMPL_IF>
&nbsp;&nbsp;<a href="javascript:void(0);" onClick="var layerfgcolor = get_layer_colors('fgcolor');var layerbgcolor = get_layer_colors('bgcolor');return overlib('<br>Choose the total number for phones to be returned. &nbsp;Default is set to 3.<br><br>', CAPTIONSIZE, 2, BORDER, 3, FGCOLOR, layerfgcolor, BGCOLOR, layerbgcolor, CGCOLOR, layerbgcolor, WIDTH, 400, FIXX, 200, FIXY, 205, STICKY, CAPTION, 'Additional Phone Options', CLOSECLICK, CLOSETEXT, '<img border=0 width=16 height=16 alt=\'Close\' title=\'Close\' src=\'<TMPL_VAR NAME=IMGPATH>/closex.gif\'>');"><img src="<TMPL_VAR NAME=IMGPATH>/info.gif" border="0" width="16" height="16"></a></td>
  </tr>
                                                                                                                                                                            
        <table border="0" cellpadding="0" cellspacing="0" width="100%">
        </table>
    </td>
  </tr>
</table>
</div>
<div id="addresses"> 
<br>
<table border="1" cellpadding="0" cellspacing="0" width="600" bordercolor="#000000" >
<tr>
  <td>
    <table border="0" cellpadding="0" cellspacing="0" width="100%">

      <tr>
        <td class="batchpricingheader" colspan="2">&nbsp;<b>Address Append: <BR></b>
        </td>
      </tr>

      <tr>
        <td class="smallfont1" colspan="2"><input type="checkbox" name="newaddressesonly" value="1" <TMPL_VAR NAME=newaddressesonly> onClick="setDedupe();">Only return addresses which differ from any provided address
&nbsp;&nbsp;<a href="javascript:void(0);" onClick="var layerfgcolor = get_layer_colors('fgcolor');var layerbgcolor = get_layer_colors('bgcolor');return overlib('<br>This option will append an address only if it does not match an input address provided for the subject.<br><br>', CAPTIONSIZE, 2, BORDER, 3, FGCOLOR, layerfgcolor, BGCOLOR, layerbgcolor, CGCOLOR, layerbgcolor, WIDTH, 400, FIXX, 200, FIXY, 805, STICKY, CAPTION, 'Return Different Addresses', CLOSECLICK, CLOSETEXT, '<img border=0 width=16 height=16 alt=\'Close\' title=\'Close\' src=\'<TMPL_VAR NAME=IMGPATH>/closex.gif\'>');"><img src="<TMPL_VAR NAME=IMGPATH>/info.gif" border="0" width="16" height="16"></a>

        </td>
      </tr>
      <tr>
        <td class="batchpricingheader" colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;<b>Options:<br></b>
        </td>
      </tr>

      <tr>
        <td class="smallfont1" colspan="2" align="left">
         &nbsp;&nbsp;<input type='radio' name='dedupe' value='1' <TMPL_VAR DEDUPE-1>> Do not return any addresses&nbsp;&nbsp;<a href="javascript:void(0);" onClick="var layerfgcolor = get_layer_colors('fgcolor');var layerbgcolor = get_layer_colors('bgcolor');return overlib('<br>Do not return anything if address is a duplicate.<br><br>', CAPTIONSIZE, 2, BORDER, 3, FGCOLOR, layerfgcolor, BGCOLOR, layerbgcolor, CGCOLOR, layerbgcolor, WIDTH, 400, FIXX, 200, FIXY, 805, STICKY, CAPTION, 'Dedupe Options', CLOSECLICK, CLOSETEXT, '<img border=0 width=16 height=16 alt=\'Close\' title=\'Close\' src=\'<TMPL_VAR NAME=IMGPATH>/closex.gif\'>');"><img src="<TMPL_VAR NAME=IMGPATH>/info.gif" border="0" width="16" height="16"></a>
        </td>
       </tr>

       <tr>
         <td class="smallfont1" colspan="2" align="left">
            &nbsp;&nbsp;<input type='radio' name='dedupe' value='2' <TMPL_VAR DEDUPE-2>> Return next most current address&nbsp;&nbsp;<a href="javascript:void(0);" onClick="var layerfgcolor = get_layer_colors('fgcolor');var layerbgcolor = get_layer_colors('bgcolor');return overlib('<br>Return next most current address.<br><br>', CAPTIONSIZE, 2, BORDER, 3, FGCOLOR, layerfgcolor, BGCOLOR, layerbgcolor, CGCOLOR, layerbgcolor, WIDTH, 400, FIXX, 200, FIXY, 805, STICKY, CAPTION, 'Dedupe Options', CLOSECLICK, CLOSETEXT, '<img border=0 width=16 height=16 alt=\'Close\' title=\'Close\' src=\'<TMPL_VAR NAME=IMGPATH>/closex.gif\'>');"><img src="<TMPL_VAR NAME=IMGPATH>/info.gif" border="0" width="16" height="16"></a>
         </td>
       </tr>
       <tr>
          <td class="smallfont1" colspan="2" align="left">
            &nbsp;&nbsp;<input type='radio' name='dedupe' value='3' <TMPL_VAR DEDUPE-3> > Blank out Matches and return confirmation flag&nbsp;&nbsp;<a href="javascript:void(0);" onClick="var layerfgcolor = get_layer_colors('fgcolor');var layerbgcolor = get_layer_colors('bgcolor');return overlib('<br>The flags indicate that the address is either our most current address (C) or a history address (H).<br><br>', CAPTIONSIZE, 2, BORDER, 3, FGCOLOR, layerfgcolor, BGCOLOR, layerbgcolor, CGCOLOR, layerbgcolor, WIDTH, 400, FIXX, 200, FIXY, 805, STICKY, CAPTION, 'Dedupe Options', CLOSECLICK, CLOSETEXT, '<img border=0 width=16 height=16 alt=\'Close\' title=\'Close\' src=\'<TMPL_VAR NAME=IMGPATH>/closex.gif\'>');"><img src="<TMPL_VAR NAME=IMGPATH>/info.gif" border="0" width="16" height="16"></a>
         </td>
       </tr>
       <tr>
         <td class="smallfont1" colspan="2"><br>&nbsp;Number of addresses to be returned
          <TMPL_IF ADDRESSCOUNT_LOOP>
              <select name="addresscount" width="10" height="3" size="1">
                  <TMPL_LOOP ADDRESSCOUNT_LOOP>
              <option value="<TMPL_VAR VALUE>" <TMPL_IF SELECTED>selected</TMPL_IF>><TMPL_VAR ADDRESS_DISPLAY_NAME></option> 
                  </TMPL_LOOP>
              </select>
          </TMPL_IF>
&nbsp;&nbsp;<a href="javascript:void(0);" onClick="var layerfgcolor = get_layer_colors('fgcolor');var layerbgcolor = get_layer_colors('bgcolor');return overlib('<br>Choose the total number for addresses to be returned. Default total is set to 3.<br><br>', CAPTIONSIZE, 2, BORDER, 3, FGCOLOR, layerfgcolor, BGCOLOR, layerbgcolor, CGCOLOR, layerbgcolor, WIDTH, 400, FIXX, 200, FIXY, 805, STICKY, CAPTION, 'Additional Address Options', CLOSECLICK, CLOSETEXT, '<img border=0 width=16 height=16 alt=\'Close\' title=\'Close\' src=\'<TMPL_VAR NAME=IMGPATH>/closex.gif\'>');"><img src="<TMPL_VAR NAME=IMGPATH>/info.gif" border="0" width="16" height="16"></a></td>
       </tr>

       <tr>
         <td class="smallfont1" colspan="2"><br>&nbsp;Number of months of address history
            <input type="text" name="monthcount" value="<TMPL_VAR MONTHCOUNT>" maxlength="3" size="2">
&nbsp;&nbsp;<a href="javascript:void(0);" onClick="var layerfgcolor = get_layer_colors('fgcolor');var layerbgcolor = get_layer_colors('bgcolor');return overlib('<br>Choose the number of months of address history. The maximum valid value is 120 months of history.<br><br>', CAPTIONSIZE, 2, BORDER, 3, FGCOLOR, layerfgcolor, BGCOLOR, layerbgcolor, CGCOLOR, layerbgcolor, WIDTH, 400, FIXX, 200, FIXY, 805, STICKY, CAPTION, 'Months Address Options', CLOSECLICK, CLOSETEXT, '<img border=0 width=16 height=16 alt=\'Close\' title=\'Close\' src=\'<TMPL_VAR NAME=IMGPATH>/closex.gif\'>');"><img src="<TMPL_VAR NAME=IMGPATH>/info.gif" border="0" width="16" height="16"></a>
         </td>
       </tr>

    </table>
  </td>
</tr>
</table>
</div>


<br>

<br>

<table border="0" cellpadding="0" cellspacing="0" width="608">
  <tr>
    <td width="304" valign="top">
    </td>
    <td width="50"><img src="<TMPL_VAR NAME=IMGPATH>/spacer.gif" width="50" height="1" border="0"></td>

<!-- END append_fields_body.tpl -->
