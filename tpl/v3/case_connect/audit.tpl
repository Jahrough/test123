<!DOCTYPE html>
<html>
    <head>
        <title>Case Audit</title>
        
        <TMPL_INCLUDE NAME="myaccount/myaccount_includes.tpl">
        
        <link href="<TMPL_VAR NAME='CSSPATH'>/simple_date_picker.css" rel="stylesheet" type="text/css">
        <script src="<TMPL_VAR NAME='JSPATH'>/simple_date_picker.js"></script>
        <script type="text/javascript" src="<TMPL_VAR JSPATH>/prototype.js"></script>
        <script type="text/javascript" src="<TMPL_VAR JSPATH>/ln/lexis.js"></script>
        <script type="text/javascript" src="<TMPL_VAR JSPATH>/ln/misc.js"></script>
        <script type="text/javascript" src="<TMPL_VAR JSPATH>/common.js"></script>
        <script type="text/javascript" src="<TMPL_VAR JSPATH>/shared.js"></script>
        <script type="text/javascript" src="<TMPL_VAR JSPATH>/sorttable.js"></script>
        <link href="<TMPL_VAR CSSPATH>/style1.css" rel="stylesheet" type="text/css">
        <script src="<TMPL_VAR NAME='JSPATH'>/myaccount.js"></script>
        <script type="text/javascript">
            var action = '<TMPL_VAR ACTION_ADMIN>';
            var img_path = '<TMPL_VAR IMGPATH>';
            var help_path = '<TMPL_VAR HLPPATH>';
            var css_path = '<TMPL_VAR CSSPATH>';
        </script>
        <TMPL_UNLESS SA_DISABLED>
          <script type="text/javascript" src="<TMPL_VAR JSPATH>/v3/CaseConnect/audit.js"></script>
          <link href="<TMPL_VAR CSSPATH>/audit.css" rel="stylesheet" type="text/css"/>
        </TMPL_UNLESS>
        <script>function load_fskid(id){}</script>
    </head>

    <body onLoad="<TMPL_UNLESS SHOW_MYACC_WITHOUT_PARENT>setInterval('checkparent()',2000);</TMPL_UNLESS><TMPL_UNLESS VERIFY_PASSWORD>window.focus();</TMPL_UNLESS><TMPL_IF EXTRA_ONLOAD><TMPL_VAR EXTRA_ONLOAD></TMPL_IF>" topmargin="0" leftmargin="0" marginwidth="0" marginheight="0"<TMPL_UNLESS ENABLE_V2> class="alternatebody"</TMPL_UNLESS>>
        <TMPL_INCLUDE NAME="myaccount/header_info.tpl">
        <form name="MYACCOUNT" class="mgb0" action="<TMPL_VAR NAME=ACTION>" method="post">
            <TMPL_INCLUDE NAME="common_hidden_input.tpl">
            <INPUT type=hidden NAME="SKIN_TYPE" VALUE="<TMPL_VAR NAME=SKIN_TYPE>">
            <INPUT type=hidden NAME="APPLICATION_TYPE" VALUE="<TMPL_VAR NAME=APPLICATION_TYPE>">
            <TMPL_IF NAME="MYACCOUNT_PREFERENCES">
                <INPUT type=hidden NAME="EVENT" VALUE="MYACCOUNT/SAVE_PREFERENCES">
            <TMPL_ELSE>
                <INPUT type=hidden NAME="EVENT">
            </TMPL_IF>
            <TMPL_INCLUDE NAME="myaccount/myaccount_nav.tpl">
        </form>
            
            <div class="myaccCon" style="border-radius: 0 0 8px 8px;">
            <div role="dialog">
                <TMPL_INCLUDE NAME="myaccount/case_connect/audit_content.tpl">
                <div class="section-row" style="padding:0 15px;">
                        <b>Reminder:</b> Immediately notify LexisNexis by email
                        (<a class="myaccLnk" href="mailto:security.investigations@lexisnexis.com">security.investigations@lexisnexis.com</a>),
                        phone (1-888-872-5375) and at PSCO, 1000 Alderman Drive, Alpharetta, Georgia 30005 if you suspect,
                        have reason to believe or confirm that a User ID or the LN Services (or data derived directly or indirectly
                        therefrom) is or has been lost, stolen, compromised, misused or used, accessed or acquired in an unauthorized
                        manner or by any unauthorized person, or for any purpose other than legitimate business reasons.
                        <div id="BUSY"></div>
                </div>
            </div>
        <TMPL_INCLUDE manage_account_error_mesg.tpl>

        <TMPL_INCLUDE NAME="classic_footer.tpl">
        <TMPL_INCLUDE NAME="search_hidden_form.tpl">
    </body>
</html>
