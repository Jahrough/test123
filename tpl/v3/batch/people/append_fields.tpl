<!DOCTYPE html>
<!-- BEGIN append_fields.tpl -->
<TMPL_INCLUDE NAME="batch_head.tpl">

<INPUT TYPE=HIDDEN NAME=EVENT VALUE="<tmpl_var name=BATCH_CONTROLLER>/SAVE_APPEND_FIELDS">
<input type="hidden" name="IS_BATCH_ADMIN" value="<TMPL_VAR NAME='BATCH_ADMIN'>">
<input type="hidden" name="BATCH_PRE_TOTAL" value="0.00">


<TMPL_IF IS_BUS_BATCH>
    <div class="fieldset-title">Select the fields you wish to have appended to your file</div>
    <fieldset class="batchFieldset pdt0" style="border-top:0;">
        <TMPL_INCLUDE NAME="append_bus_fields_body.tpl">
        <div class="section-row">
            Approximate Number of Records: <b><TMPL_VAR NUM_RECS></b>
            <TMPL_UNLESS HIDE_PRICES>
                <br>
                Maximum Possible Cost: $ <input type=text name=BATCH_TOTAL size=7 value="<TMPL_VAR NAME=BATCH_TOTAL>" readonly tabindex="-1">
                <br>
                <b>Note:</b> This is the maximum possible cost based on the estimate of <TMPL_VAR BATCH_RECS> records in the file to be processed and assuming a 100% match rate.
            <TMPL_ELSE>
                <input type=hidden name=BATCH_TOTAL value="<TMPL_VAR NAME=BATCH_TOTAL>">
            </TMPL_UNLESS>
        </div>
    </fieldset>
    <div class="section-row child-divs-right">
        <div>
            <a class="btn darkgrey-btn" href="javascript:show_batch_event('<tmpl_var name=BATCH_CONTROLLER>/DEFINE_FILE')">
                Back
            </a>
            <a class="btn red-btn" href="javascript:send_please_wait_event('<tmpl_var name=BATCH_CONTROLLER>/SAVE_APPEND_FIELDS')">
                Next
            </a>
        </div>
    </div>
<TMPL_ELSE>
    <TMPL_IF IS_BUS_BATCH_DUEX>
        <div class="fieldset-title">Select the fields you wish to have appended to your file</div>
        <fieldset class="batchFieldset pdt0" style="border-top:0;">
            <TMPL_INCLUDE NAME="append_bus_duex_fields_body.tpl">
            <div class="section-row pdl15 pdr15" style="color:#000;">
                Approximate Number of Records: <b><TMPL_VAR NUM_RECS></b>
                <TMPL_UNLESS HIDE_PRICES>
                    <br>Maximum Possible Cost: $ <input type=text name=BATCH_TOTAL size=7 value="<TMPL_VAR NAME=BATCH_TOTAL>" readonly tabindex="-1">
                    <br><br>
                    <b>Note:</b> This is the maximum possible cost based on the estimate of <TMPL_VAR BATCH_RECS> records in the file to be processed and assuming a 100% match rate.
                <TMPL_ELSE>
                    <input type=hidden name=BATCH_TOTAL value="<TMPL_VAR NAME=BATCH_TOTAL>">
                </TMPL_UNLESS>
            </div>
        </fieldset>
        <div class="section-row child-divs-right">
            <div>
                <a class="btn darkgrey-btn" href="javascript:show_batch_event('<tmpl_var name=BATCH_CONTROLLER>/DEFINE_FILE')">
                    Back
                </a>
                <a class="btn red-btn" href="javascript:send_please_wait_event('<tmpl_var name=BATCH_CONTROLLER>/SAVE_APPEND_FIELDS')">
                    Next
                </a>
            </div>
        </div>
    <TMPL_ELSE>
        <TMPL_INCLUDE NAME="append_fields_body.tpl">
        <div class="section-row">
            <TMPL_UNLESS SHOW_BATCH_UPDATE>Approximate Number of Records: <b><TMPL_VAR NUM_RECS></b>
                <TMPL_UNLESS HIDE_PRICES>
                    <br>
                    <label for="bt_ttl">Maximum Possible Cost</label>: $ <input id="bt_ttl" type=text name=BATCH_TOTAL size=7 value="<TMPL_VAR NAME=BATCH_TOTAL>" readonly tabindex="-1">
                    <br>
                    <b>Note:</b> This is the maximum possible cost <b>(Without Special Value Offer)</b> based on the estimate of <TMPL_VAR BATCH_RECS> records in the file to be processed and assuming a 100% match rate.
                <TMPL_ELSE>
                    <input type=hidden name=BATCH_TOTAL value="<TMPL_VAR NAME=BATCH_TOTAL>">
                </TMPL_UNLESS>
            </TMPL_UNLESS>
        </div>
        <div class="section-row child-divs-right">
            <div>
                <a class="btn darkgrey-btn" href="javascript:show_batch_event('<tmpl_var name=BATCH_CONTROLLER>/<TMPL_UNLESS SHOW_BATCH_UPDATE>OUTPUT_TYPE<TMPL_ELSE>SERVICES</TMPL_UNLESS>')">
                    Back
                </a>
                <a class="btn red-btn" href="javascript:if(validate()){send_please_wait_event('<tmpl_var name=BATCH_CONTROLLER>/SAVE_APPEND_FIELDS');}">
                    Next
                </a>
            </div>
        </div>
    </TMPL_IF>
</TMPL_IF>


<TMPL_IF ERROR_MESG>
    <script>alert('<TMPL_VAR ERROR_MESG>\n\n');</script>
    <noscript>Your browser does not support JavaScript!</noscript>
</TMPL_IF>

<TMPL_INCLUDE NAME="batch/batch_footer.tpl">
<!-- END append_fields.tpl -->
