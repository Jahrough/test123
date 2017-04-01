<!-- i2/start.tpl -->
<html>
<head>
<title>LexisNexis(TM) SmartLinx(TM) Visualization Report</title>
<script type="text/javascript" language="JavaScript" src="<TMPL_VAR NAME='JSPATH'>/i2/share.js"></script>
<script type="text/javascript" language="JavaScript" src="<TMPL_VAR NAME='JSPATH'>/i2/external.js"></script>
<script type="text/javascript" language="JavaScript">
<!--

var browser=navigator.appName;
var version=navigator.appVersion;

if(browser.indexOf("Microsoft")>=0){
    browser="MSIE";
    version=parseFloat(version.substr(version.indexOf("MSIE")+5,4));
    document.write("<link rel='stylesheet' href='<TMPL_VAR CSSPATH>/i2/IE.css' type='text/css'>");
    if(document.all&&!document.getElementById)
	document.onmousedown=IE;
}else{
    if(browser.indexOf("Netscape")>=0){
	browser="NS";
	version=parseFloat(version);
	if(version>=5){
	    document.write("<link rel='stylesheet' href='<TMPL_VAR CSSPATH>/i2/NS6.css' type='text/css'>");
	}else{
	    document.write("<link rel='stylesheet' href='<TMPL_VAR CSSPATH>/i2/NS4.css' type='text/css'>");
	    //window.setResizable(false);
	}
	document.captureEvents(Event.MOUSEDOWN);
	document.onmousedown=NS;
	document.addEventListener("keypress",noF5,true);
    }else{
	browser="N/A";
	version=0;
    }
}

var SelEnds,SelLinks;
function PollEvent(){
    var sEvent=String(document.VLVChart.getEvent());
    var iEventID=Number(sEvent.substring(0,sEvent.search(/:/)));
    var sParam=String(sEvent.substring(sEvent.search(/:/)+1,sEvent.length));
    if(iEventID>0){
	switch(iEventID){
	    case 6://Menu Command
		switch(sParam){
		    case "101"://show
			SeisintShowMenuCommand(SelEnds,SelLinks);
		    break;
		    case "102"://hide
			HideMenuCommand(SelEnds,SelLinks);
		    break;
		    case "103"://unhide all
			UnhideAllMenuCommand();
		    break;
		}
		break;
	    case 7://drag out
		DragOutEvent(sParam);
		break;
	    case 8://error
		ErrorEvent(sParam);
		break;
	    case 13://layout completed
		LayoutCompleteEvent();
		break;
	    case 14://file load completed
		EnableBtns(1);
		FileLoadCompleteEvent();
		break;
	    case 15://context menu
		SeisintContextMenuEvent(sEvent,sParam);
		break;
	    case 18://WebServices
		WebServicesEvent();
		break;
	    case 19://Online Help
		VizOnlineHelp(sParam);
		break;
	}
	window.setTimeout("PollEvent()",0);
	return;
    }
    window.setTimeout("PollEvent()",200);
}
//-->
</script>
</head>
<body onLoad="OnLoad()" onResize="OnResize()" scroll="no" marginwidth="0" marginheight="0">

<table width="100%"height="100%"cellspacing="0"cellpadding="0"border="0">
<tr height="42"valign="top"><td width="100%"colspan="2">
<table width=100% cellpadding="0" cellspacing="0" border="0" height="42">
<tr>
<td align="left" valign="top" background="<TMPL_VAR NAME=IMGPATH>/i2/back_red_black.gif" width="80%" height="38" style="background-repeat: repeat-x;">
<img src="<TMPL_VAR NAME=IMGPATH>/i2/small_back_red_black.gif" width="250" height="18"><br>
<a href="http://www.lexisnexis.com" target="_blank"><img src="<TMPL_VAR NAME=IMGPATH>/i2/ln_logo.gif" width="216" height="42" border="0" alt="LexisNexis(TM)"></a>
</td>
<td align="right" valign="top" background="<TMPL_VAR NAME=IMGPATH>/i2/back_red_black.gif" width="80%" height="38" style="background-repeat: repeat-x;">
<img src="<TMPL_VAR NAME=IMGPATH>/i2/red_curve.gif" width="250" height="18"><br>

<a href="http://www.anacubis.com/anacubisviewer/redirect.asp?action=banner&serviceIdentifier=LexisNexisSmartLinx&referralSource=appletpage" target="_blank"><img src="<TMPL_VAR NAME=IMGPATH>/i2/i2.jpg" width="216" height="42" border="0" alt="i2 Group Home"></a>
</td>
</tr>
</table></td></tr>
<tr height="100%"valign="top">
<td width="100%">
<script language="JavaScript">
/*var url=location.protocol+"//"+location.host+location.pathname.substring(0,location.pathname.lastIndexOf('/'))+"/VizReportService.ashx"+location.search;*/
/*document.write('<applet id=\"VLVChart\" name=\"VLVChart\" codebase=\"VLV\" code=\"com.VDK.viewer.Chart.class \" align=\"baseline\" archive=\"i2Viewer.jar\" width=\"100%\" height=\"100%\">');*/

 var url='<TMPL_VAR ACTION_REPORT>?EVENT=I2/GET_<TMPL_VAR TYPE>&SESSION_ID=<TMPL_VAR SESSION_ID>&CSRF_TOKEN=<TMPL_VAR CSRF_TOKEN><TMPL_VAR QSTRING>';
document.write('<applet id=\"VLVChart\" name=\"VLVChart\" codebase=\"<TMPL_VAR NAME=CABPATH>\" code=\"com.VDK.viewer.Chart.class \" align=\"baseline\" archive=\"i2Viewer.jar\" width=\"100%\" height=\"100%\">');
document.write('<param name=\"serviceIdentifier\" value=\"LexisNexisSmartLinx\"/>');
document.write('<param name=\"layout-manager\" value=\"Peacock2\"/>');
document.write('<param name=\"raise-events\" value=\"true\"/>');
document.write('<param name=\"show-labels-dragging\" value=\"true\"/>');
document.write('<param name=\"button-delete\" value=\"false\"/>');
document.write('<param name=\"button-undelete\" value=\"false\"/>');
document.write('<param name=\"target-separation\" value=\"100\"/>');
document.write('<param name=\"vlx-file\" value=\"'+url+'\"/>');
document.write('</applet>');

</script>
</td>
<td>
<table class="fltBorder"height="320"width="65"cellpadding="1"cellspacing="0">
<tr><td><img src="<TMPL_VAR NAME=IMGPATH>/i2/fltBtn/Business.gif" onclick="fltBtn(this)" alt="Business" border=0 class="Disabled" width="25" height="25" name=Business></td>
<td><img src="<TMPL_VAR NAME=IMGPATH>/i2/fltBtn/BusinessVar.gif" onclick="fltBtn(this)" alt="Business Name Variation" border=0 class="Disabled" width="25" height="25" name=BusinessNameVariation></td></tr>

<tr><td><img src="<TMPL_VAR NAME=IMGPATH>/i2/fltBtn/Location.gif" onclick="fltBtn(this)" alt="Location" border=0 class="Disabled" width="25" height="25" name=Location></td>
<td><img src="<TMPL_VAR NAME=IMGPATH>/i2/fltBtn/Profile.gif" onclick="fltBtn(this)" alt="Profile" border=0 class="Disabled" width="25" height="25" name=Profile></td></tr>
<tr><td><img src="<TMPL_VAR NAME=IMGPATH>/i2/fltBtn/Person.gif" onclick="fltBtn(this)" alt="Person" border=0 class="Disabled" width="25" height="25" name=Person></td>
<td><img src="<TMPL_VAR NAME=IMGPATH>/i2/fltBtn/NameVar.gif" onclick="fltBtn(this)" alt="Person Name Variation" border=0 class="Disabled" width="25" height="25" name=PersonNameVariation></td></tr>
<tr><td><img src="<TMPL_VAR NAME=IMGPATH>/i2/fltBtn/SSN.gif" onclick="fltBtn(this)" alt="Social Security Number" border=0 class="Disabled" width="25" height="25" name=SSN></td>
<td><img src="<TMPL_VAR NAME=IMGPATH>/i2/fltBtn/Weapon.gif" onclick="fltBtn(this)" alt="Weapon Permit" border=0 class="Disabled" width="25" height="25" name=WeaponPermit></td></tr>
<tr><td><img src="<TMPL_VAR NAME=IMGPATH>/i2/fltBtn/Phone.gif" onclick="fltBtn(this)" alt="Phone" border=0 class="Disabled" width="25" height="25" name=Phone></td>
<td><img src="<TMPL_VAR NAME=IMGPATH>/i2/fltBtn/Fax.gif" onclick="fltBtn(this)" alt="Fax" border=0 class="Disabled" width="25" height="25" name=Fax></td></tr>
<tr><td><img src="<TMPL_VAR NAME=IMGPATH>/i2/fltBtn/VehicleReg.gif" onclick="fltBtn(this)" alt="Motor Vehicle Registration" border=0 class="Disabled" width="25" height="25" name=MotorVehicleRegistration></td>
<td><img src="<TMPL_VAR NAME=IMGPATH>/i2/fltBtn/DriversLicense.gif" onclick="fltBtn(this)" alt="Drivers License" border=0 class="Disabled" width="25" height="25" name=DriversLicense></td></tr>
<tr><td><img src="<TMPL_VAR NAME=IMGPATH>/i2/fltBtn/Judgment.gif" onclick="fltBtn(this)" alt="Judgment" border=0 class="Disabled" width="25" height="25" name=Judgment></td>
<td><img src="<TMPL_VAR NAME=IMGPATH>/i2/fltBtn/Lien.gif" onclick="fltBtn(this)" alt="Lien" border=0 class="Disabled" width="25" height="25" name=Lien></td></tr>

<tr><td><img src="<TMPL_VAR NAME=IMGPATH>/i2/fltBtn/Bankruptcy.gif" onclick="fltBtn(this)" alt="Bankruptcy" border=0 class="Disabled" width="25" height="25" name=Bankruptcy></td>
<td><img src="<TMPL_VAR NAME=IMGPATH>/i2/fltBtn/ProLicense.gif" onclick="fltBtn(this)" alt="Professional License" border=0 class="Disabled" width="25" height="25" name=ProfessionalLicense></td></tr>
<tr><td><img src="<TMPL_VAR NAME=IMGPATH>/i2/fltBtn/LiquorLicense.gif" onclick="fltBtn(this)" alt="Liquor License" border=0 class="Disabled" width="25" height="25" name=LiquorLicense></td>
<td><img src="<TMPL_VAR NAME=IMGPATH>/i2/fltBtn/SportLicense.gif" onclick="fltBtn(this)" alt="Sport License" border=0 class="Disabled" width="25" height="25" name=SportLicense></td></tr>
<tr><td><img src="<TMPL_VAR NAME=IMGPATH>/i2/fltBtn/AircraftReg.gif" onclick="fltBtn(this)" alt="Aircraft Registration" border=0 class="Disabled" width="25" height="25" name=AircraftRegistration></td>
<td><img src="<TMPL_VAR NAME=IMGPATH>/i2/fltBtn/PilotsLicense.gif" onclick="fltBtn(this)" alt="Pilots License" border=0 class="Disabled" width="25" height="25" name=PilotsLicense></td></tr>
<tr><td><img src="<TMPL_VAR NAME=IMGPATH>/i2/fltBtn/BoatReg.gif" onclick="fltBtn(this)" alt="Boat Registration" border=0 class="Disabled" width="25" height="25" name=BoatRegistration></td>
<td>&nbsp;</td></tr>
</table>
</td>
</tr>
<tr height="15"valign="top"><td width="100%" align="right" id="AppletVersion" class="AppVer"/></tr>
<tr height="15"valign="top"><td width="100%" align="center" colspan="2">

<a href="javascript:CantSee()"><font class="CopyRight">Unable to see the visualization above?</font></a>
</td></tr>
<tr height="20"><td align="middle" colspan="2" width="100%">
<div align="center"><hr size=1 noshade width="80%">
<font class="CopyRight">
<a href="http://www.lexisnexis.com" target="_blank" alt="About LEXIS&reg;NEXIS&reg;" onFocus="this.blur()"> About LexisNexis</a>
&nbsp;&nbsp;|&nbsp;&nbsp;
<a href="http://www.lexisnexis.com/risk/terms/" target="_blank" alt="LEXIS&reg;NEXIS&reg; Terms & Conditions" onFocus="this.blur()">
Terms and Conditions</a>&nbsp;&nbsp;|&nbsp;&nbsp;
<a href="http://www.lexisnexis.com/terms/privacy/" target="_blank" alt="LEXIS&reg;NEXIS&reg; Privacy">
Privacy Policy</a><br>&nbsp;&nbsp;<a href="http://www.lexisnexis.com/terms/copyright.aspx" target="_blank">Copyright &copy;</a> <script>document.write(new Date().getFullYear());</script> LexisNexis Risk Solutions. All rights reserved.</font></div></td></tr>
<tr height="5"><td>&nbsp;</td></tr>
</table>
<form name="frmClipHolder"><input type="hidden" name="clipCopy"/></form>
<script type="text/javascript" language="JavaScript">
SaveValues('i2_Analyst_Notebook','8');
</script>
</body>
</html>
<!--end i2/start.tpl -->
