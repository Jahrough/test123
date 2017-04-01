<TMPL_LOOP NAME ="ENTITLEMENTS">

        <div class="rpt_container_head">
            <span class="fl_right">
                <strong>Billgroup:</strong> <span class="urlBillGroup"><TMPL_VAR NAME="COMPANY_ID"></span>
            </span>
            <span class="fl_clear"></span>
            <h2><TMPL_VAR NAME="COMPANY_NAME"></h2>
        </div>
        <div class="rpt_container">
          <table class="table data_table rpt_table mgt_table mgtcol2" data-report="admin_entitlement">
            <thead>
              <tr>
                <th id="col_last_nam">Last Name</th>
                <th id="col_first_nam">First Name</th>
                <th id="col_UserID">User ID</th>
                <th id="col_edit">Edit</th>
                <th id="col_copy">Copy</th>
                <th id="col_Act">Activate/Inactivate</th>
                <th id="col_rest_pas">Reset Password</th>
                <th id="col_manage_grp">Manage Groups</th>
                <th id="col_run_rpt">Run Reports</th>
              </tr>
            </thead>
            <tbody>
              <TMPL_LOOP NAME="DATA">
              <tr>
                <td headers="col_last_nam"><TMPL_VAR NAME="LASTNAME"></td>
                <td headers="col_first_nam"><TMPL_VAR NAME="FIRSTNAME"></td>
                <td headers="col_UserID"><TMPL_VAR NAME="LOGINID"></td>
                <td headers="col_edit"><TMPL_UNLESS IS_USER_MODIFY><span class="fa fa-14 fa-check-circle pos_1 fa-fw greentxt"></span></TMPL_UNLESS></td>
                <td headers="col_copy"><TMPL_UNLESS IS_USER_COPY><span class="fa fa-14 fa-check-circle pos_1 fa-fw greentxt"></span></TMPL_UNLESS></td>
                <td headers="col_Act"><TMPL_UNLESS IS_USER_INACTIVATE><span class="fa fa-14 fa-check-circle pos_1 fa-fw greentxt"></span></TMPL_UNLESS></td>                
                <td headers="col_rest_pas"><TMPL_UNLESS IS_PASSWORD_RESET><span class="fa fa-14 fa-check-circle pos_1 fa-fw greentxt"></span></TMPL_UNLESS></td>                
                <td headers="col_manage_grp"><TMPL_UNLESS IS_GROUP_MANAGE><span class="fa fa-14 fa-check-circle pos_1 fa-fw greentxt"></span></TMPL_UNLESS></td>                
                <td headers="col_run_rpt"><TMPL_UNLESS IS_RUN_REPORT><span class="fa fa-14 fa-check-circle pos_1 fa-fw greentxt"></span></TMPL_UNLESS></td>
              </tr>                
              </TMPL_LOOP>  
            </tbody>
          </table>
          <div class="fl_right"><a href="#top"><span class="fa fa-14 fa-angle-up pos_1 fa-fw redtxt"></span> Top</a></div>
          <div class="clear"></div>
        </div>               
</TMPL_LOOP>