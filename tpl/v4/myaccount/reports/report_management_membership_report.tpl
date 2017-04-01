<TMPL_LOOP NAME ="BILLGROUP_RESULTS">
  <TMPL_LOOP NAME ="BILLGROUP_DATA">
    <div class="rpt_container_head">
      <span class="fl_right">
        <strong>Billgroup:</strong> <span class="urlBillGroup"><TMPL_VAR NAME="BILLGROUP_ID">|<strong>Subscription:</strong><TMPL_VAR NAME="SUBSCRIPTION_ID"></span>
      </span>
      <span class="fl_clear"></span>
      <h2><TMPL_VAR NAME="VERTICAL_LABEL"></h2>
    </div>
    <div class="rpt_container">
      <TMPL_LOOP VERTICAL_DATA>
        <TMPL_UNLESS NO_GROUP_DATA>
          <span style="display: inline;" class="gnames"><strong>Group</strong>: 
              <span class="gname_02"><TMPL_VAR NAME="GROUP_NAME"></span>
          </span><br/>
          <table class="table data_table rpt_table" data-report="mgmt_grp_user_membership">
            <thead>
              <tr>
                <th id="col_name" class="header headerSortDown">Name</th>
                <th id="col_user" class="header">User ID</th>
              </tr>
            </thead>
            <tbody>
            <TMPL_LOOP NAME="GROUP_DATA">
              <tr>
                <td headers="col_name"><span><TMPL_VAR NAME="NAME"></span></td>
                <td headers="col_user"><span><TMPL_VAR NAME="LOGIN_ID"></span></td>
              </tr>                
            </TMPL_LOOP>           
            </tbody>
          </table>
        <TMPL_ELSE>
          <div class="rpt_container_head">
            <h2>The following users are not members of any user groups.</h2>
          </div>
          <div class="rpt_container">
            <table class="table data_table rpt_table" data-report="mgmt_grp_user_membership_no_grp_data">
              <thead>
                <tr>
                  <th id="col_name" class="header headerSortDown">Name</th>
                  <th id="col_user" class="header">User ID</th>
                </tr>
              </thead>
              <tbody>
                <TMPL_LOOP NAME="NO_GROUP_DATA">
                <tr>
                  <td headers="col_name"><span><TMPL_VAR NAME="NAME"></span></td>
                  <td headers="col_user"><span><TMPL_VAR NAME="LOGIN_ID"></span></td>
                </tr>                
                </TMPL_LOOP>           
              </tbody>
            </table>
          </div>
        </TMPL_UNLESS>    
      </TMPL_LOOP>
      <div class="fl_right"><a href="#top"><span class="fa fa-14 fa-angle-up pos_1 fa-fw redtxt"></span> Top</a></div>
      <div class="clear"></div>    
    </div>
  </TMPL_LOOP>
</TMPL_LOOP>