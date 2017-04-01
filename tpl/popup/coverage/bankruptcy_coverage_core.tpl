<script>
function showlib(ct,dk,im,state) {
    var layerfgcolor = get_layer_colors('fgcolor');
    var layerbgcolor = get_layer_colors('bgcolor');
    var content = '<center><br><table border=0 cellpadding=0 cellspacing=0 width=320><tr><td class=coveragetitle><b>Court</b></td><td class=coveragetitle align=center><b>Dockets</b></td><td class=coveragetitle align=center><b>Images</b></td></tr><td colspan=3 class=coveragetitle>&nbsp;</td></tr><tr><td class=coveragetext>'+ct+'</td><td class=coveragetext align=center>'+dk+'</td><td class=coveragetext align=center>'+im+'</td></tr></table></center>';
    overlib(content, CAPTIONSIZE, 2, BORDER, 3, WIDTH, 350, HEIGHT, 200, STICKY, CAPTION, '<center>'+state+'</center>', CLOSECLICK, CLOSETEXT, '<img border=0 width=16 height=16 alt=\'Close\' title=\'Close\' src=\'<TMPL_VAR NAME=IMGPATH>/closex.gif\'>', STATUS, state, FGCOLOR, layerfgcolor, BGCOLOR, layerbgcolor, CGCOLOR, layerbgcolor, MIDX, 0, MIDY, 0);
}
</script>
<div id="overDiv" style="position:absolute; visibility:hidden; z-index:1000;"></div>

<table border="0" cellpadding="5" cellspacing="0" width="100%">
  <tr>
    <td class="coveragetitle" align="right" width="70%"><B>Bankruptcy Coverage Area</B></td>
    <td align="right" width="30%" valign="top"><TMPL_INCLUDE NAME="print_button.tpl"></td>
  </tr>
</table>
<br>
<table border="0" cellpadding="5" cellspacing="0" width="100%">
  <tr>
    <td class="coveragetext" width="34%" valign="top">
    <a href="javascript:showlib('Alabama Middle Bankruptcy Court<br>Alabama Northern Bankruptcy Court<br>Alabama Southern Bankruptcy Court','Yes<br>Yes<br>Yes','No<br>Yes<br>Yes','ALABAMA');">ALABAMA</a><br>
    <a href="javascript:showlib('Alaska Bankruptcy Court','Yes','Yes','ALASKA');">ALASKA</a><br>
    <a href="javascript:showlib('Arizona Bankruptcy Court','Yes','Yes','ARIZONA');">ARIZONA</a><br>
    <a href="javascript:showlib('Arkansas Eastern Bankruptcy Court<br>Arkansas Western Bankruptcy Court','Yes<br>Yes','Yes<br>Yes','ARKANSAS');">ARKANSAS</a><br>
    <a href="javascript:showlib('California Eastern Bankruptcy Court<br>California Central Bankruptcy Court<br>California Northern Bankruptcy Court<br>California Southern Bankruptcy Court','Yes<br>Yes<br>Yes<br>Yes','Yes<br>Yes<br>Yes<br>Yes','CALIFORNIA');">CALIFORNIA</a><br>
    <a href="javascript:showlib('Colorado Bankruptcy Court','Yes','Yes','COLORADO');">COLORADO</a><br>
    <a href="javascript:showlib('Connecticut Bankruptcy Court','Yes','Yes','CONNECTICUT');">CONNECTICUT</a><br>
    <a href="javascript:showlib('Delaware Bankruptcy Court','Yes','Yes','DELAWARE');">DELAWARE</a><br>
    <a href="javascript:showlib('District of Columbia Bankruptcy Court','Yes','No','DISTRICT OF COLUMBIA');">DISTRICT OF COLUMBIA</a><br>
    <a href="javascript:showlib('Florida Southern Bankruptcy Court<br>Florida Middle Bankruptcy Court<br>Florida Northern Bankruptcy Court','Yes<br>Yes<br>Yes','No<br>No<br>No','FLORIDA');">FLORIDA</a><br>
    <a href="javascript:showlib('Georgia Northern Bankruptcy Court<br>Georgia Southern Bankruptcy Court<br>Georgia Middle Bankruptcy Court','Yes<br>Yes<br>Yes','Yes<br>Yes<br>No','GEORGIA');">GEORGIA</a><br>
    <a href="javascript:showlib('Guam Federal Court - Agana','No','No','GUAM');">GUAM</a><br>
    <a href="javascript:showlib('Hawaii Bankruptcy Court','Yes','Yes','HAWAII');">HAWAII</a><br>
    <a href="javascript:showlib('Idaho Bankruptcy Court','No','No','IDAHO');">IDAHO</a><br>
    <a href="javascript:showlib('Illinois Southern Bankruptcy Court<br>Illinois Northern Bankruptcy Court<br>Illinois Central Bankruptcy Court','Yes<br>Yes<br>Yes','Yes<br>Yes<br>No','ILLINOIS');">ILLINOIS</a><br>
    <a href="javascript:showlib('Indiana Southern Bankruptcy Court<br>Indiana Northern Bankruptcy Court','No<br>Yes','No<br>Yes','INDIANA');">INDIANA</a><br>
    <a href="javascript:showlib('Iowa Northern Bankruptcy Court<br>Iowa Southern Bankruptcy Court','Yes<br>Yes','Yes<br>Yes','IOWA');">IOWA</a><br>
    <a href="javascript:showlib('Kansas Bankruptcy Court','Yes','Yes','KANSAS');">KANSAS</a><br>
    </td>
    <td class="coveragetext" width="33%" valign="top">
    <a href="javascript:showlib('Kentucky Eastern Bankruptcy Court<br>Kentucky Western Bankruptcy Court','Yes<br>Yes','Yes<br>Yes','KENTUCKY');">KENTUCKY</a><br>
    <a href="javascript:showlib('Louisiana Western Bankruptcy Court<br>Louisiana Middle Bankruptcy Court<br>Louisiana Eastern Bankruptcy Court','Yes<br>Yes<br>Yes','Yes<br>Yes<br>Yes','LOUISIANA');">LOUISIANA</a><br>
    <a href="javascript:showlib('Maine Bankruptcy Court','Yes','Yes','MAINE');">MAINE</a><br>
    <a href="javascript:showlib('Maryland Bankruptcy Court','Yes','No','MARYLAND');">MARYLAND</a><br>
    <a href="javascript:showlib('Massachusetts Bankruptcy Court','Yes','Yes','MASSACHUSETTS');">MASSACHUSETTS</a><br>
    <a href="javascript:showlib('Michigan Eastern Bankruptcy Court<br>Michigan Western Bankruptcy Court','Yes<br>Yes','No<br>No','MICHIGAN');">MICHIGAN</a><br>
    <a href="javascript:showlib('Minnesota Bankruptcy Court','Yes','Yes','MINNESOTA');">MINNESOTA</a><br>
    <a href="javascript:showlib('Mississippi Northern Bankruptcy Court<br>Mississippi Southern Bankruptcy Court','Yes<br>Yes','No<br>No','MISSISSIPPI');">MISSISSIPPI</a><br>
    <a href="javascript:showlib('Missouri Eastern Bankruptcy Court<br>Missouri Western Bankruptcy Court','Yes<br>Yes','No<br>No','MISSOURI');">MISSOURI</a><br>
    <a href="javascript:showlib('Montana Bankruptcy Court','Yes','Yes','MONTANA');">MONTANA</a><br>
    <a href="javascript:showlib('Nebraska Bankruptcy Court','Yes','Yes','NEBRASKA');">NEBRASKA</a><br>
    <a href="javascript:showlib('Nevada Bankruptcy Court','Yes','Yes','NEVADA');">NEVADA</a><br>
    <a href="javascript:showlib('New Hampshire Bankruptcy Court','Yes','Yes','NEW HAMPSHIRE');">NEW HAMPSHIRE</a><br>
    <a href="javascript:showlib('New Jersey Bankruptcy Court','Yes','Yes','NEW JERSEY');">NEW JERSEY</a><br>
    <a href="javascript:showlib('New Mexico Bankruptcy Court','Yes','No','NEW MEXICO');">NEW MEXICO</a><br>
    <a href="javascript:showlib('New York Eastern Bankruptcy Court<br>New York Northern Bankruptcy Court<br>New York Southern Bankruptcy Court<br>New York Western Bankruptcy Court','Yes<br>Yes<br>Yes<br>Yes','Yes<br>Yes<br>Yes<br>No','NEW YORK');">NEW YORK</a><br>
    <a href="javascript:showlib('North Carolina Western Bankruptcy Court<br>North Carolina Eastern Bankruptcy Court<br>North Carolina Middle Bankruptcy Court','Yes<br>Yes<br>Yes','Yes<br>Yes<br>Yes','NORTH CAROLINA');">NORTH CAROLINA</a><br>
    <a href="javascript:showlib('North Dakota Bankruptcy Court','Yes','Yes','NORTH DAKOTA');">NORTH DAKOTA</a><br>
    </td>
    <td class="coveragetext" width="33%" valign="top">
    <a href="javascript:showlib('Ohio Southern Bankruptcy Court<br>Ohio Northern Bankruptcy Court','Yes<br>Yes','No<br>No','OHIO');">OHIO</a><br>
    <a href="javascript:showlib('Oklahoma Eastern Bankruptcy Court<br>Oklahoma Northern Bankruptcy Court<br>Oklahoma Western Bankruptcy Court','Yes<br>Yes<br>No','Yes<br>Yes<br>No','OKLAHOMA');">OKLAHOMA</a><br>
    <a href="javascript:showlib('Oregon Bankruptcy Court','Yes','No','OREGON');">OREGON</a><br>
    <a href="javascript:showlib('Pennsylvania Western Bankruptcy Court<br>Pennsylvania Middle Bankruptcy Court<br>Pennsylvania Eastern Bankruptcy Court','Yes<br>Yes<br>Yes','Yes<br>Yes<br>Yes','PENNSYLVANIA');">PENNSYLVANIA</a><br>
    <!--PUERTO RICO<br>-->
    <a href="javascript:showlib('Rhode Island Bankruptcy Court','Yes','No','RHODE ISLAND');">RHODE ISLAND</a><br>
    <a href="javascript:showlib('South Carolina Bankruptcy Court','Yes','Yes','SOUTH CAROLINA');">SOUTH CAROLINA</a><br>
    <a href="javascript:showlib('South Dakota Bankruptcy Court','Yes','Yes','SOUTH DAKOTA');">SOUTH DAKOTA</a><br>
    <a href="javascript:showlib('Tennessee Middle Bankruptcy Court<br>Tennessee Eastern Bankruptcy Court<br>Tennessee Western Bankruptcy Court','Yes<br>Yes<br>Yes','No<br>No<br>No','TENNESSEE');">TENNESSEE</a><br>
    <a href="javascript:showlib('Texas Southern Bankruptcy Court<br>Texas Northern Bankruptcy Court<br>Texas Western Bankruptcy Court<br>Texas Eastern Bankruptcy Court','Yes<br>Yes<br>Yes<br>Yes','Yes<br>No<br>Yes<br>Yes','TEXAS');">TEXAS</a><br>
    <a href="javascript:showlib('Utah Bankruptcy Court','Yes','Yes','UTAH');">UTAH</a><br>
    <a href="javascript:showlib('Vermont Bankruptcy Court','Yes','Yes','VERMONT');">VERMONT</a><br>
    <a href="javascript:showlib('Virgin Islands Fed Court - St. Thomas<br>Virgin Islands Fed Court - St. Croix','Yes<br>Yes','Yes<br>Yes','VIRGIN ISLANDS');">VIRGIN ISLANDS</a><br>
    <a href="javascript:showlib('Virginia Eastern Bankruptcy Court<br>Virginia Western Bankruptcy Court','Yes<br>Yes','Yes<br>No','VIRGINIA');">VIRGINIA</a><br>
    <a href="javascript:showlib('Washington Eastern Bankruptcy Court<br>Washington Western Bankruptcy Court','No<br>Yes','No<br>Yes','WASHINGTON');">WASHINGTON</a><br>
    <a href="javascript:showlib('West Virginia Northern Bankruptcy Court<br>West Virginia Southern Bankruptcy Court','Yes<br>Yes','Yes<br>Yes','WEST VIRGINIA');">WEST VIRGINIA</a><br>
    <a href="javascript:showlib('Wisconsin Western Bankruptcy Court<br>Wisconsin Eastern Bankruptcy Court','Yes<br>Yes','Yes<br>No','WISCONSIN');">WISCONSIN</a><br>
    <a href="javascript:showlib('Wyoming Bankruptcy Court','Yes','Yes','WYOMING');">WYOMING</a><br>
    </td>
  </tr>	  
</table>
