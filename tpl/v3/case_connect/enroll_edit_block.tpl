<!-- begin:  $RCSfile: case_connect/enroll_edit_block.tpl,v $ -->
<fieldset class="batchFieldset">
    <table class="batchInputTable">
        <thead style="display: none">
          <tr>
            <th aria-label="Case Connect">&nbsp;</th>
          </tr>
        </thead>
        <tr>
            <td colspan="3">
                Notify me if someone searches:
            </td>
        </tr>
        <tr>
            <td colspan="3">
                <TMPL_INCLUDE case_connect/permission_cb.tpl>
            </td>
        </tr>
        <tr>
            <td colspan="3">
                &nbsp;
            </td>
        </tr>
        <tr>
            <td>
                <span><label for="alert_name">Name of Alert:</label></span>
            </td>
            <td colspan="2">
                <input id="alert_name" type="text" name="ALERT_NAME" size="40" maxlength="100" value="<TMPL_VAR ALERT_NAME>"/>
                <span class="f-13">(Will be listed under this name in the Alerts Manager)</span>
            </td>
        </tr>                       
        <tr>
            <td>
                <span><label for="ref_code">Reference:</label></span>
            </td>
            <td colspan="2">
                <input id="ref_code" type="text" name="REFERENCE_CODE" size="40" maxlength="100" value="<TMPL_VAR REFERENCE_CODE>"/>
            </td>
        </tr>
        <tr>
            <td colspan="3">
                <br>
                <hr style="width: 98%;border-top: 1px dotted red;border-width: 1px 0 0 0;margin:0;">
                <br>
                &nbsp;
            </td>
        </tr>
        <tr>
            <td>
                Email Notification:
            </td>
            <td colspan="2">
                <input id="DELIVERY" type="checkbox"<TMPL_IF DELIVERY> checked="checked"</TMPL_IF> name="DELIVERY" value="1" />&nbsp;<label for="DELIVERY">Send Email Alert</label>
            </td>
        </tr>
        <tr>
            <td>
                <label for="ALERT_DELIVERY_EMAIL">My Email:</label>
            </td>
            <td colspan="2">
                <input id="ALERT_DELIVERY_EMAIL" type="text" name="ALERT_DELIVERY_EMAIL" size="40" maxlength="255" value="<TMPL_VAR ALERT_DELIVERY_EMAIL>"/>
            </td>
        </tr>
        <tr>
            <td>
                <label for="ADD_EMAIL">Also Notify:</label><br/>
            </td>
            <td colspan="2">
                <input id="ADD_EMAIL" placeholder="user@company.com" type="text" name="ADD_EMAIL" size="40" maxlength="255"  value="<TMPL_VAR ADD_EMAIL>"/>
                <span class="f-13">(For multiple email addresses, separate with commas)</span>
            </td>
        </tr>
        <tr>
            <td>
                <label for="NOTE">Notes:</label>
            </td>
            <td colspan="2">
                <textarea id="NOTE" name="NOTE" rows="3" style="width:98%;margin-left:2px;"><TMPL_VAR NOTE></textarea>
            </td>
        </tr>
        <tr>
            <td>
                <label for="SUBJ">Subject Line:</label>
            </td>
            <td colspan="2">
                <input id="SUBJ" type="text" name="SUBJ" size="40" maxlength="100" value="<TMPL_VAR SUBJ>"/>
                <span class="f-13">(Defaults to the Alert Name)</span>
            </td>
        </tr>
    </table>
</fieldset>
<!-- end:  $RCSfile: case_connect/enroll_edit_block.tpl,v $ -->
