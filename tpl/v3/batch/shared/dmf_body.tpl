<!-- BEGIN v3/batch/shared/dmf_body.tpl -->

<INPUT TYPE=HIDDEN NAME=EVENT VALUE="<TMPL_VAR NAME=BATCH_CONTROLLER>/SAVE_DMF">
<INPUT TYPE=HIDDEN NAME=DMF VALUE="">

<div class="fieldset-title">DMF Compliance</div>
<fieldset class="batchFieldset">
    <table style="width:100%;">
        <tr>
            <td>
                This service may contain information governed by The Bipartisan Budget Act of 2013 (Pub. L. 113-67), Section 203 as it relates to the Limited Access Death Master File.&nbsp;&nbsp;Pursuant to 15 CFR Part 1110, you may only access this database for one of the permitted uses set forth below.&nbsp;&nbsp;The purpose you select will govern this entire session.&nbsp;&nbsp;If the purpose for which you are conducting searches changes, you will need to exit the system, re-login, and select another purpose.
            </td>
        </tr>
        <tr>
            <td>
                <table>
                    <tr>
                        <td class="unifont1">
                            <br>
                            <TMPL_IF NAME=BATCH_DMF_PURPOSE_LEVEL_10>
                                <a class="myaccLnk bold" href="javascript:setchecked('10');" title="Click to Continue Legitimate Fraud Prevention Interest">Click to Continue Legitimate Fraud Prevention Interest</a>
                            </TMPL_IF>
                            <TMPL_IF NAME=BATCH_DMF_PURPOSE_LEVEL_01>
                                <br>
                                <br>
                                <a class="myaccLnk bold" href="javascript:setchecked('01');" title="Click to Continue Legitimate Business Purpose Pursuant to a Law, Government Rule, Regulation, or Fiduciary Duty">Click to Continue Legitimate Business Purpose Pursuant to a Law, Government Rule, Regulation, or Fiduciary Duty</a>
                            </TMPL_IF>
                            <br>
                            <br>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td><TMPL_INCLUDE NAME="dmf_generic_disclaimer.tpl"></td>
        </tr>
    </table>
</fieldset>
<div class="section-row child-divs-right">
    <div>
        <a class="btn darkgrey-btn" href="javascript:show_batch_event('<TMPL_VAR NAME=BATCH_CONTROLLER>/DPPA')">
            Back
        </a>
    </div>
</div>

<TMPL_INCLUDE NAME="batch/batch_footer.tpl">
<!-- END v3/batch/shared/dmf_body.tpl -->
