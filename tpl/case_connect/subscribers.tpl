<!-- BEGIN: subscribers.tpl -->
<script src="<TMPL_VAR JSPATH>/Accurint.js" language="Javascript" type="text/javascript"></script>
<script>
  var subscriberHelp = "<TMPL_VAR HLPPATH>" + '/case_deconfliction_help.html#Subscribers';
  $('CC_HELP_OVER').toggle();
  var toggleOverHelp = function(ev){ 
    $('CC_HELP_ON').toggle();
    $('CC_HELP_OVER').toggle();
    ev.stop();
  };
  // help will point to
  $('CC_HELP_LNK').observe('mouseover',toggleOverHelp);
  $('CC_HELP_LNK').observe('mouseout',toggleOverHelp);
  $('CC_HELP_LNK').observe('click',function(ev){
    Accurint.winOpen( subscriberHelp, 'CcHelpWin' );
    ev.stop();
  });
</script>
<table border="0" cellpadding="0" cellspacing="0" width="880" class="myaccountborder">
  <tr>
    <td nowrap align="center" valign="middle" class="myaccountborder">
      <table width="860" cellpadding="0" cellspacing="0" border="0">
        <tr height="12">
          <td height="12" width="860" class="unifont1">&nbsp;</td>
        </tr>
      </table>
      <table border="0" cellpadding="0" cellspacing="0" width="860" class="myaccountbody">
        <tr>
          <td align="center">
           <div id="caseConnect">
           <div id="subscriberListView">
             <INPUT type="hidden" NAME="SELECTED_SUBSCRIBER" VALUE="">
             <h1>Manage Case Deconfliction Subscribers</h1>
             <h2>Connected subscribers for : <TMPL_VAR SUBSCRIBER_NAME></h2>
             <table class="dynTbl">
               <thead class="tblHead">
                 <tr>
                   <th class="smallfont1" align="center" valign="middle">Other Party Name</th>
                   <th class="smallfont1" align="center" valign="middle">Email Address</th>
                   <th class="smallfont1" align="center" nowrap="nowrap" valign="middle">Phone</th>
                   <th class="smallfont1" align="center" valign="middle">Company Name</th>
                   <th class="smallfont1" align="center" nowrap="nowrap" valign="middle">Date Connected</th>
                   <th class="smallfont1" align="center" nowrap="nowrap" valign="middle">Date Changed</th>
                   <th class="smallfont1" align="center" nowrap="nowrap" valign="middle">Status</th>
                 </tr>
               </thead>
               <TMPL_IF SUBSCRIBER_LOOP>
                 <TMPL_LOOP NAME=SUBSCRIBER_LOOP>
                   <tbody class="tblBody">
                     <tr>
                       <td><TMPL_VAR FIRST_NAME>&nbsp;<TMPL_VAR MIDDLE_NAME>&nbsp;<TMPL_VAR LAST_NAME></td>
                       <td><TMPL_VAR ALERT_EMAIL>&nbsp;</td>
                       <td><TMPL_VAR PHONE>&nbsp;</td>
                       <td><TMPL_VAR COMPANY_NAME></td>
                       <td align="center">
                         <TMPL_IF CONNECT_MONTH>
                           <TMPL_VAR CONNECT_MONTH>/<TMPL_VAR CONNECT_DAY>/<TMPL_VAR CONNECT_YEAR>
                         </TMPL_IF CONNNECT_MONTH>
                       </td>
                       <td align="center">
                         <TMPL_IF CHANGE_MONTH>
                           <TMPL_VAR CHANGE_MONTH>/<TMPL_VAR CHANGE_DAY>/<TMPL_VAR CHANGE_YEAR>
                         </TMPL_IF CHANGE_MONTH>
                       </td>
                       <td><a align="center" 
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
            </div>
            </div>
          </td>
        </tr>
      </table>
    </td>
  </tr>
</table>
<TMPL_INCLUDE myaccount_footer.tpl>
<!-- END: subscribers.tpl -->
