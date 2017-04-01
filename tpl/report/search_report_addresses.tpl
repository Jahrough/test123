<!-- search_report_addresses.tpl -->
<TMPL_VAR NAME="space"><TMPL_IF NAME="SHARED_ADDR"><IMG SRC="<TMPL_VAR NAME=IMGPATH>/new_s.gif" height=16 width=16>&nbsp;</TMPL_IF><TMPL_INCLUDE NAME="search_report_address.tpl">
<TMPL_IF NAME="residents">
<BR><TMPL_VAR NAME="residents">
</TMPL_IF>
<TMPL_IF NAME="phones">
<TMPL_IF NAME="residents">
<TMPL_ELSE>
<BR>
</TMPL_IF>
<TMPL_VAR NAME="phones">
</TMPL_IF>
<TMPL_IF NAME="properties">
<BR>
<TMPL_VAR NAME="properties">
</TMPL_IF>
<!-- end search_report_addresses.tpl -->
<BR>
