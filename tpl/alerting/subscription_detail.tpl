<!-- begin:  $RCSfile: subscription_detail.tpl,v $ -->

<table border="0" cellpadding="0" cellspacing="0" width="856" class="myaccountbody">
<TMPL_IF NAME="INFO_MSG">
    <tr>
    <td align="center">
	<div class="infonote">
	    <b><TMPL_VAR NAME="INFO_MSG"></b>
	</div>
    <tr>
    </td>
    </tr>
</TMPL_IF>
    <td align="center">
	<TMPL_VAR NAME="SUBSCRIPTION">
	<br />
	<TMPL_IF NAME="READ_NOTICES"><a href="javascript:view_alert_detail('<TMPL_VAR NAME="SUBSCRIPTION_ID">')"><img src="<TMPL_VAR NAME=IMGPATH>/view_unread_notices.gif" border="0"></a>&nbsp;<TMPL_ELSE><a href="javascript:view_alert_detail('<TMPL_VAR NAME="SUBSCRIPTION_ID">', 1)"><img src="<TMPL_VAR NAME=IMGPATH>/view_read_notices.gif" border="0" width="126" height="24"></a>&nbsp;</TMPL_IF>
	<a href="javascript:delete_alerts('<TMPL_VAR NAME="SUBSCRIPTION_ID">')"><img border="0" src="<TMPL_VAR NAME=IMGPATH>/delete_alert.gif" width="81" height="24"></a>&nbsp;
	<TMPL_UNLESS NAME="READ_NOTICES">
	<TMPL_IF NAME="SUBSCRIPTION_OWNER">
	<a href="javascript:edit_alert('<TMPL_VAR NAME="SUBSCRIPTION_ID">')"><img border="0" src="<TMPL_VAR NAME=IMGPATH>/edit_alert.gif" width="81" height="24"></a>
	</TMPL_IF>
	</TMPL_UNLESS>
	<br />
	<br />
    </td>
    </tr>
</table>
<!-- end:  $RCSfile: subscription_detail.tpl,v $ -->
