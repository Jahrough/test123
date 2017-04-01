<TMPL_IF NAME="VERIFY_PASSWORD">
  <script>general_win('<TMPL_VAR NAME=ACTION>?SESSION_ID=<TMPL_VAR NAME=SESSION_ID>&CSRF_TOKEN=<TMPL_VAR NAME=CSRF_TOKEN>&EVENT=LOGIN/DO_VERIFY_PASSWORD','VerifyPassword','309','300');</script>
  <noscript>Your browser does not support JavaScript!</noscript>
</TMPL_IF>
