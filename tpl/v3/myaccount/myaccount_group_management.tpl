<!-- begin myaccount_group_management.tpl -->


<div class="myaccount-section-title"><TMPL_VAR TITLE></div>
<div class="myaccount-containers">
    <div class="section">
            <div class="section-row">
                <fieldset>
                <table border="0" cellpadding="2" cellspacing="0" width="100%">

                        <TMPL_IF NAME=REPORT_SUBMITTED>
                            <tr>	
                              <td align="center" colspan="2">
                                    <div class="successmessage pd10 bold">
                                        Your report request has been submitted. Once available, you can view it in the Report Manager.
                                    </div>
                              </td>
                            </tr>
                        </TMPL_IF>
                        
                        <TMPL_IF NAME=ERROR_MSG>
                            <tr>	
                              <td align="center" colspan="2">
                                    <div class="errormessage pd10 bold">
                                        There was a problem submitting your report request, please contact your system administrator.
                                    </div>
                              </td>
                            </tr>
                        </TMPL_IF>
               
                        <tr style="vertical-align:top;">
                            <td class="bold" style="text-align:right">
                                <span class=red-text>*&nbsp;</span><span id="rpt_typ">Report Type:</span>
                            </td>
                           <td>
                                <table border="0" width="100%" cellpadding="2">
                                    <tr>
                                            <td class="unifont1" nowrap="nowrap" colspan="3">
                                              <input aria-labelledby="rpt_typ" type="radio" id="mg_ftr_rpt" name="mgmt_reporting" value="group_feature" <TMPL_IF NAME=SET_FEATURE>CHECKED</TMPL_IF> onClick="disable_groups(true);"><label for="mg_ftr_rpt">Management Feature Report (all billgroups)</label>
                                            </td>
                                    </tr>
                                    <tr>
                                            <td class="unifont1" nowrap="nowrap" colspan="3">
                                              <input aria-labelledby="rpt_typ" type="radio" id="mg_grp_rpt" name="mgmt_reporting" value="user_group" <TMPL_IF NAME=SET_USER_GROUP>CHECKED</TMPL_IF> onClick="disable_groups(false);"><label for="mg_grp_rpt">Management Group Report (select billgroup(s) to include)</label>
                                            </td>
                                    </tr>

                                </table>
                           </td>                                                        
                        </tr>

                               <tr>
                                    <td class="bold" style="text-align:right" width="15%">
                                        <span class=red-text>*&nbsp;</span><label for="output_format">Report Format:</label>
                                    </td>
                                    <td>
                                        <table border="0" width="100%" cellpadding="2">
                                            <tr>
                                                <td class="unifont1" nowrap="nowrap">
                                                    <select name="OUTPUT_FORMAT" id="output_format">
                                                        <option value="pdf" <TMPL_IF NAME='PDF'> selected</TMPL_IF>>PDF</option>
                                                        <option value="html" <TMPL_IF NAME='HTML'> selected</TMPL_IF>>HTML</option>
                                                        <option value="csv" <TMPL_IF NAME='Excel'> selected</TMPL_IF>>Excel</option>
                                                    </select>
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                        
                        <TMPL_IF NAME="MGMT_RESULTS">
                            <tr style="vertical-align:top;">
                                <td class="bold" style="text-align:right">
                                    <span class=red-text>*&nbsp;</span><span id="sel_bil_grp">Select Billgroup(s):</span>
                                </td>
                               <td>
                                    <table border="0" width="100%" cellpadding="2">
                                        <tr>
                                                <td>
                                                    <input aria-labelledby="sel_bil_grp" type="checkbox" name="SELECT_ALL" id="select_all" value="" onClick="selectall(this);" /><label for="select_all">Click to select/deselect all</label>
                                                </td>
                                        </tr>
  	                                    <TMPL_LOOP NAME="MGMT_RESULTS">
                                        <tr>
                                            <td>
                                                <input aria-labelledby="sel_bil_grp" type="checkbox" name="MGMT_CHECKBOX" id="id-<TMPL_VAR COMPANY_ID>" value="<TMPL_VAR COMPANY_ID>" <TMPL_IF NAME=MGMT_CHECKED>CHECKED</TMPL_IF>/>&nbsp;<label for="id-<TMPL_VAR COMPANY_ID>"><TMPL_VAR NAME="COMPANY_NAME"></label>
                                            </td>
                                        </tr>
                                        </TMPL_LOOP>


                                    </table>
                               </td>                                                        
                            </tr>
                        </TMPL_IF>


                    </tbody>
                </table>
                <br/>
                <table border="0" cellpadding="2" cellspacing="0" width="100%">
                    <tbody>
                        <tr>
                            <td>&nbsp;<span class=red-text>Run Report:</span></td>
                            <td>
                                <input class="btn red-btn" type="button" name="Run" value=" Run" onClick="if(! validate_management_report(document.forms[0].mgmt_reporting)) return false; document.forms[0].RUN_REPORT.value=1;send_event('MYACCOUNT/SHOW_MANAGEMENT_REPORTING');">
                                <input class="btn grey-btn" type="button" name="Reset" value=" Reset" onClick="reset_form();">
                            </td>

                        </tr>

                    </tbody>
                </table>

                </fieldset>

        </div>
    </div>
</div>




<INPUT TYPE="HIDDEN" NAME="NEXT_PAGE_DATE" VALUE="<TMPL_VAR NAME=NEXT_PAGE_DATE>">
<INPUT TYPE="HIDDEN" NAME="PREV_PAGE_DATE" VALUE="<TMPL_VAR NAME=PREV_PAGE_DATE>">
<INPUT TYPE="HIDDEN" NAME="PAGE_COUNT" VALUE="<TMPL_VAR NAME=PAGE_COUNT>">
<INPUT TYPE="HIDDEN" NAME="PAGE_TOTAL" VALUE="<TMPL_VAR NAME=PAGE_TOTAL>">
<INPUT TYPE="HIDDEN" NAME="PAGE_RECORDS" VALUE="<TMPL_VAR NAME=PAGE_RECORDS>">
<INPUT TYPE="HIDDEN" NAME="RUN_REPORT" VALUE="">
<span class="smallfont1">&nbsp;<br></span>

<script>
//init
if(document.getElementsByName('mgmt_reporting')[0].checked==true) {
    disable_groups(true);
}
else {
    disable_groups(false);
}


function disable_groups(set) {
    document.getElementById('select_all').disabled=set;
    ur=document.getElementsByName('mgmt_reporting');
        if(ur[0].checked==set) {
            mc=document.getElementsByName('MGMT_CHECKBOX');
            for(i=0;i<mc.length; i++) {
                mc[i].disabled=set;
            }
            return true;
    }
}

function selectall(sa) {
  cbox = document.getElementsByName("MGMT_CHECKBOX");
  for(i=0;i<cbox.length; i++) {
    cbox[i].checked=sa.checked;
  }
}
</script>
<noscript>Your browser does not support JavaScript!</noscript>
<!-- end myaccount_group_management.tpl -->
