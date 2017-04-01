<div id="myacc_customize" class="formBoxOptions searchFormConWidth">
    <div class="optionsHeader">
        <div>My Accurint</div>
        <div class="myacc-customize-right-label">Select Up to Six of Your Favorite Searches:</div>
    </div>
    <div class="optionsBody">
        <div class="left">
            <div class="clear w100p">
                <div class="optionsSubHeader">
                    Drag to Re-order
                </div>
                <div id="sortAZ" class="btn darkBtn">
                    Sort A-Z
                </div>
            </div>
            <div id="sortWidget" class="ui-sortable"><div class="ui-state-default"><div>Business Search</div></div><div class="ui-state-default"><div>Advanced Person</div></div><div class="ui-state-default"><div>FAA Pilots</div></div><div class="ui-state-default"><div>NPI Data Search</div></div><div class="ui-state-default"><div>Automated Valuation Models</div></div></div>
            <div class="mgb15">Searches will display in the order listed above.</div>
            <div>
                <div id="optionsReset" class="btn resetBtn">Undo Changes</div>
                <div id="optionsRevert" class="btn revertBtn">Reset to Default</div>
            </div>
            <div>
                <div id="optionsSave" class="btn redBtn">Save</div>
                <div id="optionsCancel" class="btn darkBtn">Cancel</div>
            </div>
        </div>
        <div class="right myacc-customize-right-options">
            <div id="optionsCheckboxCon">
                <div class="myaccColumn">
                </div>
            </div>
        </div>
    </div>
     <form name="MYACCURINT" id="MYACCURINT_FORM" method='post' action='<tmpl_var ACTION_MISC>'>
      <TMPL_INCLUDE NAME="common_hidden_input.tpl">
      <INPUT type=hidden NAME="CURRENT_EVENT" VALUE="<TMPL_VAR NAME=CURRENT_EVENT>">
      <INPUT type=hidden NAME="SKIN_TYPE" VALUE="<TMPL_VAR NAME=SKIN_TYPE>">
      <INPUT type=hidden NAME="APPLICATION_TYPE" VALUE="<TMPL_VAR NAME=APPLICATION_TYPE>">
      <INPUT type=hidden NAME="EVENT" VALUE="MISC/SAVE_ADD_REMOVE">
      <INPUT type=hidden NAME="NEWMYACC" VALUE="0">
      <INPUT type=hidden NAME="MYACCTAB" VALUE="">
     </form>
</div>