<!-- BEGIN glb_body.tpl -->
<table border="0" cellpadding="10" cellspacing="0" width="600">
  <tr>
    <td class="unifont1" width="600" align="left">The information that this service provides to the end user contains consumer identification information governed by the Gramm-Leach-Bliley Act (GLB).<br><br><b>In accordance with GLB, please select the purpose for which you intend to utilize this service:</b></td>
  </tr>
  <tr>
    <td width="600" align="center" valign="top">
    <table border="0" width="600" cellpadding="6" cellspacing="0">
      <tr>
        <td class="unifont1" width="600" align="left">
        <a class="glb" href="javascript:setchecked(1);">Click to Continue Transactions Authorized by Consumer</a>
        <br>
        As necessary to effect, administer, or enforce a transaction requested or authorized by the consumer
        <br><br>
        <a class="glb" href="javascript:setchecked(11);">Click to Continue Transactions Authorized by Consumer (Application Verification Only)</a>
        <br>
        As necessary to effect, administer, or enforce a transaction requested or authorized by the consumer by verifying the identification information contained in applications
        <br><br>
        <TMPL_IF NAME="GLB_DPPA_LAW_ENFORCEMENT_ALLOWED">
	<a class="glb" href="javascript:setchecked(2);">Click to Continue Law Enforcement Purposes</a>
	<TMPL_ELSE>
	<a class="glb_dppa_disabled" href="javascript:alert('The law enforcement purpose is limited to users listed in our records as law enforcement.');">Click to Continue Law Enforcement Purposes</a>
	</TMPL_IF>
        <br>
        To the extent specifically permitted or required under other provisions of law and in accordance with the Right to Financial Privacy Act of 1978, to law enforcement agencies, self-regulatory organizations, or for an investigation on a matter related to public safety
        <br><br>
        <a class="glb" href="javascript:setchecked(3);">Click to Continue Use by Persons Holding a Legal or Beneficial Interest Relating to the Consumer</a>
        <br>
        For use by persons holding a legal or beneficial interest relating to the consumer
        <br><br>
        <a class="glb" href="javascript:setchecked(12);">Click to Continue Use by Persons Acting in a Fiduciary Capacity on Behalf of the Consumer</a>
        <br>
        For use by persons acting in a fiduciary or representative capacity on behalf of the consumer
        <br><br>
        <a class="glb" href="javascript:setchecked(5);">Click to Continue Fraud Prevention or Detection</a>
        <br>
        For use to protect against or prevent actual or potential fraud, unauthorized transactions, claims, or other liability
        <br><br>
        <a class="glb" href="javascript:setchecked(6);">Click to Continue Required Institutional Risk Control</a>
        <br>
        For required institutional risk control, or for resolving customer disputes or inquiries
        <br><br>
        <a class="glb" href="javascript:setchecked(7);">Click to Continue Legal Compliance</a>
        <br>
        For use to comply with Federal, State, or local laws, rules, and other applicable legal requirements
        <br><br>
        <a class="glb" href="javascript:setchecked(0);">I Have No Permissible Purpose</a>
        </td>
      </tr>
    </table>
    </td>
  </tr>
  <tr>
    <td class="unifont1" width="600"><TMPL_INCLUDE NAME="glba_dppa_generic_disclaimer.tpl"></td>
  </tr>
</table>
<!-- END glb_body.tpl -->
