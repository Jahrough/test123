<!-- BEGIN pre_cdm_company_id_popup.tpl -->
<!DOCTYPE html>
<!--<TMPL_VAR NAME=SERVER_ID>-->
<html>
<head>
<title>Core Data Management - Company ID ... Internal Company Only</title>
<TMPL_INCLUDE NAME="../includes_info.tpl">
<link href="<TMPL_VAR NAME='CSSPATH'>/reports.css" rel="stylesheet" type="text/css">
<script src="<TMPL_VAR NAME='JSPATH'>/report.js"></script>
<script src="<TMPL_VAR NAME='JSPATH'>/pricing.js"></script>
<script>
function validateCompanyId()
{
var x=document.forms["PRE_CDM_COMPANY_ID"]["CDM_COMPANY_ID"].value;
x = x.replace(/(^\s+|\s+$)/g, '');
if (x==null || x=="")
  {
  alert("Company ID cannot be empty. Please enter a valid Company ID and click Submit."); 
  return false;
  }
if (!(x.match(/^\d+$/))) {
  alert("Company ID must be a valid digit string. Please enter a valid Company ID and click Submit."); 
  return false;
}
 onclick="javascript:send_event('CDM/SHOW_CDM');";
}
</script>
</head>

<body class="ac_report" topmargin="0" leftmargin="0" marginwidth="0" marginheight="0"  onLoad="window.focus();">
<TMPL_INCLUDE NAME="report_header.tpl">


<!--<form name="SHORT_BUS_REPORT" action="<TMPL_VAR NAME=ACTION_REPORT>" method="post">-->
<form name="PRE_CDM_COMPANY_ID" action="<TMPL_VAR NAME=ACTION>" onsubmit="return validateCompanyId();" method="post">
      <TMPL_INCLUDE NAME="common_hidden_input.tpl">
      <INPUT TYPE=HIDDEN NAME="EVENT" VALUE="CDM/SHOW_CDM">
      <INPUT type=hidden NAME="SKIN_TYPE" VALUE="<TMPL_VAR NAME=SKIN_TYPE>">
      <INPUT type=hidden NAME="APPLICATION_TYPE" VALUE="<TMPL_VAR NAME=APPLICATION_TYPE>">

<div id="mainbody" class="w770px reportCon">
    <div class="row-wrapper">
        <h2>Select the Company ID of Interest</h2>
    </div>
    <div class="row-wrapper">
        Enter the Company ID for the Company which the Core Data Management data is desired:
    </div>
    
    <div class="row-wrapper" style="margin-bottom:30px;">    
        <table class="info-table">
        <tbody>
            <tr>
                <td><b>Company ID:</b></td>
                <td style="padding-left:95px;"><input type=text size="20" name="CDM_COMPANY_ID" value=<TMPL_VAR NAME="CDM_COMPANY_ID">></td>
            </tr>
        </tbody>
    </table>
    </div>
    <div class="row-wrapper">
        <div class="ta-center">
            <input name="BUTTON" class="report-btn red-btn" type="submit" value="  Submit  ">
            <input name="BUTTON" class="report-btn grey-btn" type="button" value="Cancel" onClick="window.close();">
        </div>
    </div>
</div>

</form>
    <TMPL_INCLUDE NAME="../report/report_footer.tpl">

</body>
</html>
<!-- END pre_cdm_company_id_popup.tpl -->