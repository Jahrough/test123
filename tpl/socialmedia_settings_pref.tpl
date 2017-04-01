<!-- Begin socialmedia_settings_pref.tpl-->
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
              <span class="myaccountlabel">Options:</span>
              </td>
            </tr>
            <tr>
              <td width="56%" valign="top" class="smallfont1">
                  <table border="0" cellpadding="0" cellspacing="0" width="100%">
                  <tr>
                    <td width="1%"><input type="checkbox" id="socialmedia_expand_subject" name="socialmedia_expand_subject" value="1" <TMPL_VAR NAME="socialmedia_expand_subject">></td>
                        <td align="left" class="smallfont1"><label for="socialmedia_expand_subject">&nbsp;Expand Additional Subject Information</label></td>
                        <td align="right" class="smallfont1">&nbsp;</td>
                  </tr>
                  <tr>
                    <td width="1%"><input type="checkbox" id="socialmedia_expand_associate" name="socialmedia_expand_associate" value="1" <TMPL_VAR NAME="socialmedia_expand_associate">></td>
                        <td align="left" class="smallfont1"><label for="socialmedia_expand_associate">&nbsp;Expand Associate Information</label></td>
                        <td align="right" class="smallfont1">&nbsp;</td>
                  </tr>
                  <tr>
                    <td width="1%"><input type="checkbox" id="socialmedia_expand_search" name="socialmedia_expand_search" value="1" <TMPL_VAR NAME="socialmedia_expand_search">></td>
                        <td align="left" class="smallfont1"><label for="socialmedia_expand_search">&nbsp;Expand Additional Search Information</label></td>
                        <td align="right" class="smallfont1">&nbsp;</td>
                  </tr>
                  <tr>
                    <td width="1%"><input type="checkbox" id="socialmedia_reverse_sort_order" name="socialmedia_reverse_sort_order" value="1" <TMPL_VAR NAME="socialmedia_reverse_sort_order">></td>
                        <td align="left"  class="smallfont1"><label for="socialmedia_reverse_sort_order">&nbsp;Sort results by rating from low to high</label></td>
                        <td align="right"  class="smallfont1">&nbsp;</td>
                  </tr>
                  </table>
              </td>
            </tr>
          </table>
        </td>
      </tr>
    </table>
    </td>
  </tr>
</table>
<!-- End socialmedia_settings_pref.tpl-->