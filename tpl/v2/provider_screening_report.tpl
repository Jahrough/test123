<!-- Begin provider_screening_report.tpl -->

<div align="center"> 
  <table cellspacing="4" cellpadding="4" width="100%" border="0" align="center">
    <tr>
      <td class="unifont1" style="font-size: 10pt; font-style: italic; font-weight: bold;" owrap="nowrap">
      <TMPL_VAR CONTENT>
      </td>
    </tr>
  </table>
</div>

<TMPL_INCLUDE NAME=common_hidden_input.tpl>
<INPUT type=hidden NAME="SKIN_TYPE" VALUE="<TMPL_VAR NAME=SKIN_TYPE>">
<INPUT type=hidden NAME="APPLICATION_TYPE" VALUE="<TMPL_VAR NAME=APPLICATION_TYPE>">
<INPUT type=hidden NAME="EVENT" VALUE="<TMPL_VAR NAME=EVENT>">
<INPUT type=hidden NAME="ACTION" VALUE="<TMPL_VAR NAME=ACTION_BATCH>">

<!-- End provider_screening_report.tpl -->
