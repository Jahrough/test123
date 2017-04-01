<!-- Begin short_docket_report.tpl -->
<!--<TMPL_VAR NAME=SERVER_ID>-->
<html>
<head>
<meta http-equiv="X-UA-Compatible" content="IE=Edge" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Docket Image Report</title>
<link href="<TMPL_VAR NAME='CSSPATH'>/v3/accurint.css" rel="stylesheet" type="text/css">
<link href="<TMPL_VAR NAME='CSSPATH'>/v3/accurintSearch.css" rel="stylesheet" type="text/css">
<link href="<TMPL_VAR NAME='CSSPATH'>/v3/demo.css" rel="stylesheet" type="text/css">
<link href="<TMPL_VAR NAME='CSSPATH'>/v3/base.css" rel="stylesheet" type="text/css">
<link href="<TMPL_VAR NAME='CSSPATH'>/v3/reports.css" rel="stylesheet" type="text/css">
<script src="<TMPL_VAR NAME='JSPATH'>/common.js"></script>
<script src="<TMPL_VAR NAME='JSPATH'>/shared.js"></script>
<script src="<TMPL_VAR NAME='JSPATH'>/pricing.js"></script>
<script src="<TMPL_VAR NAME='JSPATH'>/report.js"></script>
<script src="<TMPL_VAR NAME='JSPATH'>/v3/utility.js"></script>
<script src="<TMPL_VAR NAME='JSPATH'>/jquery-1.10.2.js"></script>
<script>var $j = jQuery.noConflict();</script>
<script>
    function update_docket_num_info(cost,dkt_num) {
        if (document.forms[0].REPORT_TOTAL) {
            document.forms[0].REPORT_TOTAL.value = cost;
        }
        var dkt_div_id = document.getElementById("docket-num-id");
        dkt_div_id.innerHTML = dkt_div_id.innerHTML.replace(/\d+/,dkt_num);

        var qry_string = document.forms[0].QRY_STRING.value;
        qry_string = qry_string.replace(/docket_num=\d+$/,'docket_num='+dkt_num);
        document.forms[0].DOCKET_NUM.value = dkt_num;
        document.forms[0].QRY_STRING.value = qry_string;
    }
</script>
</head>

<body class="ac_report" onLoad="window.focus();opener.closewaitwin();" topmargin="0" leftmargin="0" marginwidth="0" marginheight="0">
<TMPL_INCLUDE NAME="report_header.tpl">
<div id="pleasewait" style="position:absolute; visibility:hidden; z-index:1000;"><img alt="" src="<TMPL_VAR NAME=IMGPATH>/arrows_wait_br_full.gif" id="pw" name="pw" width="400" height="120" border="0"></div>

<form name="SHORT_DOCKET_REPORT" action="<TMPL_VAR NAME=ACTION_DOCKET>" method="post"> 
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


<div id="mainbody" role="dialog" class="w770px reportCon" style="margin-top: 50px;">
    <div class="row-wrapper">
        <h1>Docket Image Report</h1>
    </div>
    <div class="row-wrapper">
        <h2>Subject Information</h2>
    </div>
    <div class="row-wrapper" style="margin-bottom:30px;">
        <table class="info-table">
        <tbody>
            <tr>
                <th id="col_case"><TMPL_IF DISPLAY_FULL_CASE>Abbreviated </TMPL_IF>Case #</th>
<TMPL_IF DISPLAY_FULL_CASE>
                <th id="col_court">Full Case Number</th>
</TMPL_IF>
                <th id="col_court">Court</th>
                <th id="col_fl_dt">Filing Date</th>
                <th id="col_img">Image #</th>
                <th id="col_dbt">Debtor</th>
                <th id="col_ad_dbt">Additional Debtor</th>
            </tr>
            <tr>
                <td headers="col_case"><TMPL_VAR NAME=CASE_NUMBER></td>
<TMPL_IF DISPLAY_FULL_CASE>
                <td headers="col_case"><TMPL_VAR NAME=FULL_CASE_NUMBER></td>
</TMPL_IF>
                <td headers="col_court"><TMPL_VAR NAME=COURT_NAME></td>
                <td headers="col_fl_dt"><TMPL_VAR NAME=FILING_DATE></td>
                <td headers="col_img" id="docket-num-id"><TMPL_VAR NAME=DOCKET_NUM></td>
                <td headers="col_dbt"><TMPL_VAR NAME=DEBTOR_NAME_1></td>
                <td headers="col_ad_dbt"><TMPL_VAR NAME=DEBTOR_NAME_2></td>
            </tr>
        </tbody>
    </table>
    </div>
    <div class="row-wrapper">
        <div class="ta-center">
                <input name="BUTTON" class="report-btn red-btn" type="button" value="<TMPL_IF REPORT_BUTTON><TMPL_VAR NAME=REPORT_BUTTON><TMPL_ELSE>Request Report</TMPL_IF>" onClick="send_report_selector('DOCKET/DOCKET_IMAGE_REPORT');">
            <input name="BUTTON" class="report-btn grey-btn" type="button" value="Cancel" onClick="window.close();">
        </div>
    </div>
    <div class="row-wrapper grey-border">
		<TMPL_IF NAME="SUBDOCKET_FLAG">
			<table class="options-table">
			  <tr>
				<th id="col_sel_doc" class="reportselectorinfo" width="15%">Select Document</th>
				<th id="col_doc_typ" class="reportselectorinfo" width="20%">Document Type&nbsp;</th>
				<th id="col_des" class="myaccountlabel" width="35%">Description&nbsp;&nbsp;</th>
				<th id="col_pgs" class="reportselectorinfo" width="15%">Pages&nbsp;</th>
			  <TMPL_UNLESS HIDE_PRICES>
				<th id="col_prc" class="reportselectorinfo" width="15%">Price&nbsp;</th>
			  </TMPL_UNLESS>
			  </tr>
			<TMPL_LOOP NAME="SUBDOCKET_LOOP">
			  <tr>
					<TMPL_IF NAME="SUB_DOCKET_NUM">
				<td headers="col_sel_doc" class="smallfont1" width="15%" valign="top">
				&nbsp;&nbsp;<label for="SUB_DOCKET_NUM" style="display: none">doc num</label>
                  <input type="radio" id="SUB_DOCKET_NUM" name="SUB_DOCKET_NUM" onClick="document.forms[0].REPORT_TOTAL.value = '<TMPL_VAR NAME=ACCURINT_COST>';" value="<TMPL_VAR NAME="SUB_DOCKET_NUM">" <TMPL_IF NAME="DEFAULT">CHECKED</TMPL_IF>>
				</td>
					<TMPL_ELSE>
				<td headers="col_sel_doc" class="smallfont1" width="15%" valign="top">
				&nbsp;&nbsp;<label for="DOC_NUM_FOR_DOCKET_NUM" style="display: none">doc num</label><input type="radio" id="DOC_NUM_FOR_DOCKET_NUM" name="DOC_NUM_FOR_DOCKET_NUM" onClick="update_docket_num_info('<TMPL_VAR NAME=ACCURINT_COST>', '<TMPL_VAR NAME=DOCKET_NUM>');" value="__NOT_DEFINED__" <TMPL_IF NAME="DEFAULT">CHECKED</TMPL_IF>>
				</td>
					</TMPL_IF>
					<td headers="col_doc_typ" class="smallfont1"  width="20%">
						<TMPL_IF NAME=IMAGE_TYPE>(<TMPL_VAR NAME="IMAGE_TYPE">)&nbsp;&nbsp;<img src="<TMPL_VAR NAME=IMGPATH>/star.gif" border="0" width="11" height="10" alt="See Note Below Regarding Viewing this document"><TMPL_IF NAME="IMAGE_TYPE_TIFF"><img src="<TMPL_VAR NAME=IMGPATH>/star.gif" border="0" width="11" height="10" alt="See Note Below Regarding Viewing this document"></TMPL_IF><TMPL_ELSE>Unknown</TMPL_IF>
					</td>
				<td headers="col_des" class="smallfont1" width="35%">
				<TMPL_VAR NAME="SUB_DOCKET_TEXT">
				</td>
				<td headers="col_pgs" class="smallfont1" width="15%">
				<TMPL_IF NAME=PAGES><TMPL_VAR NAME=PAGES><TMPL_ELSE>Unknown</TMPL_IF>
				</td>
			  <TMPL_UNLESS HIDE_PRICES>
				<td headers="col_prc" class="smallfont1" width="15%">
				<TMPL_IF NAME=ACCURINT_COST>$<TMPL_VAR NAME="ACCURINT_COST"><TMPL_ELSE>Free</TMPL_IF>
				</td>
			  </TMPL_UNLESS>
			  </tr>
			  </TMPL_LOOP>
			</table>

		<TMPL_ELSE>
				<table class="options-table">
				  <tr>
					<th id="col_pgs" class="reportselectorinfo" width="30%">Pages&nbsp;</th>
					<th id="col_doc_typ" class="reportselectorinfo" width="40%">Document Type&nbsp;</th>
					<TMPL_UNLESS HIDE_PRICES>
					<th id="col_prc" class="reportselectorinfo" width="30%">Price&nbsp;</th>
					</TMPL_UNLESS>
				  </tr>
				<TMPL_LOOP NAME="SUBDOCKET_LOOP">
				  <tr>
					<td headers="col_pgs">
						<TMPL_IF NAME=PAGES><TMPL_VAR NAME=PAGES><TMPL_ELSE>Unknown</TMPL_IF>
					</td>
					<td headers="col_doc_typ">
						<TMPL_IF NAME=IMAGE_TYPE>(<TMPL_VAR NAME="IMAGE_TYPE">)&nbsp;&nbsp;<img src="<TMPL_VAR NAME=IMGPATH>/star.gif" border="0" width="11" height="10" alt="See Note Below Regarding Viewing this document"><TMPL_IF NAME="IMAGE_TYPE_TIFF"><img src="<TMPL_VAR NAME=IMGPATH>/star.gif" border="0" width="11" height="10" alt="See Note Below Regarding Viewing this document"></TMPL_IF><TMPL_IF NAME="IMAGE_TYPE_MAX"><img src="<TMPL_VAR NAME=IMGPATH>/star.gif" border="0" width="11" height="10" alt="See Note Below Regarding Viewing this document"><img src="<TMPL_VAR NAME=IMGPATH>/star.gif" border="0" width="11" height="10" alt="See Note Below Regarding Viewing this document"></TMPL_IF><TMPL_ELSE>Unknown</TMPL_IF>
					</td>
					<TMPL_UNLESS HIDE_PRICES>
					<td headers="col_prc">
						<TMPL_IF NAME=ACCURINT_COST>$<TMPL_VAR NAME="ACCURINT_COST"><TMPL_ELSE>Free</TMPL_IF>
					</td>
					</TMPL_UNLESS>
				  </tr>
				  </TMPL_LOOP>
				</table>
		</TMPL_IF>
	</div>
	<div class="row-wrapper grey-border">
		<table class="options-table">
          <thead style="display: none">
            <tr>
              <th aria-label="Image price">&nbsp;</th>
            </tr>
          </thead>
		  <tr>
			<TMPL_UNLESS HIDE_PRICES>
			<td class="myaccounttitle">Maximum Image Price:&nbsp;$&nbsp;&nbsp;<input type='text' name='REPORT_TOTAL' size='5' value='<TMPL_VAR NAME=REPORT_TOTAL>' onFocus='this.blur();'></td>
			<td></td>
			<TMPL_ELSE>
			<td>&nbsp;</td>
			</TMPL_UNLESS>
		  </tr>
		</table>
		</td>
		<td nowrap ></td>
		<td valign="top"></td> 
		  </tr>
		  <tr>
			 <td><TMPL_UNLESS HIDE_PRICES><br><b>NOTE:</b>&nbsp;&nbsp;This is the maximum possible cost for this image.&nbsp;&nbsp;You will not be charged for options returning no results.<TMPL_ELSE>&nbsp;</TMPL_UNLESS><TMPL_IF NAME="SHOW_PDF_NOTE"><br><img alt="" src="<TMPL_VAR NAME=IMGPATH>/star.gif" border="0" width="11" height="10">&nbsp;&nbsp;To view this image you must have Adobe Acrobat Reader installed on your system. Click <a href="http://www.adobe.com/products/acrobat/readstep.html">here</a> to download the viewer.</TMPL_IF><TMPL_IF NAME="SHOW_TIFF_NOTE"><br><img alt="" src="<TMPL_VAR NAME=IMGPATH>/star.gif" border="0" width="11" height="10"><img alt="" src="<TMPL_VAR NAME=IMGPATH>/star.gif" border="0" width="11" height="10">&nbsp;&nbsp;To view this image you must have a TIFF viewer installed on your system. Click <a href="http://www.apple.com/quicktime/products/qt/">here</a> to download the viewer.</TMPL_IF><TMPL_IF NAME="SHOW_MAX_NOTE"><br><img alt="" src="<TMPL_VAR NAME=IMGPATH>/star.gif" border="0" width="11" height="10"><img alt="" src="<TMPL_VAR NAME=IMGPATH>/star.gif" border="0" width="11" height="10"><img alt="" src="<TMPL_VAR NAME=IMGPATH>/star.gif" border="0" width="11" height="10">&nbsp;&nbsp;To view this image you must have a Paperport viewer installed on your system. Click <a href="http://www.mnb.uscourts.gov/WebDir/Html/newviewing_images.html">here</a> to download the viewer.</TMPL_IF></td>          	
			 <td>&nbsp;&nbsp;&nbsp;&nbsp;</td>
		<td width="49%" valign="top">&nbsp;</td>
		  </tr>
		</table>
	</div>
</div>
<div id="modalDiv">
	<img src="<TMPL_VAR NAME=IMGPATH>/loading.gif" alt="Running Search" height="40" width="67"/> 
    <span>Running Search... Please Wait.</span>
</div>
<div id="modalBlur"></div>
</form>
<TMPL_INCLUDE NAME="report_footer.tpl">
</body>
</html>
<!-- End short_docket_report.tpl -->
