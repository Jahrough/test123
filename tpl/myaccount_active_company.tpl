<!-- begin myaccount_profile.tpl -->

<table border="0" cellpadding="0" cellspacing="0" width="880" class="myaccountborder">
  <tr>
    <td align="center">
    <table border="0" cellpadding="0" cellspacing="0" width="856" class="myaccountbody">
      <tr height="12">
        <td height="12" width="856" class="myaccountborder"><img alt="" height="12" width="856" border="0" src="<TMPL_VAR NAME=IMGPATH>/spacer.gif"></td>
      </tr>
      <tr>
        <td align="center">
          <TMPL_INCLUDE NAME="myaccount_profile_data.tpl">
        </td>
      </tr>
  <TMPL_IF NAME="MYACCOUNT_COMPANY_TREE">
	<tr>
	<td align="center">
	<TMPL_INCLUDE NAME=myaccount_company_tree.tpl>
	</td>
	</tr>
  </TMPL_IF>
	<tr heignt="12">
            <td height="12" width="856" class="myaccountbody"><img alt="" height="12" width="856" border="0" src="<TMPL_VAR NAME=IMGPATH>/spacer.gif"></td>
	</tr>

    </table>
    </td>
  </tr>  
</table>

<TMPL_INCLUDE NAME=myaccount_footer.tpl>

<!-- end myaccount_profile.tpl -->
