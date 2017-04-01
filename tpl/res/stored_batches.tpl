<!-- begin stored_batches.tpl -->
<br>
<table border="0" cellpadding="0" cellspacing="0" width="90%">
  <tr>
    <td valign="top" align="center">
    <TMPL_IF NAME="BATCHES_LOOP">
      <table border="2" cellpadding="2" cellspacing="0" class="smallfont1" bordercolor="#000000">
        <tr bgcolor="#D0CCD0">
          <th align="center" valign="top" nowrap>View Batch<br>Detail</th>
          <th align="center" valign="top" nowrap>Batch Name</th>
          <th align="center" valign="top" nowrap>Date Added</th>
          <th align="center" valign="top" nowrap>Batch Creator</th>
          <th align="center" valign="top" nowrap>Total Records<br>Submitted</th>
          <th align="center" valign="top" nowrap>Status</th>
          <TMPL_IF BATCH_TEST_ORDER_CREATOR>
          <th align="center" valign="top" nowrap>Certified</th>
          <th align="center" valign="top" nowrap>Test Company ID</th>
          </TMPL_IF>
        </tr>
        <TMPL_LOOP NAME="BATCHES_LOOP">
        <tr bgcolor="#ffffff">
          <TMPL_IF BATCH_TEST_ORDER_CREATOR>
          <TMPL_IF NAME=CERTIFIABLE>
          <input type="hidden" name="JOB_IDS" value="<TMPL_VAR NAME="job_id">">
          <input type="hidden" name="JOB_CERTIFIABLE_DATE_SET_<TMPL_VAR NAME="job_id">" value="<TMPL_VAR NAME=CERTIFIED_DATE_SET>">
          </TMPL_IF>
          </TMPL_IF>
          <td valign="bottom" align="center" nowrap><TMPL_IF NAME="SHOW_BATCH_SEARCHES"><a href="javascript:send_batch_manager_event(<TMPL_VAR NAME="job_id">);"><img src="<TMPL_VAR NAME=IMGPATH>/res/3page_icon.gif" width="24" height="26" border="0"></a><TMPL_ELSE><img src="<TMPL_VAR NAME=IMGPATH>/res/3page_icon_gray.gif" width="24" height="26" border="0"></TMPL_IF></td>
          <td align="left"><TMPL_VAR NAME="job_name">&nbsp;</td>
          <td align="center"><TMPL_VAR NAME="date_added">&nbsp;</td>
          <td align="center"><TMPL_VAR NAME="loginid">&nbsp;</td>
          <td align="center"><TMPL_VAR NAME="record_count">&nbsp;</td>
          <td align="center" nowrap><TMPL_IF NAME="SHOW_BATCH_SEARCHES">Complete<TMPL_ELSE>In Progress</TMPL_IF>&nbsp;</td>
          <TMPL_IF BATCH_TEST_ORDER_CREATOR>
          <td align="center"><TMPL_IF NAME=CERTIFIABLE><input type="checkbox" name="JOB_CERTIFIABLE_<TMPL_VAR NAME="job_id">" value="1"<TMPL_IF CERTIFIED_CHECKED> CHECKED</TMPL_IF>></TMPL_IF>&nbsp;</td>
          <td align="center"><TMPL_VAR NAME="test_companyid">&nbsp;</td>
          </TMPL_IF>
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
<br>
<table border="0" cellpadding="3" cellspacing="0" width="90%">
  <tr>
    <td valign="top" align="left"><span class="smallcontrastlabel"><b>NOTE:</b></span><span class="smalllabel">&nbsp;Batches are available for 180 days</span></td>
  </tr>
  <tr>
    <td valign="top" align="left"><span class="smallcontrastlabel"><b>NOTE:</b></span><span class="smalllabel">&nbsp;Test batches are available for 30 days</span></td>
  </tr>
</table>
<!-- end stored_batches.tpl -->

