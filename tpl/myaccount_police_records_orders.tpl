<!-- begin myaccount_police_records_orders.tpl -->
<table border="0" cellpadding="0" cellspacing="4" width="97%" bgcolor="#FFFFFF" class="sortable" id="">
  <tr>
    <td class="unifont1blue" style="color: #0066CC; font-size: 12pt; font-style: italic; font-weight: bold;" owrap="nowrap">      &nbsp;Report Results
    </td>
  </tr>
  <tr>
    <td width="20%" class="nsinputs" align="right">Order Status</td>
    <td width="10%" align="left">
      <select name="POLICE_RECORDS_ORDER_STATUS">
      <option value="all" <TMPL_IF NAME='ORDER_STATUS_ALL'> selected</TMPL_IF>>All</option>
      <option value="outstanding" <TMPL_IF NAME='ORDER_STATUS_OUTSTANDING'> selected</TMPL_IF>>Outstanding</option>
      <option value="completed" <TMPL_IF NAME='ORDER_STATUS_COMPLETED'> selected</TMPL_IF>>Completed</option>
      <option value="viewed" <TMPL_IF NAME='ORDER_STATUS_VIEWED'> selected</TMPL_IF>>Viewed</option>
      </select>
    </td>
    <td width="10%" align="right"></td>
    <td width="10%" align="right"></td>
    <td width="10%" align="right"></td>
  </tr>
  <tr>
    <td width="20%" class="nsinputs" align="right">Claim #</td>
    <td width="10%" align="left">
      <input type="text" name="CLAIM_NUMBER" value="<TMPL_VAR NAME=CLAIM_NUMBER>">
    </td>
    <td width="10%" align="right"></td>
    <td width="10%" align="right"></td>
    <td width="10%" align="right"></td>
  </tr>
  <tr>
    <td width="10%" class="nsinputs" align="right">First Name</td>
    <td width="10%" align="left">
      <input type="text" name="FIRST_NAME" value="<TMPL_VAR NAME=FIRST_NAME>">
    </td>
    <td width="10%" class="nsinputs" align="right">Last Name</td>
    <td>
      <input type="text" name="LAST_NAME" value="<TMPL_VAR NAME=LAST_NAME>">
    </td>
    <td width="10%" class="nsinputs" align="left">
      Party&nbsp;<select name="PARTY">
      <option value="1" <TMPL_IF NAME='PARTY1'> selected</TMPL_IF>>1</option>
      <option value="2" <TMPL_IF NAME='PARTY2'> selected</TMPL_IF>>2</option>
      <option value="3" <TMPL_IF NAME='PARTY3'> selected</TMPL_IF>>3</option>
      </select>
    </td>

    <input type="hidden" name="POLICE_RECORDS_ORDER_STATUS_SAVE" value="<TMPL_VAR NAME='POLICE_RECORDS_ORDER_STATUS_SAVE'>">
    <input type="hidden" name="PARTY_SAVE" value="<TMPL_VAR NAME='PARTY_SAVE'>">
    <input type="hidden" name="CLAIM_NUMBER_SAVE" value="<TMPL_VAR NAME='CLAIM_NUMBER_SAVE'>">
    <input type="hidden" name="FIRST_NAME_SAVE" value="<TMPL_VAR NAME='FIRST_NAME_SAVE'>">
    <input type="hidden" name="LAST_NAME_SAVE" value="<TMPL_VAR NAME='LAST_NAME_SAVE'>">

  </tr>
  <tr>
  </tr>
  <tr>
    <td width="10%" class="nsinputs" align="right"></td>
    <td width="10%" align="right">
       <input type=button value="Submit Request" onclick="send_event('MYACCOUNT/SHOW_ORDER_MGR_POLICE_RECORDS');">
    </td>
    <td width="10%" class="nsinputs" align="left">
       <input type="button" value="Clear Form" onClick="clearAll();<TMPL_IF REPORT_EVENT>clear_report_fields('clear');</TMPL_IF>">
    </td>
    <td></td>
    <td width="10%" class="nsinputs" align="left"> </td>
  </tr>
</table>
<hr />
<table border="1" cellpadding="0" cellspacing="1" width="756" bgcolor="#d0ccd0" class="sortable" id="order_list">
  <TMPL_IF NAME="ENABLE_SAVE_REPORT">
    <TMPL_IF NAME="POLICE_RECORDS_REPORT_DATA">
    <tr height="20">
      <th class="unifont1" style="text-align:center; vertical-align: middle;" width="7%" nowrap="nowrap">Status</th>
      <th class="unifont1" style="text-align:center; vertical-align: middle;" width="7%" nowrap="nowrap">Order #</th>
      <th class="unifont1" style="text-align:center; vertical-align: middle;" width="8%" nowrap="nowrap">Adjuster</th>
      <th class="unifont1" style="text-align:center; vertical-align: middle;" width="7%" nowrap="nowrap">Claim #</th>
      <th class="unifont1" style="text-align:center; vertical-align: middle;" width="10%" nowrap="nowrap">Report Type</th>
      <th class="unifont1" style="text-align:center; vertical-align: middle;" width="7%" nowrap="nowrap">Party 1</th>
      <th class="unifont1" style="text-align:center; vertical-align: middle;" width="10%" nowrap="nowrap">Order Detail</th>
    </tr>

      <input type="hidden" name="REPORT_ID" value="">
      <input type="hidden" name="REPORT_RELATIONSHIP_ID" value="">
      <input type="hidden" name="REPORT_DATE" value="">
      <input type="hidden" name="VIEW_ORDERID" value="">
      <TMPL_LOOP NAME="POLICE_RECORDS_REPORT_DATA">
	<tr height="20" bgcolor="#ffffff">
	  <td class="smallfont1" nowrap align="center" valign="middle"><TMPL_IF NAME="REPORT_STATUS_MESSAGE"><TMPL_VAR NAME="REPORT_STATUS_MESSAGE"><TMPL_ELSE>N/A&nbsp;</TMPL_IF></td>
	  <td class="smallfont1" nowrap align="center" valign="middle">
            <TMPL_IF NAME="REPORT_ORDER_ID">
            <TMPL_IF NAME="ORDER_LINK"><a href="javascript:police_records_order('MYACCOUNT/SHOW_POLICE_RECORDS_REPORT',<TMPL_VAR NAME=REPORT_ORDER_ID>);"></TMPL_IF>
            <TMPL_VAR NAME="REPORT_ORDER_ID">
            <TMPL_IF NAME="ORDER_LINK"></a></TMPL_IF>
            <TMPL_ELSE>N/A&nbsp;</TMPL_IF></td>
	  <td class="smallfont1" nowrap align="center" valign="middle"><TMPL_IF NAME="REPORT_LOGIN_ID"><TMPL_VAR NAME="REPORT_LOGIN_ID"><TMPL_ELSE>N/A&nbsp;</TMPL_IF></td>
	  <td class="smallfont1" nowrap align="center" valign="middle"><TMPL_IF NAME="REPORT_CLAIM_NUMBER"><TMPL_VAR NAME="REPORT_CLAIM_NUMBER"><TMPL_ELSE>N/A&nbsp;</TMPL_IF></td>
          </td>
	  <td class="smallfont1" nowrap align="center" valign="middle"><TMPL_IF NAME="REPORT_TYPE"><TMPL_VAR NAME="REPORT_TYPE"><TMPL_ELSE>N/A&nbsp;</TMPL_IF></td>
	  <td class="smallfont1" nowrap align="center" valign="middle"><TMPL_IF NAME="REPORT_PARTY_1"><TMPL_VAR NAME="REPORT_PARTY_1"><TMPL_ELSE>N/A&nbsp;</TMPL_IF></td>
	  <td class="smallfont1" nowrap align="left" valign="middle">&nbsp;<a href="javascript:police_records_order('MYACCOUNT/SHOW_POLICE_RECORDS_ORDER_DETAIL','<TMPL_VAR NAME=REPORT_ORDER_ID>');"> 
          <img alt="" src="<TMPL_VAR NAME=IMGPATH>/police_records_report_mgr_ico.gif" width="10" height="10" border="0"></a>&nbsp;<TMPL_IF NAME="REPORT_DETAIL_STATUS"><TMPL_VAR NAME="REPORT_DETAIL_STATUS"><TMPL_ELSE>Item Waiting for Response from Agency</TMPL_IF></td></tr>
      </TMPL_LOOP>
    <TMPL_ELSE>
	<tr>
	  <td class="unifont1" id="non_sortable_no_reports" align="center" colspan="8" height="50">
	    <strong>There are no saved reports.</strong>
	  </td>
	</tr>
    </TMPL_IF>
  <TMPL_ELSE>
      <tr>
	<td class="unifont1" id="non_sortable_no_report_mgr" align="center" height="50">
         <strong>Enter your search criteria and click 'Submit Request'.</strong>
	</td>
      </tr>
  </TMPL_IF>

</table>
<!-- end myaccount_police_records_orders.tpl -->
