<div class="rpt_container">

    <!-- sample report -->
    <table class="table data_table rpt_table sample_table two_col" data-report="user_grp_summary_vertical_by_type">
        <colgroup>
            <col class="rpt_sample2_col1">
            <col class="rpt_sample2_col2">
        </colgroup>
        <thead>
            <tr>
                <th>Searches by Type<TMPL_UNLESS DOWNLOAD> </TMPL_UNLESS></th>
                <th>Count<TMPL_UNLESS DOWNLOAD> </TMPL_UNLESS></th>
            </tr>
        </thead>
        <tbody>
            <TMPL_LOOP NAME=RESULTS_BY_SEARCH_TYPE>
                <tr>
                    <td><TMPL_VAR NAME="SEARCH_LABEL"></td>
                    <td><TMPL_VAR NAME="SEARCH_COUNT"></td>
                </tr>
            </TMPL_LOOP>  
        </tbody>
        <tfoot>
            <tr class="total_count bold">
                <td><div align="right">Total:</div></td>
                <td><TMPL_VAR NAME="RESULTS_BY_SEARCH_TYPE_COUNT"></td>
            </tr>
        </tfoot>
    </table>

    <TMPL_IF SHOW_SEARCH_REFERENCE_CODE_SECTION>    
        <table class="table data_table rpt_table sample_table two_col" data-report="user_grp_summary_vertical_by_refcode">
        <colgroup>
            <col class="rpt_sample2_col1">
            <col class="rpt_sample2_col2">
        </colgroup>
        <thead>
            <tr>
                <th>Searches by Reference ID<TMPL_UNLESS DOWNLOAD> </TMPL_UNLESS></th>
                <th>Count<TMPL_UNLESS DOWNLOAD> </TMPL_UNLESS></th>
            </tr>
        </thead>
        <tbody>
               <TMPL_LOOP NAME=RESULTS_BY_REFERENCE_CODE>
                <tr>
                    <td><TMPL_VAR NAME="SEARCH_LABEL"></td>
                    <td><TMPL_VAR NAME="SEARCH_COUNT"></td>
                </tr>
            </TMPL_LOOP>    
        </tbody>
        <tfoot>
            <tr class="total_count bold">
                <td><div align="right">Total:</div></td>
                <td><TMPL_VAR NAME="RESULTS_BY_REFERENCE_CODE_COUNT"></td>
            </tr>
        </tfoot>       
    </table>
    </TMPL_IF>
    
    <TMPL_IF SHOW_SEARCH_AVERAGES_SECTIONS>
        <table class="table data_table rpt_table sample_table two_col" data-report="user_grp_summary_vertical_avg_by_type">
            <colgroup>
                <col class="rpt_sample2_col1">
                <col class="rpt_sample2_col2">
            </colgroup>
            <thead>
                <tr>
                    <th>Daily Average of Searches by Type<TMPL_UNLESS DOWNLOAD> </TMPL_UNLESS></th>
                    <th>Count<TMPL_UNLESS DOWNLOAD> </TMPL_UNLESS></th>
                </tr>
            </thead>
            <tbody>
                <TMPL_LOOP NAME=RESULTS_BY_SEARCH_TYPE_AVERAGE>
                    <tr>
                        <td><TMPL_VAR NAME="SEARCH_LABEL"></td>
                        <td><TMPL_VAR NAME="SEARCH_COUNT"></td>
                    </tr>
                </TMPL_LOOP> 
            </tbody>
        </table>  

        <table class="table data_table rpt_table sample_table two_col" data-report="user_grp_summary_vertical_avg_by_refcode">
            <colgroup>
                <col class="rpt_sample2_col1">
                <col class="rpt_sample2_col2">
            </colgroup>
            <thead>
                <tr>
                    <th>Daily Average of Searches by Reference ID<TMPL_UNLESS DOWNLOAD> </TMPL_UNLESS></th>
                    <th>Count<TMPL_UNLESS DOWNLOAD> </TMPL_UNLESS></th>
                </tr>
            </thead>
            <tbody>
               <TMPL_LOOP NAME=RESULTS_BY_REFERENCE_CODE_AVERAGE>
                    <tr>
                        <td><TMPL_VAR NAME="SEARCH_LABEL"></td>
                        <td><TMPL_VAR NAME="SEARCH_COUNT"></td>
                    </tr>
                </TMPL_LOOP> 
            </tbody>
        </table>
    </TMPL_IF>
    <TMPL_UNLESS DOWNLOAD>
    <div class="fl_right"><a href="#top"><i class="fa fa-14 fa-angle-up pos_1 fa-fw redtxt"></i> Top</a></div>
    <div class="clear"></div>
    </TMPL_UNLESS>
</div>