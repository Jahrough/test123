<!--<TMPL_VAR NAME=SERVER_ID>-->
<!-- begin: $RCSfile: search_popup.tpl,v $ -->
<!DOCTYPE html>
<html>
<head>
	<TMPL_INCLUDE NAME="report/includes_search_popup.tpl">
	<link href="<TMPL_VAR NAME='CSSPATH'>/accurint.css" rel="stylesheet" type="text/css">
	<link href="<TMPL_VAR NAME='CSSPATH'>/accurintSearch.css" rel="stylesheet" type="text/css">
	<link href="<TMPL_VAR NAME='CSSPATH'>/demo2.css" rel="stylesheet" type="text/css">
	<link href="<TMPL_VAR NAME='CSSPATH'>/sprites.css" rel="stylesheet" type="text/css">
	<script src="<TMPL_VAR NAME='JSPATH'>/v3/researchPanel.js"></script>
	<script src="<TMPL_VAR NAME='JSPATH'>/v3/init.js"></script>
	<script src="<TMPL_VAR NAME='JSPATH'>/v3/jsFunctionality.js"></script>
	<TMPL_IF NAME="SHOW_GENERIC_FEEDBACK_FORM">
	<script src="<TMPL_VAR NAME='JSPATH'>/feedback.js"></script>
	<script src="<TMPL_VAR name='JSPATH'>/prototype.js"></script>
	</TMPL_IF>
</head>

<body topmargin="0" leftmargin="0" marginwidth="0" marginheight="0">
	<style type = "text/css">
		.leftCon{
			height:0;
		}
	</style>
			<form name="<TMPL_IF NAME="SEARCH_NAME"><TMPL_VAR NAME='SEARCH_NAME'><TMPL_ELSE>RNA_SEARCH</TMPL_IF>" action="<TMPL_VAR NAME=ACTION>" method="post">
				<TMPL_INCLUDE NAME=common_hidden_input.tpl>
				<INPUT type=hidden NAME="IMGPATH" VALUE="<TMPL_VAR NAME=IMGPATH>">
				<INPUT type=hidden NAME="CURRENT_EVENT" VALUE="<TMPL_VAR NAME=CURRENT_EVENT>">
				<INPUT type=hidden NAME="APPLICATION_TYPE" VALUE="<TMPL_VAR NAME=APPLICATION_TYPE>">
				<TMPL_IF NAME="SEARCH_EVENT">
					<INPUT type=hidden NAME="EVENT" VALUE="<TMPL_VAR NAME='SEARCH_EVENT'>">
				<TMPL_ELSE>
					<INPUT type=hidden NAME="EVENT" VALUE="SEARCH/SEARCH">
				</TMPL_IF>
		   </form>

			<form name="SEARCH_RESULTS" action="<TMPL_VAR NAME=ACTION>" method="post">
			
<div class="topBarCon">
	<div class="topBarConMiddle" style="margin-left:5px;">
		<div class="left">
			<ul>
				<TMPL_IF GOV>
					<li class="ln-logo ln-logo-gov"><div>&nbsp;</div></li>
				</TMPL_IF>
				<TMPL_IF LE>
					<li class="ln-logo ln-logo-le"><div>&nbsp;</div></li>
				</TMPL_IF>
				<TMPL_IF HEA>
					<li class="ln-logo ln-logo-hea"><div>&nbsp;</div></li>
				</TMPL_IF>
			</ul>
		</div>
       <div class="right">
            <ul id="support-links">
                 <li>24/7 Search and Technical Assistance <b>1-866-277-8407</b></li>
            </ul>
        </div>
	</div>
</div>

<div class="reportCon reportResults lh4">			   
	<div class="dataCon">	
	<div style="width: 97%;" class="rightCon" id="content">
			<div style="margin-left:10px;margin-right:10px;">
				<p>&#160;</p>
				<p><strong>Important:</strong>
				<TMPL_IF WATER_DOWN_NON_FCRA>
					 &#160; Contact &amp; Locate is provided by LexisNexis
					 Risk Solutions FL Inc. Contact &amp; Locate is not provided
					 by "consumer reporting agencies", as that term is defined in the
					 Fair Credit Reporting Act (15 U.S.C. &#167; 1681, et seq.) ("FCRA") and
					 does not constitute a "consumer report," as that term is defined in
					 the FCRA.  Contact &amp; Locate may not be used in whole or in
					 part as a factor in determining eligibility for credit, insurance, or
					 employment or for any other eligibility purpose that would qualify it
					 as a consumer report under the FCRA.
				<TMPL_ELSE>
					  &#160; The Public Records and commercially available data
					  sources used on reports have errors.&#160; Data is sometimes
					  entered poorly, processed incorrectly and is generally not
					  free from defect.&#160; This system should not be relied upon
					  as definitively accurate.&#160; Before relying on any data
					  this system supplies, it should be independently verified.&#160;
					  For Secretary of State documents, the following data is for
					  information purposes only and is not an official record.&#160;
					  Certified copies may be obtained from that individual state's
					  Department of State.&nbsp; The criminal record data in this
					  product or service may include records that have been expunged,
					  sealed, or otherwise have become inaccessible to the public
					  since the date on which the data was last updated or collected.
				</TMPL_IF>
			</div>

			<br/>
			<br/>

			<div align="left">
			&nbsp;<b>Results For:</b> <TMPL_VAR NAME="FULL_NAME">&nbsp;&nbsp;

			<TMPL_IF NAME="DOB">
			&nbsp;<b>DOB:</b>&nbsp;<TMPL_VAR NAME="DOB">&nbsp;&nbsp;
			</TMPL_IF>

			<TMPL_IF NAME="SSN">
			&nbsp;<b>SSN:</b>&nbsp;<TMPL_VAR NAME="SSN">&nbsp;&nbsp;
			</TMPL_IF>

			<TMPL_IF NAME="UNIQUEID">
			&nbsp;<b>LexID:</b>&nbsp;<TMPL_VAR NAME="UNIQUEID">
			</TMPL_IF>
			<br>
			<br>
			</div>

			<div class="rep-title">
				<h2 style="font-size: 120%;">
					Business Link Results
				</h2>
			</div>

			<div align="center" id="searchResults">
			<TMPL_IF NAME="RESULTS">
			<TMPL_VAR NAME="RESULTS">
			<TMPL_ELSE>
			<span class="unifont1"><TMPL_VAR NAME="SEARCH_ERROR_MESSAGE"></span>
			</TMPL_IF>

			</div>
		</div>	
	</div>
</div>
</form>
<TMPL_INCLUDE NAME="search_hidden_form.tpl">
<TMPL_INCLUDE NAME="map/hidden_form.tpl">
</body>
</html>
<!-- end: $RCSfile: search_popup.tpl,v $ -->
