<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
   "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="en" xml:lang="en">
<head>
  <title>Accurint Alerts - Select Alert Option</title>
  <script type="text/javascript">//<![CDATA[
    document.onload=window.focus();
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
    <form name="CC_CONNECT_DISCLAIMER" action="<TMPL_VAR ACTION_REPORT>" method="post">
<TMPL_VAR HIDDEN_FIELDS>
      <h1>Legal Disclaimer for Case Deconfliction</h1>
      <p>
        By selecting “Connect Me” you are consenting to allow information that you have provided to be shared with
        another user of this product, as well as consenting to having your contact information provided.  That user
        may be a person within your Agency, another agency, including other external Government and/or Law Enforcement
        Users.
      </p>
      <p>
        Case Deconfliction will auto-notify 2 or more Users that have searched on the same record, either inter-agency
        or intra-agency, including other external Government and/or Law Enforcement Users, as allowed by your
        Administrator, to agree to connect to discuss case similarities.  This tool can improve case investigations
        and workflow efficiencies by the cross referencing of searches so that you may decide to share case notes
        or collaborate on investigations. By proceeding, you agree to such use and disclosure.
      </p>
      <p align="center">
        <input class="btn" name="ACCEPT" value="Accept" type="submit">
        <input class="btn" name="CLOSE" value="Cancel" onclick="window.close();" type="button">
      </p>
    </form>
  </div>
</body>
</html>
