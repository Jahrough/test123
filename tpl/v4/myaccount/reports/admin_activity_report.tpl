<TMPL_LOOP NAME ="SECURITY_LOGS">
  <div class="rpt_container_head">
    <span class="fl_right">
      <strong>Billgroup:</strong> <span class="urlBillGroup"><TMPL_VAR NAME="COMPANY_ID"></span>
    </span>
    <span class="fl_clear"></span>
    <h2><TMPL_VAR NAME="COMPANY_NAME"></h2>
  </div>
  <div class="rpt_container">
    <table class="table data_table rpt_table mgt_table mgtcol2" data-report="<TMPL_IF INDIVIDUAL_ADMIN_ACTIVITY>admin_ind_activity<TMPL_ELSE>admin_all_activity</TMPL_IF>" data-download="<TMPL_IF DOWNLOAD>1<TMPL_ELSE>0</TMPL_IF>" data-notes="<TMPL_IF NOTES>1<TMPL_ELSE>0</TMPL_IF>">
      <thead>
        <tr>
          <th id="col_dttm">Date/Time <span class="fa fa-angle-down fa-fw"></span></th>
          <TMPL_UNLESS REPORT_BY_USER>
            <th id="col_adm">Admin <span class="fa fa-angle-down fa-fw"></span></th>
          </TMPL_UNLESS>
          <th id="col_evt">Event Type <span class="fa fa-angle-down fa-fw"></span></th>
          <th id="col_afcres">Affected Resource <span class="fa fa-angle-down fa-fw"></span></th>
          <th id="col_actyp">Access Type <span class="fa fa-angle-down fa-fw"></span></th>
          <th id="col_succ">Success? <span class="fa fa-angle-down fa-fw"></span></th>
          <th id="col_src">Source <span class="fa fa-angle-down fa-fw"></span></th>
          <th id="col_nots">Notes</th>
        </tr>
      </thead>
      <tbody>
        <TMPL_LOOP NAME ="COMPANYDATA">
          <tr>
            <td headers="col_dttm"><TMPL_VAR DATE_TIME></td>
            <TMPL_UNLESS REPORT_BY_USER>
              <td headers="col_adm"><TMPL_VAR ADMIN></td>
            </TMPL_UNLESS>
            <td headers="col_evt"><TMPL_VAR EVENT_TYPE></td>
            <td headers="col_afcres"><TMPL_VAR AFFECTED_RESOURCE></td>
            <td headers="col_actyp"><TMPL_VAR ACCESS_TYPE></td>
            <td headers="col_succ"><TMPL_IF SHOW_CROSS><span class="fa fa-14 fa-times-circle pos_1 fa-fw redtxt"></span><TMPL_ELSE><span class="fa fa-14 fa-check-circle pos_1 fa-fw greentxt"></span></TMPL_IF><TMPL_VAR SUCCESS></td>
            <td headers="col_src"><TMPL_VAR SOURCE></td>
            <td headers="col_nots" data-notes="<TMPL_IF NOTES><TMPL_VAR NOTES><TMPL_ELSE>none</TMPL_IF>"><a class="view_notes" href="#">View</a></td>
          </tr>
        </TMPL_LOOP>
      </tbody>
    </table>
  <div class="fl_right"><a href="#top"><span class="fa fa-14 fa-angle-up pos_1 fa-fw redtxt"></span> Top</a></div>
  <div class="clear"></div>
    
  </div>  
</TMPL_LOOP>