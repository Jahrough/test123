<!-- Begin sexpredator_settings_pref.tpl-->
<div><legend>Sexual Offenders Search Options</legend></div>
<div class="row-wrapper grey-border">
<table class="options-table">
<TMPL_IF NAME="PREFERENCES_ERROR_MESSAGE">
  <tr>
    <td align="center" colspan="3"><TMPL_VAR NAME="PREFERENCES_ERROR_MESSAGE"></td>
  </tr>
</TMPL_IF>
    <tr>
       <td valign="top" colspan="3">
                <div class="red-divide"></div>
       </td>
    </tr>
  <tr>
    <td>
    <table border="0" cellpadding="2" cellspacing="0" width="100%" class="myaccountborder">
      <tr>
        <td valign="top">
          <table border="0" cellpadding="2" cellspacing="0" width="100%" class="myaccountbody">
            <tr>
                  <td class="checkbox-td left-p"><input id="show_sexpred_image" type="checkbox" name="show_sexpred_image" value="yes" <TMPL_VAR NAME="show_sexpred_image">>
                      <label for="sexpred_search_results">Always display Sexual Offenders photos on Search Results</label>
                  </td>
            </tr>
          </table>
        </td>
      </tr>
    </table>
    </td>
  </tr>
</table>
</div>
<!-- End sexpredator_settings_pref.tpl-->