<!DOCTYPE html>
<html>
    <head>
        <TMPL_INCLUDE NAME="includes_info.tpl">
        <script src="<TMPL_VAR NAME='JSPATH'>/dppa_info.js"></script>
        <script src="<TMPL_VAR NAME='JSPATH'>/overlibmws.js"></script>
        <script src="<TMPL_VAR NAME='JSPATH'>/v3/glba_dppa_dmf.js"></script>        
        <script language="JavaScript">
        function setchecked(button_number)
        {
            document.DMF.DMF_PURPOSE.value = button_number;
            document.DMF.EVENT.value = 'SEARCH/SAVE_DMF';
            <TMPL_IF CLOSE_WINDOW>opener.document.getElementById("dmf_reason").innerHTML  = get_dmf(button_number);
            document.DMF.CLOSE_WINDOW.value = 1;</TMPL_IF>
            document.forms[0].submit();

        }
        </script>
    </head>
    <body <TMPL_UNLESS VERIFY_PASSWORD>onLoad="window.focus();"</TMPL_UNLESS> topmargin="0" leftmargin="0" marginwidth="0" marginheight="0">
        <TMPL_INCLUDE NAME="header_info.tpl">

        <form name="DMF" action="<TMPL_VAR NAME=ACTION>" method="post">
        <TMPL_INCLUDE NAME="common_hidden_input.tpl">
        <input type="hidden" name="DMF_PURPOSE" value="<TMPL_VAR NAME=DMF_PURPOSE>">
        <input type="hidden" NAME="CURRENT_EVENT" VALUE="<TMPL_VAR NAME=CURRENT_EVENT>">
        <input type="hidden" name="EVENT" value="">
        <input type="hidden" name="CLOSE_WINDOW" value="0">
        <INPUT type=hidden NAME="SKIN_TYPE" VALUE="<TMPL_VAR NAME=SKIN_TYPE>">
        <INPUT type=hidden NAME="APPLICATION_TYPE" VALUE="<TMPL_VAR NAME=APPLICATION_TYPE>">
        <INPUT type=hidden NAME="COURT_SEARCH_WIZARD" VALUE="<TMPL_VAR NAME=COURT_SEARCH_WIZARD>">
        <INPUT type=hidden NAME="MYACCTAB" VALUE="<TMPL_VAR NAME=MYACCTAB>">

            <div class="txtWrapper">
                <div id="txtCon">
                    <div class="lnin-header">Permitted Use Certification&nbsp; &nbsp; <a href="javascript:void(0);" onClick="javascript:show_post_popup('LOGIN/SHOW_POPUP','GLBDPPA',875,725,0,0,0,1,1,0,'','glb_dppa_faq');" title="Open to know what's this"><b><u>What's This?</u></b></a></div>
                    <br/>

                    <p>
	            This service may contain information from the NTIS Limited Access Death Master File (DMF).&nbsp;&nbsp;In accordance with the requirements for accessing the DMF, PLEASE SELECT the purpose for your access to this information.&nbsp;&nbsp;The purpose you select will govern this entire session.&nbsp;&nbsp;If the purpose for which you are conducting searches changes, you will need to begin a new session and select another purpose.
                    </p>

                    <div class="subTxt">

                        <p>
                          <TMPL_IF NAME=DMF_PURPOSE_LEVEL_10>
                            <a class="glb" href="javascript:setchecked('10');">Click to Continue &mdash; Legitimate Fraud Prevention Interest</a>
                          </TMPL_IF>
                        </p>

                        <p>
                          <TMPL_IF NAME=DMF_PURPOSE_LEVEL_01>
                            <a class="glb" href="javascript:setchecked('01');">Click to Continue &mdash; Legitimate Business Purpose Pursuant to a Law, Government Rule, Regulation, or Fiduciary Duty</a>
                          </TMPL_IF>
                        </p>

                        <p class="hr">&nbsp;</p>
                        <p>
                            <TMPL_INCLUDE NAME="glba_dppa_generic_disclaimer.tpl">
                        </p>
                    </div>
                </div>
            </div>
            
            <TMPL_INCLUDE NAME="verify_password_trigger.tpl">
        </form>
    </body>
</html>
