<!-- BEGIN append_fields_body.tpl -->
<table border="0" width="600">
  <tr>
    <td width="600">
    <br>
    <table border="0" cellpadding="0" cellspacing="0" width="600">
      <tr>
        <td class="wizardcounter" width="50%" align="left"><TMPL_INCLUDE NAME="title_line.tpl"></td>
	<td class="wizardcounter" width="50%" align="right"><b>Click the&nbsp;<a href="javascript:void(0);" onClick="var layerfgcolor = get_layer_colors('fgcolor');var layerbgcolor = get_layer_colors('bgcolor');return overlib('<br>Click this button for more detail regarding a particular corresponding item.<br><br>', CAPTIONSIZE, 2, BORDER, 3, FGCOLOR, layerfgcolor, BGCOLOR, layerbgcolor, CGCOLOR, layerbgcolor, WIDTH, 300, BELOW, LEFT, STICKY, CAPTION, 'More Detail', CLOSECLICK, CLOSETEXT, '<img border=0 width=16 height=16 alt=\'Close\' title=\'Close\' src=\'<TMPL_VAR NAME=IMGPATH>/closex.gif\'>');"><img src="<TMPL_VAR NAME=IMGPATH>/info.gif" border="0" width="16" height="16"></a>&nbsp;Button For More Detail&nbsp;</b></td>
      </tr>
      <TMPL_IF SHOW_BATCH_UPDATE>
      <tr>
        <td class="wizardcounter" align="left"><TMPL_INCLUDE NAME="../help_contact_line.tpl"></td>
      </tr>
      </TMPL_IF>
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
  
</table>

<table border="1" cellpadding="5" cellspacing="0" width="600" bordercolor="#000000">
  <tr>
    <td class="batchpricingheader" colspan="2">&nbsp;<b>Select Special Processing Options: <BR></b></td>
  </tr>

  <tr>
  <td>
  <table border="0" cellpadding="1" cellspacing="0" width="100%" bordercolor="#000000">
    <tr>
    <td class="smallfont1" colspan="2">
    &nbsp;Number of Subjects to be returned&nbsp;&nbsp;<select name="subjectcount" onChange="">
    <option value="1"<TMPL_IF NAME="subjectcount-1"> SELECTED</TMPL_IF>>1</option>
    <option value="2"<TMPL_IF NAME="subjectcount-2"> SELECTED</TMPL_IF>>2</option>
    <option value="3"<TMPL_IF NAME="subjectcount-3"> SELECTED</TMPL_IF>>3</option>
    </select>
    </td>
    </tr>
    <tr>
    <td class="smallfont1" colspan="2">
    &nbsp;Number of Addresses to be returned for each subject&nbsp;&nbsp;<select name="addresscount" onChange="">
    <option value="1"<TMPL_IF NAME="addresscount-1"> SELECTED</TMPL_IF>>1</option>
    <option value="2"<TMPL_IF NAME="addresscount-2"> SELECTED</TMPL_IF>>2</option>
    <option value="3"<TMPL_IF NAME="addresscount-3"> SELECTED</TMPL_IF>>3</option>
    </select>
    </td>
    </tr>
    <tr>
    <td class="smallfont1" colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="checkbox" name="includephonenumber" value="1" <TMPL_VAR NAME=includephonenumber> onClick="">Include Phone Number for each Address&nbsp;&nbsp;
    </td>
    </tr>
  </td>
  </table>
  </td>
  </tr>
</table>

<br />
<table border="1" cellpadding="5" cellspacing="0" width="600" bordercolor="#000000">
  <tr>
    <td class="batchpricingheader" colspan="2">&nbsp;<b>Additional Processing Options:<BR></b></td>
  </tr>

  <tr>
  <td class="smallfont1" colspan="2">
    <table border="0" cellpadding="1" cellspacing="0" width="100%" bordercolor="#000000">
     <tr>
       <td class="smallfont1" colspan="2">Include Deceased Date Append:<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="checkbox" name="includedeceaseddate" value="1" <TMPL_VAR NAME=includedeceaseddate> onClick="">Search for deceased record for each returned subject and append date of death to output record</td>
     </tr>
    </table>
  </td>
  </tr>
</table>

<br>

<table border="0" cellpadding="0" cellspacing="0" width="608">
  <tr>
    <td width="304" valign="top">
    </td>
    <td width="50"><img src="<TMPL_VAR NAME=IMGPATH>/spacer.gif" width="50" height="1" border="0"></td>

<!-- END append_fields_body.tpl -->
