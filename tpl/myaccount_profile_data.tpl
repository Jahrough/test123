<table border="0" cellpadding="0" cellspacing="0" width="640" class="myaccountbody">
 <!-- begin myaccount_profile_data.tpl -->
  <tr>
    <td colspan="2" align="center"><img alt="" border="0" with="1" height="20" src="<TMPL_VAR NAME=IMGPATH>/spacer.gif"></td>
  </tr>
  <tr>
    <td class="myaccounttitle" width="400"><TMPL_IF NAME="MYACCOUNT_COMPANY_TREE">Currently managing: <TMPL_ELSE> Company Information</TMPL_IF></td>
    <TMPL_IF NAME="SA">
    	<td class="myaccounttitle" width="240"><TMPL_UNLESS NAME="DISABLE_COMPANY_INFO_CHANGE"><a href="javascript:send_event('MYACCOUNT/SHOW_UPDATE_PROFILE');"><img width="81" height="24" border="0" name="edit_summary" src="<TMPL_VAR NAME=IMGPATH>/edit.gif"></a></TMPL_UNLESS></td>
    <TMPL_ELSE>
    	<td class="myaccounttitle" width="240"></td>
    </TMPL_IF>
  </tr>
  <tr>
    <td colspan="2" align="center"><img alt="" border="0" with="1" height="10" src="<TMPL_VAR NAME=IMGPATH>/spacer.gif"></td>
  </tr>
  <tr>
    <td class="unifont2" width="400"><b>Company Name:</b> <TMPL_VAR NAME=C_COMPANYNAME></td>
    <td class="unifont2" width="240"><b>Contact Name: </b><TMPL_VAR NAME=C_MAINNAME></td>
  </tr>
  <tr>
    <td class="unifont2" width="400"><b>Company ID:</b> <TMPL_VAR NAME=C_COMPANYID></td>
    <td class="unifont2" width="240"><b>Contact Email: </b><TMPL_VAR NAME=C_MAINEMAIL></td>
  </tr>
  <tr>
    <td colspan="2" align="center"><img alt="" border="0" with="1" height="20" src="<TMPL_VAR NAME=IMGPATH>/spacer.gif"></td>
  </tr>
  <tr>
	<td class="unifont2" colspan="2"><span style="font-weight: bold;">Physical Address:</span></td>
  </tr>
  <tr>
	<td class="unifont2" colspan="2"><TMPL_VAR NAME='C_ADDR_LINE1'><TMPL_IF NAME='C_ADDR_LINE2'><BR><TMPL_VAR NAME='C_ADDR_LINE2'></TMPL_IF></td>
  </tr>
  <tr>
	<td class="unifont2" colspan="2"><TMPL_IF NAME=C_ADDR_CITY><TMPL_VAR NAME=C_ADDR_CITY>,</TMPL_IF> <TMPL_VAR NAME=C_ADDR_STATE>&nbsp;<TMPL_VAR NAME=C_ADDR_POSTALCODE></td>
  </tr>
  <tr>
	<td class="unifont2" colspan="2"><b>Phone:</b> <TMPL_VAR NAME=C_PHONE_VOICE1></td>
  </tr>
  <TMPL_IF NAME="C_PHONE_FAX">
  <tr>
	<td class="unifont2" colspan="2"><b>Fax:</b> <TMPL_VAR NAME=C_PHONE_FAX></td>
  </tr>
  </TMPL_IF>
  <tr>
	<td colspan="2" align="center"><img alt="" border="0" with="1" height="20" src="<TMPL_VAR NAME=IMGPATH>/spacer.gif"></td>
  </tr>
  <tr>
  <td valign="top" align="left">
  <table cellpadding="0" cellspacing="0">
  <tr>
    <td class="myaccounttitle">User Information</td>
  </tr>
  <tr>
    <td align="center"><img alt="" border="0" with="1" height="10" src="<TMPL_VAR NAME=IMGPATH>/spacer.gif"></td>
  </tr>
  <tr>
    <td class="unifont2"><b>Name:</b> <TMPL_VAR NAME=U_FIRSTNAME> <TMPL_VAR NAME=U_LASTNAME></td>
  </tr>
  <tr>
    <td class="unifont2"><b>Login ID:</b> <TMPL_VAR NAME=U_LOGINID></td>
  </tr>
  <tr>
    <td class="unifont2"><b>Phone:</b> <TMPL_VAR NAME=U_PHONE_VOICE1></td>
  </tr>
  </table>
  </td>

  <td valign="top" align="left">
  <table cellpadding="0" cellspacing="0">
  <tr>
    <td class="myaccounttitle">Sales Contact</td>
  </tr>
  <tr>
    <td align="center"><img alt="" border="0" with="1" height="10" src="<TMPL_VAR NAME=IMGPATH>/spacer.gif"></td>
  </tr>
  <tr>
    <td class="unifont2"><b>Account Manager:</b> <TMPL_VAR NAME=C_SALE_FIRSTNAME> <TMPL_VAR NAME=C_SALE_LASTNAME></td>
  </tr>
  <tr>
    <td class="unifont2"><b>Phone:</b> <TMPL_VAR NAME=C_SALE_PHONE_VOICE1></td>
  </tr>
  <TMPL_IF NAME="C_SALE_EMAIL_ADDR">
  <tr>
    <td class="unifont2" colspan="2"><b>Email:</b> <a href="mailto:<TMPL_VAR NAME=C_SALE_EMAIL_ADDR>"><TMPL_VAR NAME=C_SALE_EMAIL_ADDR></a></td>
  </tr>
  </TMPL_IF>
  </table>
  </td>
  </tr>



  <tr>
    <td colspan="2" align="center"><img alt="" border="0" with="1" height="10" src="<TMPL_VAR NAME=IMGPATH>/spacer.gif"></td>
  </tr>
<!-- end myaccount_profile_data.tpl -->
</table>
