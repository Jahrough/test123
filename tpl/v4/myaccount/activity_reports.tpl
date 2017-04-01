<div id="reportcontents">	
        <TMPL_IF NAME="DISABLED">
            <TMPL_INCLUDE NAME=myaccount_disabled.tpl>
        <TMPL_ELSE>
            <TMPL_INCLUDE NAME="myaccount/reports/report_subject_information.tpl">
                <TMPL_IF NAME="NO_RESULTS_FOUND">
                    <h2>No Results Found</h2>
                <TMPL_ELSE>
                    <TMPL_IF NAME="REPORT_TYPE_SUMMARY_REPORT">
                        <TMPL_INCLUDE NAME="myaccount/reports/report_type_summary_report.tpl">
                    </TMPL_IF>
                    <TMPL_IF NAME="REPORT_TYPE_DETAILED_REPORT">
                        <TMPL_INCLUDE NAME="myaccount/reports/report_type_detailed_report.tpl">
                    </TMPL_IF>                
                </TMPL_IF>       
        </TMPL_IF>
</div>
