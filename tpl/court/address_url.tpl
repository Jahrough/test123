<!-- address_url.tpl -->
<TMPL_IF NAME=VERIFIED><img src="<TMPL_VAR NAME=IMGPATH>/bluecheck.gif" width="16" height="16" border="0"></TMPL_IF><A href="javascript:set_vars('STREET_ADDRESS|<TMPL_VAR NAME=STREET>|CITY|<TMPL_VAR NAME=CITY>|STATE|<TMPL_VAR NAME=STATE>|ZIP|<TMPL_VAR NAME=ZIP>', 1)"><TMPL_VAR NAME="STREET">, <TMPL_VAR NAME=CITY> <TMPL_VAR NAME=STATE> <TMPL_VAR NAME=ZIP><TMPL_IF NAME=ZIP4>-<TMPL_VAR NAME=ZIP4></TMPL_IF><TMPL_IF NAME=COUNTY>,&nbsp;<TMPL_VAR NAME=COUNTY></TMPL_IF></A><TMPL_IF NAME=DATE_RANGE> (<TMPL_VAR NAME=date_range>)</TMPL_IF>
<!-- END address_url.tpl -->
