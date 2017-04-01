<!DOCTYPE html>
<!-- BEGIN summary.tpl -->
<TMPL_INCLUDE NAME="batch_head.tpl">

<INPUT TYPE=HIDDEN NAME=EVENT>

<div class="fieldset-title">Order Confirmation Summary</div>
<fieldset class="batchFieldset">
    <table style="width:100%;">
        <tr>
            <td class="unifont2"><br><b>Please verify that the options shown below are the options you have chosen for your batch process:</b><br><br></td>
        </tr>
    </table>
    
        <table class="mgl6" style="width:100%;">
          <tr>
            <td>
                <style>
                    table.order-conf td{
                        padding:3px 10px;
                    }
                </style>
            <table class="order-conf" style="width:100%;">
              <tr>
                <td valign="top" class="unifont1" NOWRAP>Batch Type/Search Template Selected:</td>
                <td valign="top" class="unifont1"><b>Phone, Address or Both</b></td>
              </tr>
              <tr>        
                <td class="unifont1" align="left" valign="top">Additional Batch Search Options:</td>
                <td class="unifont1" align="left"><b><TMPL_VAR APPEND_OPTIONS></b></td>
              </tr>
              <tr>
                <td valign="top" class="unifont1" NOWRAP>Job Name:</td>
                <td valign="top" class="unifont1"><b><TMPL_VAR BATCH_NAME></b></td>
              </tr>
              <tr>
                <td valign="top" class="unifont1" NOWRAP>Input File Name:</td>
                <td valign="top" class="unifont1"><b><TMPL_VAR FILE_NAME></b></td>
              </tr>
              <tr>
                <td valign="top" class="unifont1" NOWRAP>Input File Format:</td>
                <td valign="top" class="unifont1"><b><TMPL_VAR FILE_TYPE></b></td>
              </tr>
              <tr>
                <td valign="top" class="unifont1" NOWRAP>Number of Records in File:</td>
                <td valign="top" class="unifont1"><b><TMPL_VAR NUM_RECS></b></td>
              </tr>
              <tr>
                <td valign="top" class="unifont1" NOWRAP>Email Address for Batch Notification:</td>
                <td valign="top" class="unifont1"><b><TMPL_VAR BATCH_EMAIL_TO></b></td>
              </tr>
              <tr>
                <td valign="top" class="unifont1" NOWRAP>GLB Purpose:</td>
                <td valign="top" class="unifont1"><b><TMPL_VAR GLB></b></td>
              </tr>
              <tr>
                <td valign="top" class="unifont1" NOWRAP>DPPA Purpose:</td>
                <td valign="top" class="unifont1"><b><TMPL_VAR DPPA></b></td>
              </tr>
             <tr>
                <td valign="top" class="unifont1" NOWRAP>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;DMF Purpose:</td>
                <td valign="top" class="unifont1" nowrap="nowrap"><b><TMPL_VAR DMF> </b>
              </tr>
              <tr>
                <td valign="top" class="unifont1" NOWRAP>Output File Format:</td>
                <td valign="top" class="unifont1" nowrap="nowrap"><b>

                    <TMPL_IF OUTPUT_TYPE_1>
                        Comma Delimited 
                    <TMPL_ELSE>
                    <TMPL_IF OUTPUT_TYPE_2>
                        Microsoft Word 
                    <TMPL_ELSE>
                    <TMPL_IF OUTPUT_TYPE_3>
                        HTML 
                    <TMPL_ELSE>
                    <TMPL_IF OUTPUT_TYPE_4>
                        Adobe Acrobat (pdf) 
                    <TMPL_ELSE>
                        Comma Delimited Output File
                    </TMPL_IF>
                    </TMPL_IF>
                    </TMPL_IF>
                    </TMPL_IF>
                </b></td>
              </tr>
                <TMPL_IF SHOW_BATCH_UPDATE>
                    <TMPL_UNLESS HIDE_PRICES>
                        <tr>
                            <td valign="top" class="unifont1" nowrap="nowrap">Maximum price per record charge is:</td>
                            <td valign="top" class="unifont1"><b>$<TMPL_VAR REC_CHARGE></b></td>
                        </tr>
                        <tr>
                            <td valign="top" class="unifont1" nowrap="nowrap">Maximum possible charge for the batch is:</td>
                            <td valign="top" class="unifont1"><b>$<TMPL_VAR MAX_CHARGE></b></td>
                        </tr>
                    </TMPL_UNLESS>
                </TMPL_IF>
              <TMPL_IF IS_BATCH_ADMIN>
                  <tr>
                      <td class="smallfont1" colspan="2"><b>Run this Batch Free of Charge</b>&nbsp;&nbsp;<input type=checkbox name="FREE_FLAG" value="1"<TMPL_IF FREE_FLAG> CHECKED</TMPL_IF>></td>
                  </tr>
              </TMPL_IF>
            </table>
            </td>
          </tr>
        </table>
</fieldset>

<TMPL_INCLUDE NAME="batch/shared/summary_buttons.tpl">

<TMPL_IF ERROR_MESG>
    <script>alert('<TMPL_VAR ERROR_MESG>\n\n');</script>
    <noscript>Your browser does not support JavaScript!</noscript>
</TMPL_IF>

<TMPL_INCLUDE NAME="batch/batch_footer.tpl">
<!-- END summary.tpl -->
