<!-- begin:  $RCSfile: subscription_detail.tpl,v $ -->

<table border="0" cellpadding="0" cellspacing="0" width="856" class="myaccountbody">
<thead style="display: none">
  <tr>
    <th aria-label="Info">&nbsp;</th>
  </tr>
</thead>
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
	<TMPL_IF NAME="READ_NOTICES">
        <a class="btn darkgrey-btn" href="javascript:view_alert_detail('<TMPL_VAR NAME="SUBSCRIPTION_ID">')">
           View Unread Notices
        </a>
    <TMPL_ELSE>
        <a class="btn darkgrey-btn" href="javascript:view_alert_detail('<TMPL_VAR NAME="SUBSCRIPTION_ID">', 1)">
           View Unread Notices
        </a>
    </TMPL_IF>
	<a class="btn darkgrey-btn" href="javascript:delete_alerts('<TMPL_VAR NAME="SUBSCRIPTION_ID">')">
       Delete Alert
    </a>
	<TMPL_UNLESS NAME="READ_NOTICES">
        <TMPL_IF NAME="SUBSCRIPTION_OWNER">
            <a class="btn darkgrey-btn" href="javascript:edit_alert('<TMPL_VAR NAME="SUBSCRIPTION_ID">')">
               Edit Alert
            </a>
        </TMPL_IF>
	</TMPL_UNLESS>
	<br />
	<br />
    </td>
    </tr>
</table>
<!-- end:  $RCSfile: subscription_detail.tpl,v $ -->
