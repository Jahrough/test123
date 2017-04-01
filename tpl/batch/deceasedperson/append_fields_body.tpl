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
    <td class="batchpricingheader" colspan="2">&nbsp;<b>Return Optional Deceased Person Fields: <img border="0" width="11" height="10" src="<TMPL_VAR NAME=IMGPATH>/star.gif" alt=""><BR></b></td>
  </tr>

  <tr>
    <td class="smallfont1" colspan="2"><input type="checkbox" name="phonesplusoutput" value="1" <TMPL_VAR NAME=phonesplusoutput> onClick="">Return Phones Plus Type Code, Phones Plus Carrier, and Phones Plus Carrier Location&nbsp;&nbsp;<a href="javascript:void(0);" onClick="var layerfgcolor = get_layer_colors('fgcolor');var layerbgcolor = get_layer_colors('bgcolor');return overlib('<br>This option will append phone type codes (B - Business, R - Residential, M - Mobile, U - Unknown), carrier and carrier location provided by the Phones Plus phone.<br><br>', CAPTIONSIZE, 2, BORDER, 3, FGCOLOR, layerfgcolor, BGCOLOR, layerbgcolor, CGCOLOR, layerbgcolor, WIDTH, 400, FIXX, 60, FIXY, 205, STICKY, CAPTION, 'Return Phones Plus Fields', CLOSECLICK, CLOSETEXT, '<img border=0 width=16 height=16 alt=\'Close\' title=\'Close\' src=\'<TMPL_VAR NAME=IMGPATH>/closex.gif\'>');"><img src="<TMPL_VAR NAME=IMGPATH>/info.gif" border="0" width="16" height="16"></a></td>
  </tr>

  <tr>
    <td class="batchpricingheader" colspan="2">&nbsp;<b>Return Different Phone Append:<BR></b></td>
  </tr>

  <tr>
    <td class="smallfont1" colspan="2"><input type="checkbox" name="newphonesonly" value="1" <TMPL_VAR NAME=newphonesonly> onClick="">Return a phone number which differs from any provided phone number&nbsp;&nbsp;<a href="javascript:void(0);" onClick="var layerfgcolor = get_layer_colors('fgcolor');var layerbgcolor = get_layer_colors('bgcolor');return overlib('<br>This option will append a phone number only if it does not match an input phone number provided for the subject.<br><br>', CAPTIONSIZE, 2, BORDER, 3, FGCOLOR, layerfgcolor, BGCOLOR, layerbgcolor, CGCOLOR, layerbgcolor, WIDTH, 400, FIXX, 60, FIXY, 205, STICKY, CAPTION, 'Return Different Phone', CLOSECLICK, CLOSETEXT, '<img border=0 width=16 height=16 alt=\'Close\' title=\'Close\' src=\'<TMPL_VAR NAME=IMGPATH>/closex.gif\'>');"><img src="<TMPL_VAR NAME=IMGPATH>/info.gif" border="0" width="16" height="16"></a></td>
  </tr>

</table>
    </td>
  </tr>
</table>


<TMPL_UNLESS HIDE_PRICES>
<table border="0" width="600">
  <tr>
    <td class="smallfont1" colspan="2"><BR><img border="0" width="11" height="10" src="<TMPL_VAR NAME=IMGPATH>/star.gif" alt="">Pricing for Phones Plus is $0.50 per hit.
    </td>
  </tr>
</table>
</TMPL_UNLESS>


<br>

<br>

<table border="0" cellpadding="0" cellspacing="0" width="608">
  <tr>
    <td width="304" valign="top">
    </td>
    <td width="50"><img src="<TMPL_VAR NAME=IMGPATH>/spacer.gif" width="50" height="1" border="0"></td>

<!-- END append_fields_body.tpl -->
