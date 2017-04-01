<!-- BEGIN append_fields.tpl -->
<TMPL_INCLUDE NAME="batch_head.tpl">

<script>
var items = new Array(
    "<TMPL_VAR NAME='TEXT_PHONE_TYPE_EDA'>", "eda",
    "<TMPL_VAR NAME='TEXT_PHONE_TYPE_SKIPTRACE'>", "skiptrace",
    "<TMPL_VAR NAME='TEXT_PHONE_TYPE_EXPANDEDSKIPTRACE'>", "expandedskiptrace",
    "<TMPL_VAR NAME='TEXT_PHONE_TYPE_PHONESPLUS'>", "phonesplus",
    "<TMPL_VAR NAME='TEXT_PHONE_TYPE_PROGRESSIVEADDRESS'>", "progressiveaddress",
    "<TMPL_VAR NAME='TEXT_PHONE_TYPE_CORESIDENT'>", "coresident",
    "<TMPL_VAR NAME='TEXT_PHONE_TYPE_POSSIBLESPOUSE'>", "possiblespouse",
    "<TMPL_VAR NAME='TEXT_PHONE_TYPE_POSSIBLEPARENTS'>", "possibleparents",
    "<TMPL_VAR NAME='TEXT_PHONE_TYPE_CLOSESTRELATIVE'>", "closestrelative",
    "<TMPL_VAR NAME='TEXT_PHONE_TYPE_CLOSESTNEIGHBOR'>", "closestneighbor",
    "<TMPL_VAR NAME='TEXT_PHONE_TYPE_PEOPLEATWORK'>", "peopleatwork",
    "<TMPL_VAR NAME='TEXT_PHONE_TYPE_POSSIBLERELOCATION'>", "possiblerelocation"
);
</script>

<script src="<TMPL_VAR NAME='JSPATH'>/pricing.js"></script>
<script src="<TMPL_VAR NAME='JSPATH'>/overlibmws_iframe.js"></script>

<INPUT TYPE=HIDDEN NAME=EVENT VALUE="PHONEBATCH/SAVE_APPEND_FIELDS">
<input type="hidden" name="IS_BATCH_ADMIN" value="<TMPL_VAR NAME='BATCH_ADMIN'>">

<div align="center">
    <TMPL_INCLUDE NAME="append_fields_body.tpl">
    <td width="250" class="smallfont1" valign="top" align="right"><br><br><a href="javascript:send_event('<TMPL_UNLESS SHOW_BATCH_UPDATE>PHONEBATCH/DEFINE_FILE<TMPL_ELSE>BATCH/SERVICES</TMPL_UNLESS>')"><img src="<TMPL_VAR NAME=IMGPATH>/BATCH/back.gif" width="87" height="29" border="0"></a>&nbsp;&nbsp;&nbsp;<a href="javascript:send_event('PHONEBATCH/SAVE_APPEND_FIELDS')" onClick="javascript:if(!validate()){return false;}"><img src="<TMPL_VAR NAME=IMGPATH>/BATCH/next.gif" width="87" height="29" border="0"></a></td>

  </tr>
</table>
<br>
</div>

<TMPL_IF SHOW_BATCH_UPDATE>
<!-- Temporary Pricing Layer - Remove When Not Needed -->
<div align="center" id="pricenotice" style="position: absolute; top: 170px; right: 100px;">
<table border="0" cellpadding="2" cellspacing="0" bgcolor="#ed1c24">
  <tr>
    <td>
    <table border="0" cellpadding="0" cellspacing="10" width="600" bgcolor="#cccccc">
      <tr>
        <td class="unifont2" valign="top" colspan="3">
	<br><br>
	<b>Pricing Notice:</b>
	</td>
      </tr>
      <tr>
        <td class="unifont1" valign="top" width="60%">
	<br><br>
	Address(Per Hit)<br>
	Waterfall Phones Process (Per Hit)<br>
	Address and Phones (Per Hit)<br>
	Address and/or Phone Confirmation(Per Input)<br>
	</td>
	<td class="unifont1" valign="top" width="10%">
	Single<br><br>
	$0.13<br>
	$0.23<br>
	$0.25<br>
	$0.03<br>
	</td>
	<td class="unifont1" valign="top" width="30%">
	<b>Multiple**</b><br><br>
	$0.16<br>
	$0.25<br>
	$0.30<br>
	$0.04<br>
	</td>
      </tr>
      <tr>
        <td class="unifont1" valign="top" colspan="3">
	<b>**Multiple</b> = Total charge for 2 or more phones/addresses returned.
	</td>
      <tr>
      <tr>
        <td class="unifont1" valign="top" colspan="3" align="center">
	<br>
	<input name="CONTINUE_BATCH" type="button" value="Continue >>>" onclick="pricenotice.style.display = 'none';">
	<br><br><br>
	</td>
      </tr>
    </table>
    </td>
  </tr>
</table>
</div>
<script>document.BATCH.CONTINUE_BATCH.focus();</script>
<!-- End Temporary Pricing Layer -->
</TMPL_IF>
<TMPL_IF ERROR_MESG>
    <script>alert('Please select an option or enter a count before proceeding.\n\n');</script>
</TMPL_IF>

<input type=hidden name="BATCH_PRE_TOTAL" value="0.00">

<TMPL_INCLUDE NAME="batch_footer.tpl">
<!-- END append_fields.tpl -->
