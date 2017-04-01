<!-- BEGIN dmf_body.tpl -->
<table border="0" cellpadding="10" cellspacing="0" width="680">
  <tr>
    <td class="unifont1" width="680" align="left">
    This service may contain information governed by The Bipartisan Budget Act of 2013 (Pub. L. 113-67), Section 203 as it relates to the Limited Access Death Master File.&nbsp;&nbsp;Pursuant to 15 CFR Part 1110, you may only access this database for one of the permitted uses set forth below.&nbsp;&nbsp;The purpose you select will govern this entire session.&nbsp;&nbsp;If the purpose for which you are conducting searches changes, you will need to exit the system, re-login, and select another purpose.
    </td>
  </tr>
  <tr>
    <td width="680" align="center" valign="top">
    <table border="0" cellpadding="0" cellspacing="0" width="600">
      <tr>
        <td class="unifont1">
  <TMPL_IF NAME=BATCH_DMF_PURPOSE_LEVEL_10>
        <a class="glb" href="javascript:setchecked('10');">Click to Continue Legitimate Fraud Prevention Interest</a>
  </TMPL_IF>
  <TMPL_IF NAME=BATCH_DMF_PURPOSE_LEVEL_01>
        <br>
        <br><br>
        <a class="glb" href="javascript:setchecked('01');">Click to Continue Legitimate Business Purpose Pursuant to a Law, Government Rule, Regulation, or Fiduciary Duty</a>
  </TMPL_IF>
        </td>
      </tr>
    </table>
    </td>
  </tr>
  <tr>
    <td class="unifont1" width="680"><TMPL_INCLUDE NAME="dmf_generic_disclaimer.tpl"></td>
  </tr>
</table>
<!-- END dmf_body.tpl -->
