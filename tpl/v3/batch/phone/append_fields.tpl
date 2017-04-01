<!DOCTYPE html>
<!-- BEGIN v3/batch/phone/append_fields.tpl -->
<TMPL_INCLUDE NAME="batch_head.tpl">
    
    <input type="hidden" name="EVENT" value="PHONEBATCH/SAVE_APPEND_FIELDS">
    <input type="hidden" name="IS_BATCH_ADMIN" value="<TMPL_VAR NAME='BATCH_ADMIN'>">

    <TMPL_INCLUDE NAME="append_fields_body.tpl">
        <div class="section-row child-divs-right">
            <div>
                <a class="btn darkgrey-btn" href="javascript:show_batch_event('<TMPL_UNLESS SHOW_BATCH_UPDATE>PHONEBATCH/DEFINE_FILE<TMPL_ELSE>BATCH/SERVICES</TMPL_UNLESS>')">
                    Back
                </a>
                <a class="btn red-btn" href="javascript:show_batch_event('PHONEBATCH/SAVE_APPEND_FIELDS')" onClick="javascript:if(!validate()){return false;}">
                    Next
                </a>
            </div>
        </div>

<TMPL_IF SHOW_BATCH_UPDATE>
    <!-- Temporary Pricing Layer - Remove When Not Needed -->
    <script>
        $j(function(){
            var pricing_notice = ''
            + '<table id="pricing-notice">'
              + '<thead style="display: none">'
                + '<tr>'
                  + '<th aria-label="Price Note">Dummy'
                  + '</th>'
                + '</tr>'
              + '</thead>'
              + '<tr>'
                  + '<td style="white-space: nowrap;">'
                      + '<br><br>'
                      + 'Address(Per Hit)<br>'
                      + 'Waterfall Phones Process (Per Hit)<br>'
                      + 'Address and Phones (Per Hit)<br>'
                      + 'Address and/or Phone Confirmation(Per Input)<br>'
                  + '</td>'
                  + '<td class="unifont1" valign="top" width="10%">'
                      + 'Single<br><br>'
                      + '$0.13<br>'
                      + '$0.23<br>'
                      + '$0.25<br>'
                      + '$0.03<br>'
                  + '</td>'
                  + '<td class="unifont1" valign="top" width="30%">'
                      + '<b>Multiple**</b><br><br>'
                      + '$0.16<br>'
                      + '$0.25<br>'
                      + '$0.30<br>'
                      + '$0.04<br>'
                  + '</td>'
              + '</tr>'
              + '<tr>'
                  + '<td class="unifont1" valign="top" colspan="3">'
                      + '<b>**Multiple</b> = Total charge for 2 or more phones/addresses returned.'
                  + '</td>'
              + '<tr>'
              + '<tr>'
                  + '<td class="unifont1" valign="top" colspan="3" align="center">'
                      + '<br>'
                      + '<input class="btn red-btn" name="CONTINUE_BATCH" type="button" value="Continue >>>" onclick="javascript:toggle_modal();">'
                      + '<br><br><br>'
                  + '</td>'
              + '</tr>'
            + '</table>';
            new_modal('Pricing Notice',pricing_notice,460);
        });
    </script>
    <noscript>Your browser does not support JavaScript!</noscript>
    <!-- End Temporary Pricing Layer -->
</TMPL_IF>
<TMPL_IF ERROR_MESG>
    <script>processAlerts('Please select an option or enter a count before proceeding.\n\n');</script>
    <noscript>Your browser does not support JavaScript!</noscript>
</TMPL_IF>

<input type=hidden name="BATCH_PRE_TOTAL" value="0.00">



<TMPL_INCLUDE NAME="batch/batch_footer.tpl">
        <!-- END v3/batch/phone/append_fields.tpl -->
