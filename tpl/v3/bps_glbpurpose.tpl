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
            document.GLB.GLB_PURPOSE.value = button_number;
            document.GLB.EVENT.value = 'SEARCH/SHOW_DPPA';
            <TMPL_IF CLOSE_WINDOW>opener.document.getElementById("glb_reason").innerHTML  = get_glb(button_number);
            document.GLB.CLOSE_WINDOW.value = 1;</TMPL_IF>
            document.forms[0].submit();

        }
        </script>
    </head>
    <body <TMPL_UNLESS VERIFY_PASSWORD>onLoad="window.focus();"</TMPL_UNLESS> topmargin="0" leftmargin="0" marginwidth="0" marginheight="0">
        <TMPL_INCLUDE NAME="header_info.tpl">

        <form name="GLB" action="<TMPL_VAR NAME=ACTION>" method="post">
        <TMPL_INCLUDE NAME="common_hidden_input.tpl">
        <input type="hidden" name="GLB_PURPOSE" value="<TMPL_VAR NAME=GLB_PURPOSE>">
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
                    This service may contain information governed by the Gramm-Leach-Bliley Act (GLBA).&nbsp;&nbsp;In accordance with the GLBA, <b>PLEASE SELECT</b> the purpose for which you intend to utilize this information.&nbsp;&nbsp;The purpose you select will govern this entire session.&nbsp;&nbsp;If the purpose for which you are conducting searches changes, you will need to exit the system, re-login, and select another purpose. 
                    </p>

                    <div class="subTxt">

                        <p>
                          <TMPL_IF NAME=GLB_PURPOSE_LEVEL_01>
                            <a class="glb" href="javascript:setchecked(1);">Click to Continue Transactions Authorized by Consumer</a>
                            <br>
                            As necessary to effect, administer, or enforce a transaction requested or authorized by the consumer
                          </TMPL_IF>
                        </p>


                        <p>
                          <TMPL_IF NAME=GLB_PURPOSE_LEVEL_11>
                            <a class="glb" href="javascript:setchecked(11);" title="Select to Continue Transactions Authorized by Consumer (Application Verification Only)">Click to Continue Transactions Authorized by Consumer (Application Verification Only)</a>
                            <br>
                            As necessary to effect, administer, or enforce a transaction requested or authorized by the consumer by verifying the identification information contained in applications
                          </TMPL_IF>
                        </p>

                        <p>
                          <TMPL_IF NAME=GLB_PURPOSE_LEVEL_02>
                                <TMPL_IF NAME="GLB_DPPA_LAW_ENFORCEMENT_ALLOWED">
                                <a class="glb" href="javascript:setchecked(2);" title="Select to Continue Law Enforcement Purposes">Click to Continue Law Enforcement Purposes</a>
                                <TMPL_ELSE>
                                <a class="glb_dppa_disabled" href="javascript:alert('The law enforcement purpose is limited to users listed in our records as law enforcement.');" title="Select to Continue Law Enforcement Purposes">Click to Continue Law Enforcement Purposes</a>
                                </TMPL_IF>
                            <br>
                            To the extent specifically permitted or required under other provisions of law and in accordance with the Right to Financial Privacy Act of 1978, to law enforcement agencies, self-regulatory organizations, or for an investigation on a matter related to public safety
                          </TMPL_IF>
                        </p>

                        <p>
                          <TMPL_IF NAME=GLB_PURPOSE_LEVEL_03>
                            <a class="glb" href="javascript:setchecked(3);" title="Select to Continue Use by Persons Holding a Legal or Beneficial Interest Relating to the Consumer">Click to Continue Use by Persons Holding a Legal or Beneficial Interest Relating to the Consumer</a>
                            <br>
                            For use by persons holding a legal or beneficial interest relating to the consumer
                          </TMPL_IF>
                        </p>

                        <p>
                          <TMPL_IF NAME=GLB_PURPOSE_LEVEL_12>
                            <a class="glb" href="javascript:setchecked(12);" title="Select to Continue Use by Persons Acting in a Fiduciary Capacity on Behalf of the Consumer">Click to Continue Use by Persons Acting in a Fiduciary Capacity on Behalf of the Consumer</a>
                            <br>
                            For use by persons acting in a fiduciary or representative capacity on behalf of the consumer
                          </TMPL_IF>
                        </p>

                        <p>
                          <TMPL_IF NAME=GLB_PURPOSE_LEVEL_05>
                            <a class="glb" href="javascript:setchecked(5);" title="Select to Continue Fraud Prevention or Detection">Click to Continue Fraud Prevention or Detection</a>
                            <br>
                            For use to protect against or prevent actual or potential fraud, unauthorized transactions, claims, or other liability
                          </TMPL_IF>
                        </p>

                        <p>
                          <TMPL_IF NAME=GLB_PURPOSE_LEVEL_06>
                            <a class="glb" href="javascript:setchecked(6);" title="Select to Continue Required Institutional Risk Control">Click to Continue Required Institutional Risk Control</a>
                            <br>
                            For required institutional risk control, or for resolving customer disputes or inquiries
                          </TMPL_IF>
                        </p>

                        <p>
                          <TMPL_IF NAME=GLB_PURPOSE_LEVEL_07>
                            <a class="glb" href="javascript:setchecked(7);" title="Select to Continue Legal Compliance">Click to Continue Legal Compliance</a>
                            <br>
                            For use to comply with Federal, State, or local laws, rules, and other applicable legal requirements
                          </TMPL_IF>
                        </p>

                        <p>
                           <a class="glb" href="javascript:setchecked(0);" title="Select I Have No Permissible Purpose">I Have No Permissible Purpose</a>
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
