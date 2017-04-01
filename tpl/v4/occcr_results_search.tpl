<!-- ========================== OCCCR RESULTS PAGE ========================== -->
<link rel="stylesheet" type="text/css" media="screen" href="<TMPL_VAR NAME='CSSPATH'>/occcr.css">
<!-- ============= JavaScript ============= -->
<script type="text/javascript" src="<TMPL_VAR NAME=JSPATH>/v4/occcr_results.js"></script>

<!-- ============= Top Notice ============= -->
<div id="StepOneInstructions">
	<span class="stepOneInstructions1">* Entry Required.  </span>
	<span class="stepOneInstructions3"><i class="fa fa-dollar"></i></span>
	<span class="stepOneInstructions2"> Additional Fees Apply</span>
	<span class="stepOneInstructions1">. Please see </span>
	<span class="stepOneInstructions4"><a href="javascript:void(0);" data-helpid = "OCCCR_FEES"><u>Fee Notice</u></a></span>
</div>
<br />

<!-- ============= Part One Area ============= -->
<div id="PartOneArea">
    <!-- Start Step 1============= -->
	<div id="PartOneHeader" class="ResultsPartHeader">
	   Direct to Source Results
	</div>
	<div id="ResultsRefreshLink">
	   <a id="occcr_result1" href="javascript:send_portal_event('SEARCH2/SHOW_OCCCR_RESULTS');">Refresh</a>
	</div>
	<div class="PartOneTopPagnation" >
	</div>
	
	
	<table id="occcrorderslist" class="occcrresultsmaintbl maintblborders paged table-hover active_paged">
		<THEAD>
			<tr id="tbsrchhdr">
				<th class="sortable sort_icon caret_down" style="width: 18%">Subject<br /><span style="color: rgb(0, 0, 0);" class="descripG">(Person/Company)</span></th> 
				<th class="sortable sort_icon caret_down" nowrap="nowrap" style="align: center; width: 7%">Status</td>
				<th style="width: 25%">Request Type</th>
				<th class="sortable sort_icon caret_down" style="width: 12%">Order Number</th>
				<th class="sortable sort_icon caret_down" style="width: 12%">Date Submitted</th>
				<th class="sortable sort_icon caret_down" style="width: 12%">Date Completed</th>
				<th>Results</th>
			</tr>
		</THEAD>
		<tbody>
		</tbody>
	</table>
	<div id="loading"> 
	   <img src="<TMPL_VAR NAME=IMGPATH>/loader.gif" alt="In Progress Indicator"/> Loading...
	</div>
	
	
</div>


<!-- ============= Part Two Area ============= -->
<div id="PartTwoArea" style="margin-top: -15px;">
	<table style="font-size:12px" cellpadding="2" cellspacing="0" class="maintblnoborders" width="95%">                   
		<tr>
			<td colspan="7"><div align="right">Your use of this service is subject to: <a href="http://www.lexisnexis.com/risk/terms/" target="_blank">Terms &amp; Conditions</a></div></td>
		</tr>
		<tr class="labelCell" >
			<td align="left" colspan="7"><img src="<TMPL_VAR NAME=IMGPATH>/ico_newsearch.gif" alt="New Business Assurance Search" width="16px" height="16px"/>&nbsp;&nbsp;<a id="business_assurance1" href="javascript:send_portal_event('SEARCH2/SHOW_BUSINESS_ASSURANCE');">New Business Assurance Search</a>
			</b></strong></td>
		</tr>
		<tr class="labelCell" >
			<td align="left" colspan="7"><img src="<TMPL_VAR NAME=IMGPATH>/ico_newsearch.gif" alt="New OCCCR Search" width="16px" height="16px"/>&nbsp;&nbsp;<a id="occcr_result1" href="javascript:send_portal_event('SEARCH2/SHOW_OCCCR');">New OCCCR Search</a>
			</b></strong></td>
		</tr>
		
    </table> 
		   
</div>
<br />

<!-- ============= Part Two Area ============= -->
<div id="PartThreeArea">
    <!-- Start Step 1============= -->
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
