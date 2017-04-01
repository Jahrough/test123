<!-- jquery needed for zip / city autocomplete -->
<TMPL_IF ALLOW_ZIP_CITY_AUTOCOMPLETE>
<TMPL_IF ENABLE_ZIP_CITY_AUTOCOMPLETE>
    <script src="<TMPL_VAR NAME='JSPATH'>/v3/jquery-ui.min.js"></script>
    <link rel="stylesheet" href="<TMPL_VAR NAME=CSSPATH>/jquery-ui.css">
</TMPL_IF>
</TMPL_IF>
