<!DOCTYPE html>
<!-- BEGIN edit_xml.tpl -->
<TMPL_INCLUDE NAME="batch_head.tpl">

<INPUT TYPE=HIDDEN NAME=EVENT>

<div class="fieldset-title">Edit the XML Below</div>
<fieldset class="batchFieldset">
    <table style="width:100%;">
      <tr>
        <td class="unifont2" align="center"><br><textarea name="XML" rows="30" cols="80"><TMPL_VAR XML></textarea><br><br></td>
      </tr>
    </table>


<table style="width:100%;">
  <tr>
    <td><img src="<TMPL_VAR NAME=IMGPATH>/spacer.gif" width="1" height="20" border="0" alt=""></td>
  </tr>
</table>

</fieldset>
<div class="section-row child-divs-right">
  <div>
      <a class="btn darkgrey-btn" href="javascript:send_event('ADVANCEDPERSONBATCH/SHOW_SUMMARY')">
          Back
      </a>
      <a class="btn red-btn" href="javascript:send_please_wait_event('ADVANCEDPERSONBATCH/CONFIRM_ADMIN')">
          Authorize Order
      </a>
  </div>
</div>

<TMPL_INCLUDE NAME="batch/batch_footer.tpl">
<!-- END edit_xml.tpl -->
