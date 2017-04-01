<!DOCTYPE html>
<!-- BEGIN start.tpl -->
<TMPL_INCLUDE NAME="batch_head.tpl">
    <!-- Temporary Pricing Layer - Remove When Not Needed -->
    <script>
        $j(function(){
            var pricing_notice = ''
            + '<table id="pricing-notice">'
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
    <!-- End Temporary Pricing Layer -->
    
<INPUT TYPE=HIDDEN NAME=EVENT VALUE="PHONEBATCH/SAVE_START">


<div class="fieldset-title">Welcome to the <TMPL_IF FCOL_TCOL>Contact &amp; Locate<TMPL_ELSE>Accurint<small><sup>&reg;</sup></small></TMPL_IF> Waterfall Phones and Address Batch Submission Wizard</div>
<fieldset class="batchFieldset">

<table style="width:100%;">  
  <TMPL_IF FREE_TRIAL_CREDITS>
  <tr>
    <td class="batchalert" align="center"><br><b>This account has <TMPL_VAR FREE_TRIAL_CREDITS> free records to process</b></td>
  </tr>
  </TMPL_IF>
  
  <tr>
    <td align="center"><br><b>Enter a name for your batch job:</b>&nbsp;&nbsp;<input type=text name="BATCH_NAME" value="<TMPL_VAR BATCH_NAME>"></td>
  </tr>

  <tr>
    <td align="center"><br>Note: This name will be used on all correspondence related to this batch job and will become the name of your output file.</td>
  </tr>
  
  <TMPL_IF IS_BATCH_ADMIN>
  <tr>
    <td align="left"><br>&nbsp;&nbsp;<b>Enter the Company ID for your batch job:</b>&nbsp;&nbsp;<input type=text name="BATCH_COMPANY_ID" value="<TMPL_VAR BATCH_COMPANY_ID>"></td>
  </tr>
  <tr>
    <td align="left"><br>&nbsp;&nbsp;<b>Enter the Login ID for your batch job:</b>&nbsp;&nbsp;<input type=text name="BATCH_LOGIN_ID" value="<TMPL_VAR BATCH_LOGIN_ID>"></td>
  </tr>
  <tr>
    <td align="center"><br></td>
  </tr>
    <INPUT TYPE="HIDDEN" NAME="BATCH_TYPE" VALUE="PHONE">
  <tr>
    <td align="center"><br><b></b></td>
  </tr>
  <tr>
    <td align="left"><br></td>
  </tr>
  </TMPL_IF>
  </table>
</fieldset>

<table style="width:100%;">  
  <tr>
    <td valign="bottom" align="right" width="550"><a class="btn red-btn" href="javascript:send_event('PHONEBATCH/SAVE_START')" onClick="if(!validate()){return false;}">Next</a></td>
  </tr>

</table>

<script>
document.BATCH.BATCH_NAME.focus();
<TMPL_IF ERROR_MESG>alert('<TMPL_VAR ERROR_MESG>\n\n');</TMPL_IF>
</script>
<!-- END start.tpl -->
