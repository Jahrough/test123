<!-- BEGIN define_file.tpl -->
<TMPL_INCLUDE NAME="batch_head.tpl">

<INPUT TYPE=HIDDEN NAME=EVENT VALUE="RESBATCH/DEFINE_FILE_NEXT">
<INPUT TYPE=HIDDEN NAME=DEFINE_PAGE VALUE="1">
<INPUT TYPE=HIDDEN NAME=RESOPTION2 VALUE="<TMPL_VAR NAME=resoption2>">
<INPUT TYPE=HIDDEN NAME=RESOPTION3 VALUE="<TMPL_VAR NAME=resoption3>">
<INPUT TYPE=HIDDEN NAME=RESOPTION4 VALUE="<TMPL_VAR NAME=resoption4>">
<INPUT TYPE=HIDDEN NAME=RESOPTION5 VALUE="<TMPL_VAR NAME=resoption5>">
<INPUT TYPE=HIDDEN NAME=RESOPTION6 VALUE="<TMPL_VAR NAME=resoption6>">
<INPUT TYPE=HIDDEN NAME=RESOPTION7 VALUE="<TMPL_VAR NAME=resoption7>">
<INPUT TYPE=HIDDEN NAME=RESOPTION8 VALUE="<TMPL_VAR NAME=resoption8>">
<INPUT TYPE=HIDDEN NAME=RESOPTION9 VALUE="<TMPL_VAR NAME=resoption9>">


<div align="center">

<table border="0" width="600">
  <tr>
    <td width="600">
    <br>
    <table border="0" cellpadding="0" cellspacing="0" width="600">
      <tr>
        <td class="wizardcounter" width="100%" align="left"><TMPL_INCLUDE NAME="title_line.tpl"></td>
      </tr>
    </table>
    </td>
  </tr>
  <tr>
    <td align="center" class="batchbanner"><br><b>Define Field Labels</b></td>
  </tr>

  <TMPL_IF FREE_TRIAL_CREDITS>
  <tr>
    <td class="batchalert" align="center"><br><b>This account has <TMPL_VAR FREE_TRIAL_CREDITS> free records to process</b></td>
  </tr>
  </TMPL_IF>

  <TMPL_INCLUDE NAME="define_file_body.tpl">	

  <tr>
	<TMPL_IF EXCEED_FREE_TRIAL>
    <td valign="bottom" align="right" class="unifont1"><br><br><a href="javascript:send_event('RESBATCH/FILE_SELECT')"><img src="<TMPL_VAR NAME=IMGPATH>/BATCH/back.gif" width="87" height="29" border="0"></a>&nbsp;&nbsp;&nbsp;<a href="javascript:alert('This file exceeds your free trial limit.\nPlease remove the necessary lines and try again.');"><img src="<TMPL_VAR NAME=IMGPATH>/BATCH/next.gif" width="87" height="29" border="0"></a></td>
	<TMPL_ELSE>
    <td valign="bottom" align="right" class="unifont1"><br><br><a href="javascript:send_event('RESBATCH/DEFINE_FILE_PREVIOUS')"><img src="<TMPL_VAR NAME=IMGPATH>/BATCH/back.gif" width="87" height="29" border="0"></a>&nbsp;&nbsp;&nbsp;<a href="javascript:submit_field_event('RESBATCH/DEFINE_FILE_NEXT')" onClick="if(!validate_selects()){return false;}"><img src="<TMPL_VAR NAME=IMGPATH>/BATCH/next.gif" width="87" height="29" border="0"></a></td>
	</TMPL_IF>
  </tr>

</table>
</div>

<script language="JavaScript">
guess_fields();
<TMPL_IF ERROR_MESG>alert('<TMPL_VAR ERROR_MESG>\n\n');</TMPL_IF>
</script>

<TMPL_INCLUDE NAME="batch_footer.tpl">
<!-- END define_file.tpl -->
