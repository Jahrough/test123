
<!-- Start Basic PLus Assoc Report Section -->   
<TMPL_IF SHOW_BASIC_PLUS_ASSOC_PREFS>
<table border="0" align="center" width="20%">
<tr>
<td width="100%">
</TMPL_IF>
<div id="reportPopContainer">
 <div id="reportPop">
   <div class="reportPopHdr">Basic Plus Associates</div>
      <ul>
        <li>Summary Report<br />
          <span class="smallblack">(Indicators and more)</span></li>
        <li>Phones Plus</li>
        <li>Driver's License</li>
        <li>Corporate Affiliations</li>
        <li>Phone Summary<br />
        <li>Address Summary</li>
	<li>Possible Relatives</li>
		<span>
		&nbsp;- (3 Degrees)<br />
		</span>
	</li>
	<li>Neighbors <br />
		<span>
		&nbsp;- 5 Neighborhoods<br />
		</span>
        </li>
        </ul>

	<TMPL_UNLESS SHOW_BASIC_PLUS_ASSOC_PREFS>
	<div align="center">
	      <TMPL_IF NAME="DISABLE_BASIC_PLUS_ASSOCIATES_REPORT">
		   <input tabindex="10" class="rb" type="button" value="Report Disabled" onClick="void(0);" disabled>
	      <TMPL_ELSE>
		   <input name="BUTTON" tabindex="4" type="button" value="<TMPL_IF REPORT_BUTTON><TMPL_VAR NAME=REPORT_BUTTON><TMPL_ELSE>Request Report</TMPL_IF>" onclick="showpw();send_event('REPORT2/BASIC_PLUS_ASSOC_REPORT');disable_buttons('BUTTON');" />
	      </TMPL_IF>
        </div>
	</TMPL_UNLESS>

 </div>
  <div id="reportPopBot"></div>
</div>
<TMPL_IF SHOW_BASIC_PLUS_ASSOC_PREFS>
</td>
</tr>
</table>
</TMPL_IF>
<div id="clear"></div>
<p>&nbsp;</p>
<p>&nbsp;</p>
<!-- End Basic Plus Associates Report Section -->
