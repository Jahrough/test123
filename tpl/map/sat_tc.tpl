<!-- begin sat_tc.tpl -->
<html>
<head>
<title>Satellite Terms and Conditions</title>
<link href="<TMPL_VAR NAME='CSSPATH'>/<TMPL_VAR NAME=SKIN_TYPE>/main_menu.css" rel="stylesheet" type="text/css">
<link href="<TMPL_VAR NAME='CSSPATH'>/<TMPL_VAR NAME=SKIN_TYPE>/skin.css" rel="stylesheet" type="text/css">
<script src="<TMPL_VAR NAME='JSPATH'>/common.js"></script>
<script src="<TMPL_VAR NAME='JSPATH'>/shared.js"></script>
<script language="JavaScript">
function setchecked(val)
{
    document.SATLF.STL_ACPT.value = val;
    document.SATLF.EVENT.value = '<TMPL_VAR NAME=CURRENT_EVENT>';
    document.forms[0].submit();
	
}
</script>

<body <TMPL_UNLESS VERIFY_PASSWORD>onLoad="window.focus();"</TMPL_UNLESS> topmargin="0" leftmargin="0" marginwidth="0" marginheight="0" bgcolor="#e6e7de">
<!--<TMPL_VAR NAME=SERVER_ID>-->

<table border="0" cellpadding="0" cellspacing="0" width="100%">
  <tr>
    <td class="headerarea"><img src="<TMPL_VAR NAME=IMGPATH>/<TMPL_VAR NAME=APPLICATION_TYPE>/logo.gif"  border="0"></td>
  </tr>
</table>

<table border="0" cellpadding="0" cellspacing="0" bgcolor="#cccccc" width="100%">
  <tr>
    <td class="headerseparator" height="17"><img border="0" height="17" width="100%" src="<TMPL_VAR NAME=IMGPATH>/spacer.gif"></td>
  </tr>
</table>  
<form name="SATLF" action="<TMPL_VAR NAME=ACTION_MISC>" method="post">
        <TMPL_INCLUDE NAME=common_hidden_input.tpl>
        <input type="hidden" name="STL_ACPT" value="<TMPL_VAR NAME=STL_ACPT>">
		<INPUT TYPE="HIDDEN" NAME="ADDRESS" VALUE="<TMPL_VAR NAME=ADDRESS>">
		<INPUT TYPE="HIDDEN" NAME="CITY" VALUE="<TMPL_VAR NAME=CITY>">
		<INPUT TYPE="HIDDEN" NAME="STATE" VALUE="<TMPL_VAR NAME=STATE>">
		<INPUT TYPE="HIDDEN" NAME="ZIP" VALUE="<TMPL_VAR NAME=ZIP>">
		<INPUT type=hidden NAME="REFERENCE_CODE" VALUE="<TMPL_VAR REFERENCE_CODE>">
		<INPUT type=hidden NAME="EVENT" VALUE="SATELLITE/DISPLAY_REPORT">
		<INPUT type=hidden NAME="XC" VALUE="<TMPL_VAR NAME=XC>">
		<INPUT type=hidden NAME="YC" VALUE="<TMPL_VAR NAME=YC>">
		<INPUT type=hidden NAME="MPP" VALUE="<TMPL_VAR NAME=MPP>">
		<INPUT type=hidden NAME="ADDRESS_XC" VALUE="<TMPL_VAR NAME=ADDRESS_XC>">
		<INPUT type=hidden NAME="ADDRESS_YC" VALUE="<TMPL_VAR NAME=ADDRESS_YC>">
		<INPUT type=hidden NAME="XUL" VALUE="<TMPL_VAR NAME=XUL>">
		<INPUT type=hidden NAME="YUL" VALUE="<TMPL_VAR NAME=YUL>">
		<INPUT type=hidden NAME="XLR" VALUE="<TMPL_VAR NAME=XLR>">
		<INPUT type=hidden NAME="YLR" VALUE="<TMPL_VAR NAME=YLR>"> 

<div align="center">

<table border="0" cellpadding="0" cellspacing="0">
  <tr>
    <td class="glbtitle"><B>Terms and Conditions</B></td>
  </tr>
</table>

<table border="0" cellpadding="10" cellspacing="0" width="680">
  <tr>
    <td width="680" align="center" valign="top" wrap>
	<center><input type="button" name="accept" value="I Accept" onclick="setchecked(1);" >&nbsp;&nbsp;<input type="button" name="decline" value="I Decline" onclick="window.close();"></center>
    </td>
  </tr>
</table>

<table border="1" cellpadding="3" cellspacing="0" valign=top bordercolor="black" width="650" height="300"  class="termsbody" wrap>

<tr><td class="termstext" >

<p> 
<TMPL_IF IRB>IRBsearch, LLC<TMPL_ELSE>Accurint</TMPL_IF> licenses aerial and satellite imagery from GlobeXplorer, LLC.  Customer shall accept and agree to the following GlobeXplorer End User License Agreement before accessing aerial and satellite imagery.
</p>

<p>
END USER LICENSE AGREEMENT IMPORTANT - READ CAREFULLY BEFORE ACCESSING THIS INFORMATION FROM ANY PHYSICAL MEDIA, GLOBEXPLORER ENABLED WEB SITE, OR OTHER MEANS OF DOWNLOADING INFORMATION. BY ACCESSING THIS PHYSICAL MEDIA, GLOBEXPLORER ENABLED WEB SITE OR OTHER MEANS OF DOWNLOADING INFORMATION, YOU ACCEPT THIS AGREEMENT. IF YOU DO NOT AGREE WITH THE TERMS OF THIS AGREEMENT, DO NOT ACCESS THIS INFORMATION FROM ANY PHYSICAL MEDIA, GLOBEXPLORER ENABLED WEB SITE, OR OTHER MEANS OF DOWNLOADING INFORMATION. TERMS AND CONDITIONS 
</p>

<p>
This is a legal agreement between you and GlobeXplorer, LLC. ("GlobeXplorer"). Aerial and satellite imagery and associated information ("Information") are provided by and are the copyrighted property of GlobeXplorer and/or its licensors. By accessing this physical media, web site, or otherwise downloading the Information you agree to these terms and GlobeXplorer grants you a nonexclusive, non-transferable license to use the Information, as further set forth below. 
</p>

<p>
1. Scope of Use: You agree to use Information for solely personal or internal business purposes, and not for commercial gain or resale purposes nor for service bureau, time-sharing or other similar purposes unless explicitly permitted in writing by GlobeXplorer to do so. Accordingly, but subject to the Restrictions set forth in the next paragraph, you may copy Information only as necessary for your personal or internal business use and to access or login to the Information using the unique username and password as given by GlobeXplorer, on a single computer to (i) view it on your screen, (ii) print it, and (iii) transfer it to a portable computer device, provided that you do not remove or alter any copyright notices that appear and do not modify the Information in any way. GlobeXplorer grants you perpetual use of prints or transfers of downloaded Information, so long as you do not exceed the permitted use or violate the other terms of this License. 
</p>

<p>
2. Restrictions: Without limiting the foregoing, you may not use Information with any products, systems, prepare any derivative work for commercial gain or resale purposes with the Information or any portion thereof; (a) sublicense, transfer, assign, rent, lease, or otherwise convey the Information, or any right with respect thereto, to any Third Party unless such party is conducting or performing work strictly on your behalf for a limited time; (b) disassemble, decompile or otherwise reverse engineer all or any portion of the Information; (c) remove from the Information, or alter, any of the trademarks, trade names, logos, patent or copyright notices or other proprietary notices or markings, or add any other notices or markings to the Information; (d)you’re your access to the Information to tamper with, spoof, or attempt to obtain unauthorized access to GlobeXplorer’s servers or databases; (e) use the Information in an abusive manner as determined solely by GlobeXplorer; or (f) permit any other party to do any of the foregoing. 
</p>

<p>
3. Ownership: The Information is licensed, not sold, and you agree that the Information, and all intellectual property and proprietary rights therein are owned by GlobeXplorer and /or its licensors. GlobeXplorer and/or its licensors reserves title and all right and interests in and to the Information not expressly granted to You in Section 1 (License Grant), including without limitation all patent rights, copyrights, trademarks, trade names, trade secrets and other intellectual property and proprietary rights. There are no implied licenses under this Agreement, and all rights not expressly granted are reserved by GlobeXplorer. 
</p>


<p>
4. Copyright: The Information is the copyrighted property of GlobeXplorer and/or its licensors. All public presentations of the Information must prominently display GlobeXplorer’s company logo and copyright information as rendered by GlobeXplorer inside the Information or a copyright notice clearly visible within or immediately near the Information or such derivative works incorporating Information in substantially the following form: “Copyright [year]. GlobeXplorer and Partners. All rights reserved.” 
</p>

<p>
5. Maintenance and Update: You understand that GlobeXplorer may update the Information at any time, but is under no obligation to inform You of or furnish to You any such updates. This Agreement does not grant You any right, license or interest in or to any support, maintenance, improvements, modifications, enhancements, or updates to the Information. To the extent that GlobeXplorer supplies any updates to You, such updates will be deemed to be subject to the terms of this Agreement unless GlobeXplorer indicates otherwise. GlobeXplorer reserves the right to charge fees for any future versions of, or updates to, the Information. 
</p>

<p>
6. No Warranty: All Information is provided to you "as is" and you agree to use it at your own risk. GlobeXplorer and its licensors (and their licensors and suppliers) make no guarantees, representations or warranties of any kind, express or implied, arising by law or otherwise, regarding the Information, including but not limited to, warranties of title, content, quality, accuracy, completeness, effectiveness, reliability, fitness for a particular purpose, usefulness, use or results to be obtained from Information, or that the Information will be error-free. 
</p>

<p>
7. Disclaimer of Warranty: GLOBEXPLORER AND ITS LICENSORS (INCLUDING THEIR LICENSORS AND SUPPLIERS) DISCLAIM ANY WARRANTIES, EXPRESS OR IMPLIED, OF QUALITY, PERFORMANCE, MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE OR NON-INFRINGEMENT. Some States, Territories and Countries do not allow certain warranty exclusions, so to that extent the above exclusion may not apply to you. 
</p>

<p>
8. Disclaimer of Liability: GLOBEXPLORER AND ITS LICENSORS (INCLUDING THEIR LICENSORS AND SUPPLIERS) SHALL NOT BE LIABLE TO YOU: IN RESPECT OF ANY CLAIM, DEMAND OR ACTION, IRRESPECTIVE OF THE NATURE OF THE CAUSE OF THE CLAIM, DEMAND OR ACTION ALLEGING ANY LOSS, INJURY OR DAMAGES, DIRECT OR INDIRECT, WHICH MAY RESULT FROM THE USE OR POSSESSION OF THE INFORMATION; OR FOR ANY LOSS OF PROFIT, REVENUE, CONTRACTS OR SAVINGS, OR ANY OTHER DIRECT, INDIRECT, INCIDENTAL, SPECIAL OR CONSEQUENTIAL DAMAGES ARISING OUT OF YOUR USE OF OR INABILITY TO USE THE INFORMATION, ANY DEFECT IN THE INFORMATION, OR THE BREACH OF THESE TERMS OR CONDITIONS, WHETHER IN AN ACTION IN CONTRACT OR TORT OR BASED ON A WARRANTY, EVEN IF GLOBEXPLORER OR ITS LICENSORS HAVE BEEN ADVISED OF THE POSSIBILITY OF SUCH DAMAGES. Some States, Territories and Countries do not allow certain liability exclusions or damages limitations, so to that extent the above may not apply to you. 
</p>

<p>
9. Disclaimer of Endorsement: Reference to any products, services, processes, hypertext links to third parties or other information by trade name, trademark, manufacturer, supplier or otherwise does not necessarily constitute or imply its endorsement, sponsorship or recommendation by GlobeXplorer or its licensors. The GlobeXplorer name, trademark and logo, and other trademarks and trade names owned or licensed by GlobeXplorer may not be used in any commercial manner without the prior written consent of GlobeXplorer. 
</p>

<p>
10. Export Control: You agree and acknowledge that the Information are subject to U.S. export control law, and You will comply with all applicable laws and regulations in Your use of the Information under this Agreement, including without limitation all export laws and regulations of the U.S. Department of Commerce and all other U.S. agencies and authorities, including the Export Administration Regulations promulgated by the Bureau of Industry and Security (as codified in 15 C.F.R. Parts §§ 730-774). Without limiting the foregoing, You expressly agree not to export or re-export the Service or Data in violation of such laws or regulations, or without all required licenses and authorizations. 
</p>

<p>
11. U.S. Government End Users: If the Information is being acquired by or on behalf of the United States government or any other entity seeking or applying rights similar to those customarily claimed by the United States government, the Information is licensed with "Restricted Rights." Utilization of the Information is subject to the restrictions specified in the "Rights in Technical Data and Computer Data" clause at DFARS 252.227-7013, or the equivalent clause for non-defense agencies. For that portion of the Information using GlobeXplorer created or licensed software (“Software”), this Software is a “commercial item” as that term is defined at 48 C.F.R. § 2.101; consisting of “commercial computer software” and “commercial computer software documentation” as such terms are used in 48 C.F.R. § 12.212. 
</p>

 
<p>
12. Indemnity: You agree to indemnify, defend and hold GlobeXplorer and its licensors (including their respective licensors, suppliers, assignees, subsidiaries, affiliated companies, and the respective officers, directors, employees, shareholders, agents and representatives of each of them) free and harmless from and against any liability, loss, injury (including injuries resulting in death), demand, action, cost, expense, or claim of any kind or character, including but not limited to attorney's fees, arising out of or in connection with any use or possession by you of the Information. 
</p>

<p>
13. Terms and Termination. The term of this Agreement will commence upon Your breaking the seal of the packaging, or clicking of the “Accept” button to use GlobeXplorer software or application(s), or successfully debiting of your account and will continue until terminated as specified in this section (Term and Termination). You may terminate this Agreement at any time by using the prescribed account termination procedure as solely defined by GlobeXplorer. Such termination initiated by You shall become effective upon the next billing cycle after which You must discontinuing all use of the Information. GlobeXplorer may terminate this Agreement at any time and without prior notice take appropriate technical measures to effect such termination in the following cases: (a) You fail to comply with the terms of this Agreement; (b) Your use of the Information consumes an amount of bandwidth greater than the amount GlobeXplorer is willing to provide in its sole discretion; (c) GlobeXplorer deems in its sole discretion that Your use of the Information is abusive; (d) You distribute the Information in violation of this Agreement; or (e) Your use of the Information gives rise to any legal action against GlobeXplorer or its officers, directors, employees or agents. Any termination by GlobeXplorer pursuant to this section (Term and Termination) will be exercised without limiting any other rights or remedies of GlobeXplorer. Upon termination of this Agreement, the license granted herein (License Grant) will terminate and You must immediately destroy all copies of the Information in Your possession or control. Sections 3, 4, 6, 7, 8, 9, 10, 11, 12, 13, 14, and 15 of this Agreement will survive termination. Terminations are not subject to refund. 
</p>

<p>
14. Entire Agreement: These terms and conditions constitute the entire agreement between GlobeXplorer (and its licensors, including their licensors and suppliers) and you pertaining to the subject matter hereof, and supersedes in its entirety any and all written or oral agreements previously existing between us with respect to such subject matter. 
</p>

<p>
15. Governing Law: The above terms and conditions shall be governed by the laws of the State of California, without giving effect to (i) its conflict of laws provisions, or (ii) the United Nations Convention for Contracts for the International Sale of Goods. You agree to submit to the jurisdiction of the State of California for any and all disputes, claims and actions arising from or in connection with the Information provided to you hereunder. 
</p>
 
 
 
 
 
 
 
 
</td></tr>
</table>


<table border="0" cellpadding="10" cellspacing="0" width="680">
  <tr>
    <td width="680" align="center" valign="top" wrap>
      <br>
      <br>
	<center><input type="button" name="accept" value="I Accept" onclick="setchecked(1);" >&nbsp;&nbsp;<input type="button" name="decline" value="I Decline" onclick="window.close();"></center>
    </td>
  </tr>
</table><br><br>
</div>

   
<TMPL_INCLUDE NAME="../verify_password_trigger.tpl">
</form>
</body>
</html>
<!-- end sat_tc.tpl -->

