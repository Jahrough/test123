<!-- begin batch_results.tpl -->
<br>
<table border="0" cellpadding="0" cellspacing="0" width="95%" bordercolor="#CCCCCC" bgcolor="white">
  <input type="hidden" name="NO_SEARCH_RESULTS_FOUND" value="<TMPL_VAR NAME=NO_SEARCH_RESULTS_FOUND>">
  <tr>
    <td valign="top" align="left"><img src="<TMPL_VAR NAME='IMGPATH'>/logo.gif" alt="LexisNexis" width="485" height="45" style="float:left" /></td>
    <td valign="center" align="center" class="largefont1bold" nowrap>Search by Case ID:&nbsp;&nbsp;&nbsp;<input type="text" size="30" maxlength="30" name="SEARCH_FIELD" value="<TMPL_VAR NAME="SEARCH_FIELD">">&nbsp;&nbsp;&nbsp;<a href="javascript:send_event('DNI/BATCH_RESULTS_VIEWER')"><img src="<TMPL_VAR NAME='IMGPATH'>/btn_go.gif" height="19" width="26" border="0"></a>&nbsp;&nbsp;&nbsp;<a href="javascript:clear_search();javascript:send_event('DNI/BATCH_RESULTS_VIEWER')"><img src="<TMPL_VAR NAME='IMGPATH'>/btn_clear.gif" height="19" width="44" border="0"></a></td>
  </tr>
  <tr>
    <td valign="top" align="left" width="100%" colspan="2">
      <table border="1" cellpadding="1" cellspacing="0" class="smallfont1" bordercolor="#CCCCCC" width="100%">
        <tr bgcolor="#FFFFFF">
          <td align="center" valign="center" colspan="3" rowspan="2">
            <table class="unifont1">
              <tr><td align="left" valign="top" nowrap class="unifont1bold" colspan="2">Total Applicants:&nbsp;<span class="unifont1boldred"><TMPL_VAR NAME="TOTAL_RECS"></span></td></tr>
              <tr><td align="right" valign="top" nowrap>&nbsp;&nbsp;<img src="<TMPL_VAR NAME=IMGPATH>/ico_data.gif" width="12" height="12" border="0">&nbsp;</td><td align="left" valign="top" nowrap>&nbsp;Data found</td></tr>
              <tr><td align="right" valign="top" nowrap>&nbsp;&nbsp;-&nbsp;</td><td align="left" valign="top" nowrap>&nbsp;No data found</td></tr>
              <tr><td align="right" valign="top" nowrap>&nbsp;&nbsp;<img src="<TMPL_VAR NAME=IMGPATH>/ico_derogatories.gif" width="12" height="12" border="0">&nbsp;</td><td align="left" valign="top" nowrap>&nbsp;Derogatory data found (high)</td></tr>
              <tr><td align="right" valign="top" nowrap>&nbsp;&nbsp;<img src="<TMPL_VAR NAME=IMGPATH>/ico_derogatories_mid.gif" width="12" height="12" border="0">&nbsp;</td><td align="left" valign="top" nowrap>&nbsp;Derogatory data found (moderate)</td></tr>
              <tr><td align="right" valign="top" nowrap>&nbsp;&nbsp;<img src="<TMPL_VAR NAME=IMGPATH>/ico_derogatories_low.gif" width="12" height="12" border="0">&nbsp;</td><td align="left" valign="top" nowrap>&nbsp;Derogatory data found (low)</td></tr>
            </table>
          </td>
          <td colspan="7" align="left" valign="center" class="sf86">Person Info</td>
          <td colspan="7" align="left" valign="center" class="other_risk">Assets</td>
          <td colspan="12" align="left" valign="center" class="sf86">Criminal and Civil</td>
          <td colspan="6" align="left" valign="center" class="other_risk">Business</td>
        </tr>
        <tr>
          <th align="center" valign="bottom" nowrap><img src="<TMPL_VAR NAME=IMGPATH>/ttl_name_ssn_dob.gif" width="20" height="120" border="0"></th>
          <th align="center" valign="bottom" nowrap><img src="<TMPL_VAR NAME=IMGPATH>/ttl_addressHistory.gif" width="20" height="120" border="0"></th>
          <th align="center" valign="bottom" nowrap><img src="<TMPL_VAR NAME=IMGPATH>/ttl_bankruptcy.gif" width="20" height="120" border="0"></th>
          <th align="center" valign="bottom" nowrap><img src="<TMPL_VAR NAME=IMGPATH>/ttl_credit_report.gif" width="20" height="120" border="0"></th>
          <th align="center" valign="bottom" nowrap><img src="<TMPL_VAR NAME=IMGPATH>/ttl_prev_employment_report.gif" width="20" height="120" border="0"></th>
          <th align="center" valign="bottom" nowrap><img src="<TMPL_VAR NAME=IMGPATH>/ttl_relatives.gif" width="20" height="120" border="0"></th>
          <th align="center" valign="bottom" nowrap><img src="<TMPL_VAR NAME=IMGPATH>/ttl_peopleWhoKnowYou.gif" width="20" height="120" border="0"></th>
          <th align="center" valign="bottom" nowrap><img src="<TMPL_VAR NAME=IMGPATH>/ttl_autoValuationModel.gif" width="20" height="120" border="0"></th>
          <th align="center" valign="bottom" nowrap><img src="<TMPL_VAR NAME=IMGPATH>/ttl_deeds.gif" width="20" height="120" border="0"></th>
          <th align="center" valign="bottom" nowrap><img src="<TMPL_VAR NAME=IMGPATH>/ttl_mortgage.gif" width="20" height="120" border="0"></th>
          <th align="center" valign="bottom" nowrap><img src="<TMPL_VAR NAME=IMGPATH>/ttl_tax_assessments.gif" width="20" height="120" border="0"></th>
          <th align="center" valign="bottom" nowrap><img src="<TMPL_VAR NAME=IMGPATH>/ttl_car.gif" width="20" height="120" border="0"></th>
          <th align="center" valign="bottom" nowrap><img src="<TMPL_VAR NAME=IMGPATH>/ttl_boat.gif" width="20" height="120" border="0"></th>
          <th align="center" valign="bottom" nowrap><img src="<TMPL_VAR NAME=IMGPATH>/ttl_aircraft.gif" width="20" height="120" border="0"></th>
          <th align="center" valign="bottom" nowrap><img src="<TMPL_VAR NAME=IMGPATH>/ttl_national_criminal_records.gif" width="20" height="120" border="0"><img src="<TMPL_VAR NAME=IMGPATH>/ttl_federal_criminal_records.gif" width="20" height="120" border="0"><img src="<TMPL_VAR NAME=IMGPATH>/ttl_county_criminal_records.gif" width="20" height="120" border="0"></th>
          <th align="center" valign="bottom" nowrap><img src="<TMPL_VAR NAME=IMGPATH>/ttl_office_inmate.gif" width="20" height="120" border="0"></th>
          <th align="center" valign="bottom" nowrap><img src="<TMPL_VAR NAME=IMGPATH>/ttl_jail_bookings.gif" width="20" height="120" border="0"></th>
          <th align="center" valign="bottom" nowrap><img src="<TMPL_VAR NAME=IMGPATH>/ttl_driving_record.gif" width="20" height="120" border="0"></th>
          <th align="center" valign="bottom" nowrap><img src="<TMPL_VAR NAME=IMGPATH>/ttl_judgement.gif" width="20" height="120" border="0"><img src="<TMPL_VAR NAME=IMGPATH>/ttl_lien.gif" width="20" height="120" border="0"><img src="<TMPL_VAR NAME=IMGPATH>/ttl_evictions.gif" width="20" height="120" border="0"></th>
          <th align="center" valign="bottom" nowrap><img src="<TMPL_VAR NAME=IMGPATH>/ttl_verdicts.gif" width="20" height="120" border="0"><img src="<TMPL_VAR NAME=IMGPATH>/ttl_settlements.gif" width="20" height="120" border="0"></th>
          <th align="center" valign="bottom" nowrap><img src="<TMPL_VAR NAME=IMGPATH>/ttl_federal_civil.gif" width="20" height="120" border="0"></th>
          <th align="center" valign="bottom" nowrap><img src="<TMPL_VAR NAME=IMGPATH>/ttl_county_civil.gif" width="20" height="120" border="0"></th>
          <th align="center" valign="bottom" nowrap><img src="<TMPL_VAR NAME=IMGPATH>/ttl_civil_court_dockets.gif" width="20" height="120" border="0"></th>
          <th align="center" valign="bottom" nowrap><img src="<TMPL_VAR NAME=IMGPATH>/ttl_federal_court_dockets.gif" width="20" height="120" border="0"></th>
          <th align="center" valign="bottom" nowrap><img src="<TMPL_VAR NAME=IMGPATH>/ttl_consumer_watchlists.gif" width="20" height="120" border="0"></th>
          <th align="center" valign="bottom" nowrap><img src="<TMPL_VAR NAME=IMGPATH>/ttl_sex_offense.gif" width="20" height="120" border="0"></th>
          
          <th align="center" valign="bottom" nowrap><img src="<TMPL_VAR NAME=IMGPATH>/ttl_sec_filings.gif" width="20" height="120" border="0"></th>
          <th align="center" valign="bottom" nowrap><img src="<TMPL_VAR NAME=IMGPATH>/ttl_ucc_filings.gif" width="20" height="120" border="0"></th>
          <th align="center" valign="bottom" nowrap><img src="<TMPL_VAR NAME=IMGPATH>/ttl_fictitious_business_names.gif" width="20" height="120" border="0"></th>
          <th align="center" valign="bottom" nowrap><img src="<TMPL_VAR NAME=IMGPATH>/ttl_exec_bio.gif" width="20" height="120" border="0"></th>
          <th align="center" valign="bottom" nowrap><img src="<TMPL_VAR NAME=IMGPATH>/ttl_business_credit_histories.gif" width="20" height="120" border="0"></th>
          
          <th align="center" valign="bottom" nowrap><img src="<TMPL_VAR NAME=IMGPATH>/ttl_business_watchlists.gif" width="20" height="120" border="0"></th>
        </tr>
        <tr>
          <th align="center" valign="top" class="title_text">Summary Report</th>
          <th align="center" valign="top" class="title_text" nowrap><a href="javascript:sort_on(2,'DNI/BATCH_RESULTS_VIEWER')">Case ID</a></th>
          <th align="center" valign="top" class="title_text"><a href="javascript:sort_on(3,'DNI/BATCH_RESULTS_VIEWER')">Derogatory Count</a></th>
          <TMPL_INCLUDE NAME="dni/results_prev_next.tpl">
        </tr>
        <TMPL_IF NAME="NO_SEARCH_RESULTS_FOUND">
        <tr>
          <td valign="center" align="center" class="largefont1bold" colspan="35">
            <table border="0" cellpadding="0" cellspacing="0" width="95%">
              <tr>
                <td valign="center" align="center" class="largefont1bold"><img src="<TMPL_VAR NAME=IMGPATH>/spacer.gif" width="1" height="50" border="0">&nbsp;</td>
              </tr>
              <tr>
                <td valign="center" align="center" class="largefont1bold">No Results Found for Search</td>
              </tr>
              <tr>
                <td valign="center" align="center" class="largefont1bold"><img src="<TMPL_VAR NAME=IMGPATH>/spacer.gif" width="1" height="50" border="0">&nbsp;</td>
              </tr>
            </table>
          </td>
        </tr>
        <TMPL_ELSE>
        <TMPL_LOOP NAME="SUBJECTS_LOOP">
        <tr bgcolor="#FFFFFF">
        <!--<tr bgcolor="#<TMPL_IF NAME=ALTERNATE_BG_COLOR>FFFFFF<TMPL_ELSE>EFEFEF</TMPL_IF>">-->
          <td align="center"><a href="javascript:report_win('<TMPL_VAR NAME="ACTION_LP">?EVENT=DNI/VIEW_ALL&SESSION_ID=<TMPL_VAR NAME="SESSION_ID">&CSRF_TOKEN=<TMPL_VAR NAME="CSRF_TOKEN">&SUBJECT_ID=<TMPL_VAR NAME="subject_id">','summary_win');"><img src="<TMPL_VAR NAME=IMGPATH>/ico_summary.gif" width="15" height="18" border="0"></a></td>
          <td align="center"><TMPL_VAR NAME="case_id">&nbsp;</td>
          <td align="center"><TMPL_VAR NAME="derogatory_count">&nbsp;</td>
          <td align="center"><TMPL_IF NAME="REPORT_101_AVAILABLE"><a href="javascript:report_win('<TMPL_VAR NAME="ACTION_LP">?EVENT=DNI/REPORT&SESSION_ID=<TMPL_VAR NAME="SESSION_ID">&CSRF_TOKEN=<TMPL_VAR NAME="CSRF_TOKEN">&SUBJECT_RELATIONSHIP_ID=<TMPL_VAR NAME="REPORT_101_SUBJECT_RELATIONSHIP_ID">');"><img src="<TMPL_VAR NAME=IMGPATH>/<TMPL_VAR NAME=REPORT_101_IMG_NAME>.gif" width="12" height="12" border="0"></a><TMPL_ELSE><TMPL_IF NAME="REPORT_101_NO_DATA_FOUND">-</TMPL_IF></TMPL_IF>&nbsp;</td>
          <td align="center"><TMPL_IF NAME="REPORT_106_AVAILABLE"><a href="javascript:report_win('<TMPL_VAR NAME="ACTION_LP">?EVENT=DNI/REPORT&SESSION_ID=<TMPL_VAR NAME="SESSION_ID">&CSRF_TOKEN=<TMPL_VAR NAME="CSRF_TOKEN">&SUBJECT_RELATIONSHIP_ID=<TMPL_VAR NAME="REPORT_106_SUBJECT_RELATIONSHIP_ID">');"><img src="<TMPL_VAR NAME=IMGPATH>/<TMPL_VAR NAME=REPORT_106_IMG_NAME>.gif" width="12" height="12" border="0"></a><TMPL_ELSE><TMPL_IF NAME="REPORT_106_NO_DATA_FOUND">-</TMPL_IF></TMPL_IF>&nbsp;</td>
          <td align="center"><TMPL_IF NAME="REPORT_124_AVAILABLE"><a href="javascript:report_win('<TMPL_VAR NAME="ACTION_LP">?EVENT=DNI/REPORT&SESSION_ID=<TMPL_VAR NAME="SESSION_ID">&CSRF_TOKEN=<TMPL_VAR NAME="CSRF_TOKEN">&SUBJECT_RELATIONSHIP_ID=<TMPL_VAR NAME="REPORT_124_SUBJECT_RELATIONSHIP_ID">');"><img src="<TMPL_VAR NAME=IMGPATH>/<TMPL_VAR NAME=REPORT_124_IMG_NAME>.gif" width="12" height="12" border="0"></a><TMPL_ELSE><TMPL_IF NAME="REPORT_124_NO_DATA_FOUND">-</TMPL_IF></TMPL_IF>&nbsp;</td>
          <td align="center"><TMPL_IF NAME="REPORT_125_AVAILABLE"><a href="javascript:report_win('<TMPL_VAR NAME="ACTION_LP">?EVENT=DNI/REPORT&SESSION_ID=<TMPL_VAR NAME="SESSION_ID">&CSRF_TOKEN=<TMPL_VAR NAME="CSRF_TOKEN">&SUBJECT_RELATIONSHIP_ID=<TMPL_VAR NAME="REPORT_125_SUBJECT_RELATIONSHIP_ID">');"><img src="<TMPL_VAR NAME=IMGPATH>/<TMPL_VAR NAME=REPORT_125_IMG_NAME>.gif" width="12" height="12" border="0"></a><TMPL_ELSE><TMPL_IF NAME="REPORT_125_NO_DATA_FOUND">-</TMPL_IF></TMPL_IF>&nbsp;</td>
          <td align="center"><TMPL_IF NAME="REPORT_126_AVAILABLE"><a href="javascript:report_win('<TMPL_VAR NAME="ACTION_LP">?EVENT=DNI/REPORT&SESSION_ID=<TMPL_VAR NAME="SESSION_ID">&CSRF_TOKEN=<TMPL_VAR NAME="CSRF_TOKEN">&SUBJECT_RELATIONSHIP_ID=<TMPL_VAR NAME="REPORT_126_SUBJECT_RELATIONSHIP_ID">');"><img src="<TMPL_VAR NAME=IMGPATH>/<TMPL_VAR NAME=REPORT_126_IMG_NAME>.gif" width="12" height="12" border="0"></a><TMPL_ELSE><TMPL_IF NAME="REPORT_126_NO_DATA_FOUND">-</TMPL_IF></TMPL_IF>&nbsp;</td>
          <td align="center"><TMPL_IF NAME="REPORT_113_AVAILABLE"><a href="javascript:report_win('<TMPL_VAR NAME="ACTION_LP">?EVENT=DNI/REPORT&SESSION_ID=<TMPL_VAR NAME="SESSION_ID">&CSRF_TOKEN=<TMPL_VAR NAME="CSRF_TOKEN">&SUBJECT_RELATIONSHIP_ID=<TMPL_VAR NAME="REPORT_113_SUBJECT_RELATIONSHIP_ID">');"><img src="<TMPL_VAR NAME=IMGPATH>/<TMPL_VAR NAME=REPORT_113_IMG_NAME>.gif" width="12" height="12" border="0"></a><TMPL_ELSE><TMPL_IF NAME="REPORT_113_NO_DATA_FOUND">-</TMPL_IF></TMPL_IF>&nbsp;</td>
          <td align="center"><TMPL_IF NAME="REPORT_114_AVAILABLE"><a href="javascript:report_win('<TMPL_VAR NAME="ACTION_LP">?EVENT=DNI/REPORT&SESSION_ID=<TMPL_VAR NAME="SESSION_ID">&CSRF_TOKEN=<TMPL_VAR NAME="CSRF_TOKEN">&SUBJECT_RELATIONSHIP_ID=<TMPL_VAR NAME="REPORT_114_SUBJECT_RELATIONSHIP_ID">');"><img src="<TMPL_VAR NAME=IMGPATH>/<TMPL_VAR NAME=REPORT_114_IMG_NAME>.gif" width="12" height="12" border="0"></a><TMPL_ELSE><TMPL_IF NAME="REPORT_114_NO_DATA_FOUND">-</TMPL_IF></TMPL_IF>&nbsp;</td>
          <td align="center"><TMPL_IF NAME="REPORT_54_AVAILABLE"><a href="javascript:report_win('<TMPL_VAR NAME="ACTION_LP">?EVENT=DNI/REPORT&SESSION_ID=<TMPL_VAR NAME="SESSION_ID">&CSRF_TOKEN=<TMPL_VAR NAME="CSRF_TOKEN">&SUBJECT_RELATIONSHIP_ID=<TMPL_VAR NAME="REPORT_54_SUBJECT_RELATIONSHIP_ID">');"><img src="<TMPL_VAR NAME=IMGPATH>/<TMPL_VAR NAME=REPORT_54_IMG_NAME>.gif" width="12" height="12" border="0"></a><TMPL_ELSE><TMPL_IF NAME="REPORT_54_NO_DATA_FOUND">-</TMPL_IF></TMPL_IF>&nbsp;</td>
          <td align="center"><TMPL_IF NAME="REPORT_9_AVAILABLE"><a href="javascript:report_win('<TMPL_VAR NAME="ACTION_LP">?EVENT=DNI/REPORT&SESSION_ID=<TMPL_VAR NAME="SESSION_ID">&CSRF_TOKEN=<TMPL_VAR NAME="CSRF_TOKEN">&SUBJECT_RELATIONSHIP_ID=<TMPL_VAR NAME="REPORT_9_SUBJECT_RELATIONSHIP_ID">');"><img src="<TMPL_VAR NAME=IMGPATH>/<TMPL_VAR NAME=REPORT_9_IMG_NAME>.gif" width="12" height="12" border="0"></a><TMPL_ELSE><TMPL_IF NAME="REPORT_9_NO_DATA_FOUND">-</TMPL_IF></TMPL_IF>&nbsp;</td>
          <td align="center"><TMPL_IF NAME="REPORT_8_AVAILABLE"><a href="javascript:report_win('<TMPL_VAR NAME="ACTION_LP">?EVENT=DNI/REPORT&SESSION_ID=<TMPL_VAR NAME="SESSION_ID">&CSRF_TOKEN=<TMPL_VAR NAME="CSRF_TOKEN">&SUBJECT_RELATIONSHIP_ID=<TMPL_VAR NAME="REPORT_8_SUBJECT_RELATIONSHIP_ID">');"><img src="<TMPL_VAR NAME=IMGPATH>/<TMPL_VAR NAME=REPORT_8_IMG_NAME>.gif" width="12" height="12" border="0"></a><TMPL_ELSE><TMPL_IF NAME="REPORT_8_NO_DATA_FOUND">-</TMPL_IF></TMPL_IF>&nbsp;</td>
          <td align="center"><TMPL_IF NAME="REPORT_53_AVAILABLE"><a href="javascript:report_win('<TMPL_VAR NAME="ACTION_LP">?EVENT=DNI/REPORT&SESSION_ID=<TMPL_VAR NAME="SESSION_ID">&CSRF_TOKEN=<TMPL_VAR NAME="CSRF_TOKEN">&SUBJECT_RELATIONSHIP_ID=<TMPL_VAR NAME="REPORT_53_SUBJECT_RELATIONSHIP_ID">');"><img src="<TMPL_VAR NAME=IMGPATH>/<TMPL_VAR NAME=REPORT_53_IMG_NAME>.gif" width="12" height="12" border="0"></a><TMPL_ELSE><TMPL_IF NAME="REPORT_53_NO_DATA_FOUND">-</TMPL_IF></TMPL_IF>&nbsp;</td>
          <td align="center"><TMPL_IF NAME="REPORT_110_AVAILABLE"><a href="javascript:report_win('<TMPL_VAR NAME="ACTION_LP">?EVENT=DNI/REPORT&SESSION_ID=<TMPL_VAR NAME="SESSION_ID">&CSRF_TOKEN=<TMPL_VAR NAME="CSRF_TOKEN">&SUBJECT_RELATIONSHIP_ID=<TMPL_VAR NAME="REPORT_110_SUBJECT_RELATIONSHIP_ID">');"><img src="<TMPL_VAR NAME=IMGPATH>/<TMPL_VAR NAME=REPORT_110_IMG_NAME>.gif" width="12" height="12" border="0"></a><TMPL_ELSE><TMPL_IF NAME="REPORT_110_NO_DATA_FOUND">-</TMPL_IF></TMPL_IF>&nbsp;</td>
          <td align="center"><TMPL_IF NAME="REPORT_111_AVAILABLE"><a href="javascript:report_win('<TMPL_VAR NAME="ACTION_LP">?EVENT=DNI/REPORT&SESSION_ID=<TMPL_VAR NAME="SESSION_ID">&CSRF_TOKEN=<TMPL_VAR NAME="CSRF_TOKEN">&SUBJECT_RELATIONSHIP_ID=<TMPL_VAR NAME="REPORT_111_SUBJECT_RELATIONSHIP_ID">');"><img src="<TMPL_VAR NAME=IMGPATH>/<TMPL_VAR NAME=REPORT_111_IMG_NAME>.gif" width="12" height="12" border="0"></a><TMPL_ELSE><TMPL_IF NAME="REPORT_111_NO_DATA_FOUND">-</TMPL_IF></TMPL_IF>&nbsp;</td>
          <td align="center"><TMPL_IF NAME="REPORT_112_AVAILABLE"><a href="javascript:report_win('<TMPL_VAR NAME="ACTION_LP">?EVENT=DNI/REPORT&SESSION_ID=<TMPL_VAR NAME="SESSION_ID">&CSRF_TOKEN=<TMPL_VAR NAME="CSRF_TOKEN">&SUBJECT_RELATIONSHIP_ID=<TMPL_VAR NAME="REPORT_112_SUBJECT_RELATIONSHIP_ID">');"><img src="<TMPL_VAR NAME=IMGPATH>/<TMPL_VAR NAME=REPORT_112_IMG_NAME>.gif" width="12" height="12" border="0"></a><TMPL_ELSE><TMPL_IF NAME="REPORT_112_NO_DATA_FOUND">-</TMPL_IF></TMPL_IF>&nbsp;</td>
          <td align="center"><TMPL_IF NAME="REPORT_140_AVAILABLE"><a href="javascript:report_win('<TMPL_VAR NAME="ACTION_LP">?EVENT=DNI/REPORT&SESSION_ID=<TMPL_VAR NAME="SESSION_ID">&CSRF_TOKEN=<TMPL_VAR NAME="CSRF_TOKEN">&SUBJECT_RELATIONSHIP_ID=<TMPL_VAR NAME="REPORT_140_SUBJECT_RELATIONSHIP_ID">');"><img src="<TMPL_VAR NAME=IMGPATH>/<TMPL_VAR NAME=REPORT_140_IMG_NAME>.gif" width="12" height="12" border="0"></a><TMPL_ELSE><TMPL_IF NAME="REPORT_140_NO_DATA_FOUND">-</TMPL_IF></TMPL_IF>&nbsp;</td>
          <td align="center"><TMPL_IF NAME="REPORT_142_AVAILABLE"><a href="javascript:report_win('<TMPL_VAR NAME="ACTION_LP">?EVENT=DNI/REPORT&SESSION_ID=<TMPL_VAR NAME="SESSION_ID">&CSRF_TOKEN=<TMPL_VAR NAME="CSRF_TOKEN">&SUBJECT_RELATIONSHIP_ID=<TMPL_VAR NAME="REPORT_142_SUBJECT_RELATIONSHIP_ID">');"><img src="<TMPL_VAR NAME=IMGPATH>/<TMPL_VAR NAME=REPORT_142_IMG_NAME>.gif" width="12" height="12" border="0"></a><TMPL_ELSE><TMPL_IF NAME="REPORT_142_NO_DATA_FOUND">-</TMPL_IF></TMPL_IF>&nbsp;</td>
          <td align="center"><TMPL_IF NAME="REPORT_44_AVAILABLE"><a href="javascript:report_win('<TMPL_VAR NAME="ACTION_LP">?EVENT=DNI/REPORT&SESSION_ID=<TMPL_VAR NAME="SESSION_ID">&CSRF_TOKEN=<TMPL_VAR NAME="CSRF_TOKEN">&SUBJECT_RELATIONSHIP_ID=<TMPL_VAR NAME="REPORT_44_SUBJECT_RELATIONSHIP_ID">');"><img src="<TMPL_VAR NAME=IMGPATH>/<TMPL_VAR NAME=REPORT_44_IMG_NAME>.gif" width="12" height="12" border="0"></a><TMPL_ELSE><TMPL_IF NAME="REPORT_44_NO_DATA_FOUND">-</TMPL_IF></TMPL_IF>&nbsp;</td>
          <td align="center"><TMPL_IF NAME="REPORT_143_AVAILABLE"><a href="javascript:report_win('<TMPL_VAR NAME="ACTION_LP">?EVENT=DNI/REPORT&SESSION_ID=<TMPL_VAR NAME="SESSION_ID">&CSRF_TOKEN=<TMPL_VAR NAME="CSRF_TOKEN">&SUBJECT_RELATIONSHIP_ID=<TMPL_VAR NAME="REPORT_143_SUBJECT_RELATIONSHIP_ID">');"><img src="<TMPL_VAR NAME=IMGPATH>/<TMPL_VAR NAME=REPORT_143_IMG_NAME>.gif" width="12" height="12" border="0"></a><TMPL_ELSE><TMPL_IF NAME="REPORT_143_NO_DATA_FOUND">-</TMPL_IF></TMPL_IF>&nbsp;</td>
          <td align="center"><TMPL_IF NAME="REPORT_127_AVAILABLE"><a href="javascript:report_win('<TMPL_VAR NAME="ACTION_LP">?EVENT=DNI/REPORT&SESSION_ID=<TMPL_VAR NAME="SESSION_ID">&CSRF_TOKEN=<TMPL_VAR NAME="CSRF_TOKEN">&SUBJECT_RELATIONSHIP_ID=<TMPL_VAR NAME="REPORT_127_SUBJECT_RELATIONSHIP_ID">');"><img src="<TMPL_VAR NAME=IMGPATH>/<TMPL_VAR NAME=REPORT_127_IMG_NAME>.gif" width="12" height="12" border="0"></a><TMPL_ELSE><TMPL_IF NAME="REPORT_127_NO_DATA_FOUND">-</TMPL_IF></TMPL_IF>&nbsp;</td>
          <td align="center"><TMPL_IF NAME="REPORT_160_AVAILABLE"><a href="javascript:report_win('<TMPL_VAR NAME="ACTION_LP">?EVENT=DNI/REPORT&SESSION_ID=<TMPL_VAR NAME="SESSION_ID">&CSRF_TOKEN=<TMPL_VAR NAME="CSRF_TOKEN">&SUBJECT_RELATIONSHIP_ID=<TMPL_VAR NAME="REPORT_160_SUBJECT_RELATIONSHIP_ID">');"><img src="<TMPL_VAR NAME=IMGPATH>/<TMPL_VAR NAME=REPORT_160_IMG_NAME>.gif" width="12" height="12" border="0"></a><TMPL_ELSE><TMPL_IF NAME="REPORT_160_NO_DATA_FOUND">-</TMPL_IF></TMPL_IF>&nbsp;</td>
          <td align="center"><TMPL_IF NAME="REPORT_34_AVAILABLE"><a href="javascript:report_win('<TMPL_VAR NAME="ACTION_LP">?EVENT=DNI/REPORT&SESSION_ID=<TMPL_VAR NAME="SESSION_ID">&CSRF_TOKEN=<TMPL_VAR NAME="CSRF_TOKEN">&SUBJECT_RELATIONSHIP_ID=<TMPL_VAR NAME="REPORT_34_SUBJECT_RELATIONSHIP_ID">');"><img src="<TMPL_VAR NAME=IMGPATH>/<TMPL_VAR NAME=REPORT_34_IMG_NAME>.gif" width="12" height="12" border="0"></a><TMPL_ELSE><TMPL_IF NAME="REPORT_34_NO_DATA_FOUND">-</TMPL_IF></TMPL_IF>&nbsp;</td>
          <td align="center"><TMPL_IF NAME="REPORT_33_AVAILABLE"><a href="javascript:report_win('<TMPL_VAR NAME="ACTION_LP">?EVENT=DNI/REPORT&SESSION_ID=<TMPL_VAR NAME="SESSION_ID">&CSRF_TOKEN=<TMPL_VAR NAME="CSRF_TOKEN">&SUBJECT_RELATIONSHIP_ID=<TMPL_VAR NAME="REPORT_33_SUBJECT_RELATIONSHIP_ID">');"><img src="<TMPL_VAR NAME=IMGPATH>/<TMPL_VAR NAME=REPORT_33_IMG_NAME>.gif" width="12" height="12" border="0"></a><TMPL_ELSE><TMPL_IF NAME="REPORT_33_NO_DATA_FOUND">-</TMPL_IF></TMPL_IF>&nbsp;</td>
          <td align="center"><TMPL_IF NAME="REPORT_145_AVAILABLE"><a href="javascript:report_win('<TMPL_VAR NAME="ACTION_LP">?EVENT=DNI/REPORT&SESSION_ID=<TMPL_VAR NAME="SESSION_ID">&CSRF_TOKEN=<TMPL_VAR NAME="CSRF_TOKEN">&SUBJECT_RELATIONSHIP_ID=<TMPL_VAR NAME="REPORT_145_SUBJECT_RELATIONSHIP_ID">');"><img src="<TMPL_VAR NAME=IMGPATH>/<TMPL_VAR NAME=REPORT_145_IMG_NAME>.gif" width="12" height="12" border="0"></a><TMPL_ELSE><TMPL_IF NAME="REPORT_145_NO_DATA_FOUND">-</TMPL_IF></TMPL_IF>&nbsp;</td>
          <td align="center"><TMPL_IF NAME="REPORT_147_AVAILABLE"><a href="javascript:report_win('<TMPL_VAR NAME="ACTION_LP">?EVENT=DNI/REPORT&SESSION_ID=<TMPL_VAR NAME="SESSION_ID">&CSRF_TOKEN=<TMPL_VAR NAME="CSRF_TOKEN">&SUBJECT_RELATIONSHIP_ID=<TMPL_VAR NAME="REPORT_147_SUBJECT_RELATIONSHIP_ID">');"><img src="<TMPL_VAR NAME=IMGPATH>/<TMPL_VAR NAME=REPORT_147_IMG_NAME>.gif" width="12" height="12" border="0"></a><TMPL_ELSE><TMPL_IF NAME="REPORT_147_NO_DATA_FOUND">-</TMPL_IF></TMPL_IF>&nbsp;</td>
          <td align="center"><TMPL_IF NAME="REPORT_39_AVAILABLE"><a href="javascript:report_win('<TMPL_VAR NAME="ACTION_LP">?EVENT=DNI/REPORT&SESSION_ID=<TMPL_VAR NAME="SESSION_ID">&CSRF_TOKEN=<TMPL_VAR NAME="CSRF_TOKEN">&SUBJECT_RELATIONSHIP_ID=<TMPL_VAR NAME="REPORT_39_SUBJECT_RELATIONSHIP_ID">');"><img src="<TMPL_VAR NAME=IMGPATH>/<TMPL_VAR NAME=REPORT_39_IMG_NAME>.gif" width="12" height="12" border="0"></a><TMPL_ELSE><TMPL_IF NAME="REPORT_39_NO_DATA_FOUND">-</TMPL_IF></TMPL_IF>&nbsp;</td>
          <td align="center"><TMPL_IF NAME="REPORT_141_AVAILABLE"><a href="javascript:report_win('<TMPL_VAR NAME="ACTION_LP">?EVENT=DNI/REPORT&SESSION_ID=<TMPL_VAR NAME="SESSION_ID">&CSRF_TOKEN=<TMPL_VAR NAME="CSRF_TOKEN">&SUBJECT_RELATIONSHIP_ID=<TMPL_VAR NAME="REPORT_141_SUBJECT_RELATIONSHIP_ID">');"><img src="<TMPL_VAR NAME=IMGPATH>/<TMPL_VAR NAME=REPORT_141_IMG_NAME>.gif" width="12" height="12" border="0"></a><TMPL_ELSE><TMPL_IF NAME="REPORT_141_NO_DATA_FOUND">-</TMPL_IF></TMPL_IF>&nbsp;</td>
          
          <td align="center"><TMPL_IF NAME="REPORT_46_AVAILABLE"><a href="javascript:report_win('<TMPL_VAR NAME="ACTION_LP">?EVENT=DNI/REPORT&SESSION_ID=<TMPL_VAR NAME="SESSION_ID">&CSRF_TOKEN=<TMPL_VAR NAME="CSRF_TOKEN">&SUBJECT_RELATIONSHIP_ID=<TMPL_VAR NAME="REPORT_46_SUBJECT_RELATIONSHIP_ID">');"><img src="<TMPL_VAR NAME=IMGPATH>/<TMPL_VAR NAME=REPORT_46_IMG_NAME>.gif" width="12" height="12" border="0"></a><TMPL_ELSE><TMPL_IF NAME="REPORT_46_NO_DATA_FOUND">-</TMPL_IF></TMPL_IF>&nbsp;</td>
          <td align="center"><TMPL_IF NAME="REPORT_48_AVAILABLE"><a href="javascript:report_win('<TMPL_VAR NAME="ACTION_LP">?EVENT=DNI/REPORT&SESSION_ID=<TMPL_VAR NAME="SESSION_ID">&CSRF_TOKEN=<TMPL_VAR NAME="CSRF_TOKEN">&SUBJECT_RELATIONSHIP_ID=<TMPL_VAR NAME="REPORT_48_SUBJECT_RELATIONSHIP_ID">');"><img src="<TMPL_VAR NAME=IMGPATH>/<TMPL_VAR NAME=REPORT_48_IMG_NAME>.gif" width="12" height="12" border="0"></a><TMPL_ELSE><TMPL_IF NAME="REPORT_48_NO_DATA_FOUND">-</TMPL_IF></TMPL_IF>&nbsp;</td>
          <td align="center"><TMPL_IF NAME="REPORT_50_AVAILABLE"><a href="javascript:report_win('<TMPL_VAR NAME="ACTION_LP">?EVENT=DNI/REPORT&SESSION_ID=<TMPL_VAR NAME="SESSION_ID">&CSRF_TOKEN=<TMPL_VAR NAME="CSRF_TOKEN">&SUBJECT_RELATIONSHIP_ID=<TMPL_VAR NAME="REPORT_50_SUBJECT_RELATIONSHIP_ID">');"><img src="<TMPL_VAR NAME=IMGPATH>/<TMPL_VAR NAME=REPORT_50_IMG_NAME>.gif" width="12" height="12" border="0"></a><TMPL_ELSE><TMPL_IF NAME="REPORT_50_NO_DATA_FOUND">-</TMPL_IF></TMPL_IF>&nbsp;</td>
          <td align="center"><TMPL_IF NAME="REPORT_52_AVAILABLE"><a href="javascript:report_win('<TMPL_VAR NAME="ACTION_LP">?EVENT=DNI/REPORT&SESSION_ID=<TMPL_VAR NAME="SESSION_ID">&CSRF_TOKEN=<TMPL_VAR NAME="CSRF_TOKEN">&SUBJECT_RELATIONSHIP_ID=<TMPL_VAR NAME="REPORT_52_SUBJECT_RELATIONSHIP_ID">');"><img src="<TMPL_VAR NAME=IMGPATH>/<TMPL_VAR NAME=REPORT_52_IMG_NAME>.gif" width="12" height="12" border="0"></a><TMPL_ELSE><TMPL_IF NAME="REPORT_52_NO_DATA_FOUND">-</TMPL_IF></TMPL_IF>&nbsp;</td>
          <td align="center"><TMPL_IF NAME="REPORT_49_AVAILABLE"><a href="javascript:report_win('<TMPL_VAR NAME="ACTION_LP">?EVENT=DNI/REPORT&SESSION_ID=<TMPL_VAR NAME="SESSION_ID">&CSRF_TOKEN=<TMPL_VAR NAME="CSRF_TOKEN">&SUBJECT_RELATIONSHIP_ID=<TMPL_VAR NAME="REPORT_49_SUBJECT_RELATIONSHIP_ID">');"><img src="<TMPL_VAR NAME=IMGPATH>/<TMPL_VAR NAME=REPORT_49_IMG_NAME>.gif" width="12" height="12" border="0"></a><TMPL_ELSE><TMPL_IF NAME="REPORT_49_NO_DATA_FOUND">-</TMPL_IF></TMPL_IF>&nbsp;</td>
          
          <td align="center"><TMPL_IF NAME="REPORT_39_AVAILABLE"><a href="javascript:report_win('<TMPL_VAR NAME="ACTION_LP">?EVENT=DNI/REPORT&SESSION_ID=<TMPL_VAR NAME="SESSION_ID">&CSRF_TOKEN=<TMPL_VAR NAME="CSRF_TOKEN">&SUBJECT_RELATIONSHIP_ID=<TMPL_VAR NAME="REPORT_39_SUBJECT_RELATIONSHIP_ID">');"><img src="<TMPL_VAR NAME=IMGPATH>/<TMPL_VAR NAME=REPORT_39_IMG_NAME>.gif" width="12" height="12" border="0"></a><TMPL_ELSE><TMPL_IF NAME="REPORT_39_NO_DATA_FOUND">-</TMPL_IF></TMPL_IF>&nbsp;</td>
        </tr>
        </TMPL_LOOP>
        </TMPL_IF>
        <tr>
          <th align="center" valign="top" class="title_text" colspan="3"><img src="<TMPL_VAR NAME=IMGPATH>/spacer.gif" width="1" height="15" border="0">&nbsp;</th>
          <TMPL_INCLUDE NAME="dni/results_prev_next.tpl">
        </tr>
      </table>
    </td>
  </tr>
</table>
<!-- end batch_results.tpl -->

