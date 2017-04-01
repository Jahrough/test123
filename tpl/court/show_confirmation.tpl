<!-- Begin show_confirmation.tpl -->
<TMPL_INCLUDE NAME="court_header.tpl">

<div align="center">
<table border="0" cellpadding="0" cellspacing="0" width="765">
<tr>
<td width="15"><img src="<TMPL_VAR NAME=IMGPATH>/spacer.gif" border="0" width="15" height="1"></td>
<td width="750" valign="top">

<div align="left" class="courtpagetitle">ORDER CONFIRMATION:<BR></div>
<P>

<div align="left" class="smallfont1">

<TMPL_IF IDENTITY_LOOP>
<TMPL_LOOP IDENTITY_LOOP>
<TMPL_INCLUDE NAME="identity.tpl">
<P>
</TMPL_LOOP>
</TMPL_IF>

<b>To make modifications to your Court Search order, click the PREVIOUS button below.<br><br>
To place your order, click the PLACE ORDER button below.</b>
</div>

<br>
<div align="left" class="unifont1bold">
<span class="important">IMPORTANT</span>:&nbsp;&nbsp;Once an order is placed, it can not be cancelled. By clicking the PLACE ORDER button below, the charges shown will be automatically added to your bill.
</div>

<br>


<table border="0" cellpadding="0" width="750" cellspacing="0">
<tr>
<td class="unifont1" colspan="3"><b>TOTAL CHARGE FOR THIS ORDER: $<TMPL_VAR TOTAL></b></td>
</tr>
</table>
<table border="0" cellpadding="0" cellspacing="0">
<tr>
<td class="unifont1" align="center">
<br>
<input type="BUTTON" name="PREVIOUS_BUTTON" value="<< PREVIOUS" onClick="history.back();">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<input class="courtplaceorderbutton" type="button" name="SUBMIT" value="PLACE ORDER" onClick="send_event('COURT/COURT_REQUEST');this.disabled=true">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<input class="courtcancelorderbutton" name="CANCEL_ORDER" type="button" value="CANCEL ORDER" onclick="cancelnotice.style.display = 'inline';">
</td>
</tr>
</table>

<br>

<div align="left" class="smallfont1">
<b>Note:</b>&nbsp;&nbsp;As responses are returned for each search, results will be viewable by clicking the <b>Report Manager</b> tab which can be found in the <b>My Account</b> section and then clicking on the <b>Court Search Results</b> button.<br><br>
</div>
</td>
</tr>
</table>
</div>

<!-- Begin Cancellation Alert Dialogue Layer -->
<div align="center" id="cancelnotice" style="position: absolute; top: 200px; right: 220px; display: none;">
<table border="0" cellpadding="2" cellspacing="0" class="courttableborder">
  <tr>
    <td valign="top">
    <table border="0" cellpadding="5" cellspacing="0" class="courtalert" width="600">
      <tr>
        <td class="banner3" valign="top" align="center">
	<br>
	<b>CANCELLATION CONFIRMATION</b>
	<br><br>
	</td>
      </tr>
      <tr>
        <td class="unifont1" valign="top" align="center">
	If you cancel your order now, <b>your selections will be lost</b> and this window will close.
	<br><br>
	To make changes or place this order, return to the Court Wizard.
	<br><br>
	</td>
      </tr>
      <tr>
        <td class="unifont1bold" valign="top" align="center">
	<br>
	<input name="CANCEL_COURT" type="button" value="CANCEL ORDER NOW" onclick="window.close();">
	&nbsp; &nbsp; &nbsp; 
	<input name="CONTINUE_COURT" type="button" value="RETURN TO COURT WIZARD" onclick="cancelnotice.style.display = 'none';">
	<br><br>
        </td>
      </tr>
    </table>
    </td>
  </tr>
</table>
</div>
<!-- end Cancellation Alert Dialogue Layer -->


<TMPL_INCLUDE NAME="court_footer.tpl">
<!-- End show_confirmation.tpl -->
