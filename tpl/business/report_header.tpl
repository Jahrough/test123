<!-- report_header.tpl -->
<blockquote>

<div class="unifont2">

<TMPL_IF NAME="TODAY"><b>Date:</b> <TMPL_VAR NAME="TODAY"><br></TMPL_IF>

<TMPL_IF NAME="REFERENCE_CODE"><b>Reference Code:</b> <TMPL_VAR NAME="REFERENCE_CODE"><br>
</TMPL_IF>

<form name=CORP_REPORT>
<INPUT TYPE=HIDDEN NAME=REFERENCE_CODE VALUE="<TMPL_VAR NAME=REFERENCE_CODE>">
<INPUT TYPE=HIDDEN NAME=IM_A_REPORT VALUE="1">
</form>
<br>
</blockquote>
<!-- end report_header.tpl -->
