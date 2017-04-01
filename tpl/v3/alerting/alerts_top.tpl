<html>
	<head>
		<title>Person Alert</title>
		<meta http-equiv="X-UA-Compatible" content="IE=Edge" />
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
		<script src="<TMPL_VAR NAME='JSPATH'>/v3/jquery.min.js"></script>
		<script src="<TMPL_VAR NAME='JSPATH'>/v3/jquery-ui.min.js"></script>
		<script>
			var $j = jQuery.noConflict();
			var help_html_file = '';
			var help_flash_file = '';
			var help_file_type = '';

			var vertical = '<TMPL_VAR NAME=APPLICATION_TYPE>';
			if (vertical == 'bps') { help_file_type = '_bps'; }

			function open_help(help_html,help_flash) {
				help_html_file = help_html;
				if (vertical == 'bps' && help_flash) {
				help_flash_file = help_flash;
					show_post_popup('LOGIN/SHOW_POPUP','HelpWindow',780,490,1,1,1,1,1,0,'','show_help_option')
				} else {
					general_win('<TMPL_VAR NAME=HLPPATH>/v3/' + help_html,'HelpWindow',780,490,1,1,1,1,1,0);
				}
			}
			
		    $j(function(){
		    	if ($j('#alert_options_toggle')){
		          $j('#alert_options_toggle').change(function(){
		            $j('input[name="alert_options"]').prop('checked',$j(this).prop('checked'));
		          });
		          $j('#alert_options_toggle').click(function(){
		            $j('input[name="alert_options"]').prop('checked',$j(this).prop('checked'));
		          });
		    	}
		    });
		</script>
		<script src="<TMPL_VAR NAME='JSPATH'>/v2/search.js"></script>
		<script src="<TMPL_VAR NAME='JSPATH'>/shared.js"></script>
		<script src="<TMPL_VAR NAME='JSPATH'>/common.js"></script>
		<script src="<TMPL_VAR NAME='JSPATH'>/simple_date_picker.js"></script>
		<script src="<TMPL_VAR NAME='JSPATH'>/v3/utility.js"></script>
		<script src="<TMPL_VAR NAME='JSPATH'>/v3/tips.js"></script>
        <script src="<TMPL_VAR NAME='JSPATH'>/validate.js"></script>
		<TMPL_IF NAME="LOAD_GOOGLE_JS">
			<script src="<TMPL_VAR NAME='JSPATH'>/gmapslib.js"></script>
		</TMPL_IF>

		<link href="<TMPL_VAR NAME='CSSPATH'>/base.css" rel="stylesheet" type="text/css">
		<link href="<TMPL_VAR NAME='CSSPATH'>/batch.css" rel="stylesheet" type="text/css">
	</head>

<body onunload="closewaitwin();" leftmargin="0" topmargin="0" marginheight="0" marginwidth="0">
<div class="topBarCon">
    <div class="topBarConMiddle" style="margin-left:5px;">
        <div class="left">
            <ul>
                <TMPL_IF GOV>
                    <li class="ln-logo ln-logo-gov"><div>&nbsp;</div></li>
                </TMPL_IF>
                <TMPL_IF LE>
                    <li class="ln-logo ln-logo-le"><div>&nbsp;</div></li>
                </TMPL_IF>
                <TMPL_IF HEA>
                    <li class="ln-logo ln-logo-hea"><div>&nbsp;</div></li>
                </TMPL_IF>

            </ul>
        </div>
        <div class="right">
            <ul id="support-links">
				<li><a style="cursor: help;" href="javascript:void(0);" onClick="open_help('person_alerts_help.html','HelpWindow',780,490,1,1,1,1,1,0);">Help</a></li>
				<li><a href="http://risk.lexisnexis.com/contact" target="_blank"> Contact</a></li>
            </ul>
        </div>
    </div>
</div>
    
<div id="modalDiv">
    <img src="<TMPL_VAR IMGPATH>/loading.gif" alt="Running Search" height="40" width="67"/>
    <span>Processing... please wait.</span>
</div>
<div id="modalBlur"></div>

<form name="SHORT_REPORT" action="<TMPL_VAR NAME=ACTION_REPORT>" method="post" onsubmit="return validate();">
      <TMPL_INCLUDE NAME="common_hidden_input.tpl">
      <INPUT type=hidden NAME="SKIN_TYPE" VALUE="<TMPL_VAR NAME=SKIN_TYPE>">
      <INPUT type=hidden NAME="APPLICATION_TYPE" VALUE="<TMPL_VAR NAME=APPLICATION_TYPE>">
      <INPUT type=hidden NAME="EVENT" VALUE="ALERT/SAVE_NEW">
      <INPUT type=hidden NAME="RECID_REPORT" VALUE="<TMPL_VAR NAME="RECID_REPORT">">
      <INPUT type=hidden NAME="UNIQUEID" VALUE="<TMPL_VAR NAME="UNIQUEID">">
      <INPUT type=hidden NAME="FIRST_NAME" VALUE="<TMPL_VAR NAME="FIRST_NAME">">
      <INPUT type=hidden NAME="LAST_NAME" VALUE="<TMPL_VAR NAME="LAST_NAME">">
      <INPUT type=hidden NAME="MIDDLE_NAME" VALUE="<TMPL_VAR NAME="MIDDLE_NAME">">
      <INPUT type=hidden NAME="SUFFIX" VALUE="<TMPL_VAR NAME="SUFFIX">">
      <INPUT type=hidden NAME="DOB" VALUE="<TMPL_VAR NAME="DOB">">
      <INPUT type=hidden NAME="AGE" VALUE="<TMPL_VAR NAME="AGE">">
      <INPUT type=hidden NAME="ADDRESS" VALUE="<TMPL_VAR NAME="ADDRESS">">
      <INPUT type=hidden NAME="CSZ" VALUE="<TMPL_VAR NAME="CSZ">">
      <INPUT type=hidden NAME="PHONE" VALUE="<TMPL_VAR NAME="PHONE">">
      <INPUT type=hidden NAME="REQUIRE_REF_CODE" VALUE="<TMPL_VAR NAME=REQUIRE_REF_CODE>">
      <INPUT type=hidden NAME="REQUIRE_REF_CODE_EXTRA" VALUE="<TMPL_VAR NAME=REQUIRE_REF_CODE_EXTRA>">
      <INPUT type=hidden NAME="REQUIRE_REF_CODE_ALERT_TEXT" VALUE="<TMPL_VAR NAME=REQUIRE_REF_CODE_ALERT_TEXT>">
      <INPUT type=hidden NAME="REQUIRE_REF_CODE_FORMAT" VALUE="<TMPL_VAR NAME=REQUIRE_REF_CODE_FORMAT>">

     <div role="dialog" class="batchCon" style="border-radius: 8px;">
        <div>
