<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
   "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="en" xml:lang="en">
<head>
  <title>Accurint - Case Deconfliction Alerts/Setup Enrollment</title>
  <link href="<TMPL_VAR CSSPATH>/<TMPL_VAR SKIN_TYPE>/skin.css" rel="stylesheet" type="text/css"/>
  <link href="<TMPL_VAR CSSPATH>/style1.css" rel="stylesheet" type="text/css"/>
  <link href="<TMPL_VAR CSSPATH>/CaseConnect/edit.css" rel="stylesheet" type="text/css"/>
  <script type="text/javascript" src="<TMPL_VAR JSPATH>/please_wait.js"></script>
  <script type="text/javascript" src="<TMPL_VAR JSPATH>/common.js"></script>
  <script type="text/javascript" src="<TMPL_VAR JSPATH>/shared.js"></script>
  <script type="text/javascript" src="<TMPL_VAR JSPATH>/prototype.js"></script>
  <script type="text/javascript" src="<TMPL_VAR JSPATH>/Accurint/CaseConnect/Edit.js"></script>
 </head>
<body>
<div id="pleasewait" style="position:absolute; top:250px;left:300px; visibility: hidden; z-index:1000;">
<img src="<TMPL_VAR IMGPATH>/bg_processing.gif" id="pw" name="pw" width="300" height="65" border="0">
  </div>

  <div class="unifont1" id="mainbody">
    <fieldset id="tt_bar">
      <span id="title_span">Case Deconfliction Alert/Setup Enrollment</span>
      <span id="help_span"><input id="help_bt" name="help" value="Help ?" type="button"/></span>
    </fieldset>
    <form id="CC_ENROLL" name="CC_ENROLL" action="<TMPL_VAR ACTION_REPORT>" method="post">
      <TMPL_INCLUDE NAME=common_hidden_input.tpl>
      <input type="hidden" name="DOL_DATE" value="<TMPL_VAR DOL_DATE>"/>
      <input type="hidden" name="SKIN_TYPE" value="<TMPL_VAR SKIN_TYPE>"/>
      <input type="hidden" name="APPLICATION_TYPE" value="<TMPL_VAR APPLICATION_TYPE>"/>
      <input type="hidden" name="EVENT" value="CC/DO_ENROLL"/>
      <input type="hidden" name="UNIQUEID" value="<TMPL_VAR UNIQUEID>"/>
      <input type="hidden" name="RUN_HISTORY" value="" id="RUN_HISTORY"/>
<TMPL_INCLUDE case_connect/enroll_edit_block.tpl>
      <div class="field" align="left">
        <input id="HISTORY_ALERT" name="HISTORY_ALERT" value="Run Deconfliction History" type="button"<TMPL_UNLESS CASE_CONNECT_EXTRA> style="display: none;"</TMPL_UNLESS>/>
        <input id="SAVE_ALERT" name="SAVE_ALERT" value="Save" type="button"/>
        <input id="CANCEL_ALERT" name="CANCEL_ALERT" value="Cancel" type="button"/>
      </div>
    </form>

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
        showpw();
        this.form.submit();
      }
      ev.stop();
    }

    //do onload
    document.observe( 'dom:loaded', function(evt){
      runfirst();
      $('help_bt').observe( 'click', function(ev){
        open_help_html('case_deconfliction_help.html#enroll','Deconfliction');
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
              showpw();
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

  </div>
</body>
</html>
