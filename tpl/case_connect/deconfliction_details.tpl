<!-- begin:  $RCSfile: deconfliction_details.tpl,v $ -->

<script src="<TMPL_VAR JSPATH>/prototype.js"></script>
<script src="<TMPL_VAR JSPATH>/ln/lexis.js"></script>
<script src="<TMPL_VAR JSPATH>/ln/server.js"></script>
<script src="<TMPL_VAR JSPATH>/ln/config.js"></script>
<script src="<TMPL_VAR JSPATH>/ln/misc.js"></script>
<script type="text/javascript">//<![CDATA[

    function loadCaseConnectNotes(action,deconflict_id){
        var container = document.getElementById('CC_CONTAINER');
        if( container ){
            container.style.display = 'block';
            document.getElementById('CC_VIEW').style.display = 'none';
            var values = $H({
                SESSION_ID: LN.misc.getSessionId(),
                CSRF_TOKEN: LN.misc.getCSRFToken(),
                FROM: document.getElementById('HIDDEN_FROM').value,
                EVENT: 'CC/NOTES',
                DCONFLCT_ID: deconflict_id
            });
            new Ajax.Request( action, {
                parameters: values,
                method: 'post',
                onSuccess: function(transport) {
                    var xhtml = transport.responseText;
                    container.innerHTML = xhtml;
                },
                onFailure: function(){
                    container.innerHTML = "Server Failure!";
                }
            });
        }
        return;
    }

    function show_next(event,noteid,estat,qstat,eid,qid, cname){
        document.getElementById('HIDDEN_NOTIFICATION_ID').value = noteid;
        document.getElementById('HIDDEN_ENROLL_STATUS').value = estat;
        document.getElementById('HIDDEN_ENROLL_ID').value = eid;
        document.getElementById('HIDDEN_QUERY_STATUS').value = qstat;
        document.getElementById('HIDDEN_QUERY_ID').value = qid;
        document.getElementById('HIDDEN_PARENT_COMPANY').value = cname;
        var dconflict_id = document.getElementById('HIDDEN_DCONFLCT_ID').value;
        var from;
        if( dconflict_id == eid ) from = 'ENROLL';
        if( dconflict_id == qid ) from = 'QUERY';
        document.getElementById('HIDDEN_FROM').value = from;
        return send_event(event);
    }

    function connect_buttons(note_id,enroll_id,query_id,enroll_status,query_status){

        var params = $H({
            SESSION_ID: LN.misc.getSessionId(),
            CSRF_TOKEN: LN.misc.getCSRFToken(),
            EVENT: 'CC/CONNECT',
            DCONFLCT_ID: deconflict_id
        });
        if( note_id == enroll_id ){
            params['OTHER_ID'] = query_id;
        }
        else if( note_id == query_id ){
            params['OTHER_ID'] = enroll_id;
        }
        var container = document.getElementById('CC_CONTAINER');
        if( container ){
            container.style.display = 'block';
            document.getElementById('CC_VIEW').style.display = 'none';
            new Ajax.Request( report_action, {
                parameters: params,
                method: 'post',
                onSuccess: function(transport) {
                    var xhtml = transport.responseText;
                    container.innerHTML = xhtml;
                },
                onFailure: function(){
                    container.innerHTML = "Server Failure!";
                }
            });
        }
        return;
    }

    function delete_alerts(){
      if(confirm('You are about to delete the alert(s)')) send_event('CC/DEACTIVATE');
    }

//]]></script>

<table border="0" cellpadding="10" cellspacing="0" width="856" class="myaccountbody">
<tr>
  <td align="center">
    <div class="alert_detail">
    <table cellpadding="0" cellspacing="1" class="alert_detail">
      <tr>
        <th class="headW" colspan="2"><TMPL_VAR DCONFLCT_NAME></th>
      </tr>
      <tr><td nowrap="" class="labelCell" colspan="2">&nbsp;</td></tr>
      <tr><td class="labelCell">Type:</td>
      <td class="nsresults"><TMPL_VAR TYPE></td></tr>
      <tr><td class="labelCell">Subject:</td>
      <td class="nsresults"><TMPL_VAR SUBJECT></td></tr>
      <!--tr><td class="nsresults">Ids:</td>
      <td><TMPL_VAR SUBSCRIBER_ID>-<TMPL_VAR DCONFLCT_ID> <TMPL_VAR REL_TRANSACT_ID></td></tr-->
<TMPL_IF REFERENCE_CODE>
      <tr><td class="labelCell">Reference Code:</td>
      <td class="nsresults"><TMPL_VAR REFERENCE_CODE></td></tr>
</TMPL_IF>
<TMPL_IF FULL_NAME>
      <tr><td class="labelCell">Name:</td>
      <td class="nsresults"><TMPL_VAR FULL_NAME></td></tr>
</TMPL_IF>
<TMPL_IF UNIQUEID>
      <tr><td class="labelCell">LexID:</td>
      <td class="nsresults"><TMPL_VAR UNIQUEID></td></tr>
</TMPL_IF>
<TMPL_IF SSN>
      <tr><td class="labelCell">SSN:</td>
      <td class="nsresults"><TMPL_VAR SSN></td></tr>
</TMPL_IF>
<TMPL_IF PHONE>
      <tr><td class="labelCell">Phone:</td>
      <td class="nsresults"><TMPL_VAR PHONE></td></tr>
</TMPL_IF>
<TMPL_IF DOB>
      <tr><td class="labelCell">Date of Birth:</td>
      <td class="nsresults"><TMPL_VAR DOB></td></tr>
</TMPL_IF>
<TMPL_IF NOTE>
      <tr><td class="labelCell">Note:</td>
      <td class="nsresults"><TMPL_VAR NOTE></td></tr>
</TMPL_IF>
<TMPL_IF ADD_DAY>
      <tr><td class="labelCell">Date Created:</td>
      <td class="nsresults"><TMPL_VAR ADD_MONTH>/<TMPL_VAR ADD_DAY>/<TMPL_VAR ADD_YEAR></td></tr>
</TMPL_IF>
<TMPL_IF CHG_DAY>
      <tr><td class="labelCell">Date Updated:</td>
      <td class="nsresults"><TMPL_VAR CHG_MONTH>/<TMPL_VAR CHG_DAY>/<TMPL_VAR CHG_YEAR></td></tr>
</TMPL_IF>
<TMPL_IF STATUS>
      <tr><td class="labelCell">Status:</td>
      <td class="nsresults"><TMPL_VAR STATUS></td></tr>
</TMPL_IF>
<TMPL_IF EMAIL_LOOP>
      <tr><td class="labelCell">Email:</td>
      <td class="nsresults">
  <TMPL_LOOP EMAIL_LOOP>
        <TMPL_VAR DELIVERY_EMAIL><br/>
  </TMPL_LOOP>
      </td></tr>
</TMPL_IF>
      <tr><td class="labelCell">Permission Levels:</td>
      <td class="nsresults">
<TMPL_LOOP PERMISSION>
  <TMPL_IF VALID>
    <TMPL_VAR TEXT><br/>
  </TMPL_IF>
</TMPL_LOOP>
      </td></tr>
<TMPL_IF HAS_NOTES>
      <tr>
        <td class="labelCell">Notifications:</td>
        <td class="nsresults"><TMPL_VAR HAS_NOTES></td>
      </tr>
      <tr>
        <td class="labelCell" colspan="2">
          <div id="CC_CONTAINER" style="display: none;">loading...</div>
        </td>
      </tr>
</TMPL_IF>
    </table>
    </div>
    <br/>
<TMPL_IF ENROLL>
    <a href="javascript:send_event('CC/EDIT');"><img border="0" src="<TMPL_VAR IMGPATH>/edit_alert.gif"></a>
</TMPL_IF>
<TMPL_IF HAS_NOTES>
    <span id="CC_VIEW"><a href="javascript:loadCaseConnectNotes('<TMPL_VAR ACTION_REPORT>',<TMPL_VAR DCONFLCT_ID>);"><img border="0" src="<TMPL_VAR IMGPATH>/view_notifications.gif"></a></span>
</TMPL_IF>
    <a href="javascript:delete_alerts();"><img width="81" height="24" border="0" src="<TMPL_VAR IMGPATH>/delete_alert.gif"></a>
    <br/>
  </td>
</tr>
</table>
<input type="hidden" name="SUBSCRIBER_ID" value="<TMPL_VAR SUBSCRIBER_ID>"/>
<input type="hidden" id="HIDDEN_NOTIFICATION_ID" name="NOTIFICATION_ID" value="<TMPL_VAR NOTIFICATION_ID>"/>
<input type="hidden" id="HIDDEN_DCONFLCT_ID" name="DCONFLCT_ID" value="<TMPL_VAR DCONFLCT_ID>"/>
<input type="hidden" id="HIDDEN_QUERY_ID" name="QUERY_ID"/>
<input type="hidden" id="HIDDEN_ENROLL_ID" name="ENROLL_ID"/>
<input type="hidden" id="HIDDEN_QUERY_STATUS" name="QUERY_STATUS"/>
<input type="hidden" id="HIDDEN_ENROLL_STATUS" name="ENROLL_STATUS"/>
<input type="hidden" id="HIDDEN_MATCH_LEVEL" name="MATCH_LEVEL"/>
<input type="hidden" id="HIDDEN_PARENT_COMPANY" name="PARENT_COMPANY"/>
<input type="hidden" id="HIDDEN_FROM" name="FROM" value="<TMPL_VAR TYPE>"/>
<!-- end:  $RCSfile: deconfliction_details.tpl,v $ -->
