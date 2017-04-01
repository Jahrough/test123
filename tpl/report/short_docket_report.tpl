<!-- Begin short_docket_report.tpl -->
<!--<TMPL_VAR NAME=SERVER_ID>-->
<html>
<head>
<title>Docket Image Report</title>
<link href="<TMPL_VAR NAME='CSSPATH'>/style1.css" rel="stylesheet" type="text/css">
<link href="<TMPL_VAR NAME='CSSPATH'>/<TMPL_VAR NAME=SKIN_TYPE>/skin.css" rel="stylesheet" type="text/css">
<script src="<TMPL_VAR NAME='JSPATH'>/common.js"></script>
<script src="<TMPL_VAR NAME='JSPATH'>/shared.js"></script>
<script src="<TMPL_VAR NAME='JSPATH'>/pricing.js"></script>
<script src="<TMPL_VAR NAME='JSPATH'>/report.js"></script>
<script src="<TMPL_VAR NAME='JSPATH'>/please_wait.js"></script>
</head>

<body onLoad="window.focus();opener.closewaitwin();" topmargin="0" leftmargin="0" marginwidth="0" marginheight="0">

<div id="pleasewait" style="position:absolute; visibility:hidden; z-index:1000;"><img alt="" src="<TMPL_VAR NAME=IMGPATH>/arrows_wait_br_full.gif" id="pw" name="pw" width="400" height="120" border="0"></div>

<form name="SHORT_DOCKET_REPORT" action="<TMPL_VAR NAME=ACTION_DOCKET>" method="post"> 
<script>
    function update_docket_num_info(cost,dkt_num) {
        if (document.forms[0].REPORT_TOTAL) {
            document.forms[0].REPORT_TOTAL.value = cost;
        }
        var dkt_div_id = document.getElementById("docket-num-id");
        dkt_div_id.innerHTML = dkt_div_id.innerHTML.replace(/\,/g,'');
        dkt_div_id.innerHTML = dkt_div_id.innerHTML.replace(/\d+/,dkt_num);

        var qry_string = document.forms[0].QRY_STRING.value;
        qry_string = qry_string.replace(/docket_num=\d+$/,'docket_num='+dkt_num);
        document.forms[0].DOCKET_NUM.value = dkt_num;
        document.forms[0].QRY_STRING.value = qry_string;
    }
</script>

      <TMPL_INCLUDE NAME=common_hidden_input.tpl>
      <INPUT type=hidden NAME="SKIN_TYPE" VALUE="<TMPL_VAR NAME=SKIN_TYPE>">
      <INPUT type=hidden NAME="APPLICATION_TYPE" VALUE="<TMPL_VAR NAME=APPLICATION_TYPE>">
      <INPUT type=hidden NAME="REFERENCE_CODE" VALUE="<TMPL_VAR REFERENCE_CODE>">
      <INPUT TYPE=HIDDEN NAME="DOL_DATE" VALUE="<TMPL_VAR NAME=DOL_DATE>">
      <INPUT type=hidden NAME="EVENT" VALUE="DOCKET/DOCKET_IMAGE_REPORT">
      <INPUT type=hidden NAME="COST_CONFIRMATION" VALUE="1">
      <INPUT type=hidden NAME="CASE_NUMBER" VALUE="<TMPL_VAR NAME="CASE_NUMBER">">
      <INPUT type=hidden NAME="COURT_CODE" VALUE="<TMPL_VAR NAME="COURT_CODE">">
      <INPUT type=hidden NAME="DOCKET_NUM" VALUE="<TMPL_VAR NAME="DOCKET_NUM">">
      <INPUT type=hidden NAME="CASE_INTERNAL_ID" VALUE="<TMPL_VAR NAME="CASE_INTERNAL_ID">">
    <input type="hidden" NAME="QRY_STRING" VALUE="<TMPL_VAR NAME="QRY_STRING">">
      <INPUT type=hidden NAME="TMSID" VALUE="<TMPL_VAR NAME="TMSID">">
      <INPUT type=hidden NAME="ORIG_DOCKET_NUM" VALUE="<TMPL_VAR NAME="ORIG_DOCKET_NUM">">
      <INPUT type=hidden NAME="FORM_DOCKET_NUM" VALUE="<TMPL_VAR NAME="FORM_DOCKET_NUM">">
      <INPUT type=hidden NAME="FULL_CASE_NUMBER" VALUE="<TMPL_VAR NAME="FULL_CASE_NUMBER">">
      <INPUT type=hidden NAME="DISPLAY_FULL_CASE" VALUE="<TMPL_VAR NAME="DISPLAY_FULL_CASE">">

<div align="center" id="mainbody">
<table border="0" cellpadding="0" cellspacing="0" height="10">
  <tr height="10">
    <td height="10" class="unifont2pt">&nbsp;</td>
  </tr>
</table>
<table border="0" cellpadding="0" cellspacing="0" width="620">
  <tr>
    <td align="center" colspan="2">
    <table border="0" cellpadding="2" cellspacing="0" bgcolor="#000000">
      <tr>
        <td><input name="BUTTON" tabindex="1" class="rb" type="button" value="<TMPL_IF REPORT_BUTTON><TMPL_VAR NAME=REPORT_BUTTON><TMPL_ELSE>Request Report</TMPL_IF>" onMouseDown="flip_style(this,'rbd');" onClick="showpw();send_event('DOCKET/DOCKET_IMAGE_REPORT');disable_buttons('BUTTON');" onMouseOut="flip_style(this,'rb');"></td>
      </tr>
    </table>
    </td>
  </tr>
</table>
<table border="0" cellpadding="0" cellspacing="0" height="10">
  <tr height="10">
    <td height="10" class="unifont2pt">&nbsp;</td>
  </tr>
</table>
<table border="1" cellpadding="0" cellspacing="0" width="640" bgcolor="#ffffff">
  <tr>
    <td>
    <div align="center">
    <table border="0" cellpadding="2" cellspacing="0">
      <tr>
	<td valign="top" align="left" class="myaccountlabel"><TMPL_IF DISPLAY_FULL_CASE>Abbreviated </TMPL_IF>Case #</td>
	<td valign="top" align="left" class="unifont1" nowrap>&nbsp;&nbsp;</td>
<TMPL_IF DISPLAY_FULL_CASE>
	<td valign="top" align="left" class="myaccountlabel">Full Case #</td>
	<td valign="top" align="left" class="unifont1" nowrap>&nbsp;&nbsp;</td>
</TMPL_IF>
	<td valign="top" align="left" class="myaccountlabel">Court</td>
	<td valign="top" align="left" class="unifont1" nowrap>&nbsp;&nbsp;</td>
	<td valign="top" align="left" class="myaccountlabel">Filing Date</td>
	<td valign="top" align="left" class="unifont1" nowrap>&nbsp;&nbsp;</td>
	<td valign="top" align="left" class="myaccountlabel">Image #</td>
      </tr>
      <tr>
	<td valign="top" align="left" class="smallfont1"><b><TMPL_VAR NAME=CASE_NUMBER></b></td>
	<td valign="top" align="left" class="unifont1" nowrap>&nbsp;&nbsp;</td>
<TMPL_IF DISPLAY_FULL_CASE>
	<td valign="top" align="left" class="smallfont1"><b><TMPL_VAR NAME=FULL_CASE_NUMBER></b></td>
	<td valign="top" align="left" class="unifont1" nowrap>&nbsp;&nbsp;</td>
</TMPL_IF>
	<td valign="top" align="left" class="smallfont1"><b><TMPL_VAR NAME=COURT_NAME></b></td>
	<td valign="top" align="left" class="unifont1" nowrap>&nbsp;&nbsp;</td>
	<td valign="top" align="left" class="smallfont1"><b><TMPL_VAR NAME=FILING_DATE></b></td>
	<td valign="top" align="left" class="unifont1" nowrap>&nbsp;&nbsp;</td>
	<td valign="top" align="left" class="smallfont1" id="docket-num-id"><b><TMPL_VAR NAME=DOCKET_NUM></b></td>
      </tr>
      <tr>
	<td valign="top" colspan="3" align="left" class="myaccountlabel">Debtor</font></td>
	<td valign="top" align="left" class="unifont1" nowrap>&nbsp;&nbsp;</td>
	<td valign="top" colspan="3" align="left" class="myaccountlabel"><TMPL_IF NAME="DEBTOR_NAME_2">Additional Debtor</TMPL_IF></td>
      </tr>
      <tr>
	<td valign="top" colspan="3" align="left" class="smallfont1" nowrap><b><TMPL_VAR NAME=DEBTOR_NAME_1></b></td>
	<td valign="top" align="left" class="unifont1" nowrap>&nbsp;&nbsp;</td>
	<td valign="top" colspan="3" align="left" class="smallfont1" nowrap><b><TMPL_VAR NAME=DEBTOR_NAME_2></b></td>
      </tr>
    </table>
    </div>  
    </td>
  </tr>
</table>
<table border="0" cellpadding="0" cellspacing="0" height="10">
  <tr height="10">
    <td height="10" class="unifont2pt">&nbsp;</td>
  </tr>
</table>
<table border="0" cellpadding="0" cellspacing="0" width="640">
  <tr>
    <td width="100%" valign="top">
    <table border="0" cellpadding="2" cellspacing="0" width="100%" class="myaccountborder">
      <tr>
        <td valign="top">

<TMPL_IF NAME="SUBDOCKET_FLAG">
	<table border="0" cellpadding="2" cellspacing="0" width="100%" class="reportselectbody">
	  <tr>
	    <td class="reportselectorinfo" width="15%">Select Document</td>
            <td class="reportselectorinfo" width="20%">Document Type&nbsp;</td>
	    <td class="myaccountlabel" width="35%">Description&nbsp;&nbsp;</td>
	    <td class="reportselectorinfo" width="15%">Pages&nbsp;</td>
      <TMPL_UNLESS HIDE_PRICES>
	    <td class="reportselectorinfo" width="15%">Price&nbsp;</td>
      </TMPL_UNLESS>
	  </tr>
	<TMPL_LOOP NAME="SUBDOCKET_LOOP">
	  <tr>
            <TMPL_IF NAME="SUB_DOCKET_NUM">
	    <td class="smallfont1" width="15%" valign="top">
		&nbsp;&nbsp;<input type="radio" name="SUB_DOCKET_NUM" onClick="document.forms[0].REPORT_TOTAL.value = '<TMPL_VAR NAME=ACCURINT_COST>';" value="<TMPL_VAR NAME="SUB_DOCKET_NUM">" <TMPL_IF NAME="DEFAULT">CHECKED</TMPL_IF>>
	    </td>
            <TMPL_ELSE>
	    <td class="smallfont1" width="15%" valign="top">
		&nbsp;&nbsp;<input type="radio" name="DOC_NUM_FOR_DOCKET_NUM" onClick="update_docket_num_info('<TMPL_VAR NAME=ACCURINT_COST>', '<TMPL_VAR NAME=DOCKET_NUM>');" value="__NOT_DEFINED__" <TMPL_IF NAME="DEFAULT">CHECKED</TMPL_IF>>
	    </td>
            </TMPL_IF>
            <td class="smallfont1"  width="20%">
                <TMPL_IF NAME=IMAGE_TYPE>(<TMPL_VAR NAME="IMAGE_TYPE">)&nbsp;&nbsp;<img src="<TMPL_VAR NAME=IMGPATH>/star.gif" border="0" width="11" height="10" alt="See Note Below Regarding Viewing this document"><TMPL_IF NAME="IMAGE_TYPE_TIFF"><img src="<TMPL_VAR NAME=IMGPATH>/star.gif" border="0" width="11" height="10" alt="See Note Below Regarding Viewing this document"></TMPL_IF><TMPL_ELSE>Unknown</TMPL_IF>
            </td>
	    <td class="smallfont1" width="35%">
		<TMPL_VAR NAME="SUB_DOCKET_TEXT">
	    </td>
	    <td class="smallfont1" width="15%">
		<TMPL_IF NAME=PAGES><TMPL_VAR NAME=PAGES><TMPL_ELSE>Unknown</TMPL_IF>
	    </td>
      <TMPL_UNLESS HIDE_PRICES>
	    <td class="smallfont1" width="15%">
		<TMPL_IF NAME=ACCURINT_COST>$<TMPL_VAR NAME="ACCURINT_COST"><TMPL_ELSE>Free</TMPL_IF>
	    </td>
      </TMPL_UNLESS>
	  </tr>
	  </TMPL_LOOP>
	</table>

<TMPL_ELSE>
        <table border="0" cellpadding="2" cellspacing="0" width="100%" class="reportselectbody">
          <tr>
            <td class="reportselectorinfo" width="30%">Pages&nbsp;</td>
            <td class="reportselectorinfo" width="40%">Document Type&nbsp;</td>
            <TMPL_UNLESS HIDE_PRICES>
            <td class="reportselectorinfo" width="30%">Price&nbsp;</td>
            </TMPL_UNLESS>
          </tr>
        <TMPL_LOOP NAME="SUBDOCKET_LOOP">
          <tr>
            <td class="smallfont1">
                <TMPL_IF NAME=PAGES><TMPL_VAR NAME=PAGES><TMPL_ELSE>Unknown</TMPL_IF>
            </td>
            <td class="smallfont1">
                <TMPL_IF NAME=IMAGE_TYPE>(<TMPL_VAR NAME="IMAGE_TYPE">)&nbsp;&nbsp;<img src="<TMPL_VAR NAME=IMGPATH>/star.gif" border="0" width="11" height="10" alt="See Note Below Regarding Viewing this document"><TMPL_IF NAME="IMAGE_TYPE_TIFF"><img src="<TMPL_VAR NAME=IMGPATH>/star.gif" border="0" width="11" height="10" alt="See Note Below Regarding Viewing this document"></TMPL_IF><TMPL_IF NAME="IMAGE_TYPE_MAX"><img src="<TMPL_VAR NAME=IMGPATH>/star.gif" border="0" width="11" height="10" alt="See Note Below Regarding Viewing this document"><img src="<TMPL_VAR NAME=IMGPATH>/star.gif" border="0" width="11" height="10" alt="See Note Below Regarding Viewing this document"></TMPL_IF><TMPL_ELSE>Unknown</TMPL_IF>
            </td>
            <TMPL_UNLESS HIDE_PRICES>
            <td class="smallfont1">
                <TMPL_IF NAME=ACCURINT_COST>$<TMPL_VAR NAME="ACCURINT_COST"><TMPL_ELSE>Free</TMPL_IF>
            </td>
            </TMPL_UNLESS>
          </tr>
          </TMPL_LOOP>
        </table>
</TMPL_IF>
        </td>
      </tr>
    </table>
    </td>
  </tr>
  <tr height="5">
    <td height="5" class="unifont2pt">&nbsp;</td>
  </tr>
  <tr>
    <td width="640" valign="top">
    <table border="0" cellpadding="2" cellspacing="0" width="100%">
      <tr>
        <td width="49%" valign"top">
	<table border="0" cellpadding="0" cellspacing="0">
	  <tr>
	    <TMPL_UNLESS HIDE_PRICES>
	    <td class="myaccounttitle">Maximum Image Price:&nbsp;$</td>
	    <td class='unifont1'><input type='text' name='REPORT_TOTAL' size='5' value='<TMPL_VAR NAME=REPORT_TOTAL>' onFocus='this.blur();'></td>
	    <TMPL_ELSE>
	    <td class="largefont1">&nbsp;</td>
	    </TMPL_UNLESS>
	  </tr>
	</table>
	</td>
	<td width="2%" nowrap class="unifont1">&nbsp;&nbsp;&nbsp;&nbsp;</td>
	<td width="49%" valign="top"> &nbsp;
	</td> 
      </tr>
      <tr>
         <td width="49%" class="smallfont1"><TMPL_UNLESS HIDE_PRICES><b>NOTE:</b>&nbsp;&nbsp;This is the maximum possible cost for this image.&nbsp;&nbsp;You will not be charged for options returning no results.<TMPL_ELSE>&nbsp;</TMPL_UNLESS><TMPL_IF NAME="SHOW_PDF_NOTE"><br><img alt="" src="<TMPL_VAR NAME=IMGPATH>/star.gif" border="0" width="11" height="10">&nbsp;&nbsp;To view this image you must have Adobe Acrobat Reader installed on your system. Click <a href="http://www.adobe.com/products/acrobat/readstep.html">here</a> to download the viewer.</TMPL_IF><TMPL_IF NAME="SHOW_TIFF_NOTE"><br><img alt="" src="<TMPL_VAR NAME=IMGPATH>/star.gif" border="0" width="11" height="10"><img alt="" src="<TMPL_VAR NAME=IMGPATH>/star.gif" border="0" width="11" height="10">&nbsp;&nbsp;To view this image you must have a TIFF viewer installed on your system. Click <a href="http://www.apple.com/quicktime/products/qt/">here</a> to download the viewer.</TMPL_IF><TMPL_IF NAME="SHOW_MAX_NOTE"><br><img alt="" src="<TMPL_VAR NAME=IMGPATH>/star.gif" border="0" width="11" height="10"><img alt="" src="<TMPL_VAR NAME=IMGPATH>/star.gif" border="0" width="11" height="10"><img alt="" src="<TMPL_VAR NAME=IMGPATH>/star.gif" border="0" width="11" height="10">&nbsp;&nbsp;To view this image you must have a Paperport viewer installed on your system. Click <a href="http://www.mnb.uscourts.gov/WebDir/Html/newviewing_images.html">here</a> to download the viewer.</TMPL_IF></td>          	
         <TMPL_LOOP NAME="SUBDOCKET_LOOP">
            <TMPL_IF NAME=OVER30_PAGES>
                <tr><td  width="49%" class="smallfont1">
                <img alt="" src="<TMPL_VAR NAME=IMGPATH>/star.gif" border="0" width="11" height="10">&nbsp;&nbsp;<TMPL_VAR NAME=OVER30_PAGES>
                </td></tr>
            </TMPL_IF>
         </TMPL_LOOP>
		 <td width="2%" nowrap class="unifont1">&nbsp;&nbsp;&nbsp;&nbsp;</td>
	<td width="49%" class="smallfont1" valign="top">&nbsp;</td>
      </tr>
    </table>
    </td>
  </tr>
</table>



</div>


</form>
</body>
</html>
<!-- End short_docket_report.tpl -->
