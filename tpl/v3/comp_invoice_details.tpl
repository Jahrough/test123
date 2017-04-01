<!-- begin comp_invoice_details.tpl -->
<html>
<head>
	<title>Company Payment Summary</title>
	<TMPL_INCLUDE NAME="myaccount/myaccount_includes.tpl">

	<link href="<TMPL_VAR NAME='CSSPATH'>/simple_date_picker.css" rel="stylesheet" type="text/css">
	<script src="<TMPL_VAR NAME='JSPATH'>/simple_date_picker.js"></script>

	<script src="<TMPL_VAR NAME='JSPATH'>/common.js"></script>
	<script src="<TMPL_VAR NAME='JSPATH'>/shared.js"></script>
	<script src="<TMPL_VAR NAME='JSPATH'>/billing.js"></script>
	<script src="<TMPL_VAR NAME='JSPATH'>/acchistory.js"></script>
	<script src="<TMPL_VAR NAME='JSPATH'>/v3/jquery.dataTables.js"></script>
	<script src="<TMPL_VAR NAME='JSPATH'>/v3/extends.js"></script>
	<script>
		var account_summary;
		var account_history;
		var test = [];

		$j(function() {
			account_summary = $j('#account-summary').DataTable({
				"bPaginate": false,
				"info":false
			});
			account_history = $j('#account-history').DataTable({
				"order": [1, 'desc'],
				"bPaginate": false,
				info:false,
				"columns": [
					{ "type": "date-range" },
					{ "type": "myacc-price" },
					{ "type": "myacc-price" },
					{ "type": "myacc-price" },
					{ "type": "myacc-price" },
					{ "type": "string", "orderable": false },
					{ "type": "string", "orderable": false },
					{ "type": "string", "orderable": false },
					{ "type": "string", "orderable": false }
				]
			});
			$j.each($j('div.dataTables_wrapper div.dataTables_paginate'),function(){
				if($j(this).children('a.disabled').length === 2){
					var sel = 'div.dataTables_info,div.dataTables_paginate,div.dataTables_length';
					$j(this).parent().find(sel).css('display','none');
				}
			});
			$j('table#account-history > thead > tr > td').click(function(){
				$j('table#account-history > thead > tr > td > div').remove();
			});
		});
	</script>
	<style>
		/* Custom CSS for Billing Info tables */
		table > tbody > tr > td{
			font-size:14px;
		}
		div.section-row input[type="checkbox"]{
			margin:0;
		}
		fieldset.fieldset-with-datatable .dataTables_filter{
			display:none;
		}
		table#account-history > thead > tr > td > b{
			display: inline-block;
			text-decoration: underline;
		}
		table#account-history > thead > tr > td > input{
			float:right;
		}
		table#account-history > thead > tr > td:first-child{
			width:170px !important;
		}
		table#account-history > thead > tr > td:first-child + td{
			width:125px !important;
		}
		table#account-history > thead > tr > td:first-child + td + td{
			width:135px !important;
		}
		table#account-history > thead > tr > td:first-child + td + td + td{
			width:130px !important;
		}
		table#account-history > thead > tr > td:first-child + td + td + td + td{
			width:125px !important;
		}
		table#account-history > thead > tr > td:first-child + td + td + td + td + td{
			width:105px !important;
		}
		table#account-history > thead > tr > td:first-child + td + td + td + td + td + td{
			width:105px !important;
		}
		table#account-history > thead > tr > td:first-child + td + td + td + td + td + td + td{
			width:140px !important;
		}
		table#account-history > thead > tr > td:first-child + td + td + td + td + td + td + td + td{
			width:90px !important;
		}
		table#account-history > tbody > tr > td{
			text-align:center;
			background:#fff;
		}
		table#account-history > tbody > tr > td:first-child{
			text-align:left;
		}
		table#account-history > tbody > tr > td:first-child + td,
		table#account-history > tbody > tr > td:first-child + td + td,
		table#account-history > tbody > tr > td:first-child + td + td + td,
		table#account-history > tbody > tr > td:first-child + td + td + td + td{
			text-align:right;
		}
		table#account-history>thead>tr>td{
			text-align:center;
		}
		table#account-history>thead>tr>td:first-child,
		table#account-history>thead>tr>td:first-child + td,
		table#account-history>thead>tr>td:first-child + td + td{
			text-align:left;
		}
	</style>
</head>

<body onLoad="<TMPL_UNLESS SHOW_MYACC_WITHOUT_PARENT>setInterval('checkparent()',2000);</TMPL_UNLESS>" topmargin="0" leftmargin="0" marginwidth="0" marginheight="0"<TMPL_UNLESS ENABLE_V2> class="alternatebody"</TMPL_UNLESS>>
	<TMPL_INCLUDE NAME="myaccount/header_info.tpl">
	<form name="BILLING" action="<TMPL_VAR NAME=ACTION>" method="post">
		<TMPL_INCLUDE NAME="common_hidden_input.tpl">
		<INPUT type=hidden NAME="SKIN_TYPE" VALUE="<TMPL_VAR NAME=SKIN_TYPE>">
		<INPUT type=hidden NAME="APPLICATION_TYPE" VALUE="<TMPL_VAR NAME=APPLICATION_TYPE>">
		<INPUT type=hidden NAME="SUBJECT_ID">
		<INPUT type=hidden NAME="LOGINID">
		<INPUT type=hidden NAME="EVENT">
		<TMPL_INCLUDE NAME="myaccount/myaccount_nav.tpl">
		<div class="myaccCon" style="border-radius: 0 0 8px 8px;">
			<div>
				<div class="myaccount-section-title"><a class="btn red-btn" href="javascript:send_event('BILLING/SUMMARY');">Back</a>&nbsp;&nbsp;&nbsp;&nbsp;Billing - Invoice Details</legend></div>
				<div class="myaccount-containers">
					<div class="sections">
						<div class="section-row">
							<table>
								<tr>
									<td valign="middle">
										<TMPL_INCLUDE NAME="comp_court_invoices.tpl">
									</td>
								</tr>
							</table>
						</div>
					</div>
				</div>
			</div>
		</div>
		<TMPL_INCLUDE NAME=myaccount_footer.tpl>
	</form>
	<TMPL_INCLUDE NAME="search_hidden_form.tpl">
	<TMPL_INCLUDE NAME="billing_activity_hidden_form.tpl">
	<TMPL_INCLUDE NAME="classic_footer.tpl">
</body>
</html>
<!-- end comp_invoice_details.tpl -->
