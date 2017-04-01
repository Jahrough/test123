<!-- begin myaccount_order_info.tpl -->
<table border="1" cellpadding="0" cellspacing="1" width="856" bgcolor="#d0ccd0" class="sortable" id="order_list">
    <tr height="20">
      <td class="smallfont1" nowrap align="center" valign="middle"><b>Order #</b></td>
      <td class="smallfont1" nowrap align="center" valign="middle"><b>Reference Code</b></td>
      <td class="smallfont1" nowrap align="center" valign="middle"><b>Date Submitted</b></td>
      <!--td class="smallfont1" nowrap align="center" valign="middle"><b>Date Invoiced</b></td-->
      <td class="smallfont1" nowrap align="center" valign="middle"><b>Subject</b></td>
      <td class="smallfont1" nowrap align="center" valign="middle"><b>SSN</b></td>
      <td class="smallfont1" nowrap align="center" valign="middle"><b>Price</b></td>
      <td class="smallfont1" nowrap align="center" valign="middle"><b>Status</b></td>
      <td class="smallfont1" nowrap align="center" valign="middle"><b>Tasks</b></td>
    </tr>

    <input name="VIEW_RESULTS_ORIGIN" type="hidden" value="">
    <TMPL_IF NAME="OFFLINE_ORDERS">
      <input type="hidden" name="SUBJECT_ID" value="">
      <input type="hidden" name="SEQ_NUM" value="">
      <input type="hidden" name="ITEM_CODE" value="">
      <TMPL_LOOP NAME="OFFLINE_ORDERS">
	<tr height="20" bgcolor="#ffffff">
	  <td class="smallfont1" nowrap align="center" valign="middle"><TMPL_IF NAME="OFFLINE_ORDER__ORDERID"><TMPL_VAR NAME="OFFLINE_ORDER__ORDERID"><TMPL_ELSE>&nbsp;</TMPL_IF></td>
	  <td class="smallfont1" nowrap align="center" valign="middle"><TMPL_IF NAME="OFFLINE_ORDER__REFERENCE_CODE"><TMPL_VAR NAME="OFFLINE_ORDER__REFERENCE_CODE"><TMPL_ELSE>&nbsp;</TMPL_IF></td>
	  <td class="smallfont1" nowrap align="center" valign="middle"><TMPL_IF NAME="OFFLINE_ORDER__DATE"><TMPL_VAR NAME="OFFLINE_ORDER__DATE"><TMPL_ELSE>&nbsp;</TMPL_IF></td>
	  <!--td class="smallfont1" nowrap align="center" valign="middle"><TMPL_IF NAME="OFFLINE_ORDER__DATE_INVOICED"><TMPL_VAR NAME="OFFLINE_ORDER__DATE_INVOICED"><TMPL_ELSE>&nbsp;</TMPL_IF></td-->
	  <td class="smallfont1" nowrap align="center" valign="middle"><TMPL_IF NAME="OFFLINE_ORDER__SUBJECT"><TMPL_VAR NAME="OFFLINE_ORDER__SUBJECT"><TMPL_ELSE>&nbsp;</TMPL_IF></td>
	  <td class="smallfont1" nowrap align="center" valign="middle"><TMPL_IF NAME="OFFLINE_ORDER__SSN"><TMPL_VAR NAME="OFFLINE_ORDER__SSN"><TMPL_ELSE>&nbsp;</TMPL_IF></td>
	  <td class="smallfont1" nowrap align="center" valign="middle"><TMPL_IF NAME="OFFLINE_ORDER__TOTAL_PRICE"><TMPL_VAR NAME="OFFLINE_ORDER__TOTAL_PRICE"><TMPL_ELSE>&nbsp;</TMPL_IF></td>
	  <td class="smallfont1" nowrap align="center" valign="middle"><TMPL_IF NAME="OFFLINE_ORDER__STATUS"><TMPL_VAR NAME="OFFLINE_ORDER__STATUS"><TMPL_ELSE>&nbsp;</TMPL_IF></td>
	  <td class="smallfont1" nowrap align="center" valign="middle">
	    <TMPL_UNLESS NAME="SHOW_ORDER_DETAIL"><a href="javascript:show_order_detail(<TMPL_VAR NAME='OFFLINE_ORDER__ORDERID'>)">[Order Detail]</a></TMPL_UNLESS>
	    <TMPL_IF NAME="OFFLINE_ORDER__COMPLETED"> <a href="javascript:show_completed_order('<TMPL_VAR NAME=OFFLINE_ORDER__ORDERID>', <TMPL_IF NAME=SHOW_ORDER_DETAIL>1<TMPL_ELSE>0</TMPL_IF>)">[View Results]</a><TMPL_ELSE>&nbsp;</TMPL_IF>
	  </td>
	</tr>

        <!-- order detail -->
        <TMPL_IF NAME="SHOW_ORDER_DETAIL">
          <TMPL_IF NAME="OFFLINE_ORDER__ITEMS">
            <tr bgcolor="#dfdfdf">
	      <td colspan="8" align="right">
	        <table border="0" width="100%">
	         <tr>
		   <td class="smallfont1" nowrap align="center" valign="middle"><b>Line</b></td>
		   <td class="smallfont1" nowrap align="left" valign="middle"><b>County/Federal District/State</b></td>
		   <td class="smallfont1" nowrap align="left" valign="middle"><b>Report Type</b></td>
		   <td class="smallfont1" nowrap align="center" valign="middle"><b>Price</b></td>
		   <td class="smallfont1" nowrap align="center" valign="middle"><b>Status</b></td>
	         </tr>

	        <TMPL_LOOP NAME="OFFLINE_ORDER__ITEMS">
	         <tr>
		   <td class="smallfont1" nowrap align="center" valign="middle"><TMPL_IF NAME="ORDER_ITEM__SEQ_NUM"><TMPL_VAR NAME="ORDER_ITEM__SEQ_NUM"><TMPL_ELSE>&nbsp;</TMPL_IF></td>
		   <td class="smallfont1" nowrap align="left" valign="middle"><TMPL_IF NAME="ORDER_ITEM__COUNTY"><TMPL_VAR NAME="ORDER_ITEM__COUNTY"><TMPL_IF NAME="ORDER_ITEM__STATE"> COUNTY,&nbsp;</TMPL_IF></TMPL_IF><TMPL_IF NAME="ORDER_ITEM__STATE"><TMPL_VAR NAME="ORDER_ITEM__STATE"></TMPL_IF></td>
		   <td class="smallfont1" nowrap align="left" valign="middle"><TMPL_VAR NAME="ORDER_ITEM__SERVICE"></td>
		   <td width="50" class="smallfont1" nowrap align="right" valign="middle"><TMPL_IF NAME="ORDER_ITEM__PRICE"><TMPL_VAR NAME="ORDER_ITEM__PRICE"><TMPL_ELSE>&nbsp;</TMPL_IF></td>
		    <!-- display as hyperlink if status is "complete" -->
		   <td width="100" class="smallfont1" nowrap align="center" valign="middle"><TMPL_IF NAME="ORDER_ITEM__COMPLETED"><a href="javascript:show_completed_order_item('<TMPL_VAR NAME=ORDER_ITEM__SUBJECTID>', '<TMPL_VAR NAME=ORDER_ITEM__SEQ_NUM>', 1)"><TMPL_VAR NAME="ORDER_ITEM__STATUS"></a><TMPL_ELSE><TMPL_VAR NAME="ORDER_ITEM__STATUS"></TMPL_IF></td>
	         </tr>
	        </TMPL_LOOP>
	      </table>
	    </td>
          </tr>
        <TMPL_ELSE>
          <tr bgcolor="#dfdfdf">
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
</table>
<!-- end myaccount_order_info.tpl -->
