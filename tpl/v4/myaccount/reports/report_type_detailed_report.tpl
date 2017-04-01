
<TMPL_LOOP NAME ="BILLGROUP_RESULTS">

    <TMPL_LOOP NAME ="BILLGROUP_DATA">
        <div class="rpt_container_head">
            <span class="fl_right">
                <strong>Billgroup:</strong> <span class="urlBillGroup"><TMPL_VAR NAME="BILLGROUP_ID">|<TMPL_VAR NAME="VERTICAL_LABEL"></span>
            </span>
            <span class="fl_clear"></span>
            <h2><TMPL_VAR NAME="VERTICAL_LABEL"></h2>
        </div>
           <TMPL_LOOP NAME ="VERTICAL_DATA">
                <TMPL_INCLUDE NAME=myaccount/reports/report_type_detailed_vertical_report.tpl>  
           </TMPL_LOOP>
               
    </TMPL_LOOP>
</TMPL_LOOP>