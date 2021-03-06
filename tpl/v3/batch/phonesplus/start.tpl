<!DOCTYPE html>
<!-- BEGIN start.tpl -->
<TMPL_INCLUDE NAME="batch_head.tpl">

<fieldset class="batchFieldset">
<table style="width:100%;">
    <tr>
      <td valign="top">
      <table border="0" cellpadding="5" cellspacing="0" width="100%" class="reportselectbody">
        <tr>
          <td class="smallfont1">
          <TMPL_IF IRS><div><span class="reportselectorinfo"><b>HELPFUL TIP:</b></span></div><TMPL_ELSE>
          <TMPL_IF GOV><div><span class="reportselectorinfo"><b>HELPFUL TIP:</b></span></div><TMPL_ELSE>
          <TMPL_IF LE><div><span class="reportselectorinfo"><b>HELPFUL TIP:</b></span></div><TMPL_ELSE>
          <div align=center><span class="reportselectorinfo"><b>NOTICE:</span>&nbsp; Effective March 27th, this product will no longer be available via the Batch Wizard</b></div>
          <div>&nbsp;</div>
          In an effort to streamline processes and deliver the very best information LexisNexis� has to offer, access to this product via the Batch Wizard will be deactivated on March 27th.
          </TMPL_IF>
          </TMPL_IF>
          </TMPL_IF>
          Accurint offers multiple batch processes to help increase right-party contact.&nbsp; A dedicated Batch Consultant is available to help you customize your requirements from data needs, to input and output delivery methods so you're assured of a solution best suited to the way you do business.&nbsp; <a href="javascript:show_post_popup('MYACCOUNT/SHOW_BATCH_CONSULTANT_EMAIL','ContactUs',450,500);"><b>Click here</b></a> here to contact your Batch Consultant today!</td>
        </tr>
      </table>
      </td>
    </tr>
  </table>
</fieldset>


<INPUT TYPE=HIDDEN NAME=EVENT VALUE="PHONESPLUSBATCH/SAVE_START">

<div class="fieldset-title">Deceased Person Batch Submission Wizard</div>
<fieldset class="batchFieldset">
<table style="width:100%;">
  
  <tr>
    <td align="center" class="unifont2"><br><b>Enter a name for your batch job:</b>&nbsp;&nbsp;<input type=text name="BATCH_NAME" value="<TMPL_VAR BATCH_NAME>"></td>
  </tr>

  <tr>
    <td align="center" class="smallfont1"><br>Note: This name will be used on all correspondence related to this batch job and will become the name of your output file.</td>
  </tr>
  
  <TMPL_IF IS_BATCH_ADMIN>
  <tr>
    <td align="left" class="unifont2"><br>&nbsp;&nbsp;<b>Enter the Company ID for your batch job:</b>&nbsp;&nbsp;<input type=text name="BATCH_COMPANY_ID" value="<TMPL_VAR BATCH_COMPANY_ID>"></td>
  </tr>
  <tr>
    <td align="left" class="unifont2"><br>&nbsp;&nbsp;<b>Enter the Login ID for your batch job:</b>&nbsp;&nbsp;<input type=text name="BATCH_LOGIN_ID" value="<TMPL_VAR BATCH_LOGIN_ID>"></td>
  </tr>
    <INPUT TYPE="HIDDEN" NAME="BATCH_TYPE" VALUE="PHONESPLUS">
  </TMPL_IF>

  <tr>
  <tr>
    <td><img src="<TMPL_VAR NAME=IMGPATH>/spacer.gif" width="1" height="<TMPL_IF IS_BATCH_ADMIN>100<TMPL_ELSE>180</TMPL_IF>" border="0"></td>
  </tr>
</table>
</fieldset>
<div class="section-row child-divs-right">
    <div>
        <a href="javascript:show_batch_event('PHONESPLUSBATCH/SAVE_START')" onClick="if(!validate()){return false;}">
            Next
        </a>
    </div>
</div>
<script>
document.BATCH.BATCH_NAME.focus();
<TMPL_IF ERROR_MESG>alert('<TMPL_VAR ERROR_MESG>\n\n');</TMPL_IF>
</script>
<TMPL_INCLUDE NAME="batch/batch_footer.tpl">

<!-- END start.tpl -->
