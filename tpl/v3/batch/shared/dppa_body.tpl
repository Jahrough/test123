<!-- BEGIN v3/batch/shared/dppa_body.tpl -->
<script>
    function show_more(arr) {
        var layerfgcolor = get_layer_colors('fgcolor');
        var layerbgcolor = get_layer_colors('bgcolor');
        var width = new Array();
        width[4] = 450;
        var menu = new Array();
        menu[4] = '<br>Florida law provides that you may only use this database in connection with a civil, criminal, administrative, or arbitral proceeding for:<br><br>a. Service of process by any certified process server, special process server, or other person authorized to serve process in this state.<br><br>b. Investigation in anticipation of litigation by an attorney licensed to practice law in this state or the agent of the attorney; however, the information may not be used for mass commercial solicitation of clients for litigation against motor vehicle dealers.<br><br>c. Investigation by any person in connection with any filed proceeding; however, the information may not be used for mass commercial solicitation of clients for litigation against motor vehicle dealers.<br><br>d. Execution or enforcement of judgments and orders.<br><br>e. Compliance with an order of any court.<br><br>';
        overlib_to_modal(menu[arr], CAPTIONSIZE, 2, BORDER, 3, WIDTH, width[arr], STICKY, CLOSECLICK, CLOSETEXT, '<img border=0 width=16 height=16 alt=\'Close\' title=\'Close\' src=\'/bps/images/closex.gif\'>', CAPTION, 'Civil, Criminal, Administrative, or Arbitral Proceedings', FGCOLOR, layerfgcolor, BGCOLOR, layerbgcolor, CGCOLOR, layerbgcolor, MIDX, 0, MIDY, 0);
    }
</script>
<noscript>Your browser does not support JavaScript!</noscript>    
<INPUT TYPE=HIDDEN NAME=EVENT VALUE="<tmpl_var name=BATCH_CONTROLLER>/SAVE_DPPA">
<INPUT TYPE=HIDDEN NAME=DPPA VALUE="">

<div class="fieldset-title">DPPA Compliance</div>
<fieldset class="batchFieldset">
<table>
  <tr>
    <td>
    This service may contain information governed by the Driver's Privacy Protection Act of 1994 (DPPA).&nbsp;&nbsp;Pursuant to the DPPA, you may only access this database for one of the permitted uses set forth below.&nbsp;&nbsp;The purpose you select will govern this entire session.&nbsp;&nbsp;If the purpose for which you are conducting searches changes, you will need to exit the system, re-login, and select another purpose.
    <br><br>
    Click <img src="<TMPL_VAR NAME=IMGPATH>/info.gif" border="0" width="16" height="16"> for additional information relating to the Florida DPPA.
    </td>
  </tr>
  <tr>
    <td>
    <table>
      <tr>
        <td>
        <TMPL_IF NAME="GLB_DPPA_LAW_ENFORCEMENT_ALLOWED">
        <a class="batchLnk" href="javascript:setchecked(1);">Click to Continue Court, Law Enforcement, or Government Agencies</a>
        <TMPL_ELSE>
        <a class="glb_dppa_disabled" href="javascript:alert('The law enforcement purpose is limited to users listed in our records as law enforcement.');">Click to Continue Court, Law Enforcement, or Government Agencies</a>
        </TMPL_IF>
        <br>
        Use by a court, law enforcement agency or other government agency or entity, acting directly on behalf of a government agency.
        <br><br>
        <a class="batchLnk" href="javascript:setchecked(2);">Click to Continue Motor Vehicle Safety or Theft</a>
        <br>
        Use for any matter regarding motor vehicle or driver safety or theft (except by motor vehicle manufacturers).
        <br><br>
        <a class="batchLnk" href="javascript:setchecked(3);">Click to Continue Use in the Normal Course of Business</a>
        <br>
        For use in the normal course of business but only to verify the accuracy of personal information submitted by the individual to the business; and if the submitted information is incorrect, to obtain the correct information, but only for the purposes of preventing fraud by, pursuing legal remedies against, or recovering on a debt or security interest against, the individual.
        <br><br>
        <a class="batchLnk" href="javascript:setchecked(4);">Click to Continue Civil, Criminal, Administrative, or Arbitral Proceedings</a>
        <br>
        Use in connection with a civil, criminal, administrative, or arbitral proceeding, including the service of process, investigation in anticipation of litigation, the execution or enforcement of judgments, or compliance with the orders of any court.&nbsp;&nbsp;<a href="javascript:new_modal('Civil, Criminal, Administrative, or Arbitral Proceedings','<br>Florida law provides that you may only use this database in connection with a civil, criminal, administrative, or arbitral proceeding for:<br><br>a. Service of process by any certified process server, special process server, or other person authorized to serve process in this state.<br><br>b. Investigation in anticipation of litigation by an attorney licensed to practice law in this state or the agent of the attorney; however, the information may not be used for mass commercial solicitation of clients for litigation against motor vehicle dealers.<br><br>c. Investigation by any person in connection with any filed proceeding; however, the information may not be used for mass commercial solicitation of clients for litigation against motor vehicle dealers.<br><br>d. Execution or enforcement of judgments and orders.<br><br>e. Compliance with an order of any court.<br><br>');"><img src="<TMPL_VAR NAME=IMGPATH>/info.gif" border="0" width="16" height="16"></a>
        <br><br>
        <a class="batchLnk" href="javascript:setchecked(5);">Click to Continue Commercial Driver's License</a>
        <br>
        Use by an employer or its agents or insurer to obtain or verify information relating to a holder of a commercial driver's license that is required under chapter 313 of title 49 of the United States Code.
        <br><br>
        <a class="batchLnk" href="javascript:setchecked(6);">Click to Continue Insurance</a>
        <br>
        Use by an insurer or insurance support organization, in connection with claims investigation activities or antifraud activities.
        <br><br>
        <a class="batchLnk" href="javascript:setchecked(7);">Click to Continue Licensed Private Investigative or Security Services</a>
        <br>
        Use by a licensed private investigative agency, or licensed security service, for a purpose permitted above.
        <br><br>
        <a class="batchLnk" href="javascript:setchecked(8);">I Have No Permissible Purpose</a>
        <br><br>
        </td>
      </tr>
    </table>
    </td>
  </tr>
  <tr>
    <td><TMPL_INCLUDE NAME="glba_dppa_generic_disclaimer.tpl"></td>
  </tr>
</table>
</fieldset>

<div class="section-row child-divs-right">
    <div>
        <a class="btn darkgrey-btn" href="javascript:show_batch_event('<TMPL_VAR PREV_EVENT>')">
            Back
        </a>
    </div>
</div>
<!-- END v3/batch/shared/dppa_body.tpl -->
