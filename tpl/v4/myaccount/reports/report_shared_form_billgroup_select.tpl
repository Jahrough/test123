<table id="billGroupList" class="table data_table activity_table" width="100%">
  <thead>
    <tr>
      <th id="col_lst_nam"><input class="allCheck" type="checkbox" name="all_billgroup" value="all" title="Select All" id="checkall"></th>
      <th id="col_frst_nam">Billgroup</th>
    </tr>
  </thead>
  <tbody>
    <TMPL_LOOP NAME=BILLGROUPLOOP>                        
    <tr>
      <td headers="col_lst_nam"><input class="chkBillGroups" type="checkbox" name="<TMPL_VAR NAME=CompanyId>" value="<TMPL_VAR NAME=CompanyId>" title="Select <TMPL_VAR NAME=CompanyName>"></td>
      <td headers="col_frst_nam"><span class="defaultBillGroup"><TMPL_VAR NAME=CompanyName></span></td>
    </tr>
    </TMPL_LOOP>
  </tbody>
</table>  

       	
