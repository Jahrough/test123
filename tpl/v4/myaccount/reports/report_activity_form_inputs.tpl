<style>
    .listresults{
        max-height:450px;
        overflow-y: auto;
    }    
</style>

<i class="fa fa-16 fa-history pos_1 fa-fw bluetxt"></i>
<span class="fa-16">Activity Report</span>

<p>
</p>

<div class="formfields">
    <input type="hidden" name="HELP_PAGE_NAME" value="bsp_admin_reports_activity_t.html">
    <TMPL_INCLUDE NAME=myaccount/reports/report_extra_form_inputs.tpl>  

        <div class="form_label">Select Type:</div>
        <div class="form_field nowrap">
          <input name="billgroup_type" id="bill_group" type="radio" <TMPL_UNLESS SELECT_BILLGROUP_LIST>checked="checked"</TMPL_UNLESS> value="01">
          <label for="bill_group">Billgroup</label>
          <input name="billgroup_type" id="bill_list" type="radio" <TMPL_IF SELECT_BILLGROUP_LIST>checked="checked"</TMPL_IF> value="02">
          <label for="bill_list">Billgroup List</label>
          <span title="Number of Billgroup List Saved" class="list_cnt"><TMPL_VAR ACTIVITY_BILLGROUP_LIST_COUNT></span>
        </div>
        <div class="clear"></div>
        <div class="billgroup_select">
            <input type=hidden name="BILLGROUP_LIST" id="BILLGROUP_LIST" value="">
            <input type=hidden name="CREATE_BILLGROUP_LIST" id="CREATE_BILLGROUP_LIST" value=""> 
            <div class="form_label">Billgroup:</div>
            <div class="form_field" style="width:80%">
              <TMPL_INCLUDE NAME=myaccount/reports/report_shared_form_billgroup_select.tpl>            </div>
            <div class="clear"></div>
        </div>
        <div class="bgrouplist">
          <input type=hidden id="BILLGROUP_LIST_ID" name="BILLGROUP_LIST_ID"> 
          <div class="form_label">Billgroup List:</div>
          <div class="form_field">
            <table class="table data_table saved_billgroup_table">
              <colgroup>
                <col class="saved_bgroup_table_col1" />
                <col class="saved_bgroup_table_col2" />
                <col class="saved_bgroup_table_col3" />
                <col class="saved_bgroup_table_col4" />
                <col class="saved_bgroup_table_col5" />
              </colgroup>
              <thead>
                <tr>
                  <th id="col_lst_nam">List Name <i class="fa fa-angle-down fa-fw"></i></th>
                  <th id="col_run">Run Report</th>
                  <th id="col_view">View</th>
                  <th id="col_edit">Edit</th>
                  <th id="col_del">Delete</th>
                </tr>
              </thead>
              <tbody>
                <TMPL_IF ACTIVITY_BILLGROUP_LIST>
                <TMPL_LOOP ACTIVITY_BILLGROUP_LIST>
                <tr class="new_list">
                      <td><span class="urlListName"><TMPL_VAR DESCRIPTION></span></td>
                      <td><a class="iconButton" title="Run report for this list" href="#" onClick="javascript:run_activity_billgroup_report('<TMPL_VAR LIST>'); return false;"><i class="fa fa-13 fa-file-text pos_1 fa-fw"></i></a></td>
                      <td><a class="view_list iconButton" href="javascript:void(0);" data-view-html="<TMPL_VAR LIST_VIEW>" title="View List"><i class="fa fa-13 fa-eye pos_1 fa-fw"></i></a></td>
                      <td><a class="iconButton" href="#" onClick="javascript:edit_billgroup_list('<TMPL_VAR LIST_ID>'); return false;" title="Edit List"><i class="fa fa-13 fa-edit pos_1 fa-fw"></i></a></td>
                      <td><a class="remove_list iconButton" href="#" onClick="javascript:delete_billgroup_list('<TMPL_VAR LIST_ID>','<TMPL_VAR DESCRIPTION>'); return false;" title="Delete List"><i class="fa fa-13 fa-trash pos_1 fa-fw"></i></a></td>
                </tr>
                </TMPL_LOOP>
                <TMPL_ELSE>
                  <tr>
                    <td colspan="5">No Billgroup List available. Please create one.</td>
                  </tr> 
                </TMPL_IF>
              </tbody>
            </table>
          </div>
        </div>        
</div>          	



<div class="search_buttons">
    <div class="form_label"></div>
    <div class="form_field">
        <a class="submitBtn billGrpRpt" value="Run Report" title="Run Report">Run Report</a>
    </div>
    <div class="clear"></div>
</div>     

<div aria-hidden="true" aria-labelledby="disableSearch" role="dialog" aria-live="polite" class="modal fade bs-example-modal-sm" id="delete_list_confirm" 
 style="height: auto; width: auto;">
  <div class="modal-dialog trap">
    <div class="modal-content">
      <div class="modal-header">
        <div class="fa-16"><span class="fa fa-20 fa-list pos1 fa-fw redtxt"></span> <span class="list_name"></span></div>
      </div>
      <div class="modal-body">
        <div class="row">
          <p>
            Are you sure you want to delete this list?  <span class="fl_right"><a class="remove_new_list" href="javascript:void(0);" data-dismiss="modal">Yes</a>&nbsp; | &nbsp;<a href="javascript:void(0);" data-dismiss="modal">No</a></span><span class="clear"></span>
          </p>
        </div>
      </div>
    </div>
  </div>
</div>        

<div aria-hidden="true" aria-labelledby="disableSearch" role="dialog" aria-live="polite" class="modal fade bs-example-modal-sm" id="view_list_details" 
 style="height: auto; width: auto;">
  <div class="modal-dialog trap">
    <div class="modal-content">
      <div class="modal-header">
        <span class="fl_right"><a href="javascript:void(0);" data-dismiss="modal">Cancel</a></span><span class="clear"></span>
        <div class="fa-16"><span class="fa fa-20 fa-list pos1 fa-fw redtxt"></span> <span class="list_name"></span></div>
      </div>
      <div class="modal-body">
        <div class="row">
          <div id="list_table">
          </div>
        </div>
      </div>
    </div>
  </div>
</div>        
