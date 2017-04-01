<!-- begin equifaxcreditsearch/search_terms_echo.tpl -->

<TMPL_IF NAME="RESULTS">
<TMPL_IF NAME="SEARCH_TERMS">
<table width="790" border="0" cellpadding="0" cellspacing="0" height="20">
<tr>
<td width="100%" class="smallfont1">
<span name="search_terms" id="search_terms">
<b>SEARCH:</b>&nbsp;<TMPL_LOOP NAME="SEARCH_TERMS">&nbsp;<TMPL_VAR NAME="TERM_NAME">:&nbsp;<TMPL_VAR NAME="TERM_VALUE"></TMPL_LOOP>
</span>
</td>
<td class="smallfont1" align="right" nowrap="nowrap">
<span name="new_edit_search_menu" id="new_edit_search_menu">
<a class="searchheader"  href="javascript: edit_search();">Edit Search</a> | <a class="searchheader" href="javascript: new_search();">New Search</a>
</span>
</td>
</tr>
</table>
<TMPL_ELSE>
<table border="0" cellpadding="0" cellspacing="0" height="20">
  <tr height="20">
    <td height="20" class="unifont1"></td>
  </tr>
</table>
</TMPL_IF>
</TMPL_IF>

<!-- begin equifaxcreditsearch/search_terms_echo.tpl -->
