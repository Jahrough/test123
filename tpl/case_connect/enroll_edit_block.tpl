<!-- begin:  $RCSfile: case_connect/enroll_edit_block.tpl,v $ -->
      <div class="field">
        <span class="lbl"><label for="alert_name">Name of Alert:</label></span>
        <span class="ib">
          <div><input id="alert_name" type="text" name="ALERT_NAME" size="40"
           maxlength="100" value="<TMPL_VAR ALERT_NAME>"/></div>
          Used to find this alert again under the Alerts Manager
        </span>
      </div>
      <div class="field">
        <span class="lbl"><label for="ref_code">Reference Code:</label></span>
        <input id="ref_code" type="text" name="REFERENCE_CODE" size="40"
         maxlength="100" value="<TMPL_VAR REFERENCE_CODE>"/>
      </div>
      <div class="field">
        <strong>
          Deconfliction Alert - Real Time Notification of Another User Searching on This Record:<br/>
          Notify me if someone searches:
        </strong>
      </div>
      <div class="field">
      <TMPL_INCLUDE case_connect/permission_cb.tpl>
      </div>
      <fieldset id="notif_box">
        <legend id="notif_box_label" class="box_lbl">Email&nbsp;Notifications</legend>
        <div class="field">
          <span class="lbl"><label for="DELIVERY">Delivery:</label></span>
          <input id="DELIVERY" type="checkbox"<TMPL_IF DELIVERY> checked="checked"</TMPL_IF>
           name="DELIVERY" value="1" />
          <label for="DELIVERY">Send Email Alert</label>
        </div>
        <div class="field">
          <span class="lbl"><label for="ALERT_DELIVERY_EMAIL">My Email:</label></span>
          <span id="mm1" style="display: none;">
            <input id="ALERT_DELIVERY_EMAIL" type="text" name="ALERT_DELIVERY_EMAIL" size="40" maxlength="255"
             value="<TMPL_VAR ALERT_DELIVERY_EMAIL>"/>
          </span>
          <span id="mm2">
            <TMPL_VAR ALERT_DELIVERY_EMAIL>
            &nbsp; &nbsp; <a id="mail_lk" href="javascript:void(0);" onclick="toggle_span('mm1', 'mm2');">if incorrect, click here</a>
          </span>
        </div>
        <div class="field">
          <span class="lbl"><label for="ADD_EMAIL">Also Notify:<br/>additional email addresses</label></span>
          <span class="ib">
            <div><input id="ADD_EMAIL" type="text" name="ADD_EMAIL" size="40" maxlength="255"  value="<TMPL_VAR ADD_EMAIL>"/></div>
            Ex: johndoe@yourcompany.com,janedoe@yourcompany.com
          </span>
        </div>
        <div class="field">
          <span class="lbl"><label for="NOTE">Add a Note:</label></span>
          <textarea id="NOTE" name="NOTE"  cols="40" rows="3"><TMPL_VAR NOTE></textarea>
        </div>
        <div class="field">
          <span class="lbl"><label for="SUBJ">Subject Line:</label></span>
          <input id="SUBJ" type="text" name="SUBJ" size="25" maxlength="100" value="<TMPL_VAR SUBJ>"/>
          Note: Defaults to the Alert Name
        </div>
      </fieldset>
<!-- end:  $RCSfile: case_connect/enroll_edit_block.tpl,v $ -->
