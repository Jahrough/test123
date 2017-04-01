<table border="0" cellpadding="5" cellspacing="0" width="600">
  <tr>
    <td class="style2" valign="top" NOWRAP width="300">
       <TMPL_IF SHOW_COMP_FROM_COMP>
<a href="javascript:opener.general_win('<TMPL_VAR NAME="ACTION_REPORT">?EVENT=REPORT/COMPREHENSIVE&SESSION_ID=<TMPL_VAR NAME="SESSION_ID">&CSRF_TOKEN=<TMPL_VAR NAME="CSRF_TOKEN">&REFERENCE_CODE=<TMPL_VAR NAME=REFERENCE_CODE ESCAPE=URL>&UNIQUEID=<TMPL_VAR NAME=UNIQUE_ID>&RECID_REPORT=<TMPL_VAR NAME=RECID>&FIRST_NAME=<TMPL_VAR NAME=FIRST_NAME ESCAPE=URL>&LAST_NAME=<TMPL_VAR NAME=LAST_NAME ESCAPE=URL>&MIDDLE_NAME=<TMPL_VAR NAME=MIDDLE_NAME ESCAPE=URL>','EmbCompReportWin',780,600,0,0,1,1,1,0);void(0);window.close();"><script>write_image('new_report_pull');</script>&nbsp;REQUEST COMPREHENSIVE REPORT</a>
       </TMPL_IF>
    </td>
  </tr>	  
</table>
