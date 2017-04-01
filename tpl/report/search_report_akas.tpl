<!-- search_report_akas.tpl -->
<TMPL_IF NAME="ssn-issued-start-date"><TMPL_VAR NAME="space"><TMPL_IF NAME="dod"><IMG SRC="<TMPL_VAR NAME=IMGPATH>/newd.gif" height=16 width=16>&nbsp;</TMPL_IF><TMPL_INCLUDE NAME="search_report_name_url.tpl">
<!--<TMPL_IF NAME="probability">
&nbsp;(<TMPL_VAR NAME="probability">%)
</TMPL_IF> -->
<TMPL_IF NAME="dob">
&nbsp;DOB: <TMPL_VAR NAME="dob">
</TMPL_IF>
<TMPL_IF NAME="dod">
&nbsp;DOD: <TMPL_VAR NAME="dod">
</TMPL_IF>
<TMPL_IF NAME="age">
&nbsp;Age: <TMPL_VAR NAME="age">
</TMPL_IF>
<BR>
<TMPL_VAR NAME="space"><TMPL_VAR NAME="SSN_INDENT"><TMPL_INCLUDE NAME="search_report_ssn.tpl">
<TMPL_IF NAME="ssn-issued-location">
&nbsp;issued in <TMPL_VAR NAME="ssn-issued-location">
</TMPL_IF>
<TMPL_IF NAME="ssn-issued-end-date">
<TMPL_IF NAME="ssn-issued-date-diff">
&nbsp;between <TMPL_VAR NAME="ssn-issued-start-date"> and <TMPL_VAR NAME="ssn-issued-end-date">
<TMPL_ELSE>
&nbsp;in <TMPL_VAR NAME="ssn-issued-start-date">
</TMPL_IF>
<TMPL_ELSE>
&nbsp;in <TMPL_VAR NAME="ssn-issued-start-date">
</TMPL_IF>

<BR>

<TMPL_ELSE>
<TMPL_IF NAME="last">
<TMPL_VAR NAME="space"><TMPL_IF NAME="dod"><IMG SRC="<TMPL_VAR NAME=IMGPATH>/newd.gif" height=16 width=16>&nbsp;</TMPL_IF><TMPL_INCLUDE NAME="search_report_name_url.tpl">&nbsp;<TMPL_INCLUDE NAME="search_report_ssn.tpl">
<TMPL_IF NAME="dob">
&nbsp;DOB:<TMPL_VAR NAME="dob">
</TMPL_IF>
<TMPL_IF NAME="dod">
&nbsp;DOD:<TMPL_VAR NAME="dod">
</TMPL_IF>
<TMPL_IF NAME="age">
&nbsp;Age: <TMPL_VAR NAME="age">
</TMPL_IF>
<BR>
</TMPL_IF><!-- ending check for name value -->
</TMPL_IF>
