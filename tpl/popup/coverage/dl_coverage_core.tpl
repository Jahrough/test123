<form name="COVERAGE" action="<TMPL_VAR NAME=ACTION>" method="post">
  <TMPL_INCLUDE NAME=common_hidden_input.tpl>
  <INPUT type=hidden NAME="EVENT" VALUE="">
  <INPUT type=hidden NAME="TPL" VALUE="">
  <INPUT type=hidden NAME="CURRENT_EVENT" VALUE="<TMPL_VAR NAME=CURRENT_EVENT>">
  <INPUT type=hidden NAME="SKIN_TYPE" VALUE="<TMPL_VAR NAME=SKIN_TYPE>">
  <INPUT type=hidden NAME="APPLICATION_TYPE" VALUE="<TMPL_VAR NAME=APPLICATION_TYPE>">

<table border="0" cellpadding="5" cellspacing="0" width="100%">
  <tr>
    <td align="right" width="10%" valign="top"></td>
    <td class="coveragetitle" align="center" width="80%"><b>Driver Licenses Search Coverage</b></td>
    <td align="right" width="10%" valign="top">
    <TMPL_INCLUDE NAME="print_button.tpl">
    </td>
  </tr>
</table>

<style id="DL_Coverage for addition to Accurint Coverage 04102014_3374_Styles">
<!--table
    {mso-displayed-decimal-separator:"\.";
    mso-displayed-thousand-separator:"\,";}
.xl153374
    {padding-top:1px;
    padding-right:1px;
    padding-left:1px;
    mso-ignore:padding;
    color:black;
    font-size:11.0pt;
    font-weight:400;
    font-style:normal;
    text-decoration:none;
    font-family:Calibri, sans-serif;
    mso-font-charset:0;
    mso-number-format:General;
    text-align:general;
    vertical-align:bottom;
    mso-background-source:auto;
    mso-pattern:auto;
    white-space:nowrap;}
.xl653374
    {padding-top:1px;
    padding-right:1px;
    padding-left:1px;
    mso-ignore:padding;
    color:windowtext;
    font-size:10.0pt;
    font-weight:700;
    font-style:normal;
    text-decoration:none;
    font-family:Arial, sans-serif;
    mso-font-charset:0;
    mso-number-format:General;
    text-align:center;
    vertical-align:middle;
    border:1.0pt solid windowtext;
    background:#BFBFBF;
    mso-pattern:black none;
    mso-protection:unlocked visible;
    white-space:normal;}
.xl663374
    {padding-top:1px;
    padding-right:1px;
    padding-left:1px;
    mso-ignore:padding;
    color:windowtext;
    font-size:10.0pt;
    font-weight:700;
    font-style:normal;
    text-decoration:none;
    font-family:Arial, sans-serif;
    mso-font-charset:0;
    mso-number-format:General;
    text-align:general;
    vertical-align:middle;
    border:1.0pt solid windowtext;
    background:#BFBFBF;
    mso-pattern:black none;
    mso-protection:unlocked visible;
    white-space:normal;}
.xl673374
    {padding-top:1px;
    padding-right:1px;
    padding-left:1px;
    mso-ignore:padding;
    color:black;
    font-size:10.0pt;
    font-weight:700;
    font-style:normal;
    text-decoration:none;
    font-family:Arial, sans-serif;
    mso-font-charset:0;
    mso-number-format:General;
    text-align:center;
    vertical-align:bottom;
    border-top:1.0pt solid windowtext;
    border-right:none;
    border-bottom:none;
    border-left:1.0pt solid windowtext;
    background:#BFBFBF;
    mso-pattern:black none;
    white-space:normal;}
.xl683374
    {padding-top:1px;
    padding-right:1px;
    padding-left:1px;
    mso-ignore:padding;
    color:black;
    font-size:10.0pt;
    font-weight:700;
    font-style:normal;
    text-decoration:none;
    font-family:Arial, sans-serif;
    mso-font-charset:0;
    mso-number-format:General;
    text-align:center;
    vertical-align:bottom;
    border-top:1.0pt solid windowtext;
    border-right:none;
    border-bottom:none;
    border-left:none;
    background:#BFBFBF;
    mso-pattern:black none;
    white-space:nowrap;}
.xl693374
    {padding-top:1px;
    padding-right:1px;
    padding-left:1px;
    mso-ignore:padding;
    color:black;
    font-size:10.0pt;
    font-weight:700;
    font-style:normal;
    text-decoration:none;
    font-family:Arial, sans-serif;
    mso-font-charset:0;
    mso-number-format:General;
    text-align:center;
    vertical-align:bottom;
    border-top:1.0pt solid windowtext;
    border-right:1.0pt solid windowtext;
    border-bottom:none;
    border-left:none;
    background:#BFBFBF;
    mso-pattern:black none;
    white-space:nowrap;}
.xl703374
    {padding-top:1px;
    padding-right:1px;
    padding-left:1px;
    mso-ignore:padding;
    color:black;
    font-size:10.0pt;
    font-weight:700;
    font-style:normal;
    text-decoration:none;
    font-family:Arial, sans-serif;
    mso-font-charset:0;
    mso-number-format:General;
    text-align:center;
    vertical-align:bottom;
    border-top:none;
    border-right:none;
    border-bottom:1.0pt solid windowtext;
    border-left:1.0pt solid windowtext;
    background:#BFBFBF;
    mso-pattern:black none;
    white-space:nowrap;}
.xl713374
    {padding-top:1px;
    padding-right:1px;
    padding-left:1px;
    mso-ignore:padding;
    color:black;
    font-size:10.0pt;
    font-weight:700;
    font-style:normal;
    text-decoration:none;
    font-family:Arial, sans-serif;
    mso-font-charset:0;
    mso-number-format:General;
    text-align:center;
    vertical-align:bottom;
    border-top:none;
    border-right:none;
    border-bottom:1.0pt solid windowtext;
    border-left:none;
    background:#BFBFBF;
    mso-pattern:black none;
    white-space:nowrap;}
.xl723374
    {padding-top:1px;
    padding-right:1px;
    padding-left:1px;
    mso-ignore:padding;
    color:black;
    font-size:10.0pt;
    font-weight:700;
    font-style:normal;
    text-decoration:none;
    font-family:Arial, sans-serif;
    mso-font-charset:0;
    mso-number-format:General;
    text-align:center;
    vertical-align:bottom;
    border-top:none;
    border-right:1.0pt solid windowtext;
    border-bottom:1.0pt solid windowtext;
    border-left:none;
    background:#BFBFBF;
    mso-pattern:black none;
    white-space:nowrap;}
.xl733374
    {padding-top:1px;
    padding-right:1px;
    padding-left:1px;
    mso-ignore:padding;
    color:windowtext;
    font-size:10.0pt;
    font-weight:700;
    font-style:normal;
    text-decoration:none;
    font-family:Arial, sans-serif;
    mso-font-charset:0;
    mso-number-format:General;
    text-align:center;
    vertical-align:middle;
    border-top:1.0pt solid windowtext;
    border-right:none;
    border-bottom:none;
    border-left:1.0pt solid windowtext;
    background:#BFBFBF;
    mso-pattern:black none;
    mso-protection:unlocked visible;
    white-space:normal;}
.xl743374
    {padding-top:1px;
    padding-right:1px;
    padding-left:1px;
    mso-ignore:padding;
    color:black;
    font-size:11.0pt;
    font-weight:400;
    font-style:normal;
    text-decoration:none;
    font-family:Calibri, sans-serif;
    mso-font-charset:0;
    mso-number-format:General;
    text-align:general;
    vertical-align:middle;
    border-top:1.0pt solid windowtext;
    border-right:none;
    border-bottom:none;
    border-left:none;
    mso-background-source:auto;
    mso-pattern:auto;
    white-space:normal;}
.xl753374
    {padding-top:1px;
    padding-right:1px;
    padding-left:1px;
    mso-ignore:padding;
    color:black;
    font-size:11.0pt;
    font-weight:400;
    font-style:normal;
    text-decoration:none;
    font-family:Calibri, sans-serif;
    mso-font-charset:0;
    mso-number-format:General;
    text-align:general;
    vertical-align:middle;
    border-top:1.0pt solid windowtext;
    border-right:1.0pt solid windowtext;
    border-bottom:none;
    border-left:none;
    mso-background-source:auto;
    mso-pattern:auto;
    white-space:normal;}
.xl763374
    {padding-top:1px;
    padding-right:1px;
    padding-left:1px;
    mso-ignore:padding;
    color:windowtext;
    font-size:10.0pt;
    font-weight:700;
    font-style:normal;
    text-decoration:none;
    font-family:Arial, sans-serif;
    mso-font-charset:0;
    mso-number-format:General;
    text-align:center;
    vertical-align:middle;
    border-top:none;
    border-right:.5pt solid windowtext;
    border-bottom:1.0pt solid windowtext;
    border-left:1.0pt solid windowtext;
    background:#BFBFBF;
    mso-pattern:black none;
    mso-protection:unlocked visible;
    white-space:normal;}
.xl773374
    {padding-top:1px;
    padding-right:1px;
    padding-left:1px;
    mso-ignore:padding;
    color:windowtext;
    font-size:10.0pt;
    font-weight:700;
    font-style:normal;
    text-decoration:none;
    font-family:Arial, sans-serif;
    mso-font-charset:0;
    mso-number-format:General;
    text-align:center;
    vertical-align:middle;
    border-top:none;
    border-right:.5pt solid windowtext;
    border-bottom:1.0pt solid windowtext;
    border-left:.5pt solid windowtext;
    background:#BFBFBF;
    mso-pattern:black none;
    mso-protection:unlocked visible;
    white-space:normal;}
.xl783374
    {padding-top:1px;
    padding-right:1px;
    padding-left:1px;
    mso-ignore:padding;
    color:windowtext;
    font-size:10.0pt;
    font-weight:700;
    font-style:normal;
    text-decoration:none;
    font-family:Arial, sans-serif;
    mso-font-charset:0;
    mso-number-format:General;
    text-align:center;
    vertical-align:middle;
    border-top:none;
    border-right:1.0pt solid windowtext;
    border-bottom:1.0pt solid windowtext;
    border-left:.5pt solid windowtext;
    background:#BFBFBF;
    mso-pattern:black none;
    mso-protection:unlocked visible;
    white-space:normal;}
.xl793374
    {padding-top:1px;
    padding-right:1px;
    padding-left:1px;
    mso-ignore:padding;
    color:black;
    font-size:10.0pt;
    font-weight:400;
    font-style:normal;
    text-decoration:none;
    font-family:Arial, sans-serif;
    mso-font-charset:0;
    mso-number-format:General;
    text-align:general;
    vertical-align:top;
    border:1.0pt solid windowtext;
    mso-background-source:auto;
    mso-pattern:auto;
    mso-protection:unlocked visible;
    white-space:normal;}
.xl803374
    {padding-top:1px;
    padding-right:1px;
    padding-left:1px;
    mso-ignore:padding;
    color:black;
    font-size:10.0pt;
    font-weight:400;
    font-style:normal;
    text-decoration:none;
    font-family:Arial, sans-serif;
    mso-font-charset:0;
    mso-number-format:"Short Date";
    text-align:left;
    vertical-align:top;
    border:1.0pt solid windowtext;
    mso-background-source:auto;
    mso-pattern:auto;
    mso-protection:unlocked visible;
    white-space:normal;}
.xl813374
    {padding-top:1px;
    padding-right:1px;
    padding-left:1px;
    mso-ignore:padding;
    color:black;
    font-size:10.0pt;
    font-weight:400;
    font-style:normal;
    text-decoration:none;
    font-family:Arial, sans-serif;
    mso-font-charset:0;
    mso-number-format:General;
    text-align:general;
    vertical-align:top;
    border:1.0pt solid windowtext;
    mso-background-source:auto;
    mso-pattern:auto;
    white-space:normal;}
-->
</style>
</head>

<body>
<!--[if !excel]>&nbsp;&nbsp;<![endif]-->
<!--The following information was generated by Microsoft Office Excel's Publish
as Web Page wizard.-->
<!--If the same item is republished from Excel, all information between the DIV
tags will be replaced.-->
<!----------------------------->
<!--START OF OUTPUT FROM EXCEL PUBLISH AS WEB PAGE WIZARD -->
<!----------------------------->

<div id="DL_Coverage for addition to Accurint Coverage 04102014_3374"
align=center x:publishsource="Excel">

<table border=0 cellpadding=0 cellspacing=0 width=536 style='border-collapse:
 collapse;table-layout:fixed;width:404pt'>
 <col width=134 span=4 style='width:101pt'>
 <tr class=xl153374 height=55 style='mso-height-source:userset;height:41.25pt'>
  <td colspan=4 height=55 class=xl733374 dir=LTR width=536 style='border-right:
  1.0pt solid black;height:41.25pt;width:404pt'>NOTE:<span
  style='mso-spacerun:yes'> </span>Due to contractual and regulatory
  restrictions, some of the states listed below may not be available to
  you.<span style='mso-spacerun:yes'></span></td>
 </tr>
 <tr height=39 style='mso-height-source:userset;height:29.25pt'>
  <td colspan=4 height=39 class=xl763374 dir=LTR width=536 style='border-right:
  1.0pt solid black;height:29.25pt;width:404pt'>Governmental Sources</td>
 </tr>
 <tr class=xl153374 height=46 style='mso-height-source:userset;height:34.5pt'>
  <td height=46 class=xl653374 dir=LTR width=134 style='height:34.5pt;
  border-top:none;width:101pt'>Status</td>
  <td class=xl653374 dir=LTR width=134 style='border-top:none;border-left:none;
  width:101pt'>State</td>
  <td class=xl663374 dir=LTR width=134 style='border-top:none;border-left:none;
  width:101pt'><br>
    Coverage Start Date<br>
    <span style='mso-spacerun:yes'></span></td>
  <td class=xl663374 dir=LTR width=134 style='border-top:none;border-left:none;
  width:101pt'>Coverage End Date</td>
 </tr>
 <tr height=21 style='height:15.75pt'>
  <td height=21 class=xl793374 dir=LTR width=134 style='height:15.75pt;
  border-top:none;width:101pt'>Updating</td>
  <td class=xl793374 dir=LTR width=134 style='border-top:none;border-left:none;
  width:101pt'>CONNECTICUT</td>
  <td class=xl793374 dir=LTR width=134 style='border-top:none;border-left:none;
  width:101pt'>10/01/2001</td>
  <td class=xl793374 dir=LTR width=134 style='border-top:none;border-left:none;
  width:101pt'>Current</td>
 </tr>
 <tr height=21 style='height:15.75pt'>
  <td height=21 class=xl793374 dir=LTR width=134 style='height:15.75pt;
  border-top:none;width:101pt'>Historical</td>
  <td class=xl793374 dir=LTR width=134 style='border-top:none;border-left:none;
  width:101pt'>DELAWARE</td>
  <td class=xl793374 dir=LTR width=134 style='border-top:none;border-left:none;
  width:101pt'>Not Available</td>
  <td class=xl793374 dir=LTR width=134 style='border-top:none;border-left:none;
  width:101pt'>Not Available</td>
 </tr>
 <tr height=21 style='height:15.75pt'>
  <td height=21 class=xl793374 dir=LTR width=134 style='height:15.75pt;
  border-top:none;width:101pt'>Updating</td>
  <td class=xl793374 dir=LTR width=134 style='border-top:none;border-left:none;
  width:101pt'>FLORIDA</td>
  <td class=xl793374 dir=LTR width=134 style='border-top:none;border-left:none;
  width:101pt'>07/01/1976</td>
  <td class=xl793374 dir=LTR width=134 style='border-top:none;border-left:none;
  width:101pt'>Current</td>
 </tr>
 <tr height=21 style='height:15.75pt'>
  <td height=21 class=xl793374 dir=LTR width=134 style='height:15.75pt;
  border-top:none;width:101pt'>Historical</td>
  <td class=xl793374 dir=LTR width=134 style='border-top:none;border-left:none;
  width:101pt'>IDAHO</td>
  <td class=xl793374 dir=LTR width=134 style='border-top:none;border-left:none;
  width:101pt'>01/04/1995</td>
  <td class=xl793374 dir=LTR width=134 style='border-top:none;border-left:none;
  width:101pt'>05/04/2004</td>
 </tr>
 <tr height=21 style='height:15.75pt'>
  <td height=21 class=xl793374 dir=LTR width=134 style='height:15.75pt;
  border-top:none;width:101pt'>Historical</td>
  <td class=xl793374 dir=LTR width=134 style='border-top:none;border-left:none;
  width:101pt'>ILLINOIS</td>
  <td class=xl793374 dir=LTR width=134 style='border-top:none;border-left:none;
  width:101pt'>Not Available</td>
  <td class=xl793374 dir=LTR width=134 style='border-top:none;border-left:none;
  width:101pt'>Not Available</td>
 </tr>
 <tr height=21 style='height:15.75pt'>
  <td height=21 class=xl793374 dir=LTR width=134 style='height:15.75pt;
  border-top:none;width:101pt'>Historical</td>
  <td class=xl793374 dir=LTR width=134 style='border-top:none;border-left:none;
  width:101pt'>KENTUCKY</td>
  <td class=xl793374 dir=LTR width=134 style='border-top:none;border-left:none;
  width:101pt'>01/03/1976</td>
  <td class=xl793374 dir=LTR width=134 style='border-top:none;border-left:none;
  width:101pt'>07/31/2006</td>
 </tr>
 <tr height=21 style='height:15.75pt'>
  <td height=21 class=xl793374 dir=LTR width=134 style='height:15.75pt;
  border-top:none;width:101pt'>Historical</td>
  <td class=xl793374 dir=LTR width=134 style='border-top:none;border-left:none;
  width:101pt'>LOUISIANA</td>
  <td class=xl793374 dir=LTR width=134 style='border-top:none;border-left:none;
  width:101pt'>Not Applicable</td>
  <td class=xl793374 dir=LTR width=134 style='border-top:none;border-left:none;
  width:101pt'>07/13/2016</td>
 </tr>
 <tr height=21 style='height:15.75pt'>
  <td height=21 class=xl793374 dir=LTR width=134 style='height:15.75pt;
  border-top:none;width:101pt'>Updating</td>
  <td class=xl793374 dir=LTR width=134 style='border-top:none;border-left:none;
  width:101pt'>MAINE</td>
  <td class=xl793374 dir=LTR width=134 style='border-top:none;border-left:none;
  width:101pt'>09/01/1969</td>
  <td class=xl793374 dir=LTR width=134 style='border-top:none;border-left:none;
  width:101pt'>Current</td>
 </tr>
 <tr height=21 style='height:15.75pt'>
  <td height=21 class=xl793374 dir=LTR width=134 style='height:15.75pt;
  border-top:none;width:101pt'>Updating</td>
  <td class=xl793374 dir=LTR width=134 style='border-top:none;border-left:none;
  width:101pt'>MASSACHUSETTS</td>
  <td class=xl793374 dir=LTR width=134 style='border-top:none;border-left:none;
  width:101pt'>9/18/1980</td>
  <td class=xl793374 dir=LTR width=134 style='border-top:none;border-left:none;
  width:101pt'>Current</td>
 </tr>
 <tr height=21 style='height:15.75pt'>
  <td height=21 class=xl793374 dir=LTR width=134 style='height:15.75pt;
  border-top:none;width:101pt'>Updating</td>
  <td class=xl793374 dir=LTR width=134 style='border-top:none;border-left:none;
  width:101pt'>MICHIGAN</td>
  <td class=xl793374 dir=LTR width=134 style='border-top:none;border-left:none;
  width:101pt'>Not Applicable</td>
  <td class=xl793374 dir=LTR width=134 style='border-top:none;border-left:none;
  width:101pt'>Current</td>
 </tr>
 <tr height=21 style='height:15.75pt'>
  <td height=21 class=xl793374 dir=LTR width=134 style='height:15.75pt;
  border-top:none;width:101pt'>Historical</td>
  <td class=xl793374 dir=LTR width=134 style='border-top:none;border-left:none;
  width:101pt'>MINNESOTA</td>
  <td class=xl793374 dir=LTR width=134 style='border-top:none;border-left:none;
  width:101pt'>01/01/1969</td>
  <td class=xl803374 dir=LTR width=134 style='border-top:none;border-left:none;
  width:101pt'>12/12/2014</td>
 </tr>
 <tr height=21 style='height:15.75pt'>
  <td height=21 class=xl793374 dir=LTR width=134 style='height:15.75pt;
  border-top:none;width:101pt'>Historical</td>
  <td class=xl793374 dir=LTR width=134 style='border-top:none;border-left:none;
  width:101pt'>MISSISSIPPI</td>
  <td class=xl793374 dir=LTR width=134 style='border-top:none;border-left:none;
  width:101pt'>Not Available</td>
  <td class=xl793374 dir=LTR width=134 style='border-top:none;border-left:none;
  width:101pt'>Not Available</td>
 </tr>
 <tr height=21 style='height:15.75pt'>
  <td height=21 class=xl793374 dir=LTR width=134 style='height:15.75pt;
  border-top:none;width:101pt'>Updating</td>
  <td class=xl793374 dir=LTR width=134 style='border-top:none;border-left:none;
  width:101pt'>MISSOURI</td>
  <td class=xl793374 dir=LTR width=134 style='border-top:none;border-left:none;
  width:101pt'>5/2/1988</td>
  <td class=xl793374 dir=LTR width=134 style='border-top:none;border-left:none;
  width:101pt'>Current</td>
 </tr>
 <tr height=21 style='height:15.75pt'>
  <td height=21 class=xl793374 dir=LTR width=134 style='height:15.75pt;
  border-top:none;width:101pt'>Updating</td>
  <td class=xl793374 dir=LTR width=134 style='border-top:none;border-left:none;
  width:101pt'>NEBRASKA</td>
  <td class=xl793374 dir=LTR width=134 style='border-top:none;border-left:none;
  width:101pt'>05/01/2006</td>
  <td class=xl793374 dir=LTR width=134 style='border-top:none;border-left:none;
  width:101pt'>Current</td>
 </tr>
 <tr height=21 style='height:15.75pt'>
  <td height=21 class=xl793374 dir=LTR width=134 style='height:15.75pt;
  border-top:none;width:101pt'>Updating</td>
  <td class=xl793374 dir=LTR width=134 style='border-top:none;border-left:none;
  width:101pt'>NEVADA</td>
  <td class=xl793374 dir=LTR width=134 style='border-top:none;border-left:none;
  width:101pt'>12/01/2006</td>
  <td class=xl793374 dir=LTR width=134 style='border-top:none;border-left:none;
  width:101pt'>Current</td>
 </tr>
 <tr height=21 style='height:15.75pt'>
  <td height=21 class=xl793374 dir=LTR width=134 style='height:15.75pt;
  border-top:none;width:101pt'>Historical</td>
  <td class=xl793374 dir=LTR width=134 style='border-top:none;border-left:none;
  width:101pt'>NEW HAMPSHIRE</td>
  <td class=xl793374 dir=LTR width=134 style='border-top:none;border-left:none;
  width:101pt'>01/03/1994</td>
  <td class=xl793374 dir=LTR width=134 style='border-top:none;border-left:none;
  width:101pt'>05/21/1999</td>
 </tr>
 <tr height=21 style='height:15.75pt'>
  <td height=21 class=xl793374 dir=LTR width=134 style='height:15.75pt;
  border-top:none;width:101pt'>Updating</td>
  <td class=xl793374 dir=LTR width=134 style='border-top:none;border-left:none;
  width:101pt'>NORTH CAROLINA</td>
  <td class=xl793374 dir=LTR width=134 style='border-top:none;border-left:none;
  width:101pt'>01/08/2002</td>
  <td class=xl793374 dir=LTR width=134 style='border-top:none;border-left:none;
  width:101pt'>Current</td>
 </tr>
 <tr height=21 style='height:15.75pt'>
  <td height=21 class=xl793374 dir=LTR width=134 style='height:15.75pt;
  border-top:none;width:101pt'>Historical</td>
  <td class=xl793374 dir=LTR width=134 style='border-top:none;border-left:none;
  width:101pt'>NORTH DAKOTA</td>
  <td class=xl793374 dir=LTR width=134 style='border-top:none;border-left:none;
  width:101pt'>Not Available</td>
  <td class=xl793374 dir=LTR width=134 style='border-top:none;border-left:none;
  width:101pt'>Not Available</td>
 </tr>
 <tr height=21 style='height:15.75pt'>
  <td height=21 class=xl793374 dir=LTR width=134 style='height:15.75pt;
  border-top:none;width:101pt'>Updating</td>
  <td class=xl793374 dir=LTR width=134 style='border-top:none;border-left:none;
  width:101pt'>OHIO</td>
  <td class=xl793374 dir=LTR width=134 style='border-top:none;border-left:none;
  width:101pt'>09/01/1968</td>
  <td class=xl793374 dir=LTR width=134 style='border-top:none;border-left:none;
  width:101pt'>Current</td>
 </tr>
 <tr height=21 style='height:15.75pt'>
  <td height=21 class=xl793374 dir=LTR width=134 style='height:15.75pt;
  border-top:none;width:101pt'>Historical</td>
  <td class=xl793374 dir=LTR width=134 style='border-top:none;border-left:none;
  width:101pt'>SOUTH CAROLINA</td>
  <td class=xl793374 dir=LTR width=134 style='border-top:none;border-left:none;
  width:101pt'>01/02/1960</td>
  <td class=xl793374 dir=LTR width=134 style='border-top:none;border-left:none;
  width:101pt'>02/11/1997</td>
 </tr>
 <tr height=21 style='height:15.75pt'>
  <td height=21 class=xl793374 dir=LTR width=134 style='height:15.75pt;
  border-top:none;width:101pt'>Updating</td>
  <td class=xl793374 dir=LTR width=134 style='border-top:none;border-left:none;
  width:101pt'>TENNESSEE</td>
  <td class=xl793374 dir=LTR width=134 style='border-top:none;border-left:none;
  width:101pt'>01/20/1970</td>
  <td class=xl793374 dir=LTR width=134 style='border-top:none;border-left:none;
  width:101pt'>Current</td>
 </tr>
 <tr height=21 style='height:15.75pt'>
  <td height=21 class=xl793374 dir=LTR width=134 style='height:15.75pt;
  border-top:none;width:101pt'>Updating</td>
  <td class=xl793374 dir=LTR width=134 style='border-top:none;border-left:none;
  width:101pt'>TEXAS</td>
  <td class=xl793374 dir=LTR width=134 style='border-top:none;border-left:none;
  width:101pt'>01/01/1941</td>
  <td class=xl793374 dir=LTR width=134 style='border-top:none;border-left:none;
  width:101pt'>Current</td>
 </tr>
 <tr height=21 style='height:15.75pt'>
  <td height=21 class=xl793374 dir=LTR width=134 style='height:15.75pt;
  border-top:none;width:101pt'>Historical</td>
  <td class=xl793374 dir=LTR width=134 style='border-top:none;border-left:none;
  width:101pt'>WEST VIRGINIA</td>
  <td class=xl793374 dir=LTR width=134 style='border-top:none;border-left:none;
  width:101pt'>01/02/1969</td>
  <td class=xl793374 dir=LTR width=134 style='border-top:none;border-left:none;
  width:101pt'>06/30/2007</td>
 </tr>
 <tr height=21 style='height:15.75pt'>
  <td height=21 class=xl793374 dir=LTR width=134 style='height:15.75pt;
  border-top:none;width:101pt'>Updating</td>
  <td class=xl793374 dir=LTR width=134 style='border-top:none;border-left:none;
  width:101pt'>WISCONSIN</td>
  <td class=xl793374 dir=LTR width=134 style='border-top:none;border-left:none;
  width:101pt'>01/01/1982</td>
  <td class=xl793374 dir=LTR width=134 style='border-top:none;border-left:none;
  width:101pt'>Current</td>
 </tr>
 <tr height=21 style='height:15.75pt'>
  <td height=21 class=xl793374 dir=LTR width=134 style='height:15.75pt;
  border-top:none;width:101pt'>Updating</td>
  <td class=xl793374 dir=LTR width=134 style='border-top:none;border-left:none;
  width:101pt'>WYOMING</td>
  <td class=xl793374 dir=LTR width=134 style='border-top:none;border-left:none;
  width:101pt'>09/17/1999</td>
  <td class=xl793374 dir=LTR width=134 style='border-top:none;border-left:none;
  width:101pt'>Current</td>
 </tr>
 <tr height=20 style='height:15.0pt'>
  <td colspan=4 rowspan=2 height=41 class=xl673374 width=536 style='border-right:
  1.0pt solid black;border-bottom:1.0pt solid black;height:30.75pt;width:404pt'>Non-Governmental
  Sources<br>
    </td>
 </tr>
 <tr height=21 style='height:15.75pt'>
 </tr>
 <tr class=xl153374 height=47 style='mso-height-source:userset;height:35.25pt'>
  <td height=47 class=xl653374 dir=LTR width=134 style='height:35.25pt;
  border-top:none;width:101pt'>Status</td>
  <td class=xl653374 dir=LTR width=134 style='border-top:none;border-left:none;
  width:101pt'>State</td>
  <td class=xl663374 dir=LTR width=134 style='border-top:none;border-left:none;
  width:101pt'><br>
    Coverage Start Date<br>
    <span style='mso-spacerun:yes'></span></td>
  <td class=xl663374 dir=LTR width=134 style='border-top:none;border-left:none;
  width:101pt'>Coverage End Date</td>
 </tr>
 <tr height=21 style='height:15.75pt'>
  <td height=21 class=xl793374 dir=LTR width=134 style='height:15.75pt;
  border-top:none;width:101pt'>Updating</td>
  <td class=xl813374 width=134 style='border-top:none;border-left:none;
  width:101pt'>ALABAMA</td>
  <td class=xl793374 dir=LTR width=134 style='border-top:none;border-left:none;
  width:101pt'>Not Available</td>
  <td class=xl793374 dir=LTR width=134 style='border-top:none;border-left:none;
  width:101pt'>Not Available</td>
 </tr>
 <tr height=21 style='height:15.75pt'>
  <td height=21 class=xl793374 dir=LTR width=134 style='height:15.75pt;
  border-top:none;width:101pt'>Updating</td>
  <td class=xl813374 width=134 style='border-top:none;border-left:none;
  width:101pt'>ALASKA</td>
  <td class=xl793374 dir=LTR width=134 style='border-top:none;border-left:none;
  width:101pt'>Not Available</td>
  <td class=xl793374 dir=LTR width=134 style='border-top:none;border-left:none;
  width:101pt'>Not Available</td>
 </tr>
 <tr height=21 style='height:15.75pt'>
  <td height=21 class=xl793374 dir=LTR width=134 style='height:15.75pt;
  border-top:none;width:101pt'>Updating</td>
  <td class=xl813374 width=134 style='border-top:none;border-left:none;
  width:101pt'>ARIZONA</td>
  <td class=xl793374 dir=LTR width=134 style='border-top:none;border-left:none;
  width:101pt'>Not Available</td>
  <td class=xl793374 dir=LTR width=134 style='border-top:none;border-left:none;
  width:101pt'>Not Available</td>
 </tr>
 <tr height=21 style='height:15.75pt'>
  <td height=21 class=xl793374 dir=LTR width=134 style='height:15.75pt;
  border-top:none;width:101pt'>Updating</td>
  <td class=xl813374 width=134 style='border-top:none;border-left:none;
  width:101pt'>ARKANSAS</td>
  <td class=xl793374 dir=LTR width=134 style='border-top:none;border-left:none;
  width:101pt'>Not Available</td>
  <td class=xl793374 dir=LTR width=134 style='border-top:none;border-left:none;
  width:101pt'>Not Available</td>
 </tr>
 <tr height=21 style='height:15.75pt'>
  <td height=21 class=xl793374 dir=LTR width=134 style='height:15.75pt;
  border-top:none;width:101pt'>Updating</td>
  <td class=xl813374 width=134 style='border-top:none;border-left:none;
  width:101pt'>CALIFORNIA</td>
  <td class=xl793374 dir=LTR width=134 style='border-top:none;border-left:none;
  width:101pt'>Not Available</td>
  <td class=xl793374 dir=LTR width=134 style='border-top:none;border-left:none;
  width:101pt'>Not Available</td>
 </tr>
 <tr height=21 style='height:15.75pt'>
  <td height=21 class=xl793374 dir=LTR width=134 style='height:15.75pt;
  border-top:none;width:101pt'>Updating</td>
  <td class=xl813374 width=134 style='border-top:none;border-left:none;
  width:101pt'>COLORADO</td>
  <td class=xl793374 dir=LTR width=134 style='border-top:none;border-left:none;
  width:101pt'>Not Available</td>
  <td class=xl793374 dir=LTR width=134 style='border-top:none;border-left:none;
  width:101pt'>Not Available</td>
 </tr>
 <tr height=21 style='height:15.75pt'>
  <td height=21 class=xl793374 dir=LTR width=134 style='height:15.75pt;
  border-top:none;width:101pt'>Updating</td>
  <td class=xl813374 width=134 style='border-top:none;border-left:none;
  width:101pt'>CONNECTICUT</td>
  <td class=xl793374 dir=LTR width=134 style='border-top:none;border-left:none;
  width:101pt'>Not Available</td>
  <td class=xl793374 dir=LTR width=134 style='border-top:none;border-left:none;
  width:101pt'>Not Available</td>
 </tr>
 <tr height=35 style='height:26.25pt'>
  <td height=35 class=xl793374 dir=LTR width=134 style='height:26.25pt;
  border-top:none;width:101pt'>Updating</td>
  <td class=xl813374 width=134 style='border-top:none;border-left:none;
  width:101pt'>DISTRICT OF COLUMBIA</td>
  <td class=xl793374 dir=LTR width=134 style='border-top:none;border-left:none;
  width:101pt'>Not Available</td>
  <td class=xl793374 dir=LTR width=134 style='border-top:none;border-left:none;
  width:101pt'>Not Available</td>
 </tr>
 <tr height=21 style='height:15.75pt'>
  <td height=21 class=xl793374 dir=LTR width=134 style='height:15.75pt;
  border-top:none;width:101pt'>Updating</td>
  <td class=xl813374 width=134 style='border-top:none;border-left:none;
  width:101pt'>DELAWARE</td>
  <td class=xl793374 dir=LTR width=134 style='border-top:none;border-left:none;
  width:101pt'>Not Available</td>
  <td class=xl793374 dir=LTR width=134 style='border-top:none;border-left:none;
  width:101pt'>Not Available</td>
 </tr>
 <tr height=21 style='height:15.75pt'>
  <td height=21 class=xl793374 dir=LTR width=134 style='height:15.75pt;
  border-top:none;width:101pt'>Updating</td>
  <td class=xl813374 width=134 style='border-top:none;border-left:none;
  width:101pt'>FLORIDA</td>
  <td class=xl793374 dir=LTR width=134 style='border-top:none;border-left:none;
  width:101pt'>Not Available</td>
  <td class=xl793374 dir=LTR width=134 style='border-top:none;border-left:none;
  width:101pt'>Not Available</td>
 </tr>
 <tr height=21 style='height:15.75pt'>
  <td height=21 class=xl793374 dir=LTR width=134 style='height:15.75pt;
  border-top:none;width:101pt'>Updating</td>
  <td class=xl813374 width=134 style='border-top:none;border-left:none;
  width:101pt'>GEORGIA</td>
  <td class=xl793374 dir=LTR width=134 style='border-top:none;border-left:none;
  width:101pt'>Not Available</td>
  <td class=xl793374 dir=LTR width=134 style='border-top:none;border-left:none;
  width:101pt'>Not Available</td>
 </tr>
 <tr height=21 style='height:15.75pt'>
  <td height=21 class=xl793374 dir=LTR width=134 style='height:15.75pt;
  border-top:none;width:101pt'>Updating</td>
  <td class=xl813374 width=134 style='border-top:none;border-left:none;
  width:101pt'>HAWAII</td>
  <td class=xl793374 dir=LTR width=134 style='border-top:none;border-left:none;
  width:101pt'>Not Available</td>
  <td class=xl793374 dir=LTR width=134 style='border-top:none;border-left:none;
  width:101pt'>Not Available</td>
 </tr>
 <tr height=21 style='height:15.75pt'>
  <td height=21 class=xl793374 dir=LTR width=134 style='height:15.75pt;
  border-top:none;width:101pt'>Updating</td>
  <td class=xl813374 width=134 style='border-top:none;border-left:none;
  width:101pt'>IDAHO</td>
  <td class=xl793374 dir=LTR width=134 style='border-top:none;border-left:none;
  width:101pt'>Not Available</td>
  <td class=xl793374 dir=LTR width=134 style='border-top:none;border-left:none;
  width:101pt'>Not Available</td>
 </tr>
 <tr height=21 style='height:15.75pt'>
  <td height=21 class=xl793374 dir=LTR width=134 style='height:15.75pt;
  border-top:none;width:101pt'>Updating</td>
  <td class=xl813374 width=134 style='border-top:none;border-left:none;
  width:101pt'>ILLINOIS</td>
  <td class=xl793374 dir=LTR width=134 style='border-top:none;border-left:none;
  width:101pt'>Not Available</td>
  <td class=xl793374 dir=LTR width=134 style='border-top:none;border-left:none;
  width:101pt'>Not Available</td>
 </tr>
 <tr height=21 style='height:15.75pt'>
  <td height=21 class=xl793374 dir=LTR width=134 style='height:15.75pt;
  border-top:none;width:101pt'>Updating</td>
  <td class=xl813374 width=134 style='border-top:none;border-left:none;
  width:101pt'>INDIANA</td>
  <td class=xl793374 dir=LTR width=134 style='border-top:none;border-left:none;
  width:101pt'>Not Available</td>
  <td class=xl793374 dir=LTR width=134 style='border-top:none;border-left:none;
  width:101pt'>Not Available</td>
 </tr>
 <tr height=21 style='height:15.75pt'>
  <td height=21 class=xl793374 dir=LTR width=134 style='height:15.75pt;
  border-top:none;width:101pt'>Updating</td>
  <td class=xl813374 width=134 style='border-top:none;border-left:none;
  width:101pt'>IOWA</td>
  <td class=xl793374 dir=LTR width=134 style='border-top:none;border-left:none;
  width:101pt'>Not Available</td>
  <td class=xl793374 dir=LTR width=134 style='border-top:none;border-left:none;
  width:101pt'>Not Available</td>
 </tr>
 <tr height=21 style='height:15.75pt'>
  <td height=21 class=xl793374 dir=LTR width=134 style='height:15.75pt;
  border-top:none;width:101pt'>Updating</td>
  <td class=xl813374 width=134 style='border-top:none;border-left:none;
  width:101pt'>KANSAS</td>
  <td class=xl793374 dir=LTR width=134 style='border-top:none;border-left:none;
  width:101pt'>Not Available</td>
  <td class=xl793374 dir=LTR width=134 style='border-top:none;border-left:none;
  width:101pt'>Not Available</td>
 </tr>
 <tr height=21 style='height:15.75pt'>
  <td height=21 class=xl793374 dir=LTR width=134 style='height:15.75pt;
  border-top:none;width:101pt'>Updating</td>
  <td class=xl813374 width=134 style='border-top:none;border-left:none;
  width:101pt'>KENTUCKY</td>
  <td class=xl793374 dir=LTR width=134 style='border-top:none;border-left:none;
  width:101pt'>Not Available</td>
  <td class=xl793374 dir=LTR width=134 style='border-top:none;border-left:none;
  width:101pt'>Not Available</td>
 </tr>
 <tr height=21 style='height:15.75pt'>
  <td height=21 class=xl793374 dir=LTR width=134 style='height:15.75pt;
  border-top:none;width:101pt'>Updating</td>
  <td class=xl813374 width=134 style='border-top:none;border-left:none;
  width:101pt'>LOUISIANA</td>
  <td class=xl793374 dir=LTR width=134 style='border-top:none;border-left:none;
  width:101pt'>Not Available</td>
  <td class=xl793374 dir=LTR width=134 style='border-top:none;border-left:none;
  width:101pt'>Not Available</td>
 </tr>
 <tr height=21 style='height:15.75pt'>
  <td height=21 class=xl793374 dir=LTR width=134 style='height:15.75pt;
  border-top:none;width:101pt'>Updating</td>
  <td class=xl813374 width=134 style='border-top:none;border-left:none;
  width:101pt'>MAINE</td>
  <td class=xl793374 dir=LTR width=134 style='border-top:none;border-left:none;
  width:101pt'>Not Available</td>
  <td class=xl793374 dir=LTR width=134 style='border-top:none;border-left:none;
  width:101pt'>Not Available</td>
 </tr>
 <tr height=21 style='height:15.75pt'>
  <td height=21 class=xl793374 dir=LTR width=134 style='height:15.75pt;
  border-top:none;width:101pt'>Updating</td>
  <td class=xl813374 width=134 style='border-top:none;border-left:none;
  width:101pt'>MARYLAND</td>
  <td class=xl793374 dir=LTR width=134 style='border-top:none;border-left:none;
  width:101pt'>Not Available</td>
  <td class=xl793374 dir=LTR width=134 style='border-top:none;border-left:none;
  width:101pt'>Not Available</td>
 </tr>
 <tr height=21 style='height:15.75pt'>
  <td height=21 class=xl793374 dir=LTR width=134 style='height:15.75pt;
  border-top:none;width:101pt'>Updating</td>
  <td class=xl813374 width=134 style='border-top:none;border-left:none;
  width:101pt'>MASSACHUSETTS</td>
  <td class=xl793374 dir=LTR width=134 style='border-top:none;border-left:none;
  width:101pt'>Not Available</td>
  <td class=xl793374 dir=LTR width=134 style='border-top:none;border-left:none;
  width:101pt'>Not Available</td>
 </tr>
 <tr height=21 style='height:15.75pt'>
  <td height=21 class=xl793374 dir=LTR width=134 style='height:15.75pt;
  border-top:none;width:101pt'>Updating</td>
  <td class=xl813374 width=134 style='border-top:none;border-left:none;
  width:101pt'>MICHIGAN</td>
  <td class=xl793374 dir=LTR width=134 style='border-top:none;border-left:none;
  width:101pt'>Not Available</td>
  <td class=xl793374 dir=LTR width=134 style='border-top:none;border-left:none;
  width:101pt'>Not Available</td>
 </tr>
 <tr height=21 style='height:15.75pt'>
  <td height=21 class=xl793374 dir=LTR width=134 style='height:15.75pt;
  border-top:none;width:101pt'>Updating</td>
  <td class=xl813374 width=134 style='border-top:none;border-left:none;
  width:101pt'>MINNESOTA</td>
  <td class=xl793374 dir=LTR width=134 style='border-top:none;border-left:none;
  width:101pt'>Not Available</td>
  <td class=xl793374 dir=LTR width=134 style='border-top:none;border-left:none;
  width:101pt'>Not Available</td>
 </tr>
 <tr height=21 style='height:15.75pt'>
  <td height=21 class=xl793374 dir=LTR width=134 style='height:15.75pt;
  border-top:none;width:101pt'>Updating</td>
  <td class=xl813374 width=134 style='border-top:none;border-left:none;
  width:101pt'>MISSISSIPPI</td>
  <td class=xl793374 dir=LTR width=134 style='border-top:none;border-left:none;
  width:101pt'>Not Available</td>
  <td class=xl793374 dir=LTR width=134 style='border-top:none;border-left:none;
  width:101pt'>Not Available</td>
 </tr>
 <tr height=21 style='height:15.75pt'>
  <td height=21 class=xl793374 dir=LTR width=134 style='height:15.75pt;
  border-top:none;width:101pt'>Updating</td>
  <td class=xl813374 width=134 style='border-top:none;border-left:none;
  width:101pt'>MISSOURI</td>
  <td class=xl793374 dir=LTR width=134 style='border-top:none;border-left:none;
  width:101pt'>Not Available</td>
  <td class=xl793374 dir=LTR width=134 style='border-top:none;border-left:none;
  width:101pt'>Not Available</td>
 </tr>
 <tr height=21 style='height:15.75pt'>
  <td height=21 class=xl793374 dir=LTR width=134 style='height:15.75pt;
  border-top:none;width:101pt'>Updating</td>
  <td class=xl813374 width=134 style='border-top:none;border-left:none;
  width:101pt'>MONTANA</td>
  <td class=xl793374 dir=LTR width=134 style='border-top:none;border-left:none;
  width:101pt'>Not Available</td>
  <td class=xl793374 dir=LTR width=134 style='border-top:none;border-left:none;
  width:101pt'>Not Available</td>
 </tr>
 <tr height=21 style='height:15.75pt'>
  <td height=21 class=xl793374 dir=LTR width=134 style='height:15.75pt;
  border-top:none;width:101pt'>Updating</td>
  <td class=xl813374 width=134 style='border-top:none;border-left:none;
  width:101pt'>NEBRASKA</td>
  <td class=xl793374 dir=LTR width=134 style='border-top:none;border-left:none;
  width:101pt'>Not Available</td>
  <td class=xl793374 dir=LTR width=134 style='border-top:none;border-left:none;
  width:101pt'>Not Available</td>
 </tr>
 <tr height=21 style='height:15.75pt'>
  <td height=21 class=xl793374 dir=LTR width=134 style='height:15.75pt;
  border-top:none;width:101pt'>Updating</td>
  <td class=xl813374 width=134 style='border-top:none;border-left:none;
  width:101pt'>NORTH CAROLINA</td>
  <td class=xl793374 dir=LTR width=134 style='border-top:none;border-left:none;
  width:101pt'>Not Available</td>
  <td class=xl793374 dir=LTR width=134 style='border-top:none;border-left:none;
  width:101pt'>Not Available</td>
 </tr>
 <tr height=21 style='height:15.75pt'>
  <td height=21 class=xl793374 dir=LTR width=134 style='height:15.75pt;
  border-top:none;width:101pt'>Updating</td>
  <td class=xl813374 width=134 style='border-top:none;border-left:none;
  width:101pt'>NORTH DAKOTA</td>
  <td class=xl793374 dir=LTR width=134 style='border-top:none;border-left:none;
  width:101pt'>Not Available</td>
  <td class=xl793374 dir=LTR width=134 style='border-top:none;border-left:none;
  width:101pt'>Not Available</td>
 </tr>
 <tr height=21 style='height:15.75pt'>
  <td height=21 class=xl793374 dir=LTR width=134 style='height:15.75pt;
  border-top:none;width:101pt'>Updating</td>
  <td class=xl813374 width=134 style='border-top:none;border-left:none;
  width:101pt'>NEW HAMPSHIRE</td>
  <td class=xl793374 dir=LTR width=134 style='border-top:none;border-left:none;
  width:101pt'>Not Available</td>
  <td class=xl793374 dir=LTR width=134 style='border-top:none;border-left:none;
  width:101pt'>Not Available</td>
 </tr>
 <tr height=21 style='height:15.75pt'>
  <td height=21 class=xl793374 dir=LTR width=134 style='height:15.75pt;
  border-top:none;width:101pt'>Updating</td>
  <td class=xl813374 width=134 style='border-top:none;border-left:none;
  width:101pt'>NEW JERSEY</td>
  <td class=xl793374 dir=LTR width=134 style='border-top:none;border-left:none;
  width:101pt'>Not Available</td>
  <td class=xl793374 dir=LTR width=134 style='border-top:none;border-left:none;
  width:101pt'>Not Available</td>
 </tr>
 <tr height=21 style='height:15.75pt'>
  <td height=21 class=xl793374 dir=LTR width=134 style='height:15.75pt;
  border-top:none;width:101pt'>Updating</td>
  <td class=xl813374 width=134 style='border-top:none;border-left:none;
  width:101pt'>NEW MEXICO</td>
  <td class=xl793374 dir=LTR width=134 style='border-top:none;border-left:none;
  width:101pt'>Not Available</td>
  <td class=xl793374 dir=LTR width=134 style='border-top:none;border-left:none;
  width:101pt'>Not Available</td>
 </tr>
 <tr height=21 style='height:15.75pt'>
  <td height=21 class=xl793374 dir=LTR width=134 style='height:15.75pt;
  border-top:none;width:101pt'>Updating</td>
  <td class=xl813374 width=134 style='border-top:none;border-left:none;
  width:101pt'>NEW YORK</td>
  <td class=xl793374 dir=LTR width=134 style='border-top:none;border-left:none;
  width:101pt'>Not Available</td>
  <td class=xl793374 dir=LTR width=134 style='border-top:none;border-left:none;
  width:101pt'>Not Available</td>
 </tr>
 <tr height=21 style='height:15.75pt'>
  <td height=21 class=xl793374 dir=LTR width=134 style='height:15.75pt;
  border-top:none;width:101pt'>Updating</td>
  <td class=xl813374 width=134 style='border-top:none;border-left:none;
  width:101pt'>NEVADA</td>
  <td class=xl793374 dir=LTR width=134 style='border-top:none;border-left:none;
  width:101pt'>Not Available</td>
  <td class=xl793374 dir=LTR width=134 style='border-top:none;border-left:none;
  width:101pt'>Not Available</td>
 </tr>
 <tr height=21 style='height:15.75pt'>
  <td height=21 class=xl793374 dir=LTR width=134 style='height:15.75pt;
  border-top:none;width:101pt'>Updating</td>
  <td class=xl813374 width=134 style='border-top:none;border-left:none;
  width:101pt'>OKLAHOMA</td>
  <td class=xl793374 dir=LTR width=134 style='border-top:none;border-left:none;
  width:101pt'>Not Available</td>
  <td class=xl793374 dir=LTR width=134 style='border-top:none;border-left:none;
  width:101pt'>Not Available</td>
 </tr>
 <tr height=21 style='height:15.75pt'>
  <td height=21 class=xl793374 dir=LTR width=134 style='height:15.75pt;
  border-top:none;width:101pt'>Updating</td>
  <td class=xl813374 width=134 style='border-top:none;border-left:none;
  width:101pt'>OHIO</td>
  <td class=xl793374 dir=LTR width=134 style='border-top:none;border-left:none;
  width:101pt'>Not Available</td>
  <td class=xl793374 dir=LTR width=134 style='border-top:none;border-left:none;
  width:101pt'>Not Available</td>
 </tr>
 <tr height=21 style='height:15.75pt'>
  <td height=21 class=xl793374 dir=LTR width=134 style='height:15.75pt;
  border-top:none;width:101pt'>Updating</td>
  <td class=xl813374 width=134 style='border-top:none;border-left:none;
  width:101pt'>OREGON</td>
  <td class=xl793374 dir=LTR width=134 style='border-top:none;border-left:none;
  width:101pt'>Not Available</td>
  <td class=xl793374 dir=LTR width=134 style='border-top:none;border-left:none;
  width:101pt'>Not Available</td>
 </tr>
 <tr height=21 style='height:15.75pt'>
  <td height=21 class=xl793374 dir=LTR width=134 style='height:15.75pt;
  border-top:none;width:101pt'>Updating</td>
  <td class=xl813374 width=134 style='border-top:none;border-left:none;
  width:101pt'>PENNSYLVANIA</td>
  <td class=xl793374 dir=LTR width=134 style='border-top:none;border-left:none;
  width:101pt'>Not Available</td>
  <td class=xl793374 dir=LTR width=134 style='border-top:none;border-left:none;
  width:101pt'>Not Available</td>
 </tr>
 <tr height=21 style='height:15.75pt'>
  <td height=21 class=xl793374 dir=LTR width=134 style='height:15.75pt;
  border-top:none;width:101pt'>Updating</td>
  <td class=xl813374 width=134 style='border-top:none;border-left:none;
  width:101pt'>RHODE ISLAND</td>
  <td class=xl793374 dir=LTR width=134 style='border-top:none;border-left:none;
  width:101pt'>Not Available</td>
  <td class=xl793374 dir=LTR width=134 style='border-top:none;border-left:none;
  width:101pt'>Not Available</td>
 </tr>
 <tr height=21 style='height:15.75pt'>
  <td height=21 class=xl793374 dir=LTR width=134 style='height:15.75pt;
  border-top:none;width:101pt'>Updating</td>
  <td class=xl813374 width=134 style='border-top:none;border-left:none;
  width:101pt'>SOUTH CAROLINA</td>
  <td class=xl793374 dir=LTR width=134 style='border-top:none;border-left:none;
  width:101pt'>Not Available</td>
  <td class=xl793374 dir=LTR width=134 style='border-top:none;border-left:none;
  width:101pt'>Not Available</td>
 </tr>
 <tr height=21 style='height:15.75pt'>
  <td height=21 class=xl793374 dir=LTR width=134 style='height:15.75pt;
  border-top:none;width:101pt'>Updating</td>
  <td class=xl813374 width=134 style='border-top:none;border-left:none;
  width:101pt'>SOUTH DAKOTA</td>
  <td class=xl793374 dir=LTR width=134 style='border-top:none;border-left:none;
  width:101pt'>Not Available</td>
  <td class=xl793374 dir=LTR width=134 style='border-top:none;border-left:none;
  width:101pt'>Not Available</td>
 </tr>
 <tr height=21 style='height:15.75pt'>
  <td height=21 class=xl793374 dir=LTR width=134 style='height:15.75pt;
  border-top:none;width:101pt'>Updating</td>
  <td class=xl813374 width=134 style='border-top:none;border-left:none;
  width:101pt'>TENNESSEE</td>
  <td class=xl793374 dir=LTR width=134 style='border-top:none;border-left:none;
  width:101pt'>Not Available</td>
  <td class=xl793374 dir=LTR width=134 style='border-top:none;border-left:none;
  width:101pt'>Not Available</td>
 </tr>
 <tr height=21 style='height:15.75pt'>
  <td height=21 class=xl793374 dir=LTR width=134 style='height:15.75pt;
  border-top:none;width:101pt'>Updating</td>
  <td class=xl813374 width=134 style='border-top:none;border-left:none;
  width:101pt'>TEXAS</td>
  <td class=xl793374 dir=LTR width=134 style='border-top:none;border-left:none;
  width:101pt'>Not Available</td>
  <td class=xl793374 dir=LTR width=134 style='border-top:none;border-left:none;
  width:101pt'>Not Available</td>
 </tr>
 <tr height=21 style='height:15.75pt'>
  <td height=21 class=xl793374 dir=LTR width=134 style='height:15.75pt;
  border-top:none;width:101pt'>Updating</td>
  <td class=xl813374 width=134 style='border-top:none;border-left:none;
  width:101pt'>UTAH</td>
  <td class=xl793374 dir=LTR width=134 style='border-top:none;border-left:none;
  width:101pt'>Not Available</td>
  <td class=xl793374 dir=LTR width=134 style='border-top:none;border-left:none;
  width:101pt'>Not Available</td>
 </tr>
 <tr height=21 style='height:15.75pt'>
  <td height=21 class=xl793374 dir=LTR width=134 style='height:15.75pt;
  border-top:none;width:101pt'>Updating</td>
  <td class=xl813374 width=134 style='border-top:none;border-left:none;
  width:101pt'>VERMONT</td>
  <td class=xl793374 dir=LTR width=134 style='border-top:none;border-left:none;
  width:101pt'>Not Available</td>
  <td class=xl793374 dir=LTR width=134 style='border-top:none;border-left:none;
  width:101pt'>Not Available</td>
 </tr>
 <tr height=21 style='height:15.75pt'>
  <td height=21 class=xl793374 dir=LTR width=134 style='height:15.75pt;
  border-top:none;width:101pt'>Updating</td>
  <td class=xl813374 width=134 style='border-top:none;border-left:none;
  width:101pt'>VIRGINIA</td>
  <td class=xl793374 dir=LTR width=134 style='border-top:none;border-left:none;
  width:101pt'>Not Available</td>
  <td class=xl793374 dir=LTR width=134 style='border-top:none;border-left:none;
  width:101pt'>Not Available</td>
 </tr>
 <tr height=21 style='height:15.75pt'>
  <td height=21 class=xl793374 dir=LTR width=134 style='height:15.75pt;
  border-top:none;width:101pt'>Updating</td>
  <td class=xl813374 width=134 style='border-top:none;border-left:none;
  width:101pt'>WASHINGTON</td>
  <td class=xl793374 dir=LTR width=134 style='border-top:none;border-left:none;
  width:101pt'>Not Available</td>
  <td class=xl793374 dir=LTR width=134 style='border-top:none;border-left:none;
  width:101pt'>Not Available</td>
 </tr>
 <tr height=21 style='height:15.75pt'>
  <td height=21 class=xl793374 dir=LTR width=134 style='height:15.75pt;
  border-top:none;width:101pt'>Updating</td>
  <td class=xl813374 width=134 style='border-top:none;border-left:none;
  width:101pt'>WISCONSIN</td>
  <td class=xl793374 dir=LTR width=134 style='border-top:none;border-left:none;
  width:101pt'>Not Available</td>
  <td class=xl793374 dir=LTR width=134 style='border-top:none;border-left:none;
  width:101pt'>Not Available</td>
 </tr>
 <tr height=21 style='height:15.75pt'>
  <td height=21 class=xl793374 dir=LTR width=134 style='height:15.75pt;
  border-top:none;width:101pt'>Updating</td>
  <td class=xl813374 width=134 style='border-top:none;border-left:none;
  width:101pt'>WEST VIRGINIA</td>
  <td class=xl793374 dir=LTR width=134 style='border-top:none;border-left:none;
  width:101pt'>Not Available</td>
  <td class=xl793374 dir=LTR width=134 style='border-top:none;border-left:none;
  width:101pt'>Not Available</td>
 </tr>
 <tr height=21 style='height:15.75pt'>
  <td height=21 class=xl793374 dir=LTR width=134 style='height:15.75pt;
  border-top:none;width:101pt'>Updating</td>
  <td class=xl813374 width=134 style='border-top:none;border-left:none;
  width:101pt'>WYOMING</td>
  <td class=xl793374 dir=LTR width=134 style='border-top:none;border-left:none;
  width:101pt'>Not Available</td>
  <td class=xl793374 dir=LTR width=134 style='border-top:none;border-left:none;
  width:101pt'>Not Available</td>
 </tr>
 <![if supportMisalignedColumns]>
 <tr height=0 style='display:none'>
  <td width=134 style='width:101pt'></td>
  <td width=134 style='width:101pt'></td>
  <td width=134 style='width:101pt'></td>
  <td width=134 style='width:101pt'></td>
 </tr>
 <![endif]>
</table>

</div>

</form>
