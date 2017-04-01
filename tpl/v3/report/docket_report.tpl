<!-- Begin v3/docket_report.tpl -->
<!--<TMPL_VAR NAME=SERVER_ID>-->
<html>
<head>
<title>Docket Report</title>
<meta http-equiv="X-UA-Compatible" content="IE=Edge" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<link href="<TMPL_VAR NAME='CSSPATH'>/v3/base.css" rel="stylesheet" type="text/css">
<link href="<TMPL_VAR NAME='CSSPATH'>/v3/demo.css" rel="stylesheet" type="text/css">
<link href="<TMPL_VAR NAME='CSSPATH'>/v3/report.css" rel="stylesheet" type="text/css">
<link href="<TMPL_VAR NAME='CSSPATH'>/v3/myaccount.css" rel="stylesheet" type="text/css">

<script src="<TMPL_VAR NAME='JSPATH'>/common.js"></script>
<script src="<TMPL_VAR NAME='JSPATH'>/shared.js"></script>
<script src="<TMPL_VAR NAME='JSPATH'>/v3/utility.js"></script>
<script src="<TMPL_VAR NAME='JSPATH'>/jquery-1.10.2.js"></script>
<script>var $j = jQuery.noConflict();</script>
</head>

<body onload="window.focus();opener.closewaitwin();" topmargin="0" leftmargin="0" marginwidth="0" marginheight="0"<TMPL_UNLESS ENABLE_V2> class="alternatebody"</TMPL_UNLESS>>
<div id="skiptocontent" role="dialog" style="display: none"><a href="#content" title="skip navigation">Skip Navigation</a></div>
	<TMPL_INCLUDE NAME="../header_info.tpl">

	<form name="DOCKET" action="<TMPL_VAR ACTION_DOCKET>" method="POST">
		<div class="reportCon reportResults lh4">
			<div class="dataCon">
				<div style="width: 97%;" class="rightCon" id="content">
			   <div>
				<blockquote>
				<span class="discalimertitle">Important:</span><span class="disclaimerbody">&nbsp; The Public Records and commercially available data sources used on reports have errors.&nbsp; Data is sometimes entered poorly, processed incorrectly and is generally not free from defect.&nbsp; This system should not be relied upon as definitively accurate.&nbsp; Before relying on any data this system supplies, it should be independently verified.&nbsp; For Secretary of State documents, the following data is for information purposes only and is not an official record.&nbsp; Certified copies may be obtained from that individual state's Department of State.&nbsp; The criminal record data in this product or service may include records that have been expunged, sealed, or otherwise have become inaccessible to the public since the date on which the data was last updated or collected.<br><br>&nbsp; <TMPL_UNLESS IRB><TMPL_IF FCOL_TCOL>Contact &amp; Locate<TMPL_ELSE>Accurint</TMPL_IF><TMPL_ELSE>IRBSearch, LLC</TMPL_UNLESS> does not constitute a "consumer report" as that term is defined in the federal Fair Credit Reporting Act, 15 USC 1681 et seq. (FCRA). Accordingly, <TMPL_UNLESS IRB><TMPL_IF FCOL_TCOL>Contact &amp; Locate<TMPL_ELSE>Accurint</TMPL_IF><TMPL_ELSE>IRBSearch, LLC</TMPL_UNLESS> may not be used in whole or in part as a factor in determining eligibility for credit, insurance, employment or another permissible purpose under the FCRA.</span><br>
				<br><br>
				<div class="myaccount-section-title" style="padding-left:40%">REPORT FOLLOWS</div>
				</blockquote>

				<blockquote>
				<div>
					<span style="color:#ED1C24">Docket Report</span><br><b>Date:</b>&nbsp;<TMPL_VAR NAME="REPORT_DATE"><br><br>
					<span style="color:#ED1C24">Report processed by:</span><span><br><TMPL_IF NAME="COMPANY_NAME"><TMPL_VAR NAME="COMPANY_NAME"><br></TMPL_IF><TMPL_IF NAME="COMPANY_ADDRESS1"><TMPL_VAR NAME="COMPANY_ADDRESS1"><br></TMPL_IF><TMPL_IF NAME="CSZ"><TMPL_VAR NAME="CSZ"><br></TMPL_IF><TMPL_IF NAME="COMPANY_PHONE"><TMPL_VAR NAME="COMPANY_PHONE"> Main Phone<br></TMPL_IF><TMPL_IF NAME="COMPANY_FAX"><TMPL_VAR NAME="COMPANY_FAX"> Fax</TMPL_IF></span><br></div>

						<div align="left">  
						<span style="color:#ED1C24">Case Information:</span><br>
						<b>Case #:</b>&nbsp;<TMPL_VAR NAME="CASE_NUMBER"><br>
						<b>Court:</b>&nbsp;<TMPL_VAR NAME="COURT">
						<TMPL_IF NAME="DEBTOR_NAME_1">
					<br><b>Debtor:</b>&nbsp;<TMPL_VAR NAME="DEBTOR_NAME_1">
					<TMPL_IF NAME="DEBTOR_NAME_2">
					<br><b>Additional Debtor:</b>&nbsp;<TMPL_VAR NAME="DEBTOR_NAME_2">
					</TMPL_IF>
						</TMPL_IF>

					<P>
					<div align="center">
					<table border="0" cellpadding="0" cellspacing="0" width="900">
                    <thead style="display: none">
                      <tr>
                        <th aria-label="Report">&nbsp;</th>
                      </tr>
                    </thead>
					<tr>
					<td width="635" valign="top">

					<TMPL_IF NAME="DOCKET_LOOP">
						<TMPL_UNLESS NAME="NUM_IMAGES">
						<div align="center" class="unifont1">
						<b>There are no images available for this case.</b>
						</div><br>
						</TMPL_UNLESS>


						<fieldset>
							<div class="section-row">
								<table class="display">
									<thead>
										<tr>
											<th id="col_doc">
												<b>Doc #</b>
											</th>
											<th id="col_fil_dt">
												<b>Filing Date</b>
											</th>
											<th id="col_doc_txt">
												<b>Docket Text</b>
											</th>
											<th id="col_img">
												<b>Image</b>
											</th>
										</tr>
									</thead>
									<tbody>
									  <TMPL_LOOP NAME="DOCKET_LOOP">
									  <tr>
										<td headers="col_doc"><TMPL_VAR NAME="DOCKET_NUM">&nbsp;</td>
										<td headers="col_fil_dt"><TMPL_VAR NAME="FILING_DATE">&nbsp;</td>
										<td headers="col_doc_txt"><TMPL_VAR NAME="DOCKET_TEXT">&nbsp;</td>
										<td headers="col_img"><TMPL_IF NAME="IMAGE_AVAILABLE"> <a title="Open Docket Image Report" href="javascript:wait_win('<TMPL_VAR NAME=HTMLPATH>/v3/bankruptcy_please_wait.html');report_win('<TMPL_VAR NAME="ACTION_DOCKET">?EVENT=DOCKET/DOCKET_IMAGE_REPORT&SESSION_ID=<TMPL_VAR NAME="SESSION_ID">&CSRF_TOKEN=<TMPL_VAR NAME="CSRF_TOKEN"><TMPL_IF NAME="QRY_STRING">&<TMPL_VAR NAME="QRY_STRING"></TMPL_IF>&CASE_NUMBER=<TMPL_VAR NAME="CASE_NUMBER">&CASE_INTERNAL_ID=<TMPL_VAR NAME="CASE_INTERNAL_ID">&DOCKET_NUM=<TMPL_VAR NAME="DOCKET_NUM">&FILING_DATE=<TMPL_VAR ESCAPE="URL" NAME="FILING_DATE">&CASE_DATA=<TMPL_VAR ESCAPE="URL" NAME="CASE_DATA">', 'DocketImageReport')"><img src="<TMPL_VAR NAME=IMGPATH>/bankrupt_docket_link.gif" border="0" width="21" height="21" alt="Open Docket Image Report"></a><TMPL_ELSE>&nbsp;N/A</TMPL_IF></td>
									  </tr>
									  </TMPL_LOOP>
									</tbody>
								</table>
							 </div>	
						 </fieldset>
					<TMPL_ELSE>
						<div align="center" class="unifont1">
						<b>
						  No documents found.
						  <TMPL_UNLESS NAME="HIDE_PRICES"><br>There was NO CHARGE for this report.</TMPL_UNLESS>
						</b>
						</div>
					</TMPL_IF>
					<br>
					</td>
					</tr>
					</table>
				</div>
			</div>
			</blockquote>
		<TMPL_INCLUDE NAME=common_hidden_input.tpl>
		<INPUT type=HIDDEN NAME="EVENT" VALUE="">
		<INPUT TYPE=HIDDEN NAME=IM_A_REPORT VALUE="1">
		<INPUT TYPE=HIDDEN NAME=REFERENCE_CODE VALUE="<TMPL_VAR REFERENCE_CODE>">
		<INPUT TYPE=HIDDEN NAME=DOL_DATE VALUE="<TMPL_VAR NAME=DOL_DATE>">
		</div>
	</div>
	</div></div>
	</form>
        <div id="modalDiv">
            <span>Running Search... Please Wait.</span>
        </div>
        <div id="modalBlur"></div>
</body>
</html>
<!-- End docket_report.tpl -->


