<!-- BEGIN validation_counts.tpl -->
<TMPL_INCLUDE batch_head.tpl>
    <input type="hidden" name="EVENT" value="WPL/APPEND_FIELDS"/>
    <div align="center">

      <table border="0" width="600">

        <tr>
          <td width="600">
            <br/>
            <table border="0" cellpadding="0" cellspacing="0" width="600">
              <tr>
                <td class="wizardcounter" width="30%" align="left" nowrap="nowrap"><TMPL_INCLUDE title_line.tpl></td>
              </tr>
              <tr>
                <td class="wizardcounter" width="50%" align="left"><TMPL_INCLUDE ../help_contact_line.tpl></td>
              </tr>
            </table>
          </td>
        </tr>
        <tr>
          <td class="batchbanner" align="center"><br/><br/><strong>WorkPlace Locator Batch Wizard File Validation Counts</strong><br/><br/></td>
        </tr>
        <tr>
          <td>
            <table border="0" class="unifont2">
              <tr>
                <td><strong>Total file input:</strong><br/></td>
                <td align="right"><TMPL_VAR LINES></td>
              </tr>
              <tr>
                <td><strong>Name and Full Address record count:</strong><br/></td>
                <td align="right"><TMPL_VAR NAME_ADDR></td>
              </tr>
              <tr>
                <td><strong>Name and Social Security Number record count: &nbsp; </strong><br/></td>
                <td align="right"><TMPL_VAR NAME_SSN></td>
              </tr>
              <tr>
                <td><strong>Social Security Number only record count:</strong><br/></td><td align="right"><TMPL_VAR SSN_ONLY></td>
              </tr>
              <tr>
                <td><strong>Total records without minimum data count:</strong></td>
                <td align="right"><TMPL_VAR FAILED></td>
              </tr>
            </table>
          </td>
        <tr>
          <td class="unifont2"><br/><em>Please Note: Total above counts may exceed total records input, as input records may have a combination of Name and Full Address and Social Security Number</em><br/><br/></td>
        </tr>
        <tr>
          <td class="unifont2" style="color:#FF0000; font-weight:bold;">By proceeding with submission to the WorkPlace Locator Batch Wizard, client understands the records in the "Total records without minimum data count" will not be searched on.<br/>In addition, client understands that LexisNexis does not guarantee hits from this product and will not issue a credit for any reason.<br/><br/></td>
        </tr>
        <tr>
          <td valign="bottom" align="right"><a href="javascript:send_event('WPL/DEFINE_FILE')"><img src="<TMPL_VAR IMGPATH>/BATCH/back.gif" width="87" height="29" border="0"/></a>&nbsp;&nbsp;&nbsp;<a href="javascript:send_please_wait_event('WPL/APPEND_FIELDS')" onClick="if(!validate()){return false;}"><img src="<TMPL_VAR IMGPATH>/BATCH/next.gif" width="87" height="29" border="0"/></a></td>
        </tr>
      </table>
    </div>
<TMPL_INCLUDE NAME="batch_footer.tpl">

<!-- END validation_counts.tpl -->
