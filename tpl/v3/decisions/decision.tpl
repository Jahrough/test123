<!DOCTYPE html>
<html>
    <head>
        <TMPL_IF ALLOW_CHAT>
        <link type="text/css" href="<tmpl_var CCSS>" rel="stylesheet" charset="utf-8">
        <script type="text/javascript" src="<tmpl_var CJS>" charset="utf-8"></script>
        </TMPL_IF>
		<script src="<TMPL_VAR NAME='JSPATH'>/decision.js"></script>

        <TMPL_INCLUDE NAME="../report/includes_search_popup.tpl">
        <script>
            $j(function() {
                $j('ul#support-links').remove();
            });
        </script>
    </head>
    <body topmargin="0" leftmargin="0" marginwidth="0" marginheight="0">

        <TMPL_INCLUDE NAME="../accurint_header.tpl">

			<div class="reportCon reportResults lh4">			   
				<div class="dataCon">

        <table width="100%" cellspacing="0" cellpadding="5">
          <tr>
            <td height="40" colspan="2">
               <div id="searchResults">
                <h2>Search Selection</h2>
               </div>
            </td>
          </tr>

          <tr>
            <td width="600" valign="top">

        <TMPL_IF DID_DECISION>
                <TMPL_IF LNP>
                <TMPL_INCLUDE NAME="decision_did.tpl">
                <TMPL_ELSE>
                <TMPL_IF FCOL_TCOL>
                <TMPL_INCLUDE NAME="fcra_decision_did.tpl">
                <TMPL_ELSE>
                <TMPL_INCLUDE NAME="decision_did.tpl">
                </TMPL_IF>
                </TMPL_IF>
        <TMPL_ELSE>
        <TMPL_IF SSN_DECISION>
                <TMPL_IF LNP>
                <TMPL_INCLUDE NAME="decision_ssn.tpl">
                <TMPL_ELSE>
                <TMPL_IF FCOL_TCOL>
                <TMPL_INCLUDE NAME="fcra_decision_ssn.tpl">
                <TMPL_ELSE>
                <TMPL_INCLUDE NAME="decision_ssn.tpl">
                </TMPL_IF>
                </TMPL_IF>
        <TMPL_ELSE>
        <TMPL_IF PHONE_DECISION>
                <TMPL_INCLUDE NAME="decision_phone.tpl">
        <TMPL_ELSE>
        <TMPL_IF DL_DECISION>
                <TMPL_INCLUDE NAME="decision_dl.tpl">
        <TMPL_ELSE>
        <TMPL_IF MV_DECISION>
                <TMPL_INCLUDE NAME="decision_mv.tpl">
        <TMPL_ELSE>
        <TMPL_IF MD_DECISION>
                <TMPL_INCLUDE NAME="decision_md.tpl">
        <TMPL_ELSE>
        <TMPL_IF ACCIDENT_DECISION>
                <TMPL_INCLUDE NAME="decision_accident.tpl">
        <TMPL_ELSE>
        <TMPL_IF PARCEL_DECISION>
                <TMPL_INCLUDE NAME="decision_parcel.tpl">
        <TMPL_ELSE>
        <TMPL_IF FEIN_DECISION>
                <TMPL_INCLUDE NAME="decision_fein.tpl">
        <TMPL_ELSE>
        <TMPL_IF FILING_DECISION>
                <TMPL_INCLUDE NAME="decision_filing_number.tpl">
        <TMPL_ELSE>
        <TMPL_IF CASE_NUMBER_DECISION>
                <TMPL_INCLUDE NAME="decision_casenum.tpl">
        <TMPL_ELSE>
        <TMPL_IF CHARTER_NUMBER_DECISION>
                <TMPL_INCLUDE NAME="decision_charternum.tpl">
        <TMPL_ELSE>
        <TMPL_IF LIEN_CASE_NUMBER_DECISION>
                <TMPL_INCLUDE NAME="decision_lien_casenum.tpl">
        <TMPL_ELSE>
        <TMPL_IF ADDR_DECISION>
                <TMPL_INCLUDE NAME="decision_addr.tpl">
        <TMPL_ELSE>
        <TMPL_IF COMPANY_DECISION>
                <TMPL_INCLUDE NAME="decision_company.tpl">
        <TMPL_ELSE>
        <TMPL_IF VESSEL_DECISION>
                <TMPL_INCLUDE NAME="decision_vessel.tpl">
        <TMPL_ELSE>
        <TMPL_IF DOC_NUMBER_DECISION>
                <TMPL_INCLUDE NAME="decision_docnum.tpl">
        <TMPL_ELSE>
        <TMPL_IF SHOW_ALL_DECISION>
                <TMPL_INCLUDE NAME="decision_all.tpl">
        <TMPL_ELSE>
        <TMPL_IF DOMAIN_DECISION>
                <TMPL_INCLUDE NAME="decision_domains.tpl">
        <TMPL_ELSE>
        <TMPL_IF PROF_LICENSE_NUMBER_DECISION>
                <TMPL_INCLUDE NAME="decision_proflicensenum.tpl">
        <TMPL_ELSE>
        <TMPL_IF FIREARMS_DECISION>
                <TMPL_INCLUDE NAME="decision_firearms.tpl">
        <TMPL_ELSE>
        <TMPL_IF DEA_REGISTRATION_NUMBER_DECISION>
                <TMPL_INCLUDE NAME="decision_dea_registration_number.tpl">
        <TMPL_ELSE>
        <TMPL_IF HULL_ID_DECISION>
                <TMPL_INCLUDE NAME="decision_hull_id.tpl">
        <TMPL_ELSE>
        <TMPL_IF CANADIAN_NAMES_DECISION>
                <TMPL_INCLUDE NAME="decision_canadian_names.tpl">
        <TMPL_ELSE>
        <TMPL_IF CANADIAN_ADDR_DECISION>
                <TMPL_INCLUDE NAME="decision_canadian_address.tpl">
        <TMPL_ELSE>
           <TMPL_IF AIRCRAFT_DECISION>
             <TMPL_INCLUDE NAME="decision_aircraft.tpl">
        <TMPL_ELSE>
           <TMPL_IF SANCTION_DECISION>
             <TMPL_INCLUDE NAME="decision_sanction.tpl">
        <TMPL_ELSE>
           <TMPL_IF BKY_DECISION>
             <TMPL_INCLUDE NAME="decision_bankruptcy.tpl">
          <TMPL_ELSE>
             <TMPL_INCLUDE NAME="decision_all.tpl">
          </TMPL_IF>
</TMPL_IF>
</TMPL_IF>
</TMPL_IF>
</TMPL_IF>
</TMPL_IF>
</TMPL_IF>
</TMPL_IF>
</TMPL_IF>
</TMPL_IF>
</TMPL_IF>
</TMPL_IF>
</TMPL_IF>
</TMPL_IF>
</TMPL_IF>
</TMPL_IF>
</TMPL_IF>
</TMPL_IF>
</TMPL_IF>
</TMPL_IF>
</TMPL_IF>
</TMPL_IF>
</TMPL_IF>
</TMPL_IF>
</TMPL_IF>
</TMPL_IF>
</TMPL_IF>
</TMPL_IF>


    </td>
  </tr>
</table>




                <p>&nbsp;</p>
                <p align="center"><a href="javascript:window.close();" class="btn red-btn">Close</a></p>

                </div>
            </div>

    </body>
</html>
