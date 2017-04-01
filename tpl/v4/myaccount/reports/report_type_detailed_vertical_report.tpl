<style>
    .data_table td:nth-child(3) {
        text-align: left !important;
    }    
</style>
<div class="rpt_container">
    <table class="table data_table rpt_table detail_table" data-report="<TMPL_IF IS_GROUP_REPORT>grp_detailed_vertical<TMPL_ELSE>user_detailed_vertical</TMPL_IF>">
        <colgroup>
            <col class="rpt_detail5_col1">
            <col class="rpt_detail5_col2">
            <col class="rpt_detail5_col3">
            <col class="rpt_detail5_col4">
            <col class="rpt_detail5_col5">
            <col class="rpt_detail5_col6">
        </colgroup>
        <thead>
            <tr>
                <th id="col_prd">Product</th>
                <th id="col_acct">Account Name</th>
                <th id="col_grp">Group</th>
                <TMPL_IF IS_GROUP_REPORT>
                  <th id="col_usr">User Id</th>
                </TMPL_IF>
                <th id="col_dttm">Date/Time</th>
                <th id="col_form">Form Searched</th>
                <th id="col_srhTrm">Search Terms</th>
                <th id="col_refid">Ref ID</th>
            </tr>
        </thead>
        <tbody>
            <TMPL_LOOP NAME=SEARCH_ACTIVITY_RESULTS>
                <tr>
                    <td headers="col_prd"><TMPL_VAR NAME="PRODUCT_NAME"></td>
                    <td headers="col_acct"><TMPL_VAR NAME="COMPANY_NAME"></td>
                    <td headers="col_grp"><span class="gname_05"><TMPL_VAR NAME="GROUP_NAME"></span></td>
                    <TMPL_IF IS_GROUP_REPORT>
                        <td headers="col_usr"><TMPL_VAR NAME="LOGIN_ID"></td>
                    </TMPL_IF>
                    <td headers="col_dttm"><TMPL_VAR NAME="EVENT_DATE"></td>
                    <td headers="col_form"><TMPL_VAR NAME="SEARCH_NAME"></td>
                    <td headers="col_srhTrm"><TMPL_VAR NAME="SEARCH_TERMS"></td>
                    <td headers="col_refid"><TMPL_VAR NAME="REF_CODE"></td>
                </tr>
            </TMPL_LOOP>
        </tbody>
        <tfoot>
            <tr class="total_count bold">
                <th colspan="<TMPL_IF IS_GROUP_REPORT>7<TMPL_ELSE>6</TMPL_IF>" style="text-align:right !important">Total Searches:</th>
                <th><TMPL_VAR NAME="SEARCH_RECORD_COUNT"></th>
            </tr>
        </tfoot>
    </table>    

    <div class="fl_right"><a href="#top"><i class="fa fa-14 fa-angle-up pos_1 fa-fw redtxt"></i> Top</a></div>
    <div class="clear"></div>

</div>