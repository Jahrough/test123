<!-- begin search_inputs_results_type.tpl -->
  <TMPL_UNLESS NAME="NO_OUTPUT_RESULTS_TYPE">
      <tr height="10">
        <td height="10" class="unifont1"></td>
      </tr>
      <tr>
        <td align="left" valign="top">
        <table border="0" cellpadding="0" cellspacing="0">
          <tr>
            <td><b>Output Type:</b>&nbsp;&nbsp;</td>
            <td><input type="radio" value="html" name="RESULTS_TYPE" id="results_type_html" <TMPL_UNLESS NAME="RESULTS_TEXT"> CHECKED</TMPL_UNLESS>></td>
            <td><label for="results_type_html">&nbsp;&nbsp;Formatted HTML&nbsp;&nbsp;&nbsp;&nbsp;</label></td>
            <td><input type="radio" value="text" name="RESULTS_TYPE" id="results_type_text" <TMPL_IF NAME="RESULTS_TEXT"> CHECKED</TMPL_IF>></td>
            <td><label for="results_type_text">&nbsp;&nbsp;Cut and Paste / Printer Friendly Text (No Reports)</label></td>
          </tr>
        </table>
        </td>
      </tr>
  </TMPL_UNLESS>
<!-- end search_inputs_results_type.tpl -->
