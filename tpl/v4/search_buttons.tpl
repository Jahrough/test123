<div class="col col-7" id='portal-search-buttons'>
  <TMPL_UNLESS EXPR="PORTAL_OTP_SEARCH || OCCCR_SEARCH || OCCCR_RESULTS_SEARCH || OCCCR_ORDER_RESULTS_SEARCH || PASSPORT_SEARCH">
    <div class="pull-right">
		<TMPL_UNLESS NAME="IDM_QA">
			<TMPL_IF USE_MISC_PROCESS>
				<TMPL_IF NAME="DIRECT_REPORT">
					<INPUT TYPE="HIDDEN" NAME="DIRECT_REPORT" VALUE="1">
				</TMPL_IF>
				<TMPL_IF NAME="OCCCR_SEARCH">
				<TMPL_ELSE>
				  <TMPL_IF NAME="BUSINESS_ASSURANCE_SEARCH">
				  <TMPL_ELSE>
						<input type="submit" class="btn btn-danger" id="searchBtn" name="searchBtn" value="Search">
				  </TMPL_IF>
				</TMPL_IF>
			<TMPL_ELSE> 
			  <TMPL_IF NAME="OCCCR_SEARCH">
			  <TMPL_ELSE>
				<TMPL_IF NAME="BUSINESS_ASSURANCE_SEARCH">
				<TMPL_ELSE>
						<input type="submit" class="btn btn-danger" id="searchBtn" name="searchBtn" value="Search">
				</TMPL_IF>
			  </TMPL_IF>
			</TMPL_IF>
			<TMPL_IF NAME="OCCCR_SEARCH">
				<TMPL_ELSE>
			  <TMPL_IF NAME="BUSINESS_ASSURANCE_SEARCH">
			  <TMPL_ELSE>
				<input type="button" name="clearBtn" class="btn btn-clear" onClick="javascript:web20_clear_all();return false;" value="Clear"/>
			  </TMPL_IF>
			</TMPL_IF>
		</TMPL_UNLESS>
		<TMPL_IF ID_VERIFY>
			<div id="request_btn_step">
				<button class="btn btn-danger" id="req_continue" name="req_continue" onclick="if(!web20_validate('<TMPL_VAR NAME="SEARCH_NAME">')){return false;}else{javascript:show_loading(); request_iid_qa_quiz();}" type="button">Continue</button>
				<input type="button" name="clearBtn" class="btn btn-clear" onClick="javascript:web20_clear_all();return false;" value="Clear"/>
			</div>
		</TMPL_IF>
		<div id="verify_btn_step" class="hidden">
			<button class="btn btn-danger" id="ver_continue" name="ver_continue" onclick="if(!id_validate()){return false;}else{javascript:show_loading(); verify_iid_qa_quiz();}" type="button">Continue</button>
		</div>
		<div id="results_btn_step" class="hidden">
			<button class="btn btn-danger" id="res_continue" name="res_continue" onclick="javascript:web20_clear_all();pm_tab_v3('SEARCH2/SHOW_ID_VERIFY');" type="button">Request New Q&amp;A</button>
		</div>
    </div>
  </TMPL_UNLESS>
</div>
<TMPL_IF NAME=NEWS_TRENDS_SEARCH>
    <TMPL_INCLUDE NAME="news_trends_form_fields.tpl">
</TMPL_IF>
<script>
    $(window).load(function(){
        isIE8 && fix_ie8_issues();
    });
</script>
