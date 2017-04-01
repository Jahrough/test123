<!-- begin search_timing.tpl -->
<TMPL_IF NAME="SHOW_TIMING">
    <table align="center">
      <TMPL_IF NAME="SERVER_NAME">
	<tr>
	  <td>Server:</td>
	  <td><TMPL_VAR NAME="SERVER_NAME"></td>
	</tr>
      </TMPL_IF> <!-- TIMING_REQUEST -->

      <TMPL_IF NAME="SYBASE_RECONNECT">
	<tr>
	  <td>Sybase Reconnect:</td>
	  <td><TMPL_VAR NAME="SYBASE_RECONNECT"></td>
	</tr>
      </TMPL_IF> <!-- TIMING_REQUEST -->

      <TMPL_IF NAME="TIME_REQUEST">
	<tr>
	  <td>Request Total:</td>
	  <td><TMPL_VAR NAME="TIME_REQUEST"> s</td>
	</tr>
      </TMPL_IF> <!-- TIMING_REQUEST -->

      <TMPL_IF NAME="TIME_VALIDATE">
	<tr>
	  <td>Validate Session:</td>
	  <td><TMPL_VAR NAME="TIME_VALIDATE"> s</td>
	</tr>
      </TMPL_IF> <!-- TIMING_REQUEST -->

      <TMPL_IF NAME="TIME_DISPATCH">
	<tr>
	  <td>Process Request:</td>
	  <td><TMPL_VAR NAME="TIME_DISPATCH"> s</td>
	</tr>
      </TMPL_IF> <!-- TIMING_REQUEST -->

      <TMPL_IF NAME="TIME_LOGIN">
	<tr>
	  <td>Login:</td>
	  <td><TMPL_VAR NAME="TIME_LOGIN"> s</td>
	</tr>
      </TMPL_IF> <!-- TIMING_REQUEST -->

      <TMPL_IF NAME="TIME_LOGIN_SYBASE">
	<tr>
	  <td>Login (Sybase):</td>
	  <td><TMPL_VAR NAME="TIME_LOGIN_SYBASE"> s</td>
	</tr>
      </TMPL_IF> <!-- TIMING_REQUEST -->

      <TMPL_IF NAME="TIME_MOXIE">
	<tr>
	  <td>Moxie Query:</td>
	  <td><TMPL_VAR NAME="TIME_MOXIE"> s</td>
	</tr>
      </TMPL_IF> <!-- TIMING_REQUEST -->

      <TMPL_IF NAME="TIME_SYBASE_TOTAL">
	<tr>
	  <td>Sybase Total:</td>
	  <td><TMPL_VAR NAME="TIME_SYBASE_TOTAL"> s</td>
	</tr>
      </TMPL_IF> <!-- TIMING_REQUEST -->

    </table>
</TMPL_IF> <!-- SHOW_TIMINGS -->

<!-- end search_timing.tpl -->
