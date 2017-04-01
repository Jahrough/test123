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
    <td class="popuptitle" align="center"><B>Province Selection</B></td>
  </tr>
</table>
<br>
<table border="0" cellpadding="0" cellspacing="0" width="100%">
  <tr>
	<td class="popupstates" width="10%" valign="top"></td>
	<td class="popupstates" width="34%" valign="top">
	&nbsp;<a href="javascript:setstate('AB')">Alberta</a><br>
	&nbsp;<a href="javascript:setstate('BC')">British Columbia</a><br>
	&nbsp;<a href="javascript:setstate('MB')">Manitoba</a><br>
	&nbsp;<a href="javascript:setstate('NB')">New Brunswick</a><br>
	&nbsp;<a href="javascript:setstate('NL')">Newfoundland and Labrador</a><br>
	&nbsp;<a href="javascript:setstate('NT')">Northwest Territories</a><br>
	&nbsp;<a href="javascript:setstate('NS')">Nova Scotia</a><br>
	</td>
	<td class="popupstates" width="34%" valign="top">
	&nbsp;<a href="javascript:setstate('NU')">Nunavut</a><br>
	&nbsp;<a href="javascript:setstate('ON')">Ontario</a><br>
	&nbsp;<a href="javascript:setstate('PE')">Prince Edward Island</a><br>
	&nbsp;<a href="javascript:setstate('QC')">Quebec</a><br>
	&nbsp;<a href="javascript:setstate('SK')">Saskatchewan</a><br>
	&nbsp;<a href="javascript:setstate('YT')">Yukon</a><br>
	</td>
  </tr>	  
</table>
</body>
</html>
