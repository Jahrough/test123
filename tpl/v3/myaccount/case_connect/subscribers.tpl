<script src="<TMPL_VAR JSPATH>/Accurint.js" language="Javascript" type="text/javascript"></script>
<noscript>Your browser does not support JavaScript!</noscript>
<script>
  var subscriberHelp = "<TMPL_VAR HLPPATH>" + '/v3/case_deconfliction_help.html#Subscribers';
    function open_cc_help(){
        window.open(subscriberHelp);
    }
</script>
<noscript>Your browser does not support JavaScript!</noscript>
<div class="myaccount-section-title">Manage Case Deconfliction Subscribers</div>
<a class="btn red-btn" href="javascript:void(0);" onclick="javascript:open_cc_help();" style="float:right;margin-top:-22px;margin-right:15px;">Help?</a>

<INPUT type="hidden" NAME="SELECTED_SUBSCRIBER" VALUE="">
<div class="myaccount-containers">
    <div class="sections">
        <div class="section-row">

            <fieldset class="fieldset-with-datatable">
                <div class="inline-block mgb10"><legend>Connected subscribers for: <b style="color:#464646;"><TMPL_VAR SUBSCRIBER_NAME></b></legend></div>
                <table id="account-summary" class="fieldset-datatable w100pc display dynTbl">
                    <thead class="tblHead">
                        <tr bgcolor="#CFCFCF">
                               <th id="col_oth_pty_nm"><b>Other Party Name</b></th>
                               <th id="col_email_adr"><b>Email Address</b></th>
                               <th id="col_ph"><b>Phone</b></th>
                               <th id="col_cmp_nm"><b>Company Name</b></th>
                               <th id="col_dt_con"><b>Date Connected</b></th>
                               <th id="col_dt_chn"><b>Date Changed</b></th>
                               <th id="col_st"><b>Status</b></th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr bgcolor="#ffffff">
                           <TMPL_IF SUBSCRIBER_LOOP>
                             <TMPL_LOOP NAME=SUBSCRIBER_LOOP>
                               <tbody class="tblBody">
                                 <tr>
                                   <td headers="col_oth_pty_nm"><TMPL_VAR FIRST_NAME>&nbsp;<TMPL_VAR MIDDLE_NAME>&nbsp;<TMPL_VAR LAST_NAME></td>
                                   <td headers="col_email_adr"><TMPL_VAR ALERT_EMAIL>&nbsp;</td>
                                   <td headers="col_ph"><TMPL_VAR PHONE>&nbsp;</td>
                                   <td headers="col_cmp_nm"><TMPL_VAR COMPANY_NAME></td>
                                   <td headers="col_dt_con" align="center">
                                     <TMPL_IF CONNECT_MONTH>
                                       <TMPL_VAR CONNECT_MONTH>/<TMPL_VAR CONNECT_DAY>/<TMPL_VAR CONNECT_YEAR>
                                     </TMPL_IF CONNNECT_MONTH>
                                   </td>
                                   <td headers="col_dt_chn" align="center">
                                     <TMPL_IF CHANGE_MONTH>
                                       <TMPL_VAR CHANGE_MONTH>/<TMPL_VAR CHANGE_DAY>/<TMPL_VAR CHANGE_YEAR>
                                     </TMPL_IF CHANGE_MONTH>
                                   </td>
                                   <td headers="col_st"><a class="myaccLnk" align="center" 
                                     <TMPL_IF BLOCKED> 
                                      onClick="document.forms[0].SELECTED_SUBSCRIBER.value=<TMPL_VAR NAME=CONNECTED_SUBSCRIBER_ID>;return confirm('You are choosing to connect with the other party for any new searches. Do you wish to continue?')" href="javascript:myaccount_event('CC/BL_REMOVE');" title="Unblock subscriber">Blocked
                                     <TMPL_ELSE>
                                      onClick="document.forms[0].SELECTED_SUBSCRIBER.value=<TMPL_VAR NAME=CONNECTED_SUBSCRIBER_ID>;return confirm('You are choosing to no longer connect with the other party for any new searches. Do you wish to continue?')" href="javascript:myaccount_event('CC/BL_ADD');" title="Block subscriber">Unblocked
                                     </TMPL_IF>
                                   </a></td>
                                 </tr>
                               </tbody>
                             </TMPL_LOOP>
                           </TMPL_IF>
                        </tr>
                    </tbody>
                </table>
            </fieldset>
         </div>
       </div>
    </div>
