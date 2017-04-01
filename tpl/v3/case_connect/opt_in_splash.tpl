<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="en" xml:lang="en">
<head>
  <title>Accurint Alerts - First Opt-In Disclaimer</title>
  <script type="text/javascript" src="<TMPL_VAR JSPATH>/v3/utility.js"></script>
  <script type="text/javascript" src="<TMPL_VAR JSPATH>/common.js"></script>
  <script type="text/javascript" src="<TMPL_VAR JSPATH>/shared.js"></script>
  <link href="<TMPL_VAR NAME='CSSPATH'>/accurint.css" rel="stylesheet" type="text/css">
  <link href="<TMPL_VAR NAME='CSSPATH'>/<TMPL_VAR NAME=SKIN_TYPE>/skin.css" rel="stylesheet" type="text/css">
  <link href="<TMPL_VAR NAME='CSSPATH'>/accurintSearch.css" rel="stylesheet" type="text/css">
  <link href="<TMPL_VAR NAME='CSSPATH'>/demo.css" rel="stylesheet" type="text/css">
  <link href="<TMPL_VAR NAME='CSSPATH'>/demo2.css" rel="stylesheet" type="text/css">
  <link href="<TMPL_VAR NAME='CSSPATH'>/sprites.css" rel="stylesheet" type="text/css">
  <link href="<TMPL_VAR NAME='CSSPATH'>/menus_alerts.css" rel="stylesheet" type="text/css">
  <script src="<TMPL_VAR NAME='JSPATH'>/v3/jquery.min.js"></script>
  <script src="<TMPL_VAR NAME='JSPATH'>/v3/jquery-ui.min.js"></script>
  <script>
    var $j = jQuery.noConflict();
    function submit_first_opt_in(decline) {
      showpw_v3();
      var df = document.forms[0];
      if (decline) {
	  df.CC_OPT_IN.value=0;
	  df.CANCEL.value='Decline';
      } else {
	  df.ACCEPT.value='Accept';
      }
      df.submit();
  }
</script>
</head>
<body topmargin="0" leftmargin="0" marginwidth="0" marginheight="0" bgcolor="#ffffff">

<TMPL_INCLUDE NAME="../logo.tpl">

<form name="CC_OPT_IN_DISCLAIMER" action="<TMPL_VAR CURRENT_ACTION>" method="post">
  <TMPL_VAR HIDDEN_FIELDS>
  <input type="hidden" name="CANCEL" value="">
  <input type="hidden" name="ACCEPT" value="">
  
  <div role="dialog">
    <div class="txtWrapper" style="min-width:900px;">
      <div id="txtCon">

      <div class="lnin-header">First Opt-In Disclaimer</div>
      <br/>
      <p>
      By enabling Case Deconfliction, you are choosing to allow certain information that you have submitted to be
      shared with other parties. Case Deconfliction will auto-notify 2 or more Users that have searched on the same
      record, either inter-agency or intra-agency, including other external Government and/or Law Enforcement Users,
      as allowed by your Administrator, to agree to connect to discuss case similarities.
      </p>
      <p>
      This tool can improve case investigations and workflow efficiencies by the cross referencing of searches so
      that you may decide to share case notes or collaborate on investigations. This will apply to all searches on
      your account.  By proceeding, you agree to such use and disclosure.
      </p>
      <br/>
      <p align="center">
        <input class="myaccount-btn red-btn" class="btn" value="Accept" type="button" onclick="submit_first_opt_in();"/>
	<input class="myaccount-btn darkgrey-btn" class="btn" value="Decline" type="button" onclick="submit_first_opt_in(1);"/>
      </p>

      </div>
    </div>
  </div>

  <div id="modalDiv">
    <img src="<TMPL_VAR IMGPATH>/loading.gif" alt="Running Search" height="40" width="67"/>
    <span>Running Search... Please Wait.</span>
  </div>
  <div id="modalBlur"></div>
  
</form>
</body>
</html>
