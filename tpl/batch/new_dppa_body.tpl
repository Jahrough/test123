<!-- BEGIN dppa_body.tpl -->
<table border="0" cellpadding="10" cellspacing="0" width="680">
  <tr>
    <td class="unifont1" width="680" align="left">
    This service may contain information governed by the Driver's Privacy Protection Act of 1994 (DPPA).&nbsp;&nbsp;Pursuant to the DPPA, you may only access this database for one of the permitted uses set forth below.&nbsp;&nbsp;The purpose you select will govern this entire session.&nbsp;&nbsp;If the purpose for which you are conducting searches changes, you will need to exit the system, re-login, and select another purpose.
    <br><br>
    Click <img src="<TMPL_VAR NAME=IMGPATH>/info.gif" border="0" width="16" height="16"> for additional information relating to the Florida DPPA.
    </td>
  </tr>
  <tr>
    <td width="680" align="center" valign="top">
    <table border="0" cellpadding="0" cellspacing="0" width="600">
      <tr>
        <td class="unifont1">
        <TMPL_UNLESS NAME=RECOVERSCORE>
        <TMPL_IF NAME="GLB_DPPA_LAW_ENFORCEMENT_ALLOWED">
        <a class="glb" href="javascript:setchecked(1);">Click to Continue Court, Law Enforcement, or Government Agencies</a>
        <TMPL_ELSE>
        <a class="glb_dppa_disabled" href="javascript:alert('The law enforcement purpose is limited to users listed in our records as law enforcement.');">Click to Continue Court, Law Enforcement, or Government Agencies</a>
        </TMPL_IF>
        <br>
        Use by a court, law enforcement agency or other government agency or entity, acting directly on behalf of a government agency.
        <br><br>
        <a class="glb" href="javascript:setchecked(2);">Click to Continue Motor Vehicle Safety or Theft</a>
        <br>
        Use for any matter regarding motor vehicle or driver safety or theft (except by motor vehicle manufacturers).
        <br><br>
        </TMPL_UNLESS>
	<a class="glb" href="javascript:setchecked(3);">Click to Continue Use in the Normal Course of Business</a>
        <br>
        For use in the normal course of business but only to verify the accuracy of personal information submitted by the individual to the business; and if the submitted information is incorrect, to obtain the correct information, but only for the purposes of preventing fraud by, pursuing legal remedies against, or recovering on a debt or security interest against, the individual.
        <br><br>
        <TMPL_UNLESS NAME=RECOVERSCORE>
	<a class="glb" href="javascript:setchecked(4);">Click to Continue Civil, Criminal, Administrative, or Arbitral Proceedings</a>
        <br>
        Use in connection with a civil, criminal, administrative, or arbitral proceeding, including the service of process, investigation in anticipation of litigation, the execution or enforcement of judgments, or compliance with the orders of any court.&nbsp;&nbsp;<a href="javascript:show_more(4);"><img src="<TMPL_VAR NAME=IMGPATH>/info.gif" border="0" width="16" height="16"></a>
        <br><br>
        <a class="glb" href="javascript:setchecked(5);">Click to Continue Commercial Driver's License</a>
        <br>
        Use by an employer or its agents or insurer to obtain or verify information relating to a holder of a commercial driver's license that is required under chapter 313 of title 49 of the United States Code.
        <br><br>
        <a class="glb" href="javascript:setchecked(6);">Click to Continue Insurance</a>
        <br>
        Use by an insurer or insurance support organization, in connection with claims investigation activities or antifraud activities.
        <br><br>
        <a class="glb" href="javascript:setchecked(7);">Click to Continue Licensed Private Investigative or Security Services</a>
        <br>
        Use by a licensed private investigative agency, or licensed security service, for a purpose permitted above.
        <br><br>
        <a class="glb" href="javascript:setchecked(8);">I Have No Permissible Purpose</a>
        </TMPL_UNLESS>
	</td>
      </tr>
    </table>
    </td>
  </tr>
  <tr>
    <td class="unifont1" width="680"><TMPL_INCLUDE NAME="glba_dppa_generic_disclaimer.tpl"></td>
  </tr>
</table>
<!-- END dppa_body.tpl -->
