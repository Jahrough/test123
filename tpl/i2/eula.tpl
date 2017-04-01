<!-- begin i2/eula.tpl -->
<html>
<head><title>END USER LICENSE AGREEMENT</title>
<script type="text/javascript">
var browser=navigator.appName;
var version=navigator.appVersion;

if(browser.indexOf("Microsoft")>=0){
    browser="MSIE";
    version=parseFloat(version.substr(version.indexOf("MSIE")+5,4));
    document.write("<link rel='stylesheet' href='<TMPL_VAR CSSPATH>/i2/IE.css' type='text/css'>");
}else{
    if(browser.indexOf("Netscape")>=0){
	browser="NS";
	version=parseFloat(version);
	if(version>=5){
	    document.write("<link rel='stylesheet' href='<TMPL_VAR CSSPATH>/i2/NS6.css' type='text/css'>");
	}else{
	    document.write("<link rel='stylesheet' href='<TMPL_VAR CSSPATH>/i2/NS4.css' type='text/css'>");
	    //window.setResizable(false);
	}
    }else{
	browser="N/A";
	version=0;
    }
}


function newImg(src){
    img=new Image();
    img.src=src;
    return img;
}

function swPic(name,src){
    document[name].src=eval(src+".src");
}

var AgreeOff,AgreeOn,DisagreeOff,DisagreeOn;
function PreloadImages() {
    if (document.images) {
	AgreeOff = newImg("<TMPL_VAR NAME=IMGPATH>/i2/AgreeOff.gif");
	AgreeOn = newImg("<TMPL_VAR NAME=IMGPATH>/i2/AgreeOn.gif");
	DisagreeOff = newImg("<TMPL_VAR NAME=IMGPATH>/i2/DisagreeOff.gif");
	DisagreeOn = newImg("<TMPL_VAR NAME=IMGPATH>/i2/DisagreeOn.gif");
    }
}
function Accept(){
    document.forms[0].I2_EULA.value=1;
    document.forms[0].submit();
}
function Decline(){
    window.close();
}

</script>
<style>
#terms {
    margin-right : 15px;
    margin-left : 15px;
    margin-top : 15px;
    background-color:#ffffff;
    width: 95%;
    height:400px;
    overflow:auto;
    font-size: 10px;
    font-family: Verdana, Arial, Helvetica, sans-serif;
}

#foot {
   height    : 60;
}

</style>
</head>
<body onload="PreloadImages()">
<div height="75">
<table border="0" cellpadding="0" cellspacing="0" height="42" width="100%">
  <tbody><tr>
  <td style="background-repeat: repeat-x;" align="left" background="<TMPL_VAR NAME=IMGPATH>/i2/back_red_black.gif" height="38" valign="top" width="80%">
  <img src="<TMPL_VAR NAME=IMGPATH>/i2/small_back_red_black.gif" height="18" width="250"><br>
	<a href="http://www.lexisnexis.com/" target="_blank"><img src="<TMPL_VAR NAME=IMGPATH>/i2/ln_logo.gif" alt="LexisNexis(TM)" border="0" height="42" width="216"></a>
  </td>
  <td style="background-repeat: repeat-x;" align="right" background="<TMPL_VAR NAME=IMGPATH>/i2/back_red_black.gif" height="38" valign="top" width="80%">
	<img src="<TMPL_VAR NAME=IMGPATH>/i2/red_curve.gif" height="18" width="250"><br>
	<a href="http://www.anacubis.com/anacubisviewer/redirect.asp?action=banner&amp;serviceIdentifier=LexisNexisSmartLinx&amp;referralSource=appletpage" target="_blank"><img src="<TMPL_VAR NAME=IMGPATH>/i2/i2.jpg" alt="i2 Group Home" border="0" height="42" width="216"></a>
  </td>
  </tr>
</tbody></table> 


</div>
<div id="terms">

<span class="BoldText">IMPORTANT! PLEASE READ CAREFULLY!</span> THIS END USER LICENSE AGREEMENT 
("<span class="BoldUnder">LICENSE</span>") CONSTITUTES A LEGAL AGREEMENT BETWEEN YOU AND i2 Inc., 
located at 6551 Loisdale Court, Suite 600, Springfield, Virginia 22150 ("<span class="BoldTxt">i2</span>") .  IN ORDER TO GAIN 
ACCESS TO, AND PRIOR TO USING THE PRODUCTS DESCRIBED HEREUNDER, YOU MUST CLICK "I AGREE" BELOW, AND THEREBY 
ACCEPT ALL TERMS AND CONDITIONS OF THIS LICENSE.  IF YOU DO NOT AGREE TO ALL THE TERMS AND CONDITIONS OF THIS LICENSE, 
CLICK "I DO NOT AGREE" BELOW AND YOU SHALL NOT HAVE ACCESS TO THE PRODUCTS.<br>
<div class="BoldUnder">Products</div>
The term <span class="BoldUnder">"Products"</span> means any i2 software or service integrated with, incorporated in, or included as part of  
any LexisNexis ("LN") services ("LN Services") provided to you or to which you are given access under this License, 
and any copy, portion, or representation thereof.<br>
<div class="BoldUnder">Grant of License</div>
Subject to the terms of this License, i2 hereby grants to you a revocable, personal, non-exclusive, 
non-transferable, non-sublicensable license to access and  use the Products only in conjunction with the LN 
Services, in object code form only, for research purposes only.  No other rights are granted.<br>
<div class="BoldUnder">Permitted Users; Restrictions</div>
Except as otherwise provided in this License, you agree not to: (1) copy, sell, or otherwise exploit for any 
purposes any portion of the Products; (2) assign, transfer, sublicense, modify, decompile, reverse engineer, or 
disassemble the Products, in whole or in part; (3) remove any copyright or other proprietary notices from the 
Products; and/or (4) place the Products on any network, file server, or bulletin board system in a way that it 
can be accessed or used by others.<br>
<span class="BoldUnder">Government Use</span> This section applies to all acquisitions of the Products by or for the 
United States Federal Government.  By accepting and accessing the Products, you agree that the Products include software 
that qualifies as commercial computer software as that term is used in FAR 12.212.  The terms and conditions of this 
License shall pertain to the Government's use and disclosure of the Products and shall supersede any conflicting 
contractual terms or conditions.<br>
<div class="BoldUnder">Compliance with Law</div>
You agree that you will use the Products only for lawful purposes and that, you will not use the Products: (1) 
in any manner which could damage or disable the Products or access thereto; or (2) in violation of any applicable 
local, state, national or international law or regulation, including but not limited to, those governing exports, 
data and privacy protection, anti-discrimination and false advertising.<br>
<div class="BoldUnder">Modifications</div>
i2 may, in its sole discretion: (1) modify or change the terms and conditions of this License at any time without 
prior notice or liability; or (2) modify, improve, discontinue, or alter, either temporarily or permanently, the 
Products or any feature thereof at any time, without prior notice or liability.  Your continued use of the 
Products after any such change to the Products or to the License shall constitute your consent to such change.<br>
<div class="BoldUnder">Termination</div>
i2 may, in its sole discretion, terminate or suspend your access to and use of any part or all of the Products 
for any reason for convenience without notice. In addition, without prejudice to any other rights, i2 may 
immediately terminate your access to and use of any part or all of the Products without prior notice or liability 
for any conduct i2 believes in its sole discretion violates the terms and conditions of this License.  Upon 
termination of this License for any reason, your license to use the Products automatically terminates and you 
agree to discontinue your use of the Products and/or any portion thereof.  All sections of this License, which by 
their nature should survive termination, will survive termination, including but not limited to, indemnities, 
warranty disclaimers, and limitations of liability.<br>
<div class="BoldUnder">Maintenance and Support Services</div>
Support and maintenance services on the Products are available through the technical support generally provided 
to you through LN for the LN Services it provides to you.  i2 is not responsible for support and maintenance of 
the Products.<br>
<div class="BoldUnder">Confidentiality</div>
The Products contain confidential and proprietary information of i2 ("<span class="BoldTxt">Confidential 
Information</span>").  You agree to keep the Confidential Information in confidence and to prevent its 
disclosure to or use by third parties.<br>
<div class="BoldUnder">Proprietary Rights</div>
All rights, title and interest in and to the Products, including all associated intellectual property rights, 
shall remain with i2.  You will not take any action to  interfere in any manner with i2's rights with respect 
to the Products.  This License does not convey to you any interest in or to the Products, but instead is a 
limited right of use that is revocable in accordance with the terms of this License.<br>
<div class="BoldUnder">No Warranties</div>
THE PRODUCTS AND ANY INFORMATION INCLUDED IN OR AVAILABLE THROUGH THE PRODUCTS IS PROVIDED TO YOU ON AN "AS 
IS" "AS AVAILABLE" BASIS, WITH ALL FAULTS AND WITHOUT WARRANTY OF ANY KIND.  i2 HEREBY DISCLAIMS, 
TO THE MAXIMUM EXTENT PERMITTED BY APPLICABLE LAW, ALL WARRANTIES, EXPRESS, IMPLIED OR STATUTORY, INCLUDING, BUT 
NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE, DATA ACCURACY, 
SYSTEM INTEGRATION, QUIET ENJOYMENT AND NON-INFRINGEMENT.  i2 MAKES NO REPRESENTATIONS OR WARRANTIES THAT THE 
USE OF THE PRODUCTS WILL BE UNINTERRUPTED OR ERROR-FREE.  YOU EXPRESSLY AGREE THAT YOUR USE OF THE PRODUCTS IS 
AT YOUR SOLE RISK.<br>
<div class="BoldUnder">Indemnification</div>
By agreeing to use the Products, you agree to indemnify and hold harmless i2 from any and all claims, losses, 
liabilities, costs, and expenses, including reasonable attorneys� fees, related to, or arising in any way from, 
the use of the Products by you or anyone using your account.<br>
<div class="BoldUnder">Limitation of Liability</div>
IN NO EVENT WILL i2 BE LIABLE TO YOU FOR ANY INDIRECT, CONSEQUENTIAL, INCIDENTAL, PUNITIVE, EXEMPLARY, OR SPECIAL 
DAMAGES, INCLUDING WITHOUT LIMITATION, ANY LOSS OF USE, DATA OR PROFITS, EVEN IF AN i2 REPRESENTATIVE HAS BEEN 
ADVISED OF THE POSSIBILITY OF SUCH DAMAGES.  You acknowledge that this limitation forms an essential basis of 
the bargain between you and i2.<br>
<div class="BoldUnder">i2, Ltd. as Third Party Beneficiary</div>
i2, Ltd. as licensor to i2, is a third party beneficiary of this Agreement and is entitled to exercise any rights 
of i2 and enforce any of Licensee�s obligations under this Agreement.<br>
<div class="BoldUnder">Miscellaneous</div>
This License is governed in accordance with the laws of the Commonwealth of Virginia, U.S.A., without regard to 
conflict-of-laws provisions.  This Agreement will not be governed by the United Nations Convention on Contracts 
for the International Sale of Goods, the application of which is expressly excluded.  Any claim relating to this 
License or the Products will be settled by individual, binding arbitration conducted in the Commonwealth of 
Virginia, and in accordance with the rules of the American Arbitration Association, except that i2 may seek legal 
or equitable relief for any violations relating to Confidential Information or intellectual property rights.  You 
shall not transfer, assign, or sublicense any of your rights or obligations under this License.  If any provision 
of this License is held to be invalid or unenforceable, such provision will be deemed severable from the License 
and the remaining provisions will be enforced.  This License constitutes the entire agreement between you and i2 
with respect to the Products.

</div>


<div id="foot" >

<table border="0" cellpadding="0" cellspacing="0" height="100%" width="100%">
	<tbody><tr><td colspan="5">&nbsp;</td></tr>
	<tr><td colspan="5">
	<p class="WhiteBold">BY PRESSING "I AGREE" BELOW, YOU CONSENT TO BE BOUND BY ITS TERMS AND CONDITIONS.</p></td></tr>
	<tr><td width="5%">&nbsp;</td>
		<td valign="top" width="40%">
			<p class="WhiteBold">To acknowledge that you agree to be bound by the terms and conditions of this End User License Agreement,
			click "I Agree."</p>
		</td>
		<td width="5%">&nbsp;</td>
		<td valign="top" width="40%">
			<p class="WhiteBold">To indicate that you do not agree to be bound by the terms and conditions of this End User License Agreement,
			click "I Do Not Agree."</p>
		</td>
		<td width="5%">&nbsp;</td></tr>
	<tr><td width="5%">&nbsp;</td>
		<td align="center" width="40%"><br />
			<a href="javascript:Accept();" onmouseout="swPic('Agree','AgreeOff')" onmouseover="swPic('Agree','AgreeOn')" ondblclick="return false" onfocus="this.blur()"><img src="<TMPL_VAR NAME=IMGPATH>/i2/AgreeOff.gif" alt="I Agree" name="Agree" align="bottom" border="0" height="30" width="100"></a>
		</td>
		<td width="5%">&nbsp;</td>
		<td align="center" width="40%"><br />
			<a href="javascript:Decline();" onmouseout="swPic('Disagree','DisagreeOff')" onmouseover="swPic('Disagree','DisagreeOn')" ondblclick="return false" onfocus="this.blur()"><img src="<TMPL_VAR NAME=IMGPATH>/i2/DisagreeOff.gif" alt="I Do Not Agree" name="Disagree" align="bottom" border="0" height="30" width="100"></a>
		</td>
		<td width="5%">&nbsp;</td></tr>
	<tr><td colspan="5">
<div align="center"><hr noshade="noshade" size="1" width="80%">
<font class="CopyRight">
<a href="http://www.lexisnexis.com/" target="_blank" alt="About LEXIS®NEXIS®" onfocus="this.blur()"> About LexisNexis</a>
&nbsp;&nbsp;|&nbsp;&nbsp;
<a href="http://www.lexisnexis.com/risk/terms/" target="_blank" alt="LEXIS®NEXIS® Terms &amp; Conditions" onfocus="this.blur()">
Terms and Conditions</a>&nbsp;&nbsp;|&nbsp;&nbsp;
<a href="http://www.lexisnexis.com/terms/privacy/" target="_blank" alt="LEXIS®NEXIS® Privacy">
Privacy Policy</a><br>&nbsp;&nbsp;<a href="http://www.lexisnexis.com/terms/copyright.aspx" target="_blank">Copyright &copy;</a> <script>document.write(new Date().getFullYear());</script> LexisNexis Risk Solutions. All rights reserved.</font></div></td></tr>
</tbody></table>

</div>
<form action="<TMPL_VAR ACTION_REPORT>">
   <TMPL_INCLUDE NAME=common_hidden_input.tpl>
   <input type="hidden" name="I2_EULA" value='0' >
   <input type="hidden" name="EVENT" value='I2/START' >
   <input type="hidden" name="QSTRING" value="<TMPL_VAR QSTRING>">
</form>

</body>  
</html>
<!-- end i2/eula.tpl -->
