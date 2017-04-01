<!-- begin search_inputs_skip_trace.tpl -->

      <div id="newsHdr">
        <div class="NewsHeader">
          <h2 align="left">Skip Wizard</h2>
        </div>
      </div>

      <div id="newsBlock">
        <div class="newsRightBkg">
            <ul>
                <table border="0" width=""100%" style="font-size:85%;color:#666666;">
		<tr>
		  <td>&nbsp;<b>SSN</b><span class=unifont1boldred>*</span>&nbsp;</td>
                  <td class="nsinputs">
                    <input type="text" id="ST_SSN" name="SSN" tabindex="4" size="11" maxlength="11" value=""  <TMPL_UNLESS ENABLE_SKIP_TRACE>disabled</TMPL_UNLESS>/>
                  </td>
		  <td>&nbsp;<b>Account Balance</b>&nbsp;</td>
                  <td class="nsinputs">
                    <input type="text" name="ACC_BALANCE" tabindex="4" size="8" maxlength="8" <TMPL_UNLESS ENABLE_SKIP_TRACE>disabled</TMPL_UNLESS> value="<TMPL_VAR NAME=ACC_BALANCE>" onChange="if(!checkFloatNum(this)) return false;" />
                  </td>
		  <td>&nbsp;<b>Reference Code</b>&nbsp;</td>
                  <td class="nsinputs">
		    <input type=text tabindex="91" size="16" <TMPL_UNLESS ENABLE_SKIP_TRACE>disabled</TMPL_UNLESS> maxlength="<TMPL_IF REFERENCE_CODE_MAX_LENGTH><TMPL_VAR REFERENCE_CODE_MAX_LENGTH><TMPL_ELSE>30</TMPL_IF>" name="REFERENCE_CODE" id="REF_CODE" value="<TMPL_VAR NAME=REFERENCE_CODE>" <TMPL_IF REF_CODE_DROP_DOWN>readonly="true"</TMPL_IF>/><TMPL_IF REF_CODE_DROP_DOWN> <a href="javascript:void(0);" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','440','120',0,0,0,0,0,0,'','client_number');">Select Reference Number</a></TMPL_IF>
                  </td>
		  <td>&nbsp;&nbsp;</td>
		  <td class="no-print" align="center">
		  <TMPL_IF ENABLE_SKIP_TRACE>
		      <input name="BUTTON" tabindex="101" id="searchBtn" type="button" value="Search" onBlur="ENTER_FOCUS=0;" onFocus="ENTER_FOCUS=1" onClick="validate_st('<TMPL_VAR NAME="ACTION_MISC">','<TMPL_VAR NAME="SKIP_LIMIT_BY_BALANCE_FLAG">');">
		  <TMPL_ELSE>
		     <input name="BUTTON" tabindex="101" id="clearSrch" style="width:100px;" type="button" value="Search" onBlur="ENTER_FOCUS=0;" onFocus="ENTER_FOCUS=1" onClick="javascript:report_win('<TMPL_VAR HTMLPATH>/<TMPL_IF FCOL>fcol/</TMPL_IF>skip_wizard.html')">
		  </TMPL_IF>
		  </td>
		</tr>
		</table>
            </ul>
        </div>
      </div>
      <div id="newsBot">
        <div class="newsBottom"></div>
      </div>
      <div id="clear"></div>
       <INPUT type=hidden NAME="REQUIRE_REF_CODE" VALUE="<TMPL_VAR NAME=REQUIRE_REF_CODE>">
       <INPUT type=hidden NAME="REQUIRE_REF_CODE_EXTRA" VALUE="<TMPL_VAR NAME=REQUIRE_REF_CODE_EXTRA>">

  <!-- end search_inputs_skip_trace.tpl -->

