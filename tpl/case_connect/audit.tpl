<!-- begin case_connect/audit.tpl -->
<!--<TMPL_VAR SERVER_ID>-->
<html>
<head>
<title>Case Audit</title>

<link href="<TMPL_VAR NAME='CSSPATH'>/simple_date_picker.css" rel="stylesheet" type="text/css">
<script src="<TMPL_VAR NAME='JSPATH'>/simple_date_picker.js"></script>
<script type="text/javascript" src="<TMPL_VAR JSPATH>/prototype.js"></script>
<script type="text/javascript" src="<TMPL_VAR JSPATH>/ln/lexis.js"></script>
<script type="text/javascript" src="<TMPL_VAR JSPATH>/ln/misc.js"></script>
<script type="text/javascript" src="<TMPL_VAR JSPATH>/common.js"></script>
<script type="text/javascript" src="<TMPL_VAR JSPATH>/shared.js"></script>
<script type="text/javascript" src="<TMPL_VAR JSPATH>/sorttable.js"></script>
<link href="<TMPL_VAR CSSPATH>/style1.css" rel="stylesheet" type="text/css">
<link href="<TMPL_VAR CSSPATH>/v2/<TMPL_VAR SKIN_TYPE>/skin.css" rel="stylesheet" type="text/css">
<script type="text/javascript">
    var action = '<TMPL_VAR ACTION_ADMIN>';
    var img_path = '<TMPL_VAR IMGPATH>';
    var help_path = '<TMPL_VAR HLPPATH>';
    var css_path = '<TMPL_VAR CSSPATH>';
</script>
<TMPL_UNLESS SA_DISABLED>
  <script type="text/javascript" src="<TMPL_VAR JSPATH>/audit.js"></script>
  <link href="<TMPL_VAR CSSPATH>/audit.css" rel="stylesheet" type="text/css"/>
</TMPL_UNLESS>

<script>function load_fskid(id){}</script>

</head>

<body onLoad="<TMPL_UNLESS SHOW_MYACC_WITHOUT_PARENT>setInterval('checkparent()',2000);</TMPL_UNLESS>" topmargin="0" leftmargin="0" marginwidth="0" marginheight="0">

<center>

<TMPL_INCLUDE admin_header.tpl>

<!-- begin content space -->
<table border="0" cellpadding="0" cellspacing="0" class="myaccountborder" width="880">
  <tr>
    <td align="center" valign="top">
    &nbsp;<br>
    <table border="0" cellpadding="0" cellspacing="0" width="856" class="myaccountbody">
     <tr>
        <td align="center">
  <!-- Begin Case Audit Content Here -->

    <TMPL_INCLUDE NAME="case_connect/audit_content.tpl">

  <!-- End Case Audit Content Here -->
        </td>
      </tr>

    </table>
    </td>
  </tr>
</table>
<!-- end content space -->
<TMPL_INCLUDE myaccount_footer.tpl>
<TMPL_IF SA_DISABLED>
<div class="unifont1" style="width: 840px; text-align: left;">
<TMPL_ELSE>
<div id="DISCLAMR">
</TMPL_IF>
<b>Reminder:</b>  Immediately notify LexisNexis by email
(<a href="mailto:security.investigations@lexisnexis.com">security.investigations@lexisnexis.com</a>),
phone (1-888-872-5375) and at PSCO, 1000 Alderman Drive, Alpharetta, Georgia 30005 if you suspect,
have reason to believe or confirm that a User ID or the LN Services (or data derived directly or indirectly
therefrom) is or has been lost, stolen, compromised, misused or used, accessed or acquired in an unauthorized
manner or by any unauthorized person, or for any purpose other than legitimate business reasons.
</div>
<div id="BUSY"></div>
<TMPL_INCLUDE manage_account_error_mesg.tpl>

</center>

</form>
<TMPL_INCLUDE NAME="classic_footer.tpl">
<TMPL_INCLUDE NAME="search_hidden_form.tpl">
</body>
</html>
<!-- end case_connect/audit.tpl -->
