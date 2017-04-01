<!-- begin myaccount_company_tree.tpl -->
<input type="HIDDEN" name="ACTIVE_COMPANY_ID">
<table border="0" cellpadding="1" cellspacing="0" width="640" class="myaccountborder" style="margin: 0 auto">
          <tr>
            <td align="center">
<table border="0" cellpadding="0" cellspacing="0" width="638" class="myaccountalert">
 <!-- begin myaccount_profile_data.tpl -->
      <tr>
	<td height="40" class="myaccounttitle" align="left">Please select the company to manage: </td>
      </tr>
      <tr>
        <td  height="20" align="right">
		<TMPL_IF NAME="ACTIVE_COMPANY_ID">
		<A href="#" class="eclink" onClick="collapseTree('company_tree');expandToItem('company_tree','<TMPL_VAR NAME="ACTIVE_COMPANY_ID">'); return false;">Reset</A>&nbsp;&nbsp;&nbsp;
		</TMPL_IF>
		<A href="#" class="eclink" onClick="expandTree('company_tree'); return false;">Expand All</A>&nbsp;&nbsp;&nbsp;
		<A href="#" class="eclink" onClick="collapseTree('company_tree'); return false;">Collapse All</A>&nbsp;&nbsp;&nbsp;
	</td>
      </tr>
      <tr>
        <td valign="top">
          <TMPL_VAR NAME="TREE">
        </td>
      </tr>
      <tr>
        <td valign="top">
           &nbsp;
        </td>
       </tr>
</table>
	</td>
	</tr>
</table>
<!-- end myaccount_company_tree.tpl -->
