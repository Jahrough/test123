<!-- search_report_address.tpl -->
<TMPL_IF NAME=VERIFIED_ADDR><img alt="" src="<TMPL_VAR NAME=IMGPATH>/bluecheck.gif" width="16" height="16" border="0"></TMPL_IF><TMPL_UNLESS NAME="NO_LINKS"><A href="javascript:set_vars('STREET_ADDRESS|<TMPL_VAR NAME=street_address>|CITY|<TMPL_VAR NAME=city>|STATE|<TMPL_VAR NAME=state>|ZIP|<TMPL_VAR NAME=zip>', 1)"<TMPL_IF NAME=address_key> NAME="ADDR-<TMPL_VAR NAME=address_key>"</TMPL_IF>></TMPL_UNLESS><TMPL_VAR NAME="street_address">, <TMPL_VAR NAME=city> <TMPL_VAR NAME=state> <TMPL_VAR NAME=zip><TMPL_IF NAME=zip4>-<TMPL_VAR NAME=zip4></TMPL_IF><TMPL_IF NAME=county>,&nbsp;<TMPL_VAR NAME=county> COUNTY</TMPL_IF><TMPL_UNLESS NAME="NO_LINKS"></A></TMPL_UNLESS><TMPL_IF NAME=date_range> (<TMPL_VAR NAME=date_range>)</TMPL_IF>
<!-- END search_report_address.tpl -->