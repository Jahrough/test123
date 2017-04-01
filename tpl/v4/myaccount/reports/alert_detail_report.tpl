<TMPL_LOOP NAME ="ALERT_BY_USER_LOOP">
        <div class="rpt_container_head">
            <span class="fl_right">
                <strong>Billgroup:</strong> <span class="urlBillGroup"><TMPL_VAR NAME="BILLGROUP"></span>
            </span>
            <span class="fl_clear"></span>
            <h2><TMPL_VAR NAME="DESCRIPTION"></h2>
        </div>
       <div class="rpt_container">
         <table class="table data_table rpt_table mgt_table mgtcol2">
           <thead>
             <tr>
               <th id="col_nam">Name</th>
               <th id="col_UserID">User ID</th>
               <th id="col_alt">Number of Alerts</th>
               <th id="col_runs">Number of Alert Runs</th>
               <th id="col_res">Runs With Results</th>
             </tr>           
           </thead>
           <tbody>
             <TMPL_LOOP USER_LOOP>
             <tr>
               <td headers="col_nam"><TMPL_VAR last_name>, <TMPL_VAR first_name></td>
               <td headers="col_UserID"><TMPL_VAR login_id></td>
               <td headers="col_alt"><TMPL_VAR alert_count></td>
               <td headers="col_runs"><TMPL_VAR run_count></td>
               <td headers="col_res"><TMPL_IF result_count><TMPL_VAR result_count><TMPL_ELSE>0</TMPL_IF></td>               
             </tr>
             </TMPL_LOOP>
           </tbody>
         </table>
       </div>
</TMPL_LOOP>
<TMPL_LOOP NAME="ALL_ALERT_LOOP">
        <div class="rpt_container_head">
            <span class="fl_right">
                <strong>Billgroup:</strong> <span class="urlBillGroup"><TMPL_VAR NAME="BILLGROUP"></span>
            </span>
            <span class="fl_clear"></span>
            <h2><TMPL_VAR NAME="DESCRIPTION"></h2>
        </div>
       <div class="rpt_container">
         <table class="table data_table rpt_table mgt_table mgtcol2">
           <thead>
             <tr>
               <th id="col_alrt_typ">Alert Type</th>
               <th id="col_sub_nam">Subscription Name</th>
               <th id="col_rst_fnd">Result Found?</th>
               <th id="col_dt_run">Date Run</th>
               <th id="col_usr_id">User ID</th>
             </tr>           
           </thead>
           <tbody>
             <TMPL_LOOP SUBSCRIBER_LOOP>
             <tr>
               <td headers="col_alrt_typ"><TMPL_VAR alert_type></td>
               <td headers="col_sub_nam"><TMPL_VAR SubscriptionName></td>
               <td headers="col_rst_fnd"><TMPL_IF RecordCount><span class="fa fa-14 fa-check-circle pos_1 fa-fw greentxt"></span> Y<TMPL_ELSE><span class="fa fa-14 fa-times-circle pos_1 fa-fw redtxt"></span> N</TMPL_IF></td>
               <td headers="col_dt_run"><TMPL_VAR DateAdded></td>
               <td headers="col_usr_id"><TMPL_VAR login_id></td>               
             </tr>
             </TMPL_LOOP>
           </tbody>
         </table>
       </div>
</TMPL_LOOP>