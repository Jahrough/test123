<div class="fieldset-title">Append Fields</div>
<fieldset class="batchFieldset" style="padding-top: 0;border-top: 0;">
    <table style="width:100%;">
        <tr>
            <td class="batchpricingheader batchsubheader" colspan="2">&nbsp;<b>Select Special Processing Options</b></td>
        </tr>

        <tr>
            <td style="padding: 10px 15px;">
                <table style="width:100%;">
                    <tr>
                        <td class="unifont1" colspan="2">
                            &nbsp;Number of Subjects to be returned&nbsp;&nbsp;<select name="subjectcount" onChange="">
                                <option value="1"<TMPL_IF NAME="subjectcount-1"> SELECTED</TMPL_IF>>1</option>
                                <option value="2"<TMPL_IF NAME="subjectcount-2"> SELECTED</TMPL_IF>>2</option>
                                <option value="3"<TMPL_IF NAME="subjectcount-3"> SELECTED</TMPL_IF>>3</option>
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <td class="unifont1" colspan="2">
                            &nbsp;Number of Addresses to be returned for each subject&nbsp;&nbsp;<select name="addresscount" onChange="">
                                <option value="1"<TMPL_IF NAME="addresscount-1"> SELECTED</TMPL_IF>>1</option>
                                <option value="2"<TMPL_IF NAME="addresscount-2"> SELECTED</TMPL_IF>>2</option>
                                <option value="3"<TMPL_IF NAME="addresscount-3"> SELECTED</TMPL_IF>>3</option>
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <td class="unifont1" colspan="2">
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="checkbox" name="includephonenumber" value="1" <TMPL_VAR NAME=includephonenumber> onClick="">Include Phone Number for each Address&nbsp;&nbsp;
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
    <table style="width:100%;">
      <tr>
        <td class="batchpricingheader batchsubheader" colspan="2"><b>Additional Processing Options</b></td>
      </tr>

      <tr>
          <td style="padding: 10px 15px;">
            <table style="width:100%;">
                <tr>
                    <td class="unifont1" colspan="2">Include Deceased Date Append:<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="checkbox" name="includedeceaseddate" value="1" <TMPL_VAR NAME=includedeceaseddate> onClick="">Search for deceased record for each returned subject and append date of death to output record</td>
                </tr>
            </table>
          </td>
      </tr>
    </table>
</fieldset>
<div class="section-row child-divs-right">
    <div>
        <a class="btn darkgrey-btn" href="javascript:show_batch_event('<TMPL_UNLESS SHOW_BATCH_UPDATE>PHONESPLUSBATCH/DEFINE_FILE<TMPL_ELSE>BATCH/SERVICES</TMPL_UNLESS>')">
            Back
        </a>
        <a class="btn red-btn" href="javascript:show_batch_event('PHONESPLUSBATCH/SAVE_APPEND_FIELDS')">
            Next
        </a>
    </div>
</div>
<!-- END append_fields_body.tpl -->
