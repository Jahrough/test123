<!-- begin inputs_fields/soc_search.tpl -->
      <INPUT type=hidden NAME="ACTION_REPORT" VALUE="<TMPL_VAR NAME=ACTION_REPORT>">
      <tr>
        <td valign="top" align="left">
        <span class="moreSearchesHeader" id="title_text"></span>
        <script>write_search_title('<TMPL_VAR NAME=PAGE_TITLE>');</script>
        </td>
      </tr>
      <tr>
        <td valign="top" align="left">
        <table border="0" cellpadding="0" cellspacing="0">
          <tr>
            <td valign="top" align="left">
              <table border="0" cellpadding="2" cellspacing="0">
                <tr>
                  <td>&nbsp;<b><label for="EMAIL">Email</label></b></td>
                </tr>
                <tr>
                  <td  class="nsinputs">
                    <input type="text" name="EMAIL" id="EMAIL" tabindex="10" size="60" maxlength="75"
                     onBlur="this.value=this.value.toUpperCase()" value="<TMPL_VAR NAME=EMAIL>" />
                  </td>
                </tr>
              </table>
            </td>
          </tr>
          <tr>
            <td valign="top" align="left">
              <table border="0" cellpadding="0" cellspacing="0">
                <tr>
                  <td><input type="checkbox" name="ENHANCED_LINKING" id="ENHANCED_LINKING" tabindex="16" value="1" <TMPL_IF NAME="ENHANCED_LINKING">CHECKED</TMPL_IF>></td>
                  <td nowrap><label for="ENHANCED_LINKING">&nbsp;Find all emails for Subject - additional cost&nbsp;</label></td>
                </tr>
              </table>
			      </td>
			    </tr>
        </table>
        </td>
      </tr>
<!-- end inputs_fields/soc_search.tpl -->
