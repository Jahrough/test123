<html>
<head>
  <title>Accurint - Case Deconfliction Alerts/Setup Enrollment</title>
  <meta http-equiv="X-UA-Compatible" content="IE=Edge" />
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
  <link href="<TMPL_VAR NAME='CSSPATH'>/base.css" rel="stylesheet" type="text/css">
  <link href="<TMPL_VAR NAME='CSSPATH'>/batch.css" rel="stylesheet" type="text/css">
  <script type="text/javascript" src="<TMPL_VAR JSPATH>/v3/utility.js"></script>
  <script type="text/javascript" src="<TMPL_VAR JSPATH>/common.js"></script>
  <script type="text/javascript" src="<TMPL_VAR JSPATH>/shared.js"></script>
  <script type="text/javascript" src="<TMPL_VAR JSPATH>/prototype.js"></script>
  <script type="text/javascript" src="<TMPL_VAR JSPATH>/Accurint/CaseConnect/Edit.js"></script>
  <script src="<TMPL_VAR NAME='JSPATH'>/v3/jquery.min.js"></script>
  <script src="<TMPL_VAR NAME='JSPATH'>/v3/jquery-ui.min.js"></script>
  <script>
	var $j = jQuery.noConflict();
	var js_base = "<TMPL_VAR NAME=JSPATH>";
	var css_base = "<TMPL_VAR NAME=CSSPATH>";
	var img_base = "<TMPL_VAR NAME=IMGPATH>";
	var enable_v3 = 1;

	var help_html_file = '';
	var vertical = '<TMPL_VAR NAME=APPLICATION_TYPE>';
	var help_path = '<TMPL_VAR NAME=HLPPATH>/v3';
	var help_base = '<TMPL_VAR NAME=HLPPATH>';
  </script>
  <script type="text/javascript">//<![CDATA[

    function runfirst(){
      window.focus();
<TMPL_IF ERROR>
      window.alert("<TMPL_VAR ERROR>");
      window.close();
</TMPL_IF>
<TMPL_IF ERROR_MSG_LIST>
      var errortext = '';
  <TMPL_LOOP ERROR_MSG_LIST>
      errortext += '<TMPL_VAR MSG>\n';
  </TMPL_LOOP>
      alert(errortext);
</TMPL_IF>
<TMPL_IF ERROR_MSG>
      alert('<TMPL_VAR ERROR_MSG>\n');
</TMPL_IF>

    }

    var help_path = '<TMPL_VAR HLPPATH>';

    var doCancel = function(ev){
      if( confirm('Are you sure you want to Cancel?') ){
        window.close();
      }
      ev.stop();
    }

    var doSubmit = function(ev){
      if( validate_emails() ){
        showpw_v3();
        this.form.submit();
      }
      ev.stop();
    }

    //do onload
    document.observe( 'dom:loaded', function(evt){
      runfirst();
    $('help_bt').observe( 'click', function(ev){
      open_help_html('v3/case_deconfliction_help.html#enroll','Deconfliction');
      ev.stop();
      });
      $('HISTORY_ALERT').observe( 'click', function(ev){
          var historyTxt = '';
          historyTxt += 'By choosing to run a case deconfliction history ';
          historyTxt += 'you will receive immediate notification of other ';
          historyTxt += 'users, who previously opted in their search with ';
          historyTxt += 'the same permissions, that matches on the subject\'s ';
          historyTxt += 'information by SSN, Phone, LexID, DL#, VIN#, Tag#\/Plate, ';
          historyTxt += 'APN#, DOC# or Email Address.';
          historyTxt += '\n\n';
          historyTxt += 'Do you wish to continue?';
          if(confirm( historyTxt )){
            if( validate_emails() ){
              $('RUN_HISTORY').value = 1;
              showpw_v3();
              document.forms[0].submit();
            }
          }
          evt.stop();
      });
      $('SAVE_ALERT').observe( 'click', doSubmit );
      $('CANCEL_ALERT').observe( 'click', doCancel );
      evt.stop();
    });

    //]]></script>
  
 </head>
<body>
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
                    <li><a style="cursor: help;" id="help_bt" title="Open help">Help</a></li>         
                    <li><a href="http://risk.lexisnexis.com/contact" target="_blank" title="Open Contact"> Contact</a></li>
                </ul>
            </div>
        </div>
    </div>

  <div role="dialog">
    <form id="CC_ENROLL" name="CC_ENROLL" action="<TMPL_VAR ACTION_REPORT>" method="post">
      <TMPL_INCLUDE NAME="common_hidden_input.tpl">
      <input type="hidden" name="DOL_DATE" value="<TMPL_VAR DOL_DATE>"/>
      <input type="hidden" name="SKIN_TYPE" value="<TMPL_VAR SKIN_TYPE>"/>
      <input type="hidden" name="APPLICATION_TYPE" value="<TMPL_VAR APPLICATION_TYPE>"/>
      <input type="hidden" name="EVENT" value="CC/DO_ENROLL"/>
      <input type="hidden" name="UNIQUEID" value="<TMPL_VAR UNIQUEID>"/>
      <input type="hidden" name="RUN_HISTORY" value="" id="RUN_HISTORY"/>
        <div class="batchCon" style="border-radius: 8px;">
            <div>
                <div class="batch-status-title">Save As Case Deconfliction Alert (Enrollment)</div>
                <div class="batch-status-subtitle">Real-Time Notification of Another User Searching On This Record</div>
                <div class="fieldset-title"><TMPL_VAR NAME=FULL_NAME></div>
                <TMPL_INCLUDE case_connect/enroll_edit_block.tpl>       
                <div class="section-row child-divs-right">
                    <div class="field" style="width:60%;">
                        <input class="btn darkgrey-btn left" id="HISTORY_ALERT" name="HISTORY_ALERT" value="Run Deconfliction History" type="button"<TMPL_UNLESS CASE_CONNECT_EXTRA> style="display: none;"</TMPL_UNLESS>/>
                        <input class="btn grey-btn right mgl10" id="CANCEL_ALERT" name="CANCEL_ALERT" value="Cancel" type="button"/>
                        <input class="btn red-btn right" id="SAVE_ALERT" name="SAVE_ALERT" value="Save" type="button"/>
                    </div>
                </div>
            </div>
        </div>        
    </form>
  </div>
</body>
</html>
