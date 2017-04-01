<TMPL_LOOP NAME ="BILLGROUP_RESULTS">
    <TMPL_LOOP NAME ="BILLGROUP_DATA">
        <div class="rpt_container_head">
            <span class="fl_right">
                <strong>Billgroup:</strong> <span class="urlBillGroup"><TMPL_VAR NAME="BILLGROUP_ID">| <strong>Subscription:</strong> <TMPL_VAR NAME="SUBSCRIPTION_ID"></span>
            </span>
            <span class="fl_clear"></span>
            <h2><TMPL_VAR NAME="VERTICAL_LABEL"></h2>
        </div>
        <div class="rpt_container">
          <!-- management report -->
          <span style="display: inline;" class="gnames"><strong>Groups</strong>: 
              <TMPL_LOOP NAME="VERTICAL_GROUPS">
                  <span class="gname_02"><TMPL_VAR NAME="GROUP_NAME">, </span>
              </TMPL_LOOP>       
          </span><br/>
          <table class="table data_table" style="width: 100%" data-report="mgmt_grp_user_features">
            <thead>
              <tr>
                <th class="header headerSortDown">Search Name</th>
                <TMPL_LOOP NAME="VERTICAL_GROUPS">
                    <th class="header non_sorted"><span class="gname_02"><TMPL_VAR NAME="GROUP_NAME">(<TMPL_VAR NAME="USER_COUNT">)</span>
                    </th>
                </TMPL_LOOP>
              </tr>
            </thead>
            <tbody>
              <TMPL_LOOP NAME="VERTICAL_SEARCHES">
                <tr>
                  <td><TMPL_VAR NAME="SEARCH_NAME"></td>
                   <TMPL_LOOP NAME="SEARCH_ENABLED">
                     <td>
                       <TMPL_IF NAME="ENABLED">
                       		<img src="<TMPL_VAR NAME=IMGPATH>/PNGs/greencheckmark-circle-15x15.png" alt="Green Checkmark" />
                       <TMPL_ELSE>
                           <span><TMPL_VAR VALUE></span>
                       </TMPL_IF>
                     </td>
                  </TMPL_LOOP>  
                </tr>                
              </TMPL_LOOP>  
            </tbody>
          </table>
          <!-- /management report -->
          <div class="fl_right"><a href="#top"><span class="fa fa-14 fa-angle-up pos_1 fa-fw redtxt"></span> Top</a></div>
          <div class="clear"></div>
        </div>               
    </TMPL_LOOP>
</TMPL_LOOP>
<strong>DPPA Legend</strong>
<div class="clear"></div>
<TMPL_LOOP WEB20_DPPA_LOOP>
  <TMPL_VAR WEB20_DPPA_PURPOSE>. <TMPL_VAR DPPA_DESC><br>
</TMPL_LOOP>
<div class="clear"></div>
<strong>GLBA Legend</strong>
<div class="clear"></div>
<TMPL_LOOP WEB20_GLB_LOOP>
  <TMPL_VAR WEB20_GLB_PURPOSE>. <TMPL_VAR GLB_DESC><br>
</TMPL_LOOP>