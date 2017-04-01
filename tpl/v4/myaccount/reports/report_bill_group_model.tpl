<div aria-hidden="true" aria-labelledby="disableSearch" role="dialog" aria-live="polite" class="modal fade bs-example-modal-sm" id="change_billgroup" 
 style="height: 30%; width: auto; top: 30%; left: 10%">
  <div class="modal-dialog trap">
    <div id="select_billgroup_modal_content" class="modal-content">
      <div class="modal-header">
        <span class="fl_right"><a href="javascript:void(0);" data-dismiss="modal">Cancel</a></span><span class="clear"></span>
        <div class="fa-16"><span class="fa fa-20 fa-dot-circle-o pos1 fa-fw redtxt"></span> Select Billgroup</div>
      </div>
      <div id="select_billgroup_modal_body" class="modal-body">
        <div class="row">
            <strong>Billgroup</strong>: 
            <select name="billgroup2" id="billgroup2" title="Billgroup">
            <TMPL_LOOP NAME=BILLGROUPLOOP>
              <option value="<TMPL_VAR NAME=CompanyId>" <TMPL_IF NAME=Selected>selected</TMPL_IF>><TMPL_VAR NAME=CompanyName></option>
            </TMPL_LOOP>
            </select>
            <span><a class="submitBtn" href="javascript:void(0);" id="select_billgroup_btn" data-dismiss="modal">Select</a></span>
        </div>
      </div>
    </div>
  </div>
</div>        
