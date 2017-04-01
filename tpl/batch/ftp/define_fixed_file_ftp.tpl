<!-- BEGIN define_fixed_file_ftp.tpl -->
<TMPL_INCLUDE NAME="batch_head.tpl">

<INPUT TYPE=HIDDEN NAME=EVENT VALUE="BATCHFTP/SAVE_DEFINE_FILE">

<TMPL_IF ROWS>
  <TMPL_LOOP ROWS>
	<INPUT TYPE=HIDDEN NAME="ROW_<TMPL_VAR ROW>" VALUE="<TMPL_VAR NAME=LINE ESCAPE=HTML>">
  </TMPL_LOOP>
</TMPL_IF>

<div align="center">

<table border="0" width="600">
  <tr>
    <td width="600">
    <br>
    <table border="0" cellpadding="0" cellspacing="0" width="600">
      <tr>
        <td class="wizardcounter" width="100%" align="left">Batch Wizard <b><TMPL_VAR TITLE_PAGE></b></td>
      </tr>
    </table>
    </td>
  </tr>

<TMPL_IF businessbatch>
  <TMPL_INCLUDE NAME="../define_fixed_file_body.tpl">	
<TMPL_ELSE>
<TMPL_IF businesscollectionsbatch>
  <TMPL_INCLUDE NAME="../define_fixed_file_body.tpl">	
<TMPL_ELSE>
<TMPL_IF phonebatch>
  <TMPL_INCLUDE NAME="../phone/define_fixed_file_body.tpl">	
<TMPL_ELSE>
<TMPL_IF surecontactbatch>
  <TMPL_INCLUDE NAME="../surecontact/define_fixed_file_body.tpl">	
<TMPL_ELSE>
<TMPL_IF sureplacementbatch>
  <TMPL_INCLUDE NAME="../sureplacement/define_fixed_file_body.tpl">	
<TMPL_ELSE>
<TMPL_IF recoverscorebatch>
  <TMPL_INCLUDE NAME="../recoverscore/define_file_body.tpl">	
<TMPL_ELSE>
<TMPL_IF businessinstantid>
  <TMPL_INCLUDE NAME="../instantid/define_file_body.tpl">	
<TMPL_ELSE>
<TMPL_IF consumerinstantid>
  <TMPL_INCLUDE NAME="../instantid/define_file_body.tpl">	
<TMPL_ELSE>
  <TMPL_INCLUDE NAME="../define_fixed_file_body.tpl">	
</TMPL_IF>
</TMPL_IF>
</TMPL_IF>
</TMPL_IF>
</TMPL_IF>
</TMPL_IF>
</TMPL_IF>
</TMPL_IF>

  <tr>
    <td valign="bottom" align="right" class="unifont1"><br><br><a href="javascript:send_event('BATCHFTP/CHOOSE_EDITFTP_JOB')"><img src="<TMPL_VAR NAME=IMGPATH>/BATCH/back.gif" width="87" height="29" border="0"></a>&nbsp;&nbsp;&nbsp;<a href="javascript:send_event('BATCHFTP/SAVE_DEFINE_FILE')" onClick="if(!validate_selects()){return false;}"><img src="<TMPL_VAR NAME=IMGPATH>/BATCH/next.gif" width="87" height="29" border="0"></a></td>
  </tr>

</table>
</div>
<!--<script language="JavaScript">
build_example();
</script>-->

<TMPL_IF ERROR_MESG>
    <script>alert('<TMPL_VAR ERROR_MESG>\n\n');</script>
</TMPL_IF>

<TMPL_INCLUDE NAME="../batch_footer.tpl">
<!-- END define_fixed_file_ftp.tpl -->
