<!-- begin inputs_fields/delco_search.tpl -->
      <tr>
        <td valign="top" align="left">
        <span class="moreSearchesHeader" id="title_text"></span>
        <script>write_search_title('<TMPL_VAR NAME=PAGE_TITLE>');</script>
        </td>
      </tr>
      <tr>
        <td valign="top" align="left">
        <table border="0" cellpadding="2" cellspacing="0">
          <tr>
            <td>&nbsp;<b><label for="COMPANY_NAME">Company Name</label></b></td>
            <td>&nbsp;&nbsp;&nbsp;</td>
            <td>&nbsp;<b>Company Type</b></td>
          </tr>
          <tr>
            <td class="nsinputs" valign="top"><input type="text" name="COMPANY_NAME" id="COMPANY_NAME" tabindex="1" size="25" value="<TMPL_VAR NAME=COMPANY_NAME>" maxlength=34 onBlur="this.value=this.value.toUpperCase()"></td>
            <td>&nbsp;&nbsp;&nbsp;</td>
            <td class="nsinputs" valign="top">
            <span class="smalllabel">
            <TMPL_LOOP NAME="COMPANY_TYPES">
            <input tabindex="<TMPL_VAR NAME=TYPES_TAB>" <TMPL_VAR NAME=SELECTED> type="radio" name="COMPANY_TYPE" id="<TMPL_VAR NAME=VAL>" value="<TMPL_VAR NAME=VAL>">&nbsp;<label for="<TMPL_VAR NAME=VAL>"><TMPL_VAR NAME=NAME></label><br>
            </TMPL_LOOP>
            </span>
            </td>
          </tr>
        </table>
        </td>
      </tr>
<!-- end inputs_fields/delco_search.tpl -->
