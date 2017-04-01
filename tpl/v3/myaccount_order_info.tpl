<input type="hidden" name="SUBJECT_ID" value="">
<input type="hidden" name="SEQ_NUM" value="">
<input type="hidden" name="ITEM_CODE" value="">
<table class="display dataTable no-footer">
	<thead class="non_sortable_view_download">
		<tr bgcolor="#dfdfdf">
			<td><input name="VIEW_RESULTS_ORIGIN" type="hidden" value="">Order #</td>
			<td>Reference Code</td>
			<td>Date Submitted</td>
			<td>Subject</td>
			<td>SSN</td>
			<td>Price</td>
			<td>Status</td>
			<td>Tasks</td>
		</tr>
	</thead>
	<tbody>
		<TMPL_IF NAME="OFFLINE_ORDERS">
		<TMPL_LOOP NAME="OFFLINE_ORDERS">
		<tr height="20" bgcolor="#ffffff">
		<td nowrap><TMPL_IF NAME="OFFLINE_ORDER__ORDERID"><TMPL_VAR NAME="OFFLINE_ORDER__ORDERID"><TMPL_ELSE>&nbsp;</TMPL_IF></td>
		<td nowrap><TMPL_IF NAME="OFFLINE_ORDER__REFERENCE_CODE"><TMPL_VAR NAME="OFFLINE_ORDER__REFERENCE_CODE"><TMPL_ELSE>&nbsp;</TMPL_IF></td>
		<td nowrap><TMPL_IF NAME="OFFLINE_ORDER__DATE"><TMPL_VAR NAME="OFFLINE_ORDER__DATE"><TMPL_ELSE>&nbsp;</TMPL_IF></td>
		<td nowrap><TMPL_IF NAME="OFFLINE_ORDER__SUBJECT"><TMPL_VAR NAME="OFFLINE_ORDER__SUBJECT"><TMPL_ELSE>&nbsp;</TMPL_IF></td>
		<td nowrap><TMPL_IF NAME="OFFLINE_ORDER__SSN"><TMPL_VAR NAME="OFFLINE_ORDER__SSN"><TMPL_ELSE>&nbsp;</TMPL_IF></td>
		<td nowrap><TMPL_IF NAME="OFFLINE_ORDER__TOTAL_PRICE"><TMPL_VAR NAME="OFFLINE_ORDER__TOTAL_PRICE"><TMPL_ELSE>&nbsp;</TMPL_IF></td>
		<td nowrap><TMPL_IF NAME="OFFLINE_ORDER__STATUS"><TMPL_VAR NAME="OFFLINE_ORDER__STATUS"><TMPL_ELSE>&nbsp;</TMPL_IF></td>
		<td nowrap width="20%;">
		<TMPL_UNLESS NAME="SHOW_ORDER_DETAIL"><a class="myaccLnk bold" href="javascript:show_order_detail(<TMPL_VAR NAME='OFFLINE_ORDER__ORDERID'>)"><font size="2">[Order Detail]</font></a></TMPL_UNLESS>
		<TMPL_IF NAME="OFFLINE_ORDER__COMPLETED"> <a class="myaccLnk bold" href="javascript:show_completed_order('<TMPL_VAR NAME=OFFLINE_ORDER__ORDERID>', <TMPL_IF NAME=SHOW_ORDER_DETAIL>1<TMPL_ELSE>0</TMPL_IF>)"><font size="2">[View Results]<font></a><TMPL_ELSE>&nbsp;</TMPL_IF>
		</td>
		</tr>
		<!-- order detail -->
		<TMPL_IF NAME="SHOW_ORDER_DETAIL">
		<TMPL_IF NAME="OFFLINE_ORDER__ITEMS">
		<tr bgcolor="#dfdfdf">
		<td nowrap colspan="8" align="right">
		<table class="center" width="100%">
		<tr>
		<td nowrap><b>Line</b></td>
		<td nowrap><b>County/Federal District/State</b></td>
		<td nowrap><b>Report Type</b></td>
		<td nowrap><b>Price</b></td>
		<td nowrap><b>Status</b></td>
		</tr>

		<TMPL_LOOP NAME="OFFLINE_ORDER__ITEMS">
		<tr>
		<td nowrap><TMPL_IF NAME="ORDER_ITEM__SEQ_NUM"><TMPL_VAR NAME="ORDER_ITEM__SEQ_NUM"><TMPL_ELSE>&nbsp;</TMPL_IF></td>
		<td nowrap><TMPL_IF NAME="ORDER_ITEM__COUNTY"><TMPL_VAR NAME="ORDER_ITEM__COUNTY"><TMPL_IF NAME="ORDER_ITEM__STATE"> COUNTY,&nbsp;</TMPL_IF></TMPL_IF><TMPL_IF NAME="ORDER_ITEM__STATE"><TMPL_VAR NAME="ORDER_ITEM__STATE"></TMPL_IF></td>
		<td nowrap><TMPL_VAR NAME="ORDER_ITEM__SERVICE"></td>
		<td nowrap><TMPL_IF NAME="ORDER_ITEM__PRICE"><TMPL_VAR NAME="ORDER_ITEM__PRICE"><TMPL_ELSE>&nbsp;</TMPL_IF></td>
		<!-- display as hyperlink if status is "complete" -->
		<td width="100"><TMPL_IF NAME="ORDER_ITEM__COMPLETED"><a href="javascript:show_completed_order_item('<TMPL_VAR NAME=ORDER_ITEM__SUBJECTID>', '<TMPL_VAR NAME=ORDER_ITEM__SEQ_NUM>', 1)"><TMPL_VAR NAME="ORDER_ITEM__STATUS"></a><TMPL_ELSE><TMPL_VAR NAME="ORDER_ITEM__STATUS"></TMPL_IF></td>
		</tr>
		</TMPL_LOOP>
		</table>
		</td>
		</tr>
		<TMPL_ELSE>
		<tr>
		<td align="center" colspan="5">
		<em>Order detail not available.</em>
		</td>
		</tr>
		</TMPL_IF>
		</TMPL_IF>
		</TMPL_LOOP>
		<TMPL_ELSE>
		<tr>
		<td align="center" colspan="8">
		<strong>There are no pending court searches.</strong>
		</td>
		</tr>
		</TMPL_IF>
	</tbody>
</table>
<!-- end v3/myaccount_order_info.tpl -->