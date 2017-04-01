<!-- begin billing_activity_fcra.tpl -->

<table border="0" cellpadding="0" cellspacing="0" width="880">
<tr>
  <td nowrap align="center" valign="middle" class="myaccountborder">
  <table width="856" cellpadding="0" cellspacing="0" border="0">
    <tr height="12">
      <td height="12" width="856" class="unifont1">&nbsp;</td>
    </tr>
  </table>
  <table width="860" cellpadding="0" cellspacing="0" border="0" class="myaccountbody">
    <tr>
      <td><div style="padding-bottom:4px;padding-top:8px"><div style="font:0/0 serif;border-bottom:1px dotted #cc0033;"></div></div></td>
    </tr>
    <tr>
      <td align="center">
      <table border="0" cellpadding="2" cellspacing="0">
        <tr>
           <td height="40"><span class="unifont1" id="fcra-data-section"><b>FCRA Results</b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></td>
	  <td height="40" width="65"></td>
	  <td height="40" class="unifont1">&nbsp;&nbsp;&nbsp;&nbsp;</td>
	  <td height="40" class="unifont1" width="36">&nbsp;&nbsp;</td>
	  <td  height="40" class="unifont1" width="230"></td>
	  <td height="40" class="unifont1">&nbsp;&nbsp;&nbsp;&nbsp;</td>
	  <td height="40"><TMPL_IF NAME=FCRA_PREV_ON><a href="javascript:send_billing_event('BILLING/ACTIVITY_FCRA_PREV')"><img alt="" width="65" height="24" border="0" name="prevadmin" src="<TMPL_VAR NAME=IMGPATH>/previous_page.gif"></a><TMPL_ELSE><img alt="" width="65" height="24" border="0" name="prevadmin" src="<TMPL_VAR NAME=IMGPATH>/previous_page_off.gif"></TMPL_IF></td>
          <td height="40"><a href="javascript:send_billing_event('BILLING/ACTIVITY_FCRA')"><img alt="" width="65" height="24" border="0" name="refreshadmin" src="<TMPL_VAR NAME=IMGPATH>/refresh.gif"></a></td>
          <!--
          <td height="40" width="65"></td>
          -->
	  <td height="40"><TMPL_IF NAME=FCRA_NEXT_ON><a href="javascript:send_billing_event('BILLING/ACTIVITY_FCRA_NEXT')"><img alt="" width="65" height="24" border="0" name="nextadmin" src="<TMPL_VAR NAME=IMGPATH>/next_page.gif"></a><TMPL_ELSE><img alt="" width="65" height="24" border="0" name="nextadmin" src="<TMPL_VAR NAME=IMGPATH>/next_page_off.gif"></TMPL_IF></td>
	</tr>
      </table>
      </td>
    </tr>
    <!--
    <tr>
    <td align="center">
<span class="unifont1">&nbsp;&nbsp;&nbsp;&nbsp;<b><a href="javascript:send_event('MYACCOUNT/SHOW_PREFERENCES')">Time Zone:</a></b> <TMPL_VAR TZNAME> (<TMPL_VAR OFFSET>)</span>
    </td>
    </tr>
    -->
  </table>
  </td>
</tr>
<tr height="12" class="myaccountborder">
  <td height="12" class="unifont1">&nbsp;</td>
</tr>

	<tr>
	  <td align="center" class="myaccountborder">
		<table border="1" cellpadding="0" cellspacing="1" width="860" bgcolor="#d0ccd0">
		  <tr height="20">
			<td class="smallfont1" nowrap align="center" valign="middle"><b>Login ID</b></td>
			<td class="smallfont1" nowrap align="center" valign="middle"><b>Activity</b></td>
			<td class="smallfont1" nowrap align="center" valign="middle"><b>Search Criteria</b></td>
			<td class="smallfont1" nowrap align="center" valign="middle"><b>Reference Code</b></td>
			<td class="smallfont1" nowrap align="center" valign="middle"><b>Date &amp; Time</b> 
			</td>

		<td class="smallfont1" nowrap align="center" valign="middle"><b>Price</b></td>
	  </tr>
	  <TMPL_LOOP NAME="SEARCH_RESULTS_FCRA">
	  <TMPL_IF NAME=SUB_SUM>
  	  <tr bgcolor="#ffffff">
	      <td class="smallfont1" nowrap valign="top" align="right" colspan="6"><b>Sub Total:&nbsp;$<TMPL_VAR NAME="SUB_SUM">&nbsp;</td>
	  </tr>
  	  <tr bgcolor="#ffffff">
	      <td class="smallfont1" nowrap valign="top" align="right" colspan="6">&nbsp;</td>
	  </tr>
	  <TMPL_ELSE>
  	  <tr bgcolor="#ffffff">
	    <TMPL_IF NAME="BILLING_CODE">
	      <td class="smallfont1" nowrap valign="top">&nbsp;<TMPL_VAR NAME="BILLING_CODE"></td>
	    <TMPL_ELSE>
	      <td class="smallfont1" nowrap valign="top">&nbsp;</td> 
	    </TMPL_IF>
	    <TMPL_IF NAME="TRANSACTION_TYPE">
	      <td class="smallfont1" nowrap valign="top">&nbsp;<TMPL_VAR NAME="TRANSACTION_TYPE"></td>
	    <TMPL_ELSE>
	      <td class="smallfont1" nowrap valign="top">&nbsp;</td> 
	    </TMPL_IF>
	   <td class="smallfont1" valign="top">&nbsp;
	<TMPL_VAR NAME="FNAME">
	<TMPL_VAR NAME="MNAME">
	<TMPL_VAR NAME="LNAME">
	<TMPL_VAR NAME="FULL_NAME">
	<TMPL_VAR NAME="ADDRESS">
	<TMPL_VAR NAME="CITY">
	<TMPL_VAR NAME="STATE">
	<TMPL_VAR NAME="ZIP">
	<TMPL_VAR NAME="ZIP4">
	<TMPL_VAR NAME="PHONE">
	<TMPL_VAR NAME="SSN">
	<TMPL_VAR NAME="UNIQUE_ID">
	<TMPL_VAR NAME="dob">
	<TMPL_VAR NAME="business_name">
	</td>
	<TMPL_IF NAME="REFERENCE_CODE">
		<td class="smallfont1" nowrap valign="top">&nbsp;<TMPL_VAR NAME="REFERENCE_CODE"></td>
	<TMPL_ELSE>
		<td class="smallfont1" nowrap valign="top">&nbsp;</td>
	</TMPL_IF>
	<TMPL_IF NAME="DATEADDED">
		<td class="smallfont1" <TMPL_UNLESS IGNORE_NO_WRAP>nowrap </TMPL_UNLESS>valign="top">&nbsp;<TMPL_VAR NAME="DATEADDED"></TD>
	<TMPL_ELSE>
		<td class="smallfont1" nowrap valign="top">&nbsp;</td>
	</TMPL_IF>
	<TMPL_IF NAME="PRICE">
		<td class="smallfont1" nowrap valign="top">&nbsp;$<TMPL_VAR NAME="PRICE"></TD>
	<TMPL_ELSE>
		<td class="smallfont1" nowrap valign="top">&nbsp;</td>
	</TMPL_IF>
	</tr>
	</TMPL_IF> <!-- end if sub-sum -->
	</TMPL_LOOP>
<!--	<tr>
	<td class="smallfont1" colspan=5 align=right><b>Total:</b>&nbsp;&nbsp;</td>
	<td class="smallfont1" nowrap valign="top">&nbsp;<b>$<TMPL_VAR NAME=TOTAL></b></td>
	</tr> -->
	</table>
	</td>
</tr>	
</table>

<TMPL_IF FCRA_REQUEST>
<script>document.getElementById('fcra-data-section').scrollIntoView();</script>
</TMPL_IF>
<!-- end billing_activity_fcra.tpl -->
