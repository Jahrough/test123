<html>
<head>
<title>State Selection</title>
<link href="<TMPL_VAR NAME='CSSPATH'>/<TMPL_VAR NAME=SKIN_TYPE>/popups.css" rel="stylesheet" type="text/css">
<TMPL_IF ENABLE_V2>
<style type="text/css">
body {
        color:#333333;
        background:#FCFAF5;
        font-family:Verdana, Arial, Helvetica, sans-serif;
        line-height:110%;
}
</style>
</TMPL_IF>
<script>
function setstate(state)
{
    var odf = opener.document.forms[0];
    if(odf.CARDSTATE)  {
        odf.CARDSTATE.value = state;
        odf.CARDSTATE.focus();
    } else {
        if(!odf.STATE.disabled) {
	    var e_arr = self.location.search.split('=');
	    var ename = (e_arr[4]);
	    if(!ename) ename = 'STATE';
	    var element = eval('opener.document.forms[0].' + ename);
	    element.value = state;
	    element.focus();
        }
    }
    window.close();
}
</script>
</head>
<body topmargin="0" leftmargin="0" marginwidth="0" marginheight="0">
<br>
<table border="0" cellpadding="0" cellspacing="0" width="100%">
  <tr>
    <td class="popuptitle" align="center"><B>State Selection</B></td>
  </tr>
</table>
<br />
<table border="0" cellpadding="0" cellspacing="0" width="100%">
  <tr>
	<td class="popupstates" width="34%" valign="top">
	&nbsp;<a href="javascript:setstate('AL')">ALABAMA</a><br>
	&nbsp;<a href="javascript:setstate('AK')">ALASKA</a><br>
	&nbsp;<a href="javascript:setstate('AB')">ALBERTA</a><br>
	&nbsp;<a href="javascript:setstate('AZ')">ARIZONA</a><br>
	&nbsp;<a href="javascript:setstate('AR')">ARKANSAS</a><br>
	&nbsp;<a href="javascript:setstate('BC')">BRITISH COLUMBIA</a><br>
	&nbsp;<a href="javascript:setstate('CA')">CALIFORNIA</a><br>
	&nbsp;<a href="javascript:setstate('CO')">COLORADO</a><br>
	&nbsp;<a href="javascript:setstate('CT')">CONNECTICUT</a><br>
	&nbsp;<a href="javascript:setstate('DE')">DELAWARE</a><br>
	&nbsp;<a href="javascript:setstate('DC')">DISTRICT OF COLUMBIA</a><br>
	&nbsp;<a href="javascript:setstate('FL')">FLORIDA</a><br>
	&nbsp;<a href="javascript:setstate('GA')">GEORGIA</a><br>
	&nbsp;<a href="javascript:setstate('GU')">GUAM</a><br>
	&nbsp;<a href="javascript:setstate('HI')">HAWAII</a><br>
	&nbsp;<a href="javascript:setstate('ID')">IDAHO</a><br>
	&nbsp;<a href="javascript:setstate('IL')">ILLINOIS</a><br>
	&nbsp;<a href="javascript:setstate('IN')">INDIANA</a><br>
	&nbsp;<a href="javascript:setstate('IA')">IOWA</a><br>
	&nbsp;<a href="javascript:setstate('KS')">KANSAS</a><br>
	&nbsp;<a href="javascript:setstate('KY')">KENTUCKY</a><br>
	&nbsp;<a href="javascript:setstate('LA')">LOUISIANA</a><br>
	</td>
	<td class="popupstates" width="33%" valign="top">
	&nbsp;<a href="javascript:setstate('MB')">MANITOBA</a><br>
	&nbsp;<a href="javascript:setstate('ME')">MAINE</a><br>
	&nbsp;<a href="javascript:setstate('MD')">MARYLAND</a><br>
	&nbsp;<a href="javascript:setstate('MA')">MASSACHUSETTS</a><br>
	&nbsp;<a href="javascript:setstate('MI')">MICHIGAN</a><br>
	&nbsp;<a href="javascript:setstate('MN')">MINNESOTA</a><br>
	&nbsp;<a href="javascript:setstate('MS')">MISSISSIPPI</a><br>
	&nbsp;<a href="javascript:setstate('MO')">MISSOURI</a><br>
	&nbsp;<a href="javascript:setstate('MT')">MONTANA</a><br>
	&nbsp;<a href="javascript:setstate('NE')">NEBRASKA</a><br>
	&nbsp;<a href="javascript:setstate('NV')">NEVADA</a><br>
	&nbsp;<a href="javascript:setstate('NF')">NEWFOUNDLAND</a><br>
	&nbsp;<a href="javascript:setstate('NB')">NEW BRUNSWICK</a><br>
	&nbsp;<a href="javascript:setstate('NH')">NEW HAMPSHIRE</a><br>
	&nbsp;<a href="javascript:setstate('NJ')">NEW JERSEY</a><br>
	&nbsp;<a href="javascript:setstate('NM')">NEW MEXICO</a><br>
	&nbsp;<a href="javascript:setstate('NY')">NEW YORK</a><br>
	&nbsp;<a href="javascript:setstate('NC')">NORTH CAROLINA</a><br>
	&nbsp;<a href="javascript:setstate('ND')">NORTH DAKOTA</a><br>
	&nbsp;<a href="javascript:setstate('NT')">NORTHWEST TERRITORIES</a><br>
	&nbsp;<a href="javascript:setstate('NS')">NOVA SCOTIA</a><br>
	&nbsp;<a href="javascript:setstate('OH')">OHIO</a><br>
	</td>
	<td class="popupstates" width="33%" valign="top">
	&nbsp;<a href="javascript:setstate('OK')">OKLAHOMA</a><br>
	&nbsp;<a href="javascript:setstate('OR')">OREGON</a><br>
	&nbsp;<a href="javascript:setstate('OT')">ONTARIO</a><br>
	&nbsp;<a href="javascript:setstate('PA')">PENNSYLVANIA</a><br>
	&nbsp;<a href="javascript:setstate('PE')">PRINCE EDWARD ISLAND</a><br>
	&nbsp;<a href="javascript:setstate('PQ')">PROVINCE DU QUEBEC</a><br>
	&nbsp;<a href="javascript:setstate('PR')">PUERTO RICO</a><br>
	&nbsp;<a href="javascript:setstate('RI')">RHODE ISLAND</a><br>
	&nbsp;<a href="javascript:setstate('SC')">SOUTH CAROLINA</a><br>
	&nbsp;<a href="javascript:setstate('SD')">SOUTH DAKOTA</a><br>
	&nbsp;<a href="javascript:setstate('SK')">SASKATCHEWAN</a><br>
	&nbsp;<a href="javascript:setstate('TN')">TENNESSEE</a><br>
	&nbsp;<a href="javascript:setstate('TX')">TEXAS</a><br>
	&nbsp;<a href="javascript:setstate('UT')">UTAH</a><br>
	&nbsp;<a href="javascript:setstate('VT')">VERMONT</a><br>
	&nbsp;<a href="javascript:setstate('VI')">VIRGIN ISLANDS</a><br>
	&nbsp;<a href="javascript:setstate('VA')">VIRGINIA</a><br>
	&nbsp;<a href="javascript:setstate('WA')">WASHINGTON</a><br>
	&nbsp;<a href="javascript:setstate('WV')">WEST VIRGINIA</a><br>
	&nbsp;<a href="javascript:setstate('WI')">WISCONSIN</a><br>
	&nbsp;<a href="javascript:setstate('WY')">WYOMING</a><br>
	&nbsp;<a href="javascript:setstate('YT')">YUKON TERRITORY</a><br>
	</td>
  </tr>	  
</table>
</body>
</html>
