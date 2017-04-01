<!-- begin:  $RCSfile: manager.tpl,v $ -->
<table border="0" cellpadding="0" cellspacing="0" width="880" class="myaccountborder">
  <tr>
    <td nowrap align="center" valign="middle" class="myaccountborder">
      <table width="856" cellpadding="0" cellspacing="0" border="0">
        <tr height="12">
          <td height="12" width="856" class="unifont1">&nbsp;</td>
        </tr>
      </table>
      <table border="0" cellpadding="0" cellspacing="0" width="856" class="myaccountbody">
        <tr>
          <td align="center">

<div id="caseConnect">
  <div id="managerView">
    <h1>Case Deconfliction Management</h1>
<TMPL_IF SUBSCRIBER_LOOP>
    <div>
      Owner:
      <select name="SUBSCRIBER_ID" id="SUBSCRIBER_ID">
  <TMPL_LOOP SUBSCRIBER_LOOP>
        <option value="<TMPL_VAR SUBSCRIBER_ID>" <TMPL_IF SELECTED>selected="selected" </TMPL_IF>><TMPL_VAR FIRST_NAME> <TMPL_VAR LAST_NAME> <TMPL_VAR SUFFIX> - <TMPL_VAR LOGIN_ID></option>
  </TMPL_LOOP>
      </select>
    </div>
</TMPL_IF>
    <div>
      Filter:
      <select name="FILTER_DECONF" id="FILTER_DECONF">
        <option value="all" selected="selected">All</option>
        <option value="recent">Recent - 30 days</option>
        <option value="older">Older - 30 days</option>
        <!-- option value="inactive">Inactive</option -->
      </select>
    </div>
    <div id="blockMsg"></div>
    <div id="optInTable"><h2>Opt-Ins</h2></div>
    <div id="enrollTable"><h2>Enrollments</h2></div>
    <span class="hide4Adm">
      <!-- input type="button" id="deactivateBtn" value="Block Selected"/ -->
      <input type="button" id="deleteBtn" value="Delete Selected"/>
    </span>
  </div>
  <div id="optInView">
    <h1>Opt-In Details</h1>
    <div id="optInDetailView" class="detailView">
      <div class="hide4Adm">
        <input type="button" id="blockOptInBtn" value="Opt-Out Alert"/>
        <input type="button" id="deleteOptInBtn" value="Delete Alert"/>
        <input type="button" id="activateOptInBtn" value="Activate Alert"/>
      </div>
      <div>&nbsp;</div>
      <div>
        Filter:
        <select name="FILTER_OPTIN" id="FILTER_OPTIN">
          <option value="all" selected="selected">All</option>
          <option value="notarchive">Recent - 30 Days</option>
          <option value="connected">Connected</option>
          <option value="older">Older - 30 Days</option>
          <option value="nonresponsive">Non Responsive</option>
        </select>
      </div>
      <ul>
        #{DeconflictionName} #{DateAdded} #{DateChanged}
        <li>
          <span class="liLbl">Status:</span>
          <span id="optInStatus">#{Status}</span>
        </li>
        #{Permissions}
      </ul>
    </div>
    <div>
      <span class="hide4Adm">
        <input type="button" id="deleteBtn1" value="Archive Seleted"/>
      </span>
      <input type="button" id="backBtn1" value="Back to Manager"/>
    </div>
  </div>
  <div id="enrollView">
    <h1>Enrollment Details</h1>
    <div id="enrollDetailView" class="detailView">
      <h2>#{DeconflictionName}</h2>
      <div class="hide4Adm">
        <input type="button" id="editBtn" value="Edit Alert"/>
        <!-- input type="button" id="blockEnrollBtn" value="Block Alert"/ -->
        <input type="button" id="deleteEnrollBtn" value="Delete Alert"/>
        <input type="button" id="activateEnrollBtn" value="Activate Alert"/>
      </div>
      <div>&nbsp;</div>
      <div id="FILTER_ENROLL_LABEL">
        Filter:
        <select name="FILTER_ENROLL"  id="FILTER_ENROLL">
          <option value="all" selected="selected">All</option>
          <option value="notarchive">Recent - 30 Days</option>
          <option value="connected">Connected</option>
          <option value="older">Older - 30 Days</option>
          <option value="nonresponsive">Non Responsive</option>
        </select>
      </div>
      <ul>
        #{Subject} #{ReferenceCode} #{Name} #{UniqueId} #{SSN} #{Phone10} #{DOB} #{DateAdded} #{DateChanged}
        <li>
          <span class="liLbl">Status:</span>
          <span id="enrollStatus">#{Status}</span>
        </li>
        #{AdditionalEmail} #{Permissions}
      </ul>
    </div>
    <div>
       <span class="hide4Adm">
        <input type="button" id="deleteBtn2" value="Archive Selected"/>
       </span>
      <input type="button" id="backBtn2" value="Back to Manager"/>
    </div>
    <div id="oneDetail">
      <li>
        <span class="liLbl">#{lbl}:</span>
        <span>#{val}</span>
      </li>
    </div>
  </div>
  <div id="editView">
    <h1>Edit Enrollment</h1>
    <table border="0" cellpadding="10" cellspacing="0" width="856" class="myaccountbody">
      <tr>
        <td>
          <table border="0" id="editLoading">
            <tr><td>
              <img height="400" width="400" src="<TMPL_VAR IMGPATH>/v2/loading4.gif"/>
            </td><tr>
          </table>
          <div id="editLoaded">
            <div id="enrollEditBlock" class="alert_detail" width="100%">
            </div>
            <input type="button" id="refreshBtn" value="Refresh Alert"/>
            <input type="button" id="historyBtn" value="Run Deconfliction History"/>
            <input type="button" id="modifyBtn" value="Save Alert"/>
            <!--  <input type="button" id="backBtn4" value="Back to Manager"/> -->
            <input type="button" id="backBtn4" value="Back to Manager" onClick="send_event('CC/MANAGER');" />
          </div>
        </td>
      </tr>
    </table>
  </div>
  <div id="otherView">
    <h1>Other Party Information</h1>
    <div id="otherDetailView" class="detailView">
      <ul>
  #{Name} #{Email} #{Phone} #{Company}
      </ul>
    </div>
    <input type="button" id="viewOtherBlockBtn" value="Block Other Party"/>
    <input type="button" id="backBtn5" value="Back to Manager"/>
    <input type="button" id="viewOtherUnblockBtn" value="Unblock Other Party"/>
  </div>
</div>

          </td>
        </tr>
      </table>
    </td>
  </tr>
</table>

  <script src="<TMPL_VAR JSPATH>/v3/CaseConnect/Accurint.js"></script>
  <script src="<TMPL_VAR JSPATH>/v3/CaseConnect/PagingTable.js"></script>
  <script>
  Accurint.imgPath = "<TMPL_VAR IMGPATH>";
  Accurint.miscAction = "<TMPL_VAR ACTION_MISC>";
  Accurint.reportAction = "<TMPL_VAR ACTION_REPORT>";
  Accurint.soundAction = "<TMPL_VAR ACTION_SOUND>";
  Accurint.sessionId = "<TMPL_VAR SESSION_ID>";
  Accurint.csrf_token = "<TMPL_VAR CSRF_TOKEN>";
  Accurint.helpPath = "<TMPL_VAR HLPPATH>";
  Accurint.CaseConnect = {};
  Accurint.CaseConnect.helpUrl = Accurint.helpPath + '/case_deconfliction_help.html';
  Accurint.CaseConnect.subscriberId = "<TMPL_VAR SUBSCRIBER_ID>";
  Accurint.CaseConnect.deconflictionId = "<TMPL_VAR DCONFLCT_ID>";
  Accurint.CaseConnect.notificationId = "<TMPL_VAR NOTICE_ID>";
  Accurint.CaseConnect.option = "<TMPL_VAR OPT>";
  Accurint.CaseConnect.extraFeatures = <TMPL_IF CASE_CONNECT_EXTRA>true<TMPL_ELSE>false</TMPL_IF>;
  Accurint.CaseConnect.subscriberView = <TMPL_IF RUN_CC_SUBSCRIBER_LIST>true<TMPL_ELSE>false</TMPL_IF>;

// do not check here as checking from main menu continues
//  Accurint.CaseConnect.pollInterval = <TMPL_IF CASE_CONNECT_POLL_INTERVAL><TMPL_VAR CASE_CONNECT_POLL_INTERVAL><TMPL_ELSE>0</TMPL_IF>;
//  Accurint.CaseConnect.checkNow = <TMPL_IF CASE_CONNECT_CHECK_NOW><TMPL_VAR CASE_CONNECT_CHECK_NOW><TMPL_ELSE>0</TMPL_IF>;

  Accurint.CaseConnect.pollInterval = 0;
  Accurint.CaseConnect.checkNow = 0;

  </script>
  <script src="<TMPL_VAR JSPATH>/v3/CaseConnect/Edit.js"></script>
  <script src="<TMPL_VAR JSPATH>/Accurint/CaseConnect.js"></script>

<TMPL_INCLUDE myaccount_footer.tpl>
<!-- end:  $RCSfile: manager.tpl,v $ -->
