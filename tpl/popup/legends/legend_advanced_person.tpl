<!-- begin tpl/popup/legends/legend_advanced_person.tpl -->

<TMPL_INCLUDE NAME="legend_header.tpl">

<table border="0" cellpadding="0" cellspacing="2" width="308">
  <tr>
    <td colspan="2" align="center" class="style2"><b>Icon Legend</b></td>
  </tr>
  <tr>
    <td colspan="2"><img src="<TMPL_VAR NAME=IMGPATH>/spacer.gif" width="1" height="10" border="0"></td>
  </tr>
  <tr>
    <td width="25" align="center"><img src="<TMPL_VAR NAME=IMGPATH>/new_report_big.gif" width="19" height="24" border="0"></td>
    <td width="289" class="style1"><B>Reports</B></td>
  </tr>
  <tr>
    <td class="style1">&nbsp;</td>
    <td class="style1">This icon can be found on the far left of the search results.&nbsp; Click here to run the following reports: <b>Summary</b>, <b>Finder</b>, <b>Asset</b>, <b>Comprehensive</b>, and <b>Custom Comprehensive</b>.</td>
  </tr>
  <tr>
    <td colspan="2"><img src="<TMPL_VAR NAME=IMGPATH>/spacer.gif" width="1" height="10" border="0"></td>
  </tr>
  <script>
    custom_legend();
  </script>
  <tr>
    <td width="25" align="center"><img src="<TMPL_VAR NAME=IMGPATH>/new_phone_big.gif" width="21" height="21" border="0"></td>
    <td width="289" class="style1"><B>Finder Report</B></td>
  </tr>
  <tr>
    <td class="style1">&nbsp;</td>
    <td class="style1">This icon can be found on the far right of the search results.&nbsp; If you wish to create a <b>Finder Report</b> for any record, click this icon.</td>
  </tr>
  <tr>
    <td colspan="2"><img src="<TMPL_VAR NAME=IMGPATH>/spacer.gif" width="1" height="10" border="0"></td>
  </tr>
  <tr>
    <td width="25" align="center"><img src="<TMPL_VAR NAME=IMGPATH>/address_big2.gif" width="21" height="21" border="0"></td>
    <td width="289" class="style1"><B>Address Report</B></td>
  </tr>
  <tr>
    <td class="style1">&nbsp;</td>
    <td class="style1">This icon can be found on the right of the search results.&nbsp; If you wish to create an <b>Address Report</b> for any record, click this icon.</td>
  </tr>
  <tr>
    <td colspan="2"><img src="<TMPL_VAR NAME=IMGPATH>/spacer.gif" width="1" height="10" border="0"></td>
  </tr>
  <tr>
    <td width="25" align="center"><img src="<TMPL_VAR NAME=IMGPATH>/bankrupt_big.gif" width="21" height="21" border="0"></td>
    <td width="289" class="style1"><B>Bankruptcy Report</B></td>
  </tr>
  <tr>
    <td class="style1">&nbsp;</td>
    <td class="style1">If the <b>Include Bankruptcies</b> checkbox was checked at the time this search was performed and there is a bankruptcy found for a particular subject, this icon can be found on the right of the search results.&nbsp; If you wish to create a <b>Bankruptcy Report</b> for any record where a bankruptcy is found for the subject, click this icon.</td>
  </tr>
  <tr>
    <td colspan="2"><img src="<TMPL_VAR NAME=IMGPATH>/spacer.gif" width="1" height="10" border="0"></td>
  </tr>
  <tr>
    <td width="25" align="center"><img src="<TMPL_VAR NAME=IMGPATH>/crt_big.gif" width="21" height="21" border="0"></td>
    <td width="289" class="style1"><B>Court Search Ordering Wizard</B></td>
  </tr>
  <tr>
    <td class="style1">&nbsp;</td>
    <td class="style1">This icon can be found 2nd to the right of the search results.&nbsp; If you wish to run the <b>Court Search Ordering Wizard</b> for any record, click this icon.</td>
  </tr>
  <tr>
    <td colspan="2"><img src="<TMPL_VAR NAME=IMGPATH>/spacer.gif" width="1" height="10" border="0"></td>
  </tr>
  <tr>
    <td width="25" align="center"><img src="<TMPL_VAR NAME=IMGPATH>/bluecheck.gif" width="16" height="16" border="0"></td>
    <td width="289" class="style1"><B>Probable Current Address</B></td>
  </tr>
  <tr>
    <td class="style1">&nbsp;</td>
    <td class="style1">This icon is found to the immediate left of the <b>Address column</b> when the data indicates that this is the probable current address.</td>
  </tr>
  <tr>
    <td colspan="2"><img src="<TMPL_VAR NAME=IMGPATH>/spacer.gif" width="1" height="10" border="0"></td>
  </tr>
  <tr>
    <td width="25" align="center"><img src="<TMPL_VAR NAME=IMGPATH>/newd.gif" width="16" height="16" border="0"></td>
    <td width="289" class="style1"><B>Deceased Person</B></td>
  </tr>
  <tr>
    <td class="style1">&nbsp;</td>
    <td class="style1">This icon is found to the immediate left of the <b>Full Name</b> column when the data indicates that this person is deceased.</td>
  </tr>
  <tr>
    <td colspan="2"><img src="<TMPL_VAR NAME=IMGPATH>/spacer.gif" width="1" height="10" border="0"></td>
  </tr>
  <tr>
    <td colspan="2" class="style1">&nbsp;&nbsp;&nbsp;<b>SSN Indicators</b></tr>
  </tr>
  <tr>
    <td colspan="2"><img src="<TMPL_VAR NAME=IMGPATH>/spacer.gif" width="1" height="10" border="0"></td>
  </tr>
  <tr>
    <td width="25" align="center"><img src="<TMPL_VAR NAME=IMGPATH>/ssn_valid_v.gif" width="12" height="12" border="0"></td>
    <td width="289" class="style1"><B>Valid SSN</B></td>
  </tr>
  <tr>
    <td class="style1">&nbsp;</td>
    <td class="style1">We believe that the SSN displayed on the record is correct for the individual.</td>
  </tr>
  <tr>
    <td width="25" align="center"><img src="<TMPL_VAR NAME=IMGPATH>/ssn_valid_n.gif" width="12" height="12" border="0"></td>
    <td width="289" class="style1"><B>Not Exact Match</B></td>
  </tr>
  <tr>
    <td class="style1">&nbsp;</td>
    <td class="style1">We believe that that the SSN displayed on the record does not exactly match the valid SSN for the individual, but it is a close match.  This could be a transposition of digits, a missing digit or a typographical error and may indicate a need for further investigation to verify the SSN of the individual.</td>
  </tr>
  <tr>
    <td width="25" align="center"><img src="<TMPL_VAR NAME=IMGPATH>/ssn_valid_r.gif" width="12" height="12" border="0"></td>
    <td width="289" class="style1"><B>Relative</B></td>
  </tr>
  <tr>
    <td class="style1">&nbsp;</td>
    <td class="style1">We believe that the SSN displayed on the record actually belongs to a relative of the individual and may indicate a need for further investigation to verify the SSN of the individual.</td>
  </tr>
  <tr>
    <td width="25" align="center"><img src="<TMPL_VAR NAME=IMGPATH>/ssn_valid_x.gif" width="12" height="12" border="0"></td>
    <td width="289" class="style1"><B>Incorrect</B></td>
  </tr>
  <tr>
    <td class="style1">&nbsp;</td>
    <td class="style1">The SSN displayed on the record is not a match or near match and is not likely to belong to the individual.</td>
  </tr>
  <tr>
    <td colspan="2"><img src="<TMPL_VAR NAME=IMGPATH>/spacer.gif" width="1" height="10" border="0"></td>
  </tr>
</table>

<TMPL_INCLUDE NAME="legend_footer.tpl">

<!-- end tpl/popup/legends/legend_advanced_person.tpl -->
