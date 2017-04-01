<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
   "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="en" xml:lang="en">
<head>
  <title>Accurint Case Connect Disclaimer</title>
  <script type="text/javascript">//<![CDATA[

    function revert_cc(myform){
        var enroll = document.getElementById('OLD_ENROLL').value;
        var opt_in = document.getElementById('OLD_OPT_IN').value;
        myform.elements["DISABLE_CASE_CONNECT_ENROLL"].value = ( enroll == 1 ) ? 0 : 1;
        myform.elements["DISABLE_CASE_CONNECT_OPT_IN"].value = ( opt_in == 1 ) ? 0 : 1;
        myform.elements["DECLINE"].value = 1;
        myform.submit();
    }

  //]]></script>
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
<body>
  <div id="popBkg">
    <form name="CASE_CONNECT_DISCLAIMER" method="post" action="<TMPL_VAR ACTION>">
<TMPL_VAR HIDDEN_FIELDS>
      <input name="DECLINE" value="0" type="hidden"/>
      <input name="EVENT" value="CC/COMPANY_EDIT" type="hidden"/>
      <h1>Legal Disclaimer for Changing Case Deconfliction Configuration</h1>
      <p>
        By enabling Case Deconfliction, you are choosing to allow certain information that your Users have submitted
        to be shared with other parties. Case Deconfliction will auto-notify 2 or more Users that have searched on the
        same record, either inter-agency or intra-agency, including other external Government and/or Law Enforcement
        Users, as allowed by you, the Administrator, to agree to connect to discuss case similarities.
      </p>
      <p>
        This tool can improve case investigations and workflow efficiencies by the cross referencing of searches so
        that Users may decide to share case notes or collaborate on investigations. This will apply to all Users on
        your account.  By proceeding, you agree to such use and disclosure.
      </p>
      <div align="center">
        <input class="btn" name="ACCEPT" value="Accept" type="submit"/>
        <input class="btn" name="BUTTON" value="Decline" onclick="javascript:revert_cc(this.form);" type="button"/>
      </div>
    </form>
  </div>
</body>
</html>
