<!-- begin: $RCSfile: verify_suspended_user_list.tpl,v $ -->
<table border="1" cellpadding="3" cellspacing="0" width="100%">
  <tr bgcolor="#999999">
    <TD class="unifont1bold" align="center" nowrap="nowrap">Login ID</TD>
    <TD class="unifont1bold" align="center" nowrap="nowrap">Name</TD>
    <TD class="unifont1bold" align="center" nowrap="nowrap">Date Added</TD>
    <TD class="unifont1bold" align="center" nowrap="nowrap">Last Login Date</TD>
    <TD class="unifont1bold" align="center" nowrap="nowrap">Admin</TD>
  </tr>
  <TMPL_IF NAME="USER_LIST">
<TMPL_LOOP NAME=USER_LIST>
  <tmpl_if name="LAST_90DAYS">
  <tr bgcolor="#ffdddd">
  <tmpl_else>
  <tr bgcolor="white">
  </tmpl_if>
    <TD class="<tmpl_if name="SYSTEMADMINISTRATOR">unifont1blue<tmpl_else>unifont1</tmpl_if>">&nbsp;<TMPL_VAR NAME=LOGINID></TD>
    <TD class="<tmpl_if name="SYSTEMADMINISTRATOR">unifont1blue<tmpl_else>unifont1</tmpl_if>"><TMPL_VAR NAME=FIRSTNAME> <TMPL_VAR NAME=LASTNAME></TD>
    <TD class="<tmpl_if name="SYSTEMADMINISTRATOR">unifont1blue<tmpl_else>unifont1</tmpl_if>" nowrap="nowrap"><TMPL_VAR NAME=DATEADDED>&nbsp;</TD>
    <TD class="<tmpl_if name="SYSTEMADMINISTRATOR">unifont1blue<tmpl_else>unifont1</tmpl_if>" nowrap="nowrap"><TMPL_VAR NAME=LAST_LOGIN_DATE>&nbsp;</TD>
    <TD class="<tmpl_if name="SYSTEMADMINISTRATOR">unifont1blue<tmpl_else>unifont1</tmpl_if>"><TMPL_VAR NAME=SYSTEMADMINISTRATOR_DISPLAY></TD>
  </tr>
</TMPL_LOOP>
<TMPL_ELSE>
  <tr bgcolor="white">
  <td colspan="5" class="unifont1">
  None found
  </td>
  </tr>
</TMPL_IF>
</table>
<br>
<!-- end: $RCSfile: verify_suspended_user_list.tpl,v $ -->
