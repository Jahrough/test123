<!-- Begin sexpredator_settings_pref.tpl-->
<table border="0" cellpadding="0" cellspacing="0" width="620" class="myaccountbody">
<TMPL_IF NAME="PREFERENCES_ERROR_MESSAGE">
  <tr>
    <td align="center" colspan="3"><TMPL_VAR NAME="PREFERENCES_ERROR_MESSAGE"></td>
  </tr>
</TMPL_IF>
  <tr>
    <td>
    <table border="0" cellpadding="2" cellspacing="0" width="100%" class="myaccountborder">
      <tr>
        <td valign="top">
          <table border="0" cellpadding="2" cellspacing="0" width="100%" class="myaccountbody">
            <tr>
              <td class="smallfont1">
              <span class="myaccountlabel">Sexual Offenders Search Options:</span>
                <br>
                <ol>
                  <li><label for="sexpred_search_results">Always display Sexual Offenders photos on Search Results</label>&nbsp;<input id="show_sexpred_image" type="checkbox" name="show_sexpred_image" value="yes" <TMPL_VAR NAME="show_sexpred_image">> </li>
                </ol>
              </td>
            </tr>
          </table>
        </td>
      </tr>
    </table>
    </td>
  </tr>
</table>
<!-- End sexpredator_settings_pref.tpl-->