<!-- ========================== OCCCR RESULTS PAGE ========================== -->
<link rel="stylesheet" type="text/css" media="screen" href="<TMPL_VAR NAME='CSSPATH'>/occcr.css">
<link rel="stylesheet" type="text/css" media="print" href="<TMPL_VAR NAME='CSSPATH'>/occcr_print.css" />
<!-- ============= JavaScript ============= -->
<script type="text/javascript" src="<TMPL_VAR NAME=JSPATH>/v4/occcr_order_results.js"></script>

<!-- ============= Top Notice ============= -->
<div id="CloseWindowIconId">
	<p>
        <span>
          <a href="javascript:window.close();">
            <img src="<TMPL_VAR NAME=IMGPATH>/ico_closeWindow.gif" title="Close" width="13" height="13" /> Close
          </a>
        </span>
    </p>
</div>
<div style="float:right;">
	<div class="additional-info" >
		<button type="button" data-placement="bottom" class="btn-actions btn print-icon svg-icon-tiny" data-original-title="Print Results" aria-label="Print Results" onclick="javascript: window.print();"></button>
		<span class="tooltip tooltip-30 hover">Print</span>
	</div>
	<div class="additional-info">
			<a onclick="this.href='data:text/html;charset=UTF-8,'+encodeURIComponent(document.documentElement.outerHTML)" href="#" download="page.html"><button type="button" data-placement="bottom" class="btn-actions btn download-icon svg-icon-tiny" data-original-title="Download" aria-label="Download" ></button></a>
			<span class="tooltip tooltip-30 hover">Download</span>
	</div>
</div>
	
<br />

<div id="occcr_order_results">
	<div id="PartOneArea">
		<div id="PartOneHeader" class="ResultsPartHeader">
		   <div id="OcccrOrderTitle">LexisNexis<sup class="sup-reg-symbol">&reg;</sup> OCCCR Order Summary</div>
		   <div id="BaOrderTitle">LexisNexis<sup class="sup-reg-symbol">&reg;</sup> Business Assurance Order Summary</div>
		</div>
		
		<div id="loading"> 
		   <img src="<TMPL_VAR NAME=IMGPATH>/loader.gif" alt="In Progress Indicator"/> Loading...
		</div>
		
		<div id="RequesterArea" >
		</div>
		<br />
		<div id="ReporterArea" >
		</div>
		<br />
		<table id="occcrorderreport" class="occcrresultsmaintbl maintblborders paged table-hover active_paged">
			<THEAD>
				<tr id="tbsrchhdr">
					<th class="sortable sort_icon caret_down" nowrap="nowrap" style="align: center; width: 10%">Status</td>
					<th style="width: 20%">Date</th>
					<th class="sortable sort_icon caret_down" style="width: 40%">Message</th>
					<th>Attachments</th>
				</tr>
			</THEAD>
			<tbody>
			</tbody>
		</table>
	</div>

	<br />

	<div id="PartTwoArea">
		<div id="PartThreeHeader" class="ResultsPartHeader">
		   Key for Statuses
		</div>
		
		<div id="reportKey">
			<ul class="occcr_unmarked_list">
				<li>
				<span class="order-queued-01 svg-icon-small">&nbsp;Order has been queued.</span>
				</li>
				<li>
				<span class="order-in-process-01 svg-icon-small">&nbsp;Order is being processed.</span>
				</li>
				<li>
				<span class="order-completed-01 svg-icon-small">&nbsp;Order has completed.</span>
				</li>
				<li>
				<span class="action-required-01 svg-icon-small">&nbsp;Action is required - Please call Customer Support at 1-800-543-6862.</span>
				</li>
				<li>
				<span class="order-deleted svg-icon-small">&nbsp;Order was deleted as a duplicate.</span>
				</li>
			</ul>
		</div>	
	</div>
</div>

<div id="ba_xml_report" style="display:none;">
	
	<div id="bareport" class="ResultsPartHeader">
	   LexisNexis<sup class="sup-reg-symbol">&reg;</sup> Business Assurance Report
	</div>
	<a name="Top"></a>
	<div id="loading1"> 
	   <img src="<TMPL_VAR NAME=IMGPATH>/loader.gif" alt="In Progress Indicator"/> Loading...
	</div>
	
	<div id="BARequesterArea" style="font-size: 90%;">
	</div>
	<br />
	<span class="medgray" style="font-weight:normal;">Please consult your institution's policies and procedures for guidance on how to interpret and act on these results.</span>
	<br />
	<div style="padding-top: 10px; padding-bottom:10px;">
	<table background="images/bkg_yellow_grad.gif" width="98%" style="border:solid #ccc 3px;font-size:12px;" class="medblack leftFloat" >
		<tr>
			<td id="summary_OrderBy" style="width:50%; border-right: solid #ccc 1px; padding:6px 10px 10px 15px; vertical-align: top;">
			</td>
			<td id="summary_Report" style="width:50%; border-right: solid #ccc 1px; padding:6px 10px 10px 15px; vertical-align: top;">
			</td>
		</tr>
	</table>
	</div>
	
	
	<div id="BAReporterArea">
	</div>
	
	<div style="padding:5px; color:#666666; font-size:85%; line-height:1.1em;">
		<p>An asterisk (*)  denotes that no additional identifiers are available. LexisNexis Risk Solutions  is providing you with this record informatively, and we recommend that you seek  additional information from the Subject of this report prior to making your  decision. </p>
		<strong>NOTE:</strong> The information contained in this report is secured from numerous third parties and processed by fallible sources. Such information may contain inaccuracies for which neither LexisNexis Risk Solutions nor its subsidiary or affiliated companies shall be responsible. Additionally, this information may not be used for any purpose governed by the federal Fair Credit Reporting Act ( 15 U.S.C 1681, et seq. ) Specifically, this information may not be used to establish a consumer's eligibility for credit, insurance or employment. Further, recipient shall not use this information in a manner that is contrary to, or in violation of any applicable federal, state, or local law, rule or regulation.
	</div>

</div>
