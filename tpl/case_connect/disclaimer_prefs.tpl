<!-- begin: case_connect/disclaimer_prefs.tpl -->
<div style="width: 630px;"  class="myaccountbody">
  <br/>
  <div class="smallfont1" style="border: #336699 solid; border-width: 2px; padding: 2px;  text-align: left;">
    <div style="text-align: left; padding: 4px;">
      <input type="hidden" name="enroll" <TMPL_IF enroll>value="yes"<TMPL_ELSE>value="no"</TMPL_IF>/>
      <input type="hidden" name="opt_in" <TMPL_IF opt_in>value="yes"<TMPL_ELSE>value="no"</TMPL_IF>/>
      <input type="hidden" name="self" <TMPL_IF self>value="yes"<TMPL_ELSE>value="no"</TMPL_IF>/>
      <input type="hidden" name="company" <TMPL_IF company>value="yes"<TMPL_ELSE>value="no"</TMPL_IF>/>
      <input type="hidden" name="le_users" <TMPL_IF le_users>value="yes"<TMPL_ELSE>value="no"</TMPL_IF>/>
      <input type="hidden" name="gov_users" <TMPL_IF gov_users>value="yes"<TMPL_ELSE>value="no"</TMPL_IF>/>
      <h1>User Permissions Change</h1>
      <p>
        By enabling Case Deconfliction, you are choosing to allow certain information that you have submitted to be
        shared with other parties. Case Deconfliction will auto-notify 2 or more Users that have searched on the same
        record, either inter-agency or intra-agency, including other external Government and/or Law Enforcement Users,
        as allowed by your Administrator, to agree to connect to discuss case similarities.
      </p>
      <p>
        This tool can improve case investigations and workflow efficiencies by the cross referencing of searches so
        that you may decide to share case notes or collaborate on investigations. This will apply to all searches on
        your account. By proceeding, you agree to such use and disclosure.
      </p>
      <p>
        <input name="ACCEPT" value="Accept" type="submit"/>
        <input name="CANCEL" value="Cancel" type="submit"/>
      </p>
    </div>
  </div>
</div>
<!-- end: case_connect/disclaimer_prefs.tpl -->