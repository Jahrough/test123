<!-- begin: $RCSfile: alerts_bottom.tpl,v $ -->
</div>

<TMPL_IF NAME="ERROR_MSG">
    <script>alert('<TMPL_VAR NAME=ERROR_MSG>\n');</script>
</TMPL_IF>

<TMPL_IF NAME="ERROR_MSG_LIST">
    <script>
    var errortext = '';
    <TMPL_LOOP NAME="ERROR_MSG_LIST">
	errortext += '<TMPL_VAR NAME=MSG>\n';
    </TMPL_LOOP>
    alert(errortext);
    </script>
</TMPL_IF>

</form>
</body>
</html>
<!-- end: $RCSfile: alerts_bottom.tpl,v $ -->
