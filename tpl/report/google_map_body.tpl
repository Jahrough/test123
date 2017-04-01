<!-- begin google_map_body.tpl -->
<table border="0" cellpadding="0" cellspacing="0" width="100%" class="headerarea">
  <tr>
    <td><img alt="" src="<TMPL_VAR NAME=IMGPATH>/<TMPL_VAR NAME=APPLICATION_TYPE>/logo.gif" width="266" height="43" border="0"></td>
    <td><img alt="" src="<TMPL_VAR NAME=IMGPATH>/spacer.gif" width="184" height="43"></td>
  </tr>
  <tr>
    <td height="10" colspan="2" align="left" valign="bottom"><img alt="" border="0" height="10" width="450" src="<TMPL_VAR NAME=IMGPATH>/spacer.gif"></td>
  </tr>
  <tr>
    <td class="headerseparator" height="10" colspan="2" align="left" valign="bottom"><img alt="" border="0" height="10" width="450" src="<TMPL_VAR NAME=IMGPATH>/spacer.gif"></td>
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

<TABLE BORDER="0" CELLPADDING="0" ALIGN="CENTER">
<TR>
    <table border="0" width="100%">
        <tr>
	<td width="10%">&nbsp;</td>
        <td align="left" valign="top">
            <span style="FONT-SIZE: 10pt; FONT-FAMILY: Arial; color: #003399; font-weight: bold;">Mapped Address:</span>
            <span style="FONT-SIZE: 8pt; FONT-FAMILY: Arial; font-weight: bold;">
            <br />
			<TMPL_IF NAME="ZIP_ONLY">
			Address not found. Displaying the location for Zip Code <TMPL_VAR NAME=ZIP>
			<TMPL_ELSE>
			<TMPL_VAR NAME=ADDRESS>, <TMPL_VAR NAME=CITY> <TMPL_VAR NAME=STATE> <TMPL_VAR NAME=ZIP>
			</TMPL_IF>
            </span>
        </td>
        </tr>
    </table>
</TR>
</table>

<div id="map_canvas" style="height:600px; width:600px;margin-left:100px; border:solid black 2px;">
</div>
<br/>

<br/>
<table border="0" align="center" cellpadding="0" cellspacing="0" width="700">
  <tr>
    <td>
    <div align="center">
    <table width="100%" border="0" cellpadding="2" cellspacing="0">
      <tr class="medblack" style="FONT-SIZE: 10pt; FONT-FAMILY: Arial; color: black; font-weight: bold;">
        <td valign="top" align="left">&nbsp;</td>
	<td valign="top" align="left"><b><a href="javascript:toggle_disclaimer('1');"><TMPL_IF FCOL>Collection Solutions<TMPL_ELSE>Accurint</TMPL_IF> Mapping Service End User License Agreement </a></b></td>
        <td valign="top" align="left">&nbsp;</td>
      </tr>

      <tr class="medblack" style="FONT-SIZE: 10pt; FONT-FAMILY: Arial; color: black;">
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

</FORM>

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
<!-- end google_map_body.tpl -->
