<!-- begin myaccount_group_activity.tpl --> <!-- used for user and group activity reports --> <script> 
function refresh_page() {
    if (checkdate()) {
	send_event('MYACCOUNT/SHOW_GROUP_REPORTING', '<TMPL_VAR NAME=ACTION_ADMIN>');
    }
}
</script>

<table border="0" cellpadding="0" cellspacing="0" width="880">
<tr>
  <td nowrap align="center" valign="middle" class="myaccountborder"> 
  <table width="856" cellpadding="0" cellspacing="0" border="0">
    <tr height="12">
      <td height="12" width="856" class="unifont1">&nbsp;</td>
    </tr>
  </table>
  <table width="860" cellpadding="0" cellspacing="0" border="0" class="myaccountbody">
    <tr>
      <td align="center">
      <table border="0" cellpadding="2" cellspacing="0" width="100%">
        <tr>
          <td class="unifont1bold" align="left"><span class=unifont1boldred>&nbsp;&nbsp;<TMPL_VAR TITLE>:</span></td>
        </tr>
        <TMPL_IF SA>
        <tr>
          <td class="unifont1bold" align="right"><span class=unifont1boldred>*&nbsp;</span>Report Type:</td>
          <TMPL_UNLESS GROUP_RESULTS>
          <td class="unifont1" nowrap="nowrap" colspan="3">&nbsp;<input type="radio" name="user_reporting" id="user_reporting" value="user_detailed" onClick="set_report_format();" <TMPL_IF NAME=SET_DETAILED>CHECKED</TMPL_IF>/>Activity Report&nbsp;<input type="radio" name="user_reporting" id="user_reporting" value="user_summary" onClick="set_report_format();" <TMPL_IF NAME=SET_SUMMARY>CHECKED</TMPL_IF>/>Summary Report</td>

          </TMPL_UNLESS>
          <TMPL_IF GROUP_RESULTS>
          <td class="unifont1" nowrap="nowrap" colspan="3"><input type="radio" name="group_reporting" value="group_detailed" <TMPL_IF NAME=SET_DETAILED>CHECKED</TMPL_IF>/>Detailed Report&nbsp;<input type="radio" name="group_reporting" value="group_summary" <TMPL_IF NAME=SET_SUMMARY>CHECKED</TMPL_IF>/>Summary Report</td>
          </TMPL_IF>
        </tr>
        </TMPL_IF>
        <TMPL_IF HAS_FCRA_NON_FCRA>
        <tr>
          <td class="unifont1bold" align="right" width="15%"><span class=unifont1boldred>*&nbsp;</span>Activity Type:&nbsp;</td>
          <td class="unifont1" nowrap="nowrap">
          &nbsp;&nbsp;<select name="ACTIVITY_TYPE" id="activity_type">
          <option value="non_fcra_activity" <TMPL_IF NAME='PDF'> selected</TMPL_IF>>NON-FCRA Activity</option>
          <option value="fcra_activity" <TMPL_IF NAME='HTML'> selected</TMPL_IF>>FCRA Activity</option>
          <option value="fcra_non_fcra_activity" <TMPL_IF NAME='HTML'> selected</TMPL_IF>>FCRA and NON-FCRA Activity</option>
          </td>
        </tr>
        </TMPL_IF>
        <tr>
        <td></td>
        </tr
        <tr>
          <td class="unifont1bold" align="right" valign="middle"><span class=unifont1boldred>*&nbsp;</span>Date Range:</td>
          <td colspan="5">
          <table border="0" width="100%" cellpadding="2">
          <tr>
            <td class="unifont1">
              <input type="radio" name="date_select" id="date_select" value="date_recent"<TMPL_IF CHECKED_RECENT> CHECKED</TMPL_IF> onClick="from=document.getElementById('activity_date_from');from.value='';from.disabled=true;to=document.getElementById('activity_date_to');to.value='';to.disabled=true;document.getElementById('select_date_recent').disabled=false;" >&nbsp;&nbsp;
              <select name="DATE_RECENT" id="select_date_recent"><option value="today" <TMPL_IF NAME='TODAY'> selected</TMPL_IF>>Today</option> 
              <option value="prev_week" <TMPL_IF NAME='PREV_WEEK'> selected</TMPL_IF>>Previous Week</option> 
              <option value="prev_month" <TMPL_IF NAME='PREV_MONTH'> selected</TMPL_IF>>Previous Month</option> 
              <option value="prev_60" <TMPL_IF NAME='PREV_60'> selected</TMPL_IF>>Previous 60 Days</option>
              <option value="prev_90" <TMPL_IF NAME='PREV_90'> selected</TMPL_IF>>Previous 90 Days</option> 
         <!-- <option value="prev_6_months" <TMPL_IF NAME='PREV_6_MONTHS'> selected</TMPL_IF>>Previous Six Months</option>
              <option value="prev_year" <TMPL_IF NAME='PREV_YEAR'> selected</TMPL_IF>>Previous Year</option> -->
              </select>
            </td>
         </tr> 
         <tr>
           <td class="unifont1"><input type="radio" name="date_select"  id="date_select"
            value="date_range"<TMPL_IF CHECKED_RANGE> CHECKED</TMPL_IF> 
              onClick="from=document.getElementById('activity_date_from');from.disabled=false;to=document.getElementById('activity_date_to');to.disabled=false;document.getElementById('select_date_recent').disabled=true;" >&nbsp;&nbsp;<a href="javascript:void(0);" onClick="displayDatePicker('ACTIVITY_DATE_FROM','below');"><b>From:</b></a>&nbsp;
            <input onClick="displayDatePicker('ACTIVITY_DATE_FROM','below');" type=text name=ACTIVITY_DATE_FROM id="activity_date_from" value="<TMPL_VAR NAME=ACTIVITY_DATE_FROM>" size="8" maxlength=10>
          &nbsp;&nbsp;<a href="javascript:void(0);" onClick="displayDatePicker('ACTIVITY_DATE_TO','below');"><b>To</a>:</b>&nbsp;
            <input onClick="displayDatePicker('ACTIVITY_DATE_TO','below');" type=text name=ACTIVITY_DATE_TO id="activity_date_to" value="<TMPL_VAR NAME=ACTIVITY_DATE_TO>" size="8" maxlength=10>&nbsp;<spanclass="smallfont1">(MM/DD/YYYY)</span>&nbsp;&nbsp;<TMPL_IF HAS_FCRA_NON_FCRA><TMPL_UNLESS GROUP_REPORTS><b>Total (NON-FCRA):</b>&nbsp; <TMPL_VAR NAME=PAGE_RECORDS>, <b>Total (FCRA):</b>&nbsp; <TMPL_VAR NAME=FCRA_PAGE_RECORDS></TMPL_UNLESS><TMPL_ELSE><b>Total:</b>&nbsp; <TMPL_VAR NAME=PAGE_RECORDS></TMPL_IF></td>

           </td>
         </tr>
         </table>
         </td>
        </tr>
	<TMPL_IF NAME="DATE_ERROR">
	<tr>
	<td colspan="2" align="center"><span class="unifont2"><font color="blue"><b><TMPL_VAR NAME=DATE_ERROR></b>&nbsp;&nbsp;</font></span></td>
	</tr>
	</TMPL_IF>
        <TMPL_IF SA>
        <div id="REPORTFORMAT" name="REPORTFORMAT" style="visibility:hidden; z-index:1000;">
        <tr>
          <td class="unifont1bold" align="right" width="15%"><span class=unifont1boldred>*&nbsp;</span>Report Format:&nbsp;</td>
          <td class="unifont1" nowrap="nowrap">
          &nbsp;&nbsp;<select name="OUTPUT_FORMAT" id="output_format">
          <option value="pdf" <TMPL_IF NAME='PDF'> selected</TMPL_IF>>PDF</option>
          <option value="html" <TMPL_IF NAME='HTML'> selected</TMPL_IF>>HTML</option>
          <option value="csv" <TMPL_IF NAME='Excel'> selected</TMPL_IF>>Excel</option>
          </td>
        </tr>
        </div>
        </TMPL_IF>

    <TMPL_UNLESS GROUP_REPORTS>
    <tr>
      <TMPL_IF SA>
      <td class="unifont1bold" align="right" width="15%"><span class="unifont1"><b>User:</b>&nbsp;&nbsp;</span></td>
      <td class="unifont1" align="left">
      &nbsp;<SELECT NAME=ACTIVITY_LOGIN_FILTER>
      <TMPL_LOOP NAME=USER_SELECT_LOOP>
      <OPTION VALUE="<TMPL_VAR NAME=LOGINID>" <TMPL_IF NAME="LOGIN_SELECT">SELECTED</TMPL_IF>><TMPL_VAR NAME=LOGINID> - <TMPL_VAR NAME=FIRSTNAME> <TMPL_VAR NAME=LASTNAME></OPTION>
      </TMPL_LOOP>
      </SELECT>
      <TMPL_ELSE>
      <td class="unifont1bold" align="right" width="15%"></td>
      <td class="unifont1" align="left">
      </TMPL_IF>
      &nbsp;&nbsp;&nbsp;&nbsp;<b><a href="javascript:send_event('MYACCOUNT/SHOW_PREFERENCES')">Time Zone:</a></b> <TMPL_VAR TZNAME> (<TMPL_VAR OFFSET>)
      </td>
    </tr>
    </TMPL_UNLESS>
    <tr>
      </table>
      </td>
    </tr>
    <td align="center" colspan="5">
    <table border="0" width="100%">
      <tr>
        <td class="inputlabel" nowrap="nowrap" align="left" width="15%">&nbsp;<span class=unifont1boldred>Run Report:</span></td>
        <td class="unifont1" nowrap="nowrap" align="center" width="40%"><input type="button" name="Run" value="Run" onClick="<TMPL_IF GROUP_RESULTS>if(!check_group_radio()) { return false;}</TMPL_IF>if(document.getElementById('date_select').checked == false ){ if(!checkdate(this)) return false;}; document.forms[0].RUN_REPORT.value=1;send_event('MYACCOUNT/<TMPL_IF GROUP_RESULTS>SHOW_GROUP_REPORTING<TMPL_ELSE>SHOW_ACTIVITY</TMPL_IF>'<TMPL_UNLESS GROUP_REPORTS>,'<TMPL_VAR NAME=ACTION_ADMIN>'</TMPL_UNLESS>);">&nbsp;&nbsp;&nbsp;<input type="button" name="Reset" value="Reset" onClick="reset_form();set_report_format(1);set_date_select();">
        <TMPL_UNLESS HAS_FCRA_NON_FCRA>
          <TMPL_UNLESS IRS><TMPL_UNLESS IRB>
            <TMPL_IF NAME=ACT_EXPORT_ON>&nbsp;<input type="button" name="Export" value="Export" onClick="document.forms[0].RUN_REPORT.value=1;document.forms[0].EXPORT_REPORT.value=1;document.forms[0].FCRA_EXPORT.value=0;send_event('MYACCOUNT/SHOW_ACTIVITY_EXPORT','<TMPL_VAR NAME=ACTION_ADMIN>');"></TMPL_IF>
          </TMPL_UNLESS></TMPL_UNLESS>
            </td>
        </TMPL_UNLESS>
        <td>&nbsp;</td>
          <td height="40" class="unifont1">&nbsp;&nbsp;&nbsp;&nbsp;</td>
          <td height="40"><TMPL_UNLESS HAS_FCRA_NON_FCRA><TMPL_IF NAME=PREV_ON><a href="javascript:send_event('MYACCOUNT/SHOW_ACTIVITY_PREV', '<TMPL_VAR NAME=ACTION_ADMIN>')"><img width="65" height="24" border="0" name="prevadmin" src="<TMPL_VAR NAME=IMGPATH>/previous_page.gif"></a><TMPL_ELSE><img width="65" height="24" border="0" name="prevadmin" src="<TMPL_VAR NAME=IMGPATH>/previous_page_off.gif"></TMPL_IF>&nbsp;<TMPL_IF NAME=NEXT_ON><a href="javascript:send_event('MYACCOUNT/SHOW_ACTIVITY_NEXT', '<TMPL_VAR NAME=ACTION_ADMIN>')"><img width="65" height="24" border="0" name="nextadmin" src="<TMPL_VAR NAME=IMGPATH>/next_page.gif"></a><TMPL_ELSE><img width="65" height="24" border="0" name="nextadmin" src="<TMPL_VAR NAME=IMGPATH>/next_page_off.gif"></TMPL_IF></TMPL_UNLESS></td>
      </tr>
      <TMPL_IF HAS_FCRA_NON_FCRA>
      <TMPL_UNLESS GROUP_REPORTS>
      <TMPL_UNLESS REPORT_SUBMITTED>
      <tr>
        <td colspan="5"><div style="padding-bottom:4px;padding-top:8px"><div style="font:0/0 serif;border-bottom:1px dotted #cc0033;"></div></div></td>
      </tr>
      <tr>
        <td class="inputlabel" nowrap="nowrap" align="left" width="15%">&nbsp;<span class=unifont1boldred>NON-FCRA Report</span></td>
        <td class="unifont1" nowrap="nowrap" align="center" width="40%">&nbsp;<TMPL_UNLESS IRS><TMPL_UNLESS IRB><TMPL_IF NAME=ACT_EXPORT_ON>&nbsp;<input type="button" name="Export" value="Export" onClick="document.forms[0].RUN_REPORT.value=1;document.forms[0].EXPORT_REPORT.value=1;document.forms[0].FCRA_EXPORT.value=0;send_event('MYACCOUNT/SHOW_ACTIVITY_EXPORT','<TMPL_VAR NAME=ACTION_ADMIN>');"></TMPL_IF></TMPL_UNLESS></TMPL_UNLESS></td>
        <td>&nbsp;</td>
          <td height="40" class="unifont1">&nbsp;&nbsp;&nbsp;&nbsp;</td>
          <td height="40"><TMPL_IF NAME=PREV_ON><a href="javascript:send_event('MYACCOUNT/SHOW_ACTIVITY_PREV', '<TMPL_VAR NAME=ACTION_ADMIN>')"><img width="65" height="24" border="0" name="prevadmin" src="<TMPL_VAR NAME=IMGPATH>/previous_page.gif"></a><TMPL_ELSE><img width="65" height="24" border="0" name="prevadmin" src="<TMPL_VAR NAME=IMGPATH>/previous_page_off.gif"></TMPL_IF>&nbsp;<TMPL_IF NAME=NEXT_ON><a href="javascript:send_event('MYACCOUNT/SHOW_ACTIVITY_NEXT', '<TMPL_VAR NAME=ACTION_ADMIN>')"><img width="65" height="24" border="0" name="nextadmin" src="<TMPL_VAR NAME=IMGPATH>/next_page.gif"></a><TMPL_ELSE><img width="65" height="24" border="0" name="nextadmin" src="<TMPL_VAR NAME=IMGPATH>/next_page_off.gif"></TMPL_IF>
      </tr>
      </TMPL_UNLESS>
      </TMPL_UNLESS>
      </TMPL_IF>
    </table>
    </td>
    </tr>
    <tr>	
      <td align="center" class="myaccountborder">
	<table border="1" cellpadding="0" cellspacing="1" width="860" bgcolor="#d0ccd0">
          <TMPL_IF NAME="USER_RESULTS">
	  <tr height="20">
	    <td class="smallfont1" nowrap align="center" valign="middle"><b>Activity</b></td>
	    <td class="smallfont1" nowrap align="center" valign="middle"><b>Group</b></td>
	    <td class="smallfont1" nowrap align="center" valign="middle"><b>Search Criteria</b></td>
	    <td class="smallfont1" nowrap align="center" valign="middle"><b>Reference Code</b></td>
	    <td class="smallfont1" nowrap align="center" valign="middle"><b>Date &amp; Time</b>
	    </td>
	  </tr>
          </TMPL_IF>
      <TMPL_IF NAME="SEARCH_RESULTS">
	  <TMPL_LOOP NAME="SEARCH_RESULTS">
  	    <tr bgcolor="#ffffff">
	      <TMPL_IF NAME="transaction_type">
	        <td class="smallfont1" nowrap valign="top">&nbsp;<TMPL_VAR NAME="transaction_type"></td>
	      <TMPL_ELSE>
	        <td class="smallfont1" nowrap valign="top">&nbsp;</td> 
	      </TMPL_IF>
	     <td class="smallfont1" nowrap valign="top">&nbsp;<TMPL_VAR NAME="group_name">&nbsp;</td>
	     <td class="smallfont1" nowrap valign="top">&nbsp;
	       <TMPL_IF POWERSEARCH_REPORT>
	         <TMPL_VAR NAME="REPORT_OPTIONS">
	       <TMPL_ELSE>
	         <TMPL_VAR NAME="fname">
	         <TMPL_VAR NAME="mname">
	         <TMPL_VAR NAME="lname">
	         <TMPL_VAR NAME="full_name">
	         <TMPL_VAR NAME="business_name">
	         <TMPL_VAR NAME="address">
	         <TMPL_VAR NAME="city">
	         <TMPL_VAR NAME="state">
	         <TMPL_VAR NAME="zip">
	         <TMPL_VAR NAME="zip4">
	         <TMPL_VAR NAME="phone">
	         <TMPL_VAR NAME="ssn">
	         <TMPL_VAR NAME="unique_id">
	         <TMPL_VAR NAME="dob">
	       </TMPL_IF>
	     </td>
	  <TMPL_IF NAME="reference_code">
	  	<td class="smallfont1" nowrap valign="top">&nbsp;<TMPL_VAR NAME="reference_code"></td>
	  <TMPL_ELSE>
	  	<td class="smallfont1" nowrap valign="top">&nbsp;</td>
	  </TMPL_IF>
	  <TMPL_IF NAME="dateadded">
	  	<td class="smallfont1" <TMPL_UNLESS IGNORE_NO_WRAP>nowrap </TMPL_UNLESS>valign="top">&nbsp;<TMPL_VAR NAME="dateadded"></td>
	  <TMPL_ELSE>
	  	<td class="smallfont1" nowrap valign="top">&nbsp;</td>
	  </TMPL_IF>
	  </tr>
	  </TMPL_LOOP>
	  <TMPL_ELSE>
        <TMPL_UNLESS NAME="IRS">
        <TMPL_UNLESS NAME=REPORT_SUBMITTED>
	    <tr bgcolor="#ffffff">
	      <td class="smallfont1" nowrap valign="top">&nbsp;No activity was found.</td>
	    </tr>
        </TMPL_UNLESS>
        </TMPL_UNLESS>
	  </TMPL_IF>

        </table>
    </td>
    </tr>

    <TMPL_IF HAS_FCRA_NON_FCRA>
    <TMPL_UNLESS GROUP_RESULTS>
    <TMPL_UNLESS REPORT_SUBMITTED>
    <tr height="12" class="myaccountborder">
        <td height="12" class="unifont1">&nbsp;</td>
    </tr>

    <tr>
    <td align="center" colspan="5">
    <table border="0" width="100%" id="fcra-data-table">
      <tr>
        <td class="inputlabel" nowrap="nowrap" align="left" width="15%">&nbsp;<span class=unifont1boldred>FCRA Report</span></td>
        <td class="unifont1" nowrap="nowrap" align="center" width="40%">&nbsp;<TMPL_UNLESS IRS><TMPL_UNLESS IRB><TMPL_IF NAME=ACT_EXPORT_FCRA_ON>&nbsp;<input type="button" name="Export FCRA" value="Export FCRA" onClick="document.forms[0].RUN_REPORT.value=1;document.forms[0].EXPORT_REPORT.value=1;document.forms[0].FCRA_EXPORT.value=1;send_event('MYACCOUNT/SHOW_ACTIVITY_FCRA_EXPORT','<TMPL_VAR NAME=ACTION_ADMIN>');"></TMPL_IF></TMPL_UNLESS></TMPL_UNLESS></td>
        <td>&nbsp;</td>
          <td height="40" class="unifont1">&nbsp;&nbsp;&nbsp;&nbsp;</td>
          <td height="40"><TMPL_IF NAME=FCRA_PREV_ON><a href="javascript:prepare_fcra_request();send_event('MYACCOUNT/SHOW_ACTIVITY_FCRA_PREV', '<TMPL_VAR NAME=ACTION_ADMIN>')"><img width="65" height="24" border="0" name="prevadmin" src="<TMPL_VAR NAME=IMGPATH>/previous_page.gif"></a><TMPL_ELSE><img width="65" height="24" border="0" name="prevadmin" src="<TMPL_VAR NAME=IMGPATH>/previous_page_off.gif"></TMPL_IF>&nbsp;<TMPL_IF NAME=FCRA_NEXT_ON><a href="javascript:prepare_fcra_request();send_event('MYACCOUNT/SHOW_ACTIVITY_FCRA_NEXT', '<TMPL_VAR NAME=ACTION_ADMIN>')"><img width="65" height="24" border="0" name="nextadmin" src="<TMPL_VAR NAME=IMGPATH>/next_page.gif"></a><TMPL_ELSE><img width="65" height="24" border="0" name="nextadmin" src="<TMPL_VAR NAME=IMGPATH>/next_page_off.gif"></TMPL_IF></td>
      </tr>
    </table>
    </td>
    </tr>
    <tr>	
      <td align="center" class="myaccountborder">
	<table border="1" cellpadding="0" cellspacing="1" width="860" bgcolor="#d0ccd0">
          <TMPL_IF NAME="USER_RESULTS">
	  <tr height="20">
	    <td class="smallfont1" nowrap align="center" valign="middle"><b>Activity</b></td>
	    <td class="smallfont1" nowrap align="center" valign="middle"><b>Group</b></td>
	    <td class="smallfont1" nowrap align="center" valign="middle"><b>Search Criteria</b></td>
	    <td class="smallfont1" nowrap align="center" valign="middle"><b>Reference Code</b></td>
	    <td class="smallfont1" nowrap align="center" valign="middle"><b>Date &amp; Time</b>
	    </td>
	  </tr>
          </TMPL_IF>
      <TMPL_IF NAME="FCRA_SEARCH_RESULTS">
	  <TMPL_LOOP NAME="FCRA_SEARCH_RESULTS">
  	    <tr bgcolor="#ffffff">
	      <TMPL_IF NAME="transaction_type">
	        <td class="smallfont1" nowrap valign="top">&nbsp;<TMPL_VAR NAME="transaction_type"></td>
	      <TMPL_ELSE>
	        <td class="smallfont1" nowrap valign="top">&nbsp;</td> 
	      </TMPL_IF>
	     <td class="smallfont1" nowrap valign="top">&nbsp;<TMPL_VAR NAME="group_name">&nbsp;</td>
	     <td class="smallfont1" nowrap valign="top">&nbsp;
	       <TMPL_IF POWERSEARCH_REPORT>
	         <TMPL_VAR NAME="REPORT_OPTIONS">
	       <TMPL_ELSE>
	         <TMPL_VAR NAME="fname">
	         <TMPL_VAR NAME="mname">
	         <TMPL_VAR NAME="lname">
	         <TMPL_VAR NAME="full_name">
	         <TMPL_VAR NAME="business_name">
	         <TMPL_VAR NAME="address">
	         <TMPL_VAR NAME="city">
	         <TMPL_VAR NAME="state">
	         <TMPL_VAR NAME="zip">
	         <TMPL_VAR NAME="zip4">
	         <TMPL_VAR NAME="phone">
	         <TMPL_VAR NAME="ssn">
	         <TMPL_VAR NAME="unique_id">
	         <TMPL_VAR NAME="dob">
	       </TMPL_IF>
	     </td>
	  <TMPL_IF NAME="reference_code">
	  	<td class="smallfont1" nowrap valign="top">&nbsp;<TMPL_VAR NAME="reference_code"></td>
	  <TMPL_ELSE>
	  	<td class="smallfont1" nowrap valign="top">&nbsp;</td>
	  </TMPL_IF>
	  <TMPL_IF NAME="dateadded">
	  	<td class="smallfont1" <TMPL_UNLESS IGNORE_NO_WRAP>nowrap </TMPL_UNLESS>valign="top">&nbsp;<TMPL_VAR NAME="dateadded"></td>
	  <TMPL_ELSE>
	  	<td class="smallfont1" nowrap valign="top">&nbsp;</td>
	  </TMPL_IF>
	  </tr>
	  </TMPL_LOOP>
	  <TMPL_ELSE>
        <TMPL_UNLESS NAME="IRS">
        <TMPL_UNLESS NAME=REPORT_SUBMITTED>
	    <tr bgcolor="#ffffff">
	      <td class="smallfont1" nowrap valign="top">&nbsp;No activity was found.</td>
	    </tr>
        </TMPL_UNLESS>
        </TMPL_UNLESS>
	  </TMPL_IF>
        </table>
        </td>
        </tr>
        </TMPL_UNLESS>
        </TMPL_UNLESS>
        </TMPL_IF>

<TMPL_IF NAME=REPORT_SUBMITTED>
    <tr><td>
  	<table border="0" cellpadding="0" cellspacing="1" width="860" bgcolor="#d0ccd0">
  	  <tr height="20">
  	    <td class="unifont1bold" nowrap align="center" valign="middle" style="background-color:yellow;">Your report request has been submitted. Once available, you can view it in the Report Manager.
            </td>
          </tr>
        </table>
      </td>
    </tr>	
</TMPL_IF>
<TMPL_IF NAME=ERROR_MSG>
    <tr>	
      <td align="center" class="myaccountborder">
  	<table border="0" cellpadding="0" cellspacing="1" width="860" bgcolor="#d0ccd0">
  	  <tr height="20">
  	    <td class="smallfont1" nowrap align="center" valign="middle" class=unifont1boldred>There was a problem submitting your report request, if the problem persists please contact your system administrator.
            </td>
          </tr>
        </table>
      </td>
    </tr>	
</TMPL_IF>
  </table>
  </td>
</tr>

<tr height="12" class="myaccountborder">
  <td height="12" class="unifont1">&nbsp;</td>
</tr>

<!-- start activity results -->
  <tr>
    <td align="center" class="myaccountborder">
      <table border="5" cellpadding="2" cellspacing="1" width="860" bgcolor="#d0ccd0">
  	<TMPL_IF NAME="USER_RESULTS">
        <tr>
          <th class="unifont1" style="text-align:center;"></th>
          <th class="unifont1" style="text-align:center;">Last Name</th>
          <th class="unifont1" style="text-align:center;">First Name</th>
          <th class="unifont1" style="text-align:center;">UserID</th>
          <th class="unifont1" style="text-align:center;">Active/Inactive</th>
          <th class="unifont1" style="text-align:center;">Billgroup</th>
        </tr>
  	<TMPL_LOOP NAME="USER_RESULTS">
    	<tr bgcolor="#ffffff">
          <td class="unifont1" nowrap="nowrap" width="1%" align="center"><input type="radio" 
          name="USER_RADIO" value="<TMPL_VAR LOGINID>" <TMPL_IF NAME=RADIO_BUTTON>CHECKED</TMPL_IF>/></td>
          <td class="unifont1" style="text-align:left;" width="10%"><TMPL_IF NAME=LASTNAME><TMPL_VAR NAME=LASTNAME><TMPL_ELSE>&nbsp;</TMPL_IF></td>
          <td class="unifont1" style="text-align:left;"><TMPL_IF NAME=FIRSTNAME><TMPL_VAR NAME=FIRSTNAME><TMPL_ELSE>&nbsp;</TMPL_IF></td>
          <td class="unifont1" style="text-align:left;"><TMPL_IF NAME=LOGINID><TMPL_VAR NAME=LOGINID><TMPL_ELSE>&nbsp;</TMPL_IF></td>
          <td class="unifont1" style="text-align:left;"><TMPL_IF NAME=SUSPENDED><TMPL_VAR NAME=SUSPENDED><TMPL_ELSE>&nbsp;</TMPL_IF></td>
          <td class="unifont1" style="text-align:left;"><TMPL_IF NAME=BILLGROUP><TMPL_VAR NAME=BILLGROUP><TMPL_ELSE>&nbsp;</TMPL_IF></td>
  	</tr>
  	</TMPL_LOOP>
  	</TMPL_IF>

  	<TMPL_IF NAME="GROUP_RESULTS">
        <tr>
          <td class="unifont1bold" align="right" valign="middle" width="15%"><span class=unifont1boldred>*&nbsp;</span>Group:&nbsp;</td>
          <td>
          <table border="1" width="100%">
  	    <tr height="20">
  	      <td class="smallfont1" nowrap align="left" valign="middle" colspan="2"><b>Available Groups</b></td>
  	    </tr>
  	    <TMPL_LOOP NAME="GROUP_RESULTS">
    	    <tr bgcolor="#ffffff">
              <td class="unifont1" nowrap="nowrap" width="1%" align="right"><input type="radio" name="GROUP_RADIO" value="<TMPL_VAR GROUP_ID>" <TMPL_IF NAME=RADIO_BUTTON>CHECKED</TMPL_IF>/></td>
  	      <td class="smallfont1" nowrap valign="top">&nbsp;<TMPL_VAR NAME="GROUP_NAME"></td>
  	    </tr>
  	    </TMPL_LOOP>
          </table>
          </td>
        </tr>
  	</TMPL_IF>
      </table>
     </td>
    </tr>	
</table>
<TMPL_INCLUDE NAME=myaccount_footer.tpl>
<INPUT TYPE="HIDDEN" NAME="NEXT_PAGE_DATE" VALUE="<TMPL_VAR NAME=NEXT_PAGE_DATE>">
<INPUT TYPE="HIDDEN" NAME="PREV_PAGE_DATE" VALUE="<TMPL_VAR NAME=PREV_PAGE_DATE>">
<INPUT TYPE="HIDDEN" NAME="PAGE_COUNT" VALUE="<TMPL_VAR NAME=PAGE_COUNT>">
<INPUT TYPE="HIDDEN" NAME="PAGE_TOTAL" VALUE="<TMPL_VAR NAME=PAGE_TOTAL>">
<INPUT TYPE="HIDDEN" NAME="PAGE_RECORDS" VALUE="<TMPL_VAR NAME=PAGE_RECORDS>">
<INPUT TYPE="HIDDEN" NAME="RUN_REPORT" VALUE="">
<INPUT TYPE="HIDDEN" NAME="EXPORT_REPORT" VALUE="">
<INPUT TYPE="HIDDEN" NAME="FCRA_EXPORT" VALUE="">
<TMPL_IF HAS_FCRA_NON_FCRA>
<INPUT TYPE="HIDDEN" NAME="FCRA_NEXT_PAGE_DATE" VALUE="<TMPL_VAR NAME=FCRA_NEXT_PAGE_DATE>">
<INPUT TYPE="HIDDEN" NAME="FCRA_PREV_PAGE_DATE" VALUE="<TMPL_VAR NAME=FCRA_PREV_PAGE_DATE>">
<INPUT TYPE="HIDDEN" NAME="FCRA_PAGE_COUNT" VALUE="<TMPL_VAR NAME=FCRA_PAGE_COUNT>">
<INPUT TYPE="HIDDEN" NAME="FCRA_PAGE_TOTAL" VALUE="<TMPL_VAR NAME=FCRA_PAGE_TOTAL>">
<INPUT TYPE="HIDDEN" NAME="FCRA_PAGE_RECORDS" VALUE="<TMPL_VAR NAME=FCRA_PAGE_RECORDS>">
<INPUT TYPE="HIDDEN" NAME="FCRA_CURRENT_DIRECTION" VALUE="<TMPL_VAR NAME=FCRA_CURRENT_DIRECTION>">
<INPUT TYPE="HIDDEN" NAME="FCRA_CURRENT_NEXT_PAGE_DATE" VALUE="<TMPL_VAR NAME=FCRA_CURRENT_NEXT_PAGE_DATE>">
<INPUT TYPE="HIDDEN" NAME="FCRA_CURRENT_PREV_PAGE_DATE" VALUE="<TMPL_VAR NAME=FCRA_CURRENT_PREV_PAGE_DATE>">
<INPUT TYPE="HIDDEN" NAME="CURRENT_DIRECTION" VALUE="<TMPL_VAR NAME=CURRENT_DIRECTION>">
<INPUT TYPE="HIDDEN" NAME="CURRENT_NEXT_PAGE_DATE" VALUE="<TMPL_VAR NAME=CURRENT_NEXT_PAGE_DATE>">
<INPUT TYPE="HIDDEN" NAME="CURRENT_PREV_PAGE_DATE" VALUE="<TMPL_VAR NAME=CURRENT_PREV_PAGE_DATE>">
<INPUT TYPE="HIDDEN" NAME="FCRA_REQUEST" VALUE="">
</TMPL_IF>

<script>
  set_date_select();

  function set_date_select() {
    ds=document.getElementsByName('date_select');
    from=document.getElementById('activity_date_from');
    to=document.getElementById('activity_date_to');
    select=document.getElementById('select_date_recent');
    if(ds && ds[0].checked == true) {
        from.value='';
        from.disabled=true;
        to.value='';
        to.disabled=true;
        select.disabled=false;
    }
    else {
        from.disabled=false;
        to.disabled=false;
        select.disabled=true;
    }
  }

<TMPL_IF SA>
  set_report_format();

  function set_report_format(disable) {
    var ur=document.getElementById('user_reporting');
    var of=document.getElementById('output_format');
  
    if(of && ur) {
       if(ur.checked == true) {
           of.disabled=true;
       }
       else{
           of.disabled=false;
       }
    }

    var gr = document.getElementById('activity_type');
    if (gr && ur) {
        if (ur.checked == true) {
            gr.disabled = true;
        } else {
            gr.disabled = false;
        }
    }
  }
</TMPL_IF>
    
function prepare_fcra_request() {
    document.forms[0].FCRA_REQUEST.value = 1;
    return 1;
}
</script>

<TMPL_IF FCRA_REQUEST>
<script>
$('fcra-data-table').scrollTo();
</script>
</TMPL_IF>
<!-- end myaccount_group_activity.tpl -->
