<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
   "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="en" xml:lang="en">
<head>
  <title>Accurint Alerts - First Opt-In Disclaimer</title>
  <script type="text/javascript" src="<TMPL_VAR JSPATH>/please_wait.js"></script>
  <script type="text/javascript" src="<TMPL_VAR JSPATH>/common.js"></script>
  <script type="text/javascript" src="<TMPL_VAR JSPATH>/shared.js"></script>
  <style type="text/css">
    body{
        font-family: Arial, Helvetica, sans-serif;
        font-size: 12px;
        margin: 0;
        padding: 0;
        background-color: #FFFFFF;
    }
    h1{
        background-image: url(/bps/images/v2/ico_hdrarrow_red.gif);
        background-position: left 0.42em;
        background-repeat: no-repeat;
        padding-left: 15px;
        font-size: 16px;
        font-weight: bolder;
        color: #ed1c24;
    }
    #popBkg {
        background-image: url(/bps/images/v2/bkg_search_selection.gif);
        background-repeat: no-repeat;
        padding: 50px;
    }
    .btn{
        background:#CC0033 url(/bps/images/v2/btn_bkg_search.gif) repeat-x top;
        color:#ffffff;
        text-decoration:none;
        text-transform:uppercase;
        font-weight:bold;
        height:22px;
        width:100px;
        padding:2px;
        margin:10px;
        border-top:2px solid #990033;
        border-right:1px solid #990033;
        border-bottom:2px solid #990033;
        border-left:1px solid #990033;
        font-size:10px;
        float:center;
        font-family: Arial, Helvetica, sans-serif;
        cursor: hand;
        cursor: pointer;
    }
  </style>
</head>

<body id="mainbody">
  <div id="pleasewait" style="position:absolute; top: 200px; left:300px; visibility:hidden; z-index:1000;">
    <img src="<TMPL_VAR IMGPATH>/bg_processing.gif" id="pw" name="pw" width="300"
     height="65" border="0">
  </div>
  
  <div id="popBkg">
    <form name="SHORT_REPORT" action="<TMPL_VAR NAME=ACTION_REPORT>" method="post">
      <TMPL_INCLUDE NAME=common_hidden_input.tpl>
      <input type="hidden" name="REFERENCE_CODE" value="<TMPL_VAR NAME=REFERENCE_CODE>"/>
      <input type="hidden" name="DOL_DATE" value="<TMPL_VAR NAME=DOL_DATE>"/>
      <input type="hidden" name="SKIN_TYPE" value="<TMPL_VAR NAME=SKIN_TYPE>"/>
      <input type="hidden" name="APPLICATION_TYPE" value="<TMPL_VAR NAME=APPLICATION_TYPE>"/>
      <input type="hidden" name="RECID_REPORT" value="<TMPL_VAR NAME=RECID_REPORT>"/>
      <input type="hidden" name="UNIQUEID" value="<TMPL_VAR NAME=UNIQUEID>"/>
      <input type="hidden" name="FIRST_NAME" value="<TMPL_VAR NAME=FIRST_NAME>"/>
      <input type="hidden" name="FULL_NAME" value="<TMPL_VAR NAME=FULL_NAME>"/>
      <input type="hidden" name="LAST_NAME" value="<TMPL_VAR NAME=LAST_NAME>"/>
      <input type="hidden" name="MIDDLE_NAME" value="<TMPL_VAR NAME=MIDDLE_NAME>"/>
      <input type="hidden" name="SUFFIX" value="<TMPL_VAR NAME=SUFFIX>"/>
      <input type="hidden" name="DOB" value="<TMPL_VAR NAME=DOB>"/>
      <input type="hidden" name="AGE" value="<TMPL_VAR NAME=AGE>"/>
      <input type="hidden" name="ADDRESS" value="<TMPL_VAR NAME=ADDRESS>"/>
      <input type="hidden" name="CSZ" value="<TMPL_VAR NAME=CSZ>"/>
      <input type="hidden" name="PHONE" value="<TMPL_VAR NAME=PHONE>"/>
      <input type="hidden" name="EVENT" value="CC/ENROLL"/>
      <h1 align="center">First Enrollment Disclaimer</h1>
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
      <p align="center">
        <input name="ACCEPT" value="Accept" type="submit">
        <input name="CLOSE" value="Cancel" onclick="window.close();" type="button">
      </p>
    </form>
  </div>
</body>
</html>
