<!-- begin google_map_body.tpl -->
<div align="center" id="mainbody">
<table border="0" cellpadding="0" cellspacing="0" width="100%" height="10">
  <tr height="10">
    <td height="10">&nbsp;</td>
  </tr>
</table>

<FORM METHOD="POST" ACTION="<TMPL_VAR NAME=ACTION_MISC>" NAME="GMAP">
<TMPL_INCLUDE NAME=common_hidden_input.tpl>
<INPUT TYPE="HIDDEN" NAME="ADDRESS" VALUE="<TMPL_VAR NAME=ADDRESS>">
<INPUT TYPE="HIDDEN" NAME="CITY" VALUE="<TMPL_VAR NAME=CITY>">
<INPUT TYPE="HIDDEN" NAME="STATE" VALUE="<TMPL_VAR NAME=STATE>">
<INPUT TYPE="HIDDEN" NAME="ZIP" VALUE="<TMPL_VAR NAME=ZIP>">
<INPUT type=hidden NAME="REFERENCE_CODE" VALUE="<TMPL_VAR REFERENCE_CODE>">
<INPUT TYPE=HIDDEN NAME="DOL_DATE" VALUE="<TMPL_VAR NAME=DOL_DATE>">
<INPUT type=hidden NAME="EVENT" VALUE="ESRI/INITIAL_MAP">
<INPUT type=hidden NAME="GMAP_UNIQUE_ID" VALUE="<TMPL_VAR NAME=GMAP_UNIQUE_ID>">
<INPUT type=hidden NAME="IMGPATH" VALUE="<TMPL_VAR NAME=IMGPATH>">
<INPUT type=hidden NAME="KEY_VALUES" VALUE="STR_ADDR|<TMPL_VAR NAME=ADDRESS>|CITY|<TMPL_VAR NAME=CITY>|STATE|<TMPL_VAR NAME=STATE>|ZIP|<TMPL_VAR NAME=ZIP>|">

<table border="0" cellpadding="0" cellspacing="0" width="100%" height="10">
  <tr height="10">
    <td height="10" class="unifont2pt">&nbsp;</td>
  </tr>
</table>

<table border="1" align="center" cellpadding="0" cellspacing="0" width="700" bgcolor="#ffffff">
  <tr>
    <td>
    <div align="center">
    <table width="100%" border="0" cellpadding="2" cellspacing="0">
      <tr class="medblack">
        <td valign="top" align="left">&nbsp;</td>
	<td valign="top" align="left"><b>Mapped Address</b></td>
        <td valign="top" align="left">&nbsp;</td>
      </tr>
      <tr class="medblack">
        <td valign="top" align="left">&nbsp;</td>
        <td valign="top" align="left"><TMPL_VAR NAME=ADDRESS>, <TMPL_VAR NAME=CITY> <TMPL_VAR NAME=STATE> <TMPL_VAR NAME=ZIP></td>
        <td valign="top" align="left">&nbsp;</td>
      </tr>
    </table>
    </div>  
    </td>
  </tr>
</table>

<span id="error_msg" style="color: red; font: bold 9pt arial;display:none;">We encountered an error. Please close this window and try again.
</span>

<table border="0" cellpadding="0" cellspacing="0" width="100%" height="10">
  <tr height="10">
    <td height="10">&nbsp;</td>
  </tr>
</table>

<div id="map_canvas" style="height:600px; width:600px;border:solid black 2px;">

</div>

</FORM>

<br/>
<table border="0" align="center" cellpadding="0" cellspacing="0" width="700" bgcolor="#ffffff">
  <tr>
    <td>
    <div align="center">
    <table width="100%" border="0" cellpadding="2" cellspacing="0">
      <tr class="medblack">
        <td valign="top" align="left">&nbsp;</td>
	<td valign="top" align="left"><b><a href="javascript:toggle_disclaimer('1');"><TMPL_IF FCOL>Collection Solutions<TMPL_ELSE>Accurint</TMPL_IF> Mapping Service End User License Agreement</a></b></td>
        <td valign="top" align="left">&nbsp;</td>
      </tr>

      <tr class="medblack">
        <td valign="top" align="left">&nbsp;</td>
        <td valign="top" align="left" colspan="2">
		<span id ="ln_map_disclaimer" style="display:none;">
			<p>
			IMPORTANT - READ CAREFULLY BEFORE ACCESSING THIS PRODUCT FEATURE.
			</p>

			<p>
			THE MAPPING SERVICES ARE PROVIDED BY A THIRD PARTY, AND ARE NOT CREATED, OWNED OR CONTROLLED BY LEXISNEXIS RISK SOLUTIONS FLORIDA.  YOUR INPUTS INTO THE MAPPING SERVICE WILL BE REDIRECTED TO A THIRD PARTY EXTERNAL SITE.  YOU MAY CEASE USE OF THE MAPPING SERVICE AT ANY TIME.  BE ADVISED THAT LEXISNEXIS RISK SOLUTIONS FLORIDA DOES NOT CONTROL, SCREEN, ALTER OR MODIFY THE CONTENT OF THE MAPPING SERVICES AND CANNOT CONTROL THE AVAILABILITY OR FUNCTIONALITY OF THE MAPPING SERVICE.  THE MAPPING SERVICE IS PROVIDED "AS IS, AS AVAILABLE."&nbsp;<a href="javascript:toggle_disclaimer('2');">hide</a>
			</p>
		</span>
	</td>
      </tr>

    </table>
    </div>  
    </td>
  </tr>
</table>

</div>
<script>
function toggle_disclaimer(type)
{
   if (type=='1')
   {
	document.getElementById('ln_map_disclaimer').style.display='block';
   }else
   {
	document.getElementById('ln_map_disclaimer').style.display='none';
   }
}
</script>
<TMPL_INCLUDE NAME="ln_general_footer.tpl">
<!-- begin end_map_body.tpl -->
