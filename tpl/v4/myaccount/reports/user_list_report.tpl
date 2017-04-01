
<TMPL_LOOP NAME ="VERTICAL_RESULTS">
  <TMPL_LOOP NAME ="VERTICAL_DATA">
    <div class="rpt_container_head">
      <span class="fl_right">
        <strong>Billgroup:</strong> <span class="urlBillGroup"><TMPL_VAR NAME="BILLGROUP_ID">-<TMPL_VAR NAME="BILLGROUP_NAME"> | <strong>Subscription:</strong><TMPL_VAR NAME="SUBSCRIPTION_ID"></span>
      </span>
      <span class="fl_clear"></span>
      <h2><TMPL_VAR NAME="VERTICAL_LABEL"></h2>
    </div>
    <table class="table data_table rpt_table userlist_table" data-report="user_list_report">
      <thead>
        <tr>
          <th id="col_rec_num">Record number</th>                                
          <th id="col_name" class="header headerSortDown">Name</th>
          <th id="col_usr_id" class="header">User ID</th>
          <th id="col_sts" class="header">Status</th>
          <th id="col_groups">Group Name(s)</th>
        </tr>
      </thead>
      <tbody>
        <TMPL_LOOP NAME="BILLGROUP_DATA">
        <tr>
          <td headers="col_rec_num"><TMPL_VAR NAME="rec_number"></td> 
          <td headers="col_name"><TMPL_VAR NAME="lastname">, <TMPL_VAR NAME="firstname"></td>
          <td headers="col_usr_id"><TMPL_VAR NAME="loginid"></td>
          <td headers="col_sts"><TMPL_VAR NAME="status"></td>
          <td headers="col_groups"><TMPL_VAR NAME="group_name"></td>
        </tr>
        </TMPL_LOOP>
      </tbody>
    </table>
  </TMPL_LOOP>
  <TMPL_UNLESS DOWNLOAD>
  	<div class="fl_right"><a href="#top"><span class="fa fa-14 fa-angle-up pos_1 fa-fw redtxt"></span> Top</a></div>
  </TMPL_UNLESS>
    <div class="clear"></div>
</TMPL_LOOP>