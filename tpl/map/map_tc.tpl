<!-- begin map_tc.tpl -->
<html>
<head>
<title>Tele Atlas North America Terms and Conditions</title>
<link href="<TMPL_VAR NAME='CSSPATH'>/<TMPL_VAR NAME=SKIN_TYPE>/main_menu.css" rel="stylesheet" type="text/css">
<link href="<TMPL_VAR NAME='CSSPATH'>/<TMPL_VAR NAME=SKIN_TYPE>/skin.css" rel="stylesheet" type="text/css">
<script src="<TMPL_VAR NAME='JSPATH'>/common.js"></script>
<script src="<TMPL_VAR NAME='JSPATH'>/shared.js"></script>
<script language="JavaScript">
function setchecked()
{
    document.MAPTC.MAP_TC_ACPT.value = '1';
    document.MAPTC.EVENT.value = '<TMPL_VAR NAME=CURRENT_EVENT>';
    document.forms[0].submit();
	
}
</script>

<body <TMPL_UNLESS VERIFY_PASSWORD>onLoad="window.focus();"</TMPL_UNLESS> topmargin="0" leftmargin="0" marginwidth="0" marginheight="0" bgcolor="#e6e7de">

<table border="0" cellpadding="0" cellspacing="0" width="100%" class="headerarea">
  <tr>
    <td><img width=266 height=43 border=0 src="<TMPL_VAR NAME=IMGPATH>/<TMPL_VAR NAME=APPLICATION_TYPE>/logo.gif"  border="0"></td>
    <td><img src="<TMPL_VAR NAME=IMGPATH>/spacer.gif" width="184" height="43"></td>
  </tr>
</table>

<table border="0" cellpadding="0" cellspacing="0" bgcolor="#cccccc" width="100%">
  <tr>
    <td class="headerseparator" height="17"><img border="0" height="17" width="100%" src="<TMPL_VAR NAME=IMGPATH>/spacer.gif"></td>
  </tr>
</table>  
<form name="MAPTC" action="<TMPL_VAR NAME=ACTION_MISC>" method="post">
    <TMPL_INCLUDE NAME=common_hidden_input.tpl>
    <input type="hidden" name="MAP_TC_ACPT" value="<TMPL_VAR NAME=MAP_TC_ACPT>">
    <input type="hidden" NAME="CURRENT_EVENT" VALUE="<TMPL_VAR NAME=CURRENT_EVENT>">
    <input type="hidden" name="EVENT" value="">
    <INPUT type=hidden NAME="STREET_ADDRESS" VALUE="<TMPL_VAR NAME="STREET_ADDRESS">">
    <INPUT type=hidden NAME="CITY" VALUE="<TMPL_VAR NAME="CITY">">
    <INPUT type=hidden NAME="STATE" VALUE="<TMPL_VAR NAME="STATE">">
    <INPUT type=hidden NAME="ZIP" VALUE="<TMPL_VAR NAME="ZIP">">
    <INPUT type=hidden NAME="ZIP4" VALUE="<TMPL_VAR NAME="ZIP4">">



<div align="center">
<br>

<table border="0" cellpadding="0" cellspacing="0">
  <tr>
    <td class="glbtitle"><B>Terms and Conditions</B></td>
  </tr>
</table><br><br>

<table border="1" cellpadding="3" cellspacing="0" valign=top bordercolor="black" width="650" height="300" wrap>

<tr><td class="unifont10" bgcolor="white" style="padding:8px;">
<br>
By accessing this mapping feature, you agree to abide by the terms and
conditions of the license agreement:

<br><br><br>

<div align=center><b><TMPL_IF FCOL>Collection Solutions<TMPL_ELSE>Accurint</TMPL_IF> Mapping Service End User License Agreement</b></div>

<p>
IMPORTANT - READ CAREFULLY BEFORE ACCESSING THIS WEB SITE. 
By accessing this web site you accept this Agreement.
</p>
<p>
YOUR USE OF THE <TMPL_IF FCOL>COLLECTION SOLUTIONS<TMPL_ELSE>ACCURINT</TMPL_IF> MAPPING SERVICE IS GOVERNED BY THE TERMS AND
CONDITIONS UNDER WHICH YOU SUBSCRIBED TO <TMPL_IF FCOL>COLLECTION SOLUTIONS<TMPL_ELSE>ACCURINT</TMPL_IF>.  YOUR USE OF THE
<TMPL_IF FCOL>COLLECTION SOLUTIONS<TMPL_ELSE>ACCURINT</TMPL_IF> MAPPING SERVICE IS ALSO SUBJECT TO THE ADDITIONAL RESTRICTIONS
SET FORTH BELOW.  IN THE EVENT OF A CONFLICT BETWEEN THE TERMS AND
CONDITIONS OF THE AGREEMENT UNDER WHICH YOU SUBSCRIBED TO <TMPL_IF FCOL>COLLECTION SOLUTIONS<TMPL_ELSE>ACCURINT</TMPL_IF> AND
THE RESTRICTIONS SET FORTH BELOW, THE RESTRICTIONS SET FORTH BELOW SHALL
BE CONTROLLING.
</p>
<p>
1. GRANT OF LICENSE. <TMPL_IF FCOL>Collection Solutions<TMPL_ELSE>Accurint</TMPL_IF> is an authorized sublicensor of products
owned and created by <TMPL_IF FCOL>Collection Solutions'<TMPL_ELSE>Accurint's</TMPL_IF> licensors. <TMPL_IF FCOL>Collection Solutions<TMPL_ELSE>Accurint</TMPL_IF> grants you a
non-transferable, non-exclusive object-only license to use the map
images accessible through the <TMPL_IF FCOL>Collection Solutions<TMPL_ELSE>Accurint</TMPL_IF> mapping service (the "Products"),
solely for internal use by your business or for your own personal use,
only with one central processing unit at any one time and not in any
networked environment. The Products are received by you in confidence
and in trust, and you agree to take all reasonable steps to maintain the
confidentiality of the Products and to protect the Products from
misappropriation or misuse. Except as expressly permitted by this
Section 1, you agree that the Products will not be used, duplicated or
disclosed in any form for the use or benefit of any person or entity,
nor reproduced, transcribed, imitated or simulated in whole or in part.
In order to preserve trade secret and proprietary information contained
within the Products, you may not copy, reverse engineer, translate,
port, modify or make derivative works of the Products. You may not rent,
disclose, publish, sell, assign, lease, sublicense, market, or transfer
the Products or use them in any manner not expressly authorized by this
Agreement. You shall not derive or attempt to derive the source code,
source files or structure of all or any portion of the Products by
reverse engineering, disassembly, decompilation or any other means. You
shall not use the Products to operate a service bureau or for any other
use involving the processing of data of other persons or entities. You
may not use the Products with any software other than the software used
to deliver the Product to you through this website. You do not receive
any, and <TMPL_IF FCOL>Collection Solutions'<TMPL_ELSE>Accurint's</TMPL_IF> licensors retain all, ownership rights in the
Products. The Products are copyrighted and may not be copied, even if
modified or merged with other Products. You shall not alter or remove
any copyright notice or proprietary legend contained in or on the
Products. You shall not provide display or allow access to the actual
numerical latitude and longitude coordinates obtained through the
Products.
</p>
<p>
2. DISCLAIMER OF WARRANTIES. The Products are provided to you on an "AS
IS" and "WITH ALL FAULTS" basis. You assume the entire risk of loss in
using the Products. The Products are complex and may contain some
nonconformities, defects or errors. <TMPL_IF FCOL>Collection Solutions<TMPL_ELSE>Accurint</TMPL_IF> does not warrant that the
Products will meet your needs or expectations, that operations of the
Products will be error free or uninterrupted, or that all
nonconformities can or will be corrected. <TMPL_IF FCOL>COLLECTION SOLUTIONS<TMPL_ELSE>ACCURINT</TMPL_IF>, ITS LICENSORS, AND
THEIR SUPPLIERS MAKE AND YOU RECEIVE NO WARRANTY, WHETHER EXPRESS OR
IMPLIED, AND ALL WARRANTIES OF MERCHANTABILITY, TITLE, AND FITNESS FOR
ANY PARTICULAR PURPOSE ARE EXPRESSLY DISCLAIMED. 
</p>
<p>
3. LIMITED LIABILITY. IN NO EVENT SHALL <TMPL_IF FCOL>COLLECTION SOLUTIONS<TMPL_ELSE>ACCURINT</TMPL_IF> OR <TMPL_IF FCOL>COLLECTION SOLUTIONS'<TMPL_ELSE>ACCURINT'S</TMPL_IF> LICENSORS
OR THE LICENSORS' SUPPLIERS BE LIABLE FOR ANY DAMAGES, CLAIM OR LOSS
INCURRED BY YOU (INCLUDING WITHOUT LIMITATION COMPENSATORY, INCIDENTAL,
INDIRECT, SPECIAL, CONSEQUENTIAL OR EXEMPLARY DAMAGES, LOST PROFITS,
LOST SALES OR BUSINESS, EXPENDITURES, INVESTMENTS, OR COMMITMENTS IN
CONNECTION WITH ANY BUSINESS, LOSS OF ANY GOODWILL, OR DAMAGES RESULTING
FROM LOST DATA OR INABILITY TO USE DATA), IRRESPECTIVE OF WHETHER
<TMPL_IF FCOL>COLLECTION SOLUTIONS<TMPL_ELSE>ACCURINT</TMPL_IF> OR <TMPL_IF FCOL>COLLECTION SOLUTIONS'<TMPL_ELSE>ACCURINT'S</TMPL_IF> LICENSORS OR THE LICENSORS' SUPPLIERS HAVE BEEN
INFORMED OF, KNEW OF, OR SHOULD HAVE KNOWN OF THE LIKELIHOOD OF SUCH
DAMAGES. THIS LIMITATION APPLIES TO ALL CAUSES OF ACTION IN THE
AGGREGATE INCLUDING WITHOUT LIMITATION BREACH OF CONTRACT, BREACH OF
WARRANTY, NEGLIGENCE, STRICT LIABILITY, MISREPRESENTATION, AND OTHER
TORTS. IF <TMPL_IF FCOL>COLLECTION SOLUTIONS'<TMPL_ELSE>ACCURINT'S</TMPL_IF> LIMITED WARRANTY OR LIMITATION OF LIABILITY SET
FORTH IN THIS AGREEMENT SHALL FOR ANY REASON WHATSOEVER BE HELD
UNENFORCEABLE OR INAPPLICABLE, YOU AGREE THAT <TMPL_IF FCOL>COLLECTION SOLUTIONS'<TMPL_ELSE>ACCURINT'S</TMPL_IF> AND <TMPL_IF FCOL>COLLECTION SOLUTIONS'<TMPL_ELSE>ACCURINT'S</TMPL_IF>
LICENSOR'S LIABILITY SHALL NOT EXCEED $100.00. 
</p>
<p>
4. THIRD PARTY BENEFICIAIRIES. <TMPL_IF FCOL>Collection Solutions'<TMPL_ELSE>Accurint's</TMPL_IF> licensors shall be third party
beneficiaries of <TMPL_IF FCOL>Collection Solutions'<TMPL_ELSE>Accurint's</TMPL_IF> rights and protections under this Agreement,
but are not parties hereto and shall have no obligation hereunder. 
</p>
<p>
5. U.S. GOVERNMENT RIGHTS. If End User is an agency, department, or
other entity of the United States Government, or funded in whole or in
part by the United States Government, then use, duplication,
reproduction, release, modification, disclosure or transfer of this
commercial product and accompanying documentation, is restricted in
accordance with the LIMITED or RESTRICTED rights as described in DFARS
252.227-7014(a)(1) (JUN 1995) (DOD commercial computer software
definition), DFARS 227.7202-1 (DOD policy on commercial computer
software), FAR 52.227-19 (JUN 1987) (commercial computer software clause
for civilian agencies), DFARS 252.227-7015 (NOV 1995) (DOD technical
    data - commercial items clause); FAR 52.227-14 Alternates I, II, and III
    (JUN 1987) (civilian agency technical data and noncommercial computer
    software clause); and/or FAR 12.211 and FAR 12.212 (commercial item
    acquisitions), as applicable.  In case of conflict between any of the
    FAR and DFARS provisions listed herein and this License, the
    construction that provides greater limitations on the Government's
    rights shall control. Contractor/manufacturer is Tele Atlas North
    America, Inc., 11 Lafayette Street, Lebanon, NH 03766-1445. Phone:
    603.643. 0330.  The Licensed Products are (c)1984-2005 by Tele Atlas
    North America, Inc. / Geographic Data Technology, Inc. ALL RIGHTS
    RESERVED. For purpose of any public disclosure provision under any
    federal, state or local law, it is agreed that the Licensed Products are
    a trade secret and a proprietary commercial product and not subject to
    disclosure.
</p>
<p>

    If End User is an agency, department, or other entity of any State
    government, the United States Government or any other public entity or
    funded in whole or in part by the United States Government, then End
    User hereby agrees to protect the Licensed Products from public
    disclosure and to consider the Licensed Products exempt from any
    statute, law, regulation, or code, including any Sunshine Act, Public
    Records Act, Freedom of Information Act, or equivalent, which permits
    public access and/or reproduction or use of the Licensed Products.  In
    the event that such exemption is challenged under any such laws, this
    EULA shall be considered breached and any and all right to retain any
    copies or to use of the Licensed Products shall be terminated and
    considered immediately null and void.  Any copies of the Licensed
    Products held by Licensee shall immediately be destroyed.  If any court
    of competent jurisdiction considers this clause void and unenforceable,
    in whole or in part, for any reason, this EULA shall be considered
    terminated and null and void, in its entirety, and any and all copies of
    the Licensed Products shall immediately be destroyed.
   </p> 
</p>
</td></tr>
</table>


<table border="0" cellpadding="10" cellspacing="0" width="680">
  <tr>
    <td width="680" align="center" valign="top" wrap>
      <br>
      <br>
	<center><input type="button" name="accept" value="I Accept" onclick="setchecked();" >&nbsp;&nbsp;<input type="button" name="decline" value="I Decline" onclick="window.close()"></center>
    </td>
  </tr>
</table>
</div>

   
<TMPL_INCLUDE NAME="verify_password_trigger.tpl">
</form>
</body>
</html>
<!-- end map_tc.tpl -->

