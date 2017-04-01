<!-- begin inputs_fields/delco_search.tpl -->
      <tr>
        <td valign="top" align="left">
        <table border="0" cellpadding="2" cellspacing="0">
          <tr>
            <td class="inputlabel">&nbsp;<b>Company Name</b></td>
            <td class="inputlabel">&nbsp;&nbsp;&nbsp;</td>
            <td class="inputlabel">&nbsp;<b>Company Type</b></td>
          </tr>
          <tr>
            <td class="nsinputs" valign="top"><input type="text" name="COMPANY_NAME" tabindex="1" size="25" value="<TMPL_VAR NAME=COMPANY_NAME>" maxlength=34 onBlur="this.value=this.value.toUpperCase()"></td>
            <td class="inputlabel">&nbsp;&nbsp;&nbsp;</td>
            <td class="nsinputs" valign="top">
            <span class="smalllabel">
            <TMPL_LOOP NAME="COMPANY_TYPES">
            <input tabindex="<TMPL_VAR NAME=TYPES_TAB>" <TMPL_VAR NAME=SELECTED> type="radio" name="COMPANY_TYPE" value="<TMPL_VAR NAME=VAL>">&nbsp;<TMPL_VAR NAME=NAME><br>
            </TMPL_LOOP>
            </span>
            </td>
          </tr>
        </table>
        </td>
      </tr>
<!-- end inputs_fields/delco_search.tpl -->
