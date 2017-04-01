<i class="fa fa-16 fa-history pos_1 fa-fw bluetxt"></i>
<span class="fa-16">Activity Report: Billgroup List</span>

<p>
</p>
<div class="formfields">
  <input type="hidden" name="SELECTED_BILLGROUP_LIST" id="SELECTED_BILLGROUP_LIST">
  <TMPL_IF EDIT_BILLGROUP_LIST>
  <input type="hidden" name="BILLGROUP_LIST_ID" id="BILLGROUP_LIST_ID" value="<TMPL_VAR BILLGROUP_LIST_ID>">
  </TMPL_IF>
  <div class="form_label"><label for="listname">List Name</label>:</div>
  <div class="form_field">
    <input type="text" name="LIST_NAME" id="listname" size="50" title="List Name" value="<TMPL_VAR LIST_NAME>" placeholder="List Name"/>
  </div>
  <div class="clear"></div>
  <div class="form_label"><label for="listname">Add Billgroups</label>:</div>
  <div class="form_field">
    <div class="fl_left">
      <strong>Available Billgroup</strong><br />
      <input type="text" name="findbillgroup1" id="findbillgroup1" size="35" title="Find Available Billgroup" placeholder="Find Available Billgroup"/>
      <p>
      <div class="list_group">
        <input type="checkbox" name="add_to" value="x1" id="add_all" /> <strong>Select All</strong>
        <div class="padl20" id='avail_billgroup'>
          <TMPL_LOOP AVAILABLE_BILLGROUPS>
          <p class="avail-checkbox-paragraph" style="margin:0;padding:0">
            <label for="<TMPL_VAR NAME=CompanyId>">
            <input id="<TMPL_VAR NAME=CompanyId>" class="add_to" type="checkbox" name="add_to" title="Select <TMPL_VAR NAME=CompanyName>" value="<TMPL_VAR NAME=CompanyId>" /><TMPL_VAR NAME=CompanyName>
            </label>
          </p>  
          </TMPL_LOOP>
        </div>
      </div>
    </div>  
    <div class="fl_left add_minus_arrow">
      <p><a href="javascript:moveSelectedGroupOptionsRight()"><i class="fa fa-2x fa-arrow-circle-right pos_1 fa-fw"></i></a></p>
      <p><a href="javascript:moveSelectedGroupOptionsLeft()"><i class="fa fa-2x fa-arrow-circle-left pos_1 fa-fw"></i></a></p>
    </div>
    <div class="fl_left">
      <strong>Assigned Billgroup</strong><br />
      <input type="text" name="findbillgroup2" id="findbillgroup2" size="35" title="Find Assigned Billgroup" placeholder="Find Assigned Billgroup" />
      <p>
      <div class="list_group">
        <input type="checkbox" name="remove_from" value="x2" id="remove_all" /> <strong>Select All</strong>
        <div class="padl20" id='asign_billgroup'>
          <TMPL_LOOP ASSIGNED_BILLGROUPS>
            <p class="assig-checkbox-paragraph" style="margin:0;padding:0">
            <label for="<TMPL_VAR NAME=CompanyId>">
            <input id="<TMPL_VAR NAME=CompanyId>" class="remove_from" type="checkbox" name="remove_from" title="Select <TMPL_VAR NAME=CompanyName>" value="<TMPL_VAR NAME=CompanyId>" /> <TMPL_VAR NAME=CompanyName>
            </label>
            </p>
          </TMPL_LOOP>  
        </div>
      </div>
    </div>
    <div class="clear"></div>
  </div>
  <div class="clear"></div>  
</div>
<div class="search_buttons">
  <div class="form_label"></div>
  <div class="form_field"><input class="btn_red" type="button" href="javascript:void(0);" onclick="save_billgroup_list()" value="Save" title="Save" /> &nbsp; <input class="btn_normal" type="button" value="Cancel" title="Cancel" onclick="javascript:history.go(-1);"/></div>
  <div class="clear"></div>
</div>
