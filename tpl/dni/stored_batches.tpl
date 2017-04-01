<!-- begin stored_batches.tpl -->
<br>
<table border="0" cellpadding="0" cellspacing="0" width="90%">
  <tr>
    <td valign="top" align="center">
    <TMPL_IF NAME="BATCHES_LOOP">
      <table border="2" cellpadding="2" cellspacing="0" class="smallfont1" bordercolor="#000000">
        <tr>
          <th align="center" valign="top" class="title_text" nowrap>View Batch<br>Detail</th>
          <th align="center" valign="top" class="title_text" nowrap>Batch Name</th>
          <th align="center" valign="top" class="title_text" nowrap>Date Added</th>
          <th align="center" valign="top" class="title_text" nowrap>Batch Creator</th>
          <th align="center" valign="top" class="title_text" nowrap>Total Records<br>Submitted</th>
          <th align="center" valign="top" class="title_text" nowrap>Status</th>
        </tr>
        <TMPL_LOOP NAME="BATCHES_LOOP">
        <tr bgcolor="white">
          <td valign="bottom" align="center" nowrap><a href="javascript:send_batch_manager_event(<TMPL_VAR NAME="job_id">);"><img src="<TMPL_VAR NAME=IMGPATH>/../ln_images/res/3page_icon.gif" width="24" height="26" border="0"></a></td>
          <td align="left"><TMPL_VAR NAME="job_name">&nbsp;</td>
          <td align="center"><TMPL_VAR NAME="date_added">&nbsp;</td>
          <td align="center"><TMPL_VAR NAME="loginid">&nbsp;</td>
          <td align="center"><TMPL_VAR NAME="record_count">&nbsp;</td>
          <td align="center" nowrap>In Progress&nbsp;</td>
        </tr>
        </TMPL_LOOP>
      </table>
    <TMPL_ELSE>
      <table border="0" class="largefont1bold">
        <tr>
          <th align="center" valign="top" nowrap>No Batches for Selected Date Range</th>
        </tr>
      </table>
    </TMPL_IF>
    </td>
  </tr>
</table>
<!-- end stored_batches.tpl -->

