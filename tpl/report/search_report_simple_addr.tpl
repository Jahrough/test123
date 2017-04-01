<!-- search_report_simple_addr.tpl -->
<TMPL_VAR NAME="space">
<TMPL_IF NAME="last">
<TMPL_INCLUDE NAME="search_report_name_url.tpl">
&nbsp;-&nbsp;
</TMPL_IF>
<TMPL_INCLUDE NAME="search_report_address.tpl">
<TMPL_IF NAME="phones">
<BR>
<TMPL_VAR NAME="phones">
<TMPL_IF NAME="properties">
<TMPL_VAR NAME="properties">
<TMPL_ELSE>
<BR>
</TMPL_IF>
<TMPL_ELSE>
<TMPL_IF NAME="properties">
<BR>
<TMPL_VAR NAME="properties">
<TMPL_ELSE>
<BR>
</TMPL_IF>
</TMPL_IF>
<!-- end search_report_simple_addr.tpl -->
