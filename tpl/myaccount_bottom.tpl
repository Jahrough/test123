
</center>

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
<TMPL_INCLUDE NAME="classic_footer.tpl">
<TMPL_INCLUDE NAME="search_hidden_form.tpl">
<TMPL_INCLUDE NAME="verify_password_trigger.tpl">
</body>
</html>
