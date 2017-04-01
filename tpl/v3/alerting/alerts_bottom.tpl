<!-- begin: $RCSfile: alerts_bottom.tpl,v $ -->
	</div>
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
<div id="footer">
      <a href="http://www.lexisnexis.com/terms/copyright.aspx" target="_blank">Copyright</a><span>&copy;</span>
      <span><script>document.write(new Date().getFullYear());</script> LexisNexis. All rights Reserved.</span> 
      <a href="http://www.lexisnexis.com/en-us/terms/privacy-policy.page" target="_blank">Privacy & Security</a>
      <a href="http://www.lexisnexis.com/risk/terms/" target="_blank">Terms &amp; Conditions</a>
</div>
</body>
</html>
<!-- end: $RCSfile: alerts_bottom.tpl,v $ -->
