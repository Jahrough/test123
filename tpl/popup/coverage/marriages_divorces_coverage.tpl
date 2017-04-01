<html>
<head>
<title>Marriages / Divorces</title>
<link href="<TMPL_VAR NAME='CSSPATH'>/<TMPL_VAR NAME=SKIN_TYPE>/coverage.css" rel="stylesheet" type="text/css">
<script src="<TMPL_VAR NAME='JSPATH'>/common.js"></script>
<script src="<TMPL_VAR NAME='JSPATH'>/overlibmws.js"></script>
<script>
function showlib(date,state) {
    var layerfgcolor = get_layer_colors('fgcolor');
    var layerbgcolor = get_layer_colors('bgcolor');
    var menu = '<span class=coveragetext><br><br><b>Coverage and Dates:</b><br><br>'+date+'</span>';
    overlib(menu, CAPTIONSIZE, 2, BORDER, 3, WIDTH, 250, HEIGHT, 200, STICKY, CAPTION, '<center>'+state+'</center>', CLOSECLICK, CLOSETEXT, '<img border=0 width=16 height=16 alt=\'Close\' title=\'Close\' src=\'<TMPL_VAR NAME=IMGPATH>/closex.gif\'>', STATUS, state, FGCOLOR, layerfgcolor, BGCOLOR, layerbgcolor, CGCOLOR, layerbgcolor, MIDX, 0, MIDY, 0);
}
</script>
</head>
<body onLoad="window.focus();" topmargin="0" leftmargin="0" marginwidth="0" marginheight="0">
<div id="overDiv" style="position:absolute; visibility:hidden; z-index:1000;"></div>
<form name="CRIM">
<table border="0" cellpadding="5" cellspacing="0" width="100%">
  <tr>
    <td align="center" class="coveragetitle"><b>Marriages / Divorces</b></td>
    <td align="right" width="10%" valign="top"><TMPL_INCLUDE NAME="print_button.tpl"></td>
  </tr>
</table>
<img src="<TMPL_VAR NAME=IMGPATH>/spacer.gif" height="5" width="1" border="0"><br>
<table border="0" cellpadding="10" cellspacing="0" width="100%">
  <tr>
    <td valign="top" class="coveragetext" colspan="2"><b>CLICK A COVERED STATE BELOW TO VIEW DESCRIPTION AND DATES:</b></td>
    <td valign="top" class="coveragetext" colspan="2"><b>CLICK A COVERED COUNTY BELOW TO VIEW DESCRIPTION AND DATES:</b></td>
  </tr>
    <td class="coveragetext" nowrap valign="top">
    <a href="javascript:showlib('Divorces: 1983 - 2004','ALASKA');">ALASKA</a><br>
    <!--<a href="javascript:showlib('Marriages: 1993 - 2004','ARIZONA');">ARIZONA</a><br>-->
    <a href="javascript:showlib('Marriages: 1960 - 1985','CALIFORNIA');">CALIFORNIA</a><br>
    <a href="javascript:showlib('Marriages: 1975 - 2002<br>Divorces: 2001 - 2002','COLORADO');">COLORADO</a><br>
    <a href="javascript:showlib('Marriages: 1959 - 2001<br>Divorces: 1960 - 1997','CONNECTICUT');">CONNECTICUT</a><br>
    <a href="javascript:showlib('Marriages: Beginning 1970<br>Divorces: Beginning 1970','FLORIDA');">FLORIDA</a><br>
    <a href="javascript:showlib('Marriages: 1964 - 1999<br>Divorces: 1963 - 1999','GEORGIA');">GEORGIA</a><br>
    <a href="javascript:showlib('Marriages: 1969 - 2006<br>Divorces: 1973 - 2006','KENTUCKY');">KENTUCKY</a><br>
    <a href="javascript:showlib('Marriages: 1892 - 1996','MAINE');">MAINE</a><br>
    </td>
    <td class="coveragetext" nowrap valign="top">
    <a href="javascript:showlib('Marriages: 1919 - 2005<br>Divorces: 1968 - 2005','NEVADA');">NEVADA</a><br>
    <a href="javascript:showlib('Marriages: Beginning 1998<br>Divorces: Beginning 1998','NORTH CAROLINA');">NORTH CAROLINA</a><br>
    <a href="javascript:showlib('Marriages: 1986 - 2015<br>Divorces: 1986 - 2015','OHIO');">OHIO</a><br>
    <a href="javascript:showlib('Divorces: Beginning 1920','OKLAHOMA');">OKLAHOMA</a><br>
    <a href="javascript:showlib('Divorces: 1970 - 2005','RHODE ISLAND');">RHODE ISLAND</a><br>
    <a href="javascript:showlib('Marriages: Beginning 1957<br>Divorces: Beginning 1968','TEXAS');">TEXAS</a><br>
    <a href="javascript:showlib('Divorces: Beginning 2004','UTAH');">UTAH</a><br>
    <a href="javascript:showlib('Divorces: Beginning 2004','VIRGINIA');">VIRGINIA</a><br>
    </td>
    <td class="coveragetext" nowrap valign="top">
    <a href="javascript:showlib('Divorces: Beginning 2005','MARICOPA COUNTY');">MARICOPA COUNTY , AZ</a><br>
    <a href="javascript:showlib('Divorces: 1976 - 2001','FRESNO COUNTY');">FRESNO COUNTY, CA</a><br>
    <a href="javascript:showlib('Divorces: 1979 - 2007','KERN COUNTY');">KERN COUNTY, CA</a><br>
    <a href="javascript:showlib('Divorces: 1993 - 2007','LOS ANGELES COUNTY');">LOS ANGELES COUNTY, CA</a><br>
    <a href="javascript:showlib('Marriages: 1976 - 1976<br>Divorces: Beginning 1977','RIVERSIDE COUNTY');">RIVERSIDE COUNTY, CA</a><br>
    <a href="javascript:showlib('Divorces: 1974 - 1999','SAN DIEGO COUNTY');">SAN DIEGO COUNTY, CA</a><br>
    <a href="javascript:showlib('Divorces: 1968 - 2007','SANTA BARBARA COUNTY');">SANTA BARBARA COUNTY, CA</a><br>
    <a href="javascript:showlib('Divorces: Beginning 1995','STANISLAUS COUNTY');">STANISLAUS COUNTY, CA</a><br>
    </td>
    <td class="coveragetext" nowrap valign="top">
    <a href="javascript:showlib('Divorces: Beginning 2000','HALL COUNTY');">HALL COUNTY, GA</a><br>
    <a href="javascript:showlib('Marriages: 2005 - 2005','GRAND TRAVERSE COUNTY');">GRAND TRAVERSE COUNTY, MI</a><br>
    <a href="javascript:showlib('Marriages: Beginning 2005','INGHAM COUNTY');">INGHAM COUNTY, MI</a><br>
    <a href="javascript:showlib('Divorces: 01/1980 - 12/1980','BUCKS COUNTY');">BUCKS COUNTY, PA</a><br>
    <a href="javascript:showlib('Divorces: Beginning 2005','DALLAS COUNTY');">DALLAS COUNTY, TX</a><br>
    <a href="javascript:showlib('Divorces: Beginning 1987','HARRIS COUNTY');">HARRIS COUNTY, TX</a><br>
    <a href="javascript:showlib('Divorces: Beginning 1975','HARRISON COUNTY');">HARRISON COUNTY, TX</a><br>
    </td>
  </tr>
</table>
</form>
</body>
</html>

