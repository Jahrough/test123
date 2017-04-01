<TMPL_IF NAME="REPORT_SHOW_IN_MODAL">
    <!-- begin risk_admin_reports.tpl -->
    <!--<TMPL_VAR NAME=SERVER_ID>-->
    <link rel="stylesheet" type="text/css" href="<TMPL_VAR NAME=CSSPATH>/myaccount/report.css" />    
    <TMPL_IF NAME="SHOW_USER_LIST_REPORTS">
	<TMPL_INCLUDE NAME="myaccount/user_reports.tpl">        
    </TMPL_IF>
                 
    <TMPL_IF NAME="SHOW_ACTIVITY_REPORTS">
        <TMPL_INCLUDE NAME="myaccount/activity_reports.tpl">        
    </TMPL_IF>      
    
    <TMPL_IF NAME="SHOW_MANAGEMENT_REPORTS">
        <TMPL_INCLUDE NAME="myaccount/management_reports.tpl">        
    </TMPL_IF>      
<TMPL_ELSE>
<!DOCTYPE html>
<html lang="en">
    <head>
        <!-- begin risk_admin_reports.tpl -->
        <!--<TMPL_VAR NAME=SERVER_ID>-->
        <TMPL_IF PRODUCT_BASE_HREF>
        <base href="<TMPL_VAR PRODUCT_BASE_HREF>/">
        </TMPL_IF>
        <TMPL_INCLUDE NAME="myaccount/myaccount_popup_includes.tpl">
        <link rel="stylesheet" type="text/css" href="<TMPL_VAR NAME=CSSPATH>/myaccount/report.css" />
        <style>
          thead { display: table-header-group }
          tfoot { display: table-row-group }
          tr { page-break-inside: avoid }
        </style>              
    </head>

    <body topmargin="0" leftmargin="0" marginwidth="0" marginheight="0">
      <div id="content">
       <div id="container" role="dialog">
             <TMPL_INCLUDE NAME="myaccount/myaccount_header.tpl">
             <div id="maincontents" role="dialog">   
                <TMPL_IF NAME="SHOW_USER_LIST_REPORTS">
                    <TMPL_INCLUDE NAME="myaccount/user_reports.tpl">        
                </TMPL_IF>   
                 
                <TMPL_IF NAME="SHOW_ACTIVITY_REPORTS">
                    <TMPL_INCLUDE NAME="myaccount/activity_reports.tpl">        
                </TMPL_IF>   

                <TMPL_IF NAME="SHOW_MANAGEMENT_REPORTS">
                    <TMPL_INCLUDE NAME="myaccount/management_reports.tpl">        
                </TMPL_IF>   

                <TMPL_IF NAME="SHOW_ADMIN_REPORTS">
                    <TMPL_INCLUDE NAME="myaccount/admin_reports.tpl">        
                </TMPL_IF>   
                <TMPL_IF NAME="SHOW_ALERT_REPORTS">
                    <TMPL_INCLUDE NAME="myaccount/reports/alert_reports.tpl">        
                </TMPL_IF>   
                 
             </div>
        </div>
	    <TMPL_INCLUDE NAME="myaccount/myaccount_popup_footer.tpl">
      </div>
     <form name="risk_admin_reports" class="print-risk-admin-download-form">
       <input type=hidden name="USER_REPORT_SUMMARY" value="<TMPL_VAR REPORT_TYPE_SUMMARY_REPORT>">
       <input type=hidden name="USER_REPORT_DETAILED" value="<TMPL_VAR REPORT_TYPE_DETAILED_REPORT>">
       <input type=hidden name="FROM_DATE" value="<TMPL_VAR FROM_DATE>">
       <input type=hidden name="TO_DATE" value="<TMPL_VAR TO_DATE>">
       <input type=hidden name="DATE_RANGE_TYPE" value="<TMPL_VAR DATE_RANGE_TYPE>">
       <input type=hidden name="REPORT_USER_ID" value="<TMPL_VAR REPORT_USER_ID>">
       <input type=hidden name="REPORT_LOGIN_ID" value="<TMPL_VAR REPORT_LOGIN_ID>">
       <input type=hidden name="REP_DATE_RECENT" value="<TMPL_VAR REP_DATE_RECENT>">
       <input type=hidden name="ACTION_MISC" value="<TMPL_VAR ACTION_MISC>">
       <input type=hidden name="DOWNLOAD_FORMAT" value="<TMPL_VAR DOWNLOAD_FORMAT>">
       <input type=hidden name="REPORT_TYPE" value="<TMPL_VAR REPORT_TYPE>">
       <input type=hidden name="REPORT_GROUP_ID" value="<TMPL_VAR REPORT_GROUP_ID>">
       <input type=hidden name="REPORT_GROUP_DESC" value="<TMPL_VAR REPORT_GROUP_DESC>">
       
       <input type=hidden name="REPORT_BILLGROUPS" value="<TMPL_VAR REPORT_BILLGROUPS>">
       <input type=hidden name="REPORT_USER_STATUS" value="<TMPL_VAR REPORT_USER_STATUS>">
       <input type=hidden name="REPORT_MANAGEMENT_REPORT_TYPE" value="<TMPL_VAR REPORT_MANAGEMENT_REPORT_TYPE>">
       <input type=hidden name="REPORT_BILLGROUP_COMPANY_ID" value="<TMPL_VAR REPORT_BILLGROUP_COMPANY_ID>">
       <input type=hidden name="REPORT_BILLGROUP_DESCRIPTION" value="<TMPL_VAR REPORT_BILLGROUP_DESCRIPTION>">
       <input type=hidden name="REP_DATE_RECENT_LABEL" value="<TMPL_VAR DATE_RANGE>">
       <input type=hidden name="IS_GROUP_REPORT" value="<TMPL_VAR IS_GROUP_REPORT>">
       
            
       <TMPL_IF USER_LIST_REPORT>
         <input type=hidden name="DOWNLOAD_USER_LIST_REPORT" value="1">
       </TMPL_IF>
       <TMPL_IF SHOW_MANAGEMENT_REPORTS>
         <input type=hidden name="DOWNLOAD_MANAGEMENT_REPORTS" value="1">
       </TMPL_IF>
       <TMPL_IF BILLGROUP_ACTIVITY_REPORTS>
         <input type=hidden name="DOWNLOAD_BILLGROUP_ACTIVITY_REPORTS" value="1">
       </TMPL_IF>
       <TMPL_IF SHOW_ENTITLEMENT_REPORTS>
         <input type=hidden name="DOWNLOAD_ENTITLEMENT_REPORTS" value="1">
       </TMPL_IF>
       <TMPL_IF SHOW_ADMIN_ACTIVITY_REPORTS>
         <input type=hidden name="DOWNLOAD_ADMIN_ACTIVITY_REPORTS" value="1">
       </TMPL_IF>
       <TMPL_IF SHOW_ALERT_REPORTS>
         <input type=hidden name="DOWNLOAD_ALERT_REPORTS" value="1">
       </TMPL_IF>

       
       <TMPL_INCLUDE NAME="myaccount/common_myaccount_hidden_input.tpl">
     </form>
    </body>
</html>
</TMPL_IF>
<!-- end risk_admin_reports.tpl -->