<!DOCTYPE html>
<html>
<head>
<TMPL_INCLUDE NAME="batch/batch_includes.tpl">
</head>

<body onUnLoad="closewaitwin();"
    leftmargin="0" marginwidth="0" topmargin="0" marginheight="0"
    <TMPL_UNLESS IS_BUS_BATCH>
    <TMPL_UNLESS IS_BUS_BATCH_DUEX>
	<TMPL_IF NAME=base-batch-price>
	onLoad="check_append_fields();"
	</TMPL_IF>
    </TMPL_UNLESS>	
    </TMPL_UNLESS>	
>
<div id="skiptocontent" role="dialog" style="display: none"><a href="#reportResultsTbl" title="skip navigation">Skip Navigation</a></div>
<TMPL_INCLUDE NAME="batch/header_info.tpl">

  <INPUT TYPE="HIDDEN" NAME="IS_BUS_BATCH" VALUE="<TMPL_VAR IS_BUS_BATCH>">
  <INPUT TYPE="HIDDEN" NAME="IS_BUS_BATCH_DUEX" VALUE="<TMPL_VAR IS_BUS_BATCH_DUEX>">
  <INPUT TYPE="HIDDEN" NAME="IS_PHONE_BATCH" VALUE="<TMPL_VAR IS_PHONE_BATCH>">
  <INPUT TYPE=HIDDEN NAME="BBP" VALUE="<TMPL_VAR NAME=base-batch-price>">
  <INPUT TYPE=HIDDEN NAME="DAPP" VALUE="<TMPL_VAR NAME=dedupeall-price>">
  <INPUT TYPE=HIDDEN NAME="DAP" VALUE="<TMPL_VAR NAME=dedupeaddresses-price>">
  <INPUT TYPE=HIDDEN NAME="DPP" VALUE="<TMPL_VAR NAME=dedupephones-price>">
  <INPUT TYPE=HIDDEN NAME="NP" VALUE="<TMPL_VAR NAME=neighbors-price>">
  <INPUT TYPE=HIDDEN NAME="AOP" VALUE="<TMPL_VAR NAME=preconfig_adlonly-price>">
  <INPUT TYPE=HIDDEN NAME="ABP" VALUE="<TMPL_VAR NAME=preconfig_adlbest-price>">
  <INPUT TYPE=HIDDEN NAME="ABPF" VALUE="<TMPL_VAR NAME=preconfig_adlbestfull-price>">
  <INPUT TYPE=HIDDEN NAME="AUP" VALUE="<TMPL_VAR NAME=preconfig_adlupdate-price>">
  <INPUT TYPE=HIDDEN NAME="AIP" VALUE="<TMPL_VAR NAME=preconfig_adlimpact-price>">
  <INPUT TYPE=HIDDEN NAME="AHIP" VALUE="<TMPL_VAR NAME=preconfig_adlhighimpact-price>">
  <INPUT TYPE=HIDDEN NAME="AHIPP" VALUE="<TMPL_VAR NAME=preconfig_adlhighimpact_plus-price>">
  <INPUT TYPE=HIDDEN NAME="DDP" VALUE="<TMPL_VAR NAME=dateofdeath-price>">
  <INPUT TYPE=HIDDEN NAME="DBP" VALUE="<TMPL_VAR NAME=dateofbirth-price>">
  <INPUT TYPE=HIDDEN NAME="BSP" VALUE="<TMPL_VAR NAME=bestssn-price>">


                                
