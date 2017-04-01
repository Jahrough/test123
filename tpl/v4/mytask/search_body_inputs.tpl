<TMPL_IF NAME="SEARCH_NAME">
    <form name="<TMPL_VAR NAME='SEARCH_NAME'>" action="<TMPL_VAR NAME=ACTION>" method="post" class="smart-form" onkeypress="javascript:submitFormKeyPress(event);" onkeyup="javascript:isEnterKeyDown=false;">
<TMPL_ELSE>
    <form name="PERSON_SEARCH" action="<TMPL_VAR NAME=ACTION>" method="post" class="smart-form">
</TMPL_IF>
<TMPL_IF NAME="SEARCH_EVENT">
    <INPUT type="hidden" NAME="EVENT" VALUE="<TMPL_VAR NAME='SEARCH_EVENT'>">
<TMPL_ELSE>
    <INPUT type="hidden" NAME="EVENT" VALUE="SEARCH/SEARCH">
</TMPL_IF>
<TMPL_INCLUDE NAME="common_hidden_input.tpl">
<input type="hidden" id="REPORT_ACTION" name="ACTION_REPORT" value="<TMPL_VAR NAME=ACTION_REPORT>">
<INPUT type="hidden" NAME="CURRENT_EVENT" ID="CURRENT_EVENT" VALUE="<TMPL_VAR NAME=CURRENT_EVENT>">
<INPUT type="hidden" NAME="RECID" VALUE="">
<INPUT type="hidden" NAME="FULL_NAME" VALUE="">
<INPUT type="hidden" NAME="SKIN_TYPE" VALUE="<TMPL_VAR NAME=SKIN_TYPE>">
<INPUT type="hidden" NAME="APPLICATION_TYPE" VALUE="<TMPL_VAR NAME=APPLICATION_TYPE>">
<INPUT type="hidden" NAME="COURT_SEARCH_WIZARD" VALUE="<TMPL_VAR NAME=COURT_SEARCH_WIZARD>">
<INPUT type="hidden" NAME="PMTAB" VALUE="0">
<INPUT type="hidden" NAME="MYACCTAB" VALUE="<TMPL_VAR IM_ON_MYACCURINT>">
<TMPL_IF NAME='MID'>
<input type="hidden" name="PSID" value="<TMPL_VAR NAME=MPSID>">
<input type="hidden" name="MID" value="<TMPL_VAR NAME=MID>">
</TMPL_IF>

<TMPL_IF NAME="CLEAR_REFERENCE_CODE">
    <INPUT type="hidden" NAME="CLEAR_REFERENCE_CODE" VALUE="1">
</TMPL_IF>

<INPUT type="hidden" NAME="ACTION_MISC" VALUE="<TMPL_VAR NAME=ACTION_MISC>">
<INPUT type="hidden" NAME="QS_OPTION" id="QS_OPTION" value="SSN" />

<script>    var isSrchEnabled = <TMPL_IF NAME=SEARCH_DISABLED>0<TMPL_ELSE>1</TMPL_IF>;</script>
<TMPL_IF NAME="MYTASK"><TMPL_INCLUDE NAME="input_forms/mytask_inputs.tpl"></TMPL_IF>


</form>
