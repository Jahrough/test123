<!-- search_report_main_aka.tpl -->
<b>Name:</b>&nbsp;<TMPL_INCLUDE NAME=search_report_name_url.tpl><TMPL_IF NAME="dod"><IMG SRC="<TMPL_VAR NAME=IMGPATH>/newd.gif" height=16 width=16>&nbsp;DOD:<TMPL_VAR NAME="dod"></TMPL_IF><TMPL_IF NAME="dob">&nbsp;DOB:<TMPL_VAR NAME="dob"></TMPL_IF><BR>
<b>SSN:</b> <TMPL_VAR NAME="ssn">
<TMPL_IF NAME=ssn-issued-location>&nbsp;issued in <TMPL_VAR NAME="ssn-issued-location"></TMPL_IF><TMPL_IF NAME="ssn-issued-end-date"><TMPL_IF NAME="ssn-issued-start-date"><TMPL_IF NAME="ssn-issued-date-diff">&nbsp;between <i><TMPL_VAR NAME="ssn-issued-start-date"></i> and <i><TMPL_VAR NAME="ssn-issued-end-date"></i><TMPL_ELSE>&nbsp;in <i><TMPL_VAR NAME="ssn-issued-start-date"></i></TMPL_IF></TMPL_IF></TMPL_IF>

<br>
<b>Age:</b> <TMPL_VAR NAME="age">
<!-- end search_report_main_aka.tpl -->
