        <TMPL_UNLESS SHOW_ADMIN_REPORT>
        <TMPL_UNLESS SHOW_ALERT_REPORT>
        <div class="form_label"><label for="report_summary">Report Type</label>:</div>
        <div class="form_field nowrap">
              <input name="report_type" value="1" id="report_detail" title="Detail Report" type="radio"> <label for="report_detail">Detail Report</label> &nbsp;&nbsp;&nbsp;
              <input name="report_type" value="2" id="report_summary" title="Summary Report" checked="checked" type="radio"> <label for="report_summary">Summary Report</label>
        </div>
        <div class="clear"></div>
        </TMPL_UNLESS>
        </TMPL_UNLESS>
        <div class="form_label"><label for="date">Date</label>:</div>
        <div class="form_field nowrap">
              <input type="radio" name="date_range" id="date_range1" value="1" checked="checked">&nbsp;&nbsp;
              <label for="select_date_recent" style="display: none">Select Date Range</label>
              <select name="DATE_RECENT" id="select_date_recent"><option value="today" <TMPL_IF NAME='TODAY'> selected</TMPL_IF>>Today</option> 
                    <option value="prev_week" <TMPL_IF NAME='PREV_WEEK'> selected</TMPL_IF>>Previous Week</option> 
                    <option value="prev_month" <TMPL_IF NAME='PREV_MONTH'> selected</TMPL_IF>>Previous Month</option> 
                    <option value="prev_60" <TMPL_IF NAME='PREV_60'> selected</TMPL_IF>>Previous 60 Days</option>
                    <option value="prev_90" <TMPL_IF NAME='PREV_90'> selected</TMPL_IF>>Previous 90 Days</option> 
                    <option value="prev_6_months" <TMPL_IF NAME='PREV_6_MONTHS'> selected</TMPL_IF>>Previous Six Months</option>
                    <option value="prev_year" <TMPL_IF NAME='PREV_YEAR'> selected</TMPL_IF>>Previous Year</option>
              </select>
              
              <input name="date_range" id="date_range2" title="Date Range" value="2" selected type="radio"> 
              <label for="from_date">From</label>: <input data-rome-id="0" name="from_date" id="from_date" title="From Date" size="10" type="text"> &nbsp;&nbsp;&nbsp;
              <label for="to_date">To</label>: <input data-rome-id="1" name="to_date" id="to_date" title="To Date" size="10" type="text">
        </div>
<div class="clear"></div>

