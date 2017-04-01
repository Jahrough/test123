<!-- begin search_report_individual.tpl -->
<TMPL_IF NAME="akas"><TMPL_IF NAME="FIRST_LEVEL"><P></TMPL_IF><TMPL_VAR NAME="akas"></TMPL_IF>
<TMPL_IF NAME="imposters"><TMPL_IF NAME="FIRST_LEVEL"><P></TMPL_IF><TMPL_VAR NAME="imposters"></TMPL_IF>
<TMPL_IF NAME="address_map_display"><P><b>Address Summary:</b> <!--<i>(Click on address to link to more details within this report - No Charge)</i>--><br><TMPL_VAR NAME="address_map_display"></TMPL_IF>
<TMPL_IF NAME="phone_map_display"><P><b>Phone Summary:</b> <!--<i>(Click on phone to link to more details within this report - No Charge)</i>--><br><TMPL_VAR NAME="phone_map_display"></TMPL_IF>
<TMPL_VAR NAME="depth"><TMPL_IF NAME="addresses"><TMPL_IF NAME="FIRST_LEVEL"><P></TMPL_IF><TMPL_VAR NAME="addresses"></TMPL_IF>
<TMPL_IF NAME="properties"><TMPL_IF NAME="FIRST_LEVEL"><P></TMPL_IF><TMPL_VAR NAME="properties"></TMPL_IF>
<TMPL_IF NAME="associates"><TMPL_IF NAME="FIRST_LEVEL"><P></TMPL_IF><TMPL_VAR NAME="associates"></TMPL_IF>
<TMPL_IF NAME="relative_map_display"><P><b>Possible Relative Summary:</b> <TMPL_UNLESS NAME="NO_LINKS"><i>(Click on name to link to more details within this report - No Charge)</i></TMPL_UNLESS><br><TMPL_VAR NAME="relative_map_display"><p></TMPL_IF>
<TMPL_IF NAME="relatives"><TMPL_IF NAME="FIRST_LEVEL"><P><TMPL_ELSE><BR></TMPL_IF><TMPL_VAR NAME="relatives"></TMPL_IF>
<TMPL_IF NAME="neighbors"><TMPL_IF NAME="FIRST_LEVEL"><P></TMPL_IF><TMPL_VAR NAME="neighbors"></TMPL_IF>

<!-- end search_report_individual.tpl -->
