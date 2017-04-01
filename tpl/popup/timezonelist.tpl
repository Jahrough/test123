<html>
<head>
<title>Time Zone Selection</title>
<script>
function settz(timezone)
{
    if(opener.document.forms[0].tz) {
	opener.document.forms[0].tz.value = timezone;
	if(typeof(opener.refresh_page) != 'undefined') opener.refresh_page();
    } 	
    window.close();
}
</script>

<link href="<TMPL_VAR NAME='CSSPATH'>/<TMPL_VAR NAME=SKIN_TYPE>/popups.css" rel="stylesheet" type="text/css">
</head>
<body topmargin="0" leftmargin="0" marginwidth="0" marginheight="0" bgcolor="#e6e7de">
<br>
<table border="0" cellpadding="0" cellspacing="0" width="100%">
  <tr>
    <td class="popuptitle" align="center"><B>Time Zone Selection</B></td>
  </tr>
</table>
<br>
<table border="0" cellpadding="0" cellspacing="0" width="100%">
  <tr>
	<td class="popupstates" width="50%" valign="top">
	&nbsp;<a class="tz" href="javascript:settz('GMT (0.0)')">Greenwich Mean (0)</a><BR>
	&nbsp;<a class="tz" href="javascript:settz('UT (0.0)')">Universal (Coordinated) (0)</a><BR>
	&nbsp;<a class="tz" href="javascript:settz('WET (0.0)')">Western European (0)</a><BR>
	&nbsp;<a class="tz" href="javascript:settz('WAT (-1.0)')">West Africa (-1)</a><BR>
	&nbsp;<a class="tz" href="javascript:settz('AT (-2.0)')">Azores (-2)</a><BR>
	&nbsp;<a class="tz" href="javascript:settz('ADT (-3.0)')">Atlantic Daylight (-3)</a><BR>
	&nbsp;<a class="tz" href="javascript:settz('AST (-4.0)')">Atlantic Standard (-4)</a><BR>
	&nbsp;<a class="tz" href="javascript:settz('EDT (-4.0)')">Eastern Daylight (-4)</a><BR>
	&nbsp;<a class="tz" href="javascript:settz('EST (-5.0)')">Eastern Standard (-5)</a><BR>
	&nbsp;<a class="tz" href="javascript:settz('CDT (-5.0)')">Central Daylight (-5)</a><BR>
	&nbsp;<a class="tz" href="javascript:settz('CST (-6.0)')">Central Standard (-6)</a><BR>
	&nbsp;<a class="tz" href="javascript:settz('MDT (-6.0)')">Mountain Daylight (-6)</a><BR>
	&nbsp;<a class="tz" href="javascript:settz('MST (-7.0)')">Mountain Standard (-7)</a><BR>
	&nbsp;<a class="tz" href="javascript:settz('PDT (-7.0)')">Pacific Daylight (-7)</a><BR>
	&nbsp;<a class="tz" href="javascript:settz('PST (-8.0)')">Pacific Standard (-8)</a><BR>
	&nbsp;<a class="tz" href="javascript:settz('AKDT (-8.0)')">Alaska Daylight (-8)</a><BR>
	&nbsp;<a class="tz" href="javascript:settz('YDT (-8.0)')">Yukon Daylight (-8)</a><BR>
	&nbsp;<a class="tz" href="javascript:settz('AKST (-9.0)')">Alaska Standard (-9)</a><BR>
	&nbsp;<a class="tz" href="javascript:settz('AHDT (-9.0)')">Alaska-Hawaii Daylight (-9)</a><BR>
  &nbsp;<a class="tz" href="javascript:settz('YST (-9.0)')">Yukon Standard (-9)</a><BR>
	&nbsp;<a class="tz" href="javascript:settz('HST (-10.0)')">Hawaiian Standard (-10)</a><BR>
	&nbsp;<a class="tz" href="javascript:settz('CAT (-10.0)')">Central Alaska (-10)</a><BR>
	&nbsp;<a class="tz" href="javascript:settz('AHST (-10.0)')">Alaska-Hawaii Standard (-10)</a><BR>
	&nbsp;<a class="tz" href="javascript:settz('NT (-11.0)')">Nome (-11)</a><BR>
	&nbsp;<a class="tz" href="javascript:settz('IDLW (-12.0)')">International Date Line West (-12)</a><BR>
	&nbsp;<a class="tz" href="javascript:settz('BST (+1.0)')">British Summer (+1)</a><BR>
	&nbsp;<a class="tz" href="javascript:settz('CET (+1.0)')">Central European (+1)</a><BR>


	</td>
	<td class="popupstates" width="50%" valign="top">
	&nbsp;<a class="tz" href="javascript:settz('MET (+1.0)')">Middle European (+1)</a><BR>
	&nbsp;<a class="tz" href="javascript:settz('MEWT (+1.0)')">Middle European Winter (+1)</a><BR>
	&nbsp;<a class="tz" href="javascript:settz('SWT (+1.0)')">Swedish Winter (+1)</a><BR>
	&nbsp;<a class="tz" href="javascript:settz('FWT (+1.0)')">French Winter (+1)</a><BR>
	&nbsp;<a class="tz" href="javascript:settz('EET (+2.0)')">Eastern Europe, USSR Zone 1 (+2)</a><BR>
	&nbsp;<a class="tz" href="javascript:settz('MEST (+2.0)')">Middle European Summer (+2)</a><BR>
	&nbsp;<a class="tz" href="javascript:settz('SST (+2.0)')">Swedish Summer (+2)</a><BR>
	&nbsp;<a class="tz" href="javascript:settz('FST (+2.0)')">French Summer (+2)</a><BR>
	&nbsp;<a class="tz" href="javascript:settz('BT (+3.0)')">Baghdad, USSR Zone 2 (+3)</a><BR>
	&nbsp;<a class="tz" href="javascript:settz('ZP4 (+4.0)')">USSR Zone 3 (+4)</a><BR>
	&nbsp;<a class="tz" href="javascript:settz('ZP5 (+5.0)')">USSR Zone 4 (+5)</a><BR>
	&nbsp;<a class="tz" href="javascript:settz('IST (+5.5)')">Indian Standard (+5.5)</a><BR>
	&nbsp;<a class="tz" href="javascript:settz('ZP6 (+6.0)')">USSR Zone 5 (+6)</a><BR>
	&nbsp;<a class="tz" href="javascript:settz('WAST (+7.0)')">West Australian Standard (+7)</a><BR>
	&nbsp;<a class="tz" href="javascript:settz('CCT (+8.0)')">China Coast, USSR Zone 7 (+8)</a><BR>
	&nbsp;<a class="tz" href="javascript:settz('WADT (+8.0)')">West Australian Daylight (+8)</a><BR>
	&nbsp;<a class="tz" href="javascript:settz('JST (+9.0)')">Japan Standard, USSR Zone 8 (+9)</a><BR>
	&nbsp;<a class="tz" href="javascript:settz('EAST (+10.0)')">Eastern Australian Standard (+10)</a><BR>
	&nbsp;<a class="tz" href="javascript:settz('GST (+10.0)')">Guam Standard, USSR Zone 9 (+10)</a><BR>
	&nbsp;<a class="tz" href="javascript:settz('EADT (+11.0)')">Eastern Australian Daylight (+11)</a><BR>
	&nbsp;<a class="tz" href="javascript:settz('NZT (+12.0)')">New Zealand (+12)</a><BR>
	&nbsp;<a class="tz" href="javascript:settz('NZST (+12.0)')">New Zealand Standard (+12)</a><BR>
	&nbsp;<a class="tz" href="javascript:settz('IDLE (+12.0)')">International Date Line East (+12)</a><BR>
	&nbsp;<a class="tz" href="javascript:settz('NZDT (+13.0)')">New Zealand Daylight (+13)</a><BR>
	</td>
  </tr>	  
</table>
</body>
</html>
