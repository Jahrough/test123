<!-- billing_date_url.tpl -->
<a class="billingsummary" href="javascript:display_billing_activity('<TMPL_VAR NAME=START_DATE>','<TMPL_VAR NAME=END_DATE>');"><TMPL_IF NAME=STARTEND_DATE_DSP><TMPL_VAR NAME="START_DATE_DSP"><TMPL_ELSE><TMPL_VAR NAME="START_DATE"></TMPL_IF> - <TMPL_IF NAME=END_DATE_DSP><TMPL_VAR NAME="END_DATE_DSP"><TMPL_ELSE><TMPL_VAR NAME="END_DATE"></TMPL_IF></a>
<!-- end billing_date_url.tpl -->
